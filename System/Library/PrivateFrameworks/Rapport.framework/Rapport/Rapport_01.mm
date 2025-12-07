uint64_t sub_1B6F168E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6F17FA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6F1691C(uint64_t a1)
{
  v2 = sub_1B6F17DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16958(uint64_t a1)
{
  v2 = sub_1B6F17DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F169A0(uint64_t a1)
{
  v2 = sub_1B6F17F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F169DC(uint64_t a1)
{
  v2 = sub_1B6F17F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16A18(uint64_t a1)
{
  v2 = sub_1B6F17F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16A54(uint64_t a1)
{
  v2 = sub_1B6F17F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16A90(uint64_t a1)
{
  v2 = sub_1B6F17E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16ACC(uint64_t a1)
{
  v2 = sub_1B6F17E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16B08(uint64_t a1)
{
  v2 = sub_1B6F17EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16B44(uint64_t a1)
{
  v2 = sub_1B6F17EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16B80@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1B6F16BB0(uint64_t a1)
{
  v2 = sub_1B6F17E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16BEC(uint64_t a1)
{
  v2 = sub_1B6F17E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16C28(void *a1, int a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BBF8, &qword_1B6F2FED8);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC00, &qword_1B6F2FEE0);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC08, &qword_1B6F2FEE8);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC10, &qword_1B6F2FEF0);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC18, &qword_1B6F2FEF8);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC20, &qword_1B6F2FF00);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F17DB0();
  sub_1B6F22D38();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_1B6F17F00();
      v28 = v41;
      sub_1B6F22C18();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1B6F17F54();
    v25 = v41;
    sub_1B6F22C18();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_1B6F17EAC();
    v26 = v29;
    v25 = v41;
    sub_1B6F22C18();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1B6F17E58();
    v19 = v32;
    v20 = v41;
    sub_1B6F22C18();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_1B6F17E04();
    v19 = v35;
    v20 = v41;
    sub_1B6F22C18();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t sub_1B6F1719C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B6F1816C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1B6F171E4(unsigned __int8 a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v2 = sub_1B6F229F8();
  [v1 setDateFormat_];

  return v1;
}

void sub_1B6F172F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_1B6F171E4(a3);
  v7 = sub_1B6F229F8();
  v8 = [v6 dateFromString_];

  if (v8)
  {
    sub_1B6F22818();
  }

  else
  {
    v9 = 0xEF303038302D3232;
    v10 = 0x80000001B6F45B90;
    v11 = 0xEC0000003530332ELL;
    v12 = 0x37333A39303A3631;
    if (a3 != 3)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x80000001B6F45B20;
    }

    if (a3 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v10 = v11;
    }

    if (a3)
    {
      v9 = 0xEA00000000003232;
    }

    if (a3 <= 1u)
    {
      v13 = 0x2D31302D32323032;
    }

    else
    {
      v13 = v12;
    }

    if (a3 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    sub_1B6F22B28();
    MEMORY[0x1B8C9DA10](0xD00000000000001BLL, 0x80000001B6F45B40);
    MEMORY[0x1B8C9DA10](a1, a2);
    MEMORY[0x1B8C9DA10](0xD000000000000023, 0x80000001B6F45B60);
    MEMORY[0x1B8C9DA10](v13, v14);

    MEMORY[0x1B8C9DA10](96, 0xE100000000000000);
    sub_1B6F15F34();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0xD00000000000004DLL;
    *(v15 + 24) = 0x80000001B6F45A90;
    *(v15 + 32) = 243;
    *(v15 + 40) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1B6F17530()
{
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](0);
  return sub_1B6F22D18();
}

uint64_t sub_1B6F1759C(uint64_t a1)
{
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](0);
  return sub_1B6F22D18();
}

uint64_t sub_1B6F175F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6F22C78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6F17680(uint64_t a1)
{
  v2 = sub_1B6F18864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F176BC(uint64_t a1)
{
  v2 = sub_1B6F18864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F176F8(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC28, &qword_1B6F2FF08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F18864();
  sub_1B6F22D38();
  v9[15] = a2;
  sub_1B6F188B8();
  sub_1B6F22C58();
  return (*(v5 + 8))(v7, v4);
}

void sub_1B6F17840(uint64_t *a1@<X8>)
{
  v3 = sub_1B6F171E4(*v1);
  v4 = sub_1B6F22808();
  v5 = [v3 stringFromDate_];

  v6 = sub_1B6F22A08();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
}

void *sub_1B6F178EC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B6F1890C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B6F17934(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1B6F17974(a1);
  return v2;
}

char *sub_1B6F17974(uint64_t a1)
{
  v3 = *v1;
  *(v1 + 2) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(*v1 + 96)], a1);
  return v1;
}

id *sub_1B6F17A18()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1B6F17A98()
{
  sub_1B6F17A18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1B6F17AF0(uint64_t a1, uint64_t a2)
{
  sub_1B6F22CF8();
  sub_1B6F22A58();
  v4 = sub_1B6F22D18();

  return sub_1B6F17B68(a1, a2, v4);
}

unint64_t sub_1B6F17B68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B6F22C78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B6F17C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB97BCB0, &qword_1B6F30B08);
    v3 = sub_1B6F22B98();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B6F19788(v4, &v13, &qword_1EB97BBF0, &unk_1B6F2FEC8);
      v5 = v13;
      v6 = v14;
      result = sub_1B6F17AF0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B6F197F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B6F17D50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1B6F17DB0()
{
  result = qword_1EB97D2A8;
  if (!qword_1EB97D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2A8);
  }

  return result;
}

unint64_t sub_1B6F17E04()
{
  result = qword_1EB97D2B0;
  if (!qword_1EB97D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2B0);
  }

  return result;
}

unint64_t sub_1B6F17E58()
{
  result = qword_1EB97D2B8;
  if (!qword_1EB97D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2B8);
  }

  return result;
}

unint64_t sub_1B6F17EAC()
{
  result = qword_1EB97D2C0;
  if (!qword_1EB97D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2C0);
  }

  return result;
}

unint64_t sub_1B6F17F00()
{
  result = qword_1EB97D2C8;
  if (!qword_1EB97D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2C8);
  }

  return result;
}

unint64_t sub_1B6F17F54()
{
  result = qword_1EB97D2D0;
  if (!qword_1EB97D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2D0);
  }

  return result;
}

uint64_t sub_1B6F17FA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B6F45BB0 == a2 || (sub_1B6F22C78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1B6F22C78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1B6F22C78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69546F4E656D6974 && a2 == 0xEE00656E6F5A656DLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B6F22C78();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B6F1816C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC78, &qword_1B6F30AD0);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v37[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC80, &qword_1B6F30AD8);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v37[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC88, &qword_1B6F30AE0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v37[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC90, &qword_1B6F30AE8);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC98, &qword_1B6F30AF0);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BCA0, &qword_1B6F30AF8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37[-v17];
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v19);
  sub_1B6F17DB0();
  v20 = v53;
  sub_1B6F22D28();
  if (v20)
  {
    goto LABEL_18;
  }

  v39 = v12;
  v40 = v18;
  v22 = v51;
  v21 = v52;
  v53 = v16;
  v23 = sub_1B6F22C08();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
  {
    v27 = sub_1B6F22B58();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BCA8, &qword_1B6F30B00);
    *v30 = &type metadata for OSLogDateFormatter.Style;
    v31 = v40;
    sub_1B6F22BB8();
    sub_1B6F22B48();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v53 + 8))(v31, v28);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    return 0;
  }

  v38 = *(v23 + 32);
  if (v25 <= 1)
  {
    if (v25)
    {
      v56 = 1;
      sub_1B6F17F00();
      v34 = v40;
      sub_1B6F22BA8();
      (*(v42 + 8))(v11, v43);
    }

    else
    {
      v55 = 0;
      sub_1B6F17F54();
      v34 = v40;
      sub_1B6F22BA8();
      (*(v41 + 8))(v14, v39);
    }

    (*(v53 + 8))(v34, v15);
  }

  else
  {
    v32 = v53;
    if (v25 == 2)
    {
      v57 = 2;
      sub_1B6F17EAC();
      v33 = v40;
      sub_1B6F22BA8();
      (*(v44 + 8))(v22, v45);
    }

    else
    {
      v33 = v40;
      if (v25 == 3)
      {
        v58 = 3;
        sub_1B6F17E58();
        sub_1B6F22BA8();
        (*(v47 + 8))(v21, v46);
      }

      else
      {
        v59 = 4;
        sub_1B6F17E04();
        v35 = v50;
        sub_1B6F22BA8();
        (*(v48 + 8))(v35, v49);
      }
    }

    (*(v32 + 8))(v33, v15);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return v38;
}

unint64_t sub_1B6F18864()
{
  result = qword_1EB97D2D8[0];
  if (!qword_1EB97D2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97D2D8);
  }

  return result;
}

unint64_t sub_1B6F188B8()
{
  result = qword_1EB97BC30;
  if (!qword_1EB97BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC30);
  }

  return result;
}

void *sub_1B6F1890C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC68, &qword_1B6F30AC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F18864();
  sub_1B6F22D28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_1B6F19734();
    sub_1B6F22BF8();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_1B6F18A84()
{
  result = qword_1EB97BC38;
  if (!qword_1EB97BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC38);
  }

  return result;
}

unint64_t sub_1B6F18ADC()
{
  result = qword_1EB97BC40;
  if (!qword_1EB97BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC40);
  }

  return result;
}

unint64_t sub_1B6F18B34()
{
  result = qword_1EB97BC48;
  if (!qword_1EB97BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC48);
  }

  return result;
}

unint64_t sub_1B6F18B8C()
{
  result = qword_1EB97BC50;
  if (!qword_1EB97BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC50);
  }

  return result;
}

unint64_t sub_1B6F18BE4()
{
  result = qword_1EB97BC58;
  if (!qword_1EB97BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC58);
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

uint64_t sub_1B6F18C68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B6F18CB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1B6F18D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1B6F18DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6F18E14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSLogDateFormatter.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for OSLogDateFormatter.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B6F18FBC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

uint64_t sub_1B6F19050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
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
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B6F19164()
{
  result = qword_1EB97E060[0];
  if (!qword_1EB97E060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E060);
  }

  return result;
}

unint64_t sub_1B6F191BC()
{
  result = qword_1EB97E270[0];
  if (!qword_1EB97E270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E270);
  }

  return result;
}

unint64_t sub_1B6F19214()
{
  result = qword_1EB97E380;
  if (!qword_1EB97E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E380);
  }

  return result;
}

unint64_t sub_1B6F1926C()
{
  result = qword_1EB97E388[0];
  if (!qword_1EB97E388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E388);
  }

  return result;
}

unint64_t sub_1B6F192C4()
{
  result = qword_1EB97E410;
  if (!qword_1EB97E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E410);
  }

  return result;
}

unint64_t sub_1B6F1931C()
{
  result = qword_1EB97E418[0];
  if (!qword_1EB97E418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E418);
  }

  return result;
}

unint64_t sub_1B6F19374()
{
  result = qword_1EB97E4A0;
  if (!qword_1EB97E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E4A0);
  }

  return result;
}

unint64_t sub_1B6F193CC()
{
  result = qword_1EB97E4A8[0];
  if (!qword_1EB97E4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E4A8);
  }

  return result;
}

unint64_t sub_1B6F19424()
{
  result = qword_1EB97E530;
  if (!qword_1EB97E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E530);
  }

  return result;
}

unint64_t sub_1B6F1947C()
{
  result = qword_1EB97E538[0];
  if (!qword_1EB97E538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E538);
  }

  return result;
}

unint64_t sub_1B6F194D4()
{
  result = qword_1EB97E5C0;
  if (!qword_1EB97E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E5C0);
  }

  return result;
}

unint64_t sub_1B6F1952C()
{
  result = qword_1EB97E5C8[0];
  if (!qword_1EB97E5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E5C8);
  }

  return result;
}

unint64_t sub_1B6F19584()
{
  result = qword_1EB97E650;
  if (!qword_1EB97E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E650);
  }

  return result;
}

unint64_t sub_1B6F195DC()
{
  result = qword_1EB97E658[0];
  if (!qword_1EB97E658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E658);
  }

  return result;
}

unint64_t sub_1B6F19634()
{
  result = qword_1EB97E6E0;
  if (!qword_1EB97E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E6E0);
  }

  return result;
}

unint64_t sub_1B6F1968C()
{
  result = qword_1EB97E6E8[0];
  if (!qword_1EB97E6E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E6E8);
  }

  return result;
}

unint64_t sub_1B6F196E0()
{
  result = qword_1EB97BC60;
  if (!qword_1EB97BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC60);
  }

  return result;
}

unint64_t sub_1B6F19734()
{
  result = qword_1EB97BC70;
  if (!qword_1EB97BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC70);
  }

  return result;
}

uint64_t sub_1B6F19788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1B6F197F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B6F19850(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

Swift::Bool __swiftcall DiscoverableApplicationServiceExtensionConfiguration.accept(connection:)(NSXPCConnection connection)
{
  [(objc_class *)connection.super.isa setExportedObject:v1];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [(objc_class *)connection.super.isa setExportedInterface:v3];

  [(objc_class *)connection.super.isa resume];
  return 1;
}

uint64_t DiscoverableApplicationServiceExtensionConfiguration.fetchConfigurationData(reply:)(void (*a1)(uint64_t, unint64_t, void))
{
  v3 = *(*v1 + 96);
  v4 = *v1;
  v12 = *(*v1 + 80);
  v5 = v12;
  v13 = *(*(v4 + 88) + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v3, v5);
  v7 = sub_1B6F22918();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  sub_1B6F01F4C(v7, v9);
  a1(v7, v9, 0);
  sub_1B6F01FA0(v7, v9);
  return sub_1B6F01FA0(v7, v9);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B6F19B2C(uint64_t a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v3;

  DiscoverableApplicationServiceExtensionConfiguration.fetchConfigurationData(reply:)(sub_1B6F19F38);
}

void sub_1B6F19BBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1B6F22758();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1B6F227C8();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t DiscoverableApplicationServiceExtensionConfiguration.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DiscoverableApplicationServiceExtension.configuration.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DiscoverableApplicationServiceExtensionConfiguration(0, a1, v6, v7);
  (*(v3 + 16))(v5, v1, a1);
  return sub_1B6F19850(v5);
}

uint64_t sub_1B6F19E8C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void __nwrapport_copy_protocol_definition_block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __nwrapport_copy_protocol_definition_block_invoke_2_cold_5()
{
  OUTLINED_FUNCTION_1_0();
  LODWORD(v0) = *(v0 + 36);
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1B6E85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Magic value does not match: 0x%x", v1, 8u);
}

void __nwrapport_copy_protocol_definition_block_invoke_2_cold_6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __nwrapport_copy_protocol_definition_block_invoke_60_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_1B6E85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Stop handler called for framer=%@, sending CLOSE to daemon", &v1, 0xCu);
}