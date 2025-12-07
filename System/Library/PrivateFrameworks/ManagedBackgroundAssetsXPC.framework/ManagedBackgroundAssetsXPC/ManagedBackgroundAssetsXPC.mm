uint64_t RemoteCallTarget.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDC0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_29EBAFCE0();
    sub_29EBAF730();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t RemoteCallTarget.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDE0();
  sub_29EBAF710();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_29EBAFCF0();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_29EB90478(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDC0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_29EBAFCE0();
    sub_29EBAF730();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EB9052C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDE0();
  sub_29EBAF710();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_29EBAFCF0();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29EB905F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EB90610(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_29EB90664(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t Result<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v31 = *(a2 + 24);
  v30 = *(v31 - 8);
  v6 = MEMORY[0x2A1C7C4A8](a1);
  v26 = *(v8 + 16);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v26 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v24 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885100, "z-");
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v24 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB90A54();
  sub_29EBAFDF0();
  (*(v12 + 16))(v14, v32, a2);
  v19 = (v16 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v30;
    v20 = v31;
    v22 = v27;
    (*(v30 + 32))(v27, v14, v31);
    v34 = 1;
  }

  else
  {
    v22 = v24;
    v21 = v25;
    v20 = v26;
    (*(v25 + 32))(v24, v14, v26);
    v33 = 0;
  }

  sub_29EBAFC80();
  (*(v21 + 8))(v22, v20);
  return (*v19)(v18, v15);
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

unint64_t sub_29EB90A54()
{
  result = qword_2A1885108;
  if (!qword_2A1885108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885108);
  }

  return result;
}

uint64_t Result<>.init(from:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a7@<X8>)
{
  v74 = a5;
  v75 = a4;
  v62 = a7;
  v66 = *(a3 - 8);
  v10 = MEMORY[0x2A1C7C4A8](a1);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29EBAFA80();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v63 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v72 = &v58 - v17;
  v18 = sub_29EBAFA80();
  v70 = *(v18 - 8);
  v71 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v64 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v77 = &v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885110, &unk_29EBB0528);
  v76 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v58 - v23;
  v69 = a3;
  v25 = sub_29EBAFDB0();
  v61 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v58 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB90A54();
  v28 = v78;
  sub_29EBAFDD0();
  if (!v28)
  {
    v59 = v27;
    v78 = v25;
    v29 = v73;
    v80 = 0;
    v30 = v77;
    sub_29EBAFBE0();
    v79 = 1;
    sub_29EBAFBE0();
    v74 = v24;
    v75 = v22;
    v33 = v70;
    v32 = v71;
    v34 = v64;
    (*(v70 + 16))(v64, v30, v71);
    v35 = v29;
    v36 = v29[6];
    v37 = v36(v34, 1, a2);
    if (v37 == 1)
    {
      v58 = v36;
      v65 = a2;
      v39 = *(v33 + 8);
      v38 = v33 + 8;
      v73 = v39;
      (v39)(v34, v32);
      v41 = v67;
      v40 = v68;
      v42 = v63;
      (*(v67 + 16))(v63, v72, v68);
      v43 = v66;
      v44 = v69;
      if ((*(v66 + 48))(v42, 1) == 1)
      {
        v45 = *(v41 + 8);
        v45(v42, v40);
        sub_29EB9137C();
        swift_allocError();
        *v46 = 1;
        swift_willThrow();
        (*(v76 + 8))(v74, v75);
        v45(v72, v40);
        (v73)(v77, v71);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v70 = v38;
      v50 = v60;
      v51 = v44;
      v64 = *(v43 + 32);
      (v64)(v60, v42, v44);
      v52 = v77;
      v53 = v58(v77, 1, v65);
      v54 = v76;
      if (v53 != 1)
      {
        sub_29EB9137C();
        swift_allocError();
        *v57 = 0;
        swift_willThrow();
        (*(v43 + 8))(v50, v51);
        (*(v54 + 8))(v74, v75);
        (*(v67 + 8))(v72, v68);
        (v73)(v52, v71);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v76 + 8))(v74, v75);
      (*(v67 + 8))(v72, v68);
      (v73)(v52, v71);
      v49 = v59;
      (v64)(v59, v50, v51);
    }

    else
    {
      v47 = v35[4];
      v47(v65, v34, a2);
      v48 = v72;
      if ((*(v66 + 48))(v72, 1, v69) != 1)
      {
        sub_29EB9137C();
        swift_allocError();
        *v56 = 0;
        swift_willThrow();
        (v35[1])(v65, a2);
        (*(v76 + 8))(v74, v75);
        (*(v67 + 8))(v48, v68);
        (*(v70 + 8))(v77, v71);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v76 + 8))(v74, v75);
      (*(v67 + 8))(v48, v68);
      (*(v70 + 8))(v77, v71);
      v49 = v59;
      v47(v59, v65, a2);
    }

    v55 = v78;
    swift_storeEnumTagMultiPayload();
    (*(v61 + 32))(v62, v49, v55);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_29EB9137C()
{
  result = qword_2A1885118;
  if (!qword_2A1885118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885118);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncAddressedEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SyncAddressedEnvelope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29EB915D0()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_29EB91604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29EB916F8(uint64_t a1)
{
  v2 = sub_29EB90A54();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB91734(uint64_t a1)
{
  v2 = sub_29EB90A54();

  return MEMORY[0x2A1C73280](a1, v2);
}

unint64_t sub_29EB91774()
{
  result = qword_2A1885120;
  if (!qword_2A1885120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885120);
  }

  return result;
}

uint64_t sub_29EB917CC()
{
  v1 = *v0;
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](v1);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB91814(uint64_t a1)
{
  v2 = *v1;
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](v2);
  return sub_29EBAFDA0();
}

unint64_t sub_29EB91858()
{
  if (*v0)
  {
    return 0xD000000000000031;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

unint64_t sub_29EB918A4()
{
  result = qword_2A1885128;
  if (!qword_2A1885128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885128);
  }

  return result;
}

unint64_t sub_29EB9190C()
{
  result = qword_2A1885130;
  if (!qword_2A1885130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885130);
  }

  return result;
}

unint64_t sub_29EB91964()
{
  result = qword_2A1885138;
  if (!qword_2A1885138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885138);
  }

  return result;
}

uint64_t static XPCActorID.Role.Location.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v40 = *(a3 - 8);
  v4 = MEMORY[0x2A1C7C4A8](a1);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v34 = &v33 - v6;
  v41[0] = v7;
  v41[1] = v8;
  v41[2] = v9;
  v41[3] = v10;
  v37 = v10;
  v11 = type metadata accessor for XPCActorID.Role.Location(0, v41);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v33 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2);
  v22 = &v33 - v21;
  v23 = *(v20 + 48);
  v36 = v12;
  v24 = *(v12 + 16);
  v24(&v33 - v21, v38, v11);
  v24(&v22[v23], v39, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24(v17, v22, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v40;
      v31 = v34;
      (*(v40 + 32))(v34, &v22[v23], a3);
      v27 = sub_29EBAF920();
      v28 = *(v30 + 8);
      v28(v31, a3);
      v29 = v17;
      goto LABEL_6;
    }

LABEL_8:
    (*(v40 + 8))(v17, a3);
    v27 = 0;
    v11 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v24(v15, v22, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = v15;
    goto LABEL_8;
  }

  v25 = v40;
  v26 = v35;
  (*(v40 + 32))(v35, &v22[v23], a3);
  v27 = sub_29EBAF920();
  v28 = *(v25 + 8);
  v28(v26, a3);
  v29 = v15;
LABEL_6:
  v28(v29, a3);
  v19 = v36;
LABEL_9:
  (*(v19 + 8))(v22, v11);
  return v27 & 1;
}

uint64_t sub_29EB91DC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_29EBAFCD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_29EBAFCD0();

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

uint64_t sub_29EB91EC0(char a1)
{
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](a1 & 1);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB91F08(char a1)
{
  if (a1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_29EB91F38(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_29EBAFCD0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_29EB91FE8(uint64_t a1)
{
  sub_29EBAFD80();
  sub_29EB91E98(v3, *v1);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB92048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EB91DC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EB9207C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_29EB980EC();
  *a2 = result;
  return result;
}

uint64_t sub_29EB920B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73278](a1, WitnessTable);
}

uint64_t sub_29EB92104(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73280](a1, WitnessTable);
}

uint64_t sub_29EB921B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73278](a1, WitnessTable);
}

uint64_t sub_29EB9220C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73280](a1, WitnessTable);
}

uint64_t sub_29EB92260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EB91F38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_29EB92298@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_29EB922D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73278](a1, WitnessTable);
}

uint64_t sub_29EB9232C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73280](a1, WitnessTable);
}

uint64_t XPCActorID.Role.Location.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v59 = a2[2];
  v5 = v59;
  v60 = v4;
  v61 = v7;
  v62 = v6;
  v50 = type metadata accessor for XPCActorID.Role.Location.RemoteCodingKeys(255, &v59);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_29EBAFC90();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v49 = &v40 - v9;
  v59 = v5;
  v60 = v4;
  v61 = v7;
  v62 = v6;
  v10 = type metadata accessor for XPCActorID.Role.Location.LocalCodingKeys(255, &v59);
  v11 = swift_getWitnessTable();
  v45 = v10;
  v43 = v11;
  v12 = sub_29EBAFC90();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v44 = &v40 - v14;
  v53 = *(v5 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v42 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v41 = &v40 - v18;
  v19 = *(a2 - 1);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v5;
  v59 = v5;
  v60 = v4;
  v58 = v7;
  v61 = v7;
  v62 = v6;
  type metadata accessor for XPCActorID.Role.Location.CodingKeys(255, &v59);
  swift_getWitnessTable();
  v22 = sub_29EBAFC90();
  v23 = *(v22 - 8);
  v54 = v22;
  v55 = v23;
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v40 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v53;
  sub_29EBAFDF0();
  (*(v19 + 16))(v21, v57, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = *(v26 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v29 = v42;
    v30 = v21;
    v31 = v56;
    v28(v42, v30, v56);
    LOBYTE(v59) = 1;
    v32 = v49;
    v33 = v54;
    sub_29EBAFC40();
    v34 = v52;
    sub_29EBAFC80();
    (*(v51 + 8))(v32, v34);
    v35 = v29;
  }

  else
  {
    v35 = v41;
    v36 = v21;
    v31 = v56;
    v28(v41, v36, v56);
    LOBYTE(v59) = 0;
    v37 = v44;
    v33 = v54;
    sub_29EBAFC40();
    v38 = v47;
    sub_29EBAFC80();
    (*(v46 + 8))(v37, v38);
  }

  (*(v26 + 8))(v35, v31);
  return (*(v55 + 8))(v25, v33);
}

uint64_t XPCActorID.Role.Location.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  v12 = swift_getEnumCaseMultiPayload() == 1;
  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x29EDAAA50](v12);
  sub_29EBAF910();
  return (*(v4 + 8))(v7, v3);
}

uint64_t XPCActorID.Role.Location.hashValue.getter(uint64_t a1)
{
  sub_29EBAFD80();
  XPCActorID.Role.Location.hash(into:)(v3, a1);
  return sub_29EBAFDA0();
}

uint64_t XPCActorID.Role.Location.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v74 = a1;
  v62 = a6;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  v10 = type metadata accessor for XPCActorID.Role.Location.RemoteCodingKeys(255, &v72);
  WitnessTable = swift_getWitnessTable();
  v59 = v10;
  v54 = sub_29EBAFC30();
  v53 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54);
  v60 = &v48 - v11;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  v12 = type metadata accessor for XPCActorID.Role.Location.LocalCodingKeys(255, &v72);
  v13 = swift_getWitnessTable();
  v56 = v12;
  v55 = v13;
  v52 = sub_29EBAFC30();
  v51 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52);
  v57 = &v48 - v14;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  type metadata accessor for XPCActorID.Role.Location.CodingKeys(255, &v72);
  v68 = swift_getWitnessTable();
  v66 = sub_29EBAFC30();
  v64 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v16 = &v48 - v15;
  v63 = a2;
  *&v72 = a2;
  *(&v72 + 1) = a3;
  v67 = a3;
  *&v73 = a4;
  *(&v73 + 1) = a5;
  v17 = type metadata accessor for XPCActorID.Role.Location(0, &v72);
  v61 = *(v17 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = &v48 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v48 - v24;
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v65 = v16;
  v26 = v69;
  sub_29EBAFDD0();
  if (!v26)
  {
    v50 = v20;
    v68 = v23;
    v49 = v25;
    v69 = v17;
    v27 = v66;
    v28 = v64;
    v29 = v65;
    *&v70 = sub_29EBAFC20();
    sub_29EBAF9C0();
    swift_getWitnessTable();
    *&v72 = sub_29EBAFAA0();
    *(&v72 + 1) = v30;
    *&v73 = v31;
    *(&v73 + 1) = v32;
    sub_29EBAFA90();
    swift_getWitnessTable();
    sub_29EBAFA20();
    v33 = v70;
    if (v70 == 2 || (v48 = v72, v70 = v72, v71 = v73, (sub_29EBAFA30() & 1) == 0))
    {
      v38 = sub_29EBAFB30();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885150, &qword_29EBB0800);
      *v40 = v69;
      sub_29EBAFBC0();
      sub_29EBAFB20();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x29EDC9DB8], v38);
      swift_willThrow();
      (*(v28 + 8))(v29, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        LOBYTE(v70) = 1;
        v34 = v60;
        sub_29EBAFBB0();
        v35 = v62;
        v36 = v50;
        v37 = v54;
        sub_29EBAFC10();
        (*(v53 + 8))(v34, v37);
        (*(v28 + 8))(v29, v27);
        swift_unknownObjectRelease();
        v44 = v69;
        swift_storeEnumTagMultiPayload();
        v45 = v61;
      }

      else
      {
        LOBYTE(v70) = 0;
        v41 = v57;
        sub_29EBAFBB0();
        v45 = v61;
        v36 = v68;
        v42 = v52;
        sub_29EBAFC10();
        (*(v51 + 8))(v41, v42);
        (*(v28 + 8))(v29, v27);
        swift_unknownObjectRelease();
        v44 = v69;
        swift_storeEnumTagMultiPayload();
        v35 = v62;
      }

      v46 = *(v45 + 32);
      v47 = v49;
      v46(v49, v36, v44);
      v46(v35, v47, v44);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_29EB9330C(uint64_t a1, uint64_t a2)
{
  sub_29EBAFD80();
  XPCActorID.Role.Location.hash(into:)(v4, a2);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB9338C(uint64_t a1)
{
  v2 = sub_29EB96E6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB933C8(uint64_t a1)
{
  v2 = sub_29EB96E6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EB93404()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_29EB93430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29EB93504(uint64_t a1)
{
  v2 = sub_29EB96D7C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB93540(uint64_t a1)
{
  v2 = sub_29EB96D7C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EB9357C()
{
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](0);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB935C0(uint64_t a1)
{
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](0);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB93600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29EBAFCD0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29EB93688(uint64_t a1)
{
  v2 = sub_29EB96DD0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB936C4(uint64_t a1)
{
  v2 = sub_29EB96DD0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t XPCActorID.Role.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885158, &qword_29EBB0808);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885160, &qword_29EBB0810);
  v21 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885168, &qword_29EBB0818);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v18 - v9;
  v11 = *v1;
  v22 = v1[1];
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB96D7C();
  sub_29EBAFDF0();
  if (v12 < 0)
  {
    LOBYTE(v25) = 1;
    sub_29EB96DD0();
    v15 = v18;
    v16 = v24;
    sub_29EBAFC40();
    v25 = v11;
    v26 = v22;
    v27 = v12 & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885180, &qword_29EBB0820);
    sub_29EB96EC8(&qword_2A1885188, &qword_2A1885180, &qword_29EBB0820, &protocol conformance descriptor for XPCActorID.Role.Location<A>);
    v17 = v20;
    sub_29EBAFC80();
    (*(v19 + 8))(v15, v17);
    return (*(v23 + 8))(v10, v16);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_29EB96E6C();
    v13 = v24;
    sub_29EBAFC40();
    v25 = v11;
    v26 = v22;
    LOBYTE(v27) = v12 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885198, &qword_29EBB0828);
    sub_29EB96EC8(&qword_2A18851A0, &qword_2A1885198, &qword_29EBB0828, &protocol conformance descriptor for XPCActorID.Role.Location<A>);
    sub_29EBAFC80();
    (*(v21 + 8))(v7, v5);
    return (*(v23 + 8))(v10, v13);
  }
}

uint64_t XPCActorID.Role.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  if ((v4 & 0x80000000) == 0)
  {
    MEMORY[0x29EDAAA50](0);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_5:
    MEMORY[0x29EDAAA50](0);
    goto LABEL_8;
  }

  MEMORY[0x29EDAAA50](1);
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  MEMORY[0x29EDAAA50](1);
LABEL_8:
  sub_29EB96EC0(v3, v2);
  sub_29EBAF970();
}

uint64_t XPCActorID.Role.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_29EBAFD80();
  XPCActorID.Role.hash(into:)(v3);
  return sub_29EBAFDA0();
}

uint64_t XPCActorID.Role.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851A8, &qword_29EBB0830);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851B0, &qword_29EBB0838);
  v29 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851B8, &qword_29EBB0840);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v27 - v11;
  v13 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_29EB96D7C();
  v14 = v32;
  sub_29EBAFDD0();
  if (!v14)
  {
    v32 = v6;
    v15 = v31;
    v16 = sub_29EBAFC20();
    if (*(v16 + 16) == 1)
    {
      if (*(v16 + 32))
      {
        LOBYTE(v33) = 1;
        sub_29EB96DD0();
        sub_29EBAFBB0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885180, &qword_29EBB0820);
        sub_29EB96EC8(&qword_2A18851C0, &qword_2A1885180, &qword_29EBB0820, &protocol conformance descriptor for XPCActorID.Role.Location<A>);
        sub_29EBAFC10();
        (*(v30 + 8))(v5, v15);
        (*(v10 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v17 = v33;
        if (v35)
        {
          v18 = 256;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 | v34 | 0x8000;
      }

      else
      {
        LOBYTE(v33) = 0;
        sub_29EB96E6C();
        v23 = v8;
        sub_29EBAFBB0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885198, &qword_29EBB0828);
        sub_29EB96EC8(&qword_2A18851C8, &qword_2A1885198, &qword_29EBB0828, &protocol conformance descriptor for XPCActorID.Role.Location<A>);
        v25 = v32;
        sub_29EBAFC10();
        (*(v29 + 8))(v23, v25);
        (*(v10 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v17 = v33;
        v19 = v34;
      }

      v26 = v28;
      *v28 = v17;
      *(v26 + 8) = v19;
    }

    else
    {
      v20 = sub_29EBAFB30();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885150, &qword_29EBB0800);
      *v22 = &type metadata for XPCActorID.Role;
      sub_29EBAFBC0();
      sub_29EBAFB20();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x29EDC9DB8], v20);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_29EB941AC()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_29EBAFD80();
  XPCActorID.Role.hash(into:)(v3);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB94204(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_29EBAFD80();
  XPCActorID.Role.hash(into:)(v4);
  return sub_29EBAFDA0();
}

uint64_t XPCActorID.description.getter()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD000000000000016, 0x800000029EBB4C40);
  sub_29EBAFB50();
  MEMORY[0x29EDAA640](0x20657571696E7520, 0xEC000000203A4449);
  type metadata accessor for XPCActorID(0);
  sub_29EBAF6E0();
  sub_29EB98158(&qword_2A18851D0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
  v0 = sub_29EBAFCA0();
  MEMORY[0x29EDAA640](v0);

  MEMORY[0x29EDAA640](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_29EB943BC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_29EBAF6E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v30 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v30 - v11;
  v36 = a1;
  v13 = *a1;
  sub_29EBAF6D0();
  v37 = v5;
  v14 = *(v5 + 32);
  v41 = a2;
  v32 = v5 + 32;
  v33 = v12;
  v31 = v14;
  v14(a2, v12, v4);
  v40 = v13;
  if (*(v13 + 16))
  {
    v34 = sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v38 = v37 + 16;
    v39 = v40 + 56;
    v15 = (v37 + 8);
    do
    {
      v16 = v40;
      v17 = sub_29EBAF900();
      v18 = -1 << *(v16 + 32);
      v19 = v17 & ~v18;
      if (((*(v39 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      v21 = *(v37 + 72);
      v22 = *(v37 + 16);
      while (1)
      {
        v22(v10, *(v40 + 48) + v21 * v19, v4);
        sub_29EB98158(&qword_2A18854D0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
        v23 = sub_29EBAF920();
        v24 = *v15;
        (*v15)(v10, v4);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v39 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v25 = v33;
      sub_29EBAF6D0();
      v26 = v41;
      v24(v41, v4);
      v31(v26, v25, v4);
    }

    while (*(v40 + 16));
  }

LABEL_9:
  v27 = v37;
  v28 = v35;
  (*(v37 + 16))(v35, v41, v4);
  sub_29EB95E8C(v10, v28);
  return (*(v27 + 8))(v10, v4);
}

uint64_t XPCActorID.init(remoteClientID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29EBAF6E0();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  if (qword_2A18850B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2A1885140);
  sub_29EB943BC(&qword_2A1885148, v9);
  os_unfair_lock_unlock(&dword_2A1885140);
  v10 = type metadata accessor for XPCActorID(0);
  return (*(v7 + 32))(a3 + *(v10 + 20), v9, v6);
}

uint64_t XPCActorID.init(remoteServerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29EBAF6E0();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16) | 0x8100;
  *a2 = *a1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  if (qword_2A18850B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2A1885140);
  sub_29EB943BC(&qword_2A1885148, v7);
  os_unfair_lock_unlock(&dword_2A1885140);
  v10 = type metadata accessor for XPCActorID(0);
  return (*(v5 + 32))(a2 + *(v10 + 20), v7, v4);
}

uint64_t sub_29EB94994@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29EBAF6E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21[-v8];
  v10 = type metadata accessor for XPCActorID(0);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v21[-v14];
  v16 = *v1;
  v17 = *(v1 + 8);
  v18 = *(v1 + 16);
  if (v18 < 0)
  {
    if ((v18 & 0x100) != 0)
    {
      *v13 = v16;
      *(v13 + 1) = v17;
      *(v13 + 8) = v18 & 0x8001;
      sub_29EB96EC0(v16, v17);
      if (qword_2A18850B0 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_2A1885140);
      sub_29EB943BC(&qword_2A1885148, v7);
      os_unfair_lock_unlock(&dword_2A1885140);
      (*(v4 + 32))(&v13[*(v10 + 20)], v7, v3);
      v19 = v13;
      return sub_29EB980F4(v19, a1);
    }
  }

  else if (v18)
  {
    *v15 = v16;
    *(v15 + 1) = v17;
    *(v15 + 8) = 0;
    sub_29EB96EC0(v16, v17);
    if (qword_2A18850B0 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_2A1885140);
    sub_29EB943BC(&qword_2A1885148, v9);
    os_unfair_lock_unlock(&dword_2A1885140);
    (*(v4 + 32))(&v15[*(v10 + 20)], v9, v3);
    v19 = v15;
    return sub_29EB980F4(v19, a1);
  }

  return sub_29EB9707C(v1, a1);
}

uint64_t XPCActorID.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  if ((v4 & 0x80000000) == 0)
  {
    MEMORY[0x29EDAAA50](0);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_5:
    MEMORY[0x29EDAAA50](0);
    goto LABEL_8;
  }

  MEMORY[0x29EDAAA50](1);
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  MEMORY[0x29EDAAA50](1);
LABEL_8:
  sub_29EB96EC0(v3, v2);
  sub_29EBAF970();
}

uint64_t static XPCActorID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 8);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v4 = a2[1];
  v5 = *(a2 + 8);
  v8 = *a2;
  v9 = v4;
  v10 = v5;
  sub_29EB96F5C(v11, v2, v3, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v8, v4, v5, sub_29EB96EC0, sub_29EB96EC0);
  v6 = _s26ManagedBackgroundAssetsXPC10XPCActorIDV4RoleO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_29EB96F5C(v8, v9, v10, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v11, v12, v13, sub_29EB96F78, sub_29EB96F78);
  return v6 & 1;
}

uint64_t sub_29EB94E5C()
{
  if (*v0)
  {
    return 0x4449657571696E75;
  }

  else
  {
    return 1701605234;
  }
}

uint64_t sub_29EB94E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v5 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29EB94F6C(uint64_t a1)
{
  v2 = sub_29EB96F80();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB94FA8(uint64_t a1)
{
  v2 = sub_29EB96F80();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t XPCActorID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851D8, &qword_29EBB0848);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB96F80();
  sub_29EBAFDF0();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v13 = *v3;
  v14 = v9;
  v15 = v10;
  v12[7] = 0;
  sub_29EB96F5C(v13, v9, v10, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96FD4();
  sub_29EBAFC80();
  sub_29EB96F5C(v13, v14, v15, sub_29EB96F78, sub_29EB96F78);
  if (!v2)
  {
    type metadata accessor for XPCActorID(0);
    LOBYTE(v13) = 1;
    sub_29EBAF6E0();
    sub_29EB98158(&qword_2A18851F0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
    sub_29EBAFC80();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t XPCActorID.hashValue.getter()
{
  sub_29EBAFD80();
  XPCActorID.hash(into:)(v1);
  return sub_29EBAFDA0();
}

uint64_t XPCActorID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_29EBAF6E0();
  v18 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851F8, &qword_29EBB0850);
  v20 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v7 = &v17 - v6;
  v8 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB96F80();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v8;
  v11 = v10;
  v13 = v20;
  v12 = v21;
  v25 = 0;
  sub_29EB97028();
  v14 = v22;
  sub_29EBAFC10();
  v15 = v24;
  *v11 = v23;
  *(v11 + 16) = v15;
  LOBYTE(v23) = 1;
  sub_29EB98158(&qword_2A1885208, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
  sub_29EBAFC10();
  (*(v13 + 8))(v7, v14);
  (*(v18 + 32))(v11 + *(v17 + 20), v5, v12);
  sub_29EB9707C(v11, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_29EB970E0(v11);
}

uint64_t sub_29EB955E8()
{
  sub_29EBAFD80();
  XPCActorID.hash(into:)(v1);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB9562C(uint64_t a1)
{
  sub_29EBAFD80();
  XPCActorID.hash(into:)(v2);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB95668(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 8);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v4 = a2[1];
  v5 = *(a2 + 8);
  v8 = *a2;
  v9 = v4;
  v10 = v5;
  sub_29EB96F5C(v11, v2, v3, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v8, v4, v5, sub_29EB96EC0, sub_29EB96EC0);
  v6 = _s26ManagedBackgroundAssetsXPC10XPCActorIDV4RoleO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_29EB96F5C(v8, v9, v10, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v11, v12, v13, sub_29EB96F78, sub_29EB96F78);
  return v6 & 1;
}

uint64_t ServerID.description.getter()
{
  v1 = *v0;

  return v1;
}

ManagedBackgroundAssetsXPC::ServerID __swiftcall ServerID.init(serviceName:machService:)(ManagedBackgroundAssetsXPC::ServerID serviceName, Swift::Bool machService)
{
  *v2 = serviceName.serviceName;
  *(v2 + 16) = machService;
  serviceName.isMachService = machService;
  return serviceName;
}

uint64_t static ServerID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29EBAFCD0();
  }
}

uint64_t sub_29EB957F0()
{
  if (*v0)
  {
    return 0x65536863614D7369;
  }

  else
  {
    return 0x4E65636976726573;
  }
}

uint64_t sub_29EB95840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65536863614D7369 && a2 == 0xED00006563697672)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29EB95928(uint64_t a1)
{
  v2 = sub_29EB9713C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB95964(uint64_t a1)
{
  v2 = sub_29EB9713C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t ServerID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885210, &qword_29EBB0858);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB9713C();
  sub_29EBAFDF0();
  v12 = 0;
  v7 = v9[1];
  sub_29EBAFC60();
  if (!v7)
  {
    v11 = 1;
    sub_29EBAFC70();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ServerID.hashValue.getter()
{
  sub_29EBAFD80();
  sub_29EBAF970();
  return sub_29EBAFDA0();
}

uint64_t ServerID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885220, &qword_29EBB0860);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB9713C();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_29EBAFBF0();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_29EBAFC00();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EB95D90()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_29EB95DC0()
{
  sub_29EBAFD80();
  sub_29EBAF970();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB95E14(uint64_t a1)
{
  sub_29EBAFD80();
  sub_29EBAF970();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB95E5C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29EBAFCD0();
  }
}

uint64_t sub_29EB95E8C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29EBAF6E0();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v33 = a2;
  v11 = sub_29EBAF900();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29EB98158(&qword_2A18854D0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v21 = sub_29EBAF920();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29EB964C8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29EB9616C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_29EBAF6E0();
  v3 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854D8, &qword_29EBB1E30);
  result = sub_29EBAFAD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29EBAF900();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_29EB964C8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_29EBAF6E0();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29EB9616C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29EBA1A00();
      goto LABEL_12;
    }

    sub_29EB9676C(v10 + 1);
  }

  v12 = *v3;
  sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v13 = sub_29EBAF900();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_29EB98158(&qword_2A18854D0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v21 = sub_29EBAF920();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29EBAFD10();
  __break(1u);
  return result;
}

uint64_t sub_29EB9676C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_29EBAF6E0();
  v3 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854D8, &qword_29EBB1E30);
  v7 = sub_29EBAFAD0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29EBAF900();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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
    *v2 = v7;
  }

  return result;
}

uint64_t _s26ManagedBackgroundAssetsXPC10XPCActorIDV4RoleO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 8);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 8);
  if ((v4 & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) != 0)
    {
      sub_29EB96F5C(*a2, a2[1], v7, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v3, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v3, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v6, v5, v7, sub_29EB96EC0, sub_29EB96EC0);
      v8 = sub_29EB9A1E4(v3, v2, v4 & 0x1FF, v6, v5, v7 & 0x1FF);
      goto LABEL_7;
    }

LABEL_5:
    sub_29EB96F5C(*a1, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v6, v5, v7, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v3, v2, v4, sub_29EB96F78, sub_29EB96F78);
    sub_29EB96F5C(v6, v5, v7, sub_29EB96F78, sub_29EB96F78);
    return 0;
  }

  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  sub_29EB96F5C(*a2, a2[1], v7, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v3, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v3, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v6, v5, v7, sub_29EB96EC0, sub_29EB96EC0);
  v8 = sub_29EB99F84(v3, v2, v4 & 1, v6, v5, v7 & 1);
LABEL_7:
  v10 = v8;
  sub_29EB96F5C(v3, v2, v4, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v6, v5, v7, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v6, v5, v7, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v3, v2, v4, sub_29EB96F78, sub_29EB96F78);
  return v10 & 1;
}

unint64_t sub_29EB96D7C()
{
  result = qword_2A1885170;
  if (!qword_2A1885170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885170);
  }

  return result;
}

unint64_t sub_29EB96DD0()
{
  result = qword_2A1885178;
  if (!qword_2A1885178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885178);
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

unint64_t sub_29EB96E6C()
{
  result = qword_2A1885190;
  if (!qword_2A1885190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885190);
  }

  return result;
}

uint64_t sub_29EB96EC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for XPCActorID(uint64_t a1)
{
  result = qword_2A1885240;
  if (!qword_2A1885240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EB96F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if ((a3 & 0x8000) != 0)
  {
    return a5(a1, a2, a3, (a3 >> 8) & 1);
  }

  else
  {
    return a4(a1, a2, a3 & 1);
  }
}

unint64_t sub_29EB96F80()
{
  result = qword_2A18851E0;
  if (!qword_2A18851E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18851E0);
  }

  return result;
}

unint64_t sub_29EB96FD4()
{
  result = qword_2A18851E8;
  if (!qword_2A18851E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18851E8);
  }

  return result;
}

unint64_t sub_29EB97028()
{
  result = qword_2A1885200;
  if (!qword_2A1885200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885200);
  }

  return result;
}

uint64_t sub_29EB9707C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB970E0(uint64_t a1)
{
  v2 = type metadata accessor for XPCActorID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29EB9713C()
{
  result = qword_2A1885218;
  if (!qword_2A1885218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885218);
  }

  return result;
}

unint64_t sub_29EB971B0()
{
  result = qword_2A1885228;
  if (!qword_2A1885228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885228);
  }

  return result;
}

unint64_t sub_29EB97250()
{
  result = qword_2A1885238;
  if (!qword_2A1885238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885238);
  }

  return result;
}

uint64_t sub_29EB972B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 126)
  {
    v4 = *(a1 + 16);
    if (((v4 >> 8) & 0x7E) != 0)
    {
      return 128 - ((v4 >> 8) & 0x7E | (v4 >> 15));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_29EBAF6E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29EB97380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 126)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 1) & 0x3F) - (a2 << 6)) << 9;
  }

  else
  {
    v7 = sub_29EBAF6E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29EB97430(uint64_t a1)
{
  result = sub_29EBAF6E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EB974E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 18))
  {
    return (*a1 + 127);
  }

  v3 = (HIBYTE(*(a1 + 16)) & 0x7E | (*(a1 + 16) >> 15)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_29EB97538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 1) & 0x3F) - (a2 << 6)) << 9;
    }
  }

  return result;
}

uint64_t sub_29EB975C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EB9762C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_29EB97738(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EB978F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_29EB97940(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for XPCInvocationError.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCInvocationError.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_29EB97B20()
{
  result = qword_2A1885450;
  if (!qword_2A1885450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885450);
  }

  return result;
}

unint64_t sub_29EB97B78()
{
  result = qword_2A1885458;
  if (!qword_2A1885458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885458);
  }

  return result;
}

unint64_t sub_29EB97BD0()
{
  result = qword_2A1885460;
  if (!qword_2A1885460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885460);
  }

  return result;
}

unint64_t sub_29EB97C28()
{
  result = qword_2A1885468;
  if (!qword_2A1885468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885468);
  }

  return result;
}

unint64_t sub_29EB97C80()
{
  result = qword_2A1885470;
  if (!qword_2A1885470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885470);
  }

  return result;
}

unint64_t sub_29EB97CD8()
{
  result = qword_2A1885478;
  if (!qword_2A1885478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885478);
  }

  return result;
}

unint64_t sub_29EB97D30()
{
  result = qword_2A1885480;
  if (!qword_2A1885480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885480);
  }

  return result;
}

unint64_t sub_29EB97D88()
{
  result = qword_2A1885488;
  if (!qword_2A1885488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885488);
  }

  return result;
}

unint64_t sub_29EB97DE0()
{
  result = qword_2A1885490;
  if (!qword_2A1885490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885490);
  }

  return result;
}

unint64_t sub_29EB97E38()
{
  result = qword_2A1885498;
  if (!qword_2A1885498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885498);
  }

  return result;
}

unint64_t sub_29EB97E90()
{
  result = qword_2A18854A0;
  if (!qword_2A18854A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854A0);
  }

  return result;
}

unint64_t sub_29EB97EE8()
{
  result = qword_2A18854A8;
  if (!qword_2A18854A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854A8);
  }

  return result;
}

unint64_t sub_29EB97F40()
{
  result = qword_2A18854B0;
  if (!qword_2A18854B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854B0);
  }

  return result;
}

unint64_t sub_29EB97F98()
{
  result = qword_2A18854B8;
  if (!qword_2A18854B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854B8);
  }

  return result;
}

unint64_t sub_29EB97FF0()
{
  result = qword_2A18854C0;
  if (!qword_2A18854C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854C0);
  }

  return result;
}

uint64_t sub_29EB980F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB98158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t XPCInvocationEncoder.recordGenericSubstitution<A>(_:)(uint64_t a1)
{
  v3 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x29EDC9B40], MEMORY[0x29EDC9908]);
  if (v3)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    v9 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29EB9886C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_29EB9886C((v11 > 1), v12 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v12 + 1;
    v13 = (v9 + 24 * v12);
    v13[4] = v6;
    v13[5] = v7;
    v13[6] = v8;
    *v1 = v9;
  }

  else
  {
    type metadata accessor for XPCActorSystemError(0);
    sub_29EB98378();
    swift_allocError();
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_29EB98378()
{
  result = qword_2A18854E0;
  if (!qword_2A18854E0)
  {
    type metadata accessor for XPCActorSystemError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854E0);
  }

  return result;
}

uint64_t XPCInvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v5 = swift_conformsToProtocol();
  v6 = *(a2 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EBAF750();
  sub_29EBAF740();
  v9 = sub_29EBA4524(v8, a2, v5);
  v11 = v10;
  result = (*(v6 + 8))(v8, a2);
  if (!v3)
  {
    v13 = *(v2 + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29EB98988(0, *(v13 + 16) + 1, 1, v13);
      v13 = result;
    }

    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_29EB98988((v14 > 1), v15 + 1, 1, v13);
      v13 = result;
    }

    *(v13 + 16) = v15 + 1;
    v16 = v13 + 16 * v15;
    *(v16 + 32) = v9;
    *(v16 + 40) = v11;
    *(v2 + 8) = v13;
  }

  return result;
}

uint64_t XPCInvocationEncoder.recordReturnType<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_conformsToProtocol();
  result = swift_conformsToProtocol();
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = result;
  return result;
}

uint64_t XPCInvocationEncoder.recordErrorType<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a3;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XPCInvocationEncoder.doneRecording()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x29EDCA190];
  if (v3)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_29EB98C84(0, v3, 0);
    v5 = 0;
    v4 = v18;
    v6 = (v2 + 32);
    while (v5 < *(v2 + 16))
    {
      v7 = *v6;
      v8 = sub_29EBAFB60();
      if (!v9)
      {
        type metadata accessor for XPCActorSystemError(0);
        sub_29EB98378();
        swift_allocError();
        *v15 = v7;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        v16 = v9;
        v17 = v8;
        sub_29EB98C84((v10 > 1), v11 + 1, 1);
        v9 = v16;
        v8 = v17;
      }

      ++v5;
      *(v18 + 16) = v11 + 1;
      v12 = v18 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v6 += 3;
      if (v3 == v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v13 = v1[1];
    type metadata accessor for Envelope();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v13;

    v1[7] = v14;
  }
}

uint64_t sub_29EB9877C(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCInvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t sub_29EB987F4(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCInvocationEncoder.recordReturnType<A>(_:)(a1, a2);
}

char *sub_29EB9886C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885510, &unk_29EBB16F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_29EB98988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885508, &qword_29EBB16E8);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29EB98A94(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854E8, &qword_29EBB16C8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0) - 8);
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

char *sub_29EB98C84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29EB98CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EB98CA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29EB98DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EB98CC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885500, &qword_29EBB16E0);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29EB98DD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F8, &qword_29EBB16D8);
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
    v10 = MEMORY[0x29EDCA190];
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29EB98EE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29EB98F30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t XPCResultHandler.onReturn<A>(value:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_conformsToProtocol();
  *(v3 + 32) = swift_conformsToProtocol();
  *(v3 + 40) = *v2;

  return MEMORY[0x2A1C73D48](sub_29EB99028, 0, 0);
}

uint64_t sub_29EB99028()
{
  v1 = sub_29EBA4524(v0[2], v0[3], v0[4]);
  v2 = v0[5];
  v3 = v1;
  v5 = v4;
  sub_29EB9943C(v1, v4);
  v2(v3, v5, 0);
  sub_29EB99490(v3, v5);
  sub_29EB99490(v3, v5);
  v7 = v0[1];

  return v7();
}

uint64_t XPCResultHandler.onThrow<A>(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = sub_29EB99B10(a1, a2, a3);
  v4(v5);
}

uint64_t sub_29EB99180(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EB99244;

  return XPCResultHandler.onReturn<A>(value:)(a1, a2);
}

uint64_t sub_29EB99244()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29EB99338()
{
  (*v0)(0, 0xC000000000000000, 0);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_29EB993C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  XPCResultHandler.onThrow<A>(error:)(a1, a2, a3);
  v4 = *(v3 + 8);

  return v4();
}

void sub_29EB9943C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_29EB99490(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCActorSystem.Actors(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for XPCActorSystem.Actors(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EB99584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_29EB995E0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29EB99644()
{
  result = qword_2A1885518;
  if (!qword_2A1885518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885518);
  }

  return result;
}

uint64_t sub_29EB996B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000029EBB4C60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29EBAFCD0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29EB99748(uint64_t a1)
{
  v2 = sub_29EB99ABC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB99784(uint64_t a1)
{
  v2 = sub_29EB99ABC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EB997C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885520, &qword_29EBB18D8);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB99ABC();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_29EBAFBD0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_29EB9993C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885530, &qword_29EBB18E0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB99ABC();
  sub_29EBAFDF0();
  sub_29EBAFC50();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_29EB99ABC()
{
  result = qword_2A1885528;
  if (!qword_2A1885528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885528);
  }

  return result;
}

unint64_t sub_29EB99B50()
{
  result = qword_2A1885538;
  if (!qword_2A1885538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885538);
  }

  return result;
}

unint64_t sub_29EB99BA8()
{
  result = qword_2A1885540;
  if (!qword_2A1885540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885540);
  }

  return result;
}

unint64_t sub_29EB99C00()
{
  result = qword_2A1885548;
  if (!qword_2A1885548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885548);
  }

  return result;
}

uint64_t XPCInvocationDecoder.decodeGenericSubstitutions()()
{
  v1 = *(*v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v14 = MEMORY[0x29EDCA190];

  result = sub_29EB98CA4(0, v2, 0);
  v5 = 0;
  v3 = v14;
  v6 = (v1 + 40);
  while (v5 < *(v1 + 16))
  {
    v8 = *(v6 - 1);
    v7 = *v6;

    v9 = sub_29EBAFB00();
    if (!v9)
    {

      type metadata accessor for XPCActorSystemError(0);
      sub_29EB98378();
      swift_allocError();
      *v13 = v8;
      v13[1] = v7;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return v3;
    }

    v10 = v9;

    v12 = *(v14 + 16);
    v11 = *(v14 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_29EB98CA4((v11 > 1), v12 + 1, 1);
    }

    ++v5;
    *(v14 + 16) = v12 + 1;
    *(v14 + 8 * v12 + 32) = v10;
    v6 += 2;
    if (v2 == v5)
    {

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCInvocationDecoder.decodeNextArgument<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_conformsToProtocol();
  result = swift_conformsToProtocol();
  v7 = v2[1];
  v8 = *(*v2 + 24);
  if (v7 >= *(v8 + 16))
  {
    type metadata accessor for XPCActorSystemError(0);
    sub_29EB98378();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
    v12 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = v8 + 16 * v7;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      sub_29EB9943C(v10, v11);
      sub_29EB9A6D0(v11, a1, v5, a2);
      result = sub_29EB99490(v10, v11);
      v12 = v7 + 1;
LABEL_5:
      v2[1] = v12;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EB99F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCInvocationDecoder.decodeNextArgument<A>()(a1, a2);
}

uint64_t sub_29EB99F84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a1 == a4 && a2 == a5)
      {
        sub_29EB96EC0(a1, a5);
        sub_29EB96EC0(a1, a5);
        sub_29EB96EC0(a1, a5);
      }

      else
      {
        v16 = sub_29EBAFCD0();
        sub_29EB96EC0(a1, a2);
        sub_29EB96EC0(a4, a5);
        sub_29EB96EC0(a1, a2);

        if ((v16 & 1) == 0)
        {
          v10 = a1;
          v11 = a2;
          goto LABEL_8;
        }
      }

      v14 = a1;
      v15 = a2;
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if ((a6 & 1) == 0)
  {
LABEL_7:
    sub_29EB96EC0(a1, a2);
    sub_29EB96EC0(a4, a5);
    sub_29EB96EC0(a1, a2);

    sub_29EB96F78(a1, a2);
    v10 = a4;
    v11 = a5;
    goto LABEL_8;
  }

  if (a1 != a4 || a2 != a5)
  {
    v13 = sub_29EBAFCD0();
    sub_29EB96EC0(a1, a2);
    sub_29EB96EC0(a4, a5);
    sub_29EB96EC0(a1, a2);

    if (v13)
    {
      goto LABEL_13;
    }

    v10 = a1;
    v11 = a2;
LABEL_8:
    sub_29EB96F78(v10, v11);
    return 0;
  }

  sub_29EB96EC0(a1, a5);
  sub_29EB96EC0(a1, a5);
  sub_29EB96EC0(a1, a5);

LABEL_13:
  v14 = a1;
  v15 = a2;
LABEL_16:
  sub_29EB96F78(v14, v15);
  return 1;
}

uint64_t sub_29EB9A1E4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) == 0)
    {
      if (a1 == a4 && a2 == a5)
      {
        sub_29EB96EC0(a1, a5);
        sub_29EB96EC0(a1, a5);
        sub_29EB96EC0(a1, a5);
      }

      else
      {
        v16 = sub_29EBAFCD0();
        sub_29EB96EC0(a1, a2);
        sub_29EB96EC0(a4, a5);
        sub_29EB96EC0(a1, a2);

        if ((v16 & 1) == 0)
        {
          v10 = a1;
          v11 = a2;
          goto LABEL_8;
        }
      }

      v14 = a1;
      v15 = a2;
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if ((a6 & 0x100) == 0)
  {
LABEL_7:
    sub_29EB96EC0(a1, a2);
    sub_29EB96EC0(a4, a5);
    sub_29EB96EC0(a1, a2);

    sub_29EB96F78(a1, a2);
    v10 = a4;
    v11 = a5;
    goto LABEL_8;
  }

  if (a1 != a4 || a2 != a5)
  {
    v13 = sub_29EBAFCD0();
    sub_29EB96EC0(a1, a2);
    sub_29EB96EC0(a4, a5);
    sub_29EB96EC0(a1, a2);

    if (v13)
    {
      goto LABEL_13;
    }

    v10 = a1;
    v11 = a2;
LABEL_8:
    sub_29EB96F78(v10, v11);
    return 0;
  }

  sub_29EB96EC0(a1, a5);
  sub_29EB96EC0(a1, a5);
  sub_29EB96EC0(a1, a5);

LABEL_13:
  v14 = a1;
  v15 = a2;
LABEL_16:
  sub_29EB96F78(v14, v15);
  return 1;
}

uint64_t sub_29EB9A4B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_29EBAF6E0();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_29EBA59E4(&qword_2A18854C8, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]), v7 = sub_29EBAF900(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v17 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v16 = ~v8;
    v10 = v4 + 16;
    v11 = *(v4 + 16);
    v12 = *(v10 + 56);
    v13 = (v10 - 8);
    do
    {
      v11(v6, *(a2 + 48) + v12 * v9, v3);
      sub_29EBA59E4(&qword_2A18854D0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v14 = sub_29EBAF920();
      (*v13)(v6, v3);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v16;
    }

    while (((*(v17 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_29EB9A6D0@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for XPCActorSystem.Coder.Container(0, a3, a2, a3);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v13 - v10;
  if (qword_2A18850C0 != -1)
  {
    swift_once();
  }

  v13[1] = a4;
  swift_getWitnessTable();
  result = sub_29EBAF6B0();
  if (!v5)
  {
    return (*(*(a3 - 8) + 32))(a5, v11, a3);
  }

  return result;
}

uint64_t XPCActorSystem.Role.hashValue.getter()
{
  sub_29EBAFD80();
  sub_29EBAF970();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB9A88C()
{
  sub_29EBA543C(v0 + 16);

  return MEMORY[0x2A1C73398](v0, 32, 7);
}

uint64_t sub_29EB9A8C4()
{
  v0 = sub_29EBAF780();
  __swift_allocate_value_buffer(v0, qword_2A1885550);
  __swift_project_value_buffer(v0, qword_2A1885550);
  return sub_29EBAF770();
}

uint64_t sub_29EB9A944(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F0, &qword_29EBB1E20);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = (v72 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v72 - v11;
  v13 = type metadata accessor for XPCActorID(0);
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v21 = v72 - v20;
  if (!a1)
  {
    v12 = v18;
    if (qword_2A18850D0 == -1)
    {
LABEL_7:
      v37 = sub_29EBAF780();
      __swift_project_value_buffer(v37, qword_2A1885578);
      v38 = sub_29EBAFA40();
      sub_29EB9707C(a3, v16);
      v39 = sub_29EBAF760();
      if (os_log_type_enabled(v39, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v78[0] = v41;
        *v40 = 136446210;
        v42 = XPCActorID.description.getter();
        v43 = a3;
        v45 = v44;
        sub_29EBA4E98(v16, type metadata accessor for XPCActorID);
        v46 = sub_29EBA1458(v42, v45, v78);
        a3 = v43;

        *(v40 + 4) = v46;
        _os_log_impl(&dword_29EB8F000, v39, v38, "Resigning the key “%{public}s”…", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x29EDAAF90](v41, -1, -1);
        MEMORY[0x29EDAAF90](v40, -1, -1);
      }

      else
      {

        sub_29EBA4E98(v16, type metadata accessor for XPCActorID);
      }

      sub_29EB9B0C4(a3);

      if (qword_2A18850B0 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_2A1885140);
      sub_29EBA1C38(a3 + *(v12 + 5), v8);
      sub_29EBA597C(v8);
      os_unfair_lock_unlock(&dword_2A1885140);
      return sub_29EBA4E98(a3, type metadata accessor for XPCActorID);
    }

LABEL_35:
    swift_once();
    goto LABEL_7;
  }

  v76 = a2;
  v74 = v19;
  v72[1] = v18;
  v22 = qword_2A18850D0;
  swift_unknownObjectRetain();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_29EBAF780();
  __swift_project_value_buffer(v23, qword_2A1885578);
  v24 = sub_29EBAFA40();
  sub_29EB9707C(a3, v21);
  v25 = sub_29EBAF760();
  if (os_log_type_enabled(v25, v24))
  {
    v26 = swift_slowAlloc();
    v75 = v12;
    v27 = v9;
    v28 = v24;
    v29 = v26;
    v78[0] = swift_slowAlloc();
    v73 = v10;
    v30 = v78[0];
    *v29 = 136446210;
    v31 = XPCActorID.description.getter();
    v33 = v32;
    sub_29EBA4E98(v21, type metadata accessor for XPCActorID);
    v34 = sub_29EBA1458(v31, v33, v78);

    *(v29 + 4) = v34;
    v35 = v28;
    v9 = v27;
    v12 = v75;
    _os_log_impl(&dword_29EB8F000, v25, v35, "Registering a distributed actor for the key “%{public}s”…", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v36 = v30;
    v10 = v73;
    MEMORY[0x29EDAAF90](v36, -1, -1);
    MEMORY[0x29EDAAF90](v29, -1, -1);
  }

  else
  {

    sub_29EBA4E98(v21, type metadata accessor for XPCActorID);
  }

  v8 = v77;
  ObjectType = swift_getObjectType();
  type metadata accessor for XPCActorSystem.Actors.WeakActorContainer();
  v48 = sub_29EBA4730(a1, ObjectType, v76);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = *v8;
  sub_29EBAF250(v48, a3, isUniquelyReferenced_nonNull_native);
  *v8 = v78[0];
  if (*(v8[1] + 16))
  {
    sub_29EBA21F4(a3);
    if (v50)
    {
    }

    else
    {
      v51 = MEMORY[0x29EDCA190];
    }
  }

  else
  {
    v51 = MEMORY[0x29EDCA190];
  }

  v75 = a1;
  v52 = *(v51 + 16);
  if (v52)
  {
    v72[2] = v51;
    v73 = a3;
    v55 = *(v10 + 16);
    v53 = v10 + 16;
    v54 = v55;
    v56 = v51 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
    v57 = *(v53 + 56);
    v58 = (v53 - 8);
    v59 = v12;
    v12 = v75;
    v60 = v76;
    do
    {
      v54(v59, v56, v9);
      v78[0] = v12;
      v78[1] = v60;
      swift_unknownObjectRetain();
      sub_29EBAF9F0();
      (*v58)(v59, v9);
      v56 += v57;
      --v52;
    }

    while (v52);

    a3 = v73;
    v8 = v77;
  }

  else
  {
  }

  v61 = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = v8[1];
  v62 = v78[0];
  v16 = sub_29EBA21F4(a3);
  v64 = v62[2];
  v65 = (v63 & 1) == 0;
  v66 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
    __break(1u);
    goto LABEL_35;
  }

  v67 = v63;
  if (v62[3] >= v66)
  {
    if (v61)
    {
      v8[1] = v62;
      if (v63)
      {
LABEL_28:
        *(v62[7] + 8 * v16) = MEMORY[0x29EDCA190];
        swift_unknownObjectRelease_n();

        return sub_29EBA4E98(a3, type metadata accessor for XPCActorID);
      }
    }

    else
    {
      sub_29EBA3EC4();
      v62 = v78[0];
      v8[1] = v78[0];
      if (v67)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    v70 = v74;
    sub_29EB9707C(a3, v74);
    sub_29EBA3B74(v16, v70, MEMORY[0x29EDCA190], v62);
    goto LABEL_28;
  }

  sub_29EBA3218(v66, v61);
  v62 = v78[0];
  v68 = sub_29EBA21F4(a3);
  if ((v67 & 1) == (v69 & 1))
  {
    v16 = v68;
    v8[1] = v62;
    if (v67)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  result = sub_29EBAFD20();
  __break(1u);
  return result;
}

uint64_t sub_29EB9B0C4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29EBA21F4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_29EBA3CAC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for XPCActorID(0);
  sub_29EBA4E98(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for XPCActorID);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_29EBAED5C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_29EB9B188(char *a1, uint64_t a2)
{
  v52 = type metadata accessor for XPCActorID(0);
  v4 = MEMORY[0x2A1C7C4A8](v52);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v50 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v50 - v15;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v17 = sub_29EBAF780();
  __swift_project_value_buffer(v17, qword_2A1885578);
  v18 = sub_29EBAFA40();
  v19 = *(v9 + 16);
  v54 = a1;
  v58 = v19;
  v19(v16, a1, v8);
  v56 = a2;
  sub_29EB9707C(a2, v7);
  v20 = sub_29EBAF760();
  if (os_log_type_enabled(v20, v18))
  {
    v21 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v59 = v51;
    *v21 = 136446466;
    v58(v14, v16, v8);
    v22 = sub_29EBAF950();
    v24 = v23;
    (*(v9 + 8))(v16, v8);
    v25 = sub_29EBA1458(v22, v24, &v59);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = XPCActorID.description.getter();
    v28 = v27;
    sub_29EBA4E98(v7, type metadata accessor for XPCActorID);
    v29 = sub_29EBA1458(v26, v28, &v59);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_29EB8F000, v20, v18, "Attaching the continuation “%{public}s” for the key “%{public}s”…", v21, 0x16u);
    v30 = v51;
    swift_arrayDestroy();
    MEMORY[0x29EDAAF90](v30, -1, -1);
    MEMORY[0x29EDAAF90](v21, -1, -1);
  }

  else
  {

    sub_29EBA4E98(v7, type metadata accessor for XPCActorID);
    (*(v9 + 8))(v16, v8);
  }

  v31 = v8;
  v32 = v57;
  v58(v57, v54, v8);
  v33 = v55;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v33 + 8);
  v35 = v59;
  v36 = v56;
  v38 = sub_29EBA21F4(v56);
  v39 = v35[2];
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    __break(1u);
    goto LABEL_19;
  }

  v42 = v37;
  if (v35[3] >= v41)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v33 + 8) = v35;
      if (v37)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_29EBA3EC4();
      v35 = v59;
      *(v33 + 8) = v59;
      if (v42)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    v45 = v53;
    sub_29EB9707C(v36, v53);
    sub_29EBA3B74(v38, v45, MEMORY[0x29EDCA190], v35);
    goto LABEL_14;
  }

  sub_29EBA3218(v41, isUniquelyReferenced_nonNull_native);
  v35 = v59;
  v43 = sub_29EBA21F4(v36);
  if ((v42 & 1) != (v44 & 1))
  {
    result = sub_29EBAFD20();
    __break(1u);
    return result;
  }

  v38 = v43;
  *(v33 + 8) = v35;
  if ((v42 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  isUniquelyReferenced_nonNull_native = v35[7];
  v35 = *(isUniquelyReferenced_nonNull_native + 8 * v38);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v38) = v35;
  if ((v46 & 1) == 0)
  {
LABEL_19:
    v35 = sub_29EB98A94(0, v35[2] + 1, 1, v35);
    *(isUniquelyReferenced_nonNull_native + 8 * v38) = v35;
  }

  v48 = v35[2];
  v47 = v35[3];
  if (v48 >= v47 >> 1)
  {
    v35 = sub_29EB98A94((v47 > 1), v48 + 1, 1, v35);
    *(isUniquelyReferenced_nonNull_native + 8 * v38) = v35;
  }

  v35[2] = v48 + 1;
  return (*(v9 + 32))(v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v48, v32, v31);
}

uint64_t sub_29EB9B6E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_29EBAFCD0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_29EB9B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EB9B6E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_29EB9B79C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29EB92158();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29EB9B7CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73278](a1, WitnessTable);
}

uint64_t sub_29EB9B820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73280](a1, WitnessTable);
}

uint64_t sub_29EB9B8DC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t XPCActorSystem.role.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_29EBA44D4(v2, v3, v4, v5, v6);
}

uint64_t XPCActorSystem.description.getter()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD00000000000001ALL, 0x800000029EBB4C80);
  sub_29EBAFB50();
  MEMORY[0x29EDAA640](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_29EB9B9F4()
{
  v0 = sub_29EBAF780();
  __swift_allocate_value_buffer(v0, qword_2A1885578);
  __swift_project_value_buffer(v0, qword_2A1885578);
  return sub_29EBAF770();
}

uint64_t XPCActorSystem.__allocating_init(role:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  XPCActorSystem.init(role:)(a1);
  return v2;
}

uint64_t XPCActorSystem.init(role:)(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v10 = MEMORY[0x29EDCA190];
  v11 = sub_29EBA4794(MEMORY[0x29EDCA190]);
  v12 = sub_29EBA4964(v10);
  *(v4 + 56) = 0;
  *(v4 + 64) = v11;
  *(v4 + 72) = v12;
  *(v4 + 16) = v6;
  *(v4 + 24) = v5;
  *(v4 + 32) = v8;
  *(v4 + 40) = v7;
  *(v4 + 48) = v9;
  if (v8 < 0)
  {
    v17 = qword_2A18850E8;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1889A80;
    swift_retain_n();
    os_unfair_lock_lock((v18 + 16));
    v23[0] = v6;
    v23[1] = v5;
    v24 = v8 & 1;
    swift_unownedRetainStrong();

    swift_unownedRetain();
    swift_unownedRetain();

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    type metadata accessor for Connection();
    swift_allocObject();
    swift_retain_n();

    v20 = sub_29EBAA968(v23, &unk_29EBB1AA8, v4, sub_29EBA4BE4, v4, v7, v9, sub_29EBA4C38, v19);
    if (v3)
    {
      swift_unownedRelease();
      os_unfair_lock_unlock((v18 + 16));

      return v4;
    }

    v22 = v20;

    swift_unownedRelease();
    *(v18 + 24) = v22;
    os_unfair_lock_unlock((v18 + 16));
  }

  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v13 = sub_29EBAF780();
  __swift_project_value_buffer(v13, qword_2A1885578);
  v14 = sub_29EBAFA40();
  v15 = sub_29EBAF760();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_29EB8F000, v15, v14, "The XPC distributed actor system has been initialized.", v16, 2u);
    MEMORY[0x29EDAAF90](v16, -1, -1);
  }

  return v4;
}

uint64_t sub_29EB9BDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBA5F94;

  return sub_29EB9BE64(a1, a2, a3);
}

uint64_t sub_29EB9BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = *v3;
  type metadata accessor for XPCActorID(0);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB9BF20, 0, 0);
}

uint64_t sub_29EB9BF20()
{
  v17 = v0;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v1 = sub_29EBAF780();
  __swift_project_value_buffer(v1, qword_2A1885578);
  v2 = sub_29EBAFA40();

  v3 = sub_29EBAF760();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;

    v6 = sub_29EBA6D44();
    v8 = v7;

    v9 = sub_29EBA1458(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_29EB8F000, v3, v2, "Handling the message in the envelope “%{public}s”…", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x29EDAAF90](v5, -1, -1);
    MEMORY[0x29EDAAF90](v4, -1, -1);
  }

  v10 = v0[14];
  v11 = v0[12];
  sub_29EB94994(v10);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855C8, &unk_29EBB1DF8);
  *v13 = v0;
  v13[1] = sub_29EB9C194;

  return MEMORY[0x2A1C73C70](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x800000029EBB4D60, sub_29EBA5464, v12, v14);
}

uint64_t sub_29EB9C194()
{

  return MEMORY[0x2A1C73D48](sub_29EB9C2AC, 0, 0);
}

uint64_t sub_29EB9C2AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 136) = v5;
  *(v0 + 40) = 0;
  *(v0 + 32) = v2;
  ObjectType = swift_getObjectType();
  *(v0 + 48) = v3;
  v7 = OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target;
  *(v0 + 56) = *(v0 + 88);

  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  v10 = sub_29EBA59E4(&qword_2A18855D0, v9, type metadata accessor for XPCActorSystem, &protocol conformance descriptor for XPCActorSystem);
  *v8 = v0;
  v8[1] = sub_29EB9C418;

  return MEMORY[0x2A1C738C8](v5, v2 + v7, v0 + 32, v0 + 48, v1, ObjectType, v10, v4);
}

uint64_t sub_29EB9C418()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_29EB9C5E0;
  }

  else
  {
    v2 = sub_29EB9C54C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EB9C54C()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();

  sub_29EBA4E98(v1, type metadata accessor for XPCActorID);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EB9C5E0()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();

  sub_29EBA4E98(v1, type metadata accessor for XPCActorID);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EB9C674(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 56));
  v3 = sub_29EBA568C(a1, *(v1 + 64));
  v5 = v4;
  os_unfair_lock_unlock((v1 + 56));
  if (!v3)
  {
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    v13 = swift_allocError();
    sub_29EB9707C(a1, v14);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    ErrorValue = swift_getErrorValue();
    v17 = v25;
    v18 = v26;
    v19 = *(v25 - 8);
    MEMORY[0x2A1C7C4A8](ErrorValue);
    v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21);
    v23 = sub_29EB99B10(v21, v17, v18);
    (*(v19 + 8))(v21, v17);
    MEMORY[0x29EDAADF0](v13);
    return v23;
  }

  ObjectType = swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    v13 = swift_allocError();
    *v15 = v3;
    v15[1] = v5;
    goto LABEL_6;
  }

  v8 = v7;
  v9 = *(a1 + *(type metadata accessor for SyncAddressedEnvelope(0) + 20) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_29EB9FF40(v9, ObjectType, v8, boxed_opaque_existential_1);
  v23 = sub_29EBA4524(boxed_opaque_existential_1, AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v23;
}

uint64_t XPCActorSystem.assignID<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29EBAF6E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22[-v8];
  v10 = type metadata accessor for XPCActorID(0);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v22[-v14];
  v17 = v1[2];
  v16 = v1[3];
  v18 = v1[4];
  if (v18 < 0)
  {

    *v13 = v17;
    *(v13 + 1) = v20;
    *(v13 + 8) = v18 & 1 | 0x8000;
    if (qword_2A18850B0 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_2A1885140);
    sub_29EB943BC(&qword_2A1885148, v7);
    v15 = v13;
    v9 = v7;
  }

  else
  {
    *v15 = v17;
    *(v15 + 1) = v16;
    *(v15 + 8) = 0;
    v19 = qword_2A18850B0;

    if (v19 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_2A1885140);
    sub_29EB943BC(&qword_2A1885148, v9);
  }

  os_unfair_lock_unlock(&dword_2A1885140);
  (*(v4 + 32))(&v15[*(v10 + 20)], v9, v3);
  return sub_29EB980F4(v15, a1);
}

void XPCActorSystem.resignID(_:)(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 56));
  sub_29EB9CCC4((v1 + 64), a1);

  os_unfair_lock_unlock((v1 + 56));
}

uint64_t sub_29EB9CCC4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorID(0);
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v25 - v8;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v10 = sub_29EBAF780();
  __swift_project_value_buffer(v10, qword_2A1885578);
  v11 = sub_29EBAFA40();
  sub_29EB9707C(a2, v9);
  v12 = sub_29EBAF760();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v25 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27[3] = a1;
    v16 = v15;
    v27[0] = v15;
    *v14 = 136446210;
    v17 = XPCActorID.description.getter();
    v26 = v7;
    v19 = v18;
    sub_29EBA4E98(v9, type metadata accessor for XPCActorID);
    v20 = sub_29EBA1458(v17, v19, v27);
    v7 = v26;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_29EB8F000, v12, v11, "Resigning the ID “%{public}s”…", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x29EDAAF90](v16, -1, -1);
    v21 = v14;
    v4 = v25;
    MEMORY[0x29EDAAF90](v21, -1, -1);
  }

  else
  {

    sub_29EBA4E98(v9, type metadata accessor for XPCActorID);
  }

  if (qword_2A18850B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2A1885140);
  v22 = sub_29EB9A4B4(a2 + *(v4 + 20), qword_2A1885148);
  os_unfair_lock_unlock(&dword_2A1885140);
  if (v22)
  {
    sub_29EB9707C(a2, v7);
    return sub_29EB9A944(0, 0, v7);
  }

  else
  {

    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_29EBAFAF0();
    MEMORY[0x29EDAA640](0x1000000000000029, 0x800000029EBB4E00);
    v24 = XPCActorID.description.getter();
    MEMORY[0x29EDAA640](v24);

    MEMORY[0x29EDAA640](0x100000000000001BLL, 0x800000029EBB4E30);
    result = sub_29EBAFB70();
    __break(1u);
  }

  return result;
}

void XPCActorSystem.actorReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  os_unfair_lock_lock((v3 + 56));
  sub_29EB9D0F4((v3 + 64), a1, v7, a2, a3);

  os_unfair_lock_unlock((v3 + 56));
}

uint64_t sub_29EB9D0F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v31);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v12 = sub_29EBAF780();
  __swift_project_value_buffer(v12, qword_2A1885578);
  v13 = sub_29EBAFA40();
  swift_unknownObjectRetain();
  v14 = sub_29EBAF760();
  v15 = os_log_type_enabled(v14, v13);
  v33 = a5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v30[1] = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = a4;
    v19 = v18;
    v35 = v18;
    *v17 = 136446466;
    v34 = a2;
    sub_29EBAFB10();
    v20 = XPCActorID.description.getter();
    v30[0] = a1;
    v22 = v21;
    swift_unknownObjectRelease();
    sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
    v23 = sub_29EBA1458(v20, v22, &v35);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    v24 = sub_29EBAFE20();
    v26 = sub_29EBA1458(v24, v25, &v35);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_29EB8F000, v14, v13, "The distributed actor with the ID “%{public}s” of type “%{public}s” is ready.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAAF90](v19, -1, -1);
    MEMORY[0x29EDAAF90](v17, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v35 = a2;
  sub_29EBAFB10();
  if (qword_2A18850B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2A1885140);
  v27 = sub_29EB9A4B4(&v11[*(v31 + 20)], qword_2A1885148);
  os_unfair_lock_unlock(&dword_2A1885140);
  sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
  if (v27)
  {
    v35 = a2;
    sub_29EBAFB10();
    v28 = swift_unknownObjectRetain();
    return sub_29EB9A944(v28, v33, v11);
  }

  else
  {

    result = sub_29EBAFB70();
    __break(1u);
  }

  return result;
}

void XPCActorSystem.resolve<A>(id:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((v4 + 56));
  sub_29EB9D570((v4 + 64), a1, a2, &v7, &v8);
  sub_29EBAFA80();
  os_unfair_lock_unlock((v4 + 56));
}

void sub_29EB9D570(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X6>, void *a6@<X8>)
{
  v37 = a3;
  v38 = a1;
  v9 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v12 = sub_29EBAF780();
  __swift_project_value_buffer(v12, qword_2A1885578);
  v13 = sub_29EBAFA40();
  sub_29EB9707C(a2, v11);
  v14 = sub_29EBAF760();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v36 = a5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = a6;
    v18 = v17;
    v39[0] = v17;
    *v16 = 136446466;
    v19 = XPCActorID.description.getter();
    v34 = a2;
    v21 = v20;
    sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
    v22 = sub_29EBA1458(v19, v21, v39);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = sub_29EBAFE20();
    v25 = sub_29EBA1458(v23, v24, v39);

    *(v16 + 14) = v25;
    a2 = v34;
    _os_log_impl(&dword_29EB8F000, v14, v13, "Resolving the distributed actor with the ID “%{public}s” as an instance of “%{public}s”…", v16, 0x16u);
    swift_arrayDestroy();
    v26 = v18;
    a6 = v35;
    MEMORY[0x29EDAAF90](v26, -1, -1);
    v27 = v16;
    a5 = v36;
    MEMORY[0x29EDAAF90](v27, -1, -1);

    v28 = *(a2 + 16);
    if (v28 < 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
  v28 = *(a2 + 16);
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v28 & 0x100) != 0)
  {
LABEL_6:
    *a6 = 0;
    return;
  }

LABEL_9:
  v29 = sub_29EBA568C(a2, *v38);
  if (v29 && (v39[0] = v29, v39[1] = v30, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855C8, &unk_29EBB1DF8), (swift_dynamicCast() & 1) != 0))
  {
    *a6 = v39[3];
  }

  else
  {
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    v31 = swift_allocError();
    sub_29EB9707C(a2, v32);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a5 = v31;
  }
}

double XPCActorSystem.makeInvocationEncoder()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x29EDCA190];
  *a1 = MEMORY[0x29EDCA190];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t XPCActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[23] = v13;
  v8[24] = v7;
  v8[21] = a7;
  v8[22] = v12;
  v8[19] = a4;
  v8[20] = a6;
  v8[17] = a2;
  v8[18] = a3;
  v8[16] = a1;
  v8[25] = swift_conformsToProtocol();
  swift_conformsToProtocol();
  type metadata accessor for XPCActorID(0);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v9 = sub_29EBAF720();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB9DA24, 0, 0);
}

uint64_t sub_29EB9DA24()
{
  v52 = v0;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 144);
  v5 = sub_29EBAF780();
  __swift_project_value_buffer(v5, qword_2A1885578);
  v6 = sub_29EBAFA40();
  (*(v2 + 16))(v1, v4, v3);
  swift_unknownObjectRetain_n();
  v7 = sub_29EBAF760();
  v8 = os_log_type_enabled(v7, v6);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 224);
  if (v8)
  {
    v49 = v6;
    v12 = *(v0 + 216);
    v13 = *(v0 + 136);
    v14 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50[0] = v48;
    *v14 = 136446722;
    sub_29EBA59E4(&qword_2A1885590, 255, MEMORY[0x29EDCA2D8], MEMORY[0x29EDCA2E0]);
    v15 = sub_29EBAFCA0();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_29EBA1458(v15, v17, v50);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v0 + 120) = v13;
    sub_29EBAFB10();
    swift_unknownObjectRelease();
    v19 = XPCActorID.description.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    sub_29EBA4E98(v12, type metadata accessor for XPCActorID);
    v22 = sub_29EBA1458(v19, v21, v50);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2082;
    v23 = sub_29EBAFE20();
    v25 = sub_29EBA1458(v23, v24, v50);

    *(v14 + 24) = v25;
    _os_log_impl(&dword_29EB8F000, v7, v49, "Calling “%{public}s” on the distributed actor with the ID “%{public}s”, expecting a return value of type “%{public}s”…", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAAF90](v48, -1, -1);
    MEMORY[0x29EDAAF90](v14, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease_n();

    (*(v10 + 8))(v9, v11);
  }

  if (!*(*(v0 + 152) + 56))
  {
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_18:

    v37 = *(v0 + 8);

    return v37();
  }

  v27 = *(v0 + 208);
  v26 = *(v0 + 216);
  v29 = *(v0 + 136);
  v28 = *(v0 + 144);
  *(v0 + 96) = v29;
  sub_29EBAFB10();
  v30 = sub_29EBA69A4(v26, v28);
  *(v0 + 248) = v30;
  sub_29EBA4E98(v26, type metadata accessor for XPCActorID);
  *(v0 + 104) = v29;
  sub_29EBAFB10();
  v31 = *v27;
  *(v0 + 256) = *v27;
  v32 = *(v27 + 8);
  *(v0 + 264) = v32;
  v33 = *(v27 + 16);
  *(v0 + 312) = *(v27 + 16);
  sub_29EB96F5C(v31, v32, v33, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EBA4E98(v27, type metadata accessor for XPCActorID);
  if ((v33 & 0x80000000) == 0)
  {
    if (v33)
    {
      if (qword_2A18850E8 != -1)
      {
        swift_once();
      }

      v34 = swift_task_alloc();
      *(v0 + 272) = v34;
      *v34 = v0;
      v34[1] = sub_29EB9E2AC;

      return sub_29EBAE470(v30, v31, v32);
    }

    goto LABEL_16;
  }

  if ((v33 & 0x100) == 0)
  {
LABEL_16:
    v36 = *(v0 + 136);
    sub_29EB96F5C(v31, v32, v33, sub_29EB96F78, sub_29EB96F78);
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    swift_allocError();
    *(v0 + 112) = v36;
    sub_29EBAFB10();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v38 = *(v0 + 192);
  if (v38[4] < 0)
  {
    sub_29EB96F5C(v31, v32, v33, sub_29EB96F78, sub_29EB96F78);
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    swift_allocError();
    v41 = v38[2];
    v42 = v38[3];
    v43 = v38[4];
    v44 = v38[5];
    v45 = v38[6];
    *v46 = v41;
    v46[1] = v42;
    v46[2] = v43;
    v46[3] = v44;
    v46[4] = v45;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_29EBA44D4(v41, v42, v43, v44, v45);
    goto LABEL_17;
  }

  v39 = v38[2];
  v40 = v38[3];
  if (qword_2A18850E8 != -1)
  {
    swift_once();
    v38 = *(v0 + 192);
  }

  v50[0] = v31;
  v50[1] = v32;
  v51 = v33 & 1;
  *(v0 + 288) = sub_29EBAE940(v39, v40, v50, &unk_29EBB1AC0, v38);
  v47 = swift_task_alloc();
  *(v0 + 296) = v47;
  *v47 = v0;
  v47[1] = sub_29EB9E414;

  return sub_29EBAC7D0(v30);
}

uint64_t sub_29EB9E2AC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 48) = v3;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = v4;
  *(v6 + 280) = v3;

  if (v3)
  {
    v7 = sub_29EB9E924;
  }

  else
  {
    v8 = *(v6 + 256);
    v9 = *(v6 + 264);
    *(v6 + 315) = a3;
    sub_29EB96F5C(v8, v9, *(v6 + 312), sub_29EB96F78, sub_29EB96F78);
    v7 = sub_29EB9E7D4;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EB9E414(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 88) = v3;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  *(v6 + 56) = v4;
  *(v6 + 304) = v3;

  if (v3)
  {
    v7 = sub_29EB9E6F8;
  }

  else
  {
    *(v6 + 314) = a3;
    v7 = sub_29EB9E54C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EB9E54C()
{
  v1 = *(v0 + 314);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 312);

  sub_29EB96F5C(v5, v4, v6, sub_29EB96F78, sub_29EB96F78);
  if (v1)
  {
    sub_29EB99644();
    swift_allocError();
    *v7 = v2;
    v7[1] = v3;
    swift_willThrow();

LABEL_5:

    v9 = *(v0 + 8);
    goto LABEL_6;
  }

  v8 = *(v0 + 304);
  sub_29EB9A6D0(v3, *(v0 + 176), *(v0 + 200), *(v0 + 128));
  if (v8)
  {

    sub_29EBA4D28(v2, v3, 0);
    goto LABEL_5;
  }

  sub_29EBA4D28(v2, v3, 0);

  v9 = *(v0 + 8);
LABEL_6:

  return v9();
}

uint64_t sub_29EB9E6F8()
{

  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 312);

  sub_29EB96F5C(v2, v1, v3, sub_29EB96F78, sub_29EB96F78);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29EB9E7D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 315))
  {
    sub_29EB99644();
    swift_allocError();
    *v3 = v1;
    v3[1] = v2;
    swift_willThrow();

LABEL_5:

    v5 = *(v0 + 8);
    goto LABEL_6;
  }

  v4 = *(v0 + 280);
  sub_29EB9A6D0(*(v0 + 32), *(v0 + 176), *(v0 + 200), *(v0 + 128));
  if (v4)
  {

    sub_29EBA4D28(v1, v2, 0);
    goto LABEL_5;
  }

  sub_29EBA4D28(v1, v2, 0);

  v5 = *(v0 + 8);
LABEL_6:

  return v5();
}

uint64_t sub_29EB9E924()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 312);

  sub_29EB96F5C(v1, v2, v3, sub_29EB96F78, sub_29EB96F78);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29EB9E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EB99244;

  return sub_29EB9BE64(a1, a2, a3);
}

uint64_t XPCActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a3;
  v8[9] = a5;
  v8[6] = a1;
  v8[7] = a2;
  type metadata accessor for XPCActorID(0);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v9 = sub_29EBAF720();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB9EB9C, 0, 0);
}

uint64_t sub_29EB9EB9C()
{
  v49 = v0;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  v5 = sub_29EBAF780();
  __swift_project_value_buffer(v5, qword_2A1885578);
  v6 = sub_29EBAFA40();
  (*(v2 + 16))(v1, v4, v3);
  swift_unknownObjectRetain_n();
  v7 = sub_29EBAF760();
  v8 = os_log_type_enabled(v7, v6);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  if (v8)
  {
    v12 = *(v0 + 104);
    v46 = v6;
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47[0] = v45;
    *v14 = 136446466;
    sub_29EBA59E4(&qword_2A1885590, 255, MEMORY[0x29EDCA2D8], MEMORY[0x29EDCA2E0]);
    v15 = sub_29EBAFCA0();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_29EBA1458(v15, v17, v47);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v0 + 40) = v13;
    sub_29EBAFB10();
    swift_unknownObjectRelease();
    v19 = XPCActorID.description.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    sub_29EBA4E98(v12, type metadata accessor for XPCActorID);
    v22 = sub_29EBA1458(v19, v21, v47);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_29EB8F000, v7, v46, "Calling “%{public}s” on the distributed actor with the ID “%{public}s”…", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAAF90](v45, -1, -1);
    MEMORY[0x29EDAAF90](v14, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease_n();

    (*(v10 + 8))(v9, v11);
  }

  if (!*(*(v0 + 64) + 56))
  {
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_18:

    v34 = *(v0 + 8);

    return v34();
  }

  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  *(v0 + 16) = v26;
  sub_29EBAFB10();
  v27 = sub_29EBA69A4(v23, v25);
  *(v0 + 136) = v27;
  sub_29EBA4E98(v23, type metadata accessor for XPCActorID);
  *(v0 + 24) = v26;
  sub_29EBAFB10();
  v28 = *v24;
  *(v0 + 144) = *v24;
  v29 = *(v24 + 8);
  *(v0 + 152) = v29;
  v30 = *(v24 + 16);
  *(v0 + 200) = *(v24 + 16);
  sub_29EB96F5C(v28, v29, v30, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EBA4E98(v24, type metadata accessor for XPCActorID);
  if ((v30 & 0x80000000) == 0)
  {
    if (v30)
    {
      if (qword_2A18850E8 != -1)
      {
        swift_once();
      }

      v31 = swift_task_alloc();
      *(v0 + 160) = v31;
      *v31 = v0;
      v31[1] = sub_29EB9F3EC;

      return sub_29EBAE470(v27, v28, v29);
    }

    goto LABEL_16;
  }

  if ((v30 & 0x100) == 0)
  {
LABEL_16:
    v33 = *(v0 + 48);
    sub_29EB96F5C(v28, v29, v30, sub_29EB96F78, sub_29EB96F78);
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    swift_allocError();
    *(v0 + 32) = v33;
    sub_29EBAFB10();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v35 = *(v0 + 88);
  if (v35[4] < 0)
  {
    sub_29EB96F5C(v28, v29, v30, sub_29EB96F78, sub_29EB96F78);
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    swift_allocError();
    v38 = v35[2];
    v39 = v35[3];
    v40 = v35[4];
    v41 = v35[5];
    v42 = v35[6];
    *v43 = v38;
    v43[1] = v39;
    v43[2] = v40;
    v43[3] = v41;
    v43[4] = v42;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_29EBA44D4(v38, v39, v40, v41, v42);
    goto LABEL_17;
  }

  v36 = v35[2];
  v37 = v35[3];
  if (qword_2A18850E8 != -1)
  {
    swift_once();
    v35 = *(v0 + 88);
  }

  v47[0] = v28;
  v47[1] = v29;
  v48 = v30 & 1;
  *(v0 + 176) = sub_29EBAE940(v36, v37, v47, &unk_29EBB1AD8, v35);
  v44 = swift_task_alloc();
  *(v0 + 184) = v44;
  *v44 = v0;
  v44[1] = sub_29EB9F5F4;

  return sub_29EBAC7D0(v27);
}

uint64_t sub_29EB9F3EC(uint64_t a1, unint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 168) = v3;

  if (v3)
  {
    v9 = sub_29EB9F8E4;
  }

  else
  {
    v11 = *(v8 + 144);
    v10 = *(v8 + 152);
    v12 = *(v8 + 200);
    sub_29EBA4D28(a1, a2, a3 & 1);
    sub_29EB96F5C(v11, v10, v12, sub_29EB96F78, sub_29EB96F78);
    v9 = sub_29EB9F56C;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29EB9F56C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EB9F5F4(uint64_t a1, unint64_t a2, char a3)
{
  *(*v4 + 192) = v3;

  if (v3)
  {
    v8 = sub_29EB9F808;
  }

  else
  {
    sub_29EBA4D28(a1, a2, a3 & 1);
    v8 = sub_29EB9F72C;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29EB9F72C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 200);

  sub_29EB96F5C(v1, v2, v3, sub_29EB96F78, sub_29EB96F78);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29EB9F808()
{

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 200);

  sub_29EB96F5C(v2, v1, v3, sub_29EB96F78, sub_29EB96F78);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29EB9F8E4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 200);

  sub_29EB96F5C(v1, v2, v3, sub_29EB96F78, sub_29EB96F78);

  v4 = *(v0 + 8);

  return v4();
}

void sub_29EB9F9AC(char *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a2 + 56));
  if (sub_29EBA568C(a3, *(a2 + 64)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0);
    sub_29EBAF9F0();
  }

  else
  {
    sub_29EB9B188(a1, a3);
  }

  os_unfair_lock_unlock((a2 + 56));
}

void XPCActorSystem.send<A, B>(_:to:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a1;
  v60 = a5;
  v52 = a7;
  v53 = a4;
  v57 = a3;
  v10 = sub_29EBAF6E0();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for XPCActorID(0);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = v46 - v18;
  v20 = type metadata accessor for SyncAddressedEnvelope(0);
  v21 = MEMORY[0x2A1C7C4A8](v20);
  v54 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7[4] < 0)
  {
    type metadata accessor for XPCActorSystemError(0);
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
    swift_allocError();
    v29 = v7[2];
    v30 = v7[3];
    v31 = v7[4];
    v32 = v7[5];
    v33 = v7[6];
    *v34 = v29;
    v34[1] = v30;
    v34[2] = v31;
    v34[3] = v32;
    v34[4] = v33;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_29EBA44D4(v29, v30, v31, v32, v33);
  }

  else
  {
    v46[0] = a6;
    v23 = *a2;
    v24 = a2[1];
    v25 = *(a2 + 16);
    v26 = v7[3];
    v49 = v7[2];
    v50 = v21;
    v48 = v26;
    v51 = v23;
    if (qword_2A18850E8 != -1)
    {
      swift_once();
      v23 = v51;
    }

    v46[1] = qword_2A1889A80;
    v47 = v25;
    *v17 = v23;
    *(v17 + 1) = v24;
    *(v17 + 8) = v25 | 0x8100;
    v27 = qword_2A18850B0;

    if (v27 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_2A1885140);
    v28 = v55;
    sub_29EB943BC(&qword_2A1885148, v13);
    if (v28)
    {
      os_unfair_lock_unlock(&dword_2A1885140);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(&dword_2A1885140);
      (*(v11 + 32))(&v17[*(v14 + 20)], v13, v10);
      sub_29EB980F4(v17, v19);
      v35 = sub_29EBA4524(v56, v57, v60);
      v37 = v36;
      v38 = v54;
      sub_29EB980F4(v19, v54);
      v39 = (v38 + *(v50 + 20));
      *v39 = v35;
      v39[1] = v37;
      v58[0] = v51;
      v58[1] = v24;
      v59 = v47;

      sub_29EBAE940(v49, v48, v58, &unk_29EBB1AE8, v7);
      v40 = sub_29EBACE4C(v38);
      v42 = v41;
      v44 = v43;

      sub_29EBA4E98(v38, type metadata accessor for SyncAddressedEnvelope);
      if (v44)
      {
        sub_29EB99644();
        swift_allocError();
        *v45 = v40;
        v45[1] = v42;
        swift_willThrow();
      }

      else
      {
        sub_29EB9943C(v40, v42);
        sub_29EB9A6D0(v42, v53, v46[0], v52);
        sub_29EBA4D28(v40, v42, 0);
        sub_29EBA4D28(v40, v42, 0);
      }
    }
  }
}

uint64_t sub_29EB9FF40@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v12 = v15 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_29EB9A6D0(a2, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  if (!v5)
  {
    (*(a4 + 64))(v12, a3, a4);
    return (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t *XPCActorSystem.deinit()
{
  sub_29EBA4EF8(v0[2], v0[3], v0[4], v0[5], v0[6]);
  sub_29EBA4F48(v0 + 8);
  return v0;
}

uint64_t XPCActorSystem.__deallocating_deinit()
{
  sub_29EBA4EF8(v0[2], v0[3], v0[4], v0[5], v0[6]);
  sub_29EBA4F48(v0 + 8);

  return MEMORY[0x2A1C73398](v0, 80, 7);
}

uint64_t XPCActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EBA0154, 0, 0);
}

uint64_t sub_29EBA0154()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[3], v0[3], MEMORY[0x29EDC9B40], MEMORY[0x29EDC9908]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_29EBA5F98;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_29EBA0228(v1, v9, v7, v8, v1, v3, v5);
}

uint64_t sub_29EBA0228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v7[11] = *(a5 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBA02E8, 0, 0);
}

uint64_t sub_29EBA02E8()
{
  v5 = *(v0 + 48);
  sub_29EBAF9A0();
  *(v0 + 16) = v5;
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_29EBA03B0;
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);

  return XPCResultHandler.onReturn<A>(value:)(v2, v3);
}

uint64_t sub_29EBA03B0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_29EBA0544;
  }

  else
  {
    v2 = sub_29EBA04C4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EBA04C4()
{
  (*(v0[11] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29EBA0544()
{
  (*(v0[11] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29EBA05C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v28 = *(a2 - 8);
  v29 = a3;
  MEMORY[0x2A1C7C4A8](a1);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCActorSystem.Coder.Container.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v10 = sub_29EBAFC30();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v23 - v11;
  v15 = type metadata accessor for XPCActorSystem.Coder.Container(0, a2, v13, v14);
  v24 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v31;
  sub_29EBAFDD0();
  if (!v18)
  {
    v31 = v15;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    sub_29EBAFC10();
    (*(v19 + 8))(v12, v20);
    (*(v21 + 32))(v17, v30, a2);
    (*(v24 + 32))(v25, v17, v31);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EBA088C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a3;
  type metadata accessor for XPCActorSystem.Coder.Container.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = sub_29EBAFC90();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDF0();
  sub_29EBAFC80();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29EBA09F4()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD00000000000001ALL, 0x800000029EBB4C80);
  sub_29EBAFB50();
  MEMORY[0x29EDAA640](62, 0xE100000000000000);
  return 0;
}

double sub_29EBA0B2C@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x29EDCA190];
  *a1 = MEMORY[0x29EDCA190];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_29EBA0B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_29EBA5F94;

  return XPCActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(a1, a2, a3, a4, v16, a6, a7);
}

uint64_t sub_29EBA0C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_29EBA5F94;

  return XPCActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, v14, a5, v15, a7);
}

uint64_t sub_29EBA0D20(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EBA0D48, 0, 0);
}

uint64_t sub_29EBA0D48()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[3], v0[3], MEMORY[0x29EDC9B40], MEMORY[0x29EDC9908]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_29EBA0E1C;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_29EBA0228(v1, v9, v7, v8, v1, v3, v5);
}

uint64_t sub_29EBA0E1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static DistributedActor<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for XPCActorID(0);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v18 - v10;
  v21 = a1;
  sub_29EBAFB10();
  v21 = a2;
  sub_29EBAFB10();
  v12 = *(v11 + 1);
  v13 = *(v11 + 8);
  v21 = *v11;
  v22 = v12;
  v23 = v13;
  v15 = *(v9 + 1);
  v16 = *(v9 + 8);
  v18 = *v9;
  v14 = v18;
  v19 = v15;
  v20 = v16;
  sub_29EB96F5C(v21, v12, v13, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v14, v15, v16, sub_29EB96EC0, sub_29EB96EC0);
  LOBYTE(v14) = _s26ManagedBackgroundAssetsXPC10XPCActorIDV4RoleO2eeoiySbAE_AEtFZ_0(&v21, &v18);
  sub_29EBA4E98(v9, type metadata accessor for XPCActorID);
  sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
  sub_29EB96F5C(v18, v19, v20, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v21, v22, v23, sub_29EB96F78, sub_29EB96F78);
  return v14 & 1;
}

uint64_t SyncMessageHandler.send(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v5 = v4;
  v22 = a4;
  v8 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = v4;
  v21 = *(*(a3 + 8) + 16);
  sub_29EBAFB10();
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 8);
  sub_29EB96F5C(*v10, v12, v13, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EBA4E98(v10, type metadata accessor for XPCActorID);
  if ((v13 & 0x80000000) != 0)
  {
    sub_29EBAF700();
    v21 = v26;
    v24[0] = v11;
    v24[1] = v12;
    v25 = v13 & 1;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = swift_getAssociatedConformanceWitness();
    XPCActorSystem.send<A, B>(_:to:)(v23, v24, AssociatedTypeWitness, v17, AssociatedConformanceWitness, v19, v22);

    return sub_29EB96F5C(v11, v12, v13, sub_29EB96F78, sub_29EB96F78);
  }

  else
  {
    v14 = v23;
    sub_29EB96F5C(v11, v12, v13, sub_29EB96F78, sub_29EB96F78);
    if (v13)
    {
      type metadata accessor for XPCActorSystemError(0);
      sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError, &unk_29EBB204C);
      swift_allocError();
      v24[0] = v5;
      sub_29EBAFB10();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      return (*(a3 + 64))(v14, a2, a3);
    }
  }
}

unint64_t sub_29EBA1458(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EBA1524(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29EBA5920(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_29EBA1524(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29EBA1630(a5, a6);
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
    result = sub_29EBAFB40();
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

void *sub_29EBA1630(uint64_t a1, unint64_t a2)
{
  v3 = sub_29EBA167C(a1, a2);
  sub_29EBA17AC(&unk_2A254A4B8);
  return v3;
}

void *sub_29EBA167C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EBA1898(v5, 0);
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

  result = sub_29EBAFB40();
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
        v10 = sub_29EBAF990();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EBA1898(v10, 0);
        result = sub_29EBAFAE0();
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

uint64_t sub_29EBA17AC(uint64_t result)
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

  result = sub_29EBA190C(result, v11, 1, v3);
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

void *sub_29EBA1898(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E0, &qword_29EBB1E10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29EBA190C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E0, &qword_29EBB1E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29EBA1A00()
{
  v1 = v0;
  v2 = sub_29EBAF6E0();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854D8, &qword_29EBB1E30);
  v6 = *v0;
  v7 = sub_29EBAFAC0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_29EBA1C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29EBAF6E0();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29EBA59E4(&qword_2A18854C8, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v31 = a1;
  v10 = sub_29EBAF900();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_29EBA59E4(&qword_2A18854D0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v19 = sub_29EBAF920();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29EBA1A00();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_29EBA1EE8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_29EBA1EE8(int64_t a1)
{
  v3 = sub_29EBAF6E0();
  v4 = *(v3 - 8);
  result = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_29EBAFAB0();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_29EBA59E4(&qword_2A18854C8, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
        v24 = sub_29EBAF900();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_29EBA21F4(uint64_t a1)
{
  sub_29EBAFD80();
  XPCActorID.hash(into:)(v4);
  v2 = sub_29EBAFDA0();

  return sub_29EBA2360(a1, v2);
}

unint64_t sub_29EBA2260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29EBAFD80();
  sub_29EBAF970();
  v6 = sub_29EBAFDA0();

  return sub_29EBA2CA8(a1, a2, a3, v6);
}

unint64_t sub_29EBA22E8(uint64_t a1, uint64_t a2)
{
  sub_29EBAFD80();
  sub_29EBAF970();
  v4 = sub_29EBAFDA0();

  return sub_29EBA2D6C(a1, a2, v4);
}

unint64_t sub_29EBA2360(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for XPCActorID(0) - 8;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2 + 64;
  v34 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return v10;
  }

  v31 = ~v9;
  v11 = *(a1 + 8);
  v35 = *a1;
  v36 = v11;
  v12 = *(a1 + 16);
  v32 = *(v6 + 72);
  HIDWORD(v30) = v12;
  while (1)
  {
    sub_29EB9707C(*(v34 + 48) + v32 * v10, v8);
    v15 = *v8;
    v14 = *(v8 + 1);
    v16 = *(v8 + 8);
    if ((v16 & 0x80000000) == 0)
    {
      break;
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    sub_29EB96F5C(*v8, *(v8 + 1), *(v8 + 8), sub_29EB96EC0, sub_29EB96EC0);
    v23 = v35;
    sub_29EB96F5C(v35, v36, v12, sub_29EB96EC0, sub_29EB96EC0);
    v24 = sub_29EB9A1E4(v15, v14, v16 & 0x1FF, v23, v36, (v12 & 0x100) | WORD2(v30));
    sub_29EB96F5C(v15, v14, v16, sub_29EB96F78, sub_29EB96F78);
    v11 = v36;
    sub_29EB96F5C(v23, v36, v12, sub_29EB96F78, sub_29EB96F78);
    sub_29EBA4E98(v8, type metadata accessor for XPCActorID);
    if (v24)
    {
      return v10;
    }

LABEL_6:
    v10 = (v10 + 1) & v31;
    if (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return v10;
    }
  }

  if ((v12 & 0x80000000) != 0)
  {
LABEL_4:
    sub_29EB96F5C(*v8, *(v8 + 1), *(v8 + 8), sub_29EB96EC0, sub_29EB96EC0);
    v13 = v35;
    sub_29EB96F5C(v35, v11, v12, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v15, v14, v16, sub_29EB96F78, sub_29EB96F78);
    sub_29EB96F5C(v13, v11, v12, sub_29EB96F78, sub_29EB96F78);
LABEL_5:
    sub_29EBA4E98(v8, type metadata accessor for XPCActorID);
    goto LABEL_6;
  }

  if ((*(v8 + 8) & 1) == 0)
  {
    if ((v12 & 1) == 0)
    {
      if (v15 == v35 && v14 == v11)
      {
        sub_29EB96F5C(v35, v11, v12, sub_29EB96EC0, sub_29EB96EC0);
        sub_29EB96F5C(v35, v11, v16, sub_29EB96EC0, sub_29EB96EC0);
        sub_29EB96F5C(v35, v11, v16, sub_29EB96EC0, sub_29EB96EC0);
        sub_29EB96F5C(v35, v11, v12, sub_29EB96EC0, sub_29EB96EC0);
        sub_29EB96EC0(v35, v11);
        sub_29EB96F5C(v35, v11, v16, sub_29EB96F78, sub_29EB96F78);
        sub_29EB96F5C(v35, v11, v12, sub_29EB96F78, sub_29EB96F78);

        v20 = v35;
LABEL_28:
        v28 = v11;
        goto LABEL_31;
      }

      v25 = v35;
      v26 = sub_29EBAFCD0();
      sub_29EB96F5C(v25, v36, v12, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v15, v14, v16, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v15, v14, v16, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v25, v36, v12, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96EC0(v15, v14);
      sub_29EB96F5C(v15, v14, v16, sub_29EB96F78, sub_29EB96F78);
      v27 = v25;
      v11 = v36;
      sub_29EB96F5C(v27, v36, v12, sub_29EB96F78, sub_29EB96F78);

      v20 = v15;
      if (v26)
      {
        v11 = v14;
        goto LABEL_28;
      }

      v21 = v14;
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if ((v12 & 1) == 0)
  {
LABEL_16:
    v22 = v35;
    sub_29EB96F5C(v35, v36, v12, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v15, v14, v16, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v15, v14, v16, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v22, v36, v12, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96EC0(v15, v14);
    sub_29EB96F5C(v15, v14, v16, sub_29EB96F78, sub_29EB96F78);
    sub_29EB96F5C(v22, v36, v12, sub_29EB96F78, sub_29EB96F78);

    sub_29EB96F78(v15, v14);
    v20 = v22;
    v11 = v36;
    v21 = v36;
    goto LABEL_23;
  }

  if (v15 == v35 && v14 == v11)
  {
    sub_29EB96F5C(v35, v11, v12, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v35, v11, v16, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v35, v11, v16, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v35, v11, v12, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96EC0(v35, v11);
    sub_29EB96F5C(v35, v11, v16, sub_29EB96F78, sub_29EB96F78);
    sub_29EB96F5C(v35, v11, v12, sub_29EB96F78, sub_29EB96F78);

    v20 = v35;
    goto LABEL_30;
  }

  v17 = v35;
  v18 = sub_29EBAFCD0();
  sub_29EB96F5C(v17, v36, v12, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v15, v14, v16, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v15, v14, v16, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v17, v36, v12, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96EC0(v15, v14);
  sub_29EB96F5C(v15, v14, v16, sub_29EB96F78, sub_29EB96F78);
  v19 = v17;
  v11 = v36;
  sub_29EB96F5C(v19, v36, v12, sub_29EB96F78, sub_29EB96F78);

  v20 = v15;
  if ((v18 & 1) == 0)
  {
    v21 = v14;
LABEL_23:
    sub_29EB96F78(v20, v21);
    goto LABEL_5;
  }

  v11 = v14;
LABEL_30:
  v28 = v11;
LABEL_31:
  sub_29EB96F78(v20, v28);
  sub_29EBA4E98(v8, type metadata accessor for XPCActorID);
  return v10;
}

unint64_t sub_29EBA2CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = (*(v4 + 48) + 24 * v6);
      if (*v10 == a1 && v10[1] == a2)
      {
        break;
      }

      if (sub_29EBAFCD0())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_29EBA2D6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29EBAFCD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_29EBA2E24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for XPCActorID(0);
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F8, &qword_29EBB1E28);
  v39 = v4;
  result = sub_29EBAFB90();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v2;
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    v17 = v40;
    while (1)
    {
      if (!v14)
      {
        v20 = v10;
        while (1)
        {
          v10 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v10 >= v15)
          {
            break;
          }

          v21 = v11[v10];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v14 = (v21 - 1) & v21;
            goto LABEL_15;
          }
        }

        if ((v39 & 1) == 0)
        {

          v3 = v36;
          goto LABEL_41;
        }

        v35 = 1 << *(v7 + 32);
        v3 = v36;
        if (v35 >= 64)
        {
          bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v11 = -1 << v35;
        }

        *(v7 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 48);
      v42 = *(v38 + 72);
      v24 = v23 + v42 * v22;
      if (v39)
      {
        sub_29EB980F4(v24, v17);
        v41 = *(*(v7 + 56) + 8 * v22);
      }

      else
      {
        sub_29EB9707C(v24, v17);
        v41 = *(*(v7 + 56) + 8 * v22);
      }

      sub_29EBAFD80();
      v25 = *v17;
      v26 = *(v17 + 8);
      v27 = *(v17 + 16);
      if (v27 < 0)
      {
        MEMORY[0x29EDAAA50](1);
        if ((v27 & 0x100) == 0)
        {
LABEL_22:
          MEMORY[0x29EDAAA50](0);
          goto LABEL_25;
        }
      }

      else
      {
        MEMORY[0x29EDAAA50](0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      MEMORY[0x29EDAAA50](1);
LABEL_25:
      sub_29EB96EC0(v25, v26);
      sub_29EBAF970();

      result = sub_29EBAFDA0();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      v7 = v37;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v17 = v40;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v17 = v40;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_29EB980F4(v17, *(v9 + 48) + v42 * v18);
      *(*(v9 + 56) + 8 * v18) = v41;
      ++*(v9 + 16);
    }
  }

LABEL_41:
  *v3 = v9;
  return result;
}

uint64_t sub_29EBA3218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for XPCActorID(0);
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855D8, &qword_29EBB1E08);
  v39 = v4;
  result = sub_29EBAFB90();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v2;
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    v17 = v40;
    while (1)
    {
      if (!v14)
      {
        v20 = v10;
        while (1)
        {
          v10 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v10 >= v15)
          {
            break;
          }

          v21 = v11[v10];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v14 = (v21 - 1) & v21;
            goto LABEL_15;
          }
        }

        if ((v39 & 1) == 0)
        {

          v3 = v36;
          goto LABEL_41;
        }

        v35 = 1 << *(v7 + 32);
        v3 = v36;
        if (v35 >= 64)
        {
          bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v11 = -1 << v35;
        }

        *(v7 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 48);
      v42 = *(v38 + 72);
      v24 = v23 + v42 * v22;
      if (v39)
      {
        sub_29EB980F4(v24, v17);
        v41 = *(*(v7 + 56) + 8 * v22);
      }

      else
      {
        sub_29EB9707C(v24, v17);
        v41 = *(*(v7 + 56) + 8 * v22);
      }

      sub_29EBAFD80();
      v25 = *v17;
      v26 = *(v17 + 8);
      v27 = *(v17 + 16);
      if (v27 < 0)
      {
        MEMORY[0x29EDAAA50](1);
        if ((v27 & 0x100) == 0)
        {
LABEL_22:
          MEMORY[0x29EDAAA50](0);
          goto LABEL_25;
        }
      }

      else
      {
        MEMORY[0x29EDAAA50](0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      MEMORY[0x29EDAAA50](1);
LABEL_25:
      sub_29EB96EC0(v25, v26);
      sub_29EBAF970();

      result = sub_29EBAFDA0();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      v7 = v37;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v17 = v40;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v17 = v40;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_29EB980F4(v17, *(v9 + 48) + v42 * v18);
      *(*(v9 + 56) + 8 * v18) = v41;
      ++*(v9 + 16);
    }
  }

LABEL_41:
  *v3 = v9;
  return result;
}

uint64_t sub_29EBA360C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E8, &qword_29EBB1E18);
  v34 = v4;
  result = sub_29EBAFB90();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v35 = *(v21 + 16);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_29EBAFD80();
      sub_29EBAF970();
      result = sub_29EBAFDA0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v35;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29EBA38CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885600, &qword_29EBB1E38);
  v34 = v4;
  result = sub_29EBAFB90();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_29EBAFD80();
      sub_29EBAF970();
      result = sub_29EBAFDA0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29EBA3B74(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for XPCActorID(0);
  result = sub_29EB980F4(a2, v8 + *(*(v9 - 8) + 72) * a1);
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

unint64_t sub_29EBA3C14(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_29EBA3C64(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_29EBA3CAC()
{
  v1 = v0;
  v2 = type metadata accessor for XPCActorID(0);
  v24 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F8, &qword_29EBB1E28);
  v5 = *v0;
  v6 = sub_29EBAFB80();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_29EB9707C(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_29EB980F4(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_29EBA3EC4()
{
  v1 = v0;
  v2 = type metadata accessor for XPCActorID(0);
  v24 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855D8, &qword_29EBB1E08);
  v5 = *v0;
  v6 = sub_29EBAFB80();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_29EB9707C(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_29EB980F4(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_29EBA40DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E8, &qword_29EBB1E18);
  v2 = *v0;
  v3 = sub_29EBAFB80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v18;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_29EBA4258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885600, &qword_29EBB1E38);
  v2 = *v0;
  v3 = sub_29EBAFB80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t _s26ManagedBackgroundAssetsXPC14XPCActorSystemC4RoleO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (v4 < 0)
  {
    if (v10 < 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_11;
  }

  if (v10 < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 == v7 && v3 == v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_29EBAFCD0();
  }

LABEL_11:
  sub_29EBA44D4(v7, v8, v10, v9, v11);
  sub_29EBA44D4(v2, v3, v4, v5, v6);
  sub_29EBA4EF8(v2, v3, v4, v5, v6);
  sub_29EBA4EF8(v7, v8, v10, v9, v11);
  return v14 & 1;
}

uint64_t sub_29EBA44D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_29EBA4524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for XPCActorSystem.Coder.Container(0, v9, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v18 - v14;
  (*(v6 + 16))(v8, a1, a2);
  (*(v6 + 32))(v15, v8, a2);
  if (qword_2A18850C8 != -1)
  {
    swift_once();
  }

  v18[1] = a3;
  swift_getWitnessTable();
  v16 = sub_29EBAF6C0();
  (*(v13 + 8))(v15, v12);
  return v16;
}

uint64_t sub_29EBA4730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = a3;
  swift_unknownObjectWeakAssign();
  return v4;
}

unint64_t sub_29EBA4794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2A1885610, &qword_29EBB1E48);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F8, &qword_29EBB1E28);
    v7 = sub_29EBAFBA0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_29EBA5AE0(v9, v5, qword_2A1885610, &qword_29EBB1E48);
      result = sub_29EBA21F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for XPCActorID(0);
      result = sub_29EB980F4(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29EBA4964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885608, &qword_29EBB1E40);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855D8, &qword_29EBB1E08);
    v7 = sub_29EBAFBA0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_29EBA5AE0(v9, v5, &qword_2A1885608, &qword_29EBB1E40);
      result = sub_29EBA21F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for XPCActorID(0);
      result = sub_29EB980F4(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EBA4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBA5F94;

  return sub_29EB9BDB4(a1, a2, a3);
}

uint64_t sub_29EBA4C00()
{
  swift_unownedRelease();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29EBA4C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EB99244;

  return sub_29EB9E9EC(a1, a2, a3);
}

uint64_t sub_29EBA4D28(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_29EB99490(a1, a2);
  }
}

uint64_t sub_29EBA4D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBA5F94;

  return sub_29EB9BDB4(a1, a2, a3);
}

uint64_t sub_29EBA4DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBA5F94;

  return sub_29EB9BDB4(a1, a2, a3);
}

uint64_t sub_29EBA4E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29EBA4EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (a3 < 0)
  {
  }

  return result;
}

void *sub_29EBA4F48(void *a1)
{

  return a1;
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_29EBA4FFC()
{
  result = qword_2A1885598;
  if (!qword_2A1885598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885598);
  }

  return result;
}

unint64_t sub_29EBA50A0()
{
  result = qword_2A18855A8;
  if (!qword_2A18855A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18855A8);
  }

  return result;
}

unint64_t sub_29EBA50F8()
{
  result = qword_2A18855B0;
  if (!qword_2A18855B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18855B0);
  }

  return result;
}

unint64_t sub_29EBA5150()
{
  result = qword_2A18855B8;
  if (!qword_2A18855B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18855B8);
  }

  return result;
}

uint64_t sub_29EBA5208()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855C0, &qword_29EBB1CA0);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
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

uint64_t sub_29EBA5258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29EBA52A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for XPCActorSystem.Actors(void *a1)
{
}

void *assignWithTake for XPCActorSystem.Actors(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

unint64_t sub_29EBA546C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885600, &qword_29EBB1E38);
    v3 = sub_29EBAFBA0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_29EBA22E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29EBA5570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E8, &qword_29EBB1E18);
    v3 = sub_29EBAFBA0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;

      result = sub_29EBA2260(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EBA568C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorID(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18850B8 != -1)
  {
    swift_once();
  }

  v7 = sub_29EBAF780();
  __swift_project_value_buffer(v7, qword_2A1885550);
  v8 = sub_29EBAFA40();
  sub_29EB9707C(a1, v6);
  v9 = sub_29EBAF760();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = XPCActorID.description.getter();
    v14 = v13;
    sub_29EBA4E98(v6, type metadata accessor for XPCActorID);
    v15 = sub_29EBA1458(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_29EB8F000, v9, v8, "Getting the distributed actor for the key “%{public}s”…", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x29EDAAF90](v11, -1, -1);
    MEMORY[0x29EDAAF90](v10, -1, -1);

    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {

    sub_29EBA4E98(v6, type metadata accessor for XPCActorID);
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  sub_29EBA21F4(a1);
  if (v16)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  return 0;
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

uint64_t sub_29EBA5920(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29EBA597C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F0, &qword_29EBB1E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBA59E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x29EDAAF90);
  }

  return result;
}

uint64_t sub_29EBA5AE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29EBA5B58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EBA5BC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}