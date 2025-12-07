uint64_t sub_1B985D9C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9873C14();
  a1[3] = &unk_1F3795390;
  a1[4] = &off_1F37953A8;
  *a1 = result;
  a1[1] = v2;
  return result;
}

id sub_1B985DA08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B987A6B8();
  a1[3] = &unk_1F37955C8;
  a1[4] = &off_1F37955E0;
  *a1 = result;
  a1[1] = v2;
  return result;
}

void sub_1B985DA50(uint64_t a1@<X8>)
{
  nullsub_25();
  *(a1 + 24) = &unk_1F37959C0;
  *(a1 + 32) = &off_1F37959D0;
}

uint64_t sub_1B985DAC0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t sub_1B985DB2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5260, &unk_1B98F8FC0);

  return sub_1B985CCA8();
}

unint64_t sub_1B985DBF4()
{
  v2 = qword_1EBBD5270;
  if (!qword_1EBBD5270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5270);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B985DCD8(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B985DDC8;

  return sub_1B9859978(a1, a2, v8);
}

uint64_t sub_1B985DDC8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_1B985E0C4()
{
  v2 = qword_1EBBD52B0;
  if (!qword_1EBBD52B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD52A0, &qword_1B98F9018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52B0);
    return WitnessTable;
  }

  return v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B985E218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B985E35C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B985E578(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B985E644;

  return sub_1B985BF0C(a1, v6, v7);
}

uint64_t sub_1B985E644()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B985E76C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B985E838;

  return sub_1B985B65C(a1, v6, v7);
}

uint64_t sub_1B985E838()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B985E9B8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B985EA84;

  return sub_1B985A3C8(a1, v6, v7);
}

uint64_t sub_1B985EA84()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B985EBD8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B985ECA4;

  return sub_1B9858E68(a1, v6, v7);
}

uint64_t sub_1B985ECA4(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_1B985EEA0@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *a3 = result;
  *(a3 + 8) = v4;
  return result;
}

uint64_t sub_1B985EEB4@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *a3 = result;
  *(a3 + 8) = v4;
  return result;
}

uint64_t sub_1B985EEC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B9832680(a1, a5);
  result = type metadata accessor for UpdateServerTrust(0);
  *(a5 + *(result + 20)) = a2;
  v6 = (a5 + *(result + 24));
  *v6 = a3;
  v6[1] = a4;
  return result;
}

uint64_t sub_1B985EF44()
{
  if (qword_1EDBDB6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5148();
  return __swift_project_value_buffer(v0, qword_1EDBDD4D0);
}

uint64_t sub_1B985EFB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B985EF44();
  v1 = sub_1B98F5148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

BOOL sub_1B985F034(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8("handle", 6, 1);
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B985F1F8()
{
  v2 = qword_1EBBD52C8;
  if (!qword_1EBBD52C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52C8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B985F318@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B985F034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B985F368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B985F12C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B985F3FC(uint64_t a1)
{
  v7 = a1;
  v22 = 0;
  v21 = 0;
  v16 = type metadata accessor for BlockedHandle(0);
  v6 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v5 - v6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5488, &qword_1B98FA9B8);
  v8 = *(v15 - 8);
  v9 = v15 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v13 = v5 - v10;
  v22 = v2;
  v21 = v1;
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  sub_1B98377D4();
  sub_1B98F6078();
  sub_1B9833334(v14, v18);
  sub_1B9868408();
  v3 = v17;
  sub_1B98F5F28();
  v19 = v3;
  v20 = v3;
  if (v3)
  {
    v5[1] = v20;
  }

  sub_1B983A3AC(v18);
  return (*(v8 + 8))(v13, v15);
}

BOOL sub_1B985F648(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8("handles", 7, 1);
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B985F80C()
{
  v2 = qword_1EBBD52D0;
  if (!qword_1EBBD52D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B985F8C8(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v13 = a2;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5498, &qword_1B98FA9C8);
  v7 = *(v14 - 8);
  v8 = v14 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v22 = MEMORY[0x1EEE9AC00](v6);
  v21 = v2;
  v10 = v22[3];
  v11 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v10);
  sub_1B985FE20();
  sub_1B98F6078();
  sub_1B98F54D8();
  v17 = &v20;
  v20 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  sub_1B9868B64();
  v3 = v16;
  sub_1B98F5F28();
  v18 = v3;
  v19 = v3;
  if (v3)
  {
    v5[1] = v19;
  }

  sub_1B9868D78(&v20);
  return (*(v7 + 8))(v12, v14);
}

uint64_t sub_1B985FABC(uint64_t a1)
{
  v13 = a1;
  v25 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5490, &qword_1B98FA9C0);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v4 - v17;
  v25 = MEMORY[0x1EEE9AC00](v13);
  v20 = v25[3];
  v21 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v20);
  sub_1B985FE20();
  v1 = v19;
  sub_1B98F6068();
  v22 = v1;
  v23 = v1;
  if (v1)
  {
    v6 = v23;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868ACC();
    v2 = v22;
    sub_1B98F5EB8();
    v11 = v2;
    v12 = v2;
    if (!v2)
    {
      v8 = v24;
      sub_1B98F54D8();
      v7 = &v26;
      v26 = v8;
      (*(v15 + 8))(v18, v14);
      __swift_destroy_boxed_opaque_existential_1(v13);
      sub_1B985347C(v7);
      return v8;
    }

    v5 = v12;
    (*(v15 + 8))(v18, v14);
    v6 = v5;
  }

  v4[1] = v6;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

BOOL sub_1B985FD6C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B985F648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B985FDBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B985F740();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B985FE20()
{
  v2 = qword_1EBBD52D8;
  if (!qword_1EBBD52D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B985FECC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B985FABC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B985FF90()
{
  v2 = *v0;
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B985FFCC(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_1B98F54D8();
  v12[0] = sub_1B98F55E8("handlesWithOptions", 18, 1);
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1BFADD650](v12[0], v2, a1, a2);
  sub_1B9868BFC(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  sub_1B98F54D8();
  v11[0] = sub_1B98F55E8("service", 7, 1);
  v11[1] = v3;
  v6 = MEMORY[0x1BFADD650](v11[0], v3, a1, a2);
  sub_1B9868BFC(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_1B9860310()
{
  v2 = qword_1EBBD52E0;
  if (!qword_1EBBD52E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98603B0(char a1)
{
  if (a1)
  {
    return sub_1B98F55E8("service", 7, 1);
  }

  else
  {
    return sub_1B98F55E8("handlesWithOptions", 18, 1);
  }
}

uint64_t sub_1B986043C(uint64_t a1)
{
  v7 = a1;
  v28 = 0;
  v27 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54D0, &qword_1B98FA9E8);
  v8 = *(v17 - 8);
  v9 = v17 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v5 - v10;
  v28 = MEMORY[0x1EEE9AC00](v7);
  v15 = *v1;
  v11 = *(v1 + 8);
  v27 = v1;
  v12 = v28[3];
  v13 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v12);
  sub_1B9860B5C();
  sub_1B98F6078();
  sub_1B98F54D8();
  v20 = &v26;
  v26 = v15;
  v16 = &v25;
  v25 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  sub_1B9869048();
  v2 = v19;
  sub_1B98F5F28();
  v21 = v2;
  v22 = v2;
  if (v2)
  {
    v5[2] = v22;
    sub_1B9868DA4(&v26);
    return (*(v8 + 8))(v14, v17);
  }

  else
  {
    sub_1B9868DA4(&v26);
    v5[5] = &v24;
    v24 = v11;
    v5[4] = &v23;
    v23 = 1;
    sub_1B9869200();
    v3 = v21;
    sub_1B98F5EF8();
    v5[6] = v3;
    v6 = v3;
    if (v3)
    {
      v5[1] = v6;
    }

    return (*(v8 + 8))(v14, v17);
  }
}

void sub_1B98606F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v34 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A0, &unk_1B98FA9D0);
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v5 - v24;
  v34 = MEMORY[0x1EEE9AC00](v20);
  v27 = v34[3];
  v28 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v27);
  sub_1B9860B5C();
  v2 = v26;
  sub_1B98F6068();
  v29 = v2;
  v30 = v2;
  if (v2)
  {
    v9 = v30;
    v10 = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    v15 = &v32;
    v32 = 0;
    sub_1B9868DD0();
    v3 = v29;
    sub_1B98F5EB8();
    v17 = v3;
    v18 = v3;
    if (v3)
    {
      v8 = v18;
      (*(v22 + 8))(v25, v21);
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v35 = v33;
      v12 = v31;
      v31[0] = 1;
      sub_1B9868F88();
      v4 = v17;
      sub_1B98F5E88();
      v13 = v4;
      v14 = v4;
      if (!v4)
      {
        v11 = &v35;
        v36 = v31[1];
        (*(v22 + 8))(v25, v21);
        sub_1B9869000(v11, v19);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_1B98537C0(v11);
        return;
      }

      v7 = v14;
      (*(v22 + 8))(v25, v21);
      v9 = v7;
      v10 = 1;
    }
  }

  v6 = v10;
  v5[1] = v9;
  __swift_destroy_boxed_opaque_existential_1(v20);
  if (v6)
  {
    sub_1B9868DA4(&v35);
  }
}

uint64_t sub_1B9860AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B985FFCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9860B00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9860170();
  *a1 = result;
  return result;
}

unint64_t sub_1B9860B5C()
{
  v2 = qword_1EBBD52E8;
  if (!qword_1EBBD52E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9860CA4()
{
  v2 = *v0;
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B9860CE0(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_1B98F54D8();
  v12[0] = sub_1B98F55E8("handlesWithOptions", 18, 1);
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1BFADD650](v12[0], v2, a1, a2);
  sub_1B9868BFC(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  sub_1B98F54D8();
  v11[0] = sub_1B98F55E8("service", 7, 1);
  v11[1] = v3;
  v6 = MEMORY[0x1BFADD650](v11[0], v3, a1, a2);
  sub_1B9868BFC(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_1B9861024()
{
  v2 = qword_1EBBD52F0;
  if (!qword_1EBBD52F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98610C4(char a1)
{
  if (a1)
  {
    return sub_1B98F55E8("service", 7, 1);
  }

  else
  {
    return sub_1B98F55E8("handlesWithOptions", 18, 1);
  }
}

uint64_t sub_1B9861150(uint64_t a1)
{
  v7 = a1;
  v28 = 0;
  v27 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5500, &qword_1B98FA9F8);
  v8 = *(v17 - 8);
  v9 = v17 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v5 - v10;
  v28 = MEMORY[0x1EEE9AC00](v7);
  v15 = *v1;
  v11 = *(v1 + 8);
  v27 = v1;
  v12 = v28[3];
  v13 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v12);
  sub_1B9861870();
  sub_1B98F6078();
  sub_1B98F54D8();
  v20 = &v26;
  v26 = v15;
  v16 = &v25;
  v25 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  sub_1B9869048();
  v2 = v19;
  sub_1B98F5F28();
  v21 = v2;
  v22 = v2;
  if (v2)
  {
    v5[2] = v22;
    sub_1B9868DA4(&v26);
    return (*(v8 + 8))(v14, v17);
  }

  else
  {
    sub_1B9868DA4(&v26);
    v5[5] = &v24;
    v24 = v11;
    v5[4] = &v23;
    v23 = 1;
    sub_1B9869200();
    v3 = v21;
    sub_1B98F5EF8();
    v5[6] = v3;
    v6 = v3;
    if (v3)
    {
      v5[1] = v6;
    }

    return (*(v8 + 8))(v14, v17);
  }
}

void sub_1B9861404(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v34 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54F8, &qword_1B98FA9F0);
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v5 - v24;
  v34 = MEMORY[0x1EEE9AC00](v20);
  v27 = v34[3];
  v28 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v27);
  sub_1B9861870();
  v2 = v26;
  sub_1B98F6068();
  v29 = v2;
  v30 = v2;
  if (v2)
  {
    v9 = v30;
    v10 = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    v15 = &v32;
    v32 = 0;
    sub_1B9868DD0();
    v3 = v29;
    sub_1B98F5EB8();
    v17 = v3;
    v18 = v3;
    if (v3)
    {
      v8 = v18;
      (*(v22 + 8))(v25, v21);
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v35 = v33;
      v12 = v31;
      v31[0] = 1;
      sub_1B9868F88();
      v4 = v17;
      sub_1B98F5E88();
      v13 = v4;
      v14 = v4;
      if (!v4)
      {
        v11 = &v35;
        v36 = v31[1];
        (*(v22 + 8))(v25, v21);
        sub_1B9869278(v11, v19);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_1B9853548(v11);
        return;
      }

      v7 = v14;
      (*(v22 + 8))(v25, v21);
      v9 = v7;
      v10 = 1;
    }
  }

  v6 = v10;
  v5[1] = v9;
  __swift_destroy_boxed_opaque_existential_1(v20);
  if (v6)
  {
    sub_1B9868DA4(&v35);
  }
}

uint64_t sub_1B98617C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9860CE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9861814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9860E84();
  *a1 = result;
  return result;
}

unint64_t sub_1B9861870()
{
  v2 = qword_1EBBD52F8;
  if (!qword_1EBBD52F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9861A04()
{
  v2 = *(v0 + *(type metadata accessor for UpdateServerTrust(0) + 24));
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B9861A4C(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  sub_1B98F54D8();
  v15[0] = sub_1B98F55E8("handle", 6, 1);
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1BFADD650](v15[0], v2, a1, a2);
  sub_1B9868BFC(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  sub_1B98F54D8();
  v14[0] = sub_1B98F55E8("isTrusted", 9, 1);
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1BFADD650](v14[0], v3, a1, a2);
  sub_1B9868BFC(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  sub_1B98F54D8();
  v13[0] = sub_1B98F55E8("service", 7, 1);
  v13[1] = v4;
  v7 = MEMORY[0x1BFADD650](v13[0], v4, a1, a2);
  sub_1B9868BFC(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

BOOL sub_1B9861CA0(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1B9861E88()
{
  v2 = qword_1EBBD5300;
  if (!qword_1EBBD5300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5300);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9861F20(char a1)
{
  if (!a1)
  {
    return sub_1B98F55E8("handle", 6, 1);
  }

  if (a1 == 1)
  {
    return sub_1B98F55E8("isTrusted", 9, 1);
  }

  return sub_1B98F55E8("service", 7, 1);
}

uint64_t sub_1B9861FEC(uint64_t a1)
{
  v19 = a1;
  v38 = 0;
  v37 = 0;
  v29 = type metadata accessor for BlockedHandle(0);
  v18 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v8 - v18;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5510, &qword_1B98FAA08);
  v20 = *(v28 - 8);
  v21 = v28 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v19);
  v25 = v8 - v22;
  v38 = v2;
  v37 = v1;
  v23 = v2[3];
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v23);
  sub_1B9862D08();
  sub_1B98F6078();
  sub_1B9833334(v26, v31);
  v27 = &v36;
  v36 = 0;
  sub_1B9868408();
  v3 = v30;
  sub_1B98F5F28();
  v32 = v3;
  v33 = v3;
  if (v3)
  {
    v9 = v33;
    sub_1B983A3AC(v31);
    result = (*(v20 + 8))(v25, v28);
    v10 = v9;
  }

  else
  {
    sub_1B983A3AC(v31);
    updated = type metadata accessor for UpdateServerTrust(0);
    v5 = v32;
    v15 = updated;
    v35 = 1;
    sub_1B98F5F18();
    v16 = v5;
    v17 = v5;
    if (v5)
    {
      v8[1] = v17;
    }

    else
    {
      v6 = (v26 + *(v15 + 24));
      v11 = *v6;
      v12 = v6[1];
      sub_1B98F54D8();
      v34 = 2;
      sub_1B98F5F08();
      v13 = 0;
      v14 = 0;
    }

    return (*(v20 + 8))(v25, v28);
  }

  return result;
}

uint64_t sub_1B986236C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v41 = a1;
  v54 = 0;
  v36 = 0;
  v33 = type metadata accessor for BlockedHandle(0);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v16 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5508, &qword_1B98FAA00);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v36);
  v45 = &v16 - v40;
  updated = type metadata accessor for UpdateServerTrust(v2);
  v43 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v16 - v43;
  v54 = v3;
  v47 = v3[3];
  v48 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v47);
  sub_1B9862D08();
  v4 = v46;
  sub_1B98F6068();
  v49 = v4;
  v50 = v4;
  if (v4)
  {
    v20 = v50;
    v21 = 0;
  }

  else
  {
    v29 = &v53;
    v53 = 0;
    sub_1B9868250();
    v5 = v49;
    sub_1B98F5EB8();
    v30 = v5;
    v31 = v5;
    if (v5)
    {
      v19 = v31;
      (*(v38 + 8))(v45, v37);
      v20 = v19;
      v21 = 0;
    }

    else
    {
      sub_1B9832680(v35, v44);
      v6 = v30;
      v52 = 1;
      v7 = sub_1B98F5EA8();
      v26 = v6;
      v27 = v7;
      v28 = v6;
      if (!v6)
      {
        *(v44 + *(updated + 20)) = v27 & 1;
        v51 = 2;
        v8 = sub_1B98F5E98();
        v22 = 0;
        v23 = v8;
        v24 = v9;
        v25 = 0;
        v10 = v37;
        v11 = v45;
        v12 = v38;
        v13 = v24;
        v14 = (v44 + *(updated + 24));
        *v14 = v23;
        v14[1] = v13;
        (*(v12 + 8))(v11, v10);
        sub_1B98692C0(v44, v32);
        __swift_destroy_boxed_opaque_existential_1(v41);
        return sub_1B98538BC(v44);
      }

      v18 = v28;
      (*(v38 + 8))(v45, v37);
      v20 = v18;
      v21 = 1;
    }
  }

  v17 = v21;
  v16 = v20;
  result = __swift_destroy_boxed_opaque_existential_1(v41);
  if (v17)
  {
    return sub_1B983A3AC(v44);
  }

  return result;
}

uint64_t sub_1B98628B4(uint64_t a1)
{
  v2 = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5518, &qword_1B98FAA10);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v2 - v3;
  v10 = MEMORY[0x1EEE9AC00](v2);
  v4 = v10[3];
  v5 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v4);
  sub_1B9834A40();
  sub_1B98F6078();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_1B9862A98(uint64_t a1)
{
  v2 = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5520, &qword_1B98FAA18);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v2 - v3;
  v10 = MEMORY[0x1EEE9AC00](v2);
  v4 = v10[3];
  v5 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v4);
  sub_1B9835E5C();
  sub_1B98F6078();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_1B9862C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9861A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9862CAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9861C88();
  *a1 = result;
  return result;
}

unint64_t sub_1B9862D08()
{
  v2 = qword_1EBBD5308;
  if (!qword_1EBBD5308)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9862E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9862824(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B9862EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9862864();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B9862FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9862A08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B9863008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9862A48();
  *a1 = result & 1;
  return result;
}

BOOL sub_1B98630C4(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8("handles", 7, 1);
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B9863288()
{
  v2 = qword_1EBBD5310;
  if (!qword_1EBBD5310)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5310);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9863344(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v13 = a2;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5530, &qword_1B98FAA28);
  v7 = *(v14 - 8);
  v8 = v14 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v22 = MEMORY[0x1EEE9AC00](v6);
  v21 = v2;
  v10 = v22[3];
  v11 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v10);
  sub_1B986389C();
  sub_1B98F6078();
  sub_1B98F54D8();
  v17 = &v20;
  v20 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  sub_1B9868B64();
  v3 = v16;
  sub_1B98F5F28();
  v18 = v3;
  v19 = v3;
  if (v3)
  {
    v5[1] = v19;
  }

  sub_1B9868D78(&v20);
  return (*(v7 + 8))(v12, v14);
}

uint64_t sub_1B9863538(uint64_t a1)
{
  v13 = a1;
  v25 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5528, &qword_1B98FAA20);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v4 - v17;
  v25 = MEMORY[0x1EEE9AC00](v13);
  v20 = v25[3];
  v21 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v20);
  sub_1B986389C();
  v1 = v19;
  sub_1B98F6068();
  v22 = v1;
  v23 = v1;
  if (v1)
  {
    v6 = v23;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868ACC();
    v2 = v22;
    sub_1B98F5EB8();
    v11 = v2;
    v12 = v2;
    if (!v2)
    {
      v8 = v24;
      sub_1B98F54D8();
      v7 = &v26;
      v26 = v8;
      (*(v15 + 8))(v18, v14);
      __swift_destroy_boxed_opaque_existential_1(v13);
      sub_1B9853A40(v7);
      return v8;
    }

    v5 = v12;
    (*(v15 + 8))(v18, v14);
    v6 = v5;
  }

  v4[1] = v6;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

BOOL sub_1B98637E8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98630C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9863838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98631BC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B986389C()
{
  v2 = qword_1EBBD5318;
  if (!qword_1EBBD5318)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5318);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9863948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B9863538(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1B9863A34(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8("handles", 7, 1);
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B9863BF8()
{
  v2 = qword_1EBBD5320;
  if (!qword_1EBBD5320)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5320);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9863CB4(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v13 = a2;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5540, &qword_1B98FAA38);
  v7 = *(v14 - 8);
  v8 = v14 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v22 = MEMORY[0x1EEE9AC00](v6);
  v21 = v2;
  v10 = v22[3];
  v11 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v10);
  sub_1B986420C();
  sub_1B98F6078();
  sub_1B98F54D8();
  v17 = &v20;
  v20 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  sub_1B9868B64();
  v3 = v16;
  sub_1B98F5F28();
  v18 = v3;
  v19 = v3;
  if (v3)
  {
    v5[1] = v19;
  }

  sub_1B9868D78(&v20);
  return (*(v7 + 8))(v12, v14);
}

uint64_t sub_1B9863EA8(uint64_t a1)
{
  v13 = a1;
  v25 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5538, &qword_1B98FAA30);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v4 - v17;
  v25 = MEMORY[0x1EEE9AC00](v13);
  v20 = v25[3];
  v21 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v20);
  sub_1B986420C();
  v1 = v19;
  sub_1B98F6068();
  v22 = v1;
  v23 = v1;
  if (v1)
  {
    v6 = v23;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868ACC();
    v2 = v22;
    sub_1B98F5EB8();
    v11 = v2;
    v12 = v2;
    if (!v2)
    {
      v8 = v24;
      sub_1B98F54D8();
      v7 = &v26;
      v26 = v8;
      (*(v15 + 8))(v18, v14);
      __swift_destroy_boxed_opaque_existential_1(v13);
      sub_1B9853B0C(v7);
      return v8;
    }

    v5 = v12;
    (*(v15 + 8))(v18, v14);
    v6 = v5;
  }

  v4[1] = v6;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

BOOL sub_1B9864158@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9863A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98641A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9863B2C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B986420C()
{
  v2 = qword_1EBBD5328;
  if (!qword_1EBBD5328)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5328);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98642B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B9863EA8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1B98643A4(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8("handles", 7, 1);
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B9864568()
{
  v2 = qword_1EBBD5330;
  if (!qword_1EBBD5330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5330);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9864624(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v13 = a2;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5550, &qword_1B98FAA48);
  v7 = *(v14 - 8);
  v8 = v14 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v22 = MEMORY[0x1EEE9AC00](v6);
  v21 = v2;
  v10 = v22[3];
  v11 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v10);
  sub_1B9864D60();
  sub_1B98F6078();
  sub_1B98F54D8();
  v17 = &v20;
  v20 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  sub_1B9868B64();
  v3 = v16;
  sub_1B98F5F28();
  v18 = v3;
  v19 = v3;
  if (v3)
  {
    v5[1] = v19;
  }

  sub_1B9868D78(&v20);
  return (*(v7 + 8))(v12, v14);
}

uint64_t sub_1B9864818(uint64_t a1)
{
  v13 = a1;
  v25 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5548, &qword_1B98FAA40);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v4 - v17;
  v25 = MEMORY[0x1EEE9AC00](v13);
  v20 = v25[3];
  v21 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v20);
  sub_1B9864D60();
  v1 = v19;
  sub_1B98F6068();
  v22 = v1;
  v23 = v1;
  if (v1)
  {
    v6 = v23;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868ACC();
    v2 = v22;
    sub_1B98F5EB8();
    v11 = v2;
    v12 = v2;
    if (!v2)
    {
      v8 = v24;
      sub_1B98F54D8();
      v7 = &v26;
      v26 = v8;
      (*(v15 + 8))(v18, v14);
      __swift_destroy_boxed_opaque_existential_1(v13);
      sub_1B9853BD8(v7);
      return v8;
    }

    v5 = v12;
    (*(v15 + 8))(v18, v14);
    v6 = v5;
  }

  v4[1] = v6;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_1B9864ADC(uint64_t a1)
{
  v2 = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5558, &unk_1B98FAA50);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v2 - v3;
  v10 = MEMORY[0x1EEE9AC00](v2);
  v4 = v10[3];
  v5 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v4);
  sub_1B9864F9C();
  sub_1B98F6078();
  return (*(v6 + 8))(v8, v9);
}

BOOL sub_1B9864CAC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98643A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9864CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B986449C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B9864D60()
{
  v2 = qword_1EBBD5338;
  if (!qword_1EBBD5338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9864E0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B9864818(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B9864EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9864A4C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B9864F38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9864A8C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B9864F9C()
{
  v2 = qword_1EDBDB200;
  if (!qword_1EDBDB200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B986506C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B98651BC(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1B98653BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 9))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1B9865504(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 9;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1B98656B4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B986581C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B9865A4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 9))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1B9865B94(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 9;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1B9865D44(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B9865EAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B986612C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B9866294(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B98664B0(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B9866600(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B9866800(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B9866950(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B9866B3C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B9866C8C(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1B9866F34()
{
  v2 = qword_1EBBD5340;
  if (!qword_1EBBD5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5348, &qword_1B98F9F40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9866FBC()
{
  v2 = qword_1EDBDB4D0;
  if (!qword_1EDBDB4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5350, qword_1B98F9F48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867068()
{
  v2 = qword_1EDBDB1F0;
  if (!qword_1EDBDB1F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98670FC()
{
  v2 = qword_1EDBDB1F8;
  if (!qword_1EDBDB1F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867190()
{
  v2 = qword_1EBBD5358;
  if (!qword_1EBBD5358)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867224()
{
  v2 = qword_1EBBD5360;
  if (!qword_1EBBD5360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98672B8()
{
  v2 = qword_1EBBD5368;
  if (!qword_1EBBD5368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B986734C()
{
  v2 = qword_1EBBD5370;
  if (!qword_1EBBD5370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98673E0()
{
  v2 = qword_1EBBD5378;
  if (!qword_1EBBD5378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867474()
{
  v2 = qword_1EBBD5380;
  if (!qword_1EBBD5380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867508()
{
  v2 = qword_1EBBD5388;
  if (!qword_1EBBD5388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B986759C()
{
  v2 = qword_1EBBD5390;
  if (!qword_1EBBD5390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867630()
{
  v2 = qword_1EBBD5398;
  if (!qword_1EBBD5398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98676C4()
{
  v2 = qword_1EBBD53A0;
  if (!qword_1EBBD53A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867758()
{
  v2 = qword_1EBBD53A8;
  if (!qword_1EBBD53A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98677EC()
{
  v2 = qword_1EBBD53B0;
  if (!qword_1EBBD53B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867880()
{
  v2 = qword_1EBBD53B8;
  if (!qword_1EBBD53B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867914()
{
  v2 = qword_1EBBD53C0;
  if (!qword_1EBBD53C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98679A8()
{
  v2 = qword_1EBBD53C8;
  if (!qword_1EBBD53C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867A3C()
{
  v2 = qword_1EBBD53D0;
  if (!qword_1EBBD53D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867AD0()
{
  v2 = qword_1EBBD53D8;
  if (!qword_1EBBD53D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867B64()
{
  v2 = qword_1EBBD53E0;
  if (!qword_1EBBD53E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867BF8()
{
  v2 = qword_1EBBD53E8;
  if (!qword_1EBBD53E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867C8C()
{
  v2 = qword_1EBBD53F0;
  if (!qword_1EBBD53F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867D20()
{
  v2 = qword_1EBBD53F8;
  if (!qword_1EBBD53F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867DB4()
{
  v2 = qword_1EBBD5400;
  if (!qword_1EBBD5400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867EA8()
{
  v2 = qword_1EBBD5408;
  if (!qword_1EBBD5408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867F3C()
{
  v2 = qword_1EBBD5410;
  if (!qword_1EBBD5410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868030()
{
  v2 = qword_1EDBDB860;
  if (!qword_1EDBDB860)
  {
    type metadata accessor for UpdateServerTrust(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98680B0()
{
  v2 = qword_1EDBDB868;
  if (!qword_1EDBDB868)
  {
    type metadata accessor for UpdateServerTrust(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98681A8()
{
  v2 = qword_1EBBD5418;
  if (!qword_1EBBD5418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5420, &qword_1B98FA720);
    sub_1B9868250();
    sub_1B98682D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868250()
{
  v2 = qword_1EDBDB208;
  if (!qword_1EDBDB208)
  {
    type metadata accessor for BlockedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98682D0()
{
  v2 = qword_1EBBD5428;
  if (!qword_1EBBD5428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868360()
{
  v2 = qword_1EBBD5430;
  if (!qword_1EBBD5430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5420, &qword_1B98FA720);
    sub_1B9868408();
    sub_1B9868488();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868408()
{
  v2 = qword_1EDBDB688;
  if (!qword_1EDBDB688)
  {
    type metadata accessor for BlockedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868488()
{
  v2 = qword_1EBBD5438;
  if (!qword_1EBBD5438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B986856C()
{
  v2 = qword_1EBBD5440;
  if (!qword_1EBBD5440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868600()
{
  v2 = qword_1EBBD5448;
  if (!qword_1EBBD5448)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98686B8()
{
  v2 = qword_1EBBD5450;
  if (!qword_1EBBD5450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5458, &qword_1B98FB070);
    sub_1B9868250();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868774()
{
  v2 = qword_1EBBD5460;
  if (!qword_1EBBD5460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5458, &qword_1B98FB070);
    sub_1B9868408();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868818()
{
  v2 = qword_1EDBDB598;
  if (!qword_1EDBDB598)
  {
    type metadata accessor for IsHandleBlocked(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868898()
{
  v2 = qword_1EDBDB5A0;
  if (!qword_1EDBDB5A0)
  {
    type metadata accessor for IsHandleBlocked(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868978()
{
  v2 = qword_1EBBD5468;
  if (!qword_1EBBD5468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5470, &qword_1B98FA8D0);
    sub_1B983A2A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868A10()
{
  v2 = qword_1EBBD5478;
  if (!qword_1EBBD5478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5470, &qword_1B98FA8D0);
    sub_1B983A334();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868ACC()
{
  v2 = qword_1EDBDB1B8;
  if (!qword_1EDBDB1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868250();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868B64()
{
  v2 = qword_1EDBDB1C0;
  if (!qword_1EDBDB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868408();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9868C28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = type metadata accessor for BlockedHandle(0);
  v3 = (a1 + v13[5]);
  v6 = (a2 + v13[5]);
  *v6 = *v3;
  v7 = v3[1];
  sub_1B98F54D8();
  v6[1] = v7;
  v8 = v13[6];
  v9 = *(a1 + v8);
  sub_1B98F54D8();
  *(a2 + v8) = v9;
  v11 = v13[7];
  v12 = *(a1 + v11);
  sub_1B98F54D8();
  *(a2 + v11) = v12;
  v4 = v13[8];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  result = a2;
  *(v15 + 8) = v16;
  return result;
}

unint64_t sub_1B9868DD0()
{
  v2 = qword_1EBBD54B0;
  if (!qword_1EBBD54B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    sub_1B9868250();
    sub_1B9868E78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868E78()
{
  v2 = qword_1EBBD54B8;
  if (!qword_1EBBD54B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B9868F10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868F10()
{
  v2 = qword_1EBBD54C0;
  if (!qword_1EBBD54C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868F88()
{
  v2 = qword_1EBBD54C8;
  if (!qword_1EBBD54C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9869000(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

unint64_t sub_1B9869048()
{
  v2 = qword_1EBBD54D8;
  if (!qword_1EBBD54D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    sub_1B9868408();
    sub_1B98690F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98690F0()
{
  v2 = qword_1EBBD54E0;
  if (!qword_1EBBD54E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B9869188();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9869188()
{
  v2 = qword_1EBBD54E8;
  if (!qword_1EBBD54E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9869200()
{
  v2 = qword_1EBBD54F0;
  if (!qword_1EBBD54F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9869278(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

uint64_t sub_1B98692C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v14 = type metadata accessor for BlockedHandle(0);
  v3 = (a1 + v14[5]);
  v8 = (a2 + v14[5]);
  *v8 = *v3;
  v9 = v3[1];
  sub_1B98F54D8();
  v8[1] = v9;
  v10 = v14[6];
  v11 = *(a1 + v10);
  sub_1B98F54D8();
  *(a2 + v10) = v11;
  v12 = v14[7];
  v13 = *(a1 + v12);
  sub_1B98F54D8();
  *(a2 + v12) = v13;
  v4 = v14[8];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  *(v15 + 8) = v16;
  updated = type metadata accessor for UpdateServerTrust(0);
  *(a2 + *(updated + 20)) = *(a1 + *(updated + 20));
  v6 = (a1 + *(updated + 24));
  v19 = (a2 + *(updated + 24));
  *v19 = *v6;
  v20 = v6[1];
  sub_1B98F54D8();
  result = a2;
  v19[1] = v20;
  return result;
}

uint64_t sub_1B9869478()
{
  v2 = *(v0 + 16);
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98694B0@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider_databaseURL;
  v2 = sub_1B98F4F88();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B986951C()
{
  v5 = v0;
  v2 = OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  v3 = v0 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container));
  sub_1B9869614((v3 + 8), &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5568, &qword_1B98FAA60);
  sub_1B9870E78((v0 + v2));
  return v4;
}

uint64_t sub_1B986964C(uint64_t a1)
{

  v4 = OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  v5 = v1 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container));
  sub_1B9869778((v5 + 8), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5568, &qword_1B98FAA60);
  sub_1B9870E78((v3 + v4));
}

uint64_t sub_1B9869778(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t sub_1B9869830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v24 = sub_1B98F4F88();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v15 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v14 - v15;
  v30 = MEMORY[0x1EEE9AC00](v18);
  v31 = v4;
  v29 = v5;
  v28 = v3;
  v17 = &v27;
  v27 = 0;
  v6 = v3 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  *v6 = 0;
  *v6 = 0;
  v16 = v6 + 8;
  *(v6 + 8) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5568, &qword_1B98FAA60);
  sub_1B985253C(v17, v16, v7);
  sub_1B98F54D8();
  v8 = v23;
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v24;
  *(v3 + 16) = v18;
  *(v3 + 24) = v9;
  (*(v11 + 16))(v8, v10, v12);
  (*(v21 + 32))(v3 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider_databaseURL, v23, v24);
  v25 = sub_1B9869A58();
  v26 = 0;
  v14[1] = v25;

  (*(v21 + 8))(v20, v24);

  return v14[2];
}

uint64_t sub_1B9869A58()
{
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v41 = 0;
  v39 = (*(*(sub_1B98F5378() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v40 = v16 - v39;
  v42 = sub_1B98F4F88();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v46 = v16 - v45;
  v47 = sub_1B98F5388();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v51 = v16 - v50;
  v56 = v16 - v50;
  v55 = v0;
  v52 = sub_1B986951C();
  if (v52)
  {
    v36 = v52;
    v53 = v52;
    v34 = v52;
    v35 = v38;
    return v34;
  }

  v18 = *(v37 + 16);
  v19 = *(v37 + 24);
  sub_1B98F54D8();
  (*(v43 + 16))(v46, v37 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider_databaseURL, v42);
  v20 = sub_1B9869EF0();
  sub_1B9869EFC();
  v22 = 0;
  sub_1B98F5398();
  sub_1B98F52C8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5570, &qword_1B98FAA68);
  v26 = sub_1B98F5F98();
  v24 = v1;
  v21 = type metadata accessor for ManagedHandle(v22);
  v2 = sub_1B9870EA4();
  v3 = v24;
  v4 = v2;
  v5 = v22;
  *v24 = v21;
  v3[1] = v4;
  v23 = type metadata accessor for ManagedContact(v5);
  v6 = sub_1B9870F24();
  v7 = v24;
  v24[2] = v23;
  v7[3] = v6;
  sub_1B9851B38();
  v30 = v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5588, &unk_1B98FAA70);
  v29 = sub_1B98F5F98();
  v27 = v9;
  v9[3] = v47;
  v10 = sub_1B9870FA4();
  v11 = v27;
  v27[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v48 + 16))(boxed_opaque_existential_1, v51, v47);
  sub_1B9851B38();
  v13 = v38;
  v14 = sub_1B98F52B8();
  v31 = v13;
  v32 = v14;
  v33 = v13;
  if (!v13)
  {
    v17 = v32;
    v54 = v32;

    sub_1B986964C(v17);
    (*(v48 + 8))(v51, v47);
    v34 = v17;
    v35 = v31;
    return v34;
  }

  v16[0] = v33;
  (*(v48 + 8))(v51, v47);
  return v16[1];
}

uint64_t sub_1B9869F14()
{
  sub_1B9868BFC(v0 + 16);
  v3 = OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider_databaseURL;
  v1 = sub_1B98F4F88();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B9871E40(v0 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container);
  return v4;
}

uint64_t sub_1B986A008()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B986A058(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_1B986A104(uint64_t a1)
{
  v19 = a1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5598, &qword_1B98FB3C0);
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v15 - v18;
  v26 = sub_1B98F4F88();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v20 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v19);
  v21 = &v15 - v20;
  v22 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v23 = &v15 - v22;
  v32 = &v15 - v22;
  v31 = v5;
  v30 = v1;
  sub_1B98710A4(v5, v6);
  v28 = *(v24 + 48);
  v29 = v24 + 48;
  if (v28(v27, 1, v26) == 1)
  {
    v7 = sub_1B98EF4D0();
    (*(v24 + 16))(v23, v7, v26);
    if (v28(v27, 1, v26) != 1)
    {
      sub_1B98711CC(v27);
    }
  }

  else
  {
    (*(v24 + 32))(v23, v27, v26);
  }

  type metadata accessor for ContainerProvider(0);
  v8 = sub_1B98ED1AC();
  v16 = *v8;
  v15 = v8[1];
  sub_1B98F54D8();
  (*(v24 + 16))(v21, v23, v26);
  v9 = sub_1B98697D4(v16, v15, v21);
  v10 = v24;
  v11 = v26;
  v12 = v9;
  v13 = v23;
  *(v17 + 16) = v12;
  (*(v10 + 8))(v13, v11);
  sub_1B98711CC(v19);
  return v17;
}

uint64_t sub_1B986A46C(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[15] = v2;
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v2[19] = 0;
  memset(v2 + 7, 0, 0x28uLL);
  v2[20] = 0;
  v3 = type metadata accessor for BlockedHandle(0);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  v2[27] = swift_task_alloc();
  v4 = sub_1B98F5138();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[16] = a1;
  v2[17] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B986A664, 0);
}

uint64_t sub_1B986A664()
{
  v41 = v0;
  v1 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[21];
  v0[15] = v0;
  v2 = sub_1B98F1E6C();
  (*(v20 + 16))(v1, v2, v21);
  sub_1B98F54D8();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;

  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B98712E8;
  *(v25 + 24) = v23;

  v34 = sub_1B98F5118();
  v35 = sub_1B98F5BD8();
  v27 = swift_allocObject();
  *(v27 + 16) = 34;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1B986B330;
  *(v24 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B98713F0;
  *(v29 + 24) = v24;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B98712F0;
  *(v26 + 24) = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1B9871418;
  *(v32 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v33 = v3;

  *v33 = sub_1B98713E0;
  v33[1] = v27;

  v33[2] = sub_1B98713E8;
  v33[3] = v28;

  v33[4] = sub_1B98713FC;
  v33[5] = v29;

  v33[6] = sub_1B9871408;
  v33[7] = v30;

  v33[8] = sub_1B9871410;
  v33[9] = v31;

  v33[10] = sub_1B9871424;
  v33[11] = v32;
  sub_1B9851B38();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_1B98F5C28();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v17 = sub_1B985263C(0, v15, v15);
    v18 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v36 = buf;
    v37 = v17;
    v38 = v18;
    sub_1B9852690(2, &v36);
    sub_1B9852690(2, &v36);
    v39 = sub_1B98713E0;
    v40 = v27;
    sub_1B98526A4(&v39, &v36, &v37, &v38);
    v39 = sub_1B98713E8;
    v40 = v28;
    sub_1B98526A4(&v39, &v36, &v37, &v38);
    v39 = sub_1B98713FC;
    v40 = v29;
    sub_1B98526A4(&v39, &v36, &v37, &v38);
    v39 = sub_1B9871408;
    v40 = v30;
    sub_1B98526A4(&v39, &v36, &v37, &v38);
    v39 = sub_1B9871410;
    v40 = v31;
    sub_1B98526A4(&v39, &v36, &v37, &v38);
    v39 = sub_1B9871424;
    v40 = v32;
    sub_1B98526A4(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_1B982F000, v34, v35, "%{public}s handles: %s", buf, 0x16u);
    sub_1B985281C(v17, 0, v15);
    sub_1B985281C(v18, 2, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v12 = v19[30];
  v13 = v19[28];
  v11 = v19[29];
  MEMORY[0x1E69E5920](v34);
  (*(v11 + 8))(v12, v13);
  swift_beginAccess();

  swift_endAccess();
  v14 = sub_1B9869A58();

  v19[18] = v14;
  sub_1B98F5298();

  v19[19] = sub_1B98F52A8();
  sub_1B98F54D8();
  sub_1B9853574();
  sub_1B98F5A58();
  memcpy(v19 + 7, v19 + 2, 0x28uLL);
  while (1)
  {
    v9 = v19[27];
    v10 = v19[23];
    v8 = v19[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v8 + 48))(v9, 1, v10) == 1)
    {
      break;
    }

    v7 = v19[26];
    v6 = v19[25];
    sub_1B9832680(v19[27], v7);
    type metadata accessor for ManagedHandle(0);
    sub_1B9833334(v7, v6);
    v19[20] = sub_1B98BBF88(v6);
    sub_1B9870EA4();
    sub_1B98F5288();

    sub_1B983A3AC(v7);
  }

  sub_1B9871430();
  sub_1B98F5258();

  v4 = *(v19[15] + 8);

  return v4();
}

uint64_t sub_1B986B360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B986B394(const void *a1)
{
  v92 = a1;
  v97 = sub_1B986C2A4;
  v98 = sub_1B9871758;
  v102 = sub_1B98716D8;
  v106 = sub_1B9871780;
  v108 = sub_1B9871748;
  v110 = sub_1B9871750;
  v112 = sub_1B9871764;
  v114 = sub_1B9871770;
  v116 = sub_1B9871778;
  v119 = sub_1B987178C;
  v78 = sub_1B986C354;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A0, &qword_1B98FAAA0);
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v83 = &v35 - v82;
  v137 = &v35 - v82;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
  v84 = *(v1 - 8);
  v93 = v84;
  v94 = *(v84 + 64);
  v85 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v96 = &v35 - v85;
  v91 = sub_1B98F5138();
  v89 = *(v91 - 8);
  v90 = v91 - 8;
  v87 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v92);
  v3 = &v35 - v87;
  v88 = &v35 - v87;
  v136 = v2;
  v135 = v4;
  v5 = sub_1B98F1E6C();
  (*(v89 + 16))(v3, v5, v91);
  sub_1B9871470(v92, v96);
  v95 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v104 = 7;
  v105 = swift_allocObject();
  sub_1B98715A4(v96, (v105 + v95));
  v123 = sub_1B98F5118();
  v124 = sub_1B98F5BD8();
  v100 = 17;
  v109 = swift_allocObject();
  *(v109 + 16) = 34;
  v111 = swift_allocObject();
  v101 = 8;
  *(v111 + 16) = 8;
  v103 = 32;
  v6 = swift_allocObject();
  v99 = v6;
  *(v6 + 16) = v97;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v99;
  v113 = v7;
  *(v7 + 16) = v98;
  *(v7 + 24) = v8;
  v115 = swift_allocObject();
  *(v115 + 16) = 32;
  v117 = swift_allocObject();
  *(v117 + 16) = v101;
  v9 = swift_allocObject();
  v10 = v105;
  v107 = v9;
  *(v9 + 16) = v102;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v107;
  v120 = v11;
  *(v11 + 16) = v106;
  *(v11 + 24) = v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v118 = sub_1B98F5F98();
  v121 = v13;

  v14 = v109;
  v15 = v121;
  *v121 = v108;
  v15[1] = v14;

  v16 = v111;
  v17 = v121;
  v121[2] = v110;
  v17[3] = v16;

  v18 = v113;
  v19 = v121;
  v121[4] = v112;
  v19[5] = v18;

  v20 = v115;
  v21 = v121;
  v121[6] = v114;
  v21[7] = v20;

  v22 = v117;
  v23 = v121;
  v121[8] = v116;
  v23[9] = v22;

  v24 = v120;
  v25 = v121;
  v121[10] = v119;
  v25[11] = v24;
  sub_1B9851B38();

  if (os_log_type_enabled(v123, v124))
  {
    v69 = sub_1B98F5C28();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v70 = sub_1B985263C(0, v68, v68);
    v71 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v73 = &v129;
    v129 = v69;
    v74 = &v128;
    v128 = v70;
    v75 = &v127;
    v127 = v71;
    v72 = 2;
    sub_1B9852690(2, &v129);
    sub_1B9852690(v72, v73);
    v26 = v77;
    v125 = v108;
    v126 = v109;
    sub_1B98526A4(&v125, v73, v74, v75);
    v76 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v125 = v110;
      v126 = v111;
      sub_1B98526A4(&v125, &v129, &v128, &v127);
      v65 = 0;
      v125 = v112;
      v126 = v113;
      sub_1B98526A4(&v125, &v129, &v128, &v127);
      v64 = 0;
      v125 = v114;
      v126 = v115;
      sub_1B98526A4(&v125, &v129, &v128, &v127);
      v63 = 0;
      v125 = v116;
      v126 = v117;
      sub_1B98526A4(&v125, &v129, &v128, &v127);
      v62 = 0;
      v125 = v119;
      v126 = v120;
      sub_1B98526A4(&v125, &v129, &v128, &v127);
      v61 = 0;
      _os_log_impl(&dword_1B982F000, v123, v124, "%{public}s predicate: %s", v69, 0x16u);
      sub_1B985281C(v70, 0, v68);
      sub_1B985281C(v71, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v66 = v61;
    }
  }

  else
  {

    v66 = v77;
  }

  v57 = v66;
  MEMORY[0x1E69E5920](v123);
  (*(v89 + 8))(v88, v91);
  v56 = &v134;
  swift_beginAccess();
  v55 = *(v86 + 16);

  swift_endAccess();
  v27 = v57;
  v28 = sub_1B9869A58();
  v58 = v27;
  v59 = v28;
  v60 = v27;
  if (v27)
  {
    v36 = v60;

    v37 = v36;
  }

  else
  {
    v47 = v59;

    v133 = v47;
    v49 = 0;
    sub_1B98F5298();

    v48 = sub_1B98F52A8();
    v132 = v48;
    sub_1B9871470(v92, v96);
    v50 = type metadata accessor for ManagedHandle(v49);
    v51 = sub_1B9870EA4();
    sub_1B986C314();
    sub_1B98F52D8();
    v29 = v58;
    v30 = sub_1B98F5268();
    v52 = v29;
    v53 = v30;
    v54 = v29;
    if (v29)
    {
      v35 = v54;
      (*(v80 + 8))(v83, v79);

      v37 = v35;
    }

    else
    {
      v42 = v53;
      v131 = v53;
      v130[1] = v53;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
      v44 = type metadata accessor for BlockedHandle(0);
      v31 = sub_1B9871798();
      v32 = v52;
      v33 = sub_1B985D064(v78, 0, v43, v44, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v67);
      v45 = v32;
      v46 = v33;
      if (!v32)
      {
        v40 = v130;
        v130[0] = v46;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
        v39 = sub_1B9853574();
        sub_1B9871820();
        v41 = sub_1B98F5AE8();

        (*(v80 + 8))(v83, v79);

        return v41;
      }

      __break(1u);
    }
  }

  return v67;
}

uint64_t sub_1B986C354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  return sub_1B98C26F8(v3, a2);
}

uint64_t sub_1B986C39C(const void *a1)
{
  v80 = a1;
  v85 = sub_1B986D13C;
  v86 = sub_1B9871928;
  v90 = sub_1B98718A8;
  v94 = sub_1B9871950;
  v96 = sub_1B9871918;
  v98 = sub_1B9871920;
  v100 = sub_1B9871934;
  v102 = sub_1B9871940;
  v104 = sub_1B9871948;
  v107 = sub_1B987195C;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v119 = 0;
  v118 = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A0, &qword_1B98FAAA0);
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v71 = v32 - v70;
  v123 = v32 - v70;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
  v72 = *(v1 - 8);
  v81 = v72;
  v82 = *(v72 + 64);
  v73 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v84 = v32 - v73;
  v79 = sub_1B98F5138();
  v77 = *(v79 - 8);
  v78 = v79 - 8;
  v75 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v80);
  v3 = v32 - v75;
  v76 = v32 - v75;
  v122 = v2;
  v121 = v4;
  v5 = sub_1B98F1E6C();
  (*(v77 + 16))(v3, v5, v79);
  sub_1B9871470(v80, v84);
  v83 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v92 = 7;
  v93 = swift_allocObject();
  sub_1B98715A4(v84, (v93 + v83));
  v111 = sub_1B98F5118();
  v112 = sub_1B98F5BD8();
  v88 = 17;
  v97 = swift_allocObject();
  *(v97 + 16) = 34;
  v99 = swift_allocObject();
  v89 = 8;
  *(v99 + 16) = 8;
  v91 = 32;
  v6 = swift_allocObject();
  v87 = v6;
  *(v6 + 16) = v85;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v87;
  v101 = v7;
  *(v7 + 16) = v86;
  *(v7 + 24) = v8;
  v103 = swift_allocObject();
  *(v103 + 16) = 32;
  v105 = swift_allocObject();
  *(v105 + 16) = v89;
  v9 = swift_allocObject();
  v10 = v93;
  v95 = v9;
  *(v9 + 16) = v90;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v95;
  v108 = v11;
  *(v11 + 16) = v94;
  *(v11 + 24) = v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v106 = sub_1B98F5F98();
  v109 = v13;

  v14 = v97;
  v15 = v109;
  *v109 = v96;
  v15[1] = v14;

  v16 = v99;
  v17 = v109;
  v109[2] = v98;
  v17[3] = v16;

  v18 = v101;
  v19 = v109;
  v109[4] = v100;
  v19[5] = v18;

  v20 = v103;
  v21 = v109;
  v109[6] = v102;
  v21[7] = v20;

  v22 = v105;
  v23 = v109;
  v109[8] = v104;
  v23[9] = v22;

  v24 = v108;
  v25 = v109;
  v109[10] = v107;
  v25[11] = v24;
  sub_1B9851B38();

  if (os_log_type_enabled(v111, v112))
  {
    v58 = sub_1B98F5C28();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v59 = sub_1B985263C(0, v57, v57);
    v60 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v62 = &v117;
    v117 = v58;
    v63 = &v116;
    v116 = v59;
    v64 = &v115;
    v115 = v60;
    v61 = 2;
    sub_1B9852690(2, &v117);
    sub_1B9852690(v61, v62);
    v26 = v66;
    v113 = v96;
    v114 = v97;
    sub_1B98526A4(&v113, v62, v63, v64);
    v65 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v113 = v98;
      v114 = v99;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v55 = 0;
      v113 = v100;
      v114 = v101;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v54 = 0;
      v113 = v102;
      v114 = v103;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v53 = 0;
      v113 = v104;
      v114 = v105;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v52 = 0;
      v113 = v107;
      v114 = v108;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v51 = 0;
      _os_log_impl(&dword_1B982F000, v111, v112, "%{public}s predicate: %s", v58, 0x16u);
      sub_1B985281C(v59, 0, v57);
      sub_1B985281C(v60, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v56 = v51;
    }
  }

  else
  {

    v56 = v66;
  }

  v47 = v56;
  MEMORY[0x1E69E5920](v111);
  (*(v77 + 8))(v76, v79);
  v46 = &v120;
  swift_beginAccess();
  v45 = *(v74 + 16);

  swift_endAccess();
  v27 = v47;
  v28 = sub_1B9869A58();
  v48 = v27;
  v49 = v28;
  v50 = v27;
  if (v27)
  {
    v34 = v50;

    v35 = v34;
  }

  else
  {
    v37 = v49;

    v119 = v37;
    v39 = 0;
    sub_1B98F5298();

    v38 = sub_1B98F52A8();
    v118 = v38;
    sub_1B9871470(v80, v84);
    v40 = type metadata accessor for ManagedHandle(v39);
    v41 = sub_1B9870EA4();
    sub_1B986C314();
    sub_1B98F52D8();
    v29 = v48;
    v30 = sub_1B98F5248();
    v42 = v29;
    v43 = v30;
    v44 = v29;
    if (!v29)
    {
      v36 = v43;
      (*(v68 + 8))(v71, v67);

      return v36;
    }

    v33 = v44;
    (*(v68 + 8))(v71, v67);

    v35 = v33;
  }

  return v32[1];
}

uint64_t sub_1B986D1AC(uint64_t a1)
{
  v2[34] = v1;
  v2[33] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  v2[23] = 0;
  v2[25] = 0;
  v2[27] = 0;
  memset(v2 + 7, 0, 0x28uLL);
  v2[29] = 0;
  v2[32] = 0;
  v3 = type metadata accessor for BlockedHandle(0);
  v2[35] = v3;
  v8 = *(v3 - 8);
  v2[36] = v8;
  v2[37] = *(v8 + 64);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
  v2[41] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A0, &qword_1B98FAAA0);
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v6 = sub_1B98F5138();
  v2[48] = v6;
  v2[49] = *(v6 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[18] = a1;
  v2[19] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B986D4F4, 0);
}

uint64_t sub_1B986D4F4()
{
  v98 = v0;
  v1 = v0[51];
  v71 = v0[49];
  v72 = v0[48];
  v74 = v0[33];
  v0[17] = v0;
  v2 = sub_1B98F1E6C();
  v73 = *(v71 + 16);
  v73(v1, v2, v72);
  sub_1B98F54D8();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;

  v77 = swift_allocObject();
  *(v77 + 16) = sub_1B9871968;
  *(v77 + 24) = v75;

  v86 = sub_1B98F5118();
  v87 = sub_1B98F5BD8();
  v79 = swift_allocObject();
  *(v79 + 16) = 34;
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1B986EFE0;
  *(v76 + 24) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1B98719E8;
  *(v81 + 24) = v76;
  v82 = swift_allocObject();
  *(v82 + 16) = 32;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1B9871970;
  *(v78 + 24) = v77;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1B9871A10;
  *(v84 + 24) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v85 = v3;

  *v85 = sub_1B98719D8;
  v85[1] = v79;

  v85[2] = sub_1B98719E0;
  v85[3] = v80;

  v85[4] = sub_1B98719F4;
  v85[5] = v81;

  v85[6] = sub_1B9871A00;
  v85[7] = v82;

  v85[8] = sub_1B9871A08;
  v85[9] = v83;

  v85[10] = sub_1B9871A1C;
  v85[11] = v84;
  sub_1B9851B38();

  if (os_log_type_enabled(v86, v87))
  {
    buf = sub_1B98F5C28();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v68 = sub_1B985263C(0, v66, v66);
    v69 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v93 = buf;
    v94 = v68;
    v95 = v69;
    sub_1B9852690(2, &v93);
    sub_1B9852690(2, &v93);
    v96 = sub_1B98719D8;
    v97 = v79;
    sub_1B98526A4(&v96, &v93, &v94, &v95);
    v96 = sub_1B98719E0;
    v97 = v80;
    sub_1B98526A4(&v96, &v93, &v94, &v95);
    v96 = sub_1B98719F4;
    v97 = v81;
    sub_1B98526A4(&v96, &v93, &v94, &v95);
    v96 = sub_1B9871A00;
    v97 = v82;
    sub_1B98526A4(&v96, &v93, &v94, &v95);
    v96 = sub_1B9871A08;
    v97 = v83;
    sub_1B98526A4(&v96, &v93, &v94, &v95);
    v96 = sub_1B9871A1C;
    v97 = v84;
    sub_1B98526A4(&v96, &v93, &v94, &v95);
    _os_log_impl(&dword_1B982F000, v86, v87, "%{public}s handles: %s", buf, 0x16u);
    sub_1B985281C(v68, 0, v66);
    sub_1B985281C(v69, 2, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v61 = v70[51];
  v62 = v70[48];
  v60 = v70[49];
  MEMORY[0x1E69E5920](v86);
  v63 = *(v60 + 8);
  v63(v61, v62);
  swift_beginAccess();

  swift_endAccess();
  v64 = sub_1B9869A58();
  v56 = v70[33];

  v70[20] = v64;
  sub_1B98F5298();

  v70[21] = sub_1B98F52A8();
  v70[22] = v56;
  KeyPath = swift_getKeyPath();

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v4 = sub_1B9871A5C();
  v59 = sub_1B985D064(sub_1B9871A28, KeyPath, v58, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v65);
  v52 = v70[47];
  v53 = v70[45];
  v54 = v70[41];
  v51 = v70[46];

  v70[23] = v59;
  sub_1B98F54D8();
  *(swift_task_alloc() + 16) = v59;
  v70[24] = type metadata accessor for ManagedHandle(0);
  sub_1B98F4FA8();

  (*(v51 + 16))(v54, v52, v53);
  (*(v51 + 56))(v54, 0, 1, v53);
  sub_1B9870EA4();
  sub_1B986C314();
  sub_1B98F52D8();
  v55 = sub_1B98F5268();
  v70[25] = v55;
  sub_1B98F54D8();
  v70[26] = v55;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
  sub_1B9871B10();
  v50 = sub_1B98F5578();

  v70[27] = v50;
  sub_1B98F54D8();
  sub_1B9853574();
  sub_1B98F5A58();
  memcpy(v70 + 7, v70 + 2, 0x28uLL);
  v48 = 0;
  for (i = 0; ; i = v42)
  {
    v46 = v70[40];
    v47 = v70[35];
    v45 = v70[36];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v45 + 48))(v46, 1, v47) == 1)
    {
      break;
    }

    sub_1B9832680(v70[40], v70[39]);
    v70[15] = BlockedHandle.value.getter();
    v70[16] = v5;
    sub_1B98F55B8();
    sub_1B9868BFC((v70 + 15));
    v44 = v70[28];
    if (v44)
    {
      v70[29] = v44;
      v70[30] = v44;
      sub_1B9871798();
      sub_1B98F5B48();
      v43 = v70[31];
      if (v43)
      {
        v6 = v70[39];
        v40 = v6;
        v70[32] = v43;
        sub_1B98BF548(v6);

        sub_1B983A3AC(v40);
        v41 = v48;
        v42 = i;
        goto LABEL_15;
      }
    }

    v7 = v70[50];
    v27 = v70[48];
    v28 = v70[39];
    v31 = v70[38];
    v29 = v70[36];
    v8 = sub_1B98F1ED8();
    v73(v7, v8, v27);
    sub_1B9833334(v28, v31);
    v30 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v32 = swift_allocObject();
    sub_1B9832680(v31, v32 + v30);
    oslog = sub_1B98F5118();
    v39 = sub_1B98F5BD8();
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1B9871B98;
    *(v33 + 24) = v32;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1B9871C0C;
    *(v36 + 24) = v33;
    sub_1B98F5F98();
    v37 = v9;

    *v37 = sub_1B9871BFC;
    v37[1] = v34;

    v37[2] = sub_1B9871C04;
    v37[3] = v35;

    v37[4] = sub_1B9871C18;
    v37[5] = v36;
    sub_1B9851B38();

    if (os_log_type_enabled(oslog, v39))
    {
      v24 = sub_1B98F5C28();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v25 = sub_1B985263C(0, v23, v23);
      v26 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v88 = v24;
      v89 = v25;
      v90 = v26;
      sub_1B9852690(2, &v88);
      sub_1B9852690(1, &v88);
      v91 = sub_1B9871BFC;
      v92 = v34;
      sub_1B98526A4(&v91, &v88, &v89, &v90);
      v91 = sub_1B9871C04;
      v92 = v35;
      sub_1B98526A4(&v91, &v88, &v89, &v90);
      v91 = sub_1B9871C18;
      v92 = v36;
      sub_1B98526A4(&v91, &v88, &v89, &v90);
      _os_log_impl(&dword_1B982F000, oslog, v39, "Managed object not found for update: %s", v24, 0xCu);
      sub_1B985281C(v25, 0, v23);
      sub_1B985281C(v26, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v21 = 0;
      v22 = 0;
    }

    else
    {

      v21 = v48;
      v22 = i;
    }

    v18 = v70[50];
    v19 = v70[48];
    v20 = v70[39];
    MEMORY[0x1E69E5920](oslog);
    v63(v18, v19);
    sub_1B983A3AC(v20);
    v41 = v21;
    v42 = v22;
LABEL_15:
    v48 = v41;
  }

  sub_1B9871430();
  sub_1B98F5258();
  v16 = v70[47];
  v15 = v70[45];
  v17 = v70[44];
  v13 = v70[42];
  v14 = v70[46];
  v12 = v70[43];

  (*(v12 + 8))(v17, v13);
  (*(v14 + 8))(v16, v15);

  v10 = *(v70[17] + 8);

  return v10();
}

uint64_t sub_1B986F010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B986F044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for BlockedHandle(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1B9833334(v2, &v9 - v10);
  v3 = BlockedHandle.value.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1B983A3AC(v6);
}

uint64_t sub_1B986F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v5 = a1;
  v8 = a2;
  v6 = (*(*(type metadata accessor for BlockedHandle(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v5 - v6;
  sub_1B9833334(v3, &v5 - v6);

  swift_getAtKeyPath();

  return sub_1B983A3AC(v9);
}

uint64_t sub_1B986F1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v13 = a1;
  v12 = a2;
  v37 = 0;
  v36 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5610, &qword_1B98FAC08);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v10 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v9 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5618, &qword_1B98FAC10);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v9 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5620, &qword_1B98FAC18);
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v14 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13);
  v33 = &v9 - v14;
  v16 = *v3;
  v37 = v16;
  v36 = v4;
  v15 = &v35;
  v35 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  sub_1B98F4F18();
  v17 = sub_1B9871F30();
  sub_1B98F4F28();
  KeyPath = swift_getKeyPath();
  sub_1B986F5E0(v21, KeyPath, v22, MEMORY[0x1E69E6158], v17);

  (*(v19 + 8))(v21, v22);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5630, qword_1B98FAC28);
  *(v23 + 24) = v5;
  v6 = sub_1B9871FB8();
  v7 = v23;
  *(v23 + 32) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  v25 = sub_1B9872350();
  v26 = sub_1B98723D8();
  sub_1B985DBF4();
  sub_1B98F4F08();
  (*(v27 + 8))(v29, v30);
  return (*(v31 + 8))(v33, v34);
}

uint64_t sub_1B986F50C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98BC9B4();
  a1[1] = v1;
}

uint64_t sub_1B986F56C(void *a1)
{
  sub_1B9871EF0(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_1B98BCB34(v2, v3);
}

uint64_t sub_1B986F614(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_1B986F67C(__n128 a1)
{
  v4[0] = BlockedHandle.value.getter();
  v4[1] = v1;
  v3 = sub_1B98F1B88(v4, MEMORY[0x1E69E6158]);
  sub_1B985EE4C(v4);
  return v3;
}

uint64_t sub_1B986F6E4(uint64_t a1)
{
  v2[17] = v1;
  v2[16] = a1;
  v2[7] = v2;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[15] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A0, &qword_1B98FAAA0);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v2[21] = v6;
  v2[22] = *(v6 + 64);
  v2[23] = swift_task_alloc();
  v4 = sub_1B98F5138();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[8] = a1;
  v2[9] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B986F8F8, 0);
}

uint64_t sub_1B986F8F8()
{
  v45 = v0;
  v1 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v27 = v0[23];
  v25 = v0[21];
  v24 = v0[16];
  v0[7] = v0;
  v2 = sub_1B98F1E6C();
  (*(v22 + 16))(v1, v2, v23);
  sub_1B9871470(v24, v27);
  v26 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = swift_allocObject();
  sub_1B98715A4(v27, (v29 + v26));
  v38 = sub_1B98F5118();
  v39 = sub_1B98F5BD8();
  v31 = swift_allocObject();
  *(v31 + 16) = 34;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B98706A0;
  *(v28 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B9871CA4;
  *(v33 + 24) = v28;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1B9871C24;
  *(v30 + 24) = v29;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1B9871CCC;
  *(v36 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v37 = v3;

  *v37 = sub_1B9871C94;
  v37[1] = v31;

  v37[2] = sub_1B9871C9C;
  v37[3] = v32;

  v37[4] = sub_1B9871CB0;
  v37[5] = v33;

  v37[6] = sub_1B9871CBC;
  v37[7] = v34;

  v37[8] = sub_1B9871CC4;
  v37[9] = v35;

  v37[10] = sub_1B9871CD8;
  v37[11] = v36;
  sub_1B9851B38();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_1B98F5C28();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v19 = sub_1B985263C(0, v17, v17);
    v20 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v40 = buf;
    v41 = v19;
    v42 = v20;
    sub_1B9852690(2, &v40);
    sub_1B9852690(2, &v40);
    v43 = sub_1B9871C94;
    v44 = v31;
    sub_1B98526A4(&v43, &v40, &v41, &v42);
    v43 = sub_1B9871C9C;
    v44 = v32;
    sub_1B98526A4(&v43, &v40, &v41, &v42);
    v43 = sub_1B9871CB0;
    v44 = v33;
    sub_1B98526A4(&v43, &v40, &v41, &v42);
    v43 = sub_1B9871CBC;
    v44 = v34;
    sub_1B98526A4(&v43, &v40, &v41, &v42);
    v43 = sub_1B9871CC4;
    v44 = v35;
    sub_1B98526A4(&v43, &v40, &v41, &v42);
    v43 = sub_1B9871CD8;
    v44 = v36;
    sub_1B98526A4(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_1B982F000, v38, v39, "%{public}s predicate: %s", buf, 0x16u);
    sub_1B985281C(v19, 0, v17);
    sub_1B985281C(v20, 2, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v14 = v21[26];
  v15 = v21[24];
  v13 = v21[25];
  MEMORY[0x1E69E5920](v38);
  (*(v13 + 8))(v14, v15);
  swift_beginAccess();

  swift_endAccess();
  v16 = sub_1B9869A58();
  v11 = v21[23];
  v10 = v21[16];

  v21[10] = v16;
  sub_1B98F5298();

  v21[11] = sub_1B98F52A8();
  sub_1B9871470(v10, v11);
  type metadata accessor for ManagedHandle(0);
  sub_1B9870EA4();
  sub_1B986C314();
  sub_1B98F52D8();
  v12 = sub_1B98F5268();
  v21[12] = v12;
  sub_1B98F54D8();
  v21[13] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
  sub_1B9871798();
  sub_1B98F5B88();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55E0, qword_1B98FAB28);
    sub_1B98F5DE8();
    v9 = v21[14];
    if (!v9)
    {
      break;
    }

    v21[15] = v9;
    sub_1B98F5278();
  }

  sub_1B9871CE4(v21 + 5);
  sub_1B98F5258();
  v8 = v21[20];
  v7 = v21[18];
  v6 = v21[19];

  (*(v6 + 8))(v8, v7);

  v4 = *(v21[7] + 8);

  return v4();
}

uint64_t sub_1B9870710(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B98707C4;

  return sub_1B986A46C(a1);
}

uint64_t sub_1B98707C4()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B9870950(const void *a1)
{
  v4 = sub_1B986B394(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B98709A4(const void *a1)
{
  v4 = sub_1B986C39C(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B98709F8(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9870AAC;

  return sub_1B986D1AC(a1);
}

uint64_t sub_1B9870AAC()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B9870C38(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9870CEC;

  return sub_1B986F6E4(a1);
}

uint64_t sub_1B9870CEC()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

unint64_t sub_1B9870EA4()
{
  v2 = qword_1EBBD5578;
  if (!qword_1EBBD5578)
  {
    type metadata accessor for ManagedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9870F24()
{
  v2 = qword_1EBBD5580;
  if (!qword_1EBBD5580)
  {
    type metadata accessor for ManagedContact(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9870FA4()
{
  v2 = qword_1EBBD5590;
  if (!qword_1EBBD5590)
  {
    sub_1B98F5388();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5590);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

void *sub_1B98710A4(const void *a1, void *a2)
{
  v6 = sub_1B98F4F88();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5598, &qword_1B98FB3C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B98711CC(uint64_t a1)
{
  v3 = sub_1B98F4F88();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t type metadata accessor for ContainerProvider(uint64_t a1)
{
  v2 = qword_1EBBD55E8;
  if (!qword_1EBBD55E8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B98712F0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B9871358()
{
  v2 = qword_1EBBD5910;
  if (!qword_1EBBD5910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5910);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B9871470(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1B98715A4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B98716D8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B986C2D4(v2);
}

unint64_t sub_1B9871798()
{
  v2 = qword_1EBBD55C0;
  if (!qword_1EBBD55C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD55C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9871820()
{
  v2 = qword_1EBBD5940;
  if (!qword_1EBBD5940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5940);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98718A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B986D16C(v2);
}

uint64_t sub_1B9871970()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B9871A5C()
{
  v2 = qword_1EBBD55D0;
  if (!qword_1EBBD55D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD55D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9871B10()
{
  v2 = qword_1EBBD55D8;
  if (!qword_1EBBD55D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD55D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9871B98()
{
  type metadata accessor for BlockedHandle(0);

  return sub_1B986F67C(v0);
}

uint64_t sub_1B9871C24()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98706D0(v2);
}

uint64_t sub_1B9871D2C(uint64_t a1)
{
  updated = sub_1B98F4F88();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B9871E40(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5600, &qword_1B98FB540);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5608, &qword_1B98FAC00);
  (*(*(v2 - 8) + 8))(a1 + 8);
  return a1;
}

void *sub_1B9871EF0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1B98F54D8();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B9871F30()
{
  v2 = qword_1EBBD5628;
  if (!qword_1EBBD5628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5610, &qword_1B98FAC08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5628);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9871FB8()
{
  v2 = qword_1EBBD5638;
  if (!qword_1EBBD5638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5630, qword_1B98FAC28);
    sub_1B9872060();
    sub_1B9872230();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9872060()
{
  v2 = qword_1EBBD5640;
  if (!qword_1EBBD5640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5620, &qword_1B98FAC18);
    sub_1B9872108();
    sub_1B987219C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9872108()
{
  v2 = qword_1EBBD5648;
  if (!qword_1EBBD5648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B987219C()
{
  v2 = qword_1EBBD5650;
  if (!qword_1EBBD5650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9872230()
{
  v2 = qword_1EBBD5658;
  if (!qword_1EBBD5658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5618, &qword_1B98FAC10);
    sub_1B98722C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98722C8()
{
  v2 = qword_1EBBD5660;
  if (!qword_1EBBD5660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5610, &qword_1B98FAC08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9872350()
{
  v2 = qword_1EBBD5668;
  if (!qword_1EBBD5668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5620, &qword_1B98FAC18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98723D8()
{
  v2 = qword_1EBBD5670;
  if (!qword_1EBBD5670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5618, &qword_1B98FAC10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5670);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B9872460(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1B9872498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 8) + **(a3 + 8));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98725D4;

  return v9(a1, a2, a3);
}

uint64_t sub_1B98725D4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B987274C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 32) + **(a3 + 32));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9872888;

  return v9(a1, a2, a3);
}

uint64_t sub_1B9872888()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98729B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 40) + **(a3 + 40));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9872AEC;

  return v9(a1, a2, a3);
}

uint64_t sub_1B9872AEC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B9872C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B9872CEC(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1B9872C34(a1, v5);
  sub_1B9872D48(v5, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B9872D84(uint64_t a1)
{
  v38 = a1;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v39 = __b;
  v41 = 40;
  memset(__b, 0, sizeof(__b));
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v29 = 0;
  v36 = type metadata accessor for BlockedHandle(0);
  v23 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v24 = &v10 - v23;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v23);
  v26 = &v10 - v25;
  v27 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v25);
  v28 = &v10 - v27;
  v53 = &v10 - v27;
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v10 - v30;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v10 - v33;
  v52 = v5;
  v51 = v1;
  v35 = sub_1B98F5F98();
  v37 = sub_1B9853574();
  v50 = sub_1B98F5A38();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v40 = &v54;
  sub_1B98F5498();
  memcpy(v39, v40, v41);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
    sub_1B98F5558();
    sub_1B98732E4(v32, v34);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
    if ((*(*(v21 - 8) + 48))(v34, 1) == 1)
    {
      break;
    }

    v6 = &v34[*(v21 + 48)];
    v19 = *v6;
    v20 = v6[8];
    sub_1B9832680(v34, v28);
    v47 = v19;
    v48 = v20 & 1;
    if ((v20 & 1) != 0 || (v18 = v19, v43 = v19, v42[1] = v19, v7 = *sub_1B98E6FD4(), v17 = v42, v42[0] = v7, sub_1B9873520(), v8 = sub_1B98F60E8(), (v8 & 1) == 0))
    {
      v15 = v44;
      sub_1B9872C34(v22 + 16, v44);
      v13 = v45;
      v14 = v46;
      __swift_project_boxed_opaque_existential_1(v15, v45);
      v16 = (*(v14 + 8))(v28, v13);
      __swift_destroy_boxed_opaque_existential_1(v15);
      if (v16)
      {
        sub_1B9833334(v28, v24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v26);
      }
    }

    sub_1B983A3AC(v28);
  }

  sub_1B987349C(__b);
  v11 = &v50;
  v12 = v50;
  sub_1B98F54D8();
  sub_1B9868D78(v11);
  return v12;
}

char *sub_1B98732E4(char *a1, char *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = sub_1B98F5078();
    (*(*(v2 - 8) + 32))(a2, a1);
    v7 = type metadata accessor for BlockedHandle(0);
    *&a2[v7[5]] = *&a1[v7[5]];
    *&a2[v7[6]] = *&a1[v7[6]];
    *&a2[v7[7]] = *&a1[v7[7]];
    *&a2[v7[8]] = *&a1[v7[8]];
    v3 = &a2[*(v10 + 48)];
    v4 = &a1[*(v10 + 48)];
    *v3 = *v4;
    v3[8] = v4[8];
    (*(v11 + 56))();
  }

  return a2;
}

unint64_t sub_1B9873520()
{
  v2 = qword_1EBBD5900;
  if (!qword_1EBBD5900)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9873598(uint64_t a1)
{
  v38 = a1;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v39 = __b;
  v41 = 40;
  memset(__b, 0, sizeof(__b));
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v29 = 0;
  v36 = type metadata accessor for BlockedHandle(0);
  v23 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v24 = &v10 - v23;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v23);
  v26 = &v10 - v25;
  v27 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v25);
  v28 = &v10 - v27;
  v53 = &v10 - v27;
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v10 - v30;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v10 - v33;
  v52 = v5;
  v51 = v1;
  v35 = sub_1B98F5F98();
  v37 = sub_1B9853574();
  v50 = sub_1B98F5A38();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v40 = &v54;
  sub_1B98F5498();
  memcpy(v39, v40, v41);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
    sub_1B98F5558();
    sub_1B98732E4(v32, v34);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
    if ((*(*(v21 - 8) + 48))(v34, 1) == 1)
    {
      break;
    }

    v6 = &v34[*(v21 + 48)];
    v19 = *v6;
    v20 = v6[8];
    sub_1B9832680(v34, v28);
    v47 = v19;
    v48 = v20 & 1;
    if ((v20 & 1) != 0 || (v18 = v19, v43 = v19, v42[1] = v19, v7 = *sub_1B98E6FD4(), v17 = v42, v42[0] = v7, sub_1B9873520(), v8 = sub_1B98F60E8(), (v8 & 1) == 0))
    {
      v15 = v44;
      sub_1B9872C34(v22 + 16, v44);
      v13 = v45;
      v14 = v46;
      __swift_project_boxed_opaque_existential_1(v15, v45);
      v16 = (*(v14 + 16))(v28, v13);
      __swift_destroy_boxed_opaque_existential_1(v15);
      if (v16)
      {
        sub_1B9833334(v28, v24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v26);
      }
    }

    sub_1B983A3AC(v28);
  }

  sub_1B987349C(__b);
  v11 = &v50;
  v12 = v50;
  sub_1B98F54D8();
  sub_1B9868D78(v11);
  return v12;
}

uint64_t sub_1B9873C14()
{
  v5 = 0;
  v6 = 0;
  v4[0] = sub_1B9873D18();
  v4[1] = v0;
  v3 = sub_1B9874638(v4, &unk_1F3795310);

  v5 = v3;
  sub_1B9874700();
  v2 = sub_1B9874764();
  MEMORY[0x1E69E5928](v2);
  v6 = v2;
  sub_1B9874794(&v5);
  return v3;
}

id sub_1B9873D18()
{
  v4 = sub_1B987489C;
  v5 = sub_1B9879490;
  v6 = sub_1B987949C;
  v7 = sub_1B9879480;
  v8 = sub_1B9879488;
  v9 = sub_1B987962C;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v16 = 0;
  v10 = sub_1B98F5138();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v14 = v1 - v13;
  sub_1B98747D4();
  v15 = sub_1B98744C8();
  MEMORY[0x1E69E5928](v15);
  v20 = v15;
  sub_1B9874838();
  v17 = sub_1B98744F8(1, 0);
  v18 = 0;
  v2 = v17;
  MEMORY[0x1E69E5928](v17);
  v21 = v2;
  v3 = v2;
  v1[28] = v2;
  sub_1B9879638(&v20);
  return v15;
}

id sub_1B98744F8(char a1, char a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1B9878EB0(a1 & 1, a2 & 1);
  if (v6)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1B9874638(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B98F5D58();
  v5 = sub_1B98F5D48();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

unint64_t sub_1B9874700()
{
  v2 = qword_1EBBD5688;
  if (!qword_1EBBD5688)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5688);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9874794(uint64_t a1)
{

  MEMORY[0x1E69E5920](*(a1 + 8));
  return a1;
}

unint64_t sub_1B98747D4()
{
  v2 = qword_1EBBD5690;
  if (!qword_1EBBD5690)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5690);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9874838()
{
  v2 = qword_1EBBD5698;
  if (!qword_1EBBD5698)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5698);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B98748A4(uint64_t a1, uint64_t a2, void *a3)
{
  v140 = &v162;
  v132 = a3;
  v135 = a2;
  v144 = a1;
  v134 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v133 = 0;
  v163 = 0;
  v127 = 0;
  v155 = 0;
  v150 = 0;
  v149 = 0;
  v4 = type metadata accessor for BlockedHandle(0);
  v128 = *(v4 - 8);
  v143 = v4 - 8;
  v129 = v128;
  v130 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](0);
  v131 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1B98F5138();
  v137 = *(v136 - 8);
  v138 = v137;
  v139 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v6 = v140;
  v141 = &v50 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v140 + 5) = a1;
  *(v6 + 3) = v7;
  *(v6 + 4) = v8;
  v163 = v9;
  v142 = sub_1B9879680();
  v145 = BlockedHandle.value.getter();
  v146 = v10;
  v147 = *(v144 + *(v143 + 40));
  sub_1B98F54D8();
  v161 = v147;
  if (*(&v147 + 1))
  {
    v162 = v161;
  }

  else
  {
    v126 = TUNetworkCountryCode();
    if (v126)
    {
      v125 = v126;
      v120 = v126;
      v121 = sub_1B98F5658();
      v122 = v11;

      v123 = v121;
      v124 = v122;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    *&v162 = v123;
    *(v140 + 1) = v124;
    if (*(&v161 + 1))
    {
      sub_1B985EE4C(&v161);
    }
  }

  v119 = sub_1B9875970(v145, v146, v162, *(v140 + 1));
  if (!v119)
  {
    v18 = v141;
    v19 = sub_1B98F1E6C();
    (*(v138 + 16))(v18, v19, v136);

    v20 = v132;
    v81 = 32;
    v86 = 32;
    v87 = 7;
    v21 = swift_allocObject();
    v22 = v132;
    v23 = v131;
    v24 = v21;
    v25 = v144;
    v78 = v24;
    *(v24 + 16) = v135;
    *(v24 + 24) = v22;
    sub_1B9833334(v25, v23);
    v73 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v88 = swift_allocObject();
    sub_1B9832680(v131, v88 + v73);
    v101 = sub_1B98F5118();
    v74 = v101;
    v100 = sub_1B98F5BB8();
    v75 = v100;
    v82 = 17;
    v91 = swift_allocObject();
    v76 = v91;
    *(v91 + 16) = v81;
    v92 = swift_allocObject();
    v77 = v92;
    v84 = 8;
    *(v92 + 16) = 8;
    v26 = swift_allocObject();
    v27 = v78;
    v79 = v26;
    *(v26 + 16) = sub_1B98796E4;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v79;
    v93 = v28;
    v80 = v28;
    *(v28 + 16) = sub_1B9879764;
    *(v28 + 24) = v29;
    v94 = swift_allocObject();
    v83 = v94;
    *(v94 + 16) = v81;
    v95 = swift_allocObject();
    v85 = v95;
    *(v95 + 16) = v84;
    v30 = swift_allocObject();
    v31 = v88;
    v89 = v30;
    *(v30 + 16) = sub_1B98796F0;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v89;
    v98 = v32;
    v90 = v32;
    *(v32 + 16) = sub_1B987978C;
    *(v32 + 24) = v33;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v96 = sub_1B98F5F98();
    v97 = v34;

    v35 = v91;
    v36 = v97;
    *v97 = sub_1B9879754;
    v36[1] = v35;

    v37 = v92;
    v38 = v97;
    v97[2] = sub_1B987975C;
    v38[3] = v37;

    v39 = v93;
    v40 = v97;
    v97[4] = sub_1B9879770;
    v40[5] = v39;

    v41 = v94;
    v42 = v97;
    v97[6] = sub_1B987977C;
    v42[7] = v41;

    v43 = v95;
    v44 = v97;
    v97[8] = sub_1B9879784;
    v44[9] = v43;

    v45 = v97;
    v46 = v98;
    v97[10] = sub_1B9879798;
    v45[11] = v46;
    sub_1B9851B38();

    if (os_log_type_enabled(v101, v100))
    {
      v47 = v127;
      v66 = sub_1B98F5C28();
      v63 = v66;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v67 = sub_1B985263C(0, v64, v64);
      v65 = v67;
      v69 = 2;
      v68 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v160 = v66;
      v159 = v67;
      v158 = v68;
      v70 = &v160;
      sub_1B9852690(v69, &v160);
      sub_1B9852690(v69, v70);
      v156 = sub_1B9879754;
      v157 = v76;
      sub_1B98526A4(&v156, v70, &v159, &v158);
      v71 = v47;
      v72 = v47;
      if (v47)
      {
        v61 = 0;

        __break(1u);
      }

      else
      {
        v156 = sub_1B987975C;
        v157 = v77;
        sub_1B98526A4(&v156, &v160, &v159, &v158);
        v59 = 0;
        v60 = 0;
        v156 = sub_1B9879770;
        v157 = v80;
        sub_1B98526A4(&v156, &v160, &v159, &v158);
        v57 = 0;
        v58 = 0;
        v156 = sub_1B987977C;
        v157 = v83;
        sub_1B98526A4(&v156, &v160, &v159, &v158);
        v55 = 0;
        v56 = 0;
        v156 = sub_1B9879784;
        v157 = v85;
        sub_1B98526A4(&v156, &v160, &v159, &v158);
        v53 = 0;
        v54 = 0;
        v156 = sub_1B9879798;
        v157 = v90;
        sub_1B98526A4(&v156, &v160, &v159, &v158);
        v51 = 0;
        v52 = 0;
        _os_log_impl(&dword_1B982F000, v74, v75, "%s Failed to create TUPhoneNumber from %s. Marking as unidentified", v63, 0x16u);
        sub_1B985281C(v65, 0, v64);
        sub_1B985281C(v68, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v62 = v51;
      }
    }

    else
    {
      v48 = v127;

      v62 = v48;
    }

    v50 = v62;

    (*(v138 + 8))(v141, v136);
    v103 = 0;
    v104 = v50;
    return v103 & 1;
  }

  v118 = v119;
  v116 = v119;
  v155 = v119;
  v12 = [v119 unformattedInternationalRepresentation];
  v117 = v12;
  if (v12)
  {
    v115 = v117;
    v110 = v117;
    v111 = sub_1B98F5658();
    v112 = v13;

    v113 = v111;
    v114 = v112;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  v151 = v113;
  v152 = v114;
  if (v114)
  {
    v153 = v151;
    v154 = v152;
  }

  else
  {
    v153 = BlockedHandle.value.getter();
    v154 = v14;
    if (v152)
    {
      sub_1B985EE4C(&v151);
    }
  }

  v15 = v127;
  v108 = v153;
  v106 = v154;
  v105 = v154;
  v149 = v153;
  v150 = v154;

  sub_1B98F54D8();
  v107 = &v50;
  MEMORY[0x1EEE9AC00](&v50);
  *(&v50 - 2) = v108;
  *(&v50 - 1) = v16;
  sub_1B9875AE4(sub_1B98797A4, (&v50 - 4), v17, &unk_1F3795310, MEMORY[0x1E69E6370]);
  v109 = v15;
  if (!v15)
  {

    v102 = v148;
    v163 = v148;

    v103 = v102;
    v104 = v109;
    return v103 & 1;
  }

  __break(1u);
  return result;
}

void sub_1B98759C8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8[3] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v6 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1B98F54D8();
  v5 = sub_1B98F5648();

  v7 = [v6 firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber:v5 cacheOnly:1];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  v8[0] = v7;
  sub_1B987A298(v8);
  *a4 = v7 != 0;
}

uint64_t sub_1B9875B48(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1E69E5928](a2);
  v6[0] = a1;
  v6[1] = a2;
  v5 = sub_1B98F1B88(v6, &unk_1F3795390);
  sub_1B987A1FC(v6);
  return v5;
}

uint64_t sub_1B9875BE8(uint64_t a1, uint64_t a2, void *a3)
{
  v233 = a3;
  v235 = a2;
  v234 = a1;
  v228 = 0;
  v260 = 0;
  v259 = 0;
  v258 = 0;
  v257 = 0;
  v256 = 0;
  v227 = 0;
  v254 = 0;
  v229 = *(type metadata accessor for BlockedHandle(0) - 8);
  v230 = v229;
  v231 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](0);
  v232 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1B98F5138();
  v237 = *(v236 - 8);
  v238 = v237;
  v239 = *(v237 + 64);
  v4 = MEMORY[0x1EEE9AC00](v234);
  v241 = (v239 + 15) & 0xFFFFFFFFFFFFFFF0;
  v240 = &v88 - v241;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v242 = &v88 - v241;
  v260 = v5;
  v258 = v6;
  v259 = v7;
  v243 = TUNetworkCountryCode();
  if (v243)
  {
    v226 = v243;
    v221 = v243;
    v222 = sub_1B98F5658();
    v223 = v8;

    v224 = v222;
    v225 = v223;
  }

  else
  {
    v224 = 0;
    v225 = 0;
  }

  v9 = v242;
  v186 = v225;
  v190 = sub_1B9877918(v234, v224, v225, v235, v233);
  v187 = v190;

  v257 = v190;
  v256 = 0;
  v10 = sub_1B98F1E6C();
  v188 = *(v238 + 16);
  v189 = (v238 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v188(v9, v10, v236);

  v11 = v233;
  v199 = 32;
  v204 = 32;
  v205 = 7;
  v12 = swift_allocObject();
  v13 = v233;
  v196 = v12;
  *(v12 + 16) = v235;
  *(v12 + 24) = v13;
  sub_1B98F54D8();
  v191 = swift_allocObject();
  *(v191 + 16) = v190;

  v14 = swift_allocObject();
  v15 = v191;
  v206 = v14;
  *(v14 + 16) = sub_1B98797DC;
  *(v14 + 24) = v15;

  v220 = sub_1B98F5118();
  v192 = v220;
  v219 = sub_1B98F5BD8();
  v193 = v219;
  v200 = 17;
  v210 = swift_allocObject();
  v194 = v210;
  *(v210 + 16) = v199;
  v211 = swift_allocObject();
  v195 = v211;
  v202 = 8;
  *(v211 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v196;
  v197 = v16;
  *(v16 + 16) = sub_1B98797D0;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v197;
  v212 = v18;
  v198 = v18;
  *(v18 + 16) = sub_1B98798E4;
  *(v18 + 24) = v19;
  v213 = swift_allocObject();
  v201 = v213;
  *(v213 + 16) = v199;
  v214 = swift_allocObject();
  v203 = v214;
  *(v214 + 16) = v202;
  v20 = swift_allocObject();
  v21 = v206;
  v207 = v20;
  *(v20 + 16) = sub_1B98797E4;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v207;
  v217 = v22;
  v208 = v22;
  *(v22 + 16) = sub_1B987990C;
  *(v22 + 24) = v23;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v209 = v218;
  v215 = sub_1B98F5F98();
  v216 = v24;

  v25 = v210;
  v26 = v216;
  *v216 = sub_1B98798D4;
  v26[1] = v25;

  v27 = v211;
  v28 = v216;
  v216[2] = sub_1B98798DC;
  v28[3] = v27;

  v29 = v212;
  v30 = v216;
  v216[4] = sub_1B98798F0;
  v30[5] = v29;

  v31 = v213;
  v32 = v216;
  v216[6] = sub_1B98798FC;
  v32[7] = v31;

  v33 = v214;
  v34 = v216;
  v216[8] = sub_1B9879904;
  v34[9] = v33;

  v35 = v216;
  v36 = v217;
  v216[10] = sub_1B9879918;
  v35[11] = v36;
  sub_1B9851B38();

  if (os_log_type_enabled(v220, v219))
  {
    v37 = v227;
    v179 = sub_1B98F5C28();
    v176 = v179;
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v180 = sub_1B985263C(0, v177, v177);
    v178 = v180;
    v182 = 2;
    v181 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v248 = v179;
    v247 = v180;
    v246 = v181;
    v183 = &v248;
    sub_1B9852690(v182, &v248);
    sub_1B9852690(v182, v183);
    v244 = sub_1B98798D4;
    v245 = v194;
    sub_1B98526A4(&v244, v183, &v247, &v246);
    v184 = v37;
    v185 = v37;
    if (v37)
    {
      v174 = 0;

      __break(1u);
    }

    else
    {
      v244 = sub_1B98798DC;
      v245 = v195;
      sub_1B98526A4(&v244, &v248, &v247, &v246);
      v172 = 0;
      v173 = 0;
      v244 = sub_1B98798F0;
      v245 = v198;
      sub_1B98526A4(&v244, &v248, &v247, &v246);
      v170 = 0;
      v171 = 0;
      v244 = sub_1B98798FC;
      v245 = v201;
      sub_1B98526A4(&v244, &v248, &v247, &v246);
      v168 = 0;
      v169 = 0;
      v244 = sub_1B9879904;
      v245 = v203;
      sub_1B98526A4(&v244, &v248, &v247, &v246);
      v166 = 0;
      v167 = 0;
      v244 = sub_1B9879918;
      v245 = v208;
      sub_1B98526A4(&v244, &v248, &v247, &v246);
      v164 = 0;
      v165 = 0;
      _os_log_impl(&dword_1B982F000, v192, v193, "%s Phone number variants %s", v176, 0x16u);
      sub_1B985281C(v178, 0, v177);
      sub_1B985281C(v181, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v175 = v164;
    }
  }

  else
  {
    v38 = v227;

    v175 = v38;
  }

  v39 = v175;

  v159 = *(v238 + 8);
  v160 = (v238 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v159(v242, v236);

  sub_1B98F54D8();
  v161 = &v88;
  MEMORY[0x1EEE9AC00](&v88);
  *(&v88 - 2) = v40;
  sub_1B9875AE4(sub_1B9879924, (&v88 - 4), v41, &unk_1F3795310, MEMORY[0x1E69E6370]);
  v162 = v39;
  v163 = v39;
  if (v39)
  {
    v43 = v240;
    v119 = v163;
    v117 = 0;

    v44 = v119;
    v254 = v119;
    v45 = sub_1B98F1E6C();
    v188(v43, v45, v236);

    v46 = v233;
    v127 = 32;
    v138 = 32;
    v139 = 7;
    v47 = swift_allocObject();
    v48 = v233;
    v49 = v232;
    v50 = v47;
    v51 = v234;
    v124 = v50;
    *(v50 + 16) = v235;
    *(v50 + 24) = v48;
    sub_1B9833334(v51, v49);
    v118 = (*(v230 + 80) + 16) & ~*(v230 + 80);
    v130 = swift_allocObject();
    sub_1B9832680(v232, v130 + v118);
    v52 = v119;
    v137 = swift_allocObject();
    *(v137 + 16) = v119;
    sub_1B98745B0();

    v155 = sub_1B98F5118();
    v120 = v155;
    v154 = sub_1B98F5BB8();
    v121 = v154;
    v133 = 17;
    v143 = swift_allocObject();
    v122 = v143;
    *(v143 + 16) = v127;
    v144 = swift_allocObject();
    v123 = v144;
    v135 = 8;
    *(v144 + 16) = 8;
    v53 = swift_allocObject();
    v54 = v124;
    v125 = v53;
    *(v53 + 16) = sub_1B987994C;
    *(v53 + 24) = v54;
    v55 = swift_allocObject();
    v56 = v125;
    v145 = v55;
    v126 = v55;
    *(v55 + 16) = sub_1B98799D4;
    *(v55 + 24) = v56;
    v146 = swift_allocObject();
    v128 = v146;
    *(v146 + 16) = v127;
    v147 = swift_allocObject();
    v129 = v147;
    *(v147 + 16) = v135;
    v57 = swift_allocObject();
    v58 = v130;
    v131 = v57;
    *(v57 + 16) = sub_1B9879958;
    *(v57 + 24) = v58;
    v59 = swift_allocObject();
    v60 = v131;
    v148 = v59;
    v132 = v59;
    *(v59 + 16) = sub_1B98799FC;
    *(v59 + 24) = v60;
    v149 = swift_allocObject();
    v134 = v149;
    *(v149 + 16) = 64;
    v150 = swift_allocObject();
    v136 = v150;
    *(v150 + 16) = v135;
    v61 = swift_allocObject();
    v62 = v137;
    v140 = v61;
    *(v61 + 16) = sub_1B98799BC;
    *(v61 + 24) = v62;
    v63 = swift_allocObject();
    v64 = v140;
    v141 = v63;
    *(v63 + 16) = sub_1B9879A24;
    *(v63 + 24) = v64;
    v65 = swift_allocObject();
    v66 = v141;
    v153 = v65;
    v142 = v65;
    *(v65 + 16) = sub_1B9879A30;
    *(v65 + 24) = v66;
    v151 = sub_1B98F5F98();
    v152 = v67;

    v68 = v143;
    v69 = v152;
    *v152 = sub_1B98799C4;
    v69[1] = v68;

    v70 = v144;
    v71 = v152;
    v152[2] = sub_1B98799CC;
    v71[3] = v70;

    v72 = v145;
    v73 = v152;
    v152[4] = sub_1B98799E0;
    v73[5] = v72;

    v74 = v146;
    v75 = v152;
    v152[6] = sub_1B98799EC;
    v75[7] = v74;

    v76 = v147;
    v77 = v152;
    v152[8] = sub_1B98799F4;
    v77[9] = v76;

    v78 = v148;
    v79 = v152;
    v152[10] = sub_1B9879A08;
    v79[11] = v78;

    v80 = v149;
    v81 = v152;
    v152[12] = sub_1B9879A14;
    v81[13] = v80;

    v82 = v150;
    v83 = v152;
    v152[14] = sub_1B9879A1C;
    v83[15] = v82;

    v84 = v152;
    v85 = v153;
    v152[16] = sub_1B9879A3C;
    v84[17] = v85;
    sub_1B9851B38();

    if (os_log_type_enabled(v155, v154))
    {
      v86 = v117;
      v110 = sub_1B98F5C28();
      v107 = v110;
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v111 = sub_1B985263C(1, v108, v108);
      v109 = v111;
      v112 = 2;
      v113 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v253 = v110;
      v252 = v111;
      v251 = v113;
      v114 = &v253;
      sub_1B9852690(v112, &v253);
      sub_1B9852690(3, v114);
      v249 = sub_1B98799C4;
      v250 = v122;
      sub_1B98526A4(&v249, v114, &v252, &v251);
      v115 = v86;
      v116 = v86;
      if (v86)
      {
        v105 = 0;

        __break(1u);
      }

      else
      {
        v249 = sub_1B98799CC;
        v250 = v123;
        sub_1B98526A4(&v249, &v253, &v252, &v251);
        v103 = 0;
        v104 = 0;
        v249 = sub_1B98799E0;
        v250 = v126;
        sub_1B98526A4(&v249, &v253, &v252, &v251);
        v101 = 0;
        v102 = 0;
        v249 = sub_1B98799EC;
        v250 = v128;
        sub_1B98526A4(&v249, &v253, &v252, &v251);
        v99 = 0;
        v100 = 0;
        v249 = sub_1B98799F4;
        v250 = v129;
        sub_1B98526A4(&v249, &v253, &v252, &v251);
        v97 = 0;
        v98 = 0;
        v249 = sub_1B9879A08;
        v250 = v132;
        sub_1B98526A4(&v249, &v253, &v252, &v251);
        v95 = 0;
        v96 = 0;
        v249 = sub_1B9879A14;
        v250 = v134;
        sub_1B98526A4(&v249, &v253, &v252, &v251);
        v93 = 0;
        v94 = 0;
        v249 = sub_1B9879A1C;
        v250 = v136;
        sub_1B98526A4(&v249, &v253, &v252, &v251);
        v91 = 0;
        v92 = 0;
        v249 = sub_1B9879A3C;
        v250 = v142;
        sub_1B98526A4(&v249, &v253, &v252, &v251);
        v89 = 0;
        v90 = 0;
        _os_log_impl(&dword_1B982F000, v120, v121, "%s Error checking if call directory database contains blocking entry for source address %s: %@", v107, 0x20u);
        sub_1B985281C(v109, 1, v108);
        sub_1B985281C(v113, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v106 = v89;
      }
    }

    else
    {
      v87 = v117;

      v106 = v87;
    }

    v88 = v106;

    v159(v240, v236);
    v157 = 0;
    v158 = v88;
  }

  else
  {

    v256 = v255;
    v157 = v255;
    v158 = v162;
  }

  v156 = v157;

  return v156 & 1;
}

uint64_t sub_1B9877918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v167 = a1;
  v195 = a2;
  v196 = a3;
  v184 = a4;
  v185 = a5;
  v168 = sub_1B9879A48;
  v169 = sub_1B9879AC8;
  v170 = sub_1B9879A54;
  v171 = sub_1B9879AF0;
  v172 = sub_1B9879AB8;
  v173 = sub_1B9879AC0;
  v174 = sub_1B9879AD4;
  v175 = sub_1B9879AE0;
  v176 = sub_1B9879AE8;
  v177 = sub_1B9879AFC;
  v227 = 0;
  v225 = 0;
  v226 = 0;
  v223 = 0;
  v224 = 0;
  v178 = 0;
  v217 = 0;
  v216 = 0;
  v212 = 0;
  v213 = 0;
  v210 = 0;
  v211 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0;
  v201 = 0;
  v202 = 0;
  v199 = 0;
  v200 = 0;
  v186 = 0;
  v179 = *(type metadata accessor for BlockedHandle(0) - 8);
  v180 = v179;
  v181 = *(v179 + 64);
  v182 = (v181 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v183 = v54 - v182;
  v187 = sub_1B98F5138();
  v188 = *(v187 - 8);
  v189 = v187 - 8;
  v190 = (*(v188 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v186);
  v191 = v54 - v190;
  v227 = a1;
  v225 = v6;
  v226 = v7;
  v223 = v8;
  v224 = v9;
  v192 = sub_1B9879680();
  v193 = BlockedHandle.value.getter();
  v194 = v10;
  sub_1B98F54D8();
  v197 = sub_1B9875970(v193, v194, v195, v196);
  if (v197)
  {
    v166 = v197;
    v164 = v197;
    v217 = v197;
    v216 = sub_1B98F5F98();
    v165 = [v164 digits];
    if (v165)
    {
      v163 = v165;
      v158 = v165;
      v159 = sub_1B98F5658();
      v160 = v11;
      MEMORY[0x1E69E5920](v158);
      v161 = v159;
      v162 = v160;
    }

    else
    {
      v161 = 0;
      v162 = 0;
    }

    v156 = v162;
    v157 = v161;
    if (v162)
    {
      v154 = v157;
      v155 = v156;
      v151 = v156;
      v150 = v157;
      v201 = v157;
      v202 = v156;
      MEMORY[0x1E69E5928](v185);
      sub_1B98F54D8();
      v152 = sub_1B98F5648();

      v153 = [v185 canonicalizedPhoneNumber_];
      MEMORY[0x1E69E5920](v152);
      MEMORY[0x1E69E5920](v185);
      if (v153)
      {
        v149 = v153;
        v144 = v153;
        v145 = sub_1B98F5658();
        v146 = v12;
        MEMORY[0x1E69E5920](v144);
        v147 = v145;
        v148 = v146;
      }

      else
      {
        v147 = 0;
        v148 = 0;
      }

      v142 = v148;
      v143 = v147;
      if (v148)
      {
        v140 = v143;
        v141 = v142;
        v139 = v142;
        v137 = v143;
        v199 = v143;
        v200 = v142;
        sub_1B98F54D8();
        v214 = v137;
        v215 = v139;
        sub_1B98F54D8();
        v138 = v198;
        v198[0] = v137;
        v198[1] = v139;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
        sub_1B98F5908();

        goto LABEL_15;
      }
    }

    v214 = 0;
    v215 = 0;
LABEL_15:
    v136 = [v164 unformattedInternationalRepresentation];
    if (v136)
    {
      v135 = v136;
      v130 = v136;
      v131 = sub_1B98F5658();
      v132 = v13;
      MEMORY[0x1E69E5920](v130);
      v133 = v131;
      v134 = v132;
    }

    else
    {
      v133 = 0;
      v134 = 0;
    }

    v128 = v134;
    v129 = v133;
    if (v134)
    {
      v126 = v129;
      v127 = v128;
      v123 = v128;
      v122 = v129;
      v206 = v129;
      v207 = v128;
      MEMORY[0x1E69E5928](v185);
      sub_1B98F54D8();
      v124 = sub_1B98F5648();

      v125 = [v185 canonicalizedPhoneNumber_];
      MEMORY[0x1E69E5920](v124);
      MEMORY[0x1E69E5920](v185);
      if (v125)
      {
        v121 = v125;
        v116 = v125;
        v117 = sub_1B98F5658();
        v118 = v14;
        MEMORY[0x1E69E5920](v116);
        v119 = v117;
        v120 = v118;
      }

      else
      {
        v119 = 0;
        v120 = 0;
      }

      v114 = v120;
      v115 = v119;
      if (v120)
      {
        v112 = v115;
        v113 = v114;
        v111 = v114;
        v109 = v115;
        v204 = v115;
        v205 = v114;
        sub_1B98F54D8();
        v110 = v203;
        v203[0] = v109;
        v203[1] = v111;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
        sub_1B98F5908();

LABEL_36:
        v85 = &v216;
        v86 = v216;
        sub_1B98F54D8();
        sub_1B985EE4C(&v214);
        sub_1B9879B08(v85);
        MEMORY[0x1E69E5920](v164);
        return v86;
      }
    }

    v107 = v214;
    v108 = v215;
    sub_1B98F54D8();
    if (v108)
    {
      v105 = v107;
      v106 = v108;
      v103 = v108;
      v104 = v107;
      v212 = v107;
      v213 = v108;
      sub_1B98F54D8();
      if (v196)
      {
        v101 = v195;
        v102 = v196;
        v97 = v196;
        v96 = v195;
        v210 = v195;
        v211 = v196;
        v98 = objc_opt_self();
        sub_1B98F54D8();
        v99 = sub_1B98F5648();

        v100 = [v98 ITUCountryCodeForISOCountryCode_];
        MEMORY[0x1E69E5920](v99);
        v209 = v100;
        if (v100 != sub_1B98F4ED8())
        {
          v91 = sub_1B98F55E8("%ld%@", 5, 1);
          v92 = v15;
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD56B0, &qword_1B98FAD48);
          v16 = sub_1B98F5F98();
          v17 = v100;
          v90 = v16;
          v88 = v18;
          v18[3] = MEMORY[0x1E69E6530];
          v18[4] = MEMORY[0x1E69E65A8];
          *v18 = v17;
          sub_1B98F54D8();
          v88[8] = MEMORY[0x1E69E6158];
          v19 = sub_1B9879B34();
          v20 = v104;
          v21 = v88;
          v22 = v103;
          v88[9] = v19;
          v21[5] = v20;
          v21[6] = v22;
          sub_1B9851B38();
          v93 = sub_1B98F5668();
          v94 = v23;

          v95 = v208;
          v208[0] = v93;
          v208[1] = v94;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
          sub_1B98F5908();
        }
      }

      else
      {
      }
    }

    goto LABEL_36;
  }

  v24 = v191;
  v25 = sub_1B98F1E6C();
  (*(v188 + 16))(v24, v25, v187);

  MEMORY[0x1E69E5928](v185);
  v70 = 32;
  v71 = 7;
  v26 = swift_allocObject();
  v27 = v185;
  v28 = v183;
  v29 = v26;
  v30 = v167;
  v65 = v29;
  *(v29 + 16) = v184;
  *(v29 + 24) = v27;
  sub_1B9833334(v30, v28);
  v64 = (*(v180 + 80) + 16) & ~*(v180 + 80);
  v72 = swift_allocObject();
  sub_1B9832680(v183, v72 + v64);
  v83 = sub_1B98F5118();
  v84 = sub_1B98F5BB8();
  v68 = 17;
  v74 = swift_allocObject();
  v67 = 32;
  *(v74 + 16) = 32;
  v75 = swift_allocObject();
  v69 = 8;
  *(v75 + 16) = 8;
  v31 = swift_allocObject();
  v32 = v65;
  v66 = v31;
  *(v31 + 16) = v168;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v66;
  v76 = v33;
  *(v33 + 16) = v169;
  *(v33 + 24) = v34;
  v77 = swift_allocObject();
  *(v77 + 16) = v67;
  v78 = swift_allocObject();
  *(v78 + 16) = v69;
  v35 = swift_allocObject();
  v36 = v72;
  v73 = v35;
  *(v35 + 16) = v170;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v73;
  v80 = v37;
  *(v37 + 16) = v171;
  *(v37 + 24) = v38;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v79 = sub_1B98F5F98();
  v81 = v39;

  v40 = v74;
  v41 = v81;
  *v81 = v172;
  v41[1] = v40;

  v42 = v75;
  v43 = v81;
  v81[2] = v173;
  v43[3] = v42;

  v44 = v76;
  v45 = v81;
  v81[4] = v174;
  v45[5] = v44;

  v46 = v77;
  v47 = v81;
  v81[6] = v175;
  v47[7] = v46;

  v48 = v78;
  v49 = v81;
  v81[8] = v176;
  v49[9] = v48;

  v50 = v80;
  v51 = v81;
  v81[10] = v177;
  v51[11] = v50;
  sub_1B9851B38();

  if (os_log_type_enabled(v83, v84))
  {
    v52 = v178;
    v56 = sub_1B98F5C28();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v57 = sub_1B985263C(0, v55, v55);
    v58 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v60 = &v222;
    v222 = v56;
    v61 = &v221;
    v221 = v57;
    v62 = &v220;
    v220 = v58;
    v59 = 2;
    sub_1B9852690(2, &v222);
    sub_1B9852690(v59, v60);
    v218 = v172;
    v219 = v74;
    sub_1B98526A4(&v218, v60, v61, v62);
    v63 = v52;
    if (v52)
    {

      __break(1u);
    }

    else
    {
      v218 = v173;
      v219 = v75;
      sub_1B98526A4(&v218, &v222, &v221, &v220);
      v54[4] = 0;
      v218 = v174;
      v219 = v76;
      sub_1B98526A4(&v218, &v222, &v221, &v220);
      v54[3] = 0;
      v218 = v175;
      v219 = v77;
      sub_1B98526A4(&v218, &v222, &v221, &v220);
      v54[2] = 0;
      v218 = v176;
      v219 = v78;
      sub_1B98526A4(&v218, &v222, &v221, &v220);
      v54[1] = 0;
      v218 = v177;
      v219 = v80;
      sub_1B98526A4(&v218, &v222, &v221, &v220);
      _os_log_impl(&dword_1B982F000, v83, v84, "%s Failed to create TUPhoneNumber from %s", v56, 0x16u);
      sub_1B985281C(v57, 0, v55);
      sub_1B985281C(v58, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v83);
  (*(v188 + 8))(v191, v187);
  return sub_1B98F5F98();
}

uint64_t sub_1B9878A30(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1E69E5928](a2);
  v6[0] = a1;
  v6[1] = a2;
  v5 = sub_1B98F1B88(v6, &unk_1F3795390);
  sub_1B987A1FC(v6);
  return v5;
}

uint64_t sub_1B9878AAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B9878AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v13 = a1;
  v12 = a2;
  v9 = *(a1 + 8);
  result = MEMORY[0x1E69E5928](v9);
  if (v9)
  {
    v11 = v9;
    v14 = 0;
    sub_1B98F54D8();
    v7 = sub_1B98F58A8();

    v10 = 0;
    v5 = [v9 containsBlockingEntryForEnabledExtensionWithPhoneNumberInArray:v7 error:&v10];
    v6 = v10;
    MEMORY[0x1E69E5928](v10);
    v4 = v14;
    v14 = v6;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v7);
    if (v14)
    {
      swift_willThrow();
      return MEMORY[0x1E69E5920](v9);
    }

    if (v5)
    {
      *a3 = 1;
      return MEMORY[0x1E69E5920](v9);
    }

    result = MEMORY[0x1E69E5920](v9);
  }

  *a3 = 0;
  return result;
}

uint64_t sub_1B9878CDC(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1E69E5928](a2);
  v6[0] = a1;
  v6[1] = a2;
  v5 = sub_1B98F1B88(v6, &unk_1F3795390);
  sub_1B987A1FC(v6);
  return v5;
}

uint64_t sub_1B9878DEC(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1E69E5928](a2);
  v6[0] = a1;
  v6[1] = a2;
  v5 = sub_1B98F1B88(v6, &unk_1F3795390);
  sub_1B987A1FC(v6);
  return v5;
}

id sub_1B9878EB0(char a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD56C0, qword_1B98FAE10);
  sub_1B987A2CC();
  sub_1B98F5FB8();
  v7 = [v4 initReadOnly:a1 & 1 temporary:a2 & 1 error:v8];
  MEMORY[0x1E69E5928](0);
  MEMORY[0x1E69E5920](0);
  if (v7)
  {
    return v7;
  }

  sub_1B98F4F38();
  MEMORY[0x1E69E5920](0);
  swift_willThrow();
  return v3;
}

id sub_1B987905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v9 = sub_1B98F5648();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v8 = sub_1B98F5648();

    v4 = [v12 initWithDigits:v10 countryCode:v8];
  }

  else
  {
    v4 = [v12 initWithDigits:v10 countryCode:0];
  }

  v7 = v4;
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v10);
  return v7;
}

uint64_t sub_1B9879188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_1B9879264(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_1B98792DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  sub_1B987A250(a3 + *(*a3 + *MEMORY[0x1E69E6B68] + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

void sub_1B98793C4(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

uint64_t sub_1B98794A8(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  sub_1B98F5C48();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x1E69E5920](v9);
  }

  MEMORY[0x1E69E5928](v9);
  *v5 = v9;
  result = MEMORY[0x1E69E5920](v9);
  *a2 = v5 + 1;
  return result;
}

void *sub_1B9879638(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1B9879680()
{
  v2 = qword_1EBBD56A0;
  if (!qword_1EBBD56A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD56A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B98796F0()
{
  type metadata accessor for BlockedHandle(0);

  return sub_1B9875BC4(v0);
}

uint64_t sub_1B98797E4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  v1 = sub_1B987984C();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B987984C()
{
  v2 = qword_1EBBD56A8;
  if (!qword_1EBBD56A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9879958()
{
  type metadata accessor for BlockedHandle(0);

  return sub_1B9878D58(v0);
}

uint64_t sub_1B9879A54()
{
  type metadata accessor for BlockedHandle(0);

  return sub_1B9878E68(v0);
}

unint64_t sub_1B9879B34()
{
  v2 = qword_1EBBD56B8;
  if (!qword_1EBBD56B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9879BAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9879CF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B9879ED4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B987A018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *sub_1B987A1FC(void *a1)
{
  if (*a1)
  {

    MEMORY[0x1E69E5920](a1[1]);
  }

  return a1;
}

unint64_t sub_1B987A2CC()
{
  v2 = qword_1EBBD56C8;
  if (!qword_1EBBD56C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD56C0, qword_1B98FAE10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B987A3F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B987A4AC(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1B987A3F4(a1, v5);
  sub_1B987A508(v5, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B987A544(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_1B987A3F4(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v4 + 8))(a1, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v6;
}

id sub_1B987A6B8()
{
  v12 = 0;
  v13 = 0;
  sub_1B987DA78();
  v11 = sub_1B987A9F8();
  MEMORY[0x1E69E5928](v11);
  v12 = v11;
  sub_1B98F5F98();
  v9 = v0;
  *v0 = sub_1B98F55E8("+1800");
  v9[1] = v1;
  v9[2] = sub_1B98F55E8("+1888", 5, 1);
  v9[3] = v2;
  v9[4] = sub_1B98F55E8("+1877", 5, 1);
  v9[5] = v3;
  v9[6] = sub_1B98F55E8("+1866", 5, 1);
  v9[7] = v4;
  v9[8] = sub_1B98F55E8("+1855", 5, 1);
  v9[9] = v5;
  v9[10] = sub_1B98F55E8("+1844", 5, 1);
  v9[11] = v6;
  sub_1B9851B38();
  v10 = v7;
  sub_1B98F54D8();
  v13 = v10;
  sub_1B987DADC(&v12);
  return v11;
}

uint64_t sub_1B987A860(uint64_t a1)
{
  v5 = a1;
  v7 = v1;
  v14 = 0;
  v13 = 0;
  v11 = sub_1B98F5018();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v10 = &v3 - v6;
  v14 = v5;
  v13 = v1;
  BlockedHandle.type.getter(&v3 - v6);
  v12 = (*(v8 + 88))(v10, v11);
  if (v12 == *MEMORY[0x1E696EDA0])
  {
    return 1;
  }

  if (v12 == *MEMORY[0x1E696ED80])
  {
    return 2;
  }

  if (v12 == *MEMORY[0x1E696ED90])
  {
    return 3;
  }

  (*(v8 + 8))(v10, v11);
  return 0;
}

uint64_t sub_1B987AA84(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a1;
  v19 = a2;
  v20 = a3;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v28 = __b;
  v30 = 40;
  memset(__b, 0, sizeof(__b));
  v21 = 0;
  v26 = type metadata accessor for BlockedHandle(0);
  v11 = *(v26 - 8);
  v12 = v26 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v14 = &v8 - v13;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v8 - v13);
  v16 = &v8 - v15;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v8 - v15);
  v18 = &v8 - v17;
  v36 = &v8 - v17;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v8 - v22;
  v35 = v25;
  v33 = v5;
  v34 = v6;
  v24 = sub_1B98F5F98();
  v27 = sub_1B9853574();
  v32 = sub_1B98F5A38();
  sub_1B98F54D8();
  v29 = &v37;
  sub_1B98F5A58();
  memcpy(v28, v29, v30);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v11 + 48))(v23, 1, v26) == 1)
    {
      break;
    }

    sub_1B9832680(v23, v18);
    if (sub_1B987ADCC(v18, v19, v20))
    {
      sub_1B9833334(v18, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
      sub_1B98F5A88();
      sub_1B983A3AC(v16);
    }

    sub_1B983A3AC(v18);
  }

  sub_1B9871430();
  v9 = &v32;
  v10 = v32;
  sub_1B98F54D8();
  sub_1B9868D78(v9);
  return v10;
}

uint64_t sub_1B987ADCC(uint64_t a1, void *a2, uint64_t a3)
{
  v95 = a1;
  v94 = a2;
  v93 = a3;
  v82 = sub_1B987CE24;
  v83 = sub_1B987D1EC;
  v84 = sub_1B987CE9C;
  v85 = sub_1B987D214;
  v86 = sub_1B987D1DC;
  v87 = sub_1B987D1E4;
  v88 = sub_1B987D1F8;
  v89 = sub_1B987D204;
  v90 = sub_1B987D20C;
  v91 = sub_1B987D220;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  v111 = 0;
  v92 = 0;
  v96 = sub_1B98F5138();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v100 = v36 - v99;
  v115 = MEMORY[0x1EEE9AC00](v95);
  v113 = v3;
  v114 = v4;
  v102 = sub_1B987BB10(v115, v3, v4);
  v112 = v102;
  v101 = [v102 value];
  v103 = sub_1B98F5658();
  v104 = v5;
  v105 = [v102 normalizedValue];
  if (v105)
  {
    v81 = v105;
    v76 = v105;
    v77 = sub_1B98F5658();
    v78 = v6;
    MEMORY[0x1E69E5920](v76);
    v79 = v77;
    v80 = v78;
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  v7 = v100;
  v54 = v80;
  v55 = sub_1B987C82C(v103, v104, v79, v80, v94, v93);

  MEMORY[0x1E69E5920](v101);
  v111 = v55;
  v8 = sub_1B98F1E6C();
  (*(v97 + 16))(v7, v8, v96);
  MEMORY[0x1E69E5928](v94);
  sub_1B98F54D8();
  v61 = 32;
  v62 = 7;
  v9 = swift_allocObject();
  v10 = v93;
  v11 = v9;
  v12 = v55;
  v56 = v11;
  *(v11 + 16) = v94;
  *(v11 + 24) = v10;
  MEMORY[0x1E69E5928](v12);
  v63 = swift_allocObject();
  *(v63 + 16) = v55;
  v74 = sub_1B98F5118();
  v75 = sub_1B98F5BD8();
  v59 = 17;
  v65 = swift_allocObject();
  v58 = 32;
  *(v65 + 16) = 32;
  v66 = swift_allocObject();
  v60 = 8;
  *(v66 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v56;
  v57 = v13;
  *(v13 + 16) = v82;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v57;
  v67 = v15;
  *(v15 + 16) = v83;
  *(v15 + 24) = v16;
  v68 = swift_allocObject();
  *(v68 + 16) = v58;
  v69 = swift_allocObject();
  *(v69 + 16) = v60;
  v17 = swift_allocObject();
  v18 = v63;
  v64 = v17;
  *(v17 + 16) = v84;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v64;
  v71 = v19;
  *(v19 + 16) = v85;
  *(v19 + 24) = v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v70 = sub_1B98F5F98();
  v72 = v21;

  v22 = v65;
  v23 = v72;
  *v72 = v86;
  v23[1] = v22;

  v24 = v66;
  v25 = v72;
  v72[2] = v87;
  v25[3] = v24;

  v26 = v67;
  v27 = v72;
  v72[4] = v88;
  v27[5] = v26;

  v28 = v68;
  v29 = v72;
  v72[6] = v89;
  v29[7] = v28;

  v30 = v69;
  v31 = v72;
  v72[8] = v90;
  v31[9] = v30;

  v32 = v71;
  v33 = v72;
  v72[10] = v91;
  v33[11] = v32;
  sub_1B9851B38();

  if (os_log_type_enabled(v74, v75))
  {
    v34 = v92;
    v46 = sub_1B98F5C28();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v47 = sub_1B985263C(0, v45, v45);
    v48 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v50 = v110;
    v110[0] = v46;
    v51 = &v109;
    v109 = v47;
    v52 = &v108;
    v108 = v48;
    v49 = 2;
    sub_1B9852690(2, v110);
    sub_1B9852690(v49, v50);
    v106 = v86;
    v107 = v65;
    sub_1B98526A4(&v106, v50, v51, v52);
    v53 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v106 = v87;
      v107 = v66;
      sub_1B98526A4(&v106, v110, &v109, &v108);
      v44 = 0;
      v106 = v88;
      v107 = v67;
      sub_1B98526A4(&v106, v110, &v109, &v108);
      v43 = 0;
      v106 = v89;
      v107 = v68;
      sub_1B98526A4(&v106, v110, &v109, &v108);
      v42 = 0;
      v106 = v90;
      v107 = v69;
      sub_1B98526A4(&v106, v110, &v109, &v108);
      v41 = 0;
      v106 = v91;
      v107 = v71;
      sub_1B98526A4(&v106, v110, &v109, &v108);
      _os_log_impl(&dword_1B982F000, v74, v75, "%s Fetching call history calls matching predicate %s", v46, 0x16u);
      sub_1B985281C(v47, 0, v45);
      sub_1B985281C(v48, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v74);
  (*(v97 + 8))(v100, v96);
  MEMORY[0x1E69E5928](v94);
  MEMORY[0x1E69E5928](v55);
  v36[1] = 0;
  v39 = [v94 callsWithPredicate:v55 limit:1 offset:0 batchSize:?];
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v94);
  sub_1B987D22C();
  v37 = sub_1B98F58B8();
  v110[1] = v37;
  v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD56D8, &qword_1B98FAF20);
  sub_1B987D290();
  v38 = sub_1B98F5B58();

  v40 = v38 ^ 1;
  MEMORY[0x1E69E5920](v39);
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v102);
  return v40 & 1;
}

id sub_1B987BB10(uint64_t a1, void *a2, uint64_t a3)
{
  v98 = a3;
  v100 = a2;
  v109 = a1;
  v99 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v97 = 0;
  v101 = sub_1B98F5018();
  v102 = *(v101 - 8);
  v103 = v102;
  v105 = *(v102 + 64);
  v3 = MEMORY[0x1EEE9AC00](0);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = &v34 - v107;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v106 = &v34 - v107;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v108 = &v34 - v107;
  v135 = v6;
  v133 = v7;
  v134 = v8;
  v110 = type metadata accessor for BlockedHandle(v5);
  v9 = (v109 + *(v110 + 32));
  v114 = *v9;
  v115 = v9[1];
  v111 = v115;
  sub_1B98F54D8();
  sub_1B98F54D8();
  v113 = sub_1B98F55E8("US", 2, 1);
  v116 = v10;
  v112 = v10;
  sub_1B98F54D8();
  v117 = v130;
  v118 = v131;
  v130[0] = v114;
  v130[1] = v115;
  v131[0] = v113;
  v131[1] = v116;
  if (v115)
  {
    sub_1B987D50C(v117, &v121);
    if (v118[1])
    {
      v120 = v121;
      v119 = *v118;
      v95 = MEMORY[0x1BFADD650](v121, *(&v121 + 1), v119, *(&v119 + 1));
      sub_1B9868BFC(&v119);
      sub_1B9868BFC(&v120);
      sub_1B985EE4C(v117);
      v96 = v95;
      goto LABEL_7;
    }

    sub_1B9868BFC(&v121);
    goto LABEL_9;
  }

  if (v118[1])
  {
LABEL_9:
    sub_1B987D318(v130);
    v96 = 0;
    goto LABEL_7;
  }

  sub_1B985EE4C(v117);
  v96 = 1;
LABEL_7:
  v94 = v96;

  if (v94)
  {
    BlockedHandle.type.getter(v108);
    (*(v103 + 104))(v106, *MEMORY[0x1E696ED80], v101);
    sub_1B987D48C();
    v92 = sub_1B98F5FA8();
    v91 = *(v103 + 8);
    v90 = v103 + 8;
    v91(v106, v101);
    v91(v108, v101);
    v93 = v92;
  }

  else
  {
    v93 = 0;
  }

  v89 = v93;
  v11 = v100;
  sub_1B98F54D8();
  if (v89)
  {
    v12 = v97;
    sub_1B98F54D8();
    v123[0] = v98;
    v85 = &v34;
    MEMORY[0x1EEE9AC00](&v34);
    v86 = &v34 - 4;
    *(&v34 - 2) = v13;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
    sub_1B985DBF4();
    sub_1B98F57A8();
    v88 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      sub_1B9879B08(v123);
      v122[0] = v123[1];
      v122[1] = v124;
      if (!v124)
      {
        v84 = 0;
        goto LABEL_19;
      }
    }

    v84 = 1;
LABEL_19:
    v81 = v84;
    sub_1B985EE4C(v122);
    v82 = v81;
    v83 = v88;
    goto LABEL_21;
  }

  v82 = 0;
  v83 = v97;
LABEL_21:
  v80 = v82;

  if (v80)
  {
    v73 = sub_1B987D350();
    v75 = sub_1B987A860(v109);
    v125 = BlockedHandle.value.getter();
    v126 = v14;
    sub_1B987D3E8();
    sub_1B98F5B68();
    v72 = v127;
    v76 = sub_1B98F5768();
    v74 = v15;

    v16 = BlockedHandle.value.getter();
    v77 = sub_1B987CF64(v75, v76, v74, v16, v17);
    v78 = v77;
    v18 = v77;
    v132 = v77;
    v79 = v78;
  }

  else
  {
    BlockedHandle.type.getter(v104);
    v71 = (*(v103 + 88))(v104, v101);
    if (v71 == *MEMORY[0x1E696EDA0])
    {
      v47 = objc_opt_self();
      BlockedHandle.value.getter();
      v46 = v24;
      v48 = sub_1B98F5648();

      v49 = [v47 normalizedGenericHandleForValue_];
      v50 = v49;

      v25 = v49;
      v132 = v49;
      v59 = v50;
    }

    else if (v71 == *MEMORY[0x1E696ED80])
    {
      v65 = objc_opt_self();
      BlockedHandle.value.getter();
      v66 = v19;
      v67 = sub_1B98F5648();

      v20 = (v109 + *(v110 + 32));
      v68 = *v20;
      v70 = v20[1];
      v69 = v70;
      sub_1B98F54D8();
      if (v70)
      {
        v63 = v68;
        v64 = v69;
        v60 = v69;
        v61 = sub_1B98F5648();

        v62 = v61;
      }

      else
      {
        v62 = 0;
      }

      v56 = v62;
      v57 = [v65 normalizedPhoneNumberHandleForValue:v67 isoCountryCode:?];
      v58 = v57;

      v21 = v57;
      v132 = v57;
      v59 = v58;
    }

    else if (v71 == *MEMORY[0x1E696ED90])
    {
      v52 = objc_opt_self();
      BlockedHandle.value.getter();
      v51 = v22;
      v53 = sub_1B98F5648();

      v54 = [v52 normalizedEmailAddressHandleForValue_];
      v55 = v54;

      v23 = v54;
      v132 = v54;
      v59 = v55;
    }

    else
    {
      v40 = sub_1B987D350();
      v42 = sub_1B987A860(v109);
      v43 = BlockedHandle.value.getter();
      v41 = v26;
      v27 = BlockedHandle.value.getter();
      v44 = sub_1B987CF64(v42, v43, v41, v27, v28);
      v45 = v44;
      v29 = v44;
      v132 = v44;
      (*(v103 + 8))(v104, v101);
      v59 = v45;
    }

    v79 = v59;
  }

  v128 = v79;
  if (v79)
  {
    v129 = v128;
  }

  else
  {
    v36 = sub_1B987D350();
    v38 = sub_1B987A860(v109);
    v39 = BlockedHandle.value.getter();
    v37 = v30;
    v31 = BlockedHandle.value.getter();
    v129 = sub_1B987CF64(v38, v39, v37, v31, v32);
    if (v128)
    {
      sub_1B987D3B4(&v128);
    }
  }

  v35 = v129;
  sub_1B987D3B4(&v132);
  return v35;
}

id sub_1B987C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34[0] = 0;
  v33 = 0;
  v34[5] = a1;
  v34[6] = a2;
  v34[3] = a3;
  v34[4] = a4;
  v34[1] = a5;
  v34[2] = a6;
  sub_1B987D54C();
  sub_1B98F5F98();
  v26 = v6;
  *v6 = [objc_opt_self() predicateForCallsWithStatusOriginated_];
  v23 = objc_opt_self();
  sub_1B98F5F98();
  v20 = v7;
  v22 = *MEMORY[0x1E69935E0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69935E0]);
  *v20 = sub_1B98F5658();
  v20[1] = v8;
  v21 = *MEMORY[0x1E69935E8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69935E8]);
  v20[2] = sub_1B98F5658();
  v20[3] = v9;
  sub_1B9851B38();
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](v22);
  v24 = sub_1B98F58A8();

  v25 = [v23 predicateForCallsWithAnyServiceProviders_];
  MEMORY[0x1E69E5920](v24);
  v26[1] = v25;
  v26[2] = [objc_opt_self() predicateForCallsWithRemoteParticipantCount_];
  sub_1B9851B38();
  v34[0] = v10;
  sub_1B98F5F98();
  v30 = v11;
  v27 = objc_opt_self();
  sub_1B98F54D8();
  v28 = sub_1B98F5648();

  v29 = [v27 predicateForCallsWithRemoteParticipantHandleValue_];
  MEMORY[0x1E69E5920](v28);
  *v30 = v29;
  sub_1B9851B38();
  v33 = v12;
  sub_1B98F54D8();
  if (a4)
  {
    v13 = sub_1B98F5708();
    if ((v13 & 1) == 0)
    {
      v18 = objc_opt_self();
      sub_1B98F54D8();
      v19 = sub_1B98F5648();

      [v18 predicateForCallsWithRemoteParticipantHandleNormalizedValue_];
      MEMORY[0x1E69E5920](v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5700, &qword_1B98FAF28);
      sub_1B98F5908();
    }
  }

  sub_1B98F54D8();
  v17 = sub_1B98F58E8();

  if (v17 <= 1)
  {
    sub_1B98F54D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5700, &qword_1B98FAF28);
    sub_1B987D5B0();
    sub_1B98F5B48();

    if (v32)
    {
      (MEMORY[0x1E69E5928])();
      sub_1B98F5908();
      (MEMORY[0x1E69E5920])();
    }
  }

  else
  {
    sub_1B987D638();
    sub_1B98F54D8();
    sub_1B987CFC4(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5700, &qword_1B98FAF28);
    sub_1B98F5908();
  }

  sub_1B987D638();
  v15 = v34[0];
  sub_1B98F54D8();
  v16 = sub_1B987D048(v15);
  sub_1B987D69C(&v33);
  sub_1B987D69C(v34);
  return v16;
}

uint64_t sub_1B987CDA8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  sub_1B98F54D8();
  v6[0] = a1;
  v6[1] = a2;
  v5 = sub_1B98F1B88(v6, &unk_1F37955C8);
  sub_1B987DA24(v6);
  return v5;
}

uint64_t sub_1B987CE30(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v5 = a1;
  v1 = sub_1B987D54C();
  v4 = sub_1B98F1B88(&v5, v1);
  sub_1B987D9F0(&v5);
  return v4;
}

uint64_t sub_1B987CEA4(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v5 = a1[1];
  v9 = *a1;
  v10 = v5;
  v8 = a2;
  v7[0] = BlockedHandle.value.getter();
  v7[1] = v3;
  v6 = sub_1B98F5808();
  sub_1B9868BFC(v7);
  return v6 & 1;
}

id sub_1B987CFC4(uint64_t a1)
{
  sub_1B987D54C();
  v2 = sub_1B98F58A8();
  v3 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

id sub_1B987D048(uint64_t a1)
{
  sub_1B987D54C();
  v2 = sub_1B98F58A8();
  v3 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

id sub_1B987D0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1B98F5648();
  if (a5)
  {
    v7 = sub_1B98F5648();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [v10 initWithType:a1 value:v12 normalizedValue:?];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v12);

  return v6;
}

unint64_t sub_1B987D22C()
{
  v2 = qword_1EBBD56D0;
  if (!qword_1EBBD56D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD56D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B987D290()
{
  v2 = qword_1EBBD56E0;
  if (!qword_1EBBD56E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD56D8, &qword_1B98FAF20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B987D350()
{
  v2 = qword_1EBBD56E8;
  if (!qword_1EBBD56E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD56E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B987D3E8()
{
  v2 = qword_1EBBD56F0;
  if (!qword_1EBBD56F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD56F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B987D48C()
{
  v2 = qword_1EDBDB270;
  if (!qword_1EDBDB270)
  {
    sub_1B98F5018();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB270);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B987D50C(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1B98F54D8();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B987D54C()
{
  v2 = qword_1EBBD56F8;
  if (!qword_1EBBD56F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD56F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B987D5B0()
{
  v2 = qword_1EBBD5708;
  if (!qword_1EBBD5708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5700, &qword_1B98FAF28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5708);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B987D638()
{
  v2 = qword_1EBBD5710;
  if (!qword_1EBBD5710)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5710);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B987D6C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B987D80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *sub_1B987DA24(void *a1)
{
  if (*a1)
  {
    MEMORY[0x1E69E5920](*a1);
  }

  return a1;
}

unint64_t sub_1B987DA78()
{
  v2 = qword_1EBBD5718;
  if (!qword_1EBBD5718)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5718);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B987DB44(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  CMFBlockListAddItemForAllServices();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B987DB88(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  CMFBlockListRemoveItemFromAllServices();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B987DBCC()
{
  v110 = 0;
  v118 = 0;
  v103 = sub_1B98F5138();
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103 - 8);
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = v28 - v108;
  MEMORY[0x1EEE9AC00](v28 - v108);
  v109 = v28 - v108;
  v123 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5720, &unk_1B98FB000);
  sub_1B987E980(&v123, sub_1B987E950, v110, v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v2);
  v111 = 0;
  if (v123)
  {
    v101 = v123;
    v3 = v123;
    v4 = v101;

    v102 = v101;
  }

  else
  {
    v102 = 0;
  }

  v100 = v102;
  if (v102)
  {
    v99 = v100;
    v97 = v100;
    objc_opt_self();
    v98 = swift_dynamicCastObjCClass();
    if (v98)
    {
      v96 = v98;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5730, &qword_1B98FB010);
      v5 = v96;
      sub_1B98804BC();
      sub_1B98F5FD8();

      if (v112)
      {
        v94 = v112;
LABEL_9:
        v93 = v94;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v94 = 0;
    goto LABEL_9;
  }

  v93 = 0;
LABEL_10:
  v92 = v93;
  if (v93)
  {
    v91 = v92;
    v6 = v109;
    v70 = v92;
    v118 = v92;
    v7 = sub_1B98F1E6C();
    (*(v105 + 16))(v6, v7, v103);
    sub_1B98F54D8();
    v79 = 7;
    v71 = swift_allocObject();
    *(v71 + 16) = v70;

    v74 = 32;
    v78 = 32;
    v8 = swift_allocObject();
    v9 = v71;
    v80 = v8;
    *(v8 + 16) = sub_1B988039C;
    *(v8 + 24) = v9;

    v90 = sub_1B98F5118();
    v72 = v90;
    v89 = sub_1B98F5BD8();
    v73 = v89;
    v75 = 17;
    v83 = swift_allocObject();
    v76 = v83;
    *(v83 + 16) = v74;
    v84 = swift_allocObject();
    v77 = v84;
    *(v84 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v80;
    v81 = v10;
    *(v10 + 16) = sub_1B98803A4;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v81;
    v87 = v12;
    v82 = v12;
    *(v12 + 16) = sub_1B98804A4;
    *(v12 + 24) = v13;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v85 = sub_1B98F5F98();
    v86 = v14;

    v15 = v83;
    v16 = v86;
    *v86 = sub_1B9880494;
    v16[1] = v15;

    v17 = v84;
    v18 = v86;
    v86[2] = sub_1B988049C;
    v18[3] = v17;

    v19 = v86;
    v20 = v87;
    v86[4] = sub_1B98804B0;
    v19[5] = v20;
    sub_1B9851B38();

    if (os_log_type_enabled(v90, v89))
    {
      v21 = v111;
      v63 = sub_1B98F5C28();
      v60 = v63;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v64 = sub_1B985263C(0, v61, v61);
      v62 = v64;
      v66 = 1;
      v65 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v117 = v63;
      v116 = v64;
      v115 = v65;
      v67 = &v117;
      sub_1B9852690(2, &v117);
      sub_1B9852690(v66, v67);
      v113 = sub_1B9880494;
      v114 = v76;
      sub_1B98526A4(&v113, v67, &v116, &v115);
      v68 = v21;
      v69 = v21;
      if (v21)
      {
        v58 = 0;

        __break(1u);
      }

      else
      {
        v113 = sub_1B988049C;
        v114 = v77;
        sub_1B98526A4(&v113, &v117, &v116, &v115);
        v56 = 0;
        v57 = 0;
        v113 = sub_1B98804B0;
        v114 = v82;
        sub_1B98526A4(&v113, &v117, &v116, &v115);
        v54 = 0;
        v55 = 0;
        _os_log_impl(&dword_1B982F000, v72, v73, "Got blocklist %s", v60, 0xCu);
        sub_1B985281C(v62, 0, v61);
        sub_1B985281C(v65, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v59 = v54;
      }
    }

    else
    {
      v22 = v111;

      v59 = v22;
    }

    v51 = v59;

    (*(v105 + 8))(v109, v103);
    v52 = v70;
    v53 = v51;
  }

  else
  {
    v23 = v107;
    v24 = sub_1B98F1E6C();
    (*(v105 + 16))(v23, v24, v103);
    v49 = sub_1B98F5118();
    v46 = v49;
    v48 = sub_1B98F5BB8();
    v47 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v50 = sub_1B98F5F98();
    if (os_log_type_enabled(v49, v48))
    {
      v25 = v111;
      v37 = sub_1B98F5C28();
      v33 = v37;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v35 = 0;
      v38 = sub_1B985263C(0, v34, v34);
      v36 = v38;
      v39 = sub_1B985263C(v35, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v122 = v37;
      v121 = v38;
      v120 = v39;
      v40 = 0;
      v41 = &v122;
      sub_1B9852690(0, &v122);
      sub_1B9852690(v40, v41);
      v119 = v50;
      v42 = v28;
      MEMORY[0x1EEE9AC00](v28);
      v43 = &v28[-6];
      v28[-4] = v26;
      v28[-3] = &v121;
      v28[-2] = &v120;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v45 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v46, v47, "Failed to get block list from CMF", v33, 2u);
        v31 = 0;
        sub_1B985281C(v36, 0, v34);
        sub_1B985281C(v39, v31, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v32 = v45;
      }
    }

    else
    {

      v32 = v111;
    }

    v29 = v32;

    (*(v105 + 8))(v107, v103);
    v28[0] = 0;
    v28[1] = sub_1B987EA80();
    v30 = sub_1B98F5F98();
    v52 = v30;
    v53 = v29;
  }

  return v52;
}

void *sub_1B987E980(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

unint64_t sub_1B987EA80()
{
  v2 = qword_1EBBD5728;
  if (!qword_1EBBD5728)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5728);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B987EAE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

BOOL sub_1B987EB18(uint64_t a1)
{
  v50 = a1;
  v51 = sub_1B9880544;
  v53 = sub_1B98809C0;
  v55 = sub_1B98809F4;
  v57 = sub_1B9880A3C;
  v60 = sub_1B9880550;
  v64 = sub_1B9880B6C;
  v66 = sub_1B9880558;
  v68 = sub_1B9880560;
  v70 = sub_1B9880A48;
  v72 = sub_1B9880B34;
  v74 = sub_1B9880B3C;
  v77 = sub_1B9880B78;
  v89 = 0;
  v88 = 0;
  v42 = 0;
  v48 = sub_1B98F5138();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v43 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v32 - v43;
  v44 = v32 - v43;
  v89 = MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1E69E5928](v89);
  IsItemBlocked = CMFBlockListIsItemBlocked();
  swift_unknownObjectRelease();
  v49 = IsItemBlocked != 0;
  v88 = IsItemBlocked != 0;
  v2 = sub_1B98F1E6C();
  (*(v46 + 16))(v1, v2, v48);
  v59 = 17;
  v62 = 7;
  v3 = swift_allocObject();
  v4 = v50;
  v52 = v3;
  *(v3 + 16) = v49;
  MEMORY[0x1E69E5928](v4);
  v63 = swift_allocObject();
  *(v63 + 16) = v50;
  v81 = sub_1B98F5118();
  v82 = sub_1B98F5BD8();
  v67 = swift_allocObject();
  *(v67 + 16) = 2;
  v69 = swift_allocObject();
  *(v69 + 16) = 4;
  v61 = 32;
  v5 = swift_allocObject();
  v6 = v52;
  v54 = v5;
  *(v5 + 16) = v51;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v54;
  v56 = v7;
  *(v7 + 16) = v53;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v56;
  v58 = v9;
  *(v9 + 16) = v55;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v58;
  v71 = v11;
  *(v11 + 16) = v57;
  *(v11 + 24) = v12;
  v73 = swift_allocObject();
  *(v73 + 16) = 64;
  v75 = swift_allocObject();
  *(v75 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v63;
  v65 = v13;
  *(v13 + 16) = v60;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v65;
  v78 = v15;
  *(v15 + 16) = v64;
  *(v15 + 24) = v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v76 = sub_1B98F5F98();
  v79 = v17;

  v18 = v67;
  v19 = v79;
  *v79 = v66;
  v19[1] = v18;

  v20 = v69;
  v21 = v79;
  v79[2] = v68;
  v21[3] = v20;

  v22 = v71;
  v23 = v79;
  v79[4] = v70;
  v23[5] = v22;

  v24 = v73;
  v25 = v79;
  v79[6] = v72;
  v25[7] = v24;

  v26 = v75;
  v27 = v79;
  v79[8] = v74;
  v27[9] = v26;

  v28 = v78;
  v29 = v79;
  v79[10] = v77;
  v29[11] = v28;
  sub_1B9851B38();

  if (os_log_type_enabled(v81, v82))
  {
    v30 = v42;
    v34 = sub_1B98F5C28();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v35 = sub_1B985263C(1, v33, v33);
    v36 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v38 = &v87;
    v87 = v34;
    v39 = &v86;
    v86 = v35;
    v40 = &v85;
    v85 = v36;
    v37 = 2;
    sub_1B9852690(2, &v87);
    sub_1B9852690(v37, v38);
    v83 = v66;
    v84 = v67;
    sub_1B98526A4(&v83, v38, v39, v40);
    v41 = v30;
    if (v30)
    {

      __break(1u);
    }

    else
    {
      v83 = v68;
      v84 = v69;
      sub_1B98526A4(&v83, &v87, &v86, &v85);
      v32[3] = 0;
      v83 = v70;
      v84 = v71;
      sub_1B98526A4(&v83, &v87, &v86, &v85);
      v32[2] = 0;
      v83 = v72;
      v84 = v73;
      sub_1B98526A4(&v83, &v87, &v86, &v85);
      v32[1] = 0;
      v83 = v74;
      v84 = v75;
      sub_1B98526A4(&v83, &v87, &v86, &v85);
      v32[0] = 0;
      v83 = v77;
      v84 = v78;
      sub_1B98526A4(&v83, &v87, &v86, &v85);
      _os_log_impl(&dword_1B982F000, v81, v82, "Got result %{BOOL,public}d for %@", v34, 0x12u);
      sub_1B985281C(v35, 1, v33);
      sub_1B985281C(v36, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v81);
  (*(v46 + 8))(v44, v48);
  return v49;
}

uint64_t sub_1B987F55C(uint64_t a1)
{
  v114 = a1;
  v110 = 0;
  v127 = 0;
  v102 = 0;
  v122 = 0;
  v103 = sub_1B98F5138();
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = *(v104 + 64);
  v1 = MEMORY[0x1EEE9AC00](v114);
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = &v27 - v108;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v109 = &v27 - v108;
  v127 = v2;
  sub_1B98F54D8();
  v111 = sub_1B987EA80();
  v112 = sub_1B98F58A8();
  BlockedStatusForItems = CMFBlockListGetBlockedStatusForItems();
  v113 = BlockedStatusForItems;

  if (BlockedStatusForItems)
  {
    v101 = v113;
    v99 = v113;
    v3 = v113;
    v100 = v99;
  }

  else
  {
    v100 = 0;
  }

  v98 = v100;
  if (v100)
  {
    v97 = v98;
    v95 = v98;
    objc_opt_self();
    v96 = swift_dynamicCastObjCClass();
    if (v96)
    {
      v94 = v96;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5750, qword_1B98FB018);
      v4 = v94;
      sub_1B9880CD4();
      sub_1B98F5FD8();

      if (v116)
      {
        v92 = v116;
LABEL_9:
        v91 = v92;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v92 = 0;
    goto LABEL_9;
  }

  v91 = 0;
LABEL_10:
  v90 = v91;
  if (v91)
  {
    v89 = v90;
    v5 = v109;
    v68 = v90;
    v122 = v90;
    v6 = sub_1B98F1E6C();
    (*(v105 + 16))(v5, v6, v103);
    sub_1B98F54D8();
    v77 = 7;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;

    v72 = 32;
    v76 = 32;
    v7 = swift_allocObject();
    v8 = v69;
    v78 = v7;
    *(v7 + 16) = sub_1B9880BB4;
    *(v7 + 24) = v8;

    v88 = sub_1B98F5118();
    v70 = v88;
    v87 = sub_1B98F5BD8();
    v71 = v87;
    v73 = 17;
    v81 = swift_allocObject();
    v74 = v81;
    *(v81 + 16) = v72;
    v82 = swift_allocObject();
    v75 = v82;
    *(v82 + 16) = 8;
    v9 = swift_allocObject();
    v10 = v78;
    v79 = v9;
    *(v9 + 16) = sub_1B9880BBC;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v79;
    v85 = v11;
    v80 = v11;
    *(v11 + 16) = sub_1B9880CBC;
    *(v11 + 24) = v12;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v83 = sub_1B98F5F98();
    v84 = v13;

    v14 = v81;
    v15 = v84;
    *v84 = sub_1B9880CAC;
    v15[1] = v14;

    v16 = v82;
    v17 = v84;
    v84[2] = sub_1B9880CB4;
    v17[3] = v16;

    v18 = v84;
    v19 = v85;
    v84[4] = sub_1B9880CC8;
    v18[5] = v19;
    sub_1B9851B38();

    if (os_log_type_enabled(v88, v87))
    {
      v20 = v102;
      v61 = sub_1B98F5C28();
      v58 = v61;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v62 = sub_1B985263C(0, v59, v59);
      v60 = v62;
      v64 = 1;
      v63 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v121 = v61;
      v120 = v62;
      v119 = v63;
      v65 = &v121;
      sub_1B9852690(2, &v121);
      sub_1B9852690(v64, v65);
      v117 = sub_1B9880CAC;
      v118 = v74;
      sub_1B98526A4(&v117, v65, &v120, &v119);
      v66 = v20;
      v67 = v20;
      if (v20)
      {
        v56 = 0;

        __break(1u);
      }

      else
      {
        v117 = sub_1B9880CB4;
        v118 = v75;
        sub_1B98526A4(&v117, &v121, &v120, &v119);
        v54 = 0;
        v55 = 0;
        v117 = sub_1B9880CC8;
        v118 = v80;
        sub_1B98526A4(&v117, &v121, &v120, &v119);
        v52 = 0;
        v53 = 0;
        _os_log_impl(&dword_1B982F000, v70, v71, "Got response %s", v58, 0xCu);
        sub_1B985281C(v60, 0, v59);
        sub_1B985281C(v63, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v57 = v52;
      }
    }

    else
    {
      v21 = v102;

      v57 = v21;
    }

    v49 = v57;

    (*(v105 + 8))(v109, v103);
    v50 = v68;
    v51 = v49;
  }

  else
  {
    v22 = v107;
    v23 = sub_1B98F1E6C();
    (*(v105 + 16))(v22, v23, v103);
    v47 = sub_1B98F5118();
    v44 = v47;
    v46 = sub_1B98F5BB8();
    v45 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v48 = sub_1B98F5F98();
    if (os_log_type_enabled(v47, v46))
    {
      v24 = v102;
      v35 = sub_1B98F5C28();
      v31 = v35;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v33 = 0;
      v36 = sub_1B985263C(0, v32, v32);
      v34 = v36;
      v37 = sub_1B985263C(v33, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v126 = v35;
      v125 = v36;
      v124 = v37;
      v38 = 0;
      v39 = &v126;
      sub_1B9852690(0, &v126);
      sub_1B9852690(v38, v39);
      v123 = v48;
      v40 = &v27;
      MEMORY[0x1EEE9AC00](&v27);
      v41 = &v27 - 6;
      *(&v27 - 4) = v25;
      *(&v27 - 3) = &v125;
      *(&v27 - 2) = &v124;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v43 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v44, v45, "Failed to get blocked status from CMF, returning nil", v31, 2u);
        v29 = 0;
        sub_1B985281C(v34, 0, v32);
        sub_1B985281C(v37, v29, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v30 = v43;
      }
    }

    else
    {

      v30 = v102;
    }

    v28 = v30;

    (*(v105 + 8))(v107, v103);
    v50 = 0;
    v51 = v28;
  }

  return v50;
}

uint64_t sub_1B98802B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98803A4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5730, &qword_1B98FB010);
  v1 = sub_1B988040C();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B988040C()
{
  v2 = qword_1EBBD5738;
  if (!qword_1EBBD5738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5730, &qword_1B98FB010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5738);
    return WitnessTable;
  }

  return v2;
}