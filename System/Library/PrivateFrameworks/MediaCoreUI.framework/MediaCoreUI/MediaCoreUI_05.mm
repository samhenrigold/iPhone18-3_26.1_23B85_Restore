uint64_t sub_1C59B3F0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C5BC8894();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C59B3F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919C0, &qword_1C5BD3820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59B3FBC()
{
  result = qword_1EDA489D0[0];
  if (!qword_1EDA489D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA489D0);
  }

  return result;
}

double sub_1C59B4020(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_1C59B405C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t MaterialView.init(_:placeholder:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  v10 = type metadata accessor for MaterialView(0, a3, a4, a3);
  v11 = (a5 + v10[10]);
  *v11 = sub_1C59B4208(0);
  v11[1] = v12;
  v13 = a5 + v10[11];
  *v13 = swift_getKeyPath(a8_3);
  *(v13 + 8) = 0;
  v14 = a5 + v10[12];
  *v14 = swift_getKeyPath(byte_1C5BD3960);
  *(v14 + 8) = 0;
  v15 = a5 + v10[13];
  v16 = sub_1C5BCA684();
  *v15 = v18;
  *(v15 + 8) = v19;
  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  return a2(v16);
}

uint64_t sub_1C59B4208(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1919F8, &qword_1C5BE8CE0);
  sub_1C5BCA684();
  return v2;
}

uint64_t sub_1C59B4250(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AA8, &qword_1C5BD3A28);
  sub_1C5BCA694();
  return v2;
}

uint64_t sub_1C59B42FC(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v11 = j__swift_release(v8);
    (*(v4 + 8))(v6, v3, v11);
    return v13[1];
  }

  return v8;
}

void *sub_1C59B444C@<X0>(void *a1@<X8>)
{
  sub_1C59B5ECC();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C59B449C(uint64_t *a1)
{
  sub_1C59B5ECC();

  return sub_1C5BC8F54();
}

uint64_t sub_1C59B44FC(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v10 = sub_1C5942458(v8, 0);
    (*(v4 + 8))(v6, v3, v10);
    return v12[15];
  }

  return v8;
}

void *sub_1C59B4650@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59B5E78();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C59B46EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  return v2;
}

uint64_t MaterialView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v58 = sub_1C5BCB214();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a1 - 8);
  v67 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1919D0, &qword_1C5BD3988);
  v46 = sub_1C5BC8AB4();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v61 = &v45 - v8;
  v47 = sub_1C5BC8AB4();
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v68 = &v45 - v9;
  v50 = sub_1C5BC8AB4();
  v55 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v69 = &v45 - v10;
  sub_1C5BC87B4();
  v54 = sub_1C5BC8AB4();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v45 - v13;
  v14 = *(a1 + 24);
  v71 = v7;
  v72 = v14;
  v15 = v2;
  v73 = v2;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919D8, &qword_1C5BD3990);
  sub_1C59B50B8();
  v65 = v2;
  v63 = v7;
  sub_1C5BCA2C4();
  v16 = v70;
  v64 = *(v70 + 16);
  v17 = v66;
  v64(v66, v15, a1);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v14;
  v20 = *(v16 + 32);
  v70 = v16 + 32;
  v62 = v20;
  v21 = a1;
  v20(v19 + v18, v17, a1);
  v22 = sub_1C59B51F4();
  v80 = v14;
  v81 = v22;
  v23 = v14;
  v60 = MEMORY[0x1E697E858];
  v24 = v46;
  WitnessTable = swift_getWitnessTable();
  v26 = v61;
  sub_1C5BC9E34();

  (*(v48 + 8))(v26, v24);
  v27 = v66;
  v64(v66, v65, a1);
  v28 = swift_allocObject();
  *(v28 + 16) = v63;
  *(v28 + 24) = v23;
  v62(v28 + v18, v27, a1);
  v78 = WitnessTable;
  v79 = MEMORY[0x1E69805D0];
  v29 = v47;
  v30 = swift_getWitnessTable();
  v31 = v68;
  sub_1C5BCA324();

  (*(v51 + 8))(v31, v29);
  v64(v27, v65, v21);
  v32 = swift_allocObject();
  *(v32 + 16) = v63;
  *(v32 + 24) = v23;
  v62(v32 + v18, v27, v21);
  v76 = v30;
  v77 = MEMORY[0x1E69805D0];
  v33 = v50;
  v34 = swift_getWitnessTable();
  v35 = v56;
  sub_1C5BCB1F4();
  v36 = v49;
  v37 = v69;
  sub_1C5BCA224();

  (*(v57 + 8))(v35, v58);
  (*(v55 + 8))(v37, v33);
  v38 = sub_1C59B575C();
  v74 = v34;
  v75 = v38;
  v39 = v54;
  swift_getWitnessTable();
  v40 = v53;
  v41 = *(v53 + 16);
  v42 = v52;
  v41(v52, v36, v39);
  v43 = *(v40 + 8);
  v43(v36, v39);
  v41(v59, v42, v39);
  return (v43)(v42, v39);
}

void sub_1C59B4FBC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = type metadata accessor for MaterialView(0, a2, a3, a4);
  if ((sub_1C59B46EC(v7) & 1) == 0)
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v8 = 0;
LABEL_7:
    v13 = 0;
    v9 = 0;
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v8 = sub_1C59B4250(v7);
  if (!v8)
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  v9 = sub_1C59B42FC(v7);
  if (!v9)
  {

    v11 = 0;
    v10 = 0;
    v12 = 0;
    v8 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v11 = *a1;
  v10 = a1[1];
  v12 = *(a1 + 16);
  sub_1C59B5E3C(*a1, v10, *(a1 + 16));
  v13 = &off_1F45241F8;
  v14 = 15;
LABEL_9:
  *a5 = v11;
  a5[1] = v10;
  a5[2] = v12;
  a5[3] = v8;
  a5[4] = v13;
  a5[5] = v9;
  a5[6] = v14;
}

unint64_t sub_1C59B50B8()
{
  result = qword_1EC1919E0;
  if (!qword_1EC1919E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1919D8, &qword_1C5BD3990);
    sub_1C59B513C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1919E0);
  }

  return result;
}

unint64_t sub_1C59B513C()
{
  result = qword_1EC1919E8;
  if (!qword_1EC1919E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1919E8);
  }

  return result;
}

void sub_1C59B5190(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

unint64_t sub_1C59B51F4()
{
  result = qword_1EC1919F0;
  if (!qword_1EC1919F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1919D0, &qword_1C5BD3988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1919F0);
  }

  return result;
}

uint64_t sub_1C59B52CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C5BCB1E4();
  v3[5] = sub_1C5BCB1D4();
  v5 = sub_1C5BCB194();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C59B5368, v5, v4);
}

uint64_t sub_1C59B5368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MaterialView(0, v4[3], v4[4], a4);
  v4[8] = v5;
  v6 = sub_1C59B4250(v5);
  if (v6)
  {
    v7 = v6;

LABEL_3:
    v8 = v4[1];

    return v8();
  }

  v10 = sub_1C59B42FC(v5);
  v4[9] = v10;
  if (!v10)
  {

    goto LABEL_3;
  }

  v11 = v10;
  v12 = sub_1C59B44FC(v5);
  objc_allocWithZone(type metadata accessor for MaterialRenderer());
  v13 = swift_task_alloc();
  v4[10] = v13;
  *v13 = v4;
  v13[1] = sub_1C59B54C4;

  return sub_1C5AC7EBC(v11, v12);
}

uint64_t sub_1C59B54C4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C59B55EC, v4, v3);
}

uint64_t sub_1C59B55EC()
{
  v1 = v0[11];
  v2 = v0[8];

  sub_1C59B42A4(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C59B5674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for MaterialView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C592ABD4;

  return sub_1C59B52CC(v4 + v9, v6, v7);
}

unint64_t sub_1C59B575C()
{
  result = qword_1EC190A00;
  if (!qword_1EC190A00)
  {
    sub_1C5BC87B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190A00);
  }

  return result;
}

uint64_t MaterialView<>.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1919F8, &qword_1C5BE8CE0);
  sub_1C5BCA684();
  *(a2 + 32) = v7;
  *(a2 + 48) = swift_getKeyPath(a8_3);
  *(a2 + 56) = 0;
  *(a2 + 64) = swift_getKeyPath(byte_1C5BD3960);
  *(a2 + 72) = 0;
  sub_1C5BCA684();
  *(a2 + 80) = v7;
  *(a2 + 88) = *(&v7 + 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  result = sub_1C5BCA484();
  *(a2 + 24) = result;
  return result;
}

void sub_1C59B58C8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C59B5D88(319, &qword_1EC191A80, qword_1EC1919F8, &qword_1C5BE8CE0, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1C59B5D88(319, &qword_1EC191A88, &qword_1EC191A90, qword_1C5BD3A10, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C59B5D88(319, &qword_1EC191A98, &qword_1EC191AA0, &unk_1C5BF31A0, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C59B5DEC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C59B5A2C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 17) & ~v6;
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 - 1;
    if (v20 < 0)
    {
      v20 = -1;
    }

    return (v20 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

unsigned int *sub_1C59B5B98(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
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
      result = ((result + v8 + 17) & ~v8);
      if (v6 < 0x7FFFFFFE)
      {
        v20 = ((result + v9) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = a2 - 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

void sub_1C59B5D88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C59B5DEC()
{
  if (!qword_1EDA4E188)
  {
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA4E188);
    }
  }
}

id sub_1C59B5E3C(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

unint64_t sub_1C59B5E78()
{
  result = qword_1EC191AB8[0];
  if (!qword_1EC191AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC191AB8);
  }

  return result;
}

unint64_t sub_1C59B5ECC()
{
  result = qword_1EC197E50;
  if (!qword_1EC197E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197E50);
  }

  return result;
}

uint64_t sub_1C59B5F20@<X0>(char a1@<W0>, uint64_t a4@<X8>)
{
  *a4 = sub_1C5BC8C84();
  *(a4 + 8) = v6;
  *(a4 + 16) = swift_getKeyPath("Н\\&");
  *(a4 + 89) = 0;
  result = swift_getKeyPath(byte_1C5BD3A70);
  *(a4 + 96) = result;
  *(a4 + 104) = 0;
  *(a4 + 105) = a1;
  return result;
}

uint64_t sub_1C59B5F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v73 = sub_1C5BC8F34();
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0, &qword_1C5BF3390);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  _s24HeaderArtworkPlaceholderVMa(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s32HeaderMetadataAndContextMenuViewVMa(255, v5, v6, v8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v9 = sub_1C5BCA714();
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B40, &unk_1C5BE6D30);
  v12 = sub_1C5BC8AB4();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v58 - v13;
  v14 = sub_1C5BC8AB4();
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v58 - v15;
  v62 = v16;
  v17 = sub_1C5BC8AB4();
  v65 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v58 - v18;
  v66 = v19;
  v20 = sub_1C5BC8AB4();
  v67 = *(v20 - 8);
  v68 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v64 = &v58 - v23;
  v24 = v2[5];
  v101[3] = v2[4];
  v101[4] = v24;
  *(&v101[4] + 10) = *(v2 + 90);
  v25 = v2[1];
  v100 = *v2;
  v101[0] = v25;
  v26 = v2[3];
  v101[1] = v2[2];
  v101[2] = v26;
  sub_1C5BC8FC4();
  v76 = v5;
  v77 = v6;
  v78 = &v100;
  v28 = v74;
  v27 = v75;
  sub_1C5BCA704();
  v98 = 0x49676E6979616C70;
  v99 = 0xEB000000006D6574;
  v104 = *&v101[5];
  v105 = BYTE8(v101[5]);
  if (BYTE8(v101[5]) == 1)
  {
    v97 = *&v101[5];
  }

  else
  {

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v104, &qword_1EC191B48, &qword_1C5BE98A0);
    (*(v27 + 8))(v28, v73);
  }

  sub_1C5BC9664();
  sub_1C5BCABD4();
  WitnessTable = swift_getWitnessTable();
  sub_1C59B7328();
  sub_1C5BCA114();

  (*(v59 + 8))(v11, v9);
  sub_1C5BC98C4();
  v102[0] = v101[0];
  v102[1] = v101[1];
  v102[2] = v101[2];
  *v103 = v101[3];
  *&v103[10] = *(&v101[3] + 10);
  v31 = *&v101[0];
  v94 = *(&v101[2] + 8);
  v95 = *(&v101[3] + 8);
  v96 = BYTE8(v101[4]);
  v92 = *(v101 + 8);
  v93 = *(&v101[1] + 8);
  v32 = BYTE9(v101[4]);
  if (BYTE9(v101[4]))
  {
    *(&v91[1] + 8) = *(&v101[1] + 8);
    *(&v91[2] + 8) = *(&v101[2] + 8);
    *(&v91[3] + 8) = *(&v101[3] + 8);
    BYTE8(v91[4]) = BYTE8(v101[4]);
    *(v91 + 8) = *(v101 + 8);
    *&v91[0] = *&v101[0];
    v33 = v75;
  }

  else
  {
    sub_1C59B737C(v102, v90);
    sub_1C5BCB4E4();
    v34 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v35 = v74;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v102, &qword_1EC191B58, &qword_1C5BE53F0);
    v33 = v75;
    (*(v75 + 8))(v35, v73);
  }

  *&v90[32] = v91[2];
  *&v90[48] = v91[3];
  *&v90[57] = *(&v91[3] + 9);
  *v90 = v91[0];
  *&v90[16] = v91[1];
  sub_1C5AB043C();
  v36 = sub_1C59B73EC();
  v88 = WitnessTable;
  v89 = v36;
  v37 = swift_getWitnessTable();
  v38 = v70;
  sub_1C5BCA2F4();
  (*(v60 + 8))(v38, v12);
  sub_1C5BC98E4();
  if (v32)
  {
    *(&v87[1] + 8) = v93;
    *(&v87[2] + 8) = v94;
    *(&v87[3] + 8) = v95;
    BYTE8(v87[4]) = v96;
    *(v87 + 8) = v92;
    *&v87[0] = v31;
    v39 = v73;
  }

  else
  {
    sub_1C59B737C(v102, v90);
    sub_1C5BCB4E4();
    v40 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v41 = v74;
    v33 = v75;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v102, &qword_1EC191B58, &qword_1C5BE53F0);
    v39 = v73;
    (*(v33 + 8))(v41, v73);
  }

  *&v90[32] = v87[2];
  *&v90[48] = v87[3];
  *&v90[57] = *(&v87[3] + 9);
  *v90 = v87[0];
  *&v90[16] = v87[1];
  sub_1C5AB0588();
  v85 = v37;
  v86 = MEMORY[0x1E697E5D8];
  v42 = v62;
  v43 = swift_getWitnessTable();
  v44 = v71;
  sub_1C5BCA2F4();
  (*(v61 + 8))(v44, v42);
  sub_1C5BC98A4();
  if (v32)
  {
    *&v90[24] = v93;
    *&v90[40] = v94;
    *&v90[56] = v95;
    v90[72] = v96;
    *&v90[8] = v92;
    *v90 = v31;
  }

  else
  {
    sub_1C59B737C(v102, v90);
    sub_1C5BCB4E4();
    v45 = v33;
    v46 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v47 = v74;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v102, &qword_1EC191B58, &qword_1C5BE53F0);
    (*(v45 + 8))(v47, v39);
  }

  v83[2] = *&v90[32];
  v84[0] = *&v90[48];
  *(v84 + 9) = *&v90[57];
  v83[0] = *v90;
  v83[1] = *&v90[16];
  sub_1C5B4B500(v83);
  v81 = v43;
  v48 = MEMORY[0x1E697E5D8];
  v82 = MEMORY[0x1E697E5D8];
  v49 = v66;
  v50 = swift_getWitnessTable();
  v51 = v63;
  v52 = v72;
  sub_1C5BCA2F4();
  (*(v65 + 8))(v52, v49);
  v79 = v50;
  v80 = v48;
  v53 = v68;
  v54 = swift_getWitnessTable();
  v55 = v64;
  sub_1C593EDC0(v51, v53, v54);
  v56 = *(v67 + 8);
  v56(v51, v53);
  sub_1C593EDC0(v55, v53, v54);
  return (v56)(v55, v53);
}

uint64_t sub_1C59B6AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0, &qword_1C5BF3390);
  v9 = _s24HeaderArtworkPlaceholderVMa(255, a2, a3, v8);
  WitnessTable = swift_getWitnessTable();
  *&v38 = v9;
  v39 = v7;
  v40 = sub_1C5BC8BE4();
  v10 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v44 = sub_1C5BC8AB4();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v34 - v13;
  v14 = sub_1C5BCA484();
  if (qword_1EC1909E8 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA54();
  v15 = sub_1C5BC85D4();
  *&v70 = v14;
  *(&v70 + 1) = v65;
  LOBYTE(v71) = v66;
  *(&v71 + 1) = v67;
  LOBYTE(v72[0]) = v68;
  *(v72 + 8) = v69;
  MEMORY[0x1EEE9AC00](v15);
  *(&v34 - 4) = a2;
  *(&v34 - 3) = a3;
  v35 = a1;
  *(&v34 - 2) = a1;
  sub_1C5BCAA54();
  v36 = a2;
  v34 = a3;
  v16 = sub_1C594C97C();
  sub_1C5BCA2C4();

  v57 = v62;
  v58 = v63;
  v59 = v64;
  v55[0] = *v60;
  v55[1] = *&v60[16];
  v56 = v61;
  v17 = swift_getWitnessTable();
  v53 = v16;
  v54 = v17;
  v18 = swift_getWitnessTable();
  v19 = v41;
  sub_1C5BCA094();
  v72[0] = v56;
  v72[1] = v57;
  v72[2] = v58;
  v73 = v59;
  v70 = v55[0];
  v71 = v55[1];
  (*(*(v10 - 8) + 8))(&v70, v10);
  v20 = sub_1C59B745C();
  v51 = v18;
  v52 = v20;
  v21 = v44;
  v39 = swift_getWitnessTable();
  v22 = v43;
  sub_1C593EDC0(v19, v21, v39);
  v23 = v42;
  v40 = *(v42 + 8);
  v40(v19, v21);
  v24 = v34;
  v25 = v36;
  sub_1C59498C4(*v35, v35[1], v36, *(v34 + 8));
  NowPlayingController.sharedViews.getter(v48);
  v46 = v48[0];
  v27 = type metadata accessor for NowPlayingViews(0, v25, v24, v26);
  NowPlayingViews.metadata.getter(v27, v55);
  swift_unknownObjectRelease();
  v49 = *&v55[0];
  v38 = *(v55 + 8);
  v50 = *(v55 + 8);
  v29 = _s32HeaderMetadataAndContextMenuViewVMa(0, v25, v24, v28);
  v30 = swift_getWitnessTable();
  sub_1C593EDC0(&v49, v29, v30);

  swift_unknownObjectRelease();
  (*(v23 + 16))(v19, v22, v21);
  *&v55[0] = *v60;
  *(v55 + 8) = *&v60[8];
  v49 = v19;
  *&v50 = v55;
  swift_unknownObjectRetain();

  v48[0] = v21;
  v48[1] = v29;
  v46 = v39;
  v47 = v30;
  sub_1C594226C(&v49, 2uLL, v48);
  swift_unknownObjectRelease();

  v31 = v22;
  v32 = v40;
  v40(v31, v21);

  swift_unknownObjectRelease();
  return v32(v19, v21);
}

double sub_1C59B7068(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*a1, a1[1], a2, *(a3 + 8));
  NowPlayingController.sharedViews.getter(v16);
  v15 = v16[0];
  v6 = type metadata accessor for NowPlayingViews(0, a2, a3, v5);
  NowPlayingViews.artwork.getter(v6);
  swift_unknownObjectRelease();
  v11 = v13;
  v12 = v14;
  v8 = _s24HeaderArtworkPlaceholderVMa(0, a2, a3, v7);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v11, v8, WitnessTable);

  v13 = v16[1];
  v14 = v17;
  sub_1C593EDC0(&v13, v8, WitnessTable);

  return result;
}

uint64_t sub_1C59B718C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C59B71F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 106))
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

uint64_t sub_1C59B7250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C59B7328()
{
  result = qword_1EC191B50;
  if (!qword_1EC191B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191B50);
  }

  return result;
}

uint64_t sub_1C59B737C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B58, &qword_1C5BE53F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C59B73EC()
{
  result = qword_1EC191B60;
  if (!qword_1EC191B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B40, &unk_1C5BE6D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191B60);
  }

  return result;
}

unint64_t sub_1C59B745C()
{
  result = qword_1EDA4E190;
  if (!qword_1EDA4E190)
  {
    sub_1C5BC97C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E190);
  }

  return result;
}

unint64_t sub_1C59B74D4()
{
  result = qword_1EC191B68;
  if (!qword_1EC191B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191B68);
  }

  return result;
}

uint64_t (*MCUINamespace<A>.isLockScreenBackgroundBlurEnabled.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C59B74D4();
  sub_1C5BC8F44();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C59B75F0;
}

uint64_t sub_1C59B761C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C5BC8F44();
  return v3;
}

unint64_t sub_1C59B7664()
{
  result = qword_1EC191B70;
  if (!qword_1EC191B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191B70);
  }

  return result;
}

uint64_t (*MCUINamespace<A>.isLockScreenBackgroundColorAdjustmentEnabled.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C59B7664();
  sub_1C5BC8F44();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C59B7818;
}

uint64_t sub_1C59B7878(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78, &qword_1C5BD3CF0);
  sub_1C5BCA684();
  return v3;
}

uint64_t sub_1C59B78D0(uint64_t a1)
{
  v4 = sub_1C5BC7AC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  sub_1C5BCA684();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_1C59B79C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = (a1 - 8);
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BC9654();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5[4];
  v13 = v5[5];
  v37 = v5[3];
  v39 = v13;
  v15 = _s24StateObservationModifierVMa(255, v37, v13, v14);
  v38 = v12;
  v40 = v15;
  v16 = sub_1C5BC8AB4();
  v17 = sub_1C59BD80C(&unk_1EDA461C8, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  v45 = v9;
  v43 = v16;
  v41 = v17;
  v18 = sub_1C5BC8544();
  v44 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v42 = &v36 - v22;
  if (*v3)
  {
    v23 = *(*v3 + 24);
    v24 = *(v3 + 40);
    v50[0] = *(v3 + 32);
    v51 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
    sub_1C5BCA694();
    if ((v52 & 1) == 0)
    {
      swift_beginAccess();
    }

    sub_1C5BC9644();
    (*(v6 + 16))(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
    v25 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v26 = swift_allocObject();
    v27 = v38;
    *(v26 + 2) = v37;
    *(v26 + 3) = v27;
    v28 = *(a1 + 40);
    *(v26 + 4) = v39;
    *(v26 + 5) = v28;
    *(v26 + 6) = v23;
    (*(v6 + 32))(&v26[v25], v8, a1);
    WitnessTable = swift_getWitnessTable();
    v48 = v28;
    v49 = WitnessTable;
    v30 = v43;
    v31 = swift_getWitnessTable();
    sub_1C5A7D1C4(v11, sub_1C59BCFB4, v26, v45, v30, v41, v31);
    v47 = v31;
    v32 = swift_getWitnessTable();
    v33 = v42;
    sub_1C593EDC0(v20, v18, v32);
    v34 = *(v44 + 8);
    v34(v20, v18);
    sub_1C593EDC0(v33, v18, v32);
    return (v34)(v33, v18);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59B7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, void *a5@<X4>, void (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v114 = a7;
  v96 = a3;
  v115 = a2;
  v110 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48, &unk_1C5BD3F00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v100 = &v95 - v15;
  v116 = a4;
  v117 = a6;
  v17 = _s24StateObservationModifierVMa(0, a4, a6, v16);
  v106 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v102 = (&v95 - v18);
  v103 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a5;
  v109 = v21;
  v108 = sub_1C5BC8AB4();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v104 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v95 - v24;
  v128 = a4;
  v129 = a5;
  v130 = a6;
  v131 = a7;
  v25 = _s19HeadlessTimeControlVMa(0, &v128);
  v113 = v25;
  v26 = *(v25 - 8);
  v95 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v95 - v27;
  v112 = &v95 - v27;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90);
  v29 = *(v99 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v99);
  v33 = &v95 - v32;
  (*(v29 + 16))(&v95 - v32, a1, v31);
  v111 = *(v26 + 16);
  v111(v28, a3, v25);
  v98 = sub_1C5BCB1E4();

  v34 = sub_1C5BCB1D4();
  v35 = (*(v29 + 80) + 72) & ~*(v29 + 80);
  v36 = *(v26 + 80);
  v37 = v26;
  v38 = (v30 + v36 + v35) & ~v36;
  v97 = v36 | 7;
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  *(v39 + 2) = v34;
  *(v39 + 3) = v40;
  v41 = v118;
  *(v39 + 4) = v116;
  *(v39 + 5) = v41;
  v42 = v114;
  *(v39 + 6) = v117;
  *(v39 + 7) = v42;
  *(v39 + 8) = v115;
  (*(v29 + 32))(&v39[v35], v33, v99);
  v43 = *(v37 + 32);
  v44 = &v39[v38];
  v45 = v112;
  v46 = v113;
  v43(v44, v112, v113);
  v47 = v96;
  v111(v45, v96, v46);
  v48 = sub_1C5BCB1D4();
  v49 = swift_allocObject();
  *(v49 + 2) = v48;
  v50 = v116;
  *(v49 + 3) = MEMORY[0x1E69E85E0];
  *(v49 + 4) = v50;
  v51 = v117;
  *(v49 + 5) = v118;
  *(v49 + 6) = v51;
  *(v49 + 7) = v42;
  v43(&v49[(v36 + 64) & ~v36], v112, v46);
  v52 = v47;
  sub_1C5BCA844();
  v53 = *v47;
  if (*v47)
  {
    v54 = v130;
    v112 = v128;
    v111 = v129;

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
    MEMORY[0x1C694EA50](&v121, v55);
    v56 = v121;
    v57 = *(v53 + 24);
    swift_beginAccess();
    if (*(v57 + 72) == 2)
    {

      v98 = 0xE500000000000000;
      v99 = 0x2D2D3A2D2DLL;
      v97 = 0x2D2D3A2D2DLL;
      v58 = 0xE500000000000000;
    }

    else
    {
      v59 = *(v57 + 32);
      v60 = v56 * v59;
      v61 = [*(v53 + 48) stringFromSeconds_];
      v99 = sub_1C5BCAE74();
      v98 = v62;

      v63 = [*(v53 + 56) stringFromSeconds_];
      v97 = sub_1C5BCAE74();
      v58 = v64;
    }

    v66 = v47[5];
    LOBYTE(v128) = *(v47 + 32);
    v65 = v128;
    v129 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
    sub_1C5BCA694();
    v67 = LOBYTE(v121);
    LOBYTE(v121) = v65;
    v122 = v66;
    sub_1C5BCA6B4();
    v68 = v128;
    v69 = v129;
    v70 = v130;
    v71 = v115;
    swift_beginAccess();
    v72 = *(v71 + 72) & 1;
    LOBYTE(v128) = v67;
    v129 = v68;
    v130 = v69;
    LOBYTE(v131) = v70;
    v132 = v112;
    v133 = v111;
    v134 = v54;
    v135 = v99;
    v136 = v98;
    v137 = v97;
    v138 = v58;
    v139 = v72;
    v73 = *(v52 + *(v113 + 68));

    v74 = v101;
    v73(&v128);
    LOBYTE(v125) = v65;
    v126 = v66;
    sub_1C5BCA6B4();
    v75 = *&v121;
    v76 = v122;
    LOBYTE(v71) = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98, &qword_1C5BD3E18);
    v77 = v100;
    sub_1C5BCA6B4();
    v78 = *(v52 + 56);
    v79 = v52[8];
    v125 = v52[6];
    LOBYTE(v126) = v78;
    v127 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191D50, &qword_1C5BD3F10);
    sub_1C5BCA6B4();
    v80 = v117;
    v81 = v116;
    v82 = v102;
    sub_1C59B8C7C(v75, v76, v71, v77, *&v121, v122, v123, v124, v102, v116, v117);
    v83 = v104;
    v84 = v118;
    v85 = v109;
    v86 = v114;
    MEMORY[0x1C694E550](v82, v118, v109, v114);
    v88 = _s26HeadlessTimeControlContextVMa(0, v81, v80, v87);
    (*(*(v88 - 8) + 8))(&v128, v88);

    (*(v106 + 8))(v82, v85);
    (*(v103 + 8))(v74, v84);
    WitnessTable = swift_getWitnessTable();
    v119 = v86;
    v120 = WitnessTable;
    v90 = v108;
    v91 = swift_getWitnessTable();
    v92 = v105;
    sub_1C593EDC0(v83, v90, v91);
    v93 = *(v107 + 8);
    v93(v83, v90);
    sub_1C593EDC0(v92, v90, v91);
    return (v93)(v92, v90);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

void *sub_1C59B8998@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, double *a6@<X8>, uint64_t a8)
{
  v37 = a5;
  v13 = sub_1C5BC7AC4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  swift_beginAccess();
  v20 = 0.0;
  if (*(a1 + 72) != 2)
  {
    v22 = *(a1 + 56);
    v21 = *(a1 + 64);
    v24 = *(a1 + 24);
    v23 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90);
    sub_1C5BC8514();
    sub_1C5BC7A54();
    v26 = v25;
    (*(v14 + 8))(v19, v13);
    if (v23 > 0.0)
    {
      v27 = v24 + v21 * (v26 - v22);
      if (v23 < v27)
      {
        v27 = v23;
      }

      if (v27 < 0.0)
      {
        v27 = 0.0;
      }

      v20 = v27 / v23;
    }
  }

  v28 = *(a2 + 56);
  v29 = *(a2 + 64);
  v38 = *(a2 + 48);
  LOBYTE(v39) = v28;
  v40 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191D50, &qword_1C5BD3F10);
  result = sub_1C5BCA694();
  if (v43)
  {
    goto LABEL_9;
  }

  v31 = v42;
  if (*(a1 + 72) == 2)
  {
    sub_1C5BC7A64();
    sub_1C5BC7A54();
    v33 = v32;
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v33 = *(a1 + 56);
  }

  v34 = *(a2 + 40);
  LOBYTE(v38) = *(a2 + 32);
  v39 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  result = sub_1C5BCA694();
  if ((LOBYTE(v42) & 1) == 0)
  {
    v38 = a3;
    v39 = a4;
    v40 = v37;
    v41 = a8;
    _s19HeadlessTimeControlVMa(0, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98, &qword_1C5BD3E18);
    sub_1C5BCA694();
    sub_1C5BC7A54();
    v36 = v35;
    result = (*(v14 + 8))(v16, v13);
    if (v33 >= v36)
    {
LABEL_9:
      v31 = v20;
    }
  }

  *a6 = v31;
  return result;
}

uint64_t sub_1C59B8C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  _s11TimeControlCMa();
  sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
  *a9 = sub_1C5BC8C84();
  a9[1] = v18;
  a9[2] = sub_1C5BC8C84();
  a9[3] = v19;
  v21 = _s24StateObservationModifierVMa(0, a10, a11, v20);
  v22 = v21[10];
  *(a9 + v22) = swift_getKeyPath(byte_1C5BD3D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v21[11];
  *v23 = a1;
  *(v23 + 1) = a2;
  v23[16] = a3;
  result = sub_1C59BD244(a4, a9 + v21[12]);
  v25 = a9 + v21[13];
  *v25 = a5;
  *(v25 + 1) = a6;
  *(v25 + 2) = a7;
  v25[24] = a8 & 1;
  return result;
}

uint64_t sub_1C59B8DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = sub_1C5BC7AC4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11TimeControlCMa();
  sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
  *a7 = sub_1C5BC8C84();
  *(a7 + 8) = v18;
  *(a7 + 16) = sub_1C5BC8C84();
  *(a7 + 24) = v19;
  v31 = 0;
  sub_1C5BCA684();
  v20 = v28;
  *(a7 + 32) = v27;
  *(a7 + 40) = v20;
  *(a7 + 48) = sub_1C59B7878(0, 1);
  *(a7 + 56) = v21 & 1;
  *(a7 + 64) = v22;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v23 = _s19HeadlessTimeControlVMa(0, &v27);
  sub_1C5BC7A64();
  result = sub_1C59B78D0(v17);
  v25 = (a7 + *(v23 + 68));
  *v25 = a1;
  v25[1] = a2;
  return result;
}

uint64_t sub_1C59B8F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(v2 + 32);
  v9 = *(v2 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
  MEMORY[0x1C694EA50](&v7, v5);
  sub_1C59B9014(*(v2 + 8), *(v2 + 16), *(v2 + 24), *(a1 + 16), *(a1 + 24), a2, v7);
}

uint64_t sub_1C59B9014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a7;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  v8 = *(_s33HeadlessTimeControlSliderModifierVMa(0, a4, a5, a4) + 40);
  *(a6 + v8) = swift_getKeyPath(byte_1C5BD3D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C59B90AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = *(v0 + 8);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0, &qword_1C5BD26F0);
  MEMORY[0x1C694EA50](&v5, v3);
  return v5;
}

uint64_t sub_1C59B9160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v76 = a3;
  v68 = *(a2 - 8);
  v80 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v79 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C5BC9304();
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C5BC82F4();
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v78 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D30, &qword_1C5BD3EE8);
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D38, &qword_1C5BD3EF0);
  v60 = v8;
  v74 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v51 - v9;
  swift_getWitnessTable();
  v10 = sub_1C5BC9394();
  v53 = a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = _s21AccessibilityModifierVMa(255, v11, v12, v13);
  v15 = sub_1C5BC8AB4();
  v59 = v15;
  v70 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v51 - v16;
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v84 = WitnessTable;
  v85 = v18;
  v19 = swift_getWitnessTable();
  v58 = v19;
  v57 = sub_1C5924F54(&qword_1EDA466B0, &qword_1EC191D38, &qword_1C5BD3EF0, MEMORY[0x1E697E238]);
  *&v86 = v15;
  *(&v86 + 1) = v8;
  *&v87 = v19;
  *(&v87 + 1) = v57;
  v62 = MEMORY[0x1E6981348];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v55 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v51 - v22;
  v23 = v77;
  sub_1C59B9AF0(&v86, *v77);
  v89 = v86;
  v90 = v87;
  v81 = v86;
  v82 = v87;
  v83 = v88;
  MEMORY[0x1C694E550](&v81, v10, v14, WitnessTable);
  sub_1C59BA508(&v89);
  v24 = v12;
  v52 = v12;
  v51 = v11;
  v25 = sub_1C5BC8C94();
  (*(*(v25 - 8) + 8))(&v90, v25);
  sub_1C5BC9474();
  sub_1C5BC82B4();
  v26 = v68;
  v66 = *(v68 + 16);
  v27 = v79;
  v28 = v53;
  v66(v79, v23, v53);
  v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v11;
  *(v30 + 24) = v24;
  v31 = *(v26 + 32);
  v31(v30 + v29, v27, v28);
  sub_1C59BD80C(&qword_1EDA467D8, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1C59BD80C(&qword_1EDA467E0, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v32 = v67;
  v33 = v71;
  v34 = v78;
  sub_1C5BCA8E4();

  (*(v72 + 8))(v34, v33);
  v35 = v79;
  v66(v79, v77, v28);
  v36 = swift_allocObject();
  v37 = v52;
  *(v36 + 16) = v51;
  *(v36 + 24) = v37;
  v31(v36 + v29, v35, v28);
  sub_1C5924F54(&qword_1EDA46438, &qword_1EC191D30, &qword_1C5BD3EE8, MEMORY[0x1E697E8D0]);
  v38 = v69;
  v39 = v73;
  sub_1C5BCA8D4();

  (*(v75 + 8))(v32, v39);
  sub_1C5BC8334();
  v40 = v55;
  v41 = v59;
  v42 = v60;
  v43 = v58;
  v44 = v57;
  v45 = v54;
  sub_1C5BCA0B4();
  (*(v74 + 8))(v38, v42);
  (*(v70 + 8))(v45, v41);
  *&v81 = v41;
  *(&v81 + 1) = v42;
  *&v82 = v43;
  *(&v82 + 1) = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v56;
  v48 = OpaqueTypeMetadata2;
  sub_1C593EDC0(v40, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v49 = *(v64 + 8);
  v49(v40, v48);
  sub_1C593EDC0(v47, v48, OpaqueTypeConformance2);
  return (v49)(v47, v48);
}

uint64_t sub_1C59B9AF0@<X0>(uint64_t a3@<X8>, double a4@<D0>)
{
  _s11TimeControlCMa();
  sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
  v6 = sub_1C5BC8C84();
  v8 = v7;
  result = sub_1C5BC8C84();
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = result;
  *(a3 + 24) = v10;
  *(a3 + 32) = a4;
  return result;
}

uint64_t sub_1C59B9BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C5BC81D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  _s33HeadlessTimeControlSliderModifierVMa(0, a3, a4, v13);
  sub_1C594C72C(v12);
  (*(v7 + 104))(v9, *MEMORY[0x1E697BE38], v6);
  v14 = sub_1C5BC81C4();
  v15 = *(v7 + 8);
  v15(v9, v6);
  v15(v12, v6);
  if ((v14 & 1) == 0)
  {
    return sub_1C59B9104(v14 & 1);
  }

  result = sub_1C59B90AC();
  if ((result & 1) == 0)
  {
    return sub_1C59B9104(v14 & 1);
  }

  return result;
}

uint64_t sub_1C59B9D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C59B9D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1C59B9DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C59B9E40(uint64_t a1)
{
  sub_1C59BA15C(319, &qword_1EDA45FA8, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1C59BD554(319, &qword_1EDA46768, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C59B9F48(uint64_t a1)
{
  sub_1C59BA0C8(319);
  if (v1 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v2 <= 0x3F)
    {
      sub_1C59BA15C(319, &qword_1EDA4E188, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1C59BD5B8(319, &qword_1EC191D28, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1C59BD554(319, &qword_1EDA46000, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1C5927B74();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C59BA0C8(uint64_t a1)
{
  if (!qword_1EC191D20)
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
    v1 = sub_1C5BC8C94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC191D20);
    }
  }
}

void sub_1C59BA15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59BA238(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0, &qword_1C5BD26F0);
  MEMORY[0x1C694EA50](&v7, v5);
  return v7;
}

uint64_t sub_1C59BA2FC(uint64_t a1, __n128 a2)
{
  v3 = sub_1C5BC7AC4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48, &unk_1C5BD3F00);
  sub_1C5BCA824();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1C59BA40C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = *(v2 + 2);
  LOBYTE(v2) = *(v2 + 24);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191E70, &qword_1C5BD4058);
  MEMORY[0x1C694EA50](&v7, v5);
  return v7;
}

uint64_t sub_1C59BA508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D40, &qword_1C5BD3EF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59BA570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(_s33HeadlessTimeControlSliderModifierVMa(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C59B9BA0(a1, v9, v6, v7);
}

uint64_t sub_1C59BA664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a1;
  v118 = a3;
  v120 = sub_1C5BC81D4();
  v117 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC7AC4();
  v114 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = *(a2 - 8);
  v127 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_1C5BC9394();
  WitnessTable = swift_getWitnessTable();
  *&v130 = v9;
  *(&v130 + 1) = MEMORY[0x1E69E6370];
  v122 = v9;
  v11 = MEMORY[0x1E69E6370];
  *&v131 = WitnessTable;
  *(&v131 + 1) = MEMORY[0x1E69E6388];
  v12 = WitnessTable;
  v124 = WitnessTable;
  v13 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v91 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B78, &qword_1C5BD3CF0);
  *&v130 = v9;
  *(&v130 + 1) = v11;
  *&v131 = v12;
  *(&v131 + 1) = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1C59BD6B8();
  *&v130 = OpaqueTypeMetadata2;
  *(&v130 + 1) = v16;
  v19 = OpaqueTypeMetadata2;
  v87 = OpaqueTypeMetadata2;
  v90 = v16;
  *&v131 = OpaqueTypeConformance2;
  *(&v131 + 1) = v18;
  v20 = OpaqueTypeConformance2;
  v89 = OpaqueTypeConformance2;
  v21 = v18;
  v88 = v18;
  v22 = swift_getOpaqueTypeMetadata2();
  v103 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v86 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68, &qword_1C5BD4050);
  *&v130 = v19;
  *(&v130 + 1) = v16;
  *&v131 = v20;
  *(&v131 + 1) = v21;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1C59BD734();
  *&v130 = v22;
  *(&v130 + 1) = v24;
  *&v131 = v25;
  *(&v131 + 1) = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v110 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v86 - v28;
  v104 = v22;
  *&v130 = v22;
  *(&v130 + 1) = v24;
  v97 = v24;
  v95 = v25;
  *&v131 = v25;
  *(&v131 + 1) = v26;
  v94 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_1C59BD80C(&qword_1EDA4E020, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  *&v130 = v27;
  *(&v130 + 1) = v5;
  *&v131 = v29;
  *(&v131 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v112 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v86 - v32;
  v111 = v27;
  *&v130 = v27;
  *(&v130 + 1) = v5;
  v115 = v5;
  v98 = v29;
  *&v131 = v29;
  *(&v131 + 1) = v30;
  v96 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_1C59BD80C(&qword_1EDA467E8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v113 = v31;
  *&v130 = v31;
  *(&v130 + 1) = v120;
  v105 = v33;
  *&v131 = v33;
  *(&v131 + 1) = v34;
  v102 = v34;
  v109 = swift_getOpaqueTypeMetadata2();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v99 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v101 = &v86 - v37;
  v38 = v126;
  LOBYTE(v130) = sub_1C59BA238(a2) & 1;
  v39 = v129;
  v40 = v129 + 16;
  v128 = *(v129 + 16);
  v41 = v92;
  v128(v92, v38, a2);
  v42 = *(v39 + 80);
  v43 = (v42 + 32) & ~v42;
  v127 += v43;
  v44 = swift_allocObject();
  v45 = *(a2 + 24);
  v123 = *(a2 + 16);
  *(v44 + 16) = v123;
  *(v44 + 24) = v45;
  v121 = *(v39 + 32);
  v121(v44 + v43, v41, a2);
  swift_checkMetadataState();
  v46 = v91;
  sub_1C5BCA344();

  v47 = v126;
  *&v130 = sub_1C59BA40C(a2);
  BYTE8(v130) = v48 & 1;
  v125 = v40;
  v128(v41, v47, a2);
  v124 = v42;
  v49 = swift_allocObject();
  *(v49 + 16) = v123;
  *(v49 + 24) = v45;
  v122 = v45;
  v50 = v43;
  v51 = v41;
  v52 = v41;
  v129 = v39 + 32;
  v53 = v121;
  v121(v49 + v43, v52, a2);
  v54 = v87;
  sub_1C5BCA344();

  v55 = v126;
  (*(v93 + 8))(v46, v54);
  if (*v55)
  {
    v56 = *(*v55 + 24);
    swift_beginAccess();
    v57 = *(v56 + 72);
    v58 = *(v56 + 40);
    v130 = *(v56 + 24);
    v131 = v58;
    v132 = *(v56 + 56);
    v133 = v57;
    v128(v51, v55, a2);
    v59 = swift_allocObject();
    v60 = v123;
    *(v59 + 16) = v123;
    v61 = v60;
    *(v59 + 24) = v122;
    v86 = v50;
    v53(v59 + v50, v51, a2);
    v62 = v100;
    v63 = v104;
    v64 = v119;
    sub_1C5BCA344();

    (*(v103 + 8))(v64, v63);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48, &unk_1C5BD3F00);
    v66 = v106;
    MEMORY[0x1C694EA50](v65);
    v128(v51, v55, a2);
    v67 = swift_allocObject();
    v68 = v121;
    v69 = v122;
    *(v67 + 16) = v61;
    *(v67 + 24) = v69;
    v68(v67 + v50, v51, a2);
    v70 = v108;
    v71 = v111;
    v72 = v115;
    sub_1C5BCA344();

    (*(v114 + 8))(v66, v72);
    (*(v110 + 8))(v62, v71);
    v73 = v116;
    sub_1C594C72C(v116);
    v128(v51, v55, a2);
    v74 = swift_allocObject();
    v75 = v122;
    *(v74 + 16) = v123;
    *(v74 + 24) = v75;
    v121(v74 + v86, v51, a2);
    v76 = v99;
    v77 = v113;
    v78 = v120;
    v79 = v105;
    v80 = v102;
    sub_1C5BCA344();

    (*(v117 + 8))(v73, v78);
    (*(v112 + 8))(v70, v77);
    *&v130 = v77;
    *(&v130 + 1) = v78;
    *&v131 = v79;
    *(&v131 + 1) = v80;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = v101;
    v83 = v109;
    sub_1C593EDC0(v76, v109, v81);
    v84 = *(v107 + 8);
    v84(v76, v83);
    sub_1C593EDC0(v82, v83, v81);
    return (v84)(v82, v83);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

void sub_1C59BB400(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC81D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  v13 = sub_1C5BC7AC4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = _s24StateObservationModifierVMa(0, a2, a3, v16);
  if (sub_1C59BA238(v17))
  {
    sub_1C5BC7AB4();
  }

  else
  {
    v27 = sub_1C59BA40C(v17);
    if ((v19 & 1) == 0)
    {
      if (!*a1)
      {
        goto LABEL_14;
      }

      v20 = *(*a1 + 24);
      swift_beginAccess();
      if (*(v20 + 72) != 2)
      {
        v21 = *(v20 + 32);
        sub_1C594C72C(v12);
        (*(v7 + 104))(v9, *MEMORY[0x1E697BE38], v6);
        v26 = sub_1C5BC81C4();
        v22 = *(v7 + 8);
        v22(v9, v6);
        v22(v12, v6);
        if (v26)
        {
          v23 = *&v27;
          sub_1C59498C4(a1[2], a1[3], a2, *(a3 + 8));
          v24 = *(a3 + 264);
          swift_unknownObjectRetain();
          v24(a2, a3, v21 * v23);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }
    }

    sub_1C5BC7A64();
  }

  sub_1C59BA2FC(v15, v18);
LABEL_10:
  if (sub_1C59BA238(v17))
  {
    return;
  }

  if (!*a1)
  {
LABEL_14:
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
    sub_1C5BC8C74();
    __break(1u);
    return;
  }

  v28 = 0;
  v29 = 1;

  sub_1C5BC7F34();
}

void sub_1C59BB720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s24StateObservationModifierVMa(0, a2, a3, a4);
  if (sub_1C59BA238(v5))
  {
    if (*a1)
    {

      sub_1C59BA40C(v5);
      sub_1C5BC7F34();
    }

    else
    {
      _s11TimeControlCMa();
      sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
      sub_1C5BC8C74();
      __break(1u);
    }
  }
}

void sub_1C59BB7FC(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_1C5BC7AC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s24StateObservationModifierVMa(0, a2, a3, v11);
  if ((sub_1C59BA238(v12) & 1) == 0)
  {
    if (*a1)
    {
      v13 = *(*a1 + 24);
      swift_beginAccess();
      if (*(v13 + 72) != 2)
      {
        v14 = *(v13 + 56);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48, &unk_1C5BD3F00);
        MEMORY[0x1C694EA50](v15);
        sub_1C5BC7A54();
        v17 = v16;
        (*(v8 + 8))(v10, v7);
        if (v17 < v14)
        {
          sub_1C59BA478(0, 1, v12);
        }
      }
    }

    else
    {
      _s11TimeControlCMa();
      sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
      sub_1C5BC8C74();
      __break(1u);
    }
  }
}

uint64_t sub_1C59BB9CC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C5BC7AC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v14 = _s24StateObservationModifierVMa(0, a3, a4, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48, &unk_1C5BD3F00);
  MEMORY[0x1C694EA50](v15);
  sub_1C5BC7A64();
  LOBYTE(a4) = sub_1C5BC7A94();
  v16 = *(v7 + 8);
  v16(v9, v6);
  result = (v16)(v12, v6);
  if (a4)
  {
    return sub_1C59BA478(0, 1, v14);
  }

  return result;
}

uint64_t sub_1C59BBB3C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s24StateObservationModifierVMa(0, a2, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51[-v10];
  v12 = sub_1C5BC8F34();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51[-v16];
  v18 = sub_1C5BC81D4();
  v58 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v51[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51[-v21];
  sub_1C59BDB30(&a1[*(v5 + 40)], v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v58;
    (*(v58 + 4))(v22, v17, v18);
  }

  else
  {
    sub_1C5BCB4E4();
    v24 = sub_1C5BC9844();
    v54 = a1;
    v25 = v11;
    v26 = v22;
    v27 = v5;
    v28 = v8;
    v29 = v6;
    v30 = v18;
    v31 = v24;
    sub_1C5BC7C54();

    v18 = v30;
    v6 = v29;
    v8 = v28;
    v5 = v27;
    v22 = v26;
    v11 = v25;
    a1 = v54;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v56 + 8))(v14, v57);
    v23 = v58;
  }

  result = (*(v23 + 11))(v22, v18);
  if (result == *MEMORY[0x1E697BE30] || result == *MEMORY[0x1E697BE40])
  {
    return sub_1C59BA298(0, v5);
  }

  if (result != *MEMORY[0x1E697BE38])
  {
    v57 = v18;
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v33 = sub_1C5BC7D64();
    __swift_project_value_buffer(v33, qword_1EDA5DA78);
    v34 = *(v6 + 16);
    v34(v11, a1, v5);
    v34(v8, a1, v5);
    v35 = v6;
    v36 = v11;
    v37 = sub_1C5BC7D44();
    v38 = sub_1C5BCB4E4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v59 = v56;
      *v39 = 136315394;
      v53 = v37;
      v40 = v55;
      sub_1C594C72C(v55);
      v54 = *(v58 + 1);
      v52 = v38;
      v41 = v57;
      (v54)(v40, v57);
      v58 = v22;
      v42 = *(v35 + 8);
      v42(v36, v5);
      *(v39 + 4) = sub_1C592ADA8(0x616850656E656353, 0xEA00000000006573, &v59);
      *(v39 + 12) = 2080;
      sub_1C594C72C(v40);
      v43 = sub_1C5BCAEA4();
      v45 = v44;
      v42(v8, v5);
      v46 = v58;
      v47 = sub_1C592ADA8(v43, v45, &v59);

      *(v39 + 14) = v47;
      v48 = v53;
      _os_log_impl(&dword_1C5922000, v53, v52, "Unhandled case for %s: %s", v39, 0x16u);
      v49 = v56;
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v49, -1, -1);
      MEMORY[0x1C69510F0](v39, -1, -1);

      return (v54)(v46, v41);
    }

    else
    {

      v50 = *(v35 + 8);
      v50(v8, v5);
      v50(v11, v5);
      return (*(v58 + 1))(v22, v57);
    }
  }

  return result;
}

uint64_t sub_1C59BC180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  OpaqueTypeConformance2 = a1;
  v71 = a3;
  v6 = sub_1C5BCAE14();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = sub_1C5BC96A4();
  v11 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v69 = a2;
  v14 = sub_1C5BC9394();
  WitnessTable = swift_getWitnessTable();
  v76[3] = v14;
  v76[4] = WitnessTable;
  v16 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v55 - v18;
  sub_1C5BC97C4();
  v62 = OpaqueTypeMetadata2;
  v64 = sub_1C5BC8AB4();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v55 - v25;
  v27 = *v3;
  if (!v27)
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
    result = sub_1C5BC8C74();
    __break(1u);
    return result;
  }

  v70 = v4;
  v28 = *(v27 + 24);
  swift_beginAccess();
  v29 = *(v28 + 72) == 2;
  v65 = v23;
  v73 = v27;
  if (v29)
  {

LABEL_9:
    if (qword_1EDA4B078 != -1)
    {
      swift_once();
    }

    v36 = qword_1EDA5DB18;
    v35 = unk_1EDA5DB20;
    swift_bridgeObjectRetain_n();

    v72 = v36;
    v56 = v36;
    v57 = v35;
    goto LABEL_12;
  }

  v30 = AXDurationStringForDuration();
  if (!v30)
  {
    goto LABEL_9;
  }

  v31 = v30;
  v72 = sub_1C5BCAE74();

  v32 = AXDurationStringForDuration();
  if (!v32)
  {

    goto LABEL_9;
  }

  v33 = v32;
  v56 = sub_1C5BCAE74();
  v57 = v34;

LABEL_12:
  v66 = v26;
  v37 = swift_checkMetadataState();
  sub_1C5BC9674();
  sub_1C5BCA0C4();
  (*(v11 + 8))(v13, v58);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v39 = v38;
  *&v77 = sub_1C5BCAE94();
  *(&v77 + 1) = v40;
  v76[0] = v37;
  v76[1] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v41 = v59;
  v42 = v62;
  sub_1C5BCA034();

  (*(v61 + 8))(v19, v42);
  sub_1C5BCAE04();
  sub_1C5BCADF4();
  sub_1C5BCADE4();
  sub_1C5BCADF4();
  sub_1C5BCADE4();

  sub_1C5BCADF4();
  sub_1C5BCAE24();
  sub_1C5BC7B14();
  *&v77 = sub_1C5BCAE94();
  *(&v77 + 1) = v43;
  v44 = v65;
  v45 = v64;
  sub_1C5BC8A34();

  v46 = *(v68 + 8);
  v46(v41, v45);
  v47 = v70;
  v77 = *(v70 + 1);
  v48 = swift_allocObject();
  v49 = *(v69 + 24);
  *(v48 + 16) = *(v69 + 16);
  *(v48 + 24) = v49;
  v50 = *(v47 + 1);
  *(v48 + 32) = *v47;
  *(v48 + 48) = v50;
  *(v48 + 64) = v47[4];

  v51 = sub_1C5BC8C94();
  (*(*(v51 - 8) + 16))(v76, &v77, v51);
  v52 = v66;
  sub_1C5BC8A94();

  v46(v44, v45);
  v53 = sub_1C59BD80C(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v74 = OpaqueTypeConformance2;
  v75 = v53;
  swift_getWitnessTable();
  sub_1C595BB1C(0xD000000000000019, 0x80000001C5BF61C0, v45);
  return (v46)(v52, v45);
}

void sub_1C59BCAB4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5BC97E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v12 = *(*a2 + 24);
    swift_beginAccess();
    if (*(v12 + 72) != 2)
    {
      v13 = *(v12 + 32);
      (*(v9 + 16))(v11, a1, v8);
      v14 = (*(v9 + 88))(v11, v8);
      if (v14 == *MEMORY[0x1E697CC28])
      {
        sub_1C59498C4(*(a2 + 2), *(a2 + 3), a3, *(a4 + 8));
        v15 = a2[4];
        v16 = 0.05;
LABEL_7:
        v17 = v13 * (v15 + v16);
        v18 = *(a4 + 264);
        swift_unknownObjectRetain();
        v18(a3, a4, v17);
        swift_unknownObjectRelease();
        return;
      }

      if (v14 == *MEMORY[0x1E697CC20])
      {
        sub_1C59498C4(*(a2 + 2), *(a2 + 3), a3, *(a4 + 8));
        v15 = a2[4];
        v16 = -0.05;
        goto LABEL_7;
      }

      if (qword_1EDA469E0 != -1)
      {
        swift_once();
      }

      v19 = sub_1C5BC7D64();
      __swift_project_value_buffer(v19, qword_1EDA5DA78);
      v48[0] = *(a2 + 1);

      v20 = sub_1C5BC8C94();
      v39 = a3;
      v21 = v20;
      v22 = *(v20 - 8);
      v40 = *(v22 + 16);
      v41 = v22 + 16;
      v40(v45, v48, v20);
      v23 = sub_1C5BC7D44();
      v24 = sub_1C5BCB4E4();

      v25 = *(v22 + 8);
      v42 = v21;
      v25(v48, v21);
      v43 = v24;
      if (os_log_type_enabled(v23, v24))
      {
        v26 = swift_slowAlloc();
        v38 = v23;
        v27 = v26;
        v28 = swift_slowAlloc();
        v47 = v28;
        *v27 = 136315394;
        _s21AccessibilityModifierVMa(0, v39, a4, v29);
        v30 = sub_1C5BCBFF4();
        v32 = sub_1C592ADA8(v30, v31, &v47);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v33 = *(a2 + 1);
        v45[0] = *a2;
        v45[1] = v33;
        v46 = *(a2 + 4);

        v40(v44, v48, v42);
        v34 = sub_1C5BCAEA4();
        v36 = sub_1C592ADA8(v34, v35, &v47);

        *(v27 + 14) = v36;
        v37 = v38;
        _os_log_impl(&dword_1C5922000, v38, v43, "Unhandled case for %s: %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v28, -1, -1);
        MEMORY[0x1C69510F0](v27, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
    sub_1C5BC8C74();
    __break(1u);
  }
}

uint64_t sub_1C59BCFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v9 = *(_s19HeadlessTimeControlVMa(0, v13) - 8);
  v10 = v2[6];
  v11 = (v2 + ((*(v9 + 80) + 56) & ~*(v9 + 80)));

  return sub_1C59B7E58(a1, v10, v11, v5, v6, v7, v8, a2);
}

void *sub_1C59BD074@<X0>(double *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v13[0] = v3;
  v13[1] = v4;
  v10 = (v8 + 72) & ~v8;
  v13[2] = v5;
  v13[3] = v6;
  v11 = *(_s19HeadlessTimeControlVMa(0, v13) - 8);
  return sub_1C59B8998(v1[8], v1 + ((v10 + v9 + *(v11 + 80)) & ~*(v11 + 80)), v3, v4, v5, a1, v6);
}

uint64_t sub_1C59BD18C(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v11 = *(v1 + 32);
  v12 = v3;
  v4 = *(_s19HeadlessTimeControlVMa(0, &v11) - 8);
  v5 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));
  v6 = *a1;
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  *&v11 = v7;
  BYTE8(v11) = v8;
  *&v12 = v9;
  v13 = v6;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191D50, &qword_1C5BD3F10);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C59BD244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48, &unk_1C5BD3F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59BD2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59BD2F0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1C59BD34C(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C59BD3A8(uint64_t a1)
{
  sub_1C59BA0C8(319);
  if (v1 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v2 <= 0x3F)
    {
      sub_1C59BD554(319, &qword_1EDA46768, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C59BA15C(319, &qword_1EDA45FA8, MEMORY[0x1E6981948]);
        if (v4 <= 0x3F)
        {
          sub_1C59BD554(319, &qword_1EC191E58, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
          if (v5 <= 0x3F)
          {
            sub_1C59BD5B8(319, &qword_1EC191E60, MEMORY[0x1E6981948]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C59BD554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C59BD5B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B78, &qword_1C5BD3CF0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C59BD6B8()
{
  result = qword_1EC196020;
  if (!qword_1EC196020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B78, &qword_1C5BD3CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196020);
  }

  return result;
}

unint64_t sub_1C59BD734()
{
  result = qword_1EDA4A748;
  if (!qword_1EDA4A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68, &qword_1C5BD4050);
    sub_1C59BD7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A748);
  }

  return result;
}

unint64_t sub_1C59BD7B8()
{
  result = qword_1EDA4A750;
  if (!qword_1EDA4A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A750);
  }

  return result;
}

uint64_t sub_1C59BD80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s24StateObservationModifierVMa(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  swift_unknownObjectRelease();
  v7 = *(v5 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C5BC81D4();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v6 + *(v5 + 48);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48, &unk_1C5BD3F00) + 32);
  v11 = sub_1C5BC7AC4();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1C59BDA98(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(_s24StateObservationModifierVMa(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_1C59BDB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MotionView.init(url:previewFrame:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9)
{
  v24 = a5;
  v25 = a6;
  v22 = a3;
  v23 = a4;
  v15 = type metadata accessor for MotionAsset(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C5BC7A24();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  swift_storeEnumTagMultiPayload();
  *(&v21 + 1) = a8;
  *&v21 = a7;
  sub_1C59BDD68(v17, a2, v23, 1, 0, v25, x8_0, v21, a9);
  return (*(v19 + 8))(a1, v18);
}

uint64_t sub_1C59BDD68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, char a4@<W5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, uint64_t a9)
{
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v14 = type metadata accessor for MotionView(0, &v20);
  v15 = v14[17];
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  *(a7 + v15) = off_1EDA4B358;
  sub_1C59C122C(a1, a7 + v14[14]);

  v17 = a2(v16);
  a3(v17);
  result = sub_1C59C1338(a1);
  *(a7 + v14[15]) = a4 & 1;
  *(a7 + v14[16]) = a5;
  return result;
}

uint64_t MotionView.init(url:previewFrame:fallback:stateObserver:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v21 = a7;
  v22 = a3;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v13 = type metadata accessor for MotionAsset(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C5BC7A24();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  swift_storeEnumTagMultiPayload();
  *(&v19 + 1) = a9;
  *&v19 = v21;
  sub_1C59BDD68(v15, a2, v22, 1, v24, v25, a8, v19, a10);
  return (*(v17 + 8))(a1, v16);
}

uint64_t MotionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E78, &qword_1C5BD4060);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E80, &qword_1C5BD4068);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40, &qword_1C5BD4070);
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v4 = sub_1C5BCA7F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v24 = v21;
  v25 = v20;
  v26 = *(a1 + 32);
  v27 = v22;
  sub_1C5BCAA54();
  sub_1C5BCA7E4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA1D4();
  (*(v5 + 8))(v7, v4);
  v16 = sub_1C5943498();
  v28 = WitnessTable;
  v29 = v16;
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, v17);
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_1C593EDC0(v14, v8, v17);
  return (v18)(v14, v8);
}

double sub_1C59BE350@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v105 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v96 = &v83 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E78, &qword_1C5BD4060);
  v13 = sub_1C5BC8AB4();
  v89 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v83 - v14;
  v109 = v15;
  v16 = sub_1C5BC8AB4();
  v91 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v83 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E80, &qword_1C5BD4068);
  v108 = v16;
  v18 = sub_1C5BC8AB4();
  v93 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v83 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40, &qword_1C5BD4070);
  v104 = v18;
  v20 = sub_1C5BC8AB4();
  v97 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v83 - v23;
  v87 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v86 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  v29 = sub_1C5BC92D4();
  v102 = *(v29 - 8);
  v103 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v101 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v107 = &v83 - v32;
  v100 = sub_1C5BCA484();
  v33 = a2;
  v133 = a2;
  v134 = a3;
  v34 = a3;
  v110 = a4;
  v135 = a4;
  v136 = a5;
  v98 = type metadata accessor for MotionView(0, &v133);
  v35 = a1;
  v36 = *(a1 + v98[17]);
  swift_getKeyPath(byte_1C5BD4300);
  v133 = v36;
  sub_1C59C14DC(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
  sub_1C5BC7B74();

  v38 = *(v36 + 33);
  v99 = v20;
  v106 = a5;
  if (v38)
  {
    v87 = &v83;
    MEMORY[0x1EEE9AC00](v37);
    *(&v83 - 6) = v33;
    *(&v83 - 5) = a3;
    v85 = a3;
    v39 = v110;
    *(&v83 - 4) = v110;
    *(&v83 - 3) = a5;
    *(&v83 - 2) = v35;
    sub_1C5BCAA54();
    type metadata accessor for MotionPlayerView(0);
    sub_1C59C14DC(&qword_1EC191ED0, type metadata accessor for MotionPlayerView, &unk_1C5BD7BD0);
    v40 = v88;
    v41 = v35;
    v84 = v35;
    sub_1C5BCA2C4();
    v42 = sub_1C5924F54(&qword_1EC191EC0, &qword_1EC191E78, &qword_1C5BD4060, MEMORY[0x1E697EC18]);
    v117 = v39;
    v118 = v42;
    v43 = v109;
    v87 = MEMORY[0x1E697E858];
    WitnessTable = swift_getWitnessTable();
    v45 = v90;
    sub_1C5BC9FC4();
    (*(v89 + 8))(v40, v43);
    swift_getKeyPath(byte_1C5BD4328);
    v46 = v98;
    v47 = v96;
    sub_1C59C122C(v41 + v98[14], v96);
    v48 = type metadata accessor for MotionAsset(0);
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    v115 = WitnessTable;
    v116 = MEMORY[0x1E69802C0];
    v49 = v108;
    v50 = swift_getWitnessTable();
    v51 = v92;
    sub_1C5BC9DF4();

    sub_1C59C1290(v47);
    (*(v91 + 8))(v45, v49);
    swift_getKeyPath(byte_1C5BD4350);
    LOBYTE(v133) = *(v84 + v46[15]);
    v52 = MEMORY[0x1E6980A18];
    v53 = sub_1C5924F54(&qword_1EC191EC8, &qword_1EC191E80, &qword_1C5BD4068, MEMORY[0x1E6980A18]);
    v113 = v50;
    v114 = v53;
    v54 = v104;
    v55 = swift_getWitnessTable();
    v56 = v95;
    sub_1C5BC9DF4();

    (*(v93 + 8))(v51, v54);
    v57 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40, &qword_1C5BD4070, v52);
    v111 = v55;
    v112 = v57;
    v58 = swift_getWitnessTable();
    v59 = v94;
    sub_1C593EDC0(v56, v20, v58);
    v60 = *(v97 + 8);
    v60(v56, v20);
    sub_1C593EDC0(v59, v20, v58);
    sub_1C5941738(v56, v85, v20, v106, v58);
    v60(v56, v20);
    v60(v59, v20);
  }

  else
  {
    sub_1C593EDC0(v35 + v98[13], a3, a5);
    v61 = v86;
    sub_1C593EDC0(v28, a3, a5);
    v62 = sub_1C5924F54(&qword_1EC191EC0, &qword_1EC191E78, &qword_1C5BD4060, MEMORY[0x1E697EC18]);
    v132[7] = v110;
    v132[8] = v62;
    v132[5] = swift_getWitnessTable();
    v132[6] = MEMORY[0x1E69802C0];
    v63 = swift_getWitnessTable();
    v64 = MEMORY[0x1E6980A18];
    v65 = sub_1C5924F54(&qword_1EC191EC8, &qword_1EC191E80, &qword_1C5BD4068, MEMORY[0x1E6980A18]);
    v132[3] = v63;
    v132[4] = v65;
    v66 = swift_getWitnessTable();
    v67 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40, &qword_1C5BD4070, v64);
    v132[1] = v66;
    v132[2] = v67;
    v68 = swift_getWitnessTable();
    sub_1C5950E54(v61, v34, v20, a5, v68);
    v69 = v87[1];
    v69(v61, v34);
    v69(v28, v34);
  }

  v70 = v101;
  v132[0] = v100;
  v133 = v132;
  v72 = v102;
  v71 = v103;
  v73 = v107;
  (*(v102 + 16))(v101, v107, v103);
  v134 = v70;

  v131[0] = MEMORY[0x1E69815C0];
  v131[1] = v71;
  v129 = MEMORY[0x1E6981580];
  v74 = sub_1C5924F54(&qword_1EC191EC0, &qword_1EC191E78, &qword_1C5BD4060, MEMORY[0x1E697EC18]);
  v127 = v110;
  v128 = v74;
  v125 = swift_getWitnessTable();
  v126 = MEMORY[0x1E69802C0];
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x1E6980A18];
  v77 = sub_1C5924F54(&qword_1EC191EC8, &qword_1EC191E80, &qword_1C5BD4068, MEMORY[0x1E6980A18]);
  v123 = v75;
  v124 = v77;
  v78 = swift_getWitnessTable();
  v79 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40, &qword_1C5BD4070, v76);
  v121 = v78;
  v122 = v79;
  v80 = swift_getWitnessTable();
  v119 = v106;
  v120 = v80;
  v130 = swift_getWitnessTable();
  sub_1C594226C(&v133, 2uLL, v131);

  v81 = *(v72 + 8);
  v81(v73, v71);
  v81(v70, v71);

  return result;
}

uint64_t sub_1C59BEFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = *(a1 + *(type metadata accessor for MotionView(0, v13) + 64));
  type metadata accessor for MotionViewDisplayState(0);

  sub_1C5BC8194();
  v8 = type metadata accessor for MotionPlayerView(0);
  v9 = v8[5];
  *(a6 + v9) = swift_getKeyPath(byte_1C5BD4328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191ED8, &qword_1C5BD7CA0);
  swift_storeEnumTagMultiPayload();
  v10 = a6 + v8[6];
  *v10 = swift_getKeyPath(aX_6);
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = v8[8];
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  *(a6 + v11) = off_1EDA4B358;
  *(a6 + v8[7]) = v7;
}

void *sub_1C59BF0D4()
{
  sub_1C59C10F0();

  return sub_1C5BC8F44();
}

uint64_t MotionViewStateObserver.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

void sub_1C59BF1C8(char *a1@<X8>)
{
  swift_getKeyPath(byte_1C5BD4078);
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver, &protocol conformance descriptor for MotionViewStateObserver);
  sub_1C5BC7B74();

  v3 = *(v1 + 16);
  swift_getKeyPath(byte_1C5BD40A0);
  sub_1C5BC7B74();

  if (*(v1 + 17))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a1 = v4;
}

uint64_t MotionViewStateObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1C5BC7BA4();
  return v0;
}

uint64_t MotionViewStateObserver.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  sub_1C5BC7BA4();
  return v1;
}

void sub_1C59BF340(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BD4078);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver, &protocol conformance descriptor for MotionViewStateObserver);
    sub_1C5BC7B64();
  }
}

void sub_1C59BF450(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BD40A0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver, &protocol conformance descriptor for MotionViewStateObserver);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C59BF560()
{
  swift_getKeyPath(byte_1C5BD4078);
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver, &protocol conformance descriptor for MotionViewStateObserver);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

void sub_1C59BF600(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BD4078);
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver, &protocol conformance descriptor for MotionViewStateObserver);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for MotionViewStateObserver(uint64_t a1)
{
  result = qword_1EDA485C8;
  if (!qword_1EDA485C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C59BF71C()
{
  swift_getKeyPath(byte_1C5BD40A0);
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver, &protocol conformance descriptor for MotionViewStateObserver);
  sub_1C5BC7B74();

  return *(v0 + 17);
}

void sub_1C59BF7BC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BD40A0);
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver, &protocol conformance descriptor for MotionViewStateObserver);
  sub_1C5BC7B74();

  *a2 = *(v3 + 17);
}

uint64_t MotionViewStateObserver.deinit()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI23MotionViewStateObserver___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MotionViewStateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI23MotionViewStateObserver___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double MCUINamespace<A>.motionShouldResetOnSizeChange(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(aH_6);
  sub_1C5BC9DF4();

  return result;
}

uint64_t sub_1C59BFA24(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C5BC8F44();
  return v3;
}

uint64_t sub_1C59BFA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MotionAsset(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1C59BFAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59C1428();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C59BFB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59C13D4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C59BFBA8()
{
  sub_1C59C109C();
  sub_1C5BC8F44();
  return v1;
}

uint64_t MotionViewV2.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC7A24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MotionViewV2.init(url:keyframe:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v14 = sub_1C5BC7A24();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a7, a1, v14);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a8;
  type metadata accessor for MotionViewV2(0, v19);
  v16 = a2();
  a3(v16);
  return (*(v15 + 8))(a1, v14);
}

uint64_t MotionViewV2.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v24 = sub_1C5BC7A24();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v5;
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v39[0] = a1[2];
  v6 = v39[0];
  v39[1] = v7;
  v39[2] = v9;
  v39[3] = v8;
  v10 = type metadata accessor for MotionView(0, v39);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  v18 = v5;
  v19 = v25;
  (*(v3 + 16))(v18, v25, v24, v15);
  v34 = v6;
  v35 = v7;
  v36 = v9;
  v37 = v8;
  v38 = v19;
  v28 = v6;
  v29 = v7;
  v30 = v9;
  v31 = v8;
  v32 = v19;
  MotionView.init(url:previewFrame:fallback:)(v23, sub_1C59C0080, v33, sub_1C59C0108, v27, v6, v7, v9, v13, v8);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, WitnessTable);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1C593EDC0(v17, v10, WitnessTable);
  return (v21)(v17, v10);
}

uint64_t sub_1C59C0080@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v7 = *&v8[0];
  v8[1] = v4;
  v5 = type metadata accessor for MotionViewV2(0, v8);
  return (*(*(v7 - 8) + 16))(a1, v3 + *(v5 + 52));
}

uint64_t sub_1C59C0108@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v7 = v9;
  v10 = v3;
  v5 = type metadata accessor for MotionViewV2(0, &v8);
  return (*(*(v7 - 8) + 16))(a1, v4 + *(v5 + 56));
}

unint64_t sub_1C59C01B8()
{
  result = qword_1EC191E90;
  if (!qword_1EC191E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191E90);
  }

  return result;
}

void sub_1C59C0228(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MotionAsset(319);
      if (v3 <= 0x3F)
      {
        sub_1C59C08D4(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MotionEnabledState(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C59C0304(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v33 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v33 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C5BC7A24() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v13;
  v17 = *(v11 + 80) & 0xF8 | 7;
  v18 = v12 + 1;
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v19 = ((((((v14 + v17 + (v16 & ~v13)) & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v15 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_33;
    }

    v24 = *(a1 + v19);
    if (!v24)
    {
      goto LABEL_33;
    }

LABEL_30:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v15 + (v27 | v26) + 1;
  }

  if (v23 == 2)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v7 == v15)
  {
    v28 = *(v6 + 48);
    v29 = a1;
    v30 = v7;
    v31 = v5;
LABEL_37:

    return v28(v29, v30, v31);
  }

  v29 = ((a1 + v16) & ~v13);
  if (v9 == v15)
  {
    v28 = *(v8 + 48);
    v30 = v9;
    v31 = v33;
    goto LABEL_37;
  }

  v32 = *((((((v29 + v14 + v17) & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  return (v32 + 1);
}

void sub_1C59C05D0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 16);
  v7 = *(v36 - 8);
  v34 = *(a4 + 24);
  v35 = v7;
  v8 = *(v7 + 84);
  v9 = *(v34 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_1C5BC7A24() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v9 + 80);
  v16 = *(v7 + 64) + v15;
  v17 = *(v9 + 64);
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = v13 + 1;
  v20 = ((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v23 = 0;
    v24 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v25 = v24;
    }

    else
    {
      v25 = 1;
    }

    if (((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v26 = ~v14 + a2;
      bzero(a1, ((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v26;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v23)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v14 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a2 - v14;
  if (a2 > v14)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v20) = 0;
  }

  else if (v23)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v8 == v14)
  {
    v27 = v36;
    v28 = *(v35 + 56);
    v29 = a1;
    v30 = a2;
    v31 = v8;
LABEL_45:

    v28(v29, v30, v31, v27);
    return;
  }

  v29 = ((a1 + v16) & ~v15);
  if (v10 == v14)
  {
    v28 = *(v9 + 56);
    v30 = a2;
    v31 = v10;
    v27 = v34;
    goto LABEL_45;
  }

  v32 = ((((((v29 + v17 + v18) & ~v18) + v19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((a2 & 0x80000000) != 0)
  {
    v33 = a2 & 0x7FFFFFFF;
  }

  else
  {
    v33 = (a2 - 1);
  }

  *v32 = v33;
}

void sub_1C59C08D4(uint64_t a1)
{
  if (!qword_1EDA48478[0])
  {
    type metadata accessor for MotionViewStateObserver(255);
    v1 = sub_1C5BCB804();
    if (!v2)
    {
      atomic_store(v1, qword_1EDA48478);
    }
  }
}

uint64_t sub_1C59C0934(uint64_t a1)
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

uint64_t sub_1C59C0A30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1C5BC7A24() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 64);
  v16 = *(v10 + 80);
  v17 = *(*(*(a3 + 16) - 8) + 64);
  v18 = *(v13 + 80);
  if (v14 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + v16;
  if (a2 <= v19)
  {
    goto LABEL_31;
  }

  v21 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v19 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 < 2)
    {
LABEL_30:
      if (v19)
      {
LABEL_31:
        if (v8 == v19)
        {
          v28 = *(v7 + 48);

          return v28(a1);
        }

        else
        {
          v30 = (a1 + v20) & ~v16;
          if (v11 == v19)
          {
            v31 = *(v10 + 48);

            return v31(v30, v11);
          }

          else
          {
            v32 = *(v13 + 48);
            v33 = (v30 + v17 + v18) & ~v18;

            return v32(v33, v14, v9);
          }
        }
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_30;
  }

LABEL_17:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v19 + (v27 | v25) + 1;
}

void sub_1C59C0D1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1C5BC7A24() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = v18 + v19;
  v24 = ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v22 < a2)
  {
    v26 = ~v22 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_53:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v24] = 0;
  }

  else if (v25)
  {
    a1[v24] = 0;
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
  if (v10 == v22)
  {
    v31 = *(v9 + 56);

    v31(a1, a2);
  }

  else
  {
    v32 = &a1[v23] & ~v19;
    if (v14 == v22)
    {
      v33 = *(v13 + 56);

      v33(v32, a2, v14);
    }

    else
    {
      v34 = *(v16 + 56);
      v35 = (v32 + v20 + v21) & ~v21;

      v34(v35, a2, v17, v11);
    }
  }
}

unint64_t sub_1C59C109C()
{
  result = qword_1EC191E98;
  if (!qword_1EC191E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191E98);
  }

  return result;
}

unint64_t sub_1C59C10F0()
{
  result = qword_1EC191EA0;
  if (!qword_1EC191EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EA0);
  }

  return result;
}

unint64_t sub_1C59C1144()
{
  result = qword_1EC191EA8;
  if (!qword_1EC191EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EA8);
  }

  return result;
}

unint64_t sub_1C59C11A8()
{
  result = qword_1EC191EB0;
  if (!qword_1EC191EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EB0);
  }

  return result;
}

uint64_t sub_1C59C122C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59C1290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59C12F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MotionViewDisplayState(0);
  swift_allocObject();
  result = sub_1C5A0375C();
  *a1 = result;
  return result;
}

uint64_t sub_1C59C1338(uint64_t a1)
{
  v2 = type metadata accessor for MotionAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59C13D4()
{
  result = qword_1EC191EE0;
  if (!qword_1EC191EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EE0);
  }

  return result;
}

unint64_t sub_1C59C1428()
{
  result = qword_1EC191EE8;
  if (!qword_1EC191EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191EB8, &qword_1C5BD71A0);
    sub_1C59C14DC(&qword_1EC191EF0, type metadata accessor for MotionAsset, &unk_1C5BDF448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EE8);
  }

  return result;
}

uint64_t sub_1C59C14DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NowPlayingCustomButton.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C5951550(v2, v3);
}

uint64_t NowPlayingCustomButton.__allocating_init(_:isEnabled:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  NowPlayingCustomButton.init(_:isEnabled:content:)(a1);
  return v5;
}

uint64_t NowPlayingCustomButton.init(_:isEnabled:content:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  LOBYTE(v4) = *(v6 + 16);
  *(v1 + 16) = *v6;
  *(v1 + 32) = v4;
  *(v1 + 33) = v7;
  v8();
  (*(v3 + 32))(v1 + *(*v1 + 112), v5, v2);
  return v1;
}

uint64_t NowPlayingCustomButton.__allocating_init(_:isEnabled:content:)(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = 0;
  v2 = swift_allocObject();
  NowPlayingCustomButton.init(_:isEnabled:content:)(v4);
  return v2;
}

uint64_t *NowPlayingCustomButton.deinit()
{
  v1 = *v0;
  sub_1C5950CE4(v0[2], v0[3]);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t NowPlayingCustomButton.__deallocating_deinit()
{
  NowPlayingCustomButton.deinit();

  return swift_deallocClassInstance();
}

double static NowPlayingButton<>.none.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191EF8, &qword_1C5BD4530);
  v0 = swift_allocObject();
  *&result = 0x726563617073;
  *(v0 + 16) = xmmword_1C5BD4520;
  *(v0 + 32) = 256;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_1C59C19B4(uint64_t a1)
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

uint64_t sub_1C59C1B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCA864();
  MEMORY[0x1C694EA50](v5);
  sub_1C5BCACE4();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_1C59C1C14(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for MinimumLayoutMargins(0);

  return sub_1C5BC8194();
}

uint64_t sub_1C59C1C98()
{
  type metadata accessor for MinimumLayoutMargins(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_1C5BC7BA4();
  return v0;
}

uint64_t sub_1C59C1CE8(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 52);
  result = *v7;
  v9 = *(v7 + 16);
  if (*(v7 + 17) != 1)
  {
    v10 = *v7;
    v11 = *(v7 + 8);

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v13 = sub_1C59CC0D8(v10, v11, v9, 0);
    (*(v4 + 8))(v6, v3, v13);
    return v14[1];
  }

  return result;
}

uint64_t ScopePicker.init(selection:scopes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = sub_1C5BCB804();
  v35 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v18 = type metadata accessor for ScopePicker(0, a3, a4, v17);
  *(a5 + v18[11]) = 0x4034000000000000;
  sub_1C59C1C14(sub_1C59C1C98, 0);
  v19 = a5 + v18[13];
  *v19 = swift_getKeyPath(asc_1C5BD4620);
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v20 = sub_1C5BCA864();
  v36 = *(v20 - 8);
  v37 = v20;
  v21 = *(v36 + 16);
  v40 = a1;
  v21(a5, a1);
  v39 = v18;
  v22 = v18[9];
  v41 = a5;
  v23 = v34;
  *(a5 + v22) = v34;

  v24 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v25 = sub_1C5BCB0B4();
  v42 = *(a4 + 8);
  v26 = sub_1C59CBCE4(v25, a3, v24, v42);

  v48 = v26;
  v47[0] = v23;
  v27 = sub_1C5BCB144();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C694F230](&v44, v27, WitnessTable);

  v46 = v44;
  sub_1C5BCBC24();
  sub_1C5BCBBF4();
  sub_1C5BCBC14();
  v29 = (v35 + 32);
  v30 = (v38 + 32);
  while (1)
  {
    sub_1C5BCBC04();
    (*v29)(v16, v13, v43);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v31 = *v16;
    (*v30)(v10, &v16[*(TupleTypeMetadata2 + 48)], a3);
    v44 = v31;
    v45 = 0;
    sub_1C5BCACD4();
    sub_1C5BCACF4();
  }

  (*(v36 + 8))(v40, v37);

  *(v41 + v39[10]) = v48;
  return result;
}

void sub_1C59C22A8(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_1C5BCB804();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v18 = sub_1C59C1B0C(a3);
  if (v19)
  {
    v23[1] = a1;
    v26 = *(v3 + *(a3 + 36));
    sub_1C5BCB144();
    swift_getWitnessTable();
    sub_1C5BCB444();
    if ((*(v11 + 48))(v10, 1, v7) != 1)
    {
      (*(v11 + 32))(v17, v10, v7);
      sub_1C59CD10C(v17, a3);
      (*(v11 + 8))(v17, v7);
      return;
    }

    v18 = (*(v24 + 8))(v10, v25);
  }

  if (a2)
  {
    MEMORY[0x1EEE9AC00](v18);
    v20 = *(a3 + 24);
    v23[-4] = v7;
    v23[-3] = v20;
    v23[-2] = v21;
    v23[-1] = v3;
    sub_1C5BCAB14();
    sub_1C5BC87F4();
  }

  else
  {
    v22 = sub_1C5BCA864();
    MEMORY[0x1C694EA50](v22);
    sub_1C5BC8AE4();
    (*(v11 + 8))(v14, v7);
  }
}

uint64_t sub_1C59C25AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopePicker(0, v8, v9, v9);
  v10 = sub_1C5BCA864();
  MEMORY[0x1C694EA50](v10);
  sub_1C5BC8AE4();
  return (*(v5 + 8))(v7, a3);
}

uint64_t ScopePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = *(a1 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v67 = v3;
  v68 = v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v73 = v4;
  type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(255, v4, v5, v6);
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v107 = MEMORY[0x1E697E5D8];
  v7 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v8 = sub_1C5BC81E4();
  v9 = swift_getWitnessTable();
  *&v110 = v8;
  *(&v110 + 1) = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v110 = v8;
  *(&v110 + 1) = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v110 = OpaqueTypeMetadata2;
  *(&v110 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v60 = v5;
  type metadata accessor for ScopePicker.FadingView(255, v4, v5, v12);
  swift_getWitnessTable();
  sub_1C5BC8874();
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  sub_1C5BC8AB4();
  v104 = swift_getWitnessTable();
  v105 = MEMORY[0x1E69805B0];
  v102 = swift_getWitnessTable();
  v103 = MEMORY[0x1E697EBB8];
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  v13 = sub_1C5BC8AB4();
  *&v110 = OpaqueTypeMetadata2;
  *(&v110 + 1) = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v100 = v14;
  v101 = v15;
  v66 = v7;
  v98 = swift_getWitnessTable();
  v99 = MEMORY[0x1E69802C0];
  v16 = swift_getWitnessTable();
  v17 = *(*(v5 + 8) + 8);
  v18 = v73;
  *&v110 = v13;
  *(&v110 + 1) = v73;
  *&v111 = v16;
  *(&v111 + 1) = v17;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = sub_1C5BCB144();
  *&v110 = v13;
  *(&v110 + 1) = v18;
  *&v111 = v16;
  *(&v111 + 1) = v17;
  v21 = swift_getOpaqueTypeConformance2();
  v97 = v17;
  v22 = swift_getWitnessTable();
  *&v110 = v19;
  *(&v110 + 1) = v20;
  *&v111 = v21;
  *(&v111 + 1) = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80, &qword_1C5BD4648);
  *&v110 = v19;
  *(&v110 + 1) = v20;
  *&v111 = v21;
  *(&v111 + 1) = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1C59CC000();
  *&v110 = v23;
  *(&v110 + 1) = v24;
  *&v111 = v25;
  *(&v111 + 1) = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  *&v110 = v23;
  *(&v110 + 1) = v24;
  *&v111 = v25;
  *(&v111 + 1) = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_1C59CC084();
  *&v110 = v27;
  *(&v110 + 1) = &type metadata for HorizontalMargins;
  *&v111 = v28;
  *(&v111 + 1) = v29;
  v59[1] = swift_getOpaqueTypeMetadata2();
  *&v110 = v27;
  *(&v110 + 1) = &type metadata for HorizontalMargins;
  *&v111 = v28;
  *(&v111 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BA4();
  v30 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F98, &qword_1C5BD4650);
  v62 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v31 = sub_1C5BC8AB4();
  v32 = *(v31 - 8);
  v64 = v31;
  v65 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v61 = v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v63 = v59 - v36;
  v37 = v68;
  v38 = v69;
  v39 = v67;
  (*(v69 + 16))(v68, v71, v67, v35);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v60;
  *(v41 + 16) = v73;
  *(v41 + 24) = v42;
  (*(v38 + 32))(v41 + v40, v37, v39);
  *&v90 = sub_1C5BC8B94();
  *(&v90 + 1) = v43;
  sub_1C5BC98F4();
  v44 = swift_getWitnessTable();
  sub_1C5BCA2F4();

  v108[0] = v110;
  v108[1] = v111;
  v109[0] = *v112;
  *(v109 + 9) = *&v112[9];
  v78 = v110;
  v79 = v111;
  v80[0] = *v112;
  *(v80 + 9) = *&v112[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921E8, &qword_1C5BD48F0);
  sub_1C5BC81A4();
  v45 = v90;
  v46 = sub_1C5BC8AC4();
  v47 = sub_1C5BC9894();
  v86 = v45;
  v87 = v46;
  v88 = v47;
  v89 = 0;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FB0, &qword_1C5BD4668);
  v84 = v44;
  v85 = MEMORY[0x1E697E5D8];
  v48 = swift_getWitnessTable();
  sub_1C59CC110();
  sub_1C5BC9D04();

  (*(*(v30 - 8) + 8))(v108, v30);
  v81 = v94;
  v82 = v95;
  v83 = v96;
  v78 = v90;
  v79 = v91;
  v80[0] = v92;
  v80[1] = v93;
  v49 = sub_1C5924F54(qword_1EC191FD8, &qword_1EC191F98, &qword_1C5BD4650, MEMORY[0x1E697F940]);
  v76 = v48;
  v77 = v49;
  v50 = v62;
  v51 = swift_getWitnessTable();
  v52 = v61;
  sub_1C595BB1C(0x63695065706F6373, 0xEB0000000072656BLL, v50);
  v113 = v81;
  v114 = v82;
  v115 = v83;
  v110 = v78;
  v111 = v79;
  *v112 = v80[0];
  *&v112[16] = v80[1];
  (*(*(v50 - 8) + 8))(&v110, v50);
  v53 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v74 = v51;
  v75 = v53;
  v54 = v64;
  v55 = swift_getWitnessTable();
  v56 = v63;
  sub_1C593EDC0(v52, v54, v55);
  v57 = *(v65 + 8);
  v57(v52, v54);
  sub_1C593EDC0(v56, v54, v55);
  return (v57)(v56, v54);
}

uint64_t sub_1C59C3054@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v192 = a2;
  v190 = a1;
  v174 = a5;
  v173 = sub_1C5BC8AF4();
  v191 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v189 = v7;
  v172 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for ScopePicker(0, a3, a4, v8);
  v193 = *(v180 - 8);
  v187 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v188 = &v130 - v9;
  Description = a3[-1].Description;
  MEMORY[0x1EEE9AC00](v10);
  v179 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1C5BC93D4();
  v185 = *(v186 - 1);
  MEMORY[0x1EEE9AC00](v186);
  v154 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(255, a3, a4, v13);
  v14 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v210 = MEMORY[0x1E697E5D8];
  v15 = swift_getWitnessTable();
  v184 = v14;
  v167 = v15;
  v16 = sub_1C5BC81E4();
  v183 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v181 = (&v130 - v17);
  v18 = swift_getWitnessTable();
  v197 = v16;
  v198 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v169 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v166 = &v130 - v20;
  v170 = v16;
  v197 = v16;
  v198 = v18;
  v163 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v197 = OpaqueTypeMetadata2;
  v198 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeMetadata2();
  v168 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v165 = &v130 - v23;
  type metadata accessor for ScopePicker.FadingView(255, a3, a4, v24);
  swift_getWitnessTable();
  sub_1C5BC8874();
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  v25 = sub_1C5BC8AB4();
  v207 = swift_getWitnessTable();
  v208 = MEMORY[0x1E69805B0];
  v205 = swift_getWitnessTable();
  v206 = MEMORY[0x1E697EBB8];
  v26 = swift_getWitnessTable();
  v146 = v25;
  v139 = v26;
  sub_1C5BC8BE4();
  v175 = v22;
  v27 = sub_1C5BC8AB4();
  v140 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v130 - v28;
  v29 = sub_1C5BC8AB4();
  v159 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v178 = &v130 - v30;
  v182 = OpaqueTypeMetadata2;
  v197 = OpaqueTypeMetadata2;
  v198 = OpaqueTypeConformance2;
  v155 = OpaqueTypeConformance2;
  v31 = v192;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = swift_getWitnessTable();
  v134 = v32;
  v203 = v32;
  v204 = v33;
  v132 = v27;
  v133 = swift_getWitnessTable();
  v201 = v133;
  v202 = MEMORY[0x1E69802C0];
  v34 = swift_getWitnessTable();
  v195 = a4;
  v35 = *(*(a4 + 8) + 8);
  v197 = v29;
  v198 = a3;
  v199 = v34;
  v200 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v153 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v176 = &v130 - v37;
  v38 = sub_1C5BCB144();
  v162 = v29;
  v197 = v29;
  v198 = a3;
  v194 = a3;
  v137 = v34;
  v199 = v34;
  v200 = v35;
  v39 = swift_getOpaqueTypeConformance2();
  v136 = v35;
  v196 = v35;
  v40 = swift_getWitnessTable();
  v197 = v36;
  v198 = v38;
  v199 = v39;
  v200 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v156 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v177 = &v130 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80, &qword_1C5BD4648);
  v158 = v36;
  v197 = v36;
  v198 = v38;
  v141 = v38;
  v142 = v39;
  v199 = v39;
  v200 = v40;
  v138 = v40;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_1C59CC000();
  v197 = v41;
  v198 = v43;
  v199 = v44;
  v200 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v160 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v151 = &v130 - v47;
  v161 = v41;
  v197 = v41;
  v198 = v43;
  v145 = v43;
  v144 = v44;
  v199 = v44;
  v200 = v45;
  v143 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_1C59CC084();
  v164 = v46;
  v197 = v46;
  v198 = &type metadata for HorizontalMargins;
  v150 = v48;
  v199 = v48;
  v200 = v49;
  v149 = v49;
  v157 = swift_getOpaqueTypeMetadata2();
  v152 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v147 = &v130 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v148 = &v130 - v52;
  v53 = sub_1C59C1CE8(v180);
  if (v55)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921E8, &qword_1C5BD48F0);
    sub_1C5BC81A4();
    v56 = v197;
    swift_getKeyPath(byte_1C5BD48F8);
    v197 = v56;
    sub_1C59CEDB8(&qword_1EC1921F0, type metadata accessor for MinimumLayoutMargins, &unk_1C5BF2614);
    sub_1C5BC7B74();

    v57 = *(v56 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921E8, &qword_1C5BD48F0);
    sub_1C5BC81A4();
    v58 = v197;
    swift_getKeyPath(byte_1C5BD48F8);
    v197 = v58;
    sub_1C5BC7B74();

    v59 = *(v58 + 40);
  }

  else
  {
    v57 = v53;
    v59 = v54;
  }

  v60 = sub_1C5BC9854();
  MEMORY[0x1EEE9AC00](v60);
  v61 = v195;
  *(&v130 - 4) = v194;
  *(&v130 - 3) = v61;
  *(&v130 - 2) = v31;
  v62 = v181;
  sub_1C5BC81F4();
  v63 = sub_1C5BC98C4();
  v64 = v154;
  sub_1C5BC93C4();
  v65 = v166;
  v66 = v170;
  MEMORY[0x1C694E150](v63, v57, 0, v64, v170, v163);
  v67 = *(v185 + 8);
  v68 = v57;
  v131 = v57;
  v69 = v186;
  v67(v64, v186);
  (*(v183 + 1))(v62, v66);
  v70 = sub_1C5BC98E4();
  sub_1C5BC93C4();
  v71 = v165;
  v130 = v59;
  v72 = v182;
  MEMORY[0x1C694E150](v70, v59, 0, v64, v182, v155);
  v67(v64, v69);
  v73 = (*(v169 + 8))(v65, v72);
  MEMORY[0x1EEE9AC00](v73);
  v74 = v195;
  *(&v130 - 4) = v194;
  *(&v130 - 3) = v74;
  *(&v130 - 2) = v68;
  *(&v130 - 1) = v59;
  sub_1C5BCAA54();
  v75 = v135;
  v76 = v175;
  sub_1C5BCA2C4();
  (*(v168 + 8))(v71, v76);
  v77 = v132;
  sub_1C5BC9FC4();
  (*(v140 + 8))(v75, v77);
  v78 = v180;
  v79 = sub_1C5BCA864();
  v80 = v192;
  MEMORY[0x1C694EA50](v79);
  v81 = v193;
  v82 = *(v193 + 16);
  v175 = v193 + 16;
  v181 = v82;
  v83 = v188;
  (v82)(v188, v80, v78);
  v84 = v191;
  v85 = *(v191 + 16);
  v182 = v191 + 16;
  v183 = v85;
  v86 = v172;
  v87 = v173;
  v85(v172, v190, v173);
  v88 = *(v81 + 80);
  v89 = (v88 + 32) & ~v88;
  v90 = *(v84 + 80);
  v185 = v89;
  v91 = (v187 + v90 + v89) & ~v90;
  v187 = v88 | v90;
  v170 = v91;
  v92 = swift_allocObject();
  v94 = v194;
  v93 = v195;
  *(v92 + 16) = v194;
  *(v92 + 24) = v93;
  v95 = *(v81 + 32);
  v193 = v81 + 32;
  v186 = v95;
  (v95)(v92 + v89, v83, v78);
  v96 = v87;
  v184 = *(v84 + 32);
  v97 = v86;
  v98 = v86;
  v99 = v96;
  v184(v92 + v91, v97);
  v191 = v84 + 32;
  v100 = v179;
  v101 = v162;
  v102 = v178;
  sub_1C5BCA344();

  Description[1](v100, v94);
  (*(v159 + 8))(v102, v101);
  v103 = v78;
  v197 = *(&v192->Kind + *(v78 + 36));
  v104 = v188;
  v181(v188);
  v183(v98, v190, v99);
  v105 = v170;
  v106 = swift_allocObject();
  v107 = v195;
  *(v106 + 16) = v94;
  *(v106 + 24) = v107;
  (v186)(v106 + v185, v104, v78);
  (v184)(v106 + v105, v98, v99);

  swift_checkMetadataState();
  v108 = v158;
  v109 = v176;
  sub_1C5BCA344();

  (*(v153 + 8))(v109, v108);
  v110 = v192;
  v197 = sub_1C59C1CE8(v78);
  v198 = v111;
  LOBYTE(v199) = v112 & 1;
  v113 = v188;
  (v181)(v188, v110, v78);
  v183(v98, v190, v99);
  v114 = swift_allocObject();
  v115 = v195;
  *(v114 + 16) = v194;
  *(v114 + 24) = v115;
  (v186)(v114 + v185, v113, v103);
  (v184)(v114 + v105, v98, v99);
  v116 = v151;
  v117 = v161;
  v118 = v177;
  sub_1C5BCA344();

  (*(v156 + 8))(v118, v117);
  v197 = v131;
  v198 = v130;
  (v181)(v113, v192, v103);
  v183(v98, v190, v99);
  v119 = swift_allocObject();
  v120 = v195;
  *(v119 + 16) = v194;
  *(v119 + 24) = v120;
  (v186)(v119 + v185, v113, v103);
  (v184)(v119 + v105, v98, v99);
  v121 = v147;
  v122 = v164;
  v123 = v150;
  v124 = v149;
  sub_1C5BCA344();

  (*(v160 + 8))(v116, v122);
  v197 = v122;
  v198 = &type metadata for HorizontalMargins;
  v199 = v123;
  v200 = v124;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = v148;
  v127 = v157;
  sub_1C593EDC0(v121, v157, v125);
  v128 = *(v152 + 8);
  v128(v121, v127);
  sub_1C593EDC0(v126, v127, v125);
  return (v128)(v126, v127);
}

uint64_t sub_1C59C4694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v8 = sub_1C5BCA864();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v28 = a2;
  v29 = a3;
  v12 = type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(0, a2, a3, v11);
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = sub_1C5BC8AB4();
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v30 = &v28 - v19;
  v21 = type metadata accessor for ScopePicker(0, a2, a3, v20);
  v22 = *(a1 + *(v21 + 36));
  sub_1C5BCA864();

  sub_1C5BCA834();
  sub_1C59C49B4(v22, v10, *(a1 + *(v21 + 40)), v28, v29, v14);

  sub_1C5BC98F4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  (*(v31 + 8))(v14, v12);
  v34 = WitnessTable;
  v35 = MEMORY[0x1E697E5D8];
  v24 = swift_getWitnessTable();
  v25 = v30;
  sub_1C593EDC0(v17, v15, v24);
  v26 = *(v32 + 8);
  v26(v17, v15);
  sub_1C593EDC0(v25, v15, v24);
  return (v26)(v25, v15);
}

uint64_t sub_1C59C49B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v9 = type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(0, a4, a5, a4);
  v10 = *(v9 + 36);
  v11 = sub_1C5BCA864();
  result = (*(*(v11 - 8) + 32))(&a6[v10], a2, v11);
  *&a6[*(v9 + 40)] = a3;
  return result;
}

uint64_t sub_1C59C4A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v30 = a3;
  v29 = sub_1C5BCAB54();
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopePicker.FadingView(255, a1, a2, v12);
  swift_getWitnessTable();
  sub_1C5BC8874();
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  v13 = sub_1C5BC8AB4();
  v28 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v27 = &v27 - v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  v35 = sub_1C5BC8864();
  v36 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9FA4();

  v35 = v38;
  v36 = v39;
  v37 = v40;
  v21 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x1E6981DC0], v29);
  v33 = WitnessTable;
  v34 = MEMORY[0x1E69805B0];
  v22 = swift_getWitnessTable();
  sub_1C5BCA394();
  (*(v9 + 8))(v11, v21);

  v31 = v22;
  v32 = MEMORY[0x1E697EBB8];
  v23 = swift_getWitnessTable();
  v24 = v27;
  sub_1C593EDC0(v15, v13, v23);
  v25 = *(v28 + 8);
  v25(v15, v13);
  sub_1C593EDC0(v24, v13, v23);
  return (v25)(v24, v13);
}

uint64_t sub_1C59C4DE0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C5BC86B4();
  *&v13[0] = v8;
  *(v13 + 1) = a2;
  v10 = type metadata accessor for ScopePicker.FadingView(0, a4, a5, v9);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, WitnessTable);
  v13[0] = v13[1];
  return sub_1C593EDC0(v13, v10, WitnessTable);
}

uint64_t sub_1C59C4E98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCA864();
  MEMORY[0x1C694EA50](v5);
  sub_1C5BCACE4();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_1C59C4FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = sub_1C5BC96A4();
  v120 = *(v3 - 8);
  v121 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v119 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v128 = v6;
  v129 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v131 = a1;
  v124 = sub_1C5BCA864();
  MEMORY[0x1EEE9AC00](v124);
  v111 = &v91 - v8;
  v9 = *(a1 + 24);
  v125 = v7;
  v11 = type metadata accessor for ScopePicker.ScopeButtons(0, v7, v9, v10);
  v113 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v91 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192180, &qword_1C5BD4870);
  v13 = sub_1C5BC8AB4();
  v116 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v91 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192188, &qword_1C5BD4878);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v130 = v9;
  type metadata accessor for ScopePicker.ScopeButtonHighlight(255, v7, v9, v15);
  swift_getWitnessTable();
  sub_1C5BC8474();
  sub_1C5BC8AB4();
  v109 = sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v16 = sub_1C5BCB804();
  OpaqueTypeConformance2 = sub_1C59CD0B8();
  v114 = v11;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180, &qword_1C5BD4870, MEMORY[0x1E6980490]);
  v104 = WitnessTable;
  v147 = WitnessTable;
  v148 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EC192198, &qword_1EC192188, &qword_1C5BD4878, MEMORY[0x1E697F940]);
  v145 = v19;
  v146 = v20;
  v143 = swift_getWitnessTable();
  v144 = MEMORY[0x1E69805B0];
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v141 = v21;
  v142 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v139 = v23;
  v140 = v24;
  v117 = v24;
  v138 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v149 = &type metadata for AnchorKey;
  v150 = v16;
  v110 = v16;
  v151 = OpaqueTypeConformance2;
  v152 = v25;
  v96 = v25;
  sub_1C5BC96E4();
  v118 = v13;
  v26 = sub_1C5BC8AB4();
  v98 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v91 - v27;
  v28 = swift_getWitnessTable();
  v106 = v19;
  v136 = v19;
  v137 = v28;
  v29 = swift_getWitnessTable();
  v94 = v26;
  v149 = v26;
  v150 = v29;
  v99 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v101 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v95 = &v91 - v31;
  v102 = v32;
  v100 = sub_1C5BC8AB4();
  v109 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v105 = &v91 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v107 = &v91 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v108 = &v91 - v39;
  v40 = v125;
  v41 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v91 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v127;
  sub_1C59C4E98(v131);
  if (v46)
  {
    v92 = 0xE000000000000000;
    v93 = 0;
  }

  else
  {
    MEMORY[0x1C694EA50](v124);
    v47 = (*(v130 + 16))(v40);
    v92 = v48;
    v93 = v47;
    (*(v41 + 8))(v44, v40);
  }

  v49 = *v45;

  v50 = v111;
  sub_1C5BCA834();
  v51 = v112;
  v52 = v130;
  sub_1C59C5CF4(v49, v50, 0, v40, v130, v112);
  sub_1C59CD1DC(&v149);
  v53 = v153;
  v154 = v153;

  sub_1C59CD57C(&v149);
  v134 = v53;
  v54 = v114;
  v55 = v115;
  sub_1C5BC9F64();
  sub_1C5961F90(&v154);
  (*(v113 + 8))(v51, v54);
  v56 = v122;
  v57 = *(v122 + 16);
  v114 = v122 + 16;
  v124 = v57;
  v58 = v129;
  v59 = v131;
  v57(v129, v45, v131);
  v60 = *(v56 + 80);
  v61 = ((v60 + 32) & ~v60);
  v112 = v61;
  v113 = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = v40;
  *(v62 + 24) = v52;
  v122 = *(v56 + 32);
  (v122)(&v61[v62], v58, v59);
  sub_1C5BCAA54();
  v63 = v97;
  v64 = v118;
  sub_1C5BCA144();

  (*(v116 + 8))(v55, v64);
  v65 = v119;
  sub_1C5BC9684();
  v66 = v94;
  v67 = v95;
  v68 = v99;
  sub_1C5BCA0C4();
  (*(v120 + 8))(v65, v121);
  (*(v98 + 8))(v63, v66);
  sub_1C5BC9024();
  v69 = sub_1C5BC9C94();
  v71 = v70;
  LOBYTE(v65) = v72;
  v134 = v66;
  v135 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = v102;
  v73 = v103;
  sub_1C5BCA024();
  sub_1C5953BD8(v69, v71, v65 & 1);

  (*(v101 + 8))(v67, v74);
  v134 = v93;
  v135 = v92;
  sub_1C594A23C();
  v75 = sub_1C5BC9CA4();
  v77 = v76;
  LOBYTE(v74) = v78;
  v79 = v105;
  v80 = v100;
  sub_1C5BC8A24();
  sub_1C5953BD8(v75, v77, v74 & 1);

  v81 = *(v109 + 8);
  v81(v73, v80);
  v82 = v129;
  v83 = v131;
  v124(v129, v127, v131);
  v84 = v112;
  v85 = swift_allocObject();
  v86 = v130;
  *(v85 + 16) = v125;
  *(v85 + 24) = v86;
  (v122)(&v84[v85], v82, v83);
  v87 = v107;
  sub_1C5BC8A94();

  v81(v79, v80);
  v132 = OpaqueTypeConformance2;
  v133 = v117;
  v88 = swift_getWitnessTable();
  v89 = v108;
  sub_1C593EDC0(v87, v80, v88);
  v81(v87, v80);
  sub_1C593EDC0(v89, v80, v88);
  return (v81)(v89, v80);
}

uint64_t sub_1C59C5CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v9 = type metadata accessor for ScopePicker.ScopeButtons(0, a4, a5, a4);
  v10 = *(v9 + 36);
  v11 = sub_1C5BCA864();
  result = (*(*(v11 - 8) + 32))(&a6[v10], a2, v11);
  a6[*(v9 + 40)] = a3;
  return result;
}

uint64_t sub_1C59C5D94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v143 = a2;
  v150 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0, &qword_1C5BD4880);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v136 = (&v118 - v9);
  v11 = type metadata accessor for ScopePicker.ScopeButtonHighlight(0, a3, a4, v10);
  v138 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v118 - v12;
  v13 = sub_1C5BCA864();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v118 - v14;
  v142 = a4;
  v16 = type metadata accessor for ScopePicker.ScopeButtons(0, a3, a4, v15);
  v124 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v118 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192180, &qword_1C5BD4870);
  v155 = v16;
  v18 = sub_1C5BC8AB4();
  v127 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v118 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192188, &qword_1C5BD4878);
  v154 = v18;
  v20 = sub_1C5BC8AB4();
  v128 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v118 - v21;
  v153 = v22;
  v23 = sub_1C5BC8AB4();
  v133 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v118 - v24;
  WitnessTable = swift_getWitnessTable();
  v139 = v11;
  v129 = WitnessTable;
  v26 = sub_1C5BC8474();
  v149 = v23;
  v152 = v26;
  v27 = sub_1C5BC8AB4();
  v132 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v130 = &v118 - v28;
  sub_1C5BC97C4();
  v145 = v27;
  v29 = sub_1C5BC8AB4();
  v144 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v135 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v134 = &v118 - v32;
  v33 = sub_1C5BCB804();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v118 - v35;
  v37 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v121 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v141 = &v118 - v41;
  v151 = v29;
  v42 = sub_1C5BCB804();
  v147 = *(v42 - 8);
  v148 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v118 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v146 = &v118 - v47;
  v48 = *a1;
  v49 = MEMORY[0x1E69805B0];
  if (v48)
  {
    v120 = v44;
    v50 = *v143;
    v196[0] = *v143;
    sub_1C5BCB144();
    v140 = v48;

    swift_getWitnessTable();
    sub_1C5BCB444();
    if ((*(v37 + 48))(v36, 1, a3) != 1)
    {
      v119 = v37;
      (*(v37 + 32))(v141, v36, a3);

      v61 = v122;
      sub_1C5BCA854();
      v62 = v123;
      sub_1C59C5CF4(v50, v61, 1, a3, v142, v123);
      sub_1C59CD1DC(v194);
      v63 = v195;
      v197 = v195;

      sub_1C59CD57C(v194);
      v196[0] = v63;
      v64 = v155;
      v65 = swift_getWitnessTable();
      v66 = v125;
      sub_1C5BC9F64();
      sub_1C5961F90(&v197);
      (*(v124 + 8))(v62, v64);
      LOBYTE(v63) = sub_1C5BC9884();
      sub_1C5BC8174();
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v74 = v73;
      sub_1C59CD1DC(v196);
      v75 = v196[7];

      sub_1C59CD57C(v196);
      v166[0] = v63;
      v167 = v68;
      v168 = v70;
      v169 = v72;
      v170 = v74;
      v171 = 0;
      v172 = v75;
      sub_1C5BCAA54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A8, &qword_1C5BD4888);
      v76 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180, &qword_1C5BD4870, MEMORY[0x1E6980490]);
      v164 = v65;
      v165 = v76;
      v124 = MEMORY[0x1E697E858];
      v77 = v154;
      v78 = swift_getWitnessTable();
      sub_1C59CD7F4();
      v79 = v126;
      sub_1C5BC9D04();

      (*(v127 + 8))(v66, v77);
      v80 = sub_1C5924F54(&qword_1EC192198, &qword_1EC192188, &qword_1C5BD4878, MEMORY[0x1E697F940]);
      v162 = v78;
      v163 = v80;
      v81 = v153;
      v82 = swift_getWitnessTable();
      v83 = v131;
      sub_1C5BC9FA4();
      (*(v128 + 8))(v79, v81);
      v84 = v142;
      type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(0, a3, v142, v85);
      v86 = sub_1C5BCA864();
      v87 = v140;

      v88 = v121;
      MEMORY[0x1C694EA50](v86);
      v89 = v136;
      sub_1C59C6DF8(v136);
      v90 = v137;
      sub_1C59C6E58(v87, v88, v89, a3, v84, v137);
      v160 = v82;
      v161 = MEMORY[0x1E69805B0];
      v91 = v149;
      v92 = swift_getWitnessTable();
      v93 = v130;
      v94 = v139;
      sub_1C5BCA214();
      (*(v138 + 8))(v90, v94);
      (*(v133 + 8))(v83, v91);
      v95 = swift_getWitnessTable();
      v158 = v92;
      v159 = v95;
      v96 = v145;
      v97 = swift_getWitnessTable();
      v98 = v135;
      sub_1C5BCA094();

      (*(v132 + 8))(v93, v96);
      (*(v119 + 8))(v141, a3);
      v99 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
      v156 = v97;
      v157 = v99;
      v100 = v151;
      v101 = swift_getWitnessTable();
      v102 = v134;
      sub_1C593EDC0(v98, v100, v101);
      v103 = v144;
      v104 = *(v144 + 8);
      v104(v98, v100);
      sub_1C593EDC0(v102, v100, v101);
      v104(v102, v100);
      v60 = v120;
      (*(v103 + 32))(v120, v98, v100);
      (*(v103 + 56))(v60, 0, 1, v100);
      goto LABEL_6;
    }

    (*(v34 + 8))(v36, v33);
    v49 = MEMORY[0x1E69805B0];
    v44 = v120;
  }

  (*(v144 + 56))(v44, 1, 1, v151, v46);
  v51 = swift_getWitnessTable();
  v52 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180, &qword_1C5BD4870, MEMORY[0x1E6980490]);
  v192 = v51;
  v193 = v52;
  v53 = v44;
  v54 = swift_getWitnessTable();
  v55 = sub_1C5924F54(&qword_1EC192198, &qword_1EC192188, &qword_1C5BD4878, MEMORY[0x1E697F940]);
  v190 = v54;
  v191 = v55;
  v188 = swift_getWitnessTable();
  v189 = v49;
  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v186 = v56;
  v187 = v57;
  v58 = swift_getWitnessTable();
  v59 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v184 = v58;
  v60 = v53;
  v185 = v59;
  swift_getWitnessTable();
LABEL_6:
  v105 = v146;
  sub_1C5941600(v60, v146);
  v106 = v148;
  v107 = *(v147 + 8);
  v107(v60, v148);
  v108 = swift_getWitnessTable();
  v109 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180, &qword_1C5BD4870, MEMORY[0x1E6980490]);
  v182 = v108;
  v183 = v109;
  v110 = swift_getWitnessTable();
  v111 = sub_1C5924F54(&qword_1EC192198, &qword_1EC192188, &qword_1C5BD4878, MEMORY[0x1E697F940]);
  v180 = v110;
  v181 = v111;
  v178 = swift_getWitnessTable();
  v179 = MEMORY[0x1E69805B0];
  v112 = swift_getWitnessTable();
  v113 = swift_getWitnessTable();
  v176 = v112;
  v177 = v113;
  v114 = swift_getWitnessTable();
  v115 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v174 = v114;
  v175 = v115;
  v173 = swift_getWitnessTable();
  v116 = swift_getWitnessTable();
  sub_1C593EDC0(v105, v106, v116);
  return (v107)(v105, v106);
}

uint64_t sub_1C59C6DF8@<X0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath("ؘ\\&");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8, &qword_1C5BE77F0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C59C6E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v10 = type metadata accessor for ScopePicker.ScopeButtonHighlight(0, a4, a5, a4);
  (*(*(a4 - 8) + 32))(&a6[*(v10 + 36)], a2, a4);
  v11 = &a6[*(v10 + 40)];

  return sub_1C59CD98C(a3, v11);
}

uint64_t sub_1C59C6F00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BC97E4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E697CC28], v9, v11);
  v14 = sub_1C5BC97D4();
  (*(v10 + 8))(v13, v9);
  v16 = type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(0, a3, a4, v15);
  result = sub_1C59C4E98(v16);
  if ((v18 & 1) == 0)
  {
    v19 = 1;
    if ((v14 & 1) == 0)
    {
      v19 = -1;
    }

    if (__OFADD__(result, v19))
    {
      __break(1u);
    }

    else
    {
      result = sub_1C5BCB0F4();
      if (!__OFSUB__(result, 1))
      {
        sub_1C5BCB174();
        sub_1C59CEE68(v8, v16);
        return (*(v6 + 8))(v8, a3);
      }
    }

    __break(1u);
  }

  return result;
}

__n128 sub_1C59C7118@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  *&v48 = a1;
  *(&v48 + 1) = a2;
  sub_1C594A23C();

  v6 = sub_1C5BC9CA4();
  v8 = v7;
  v10 = v9;
  sub_1C59CD1DC(v43);

  sub_1C59CD57C(v43);
  v11 = sub_1C5BC9C14();
  v13 = v12;
  v15 = v14;

  sub_1C5953BD8(v6, v8, v10 & 1);

  v16 = sub_1C5BC9B44();
  v40 = v17;
  v41 = v16;
  v19 = v18;
  v21 = v20;
  sub_1C5953BD8(v11, v13, v15 & 1);

  LOBYTE(v8) = sub_1C5BC9884();
  sub_1C59CD1DC(v44);
  sub_1C59CD57C(v44);
  sub_1C5BC8174();
  v38 = v23;
  v39 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v11) = v19 & 1;
  LOBYTE(v48) = v19 & 1;
  v47[0] = 0;
  v28 = sub_1C5BC98F4();
  sub_1C59CD1DC(v45);
  sub_1C59CD57C(v45);
  sub_1C5BC8174();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1C59CD1DC(v46);
  sub_1C59CD57C(v46);
  sub_1C59CD1DC(v47);
  sub_1C59CD57C(v47);
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  *&v42[55] = v51;
  *&v42[71] = v52;
  *&v42[87] = v53;
  *&v42[103] = v54;
  *&v42[7] = v48;
  *&v42[23] = v49;
  *&v42[39] = v50;
  *a5 = v41;
  *(a5 + 8) = v40;
  *(a5 + 16) = v11;
  *(a5 + 24) = v21;
  *(a5 + 32) = v8;
  *(a5 + 40) = v39;
  *(a5 + 48) = v38;
  *(a5 + 56) = v25;
  *(a5 + 64) = v27;
  *(a5 + 72) = 0;
  *(a5 + 80) = v28;
  *(a5 + 88) = v30;
  *(a5 + 96) = v32;
  *(a5 + 104) = v34;
  *(a5 + 112) = v36;
  *(a5 + 120) = 0;
  *(a5 + 185) = *&v42[64];
  *(a5 + 201) = *&v42[80];
  *(a5 + 217) = *&v42[96];
  *(a5 + 232) = *&v42[111];
  *(a5 + 121) = *v42;
  *(a5 + 137) = *&v42[16];
  result = *&v42[32];
  *(a5 + 153) = *&v42[32];
  *(a5 + 169) = *&v42[48];
  return result;
}

uint64_t sub_1C59C745C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *(a1 + 16);
  v24 = sub_1C5BCB144();
  v27 = *(a1 + 24);
  v28 = v3;
  type metadata accessor for ScopePicker.ButtonLabel(255, v3, v27, v4);
  sub_1C5BC8AB4();
  type metadata accessor for ScopePicker.AnchorPreference(255, v3, v27, v5);
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5BC8AB4();
  v23 = sub_1C5BC92D4();
  v49 = WitnessTable;
  v50 = sub_1C5953670();
  v7 = MEMORY[0x1E697E858];
  v47 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v22[1] = v7;
  v43 = WitnessTable;
  v44 = swift_getWitnessTable();
  v41 = WitnessTable;
  v42 = v48;
  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA6F4();
  swift_getWitnessTable();
  v23 = *(v27 + 8);
  sub_1C5BCA724();
  sub_1C5BC8B34();
  swift_getWitnessTable();
  sub_1C59CEDB8(&qword_1EC192338, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192340, &unk_1C5BD4B08);
  v8 = sub_1C5BC8AB4();
  v9 = sub_1C5BC92F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1C5924F54(&qword_1EC192348, &qword_1EC192340, &unk_1C5BD4B08, MEMORY[0x1E69805E8]);
  v10 = swift_getWitnessTable();
  v11 = sub_1C59CEDB8(&qword_1EC192350, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  v51[4] = v23;
  sub_1C5BCA8C4();
  v51[0] = v8;
  v51[1] = v9;
  v51[2] = v10;
  v51[3] = v11;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v33 = swift_getWitnessTable();
  v34 = v36;
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_1C5BCA714();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - v17;
  sub_1C59CD1DC(v51);
  sub_1C59CD57C(v51);
  v29 = v28;
  v30 = v27;
  v31 = v25;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v15, v12, v19);
  v20 = *(v13 + 8);
  v20(v15, v12);
  sub_1C593EDC0(v18, v12, v19);
  return (v20)(v18, v12);
}

uint64_t sub_1C59C7B14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v66 = a1;
  v69 = a4;
  v70 = a2;
  v73 = a3;
  v68 = type metadata accessor for ScopePicker.ScopeButtons(0, a2, a3, a5);
  v65 = *(v68 - 8);
  v67 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v64 = v54 - v7;
  v72 = sub_1C5BCB144();
  type metadata accessor for ScopePicker.ButtonLabel(255, a2, a3, v8);
  sub_1C5BC8AB4();
  type metadata accessor for ScopePicker.AnchorPreference(255, a2, a3, v9);
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  v11 = sub_1C5953670();
  v92 = WitnessTable;
  v93 = v11;
  v12 = MEMORY[0x1E697E858];
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v90 = v13;
  v91 = v14;
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v88 = v15;
  v89 = v16;
  v17 = swift_getWitnessTable();
  v86 = WitnessTable;
  v87 = v17;
  v18 = swift_getWitnessTable();
  v84 = WitnessTable;
  v85 = v14;
  v63 = v12;
  v19 = swift_getWitnessTable();
  v82 = v18;
  v83 = v19;
  swift_getWitnessTable();
  v20 = sub_1C5BCA6F4();
  v21 = swift_getWitnessTable();
  v71 = *(v73 + 8);
  v75 = v20;
  v76 = v70;
  v77 = v21;
  v78 = v71;
  v22 = sub_1C5BCA724();
  v23 = sub_1C5BC8B34();
  v24 = swift_getWitnessTable();
  v25 = sub_1C59CEDB8(&qword_1EC192338, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v75 = v22;
  v76 = v23;
  v77 = v24;
  v78 = v25;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192340, &unk_1C5BD4B08);
  v26 = sub_1C5BC8AB4();
  v27 = sub_1C5BC92F4();
  v57 = v27;
  v75 = v22;
  v76 = v23;
  v77 = v24;
  v78 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_1C5924F54(&qword_1EC192348, &qword_1EC192340, &unk_1C5BD4B08, MEMORY[0x1E69805E8]);
  v80 = OpaqueTypeConformance2;
  v81 = v29;
  v58 = v26;
  v30 = swift_getWitnessTable();
  v56 = v30;
  v55 = sub_1C59CEDB8(&qword_1EC192350, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  v75 = v26;
  v76 = v27;
  v77 = v30;
  v78 = v55;
  v54[1] = MEMORY[0x1E697CDE0];
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  v59 = sub_1C5BC8AB4();
  v31 = sub_1C5BC8AB4();
  v54[2] = v31;
  v32 = v72;
  v61 = swift_getWitnessTable();
  v33 = v70;
  v75 = v32;
  v76 = v70;
  v77 = v31;
  v78 = v61;
  v79 = v71;
  v34 = sub_1C5BCA8C4();
  v62 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38 = MEMORY[0x1EEE9AC00](v37).n128_u64[0];
  v60 = v54 - v39;
  v40 = v66;
  v74[7] = *v66;
  v74[0] = v33;
  v41 = v73;
  v74[1] = v73;
  v54[0] = swift_getKeyPath(byte_1C5BD4B18, v74, v38);
  v42 = v65;
  v43 = v64;
  v44 = v68;
  (*(v65 + 16))(v64, v40, v68);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v33;
  *(v46 + 24) = v41;
  (*(v42 + 32))(v46 + v45, v43, v44);

  v75 = v58;
  v76 = v57;
  v77 = v56;
  v78 = v55;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v74[5] = v47;
  v74[6] = v48;
  v74[3] = swift_getWitnessTable();
  v74[4] = v48;
  v53 = swift_getWitnessTable();
  sub_1C5BCA8A4();
  v74[2] = v53;
  v49 = swift_getWitnessTable();
  v50 = v60;
  sub_1C593EDC0(v36, v34, v49);
  v51 = *(v62 + 8);
  v51(v36, v34);
  sub_1C593EDC0(v50, v34, v49);
  return (v51)(v50, v34);
}

uint64_t sub_1C59C83B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v106 = a3;
  v158 = a2;
  v160 = a1;
  v152 = a5;
  v159 = sub_1C5BC92F4();
  v151 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v150 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1C5BCA874();
  MEMORY[0x1EEE9AC00](v149);
  v146 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1C5BC8C04();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1C5BC8B34();
  v144 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v143 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(a3 - 8);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = a4;
  v156 = type metadata accessor for ScopePicker.ScopeButtons(0, a3, a4, v13);
  v155 = *(v156 - 8);
  v140 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v139 = &v106 - v14;
  type metadata accessor for ScopePicker.ButtonLabel(255, a3, a4, v15);
  sub_1C5BC8AB4();
  type metadata accessor for ScopePicker.AnchorPreference(255, a3, a4, v16);
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5BC8AB4();
  v18 = sub_1C5BC92D4();
  v19 = sub_1C5953670();
  v187 = WitnessTable;
  v188 = v19;
  v20 = MEMORY[0x1E697E858];
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v185 = v21;
  v186 = v22;
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v183 = v23;
  v184 = v24;
  v25 = swift_getWitnessTable();
  v181 = WitnessTable;
  v182 = v25;
  v26 = swift_getWitnessTable();
  v179 = WitnessTable;
  v180 = v22;
  v138 = v20;
  v27 = swift_getWitnessTable();
  v177 = v26;
  v178 = v27;
  v128 = v18;
  v127 = swift_getWitnessTable();
  v28 = sub_1C5BCA6F4();
  v122 = v28;
  v131 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v106 - v29;
  v121 = swift_getWitnessTable();
  v120 = *(v161 + 8);
  v30 = v106;
  v174[0] = v28;
  v174[1] = v106;
  v175 = v121;
  v176 = v120;
  v31 = sub_1C5BCA724();
  v125 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v114 = &v106 - v32;
  v34 = v33;
  v35 = swift_getWitnessTable();
  v36 = sub_1C59CEDB8(&qword_1EC192338, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v37 = v34;
  v107 = v34;
  v38 = v154;
  v174[0] = v34;
  v174[1] = v154;
  v175 = v35;
  v176 = v36;
  v109 = v35;
  v39 = v36;
  v108 = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v129 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v110 = &v106 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192340, &unk_1C5BD4B08);
  v41 = sub_1C5BC8AB4();
  v134 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v112 = &v106 - v42;
  v174[0] = v37;
  v174[1] = v38;
  v175 = v35;
  v176 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeConformance2;
  v44 = sub_1C5924F54(&qword_1EC192348, &qword_1EC192340, &unk_1C5BD4B08, MEMORY[0x1E69805E8]);
  v172 = OpaqueTypeConformance2;
  v173 = v44;
  v117 = v41;
  v45 = swift_getWitnessTable();
  v116 = v45;
  v115 = sub_1C59CEDB8(&qword_1EC192350, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
  v174[0] = v41;
  v174[1] = v159;
  v175 = v45;
  v176 = v115;
  v124 = MEMORY[0x1E697CDE0];
  v119 = swift_getOpaqueTypeMetadata2();
  v126 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v153 = &v106 - v46;
  sub_1C5BC97C4();
  v132 = sub_1C5BC8AB4();
  v136 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v113 = &v106 - v47;
  v135 = sub_1C5BC8AB4();
  v137 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v130 = &v106 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v133 = &v106 - v51;
  v52 = v155;
  v53 = v139;
  v54 = v158;
  v55 = v156;
  (*(v155 + 16))(v139, v158, v156, v50);
  v56 = v141;
  v57 = v157;
  (*(v141 + 16))(v157, v160, v30);
  v58 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v59 = (v140 + *(v56 + 80) + v58) & ~*(v56 + 80);
  v60 = swift_allocObject();
  v61 = v161;
  *(v60 + 16) = v30;
  *(v60 + 24) = v61;
  (*(v155 + 32))(v60 + v58, v53, v55);
  (*(v56 + 32))(v60 + v59, v57, v30);
  v162 = v30;
  v163 = v61;
  v164 = v54;
  v165 = v160;
  v62 = v123;
  sub_1C5BCA6E4();
  v63 = v114;
  v64 = v122;
  sub_1C5BCA1C4();
  (*(v131 + 8))(v62, v64);
  v65 = v143;
  sub_1C5BC8B24();
  v66 = v110;
  v67 = v107;
  v68 = v154;
  sub_1C5BC9DA4();
  (*(v144 + 8))(v65, v68);
  (*(v125 + 8))(v63, v67);
  v69 = v145;
  sub_1C5BC8BF4();
  v70 = *MEMORY[0x1E697F468];
  v71 = sub_1C5BC9044();
  v72 = v146;
  (*(*(v71 - 8) + 104))(v146, v70, v71);
  sub_1C59CEDB8(qword_1EC192358, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  v73 = v112;
  v74 = OpaqueTypeMetadata2;
  sub_1C5BC9E94();
  sub_1C59CEE00(v72);
  (*(v147 + 8))(v69, v148);
  (*(v129 + 8))(v66, v74);
  v75 = v150;
  sub_1C5BC8C64();
  v76 = sub_1C5BCA864();
  v77 = v157;
  MEMORY[0x1C694EA50](v76);
  v78 = v30;
  sub_1C5BCADB4();
  (*(v56 + 8))(v77, v30);
  v79 = v117;
  v80 = v159;
  v81 = v116;
  v82 = v115;
  sub_1C5BC9E04();
  (*(v151 + 8))(v75, v80);
  (*(v134 + 8))(v73, v79);
  v83 = *(v161 + 16);
  v170 = v83(v78);
  v171 = v84;
  v174[0] = v79;
  v174[1] = v80;
  v175 = v81;
  v176 = v82;
  v85 = swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v86 = v113;
  v87 = v119;
  v88 = v153;
  sub_1C5BCA034();

  (*(v126 + 8))(v88, v87);
  strcpy(v174, "scopeButton.");
  BYTE5(v174[1]) = 0;
  HIWORD(v174[1]) = -5120;
  v89 = (v83)(v78, v161);
  sub_1C5AC4A94(v89, v90);
  v92 = v91;
  v94 = v93;

  MEMORY[0x1C694F170](v92, v94);

  v95 = v174[0];
  v96 = v174[1];
  v97 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v168 = v85;
  v169 = v97;
  v98 = v132;
  v99 = swift_getWitnessTable();
  v100 = v130;
  sub_1C595BB1C(v95, v96, v98);

  (*(v136 + 8))(v86, v98);
  v166 = v99;
  v167 = v97;
  v101 = v135;
  v102 = swift_getWitnessTable();
  v103 = v133;
  sub_1C593EDC0(v100, v101, v102);
  v104 = *(v137 + 8);
  v104(v100, v101);
  sub_1C593EDC0(v103, v101, v102);
  return (v104)(v103, v101);
}

uint64_t sub_1C59C9600@<X0>(uint64_t *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v130 = a5;
  v131 = a2;
  v8 = type metadata accessor for ScopePicker.ButtonLabel(255, a3, a4, a4);
  v9 = sub_1C5BC8AB4();
  v11 = type metadata accessor for ScopePicker.AnchorPreference(255, a3, a4, v10);
  v133 = v9;
  v12 = sub_1C5BC8AB4();
  v111 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v108 - v13;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C5BC8BE4();
  v137 = v12;
  v15 = sub_1C5BC8AB4();
  v113 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v108 - v18;
  v116 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C5BCA864();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v114 = &v108 - v22;
  v120 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v108 - v24;
  v134 = v11;
  v25 = sub_1C5BC8AB4();
  v110 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v118 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v117 = &v108 - v28;
  v128 = v15;
  v29 = sub_1C5BC92D4();
  v125 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v124 = &v108 - v30;
  v136 = v25;
  v31 = sub_1C5BC92D4();
  v126 = *(v31 - 8);
  v127 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v135 = &v108 - v32;
  sub_1C59CD1DC(v192);
  sub_1C59CD57C(v192);
  v33 = v193;
  v34 = v194;
  v36 = *(type metadata accessor for ScopePicker.ScopeButtons(0, a3, a4, v35) + 40);
  v121 = a1;
  LODWORD(v36) = *(a1 + v36);
  v132 = v14;
  if (v36 == 1)
  {
    v162 = (*(a4 + 16))(a3, a4);
    v163 = v37;
    v164 = v33;
    v165 = v34;
    v38 = WitnessTable;
    sub_1C593EDC0(&v162, v8, WitnessTable);

    v148 = v188;
    v149 = v189;
    v150 = v190;
    v151 = v191;
    sub_1C593EDC0(&v148, v8, v38);

    v148 = v162;
    v149 = v163;
    v150 = v164;
    v151 = v165;
    v39 = sub_1C5953670();
    v146 = v38;
    v147 = v39;
    v40 = swift_getWitnessTable();
    v41 = swift_getWitnessTable();
    v144 = v40;
    v145 = v41;
    v42 = swift_getWitnessTable();
    v43 = swift_getWitnessTable();
    v142 = v42;
    v143 = v43;
    v44 = v128;
    v45 = swift_getWitnessTable();
    v46 = v124;
    sub_1C5950E54(&v148, v8, v44, v38, v45);

    v140 = v38;
    v141 = v45;
    v47 = swift_getWitnessTable();
    v138 = v38;
    v139 = v41;
    v48 = v136;
    v49 = swift_getWitnessTable();
    sub_1C5950E54(v46, v29, v48, v47, v49);
    (*(v125 + 8))(v46, v29);
  }

  else
  {
    v109 = v29;
    if (v34)
    {
      v50 = v131;
      v188 = (*(a4 + 16))(a3, a4);
      v189 = v51;
      v190 = v33;
      v191 = 1;
      sub_1C5BCA864();
      v52 = v114;
      sub_1C5BCA834();
      v53 = v115;
      (*(v116 + 16))(v115, v50, a3);
      v54 = v119;
      sub_1C59CA438(v52, v53, a3, a4, v119);
      v55 = v118;
      v56 = v8;
      v57 = v134;
      v38 = WitnessTable;
      MEMORY[0x1C694E550](v54, v56, v134, WitnessTable);
      (*(v120 + 8))(v54, v57);

      v58 = swift_getWitnessTable();
      v186 = v38;
      v187 = v58;
      v59 = v136;
      v60 = swift_getWitnessTable();
      v61 = v117;
      sub_1C593EDC0(v55, v59, v60);
      v131 = *(v110 + 8);
      v131(v55, v59);
      sub_1C593EDC0(v61, v59, v60);
      v62 = sub_1C5953670();
      v184 = v38;
      v185 = v62;
      v182 = swift_getWitnessTable();
      v183 = v58;
      v63 = swift_getWitnessTable();
      v64 = swift_getWitnessTable();
      v180 = v63;
      v181 = v64;
      v65 = swift_getWitnessTable();
      v178 = v38;
      v179 = v65;
      v66 = v109;
      v67 = swift_getWitnessTable();
      v68 = v118;
      sub_1C5941738(v118, v66, v59, v67, v60);
      v69 = v131;
      v131(v68, v59);
      v69(v117, v59);
    }

    else
    {
      v70 = v131;
      v162 = (*(a4 + 16))(a3, a4);
      v163 = v71;
      v164 = v33;
      v165 = 0;
      v108 = v8;
      v38 = WitnessTable;
      sub_1C5BCA254();

      v162 = v188;
      v163 = v189;
      v164 = v190;
      v165 = v191;
      sub_1C5BCA864();
      v72 = v114;
      sub_1C5BCA834();
      v73 = v115;
      (*(v116 + 16))(v115, v70, a3);
      v74 = v119;
      sub_1C59CA438(v72, v73, a3, a4, v119);
      v75 = sub_1C5953670();
      v160 = v38;
      v161 = v75;
      v76 = v133;
      v77 = swift_getWitnessTable();
      v78 = v76;
      v79 = v134;
      MEMORY[0x1C694E550](v74, v78, v134, v77);
      (*(v120 + 8))(v74, v79);

      v121 = &v108;
      MEMORY[0x1EEE9AC00](v80);
      *(&v108 - 4) = a3;
      *(&v108 - 3) = a4;
      *(&v108 - 2) = v131;
      sub_1C5BCAA54();
      v131 = swift_getWitnessTable();
      v158 = v77;
      v159 = v131;
      v81 = v137;
      v82 = swift_getWitnessTable();
      v83 = v112;
      v84 = v108;
      v85 = v122;
      sub_1C5BCA2C4();
      (*(v111 + 8))(v85, v81);
      v86 = swift_getWitnessTable();
      v156 = v82;
      v157 = v86;
      v87 = v128;
      v88 = swift_getWitnessTable();
      v89 = v123;
      sub_1C593EDC0(v83, v87, v88);
      v122 = *(v113 + 8);
      (v122)(v83, v87);
      sub_1C593EDC0(v89, v87, v88);
      v90 = v124;
      sub_1C5941738(v83, v84, v87, v38, v88);
      v154 = v38;
      v155 = v88;
      v91 = v109;
      v92 = swift_getWitnessTable();
      v152 = v38;
      v153 = v131;
      v93 = v136;
      v94 = swift_getWitnessTable();
      sub_1C5950E54(v90, v91, v93, v92, v94);
      (*(v125 + 8))(v90, v91);
      v95 = v122;
      (v122)(v83, v87);
      v95(v123, v87);
    }
  }

  v96 = sub_1C5953670();
  v176 = v38;
  v177 = v96;
  v97 = swift_getWitnessTable();
  v98 = swift_getWitnessTable();
  v174 = v97;
  v175 = v98;
  v99 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  v172 = v99;
  v173 = v100;
  v101 = swift_getWitnessTable();
  v170 = v38;
  v171 = v101;
  v102 = swift_getWitnessTable();
  v168 = v38;
  v169 = v98;
  v103 = swift_getWitnessTable();
  v166 = v102;
  v167 = v103;
  v104 = v127;
  v105 = swift_getWitnessTable();
  v106 = v135;
  sub_1C593EDC0(v135, v104, v105);
  return (*(v126 + 8))(v106, v104);
}

uint64_t sub_1C59CA438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1C5BCA864();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v13 = type metadata accessor for ScopePicker.AnchorPreference(0, a3, a4, v12);
  v14 = *(*(a3 - 8) + 32);
  v15 = a5 + *(v13 + 36);

  return v14(v15, a2, a3);
}

uint64_t sub_1C59CA50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 16))(a2, a3);
  v11 = v5;
  v12 = 0;
  v13 = 1;
  v7 = type metadata accessor for ScopePicker.ButtonLabel(0, a2, a3, v6);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v10, v7, WitnessTable);

  v10 = v14;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  sub_1C593EDC0(&v10, v7, WitnessTable);
}

uint64_t sub_1C59CA600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1924F8, &qword_1C5BD4D10);
  v7 = sub_1C5BC8AB4();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1C5BCA6D4();
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  type metadata accessor for CGRect(0);
  WitnessTable = swift_getWitnessTable();
  sub_1C59CD0B8();
  sub_1C5BC9FB4();

  v16 = sub_1C5924F54(&qword_1EC192500, &qword_1EC1924F8, &qword_1C5BD4D10, MEMORY[0x1E697FF70]);
  v24 = WitnessTable;
  v25 = v16;
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v9, v7, v17);
  v18 = *(v21 + 8);
  v18(v9, v7);
  sub_1C593EDC0(v12, v7, v17);
  return (v18)(v12, v7);
}

uint64_t sub_1C59CA940@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopePicker.AnchorPreference(0, v11, v12, v12);
  v13 = sub_1C5BCA864();
  MEMORY[0x1C694EA50](v13);
  v14 = sub_1C5BCADB4();
  result = (*(v8 + 8))(v10, a3);
  v16 = 0;
  if (v14)
  {

    v16 = a1;
  }

  *a5 = v16;
  return result;
}

uint64_t sub_1C59CAA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8, &qword_1C5BE77F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C59400B0(v2 + *(a1 + 40), &v15 - v10, &qword_1EC1921C8, &qword_1C5BE77F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C5BC89D4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

double sub_1C59CAC7C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  (*(v2 + 32))(v6 + v5, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for ScopePicker.ScopeButtonHighlightCapsule(255, v7, v8, v9);
  sub_1C5BC9074();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v18 = WitnessTable;
  v19 = v11;
  swift_getWitnessTable();
  v16 = sub_1C5BC8864();
  v17 = v12;
  v13 = sub_1C5BC8874();
  v14 = swift_getWitnessTable();
  sub_1C593EDC0(&v16, v13, v14);

  v16 = v20;
  v17 = v21;
  sub_1C593EDC0(&v16, v13, v14);

  return result;
}

uint64_t sub_1C59CAED8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  v9 = type metadata accessor for ScopePicker.ScopeButtonHighlightCapsule(255, a3, a4, a4);
  v44 = *(*(a4 + 8) + 8);
  v45 = v9;
  v48 = sub_1C5BC9074();
  v10 = sub_1C5BC8AB4();
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v42 - v13;
  v14 = sub_1C5BC89D4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v42 - v19;
  type metadata accessor for CGRect(0);
  v42[1] = a1;
  sub_1C5BC86F4();
  v21 = v54;
  v22 = v55;
  v23 = v56;
  v24 = v57;
  v49 = a3;
  v26 = type metadata accessor for ScopePicker.ScopeButtonHighlight(0, a3, a4, v25);
  v47 = a2;
  sub_1C59CAA74(v26, v20);
  (*(v15 + 104))(v17, *MEMORY[0x1E697E7D0], v14);
  v27 = sub_1C5BC89C4();
  v28 = *(v15 + 8);
  v28(v17, v14);
  v28(v20, v14);
  if (v27)
  {
    v58.origin.x = v21;
    v58.origin.y = v22;
    v58.size.width = v23;
    v58.size.height = v24;
    MinX = CGRectGetMinX(v58);
  }

  else
  {
    sub_1C5BC86C4();
    v31 = v30;
    v59.origin.x = v21;
    v59.origin.y = v22;
    v59.size.width = v23;
    v59.size.height = v24;
    MinX = v31 - CGRectGetMaxX(v59);
  }

  v60.origin.x = v21;
  v60.origin.y = v22;
  v60.size.width = v23;
  v60.size.height = v24;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v21;
  v61.origin.y = v22;
  v61.size.width = v23;
  v61.size.height = v24;
  Width = CGRectGetWidth(v61);
  v62.origin.x = v21;
  v62.origin.y = v22;
  v62.size.width = v23;
  v62.size.height = v24;
  Height = CGRectGetHeight(v62);
  v54 = MinX;
  v55 = MinY;
  v56 = Width;
  v57 = Height;
  MEMORY[0x1C694ED40](0.25, 0.8, 0.0);
  WitnessTable = swift_getWitnessTable();
  v36 = v43;
  sub_1C5BCA384();

  v37 = swift_getWitnessTable();
  v52 = WitnessTable;
  v53 = v37;
  v38 = swift_getWitnessTable();
  v39 = v46;
  sub_1C593EDC0(v36, v10, v38);
  v40 = *(v50 + 8);
  v40(v36, v10);
  sub_1C593EDC0(v39, v10, v38);
  return (v40)(v39, v10);
}

double sub_1C59CB33C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1C5BC9044();
  (*(*(v9 - 8) + 104))(a1, v8, v9);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1924E0, &qword_1C5BD4CF8) + 36)) = 256;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1924E8, &qword_1C5BD4D00) + 36));
  *v10 = a2;
  v10[1] = a3;
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1924F0, &qword_1C5BD4D08) + 36));
  *v11 = v13;
  v11[1] = v14;
  result = *&v15;
  v11[2] = v15;
  return result;
}

double sub_1C59CB480@<D0>(uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8FC4();
  v22 = 1;
  sub_1C59CB5E8(&v14);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v30[0] = v14;
  v30[1] = v15;
  v30[2] = v16;
  v30[3] = v17;
  v30[4] = v18;
  v30[5] = v19;
  v31 = v20;
  sub_1C59400B0(&v23, &v13, &qword_1EC1921D0, &qword_1C5BD48D8);
  sub_1C5924EF4(v30, &qword_1EC1921D0, &qword_1C5BD48D8);
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[103] = v29;
  *&v21[39] = v25;
  v6 = v22;
  v7 = sub_1C5BC8AC4();
  v8 = sub_1C5BC9894();
  v9 = *&v21[32];
  *(a2 + 65) = *&v21[48];
  v10 = *&v21[80];
  *(a2 + 81) = *&v21[64];
  *(a2 + 97) = v10;
  *(a2 + 112) = *&v21[95];
  result = *v21;
  v12 = *&v21[16];
  *(a2 + 17) = *v21;
  *(a2 + 33) = v12;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 49) = v9;
  *(a2 + 128) = v7;
  *(a2 + 136) = v8;
  return result;
}

uint64_t sub_1C59CB5E8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921D8, &qword_1C5BD48E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5BD21E0;
  sub_1C5BCA474();
  sub_1C5BCA4B4();

  *(v4 + 32) = sub_1C5BCA984();
  *(v4 + 40) = v5;
  sub_1C5BCA474();
  *(v4 + 48) = sub_1C5BCA984();
  *(v4 + 56) = v6;
  sub_1C5BCA474();
  *(v4 + 64) = sub_1C5BCA984();
  *(v4 + 72) = v7;
  sub_1C5BCA994();
  sub_1C5BCABE4();
  sub_1C5BCABF4();
  sub_1C5BC88B4();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v8 = v25;
  v27[4] = v25;
  v9 = v22;
  v10 = v21;
  v27[0] = v21;
  v27[1] = v22;
  *&v19[23] = v22;
  *&v19[7] = v21;
  *&v19[71] = v25;
  v11 = v23;
  v12 = v24;
  v27[2] = v23;
  v27[3] = v24;
  *&v19[55] = v24;
  *&v19[39] = v23;
  v13 = v26;
  v14 = v26;
  *&v19[87] = v26;
  *(a1 + 41) = *&v19[32];
  v15 = *&v19[64];
  *(a1 + 57) = *&v19[48];
  *(a1 + 73) = v15;
  *(a1 + 88) = *&v19[79];
  v16 = *&v19[16];
  *(a1 + 9) = *v19;
  *(a1 + 25) = v16;
  v20 = 0;
  v28 = v13;
  *(a1 + 8) = 0;
  *a1 = 0;
  v29[0] = v10;
  v29[1] = v9;
  v30 = v14;
  v29[3] = v12;
  v29[4] = v8;
  v29[2] = v11;
  sub_1C59400B0(v27, &v18, &qword_1EC1921E0, &qword_1C5BD48E8);
  return sub_1C5924EF4(v29, &qword_1EC1921E0, &qword_1C5BD48E8);
}

uint64_t sub_1C59CB814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5924F54(&qword_1EC192328, &qword_1EC192330, &qword_1C5BD4B00, MEMORY[0x1E69E7C90]);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

void *sub_1C59CB894(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void sub_1C59CB910(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1C59CB920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59CC000();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C59CB984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C59CDD54();
  sub_1C5BC8F44();
  return v4;
}

uint64_t MCUINamespace<A>.scopePickerHorizontalMargins(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v4, v7, v9);
  swift_getKeyPath(asc_1C5BD4620);
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1;
  }

  v14[1] = v12;
  v14[2] = v12;
  v15 = a2 & 1;
  sub_1C5BC9DF4();

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1C59CBB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BCAD34();

  return sub_1C59CBB5C(a1, v6, a2, a3);
}

unint64_t sub_1C59CBB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1C5BCADB4();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1C59CBCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1C5BCB0F4())
  {
    sub_1C5BCBC84();
    v13 = sub_1C5BCBC74();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1C5BCB0F4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1C5BCB0D4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1C5BCBAD4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1C59CBB00(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_1C59CC000()
{
  result = qword_1EC191F88;
  if (!qword_1EC191F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80, &qword_1C5BD4648);
    sub_1C59CC084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191F88);
  }

  return result;
}

unint64_t sub_1C59CC084()
{
  result = qword_1EC191F90;
  if (!qword_1EC191F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191F90);
  }

  return result;
}

double sub_1C59CC0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C59CC110()
{
  result = qword_1EC191FB8;
  if (!qword_1EC191FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191FB0, &qword_1C5BD4668);
    sub_1C59CC19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191FB8);
  }

  return result;
}

unint64_t sub_1C59CC19C()
{
  result = qword_1EC191FC0;
  if (!qword_1EC191FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191FC8, &qword_1C5BD4670);
    sub_1C59CC228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191FC0);
  }

  return result;
}

unint64_t sub_1C59CC228()
{
  result = qword_1EC191FD0;
  if (!qword_1EC191FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191FD0);
  }

  return result;
}

void sub_1C59CC2D4(uint64_t a1, __n128 a2)
{
  sub_1C5BCA864();
  if (v2 <= 0x3F)
  {
    sub_1C5BCB144();
    if (v3 <= 0x3F)
    {
      sub_1C5BCACD4();
      if (v4 <= 0x3F)
      {
        sub_1C59CE4D8(319, &qword_1EC192060, type metadata accessor for MinimumLayoutMargins, MEMORY[0x1E697DA80]);
        if (v5 <= 0x3F)
        {
          sub_1C59CCAF8(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C59CC3F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
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

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA0, &qword_1C5BD4658);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  if (v11 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = ((v12 + 16) & ~v12) + *(v6 + 64);
  v15 = *(v10 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 15;
  if (a2 <= v13)
  {
    goto LABEL_23;
  }

  v18 = ((*(*(v9 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v17 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v16) + 26;
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_10;
  }

  v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v22))
  {
    v20 = *(a1 + v18);
    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v22 > 0xFF)
  {
    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v22 >= 2)
  {
LABEL_10:
    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_23;
    }

LABEL_18:
    v23 = (v20 - 1) << v19;
    if (v18 <= 3)
    {
      v24 = *a1;
    }

    else
    {
      v23 = 0;
      v24 = *a1;
    }

    return v13 + (v24 | v23) + 1;
  }

LABEL_23:
  if (v11 <= v8)
  {
    v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v28 = *(v6 + 48);

      return v28((v26 + v12 + 8) & ~v12, v7, v5);
    }

    else
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }

  else
  {
    v25 = *(v10 + 48);

    return v25((v17 + ((((((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v16);
  }
}

void sub_1C59CC6C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v38 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA0, &qword_1C5BD4658);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  if (v13 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v14 + 16) & ~v14) + *(v8 + 64);
  v18 = *(v12 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 15;
  v21 = (*(*(v11 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v21 + ((v20 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 26;
  if (a3 <= v16)
  {
    v23 = 0;
  }

  else if (v22 <= 3)
  {
    v26 = ((a3 - v16 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (v16 >= a2)
  {
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        *&a1[v22] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v13 <= v10)
        {
          if (v10 >= a2)
          {
            v34 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((v9 & 0x80000000) != 0)
            {
              v37 = *(v38 + 56);

              v37((v34 + v14 + 8) & ~v14, a2, v9, v7);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v35 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v35 = (a2 - 1);
              }

              *v34 = v35;
            }

            return;
          }

          if (v17 <= 3)
          {
            v30 = ~(-1 << (8 * v17));
          }

          else
          {
            v30 = -1;
          }

          if (!v17)
          {
            return;
          }

          v31 = v30 & (~v10 + a2);
          if (v17 <= 3)
          {
            v32 = v17;
          }

          else
          {
            v32 = 4;
          }

          bzero(a1, v17);
          if (v32 <= 2)
          {
            if (v32 == 1)
            {
              *a1 = v31;
            }

            else
            {
              *a1 = v31;
            }

            return;
          }

          if (v32 == 3)
          {
            *a1 = v31;
            a1[2] = BYTE2(v31);
            return;
          }
        }

        else
        {
          v28 = (&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (v16 == 0x7FFFFFFF)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *v28 = v29;
            return;
          }

          v33 = ((v20 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19);
          if (v15 >= a2)
          {
            v36 = *(v12 + 56);

            v36(v33, a2);
            return;
          }

          if (v21 == -8)
          {
            return;
          }

          v31 = ~v15 + a2;
          a1 = ((v20 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19);
          bzero(v33, (v21 + 8));
        }

        *a1 = v31;
        return;
      }

      *&a1[v22] = 0;
    }

    else if (v23)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  v24 = ~v16 + a2;
  if (v22 < 4)
  {
    v25 = (v24 >> (8 * v22)) + 1;
    bzero(a1, v21 + ((v20 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 26);
    *a1 = v24 & ~(-1 << (8 * v22));
    if (v23 > 1)
    {
LABEL_17:
      if (v23 == 2)
      {
        *&a1[v22] = v25;
      }

      else
      {
        *&a1[v22] = v25;
      }

      return;
    }
  }

  else
  {
    bzero(a1, v21 + ((v20 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 26);
    *a1 = v24;
    v25 = 1;
    if (v23 > 1)
    {
      goto LABEL_17;
    }
  }

  if (v23)
  {
    a1[v22] = v25;
  }
}

void sub_1C59CCAF8(uint64_t a1)
{
  if (!qword_1EC192068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80, &qword_1C5BD4648);
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC192068);
    }
  }
}

uint64_t sub_1C59CCB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59CCB98(uint64_t a1)
{
  result = sub_1C5BCB144();
  if (v2 <= 0x3F)
  {
    result = sub_1C5BCA864();
    if (v3 <= 0x3F)
    {
      result = sub_1C5BCACD4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C59CCC54(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-9 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 8) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *sub_1C59CCDDC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((-2 - ((((-9 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      else
      {
        v19 = *(v5 + 56);
        v20 = (v8 + ((((result + (v8 | 7) + 8) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v19(v20);
      }

      return result;
    }
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_1C59CD0B8()
{
  result = qword_1EC192190;
  if (!qword_1EC192190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192190);
  }

  return result;
}

uint64_t sub_1C59CD10C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_1C5BCA864();
  return sub_1C5BCA824();
}

uint64_t sub_1C59CD1DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5BC8914();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90, &qword_1C5BD48D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1C5BC9A64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6)
  {
    v12 = sub_1C5BC9924();
    v23 = sub_1C5BCA494();
    v13 = sub_1C5BC85E4();
    v23 = sub_1C5BCA474();
    v14 = sub_1C5BC85E4();
    LODWORD(v23) = sub_1C5BC93F4();
    result = sub_1C5BC85E4();
    v16 = xmmword_1C5BD4600;
    v17 = xmmword_1C5BD4610;
    v18 = 4.0;
    v19 = 0;
  }

  else
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6980EF0], v6);
    v20 = sub_1C5BC9954();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    sub_1C5BC99B4();
    sub_1C5924EF4(v5, &qword_1EC190F90, &qword_1C5BD48D0);
    (*(v7 + 8))(v9, v6);
    sub_1C5BC9974();
    v12 = sub_1C5BC99E4();

    sub_1C5BC9994();
    v19 = v21;
    sub_1C5BC8904();
    v13 = sub_1C5BC85E4();
    v23 = sub_1C5BCA494();
    v14 = sub_1C5BC85E4();
    LODWORD(v23) = sub_1C5BC93F4();
    result = sub_1C5BC85E4();
    v16 = xmmword_1C5BD45E0;
    v17 = xmmword_1C5BD45F0;
    v18 = 0.0;
  }

  *a1 = v12;
  *(a1 + 8) = v19;
  *(a1 + 16) = v11 == 6;
  *(a1 + 24) = v17;
  *(a1 + 40) = v16;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = result;
  *(a1 + 80) = v18;
  return result;
}

uint64_t sub_1C59CD5AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(0, v6, v7, a2) - 8);
  v9 = (v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_1C59C5D94(a1, v9, v6, v7, a3);
}

uint64_t objectdestroy_23Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  v8 = v7 + v6[11];

  v9 = sub_1C5BCA864();
  (*(*(v5 - 8) + 8))(v8 + *(v9 + 32), v5);

  return swift_deallocObject();
}

uint64_t sub_1C59CD768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ScopePicker.ScopeButtonsWithHighlight(0, v6, v7, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_1C59C6F00(a1, v9, v6, v7);
}

unint64_t sub_1C59CD7F4()
{
  result = qword_1EC1921B0;
  if (!qword_1EC1921B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1921A8, &qword_1C5BD4888);
    sub_1C59CD8AC();
    sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180, &qword_1C5BD4870, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1921B0);
  }

  return result;
}

unint64_t sub_1C59CD8AC()
{
  result = qword_1EC1921B8;
  if (!qword_1EC1921B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1921C0, &qword_1C5BD4890);
    sub_1C59CD938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1921B8);
  }

  return result;
}

unint64_t sub_1C59CD938()
{
  result = qword_1EDA45F68;
  if (!qword_1EDA45F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F68);
  }

  return result;
}

uint64_t sub_1C59CD98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0, &qword_1C5BD4880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_37Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ScopePicker(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  v9 = sub_1C5BC8AF4();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4 + v7;

  v13 = sub_1C5BCA864();
  (*(*(v5 - 8) + 8))(v12 + *(v13 + 32), v5);

  v14 = v12 + v6[14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA0, &qword_1C5BD4658);
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA8, &qword_1C5BD4660);

  v16 = sub_1C59CC0D8(*(v12 + v6[15]), *(v12 + v6[15] + 8), *(v12 + v6[15] + 16), *(v12 + v6[15] + 17));
  (*(v10 + 8))(v4 + v11, v9, v16);

  return swift_deallocObject();
}

void sub_1C59CDC48(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ScopePicker(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(sub_1C5BC8AF4() - 8);
  sub_1C59C22A8(v4 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)), a1, v6);
}

unint64_t sub_1C59CDD54()
{
  result = qword_1EC1921F8[0];
  if (!qword_1EC1921F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC1921F8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C59CDDDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C59CDE24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C59CDE88(uint64_t a1)
{
  sub_1C59CE4D8(319, qword_1EC192280, type metadata accessor for CGRect, MEMORY[0x1E6981798]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C59CE4D8(319, &qword_1EDA46758, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C59CDF88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
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

  v9 = *(sub_1C5BC89D4() - 8);
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

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 8) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v20 = *(v6 + 48);

        return v20((a1 + v11 + 8) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1C59CE1EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C5BC89D4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 8) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
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

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_49:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v24 + 56);

    v23(&a1[v13 + 8] & ~v13, a2, v9, v7);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *a1 = v22;
  }
}

void sub_1C59CE4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C59CE54C(uint64_t a1)
{
  result = sub_1C5BCB144();
  if (v2 <= 0x3F)
  {
    result = sub_1C5BCA864();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C59CE5E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  v10 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v11 = ~(((-17 - v7) | v7) - *(*(*(a3 + 16) - 8) + 64) + ((-9 - v7) | v9));
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_29:
      if (v8 != 0x7FFFFFFF)
      {
        return (*(v4 + 48))((v7 + ((((a1 + v9 + 8) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
      }

      v17 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_1C59CE7AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = -2 - (((-9 - v10) & 0xFFFFFFFFFFFFFFFELL | v10 & 0xFFFFFFFFFFFFFFF8 | 6) + ((-17 - v10) | v10) - *(*(*(a4 + 16) - 8) + 64));
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v9 < a2)
  {
    v15 = ~v9 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_50:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
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
  if (v9 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *a1 = v20;
  }

  else
  {
    v21 = *(v6 + 56);
    v22 = (v10 + (((&a1[(v10 | 7) + 8] & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10;

    v21(v22);
  }
}

unint64_t sub_1C59CEA48()
{
  result = qword_1EC192308;
  if (!qword_1EC192308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192310, &qword_1C5BD49D0);
    sub_1C5924F54(&qword_1EC192318, &qword_1EC192320, &qword_1C5BD49D8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192308);
  }

  return result;
}

uint64_t sub_1C59CEC34(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t sub_1C59CECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ScopePicker.ScopeButtons(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  return sub_1C59CEE68(v4 + ((((v7 + 32) & ~v7) + *(*(v6 - 8) + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v6);
}

uint64_t sub_1C59CEDB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C59CEE00(uint64_t a1)
{
  v2 = sub_1C5BCA874();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59CEE68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_1C5BCA864();
  return sub_1C5BCA824();
}

uint64_t sub_1C59CEF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59CEF7C(uint64_t a1, __n128 a2)
{
  result = sub_1C5BCA864();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C59CF00C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}