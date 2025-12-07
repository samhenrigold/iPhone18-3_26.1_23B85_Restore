uint64_t sub_1B98CA678@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

unint64_t sub_1B98CA708()
{
  v2 = qword_1EBBD5D78;
  if (!qword_1EBBD5D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D70, &qword_1B98FC1D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CA7BC()
{
  v2 = qword_1EBBD5D80;
  if (!qword_1EBBD5D80)
  {
    sub_1B98F50B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98CA83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[2] = a1;
  v18[3] = a2;
  sub_1B98F54D8();
  v18[0] = sub_1B98F55E8("p", 1, 1);
  v18[1] = v3;
  v17[2] = a1;
  v17[3] = a2;
  v16 = MEMORY[0x1BFADD650](v18[0], v3, a1, a2);
  sub_1B9868BFC(v18);
  if (v16)
  {

    v12 = *MEMORY[0x1E696ED80];
    v4 = sub_1B98F5018();
    return (*(*(v4 - 8) + 104))(a3, v12);
  }

  else
  {

    sub_1B98F54D8();
    v17[0] = sub_1B98F55E8("e", 1, 1);
    v17[1] = v6;
    v11 = MEMORY[0x1BFADD650](v17[0], v6, a1, a2);
    sub_1B9868BFC(v17);

    if (v11)
    {
      v10 = *MEMORY[0x1E696ED90];
      v7 = sub_1B98F5018();
      return (*(*(v7 - 8) + 104))(a3, v10);
    }

    else
    {
      v9 = *MEMORY[0x1E696EDA0];
      v8 = sub_1B98F5018();
      return (*(*(v8 - 8) + 104))(a3, v9);
    }
  }
}

unint64_t sub_1B98CAA7C()
{
  v2 = qword_1EDBDB218;
  if (!qword_1EDBDB218)
  {
    type metadata accessor for BlockedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CAAFC(uint64_t a1)
{
  v5 = qword_1EDBDB4B0;
  if (!qword_1EDBDB4B0)
  {
    sub_1B983220C();
    v4 = sub_1B98F5AD8();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EDBDB4B0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B98CAB9C(uint64_t a1)
{
  v5 = qword_1EDBDB4B8;
  if (!qword_1EDBDB4B8)
  {
    sub_1B9832500();
    v4 = sub_1B98F5AD8();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EDBDB4B8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B98CAC6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_1B98CAD84(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B98CAEEC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B98CB110(uint64_t a1, unsigned int a2)
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
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
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

unint64_t sub_1B98CB2A4()
{
  v2 = qword_1EBBD5D88;
  if (!qword_1EBBD5D88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB338()
{
  v2 = qword_1EBBD5D90;
  if (!qword_1EBBD5D90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB3CC()
{
  v2 = qword_1EBBD5D98;
  if (!qword_1EBBD5D98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB460()
{
  v2 = qword_1EBBD5DA0;
  if (!qword_1EBBD5DA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB4F4()
{
  v2 = qword_1EBBD5DA8;
  if (!qword_1EBBD5DA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB588()
{
  v2 = qword_1EBBD5DB0;
  if (!qword_1EBBD5DB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB61C()
{
  v2 = qword_1EBBD5DB8;
  if (!qword_1EBBD5DB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98CB6E0()
{
  if (qword_1EDBDB1D0 != -1)
  {
    swift_once();
  }

  return &qword_1EDBDB1D8;
}

uint64_t sub_1B98CB770()
{
  v2 = *(v0 + 56);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B98CB810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v11 = a2;
  v12 = a3;
  v10 = v3;
  sub_1B98CB8A8(a1, v9);
  sub_1B98CB914(v9, v3 + 2);
  swift_unknownObjectRetain();
  v3[7] = a2;
  v3[8] = a3;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1B98CB8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t BlockList.areHandlesBlocked(_:)(uint64_t a1)
{
  *(v2 + 216) = v1;
  *(v2 + 208) = a1;
  *(v2 + 136) = v2;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  memset((v2 + 96), 0, 0x28uLL);
  *(v2 + 344) = 0;
  v3 = sub_1B98F5078();
  *(v2 + 224) = v3;
  *(v2 + 232) = *(v3 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = type metadata accessor for BlockedHandle(0);
  *(v2 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DC0, &qword_1B98FC978);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  v4 = sub_1B98F5138();
  *(v2 + 280) = v4;
  *(v2 + 288) = *(v4 - 8);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B98CBB88, 0);
}

uint64_t sub_1B98CBB88()
{
  v19 = v0[31];
  v1 = v0[27];
  v16 = v0[26];
  v0[17] = v0;
  v13 = *(v1 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v14 = (*(v13 + 40))(v16, ObjectType);
  sub_1B98F54D8();
  v0[20] = v14;
  swift_unknownObjectRelease();
  sub_1B98F54D8();
  sub_1B98C982C();
  v15 = sub_1B98F54D8();

  v0[21] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DC8, &qword_1B98FC980);
  sub_1B98CCCC0();
  sub_1B98F5AE8();
  v17 = sub_1B98F5A28();

  v0[22] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DD8, &unk_1B98FC988);
  v3 = sub_1B98CCE30();
  v21 = sub_1B985D064(sub_1B98CCD48, 0, v18, v19, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v20);
  sub_1B98CCEB8(v12 + 22);
  v12[23] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
  v12[38] = sub_1B9853574();
  sub_1B9871820();
  v11 = sub_1B98F5AE8();
  v12[39] = v11;
  v12[24] = v11;
  if (sub_1B98F5AA8())
  {
    v7 = v12[20];
    sub_1B98F54D8();

    sub_1B98CCEE4(v12 + 20);

    v6 = *(v12[17] + 8);

    return v6(v7);
  }

  else
  {
    sub_1B98CB8A8(v12[27] + 16, (v12 + 7));
    v8 = v12[10];
    v9 = v12[11];
    __swift_project_boxed_opaque_existential_1(v12 + 7, v8);
    v10 = (*(v9 + 32) + **(v9 + 32));
    v4 = swift_task_alloc();
    v12[40] = v4;
    *v4 = v12[17];
    v4[1] = sub_1B98CC06C;

    return v10(v11, v8, v9);
  }
}

uint64_t sub_1B98CC06C(uint64_t a1)
{
  v5 = *v2;
  v5[17] = *v2;
  v5[41] = a1;
  v5[42] = v1;

  if (v1)
  {
    v3 = sub_1B98CCBB4;
  }

  else
  {
    v3 = sub_1B98CC1DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0);
}

uint64_t sub_1B98CC1DC()
{
  v47 = v0;
  v32 = v0[41];
  v1 = v0[37];
  v30 = v0[36];
  v31 = v0[35];
  v0[17] = v0;
  v0[25] = v32;
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v2 = sub_1B98F1B1C();
  (*(v30 + 16))(v1, v2, v31);
  sub_1B98F54D8();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;

  v34 = swift_allocObject();
  *(v34 + 16) = sub_1B98CCF44;
  *(v34 + 24) = v33;

  v40 = sub_1B98F5118();
  v41 = sub_1B98F5BD8();
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1B98D0AF0;
  *(v35 + 24) = v34;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1B98D1004;
  *(v38 + 24) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v39 = v3;

  *v39 = sub_1B98D0FF4;
  v39[1] = v36;

  v39[2] = sub_1B98D0FFC;
  v39[3] = v37;

  v39[4] = sub_1B98D1010;
  v39[5] = v38;
  sub_1B9851B38();

  if (os_log_type_enabled(v40, v41))
  {
    v4 = *(v29 + 336);
    buf = sub_1B98F5C28();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v27 = sub_1B985263C(0, v25, v25);
    v28 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v42 = buf;
    v43 = v27;
    v44 = v28;
    sub_1B9852690(2, &v42);
    sub_1B9852690(1, &v42);
    v45 = sub_1B98D0FF4;
    v46 = v36;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    if (v4)
    {
    }

    v45 = sub_1B98D0FFC;
    v46 = v37;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    v45 = sub_1B98D1010;
    v46 = v38;
    sub_1B98526A4(&v45, &v42, &v43, &v44);
    _os_log_impl(&dword_1B982F000, v40, v41, "Got server response: %s", buf, 0xCu);
    sub_1B985281C(v27, 0, v25);
    sub_1B985281C(v28, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v24 = *(v29 + 328);
  v20 = *(v29 + 296);
  v21 = *(v29 + 280);
  v22 = *(v29 + 216);
  v19 = *(v29 + 288);
  MEMORY[0x1E69E5920](v40);
  (*(v19 + 8))(v20, v21);
  v23 = *(v22 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v23 + 56))(v24, ObjectType);
  swift_unknownObjectRelease();
  sub_1B98F54D8();
  sub_1B98F5498();
  memcpy((v29 + 96), (v29 + 16), 0x28uLL);
  while (1)
  {
    v17 = *(v29 + 272);
    v16 = *(v29 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF0, &qword_1B98FC998);
    sub_1B98F5558();
    sub_1B98D101C(v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF8, &qword_1B98FC9A0);
    if ((*(*(v18 - 8) + 48))(v17, 1) == 1)
    {
      break;
    }

    v7 = *(v29 + 272);
    v15 = *(v29 + 256);
    v14 = *(v29 + 240);
    v12 = *(v29 + 224);
    v11 = *(v29 + 232);
    v13 = *(v7 + *(v18 + 48));
    v8 = sub_1B9832680(v7, v15);
    *(v29 + 344) = v13 & 1;
    (*(v11 + 16))(v14, v15, v12, v8);
    *(v29 + 345) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E00, &unk_1B98FCAE0);
    sub_1B98F55C8();
    sub_1B983A3AC(v15);
  }

  sub_1B98D11CC((v29 + 96));
  v10 = *(v29 + 160);
  sub_1B98F54D8();

  sub_1B98CCEE4((v29 + 160));

  v9 = *(*(v29 + 136) + 8);

  return v9(v10);
}

uint64_t sub_1B98CCBB4()
{
  *(v0 + 136) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  sub_1B98CCEE4((v0 + 160));

  v1 = *(*(v3 + 136) + 8);

  return v1();
}

unint64_t sub_1B98CCCC0()
{
  v2 = qword_1EBBD5DD0;
  if (!qword_1EBBD5DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5DC8, &qword_1B98FC980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98CCD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v6[1] = a1;
  v13 = 0;
  v10 = 0;
  v2 = sub_1B98F5078();
  v8 = *(v2 - 8);
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v12 = v6 - v7;
  v13 = v3;
  (*(v8 + 16))();
  v11 = sub_1B98C5608();
  v4 = sub_1B98C5654();
  return BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v12, v10, v10, v11, v4, v9);
}

unint64_t sub_1B98CCE30()
{
  v2 = qword_1EBBD5DE0;
  if (!qword_1EBBD5DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5DD8, &unk_1B98FC988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98CCF10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98CCF88()
{
  *(v0 + 16) = v0;
  sub_1B98CD0A8();
  v2 = *(*(v4 + 16) + 8);

  return v2(v1);
}

void sub_1B98CD0A8()
{
  v79 = 0;
  v113 = 0;
  v111 = 0;
  v110 = 0;
  v109[1] = 0;
  v109[0] = 0;
  v102 = 0;
  v101 = 0;
  v96 = 0;
  v80 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v81 = v17 - v80;
  v83 = sub_1B98F5138();
  v84 = *(v83 - 8);
  v85 = v84;
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83 - 8);
  v87 = v17 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v0;
  v89 = *(v0 + 56);
  v88 = *(v0 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v112 = (*(v88 + 8))(ObjectType);
  v90 = BYTE1(v112);
  swift_unknownObjectRelease();
  if (v90)
  {
    v19 = *(v82 + 56);
    v18 = *(v82 + 64);
    swift_unknownObjectRetain();
    v16 = swift_getObjectType();
    v20 = (*(v18 + 96))(v16);
    swift_unknownObjectRelease();
    v29 = v20;
    v30 = v78;
  }

  else
  {
    v72 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E08, &unk_1B98FC9B8);
    v111 = sub_1B98F5458();
    v70 = sub_1B9836338();
    v110 = sub_1B98F5458();
    v71 = v106;
    sub_1B98CB8A8(v82 + 16, v106);
    v74 = v107;
    v73 = v108;
    __swift_project_boxed_opaque_existential_1(v71, v107);
    v2 = v72;
    v3 = (*(v73 + 16))(v74);
    v75 = v2;
    v76 = v3;
    v77 = v2;
    if (v2)
    {
      v17[1] = v77;
      __swift_destroy_boxed_opaque_existential_1(v106);
      sub_1B98D1250(&v110);
      sub_1B98D127C(&v111);
    }

    else
    {
      v105 = v76;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5470, &qword_1B98FA8D0);
      sub_1B98D12A8();
      sub_1B98F5B88();
      __swift_destroy_boxed_opaque_existential_1(v106);
      for (i = v75; ; i = v58)
      {
        v65 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E18, &qword_1B98FC9C8);
        sub_1B98F5DE8();
        v66 = v103;
        v67 = v104;
        if (v104 >> 60 == 15)
        {
          break;
        }

        v63 = v66;
        v64 = v67;
        v60 = v67;
        v61 = v66;
        v101 = v66;
        v102 = v67;
        v62 = sub_1B98E8C10(v66, v67);
        if (v62)
        {
          v59 = v62;
          v57 = v62;
          v96 = v62;
          v4 = v62;
          v95 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
          sub_1B98F5908();
          v56 = [v57 identifier];
          v54 = sub_1B98F5658();
          v55 = v5;
          sub_1B98D1598(v61, v60);
          v91 = v54;
          v92 = v55;
          v93 = v61;
          v94 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E20, &qword_1B98FC9F0);
          sub_1B98F5908();

          sub_1B98371D0(v61, v60);
          v58 = v65;
        }

        else
        {
          v6 = v87;
          v7 = sub_1B98F1B1C();
          (*(v85 + 16))(v6, v7, v83);
          v52 = sub_1B98F5118();
          v49 = v52;
          v51 = sub_1B98F5BC8();
          v50 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
          v53 = sub_1B98F5F98();
          if (os_log_type_enabled(v52, v51))
          {
            v45 = v65;
            v38 = sub_1B98F5C28();
            v34 = v38;
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
            v36 = 0;
            v39 = sub_1B985263C(0, v35, v35);
            v37 = v39;
            v40 = sub_1B985263C(v36, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v100 = v38;
            v99 = v39;
            v98 = v40;
            v41 = 0;
            v42 = &v100;
            sub_1B9852690(0, &v100);
            sub_1B9852690(v41, v42);
            v97 = v53;
            v46 = v17;
            MEMORY[0x1EEE9AC00](v17);
            v43 = &v17[-6];
            v17[-4] = v8;
            v17[-3] = &v99;
            v17[-2] = &v98;
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
            sub_1B9852720();
            v9 = v45;
            sub_1B98F57D8();
            v47 = v9;
            v48 = v46;
            if (v9)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_1B982F000, v49, v50, "Failed to unarchive contactData", v34, 2u);
              v32 = 0;
              sub_1B985281C(v37, 0, v35);
              sub_1B985281C(v40, v32, MEMORY[0x1E69E7CA0] + 8);
              sub_1B98F5C08();

              v33 = v47;
            }
          }

          else
          {

            v33 = v65;
          }

          v31 = v33;

          (*(v85 + 8))(v87, v83);
          sub_1B98371D0(v61, v60);
          v58 = v31;
        }
      }

      sub_1B98D1330(v109);
      v25 = 0;
      v10 = sub_1B98F5988();
      (*(*(v10 - 8) + 56))(v81, 1);
      v22 = 7;
      v24 = swift_allocObject();
      v21 = v24 + 16;

      swift_weakInit();

      v23 = v111;
      sub_1B98F54D8();
      v11 = swift_allocObject();
      v12 = v23;
      v13 = v25;
      v14 = v11;
      v15 = v24;
      v26 = v14;
      v14[2] = v25;
      v14[3] = v13;
      v14[4] = v15;
      v14[5] = v12;

      v27 = sub_1B98CE0E8(v25, v25, v81, &unk_1B98FC9D8, v26, MEMORY[0x1E69E7CA8] + 8);
      sub_1B98975AC(v81);

      v28 = v110;
      sub_1B98F54D8();
      sub_1B98D1250(&v110);
      sub_1B98D127C(&v111);
      v29 = v28;
      v30 = v65;
    }
  }
}

uint64_t sub_1B98CDC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a5;
  v5[23] = a4;
  v5[19] = v5;
  v5[20] = 0;
  v5[21] = 0;
  v5[22] = 0;
  memset(v5 + 7, 0, 0x28uLL);
  v6 = type metadata accessor for BlockedHandle(0);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  v5[28] = swift_task_alloc();
  v5[20] = a4 + 16;
  v5[21] = a5;

  return MEMORY[0x1EEE6DFA0](sub_1B98CDDB8, 0);
}

uint64_t sub_1B98CDDB8()
{
  *(v0 + 152) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v12[22] = Strong;
    sub_1B98F54D8();
    sub_1B9853574();
    sub_1B98F5A58();
    memcpy(v12 + 7, v12 + 2, 0x28uLL);
    while (1)
    {
      v10 = v12[28];
      v11 = v12[25];
      v9 = v12[26];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v9 + 48))(v10, 1, v11) == 1)
      {
        break;
      }

      v7 = v12[27];
      sub_1B9832680(v12[28], v7);
      v6 = *(Strong + 64);
      swift_unknownObjectRetain();
      ObjectType = swift_getObjectType();
      (*(v6 + 48))(1, v7, ObjectType);
      swift_unknownObjectRelease();
      sub_1B983A3AC(v7);
    }

    sub_1B9871430();
    v8 = *(Strong + 64);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v1 = (*(v8 + 24))();
    *(v2 + 2) = 1;
    v1();
    swift_unknownObjectRelease();
  }

  v4 = *(v12[19] + 8);

  return v4();
}

uint64_t sub_1B98CE0E8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_1B98FCA78;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_1B9897BD4(v53, v56);
  v57 = sub_1B98F5988();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_1B98975AC(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_1B98F5978();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_1B98F5958();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_1B98F5698();
    sub_1B98D0BF4(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_1B98D0BE0();
  v16 = v13;

  return v16;
}

uint64_t BlockList.add(handle:)(uint64_t a1)
{
  v2[11] = v1;
  v2[10] = a1;
  v2[7] = v2;
  v2[8] = 0;
  v2[9] = 0;
  v3 = sub_1B98F5078();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for BlockedHandle(0);
  v2[16] = swift_task_alloc();
  v2[8] = a1;
  v2[9] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B98CE7CC, 0);
}

uint64_t sub_1B98CE7CC()
{
  v9 = v0[16];
  v7 = v0[14];
  v1 = v0[13];
  v8 = v0[11];
  v0[7] = v0;
  (*(v1 + 16))();
  v6 = sub_1B98C5608();
  v2 = sub_1B98C5654();
  BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v7, 0, 0, v6, v2, v9);
  sub_1B98CB8A8(v8 + 16, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  sub_1B98F5F98();
  sub_1B9833334(v9, v3);
  sub_1B9851B38();
  sub_1B9853574();
  v14 = sub_1B98F5A38();
  v0[17] = v14;
  v13 = (*(v12 + 72) + **(v12 + 72));
  v4 = swift_task_alloc();
  *(v10 + 144) = v4;
  *v4 = *(v10 + 56);
  v4[1] = sub_1B98CE9E8;

  return v13(v14, v11, v12);
}

uint64_t sub_1B98CE9E8()
{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B98CEC7C;
  }

  else
  {

    v2 = sub_1B98CEB64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B98CEB64()
{
  v6 = v0[16];
  v4 = v0[11];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v5 = *(v4 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(1, v6, ObjectType);
  swift_unknownObjectRelease();
  sub_1B983A3AC(v6);

  v2 = *(v0[7] + 8);

  return v2();
}

uint64_t sub_1B98CEC7C()
{
  v3 = *(v0 + 128);
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1B983A3AC(v3);

  v1 = *(*(v4 + 56) + 8);

  return v1();
}

uint64_t BlockList.add(contact:)(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  memset(v2 + 12, 0, 0x28uLL);
  v3 = type metadata accessor for BlockedHandle(0);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  v2[26] = swift_task_alloc();
  v2[18] = a1;
  v2[19] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B98CEEB4, 0);
}

uint64_t sub_1B98CEEB4()
{
  v1 = v0[21];
  v0[17] = v0;
  v9 = static BlockedHandle.handles(for:shouldBeBlocked:)(v1, 1);
  v0[27] = v9;
  v0[20] = v9;
  v0[28] = sub_1B9853574();
  if (sub_1B98F5AA8())
  {

    v4 = *(v8[17] + 8);

    return v4();
  }

  else
  {
    sub_1B98CB8A8(v8[22] + 16, (v8 + 7));
    v5 = v8[10];
    v6 = v8[11];
    __swift_project_boxed_opaque_existential_1(v8 + 7, v5);
    v7 = (*(v6 + 72) + **(v6 + 72));
    v2 = swift_task_alloc();
    v8[29] = v2;
    *v2 = v8[17];
    v2[1] = sub_1B98CF12C;

    return v7(v9, v5, v6);
  }
}

uint64_t sub_1B98CF12C()
{
  v4 = *v1;
  *(v4 + 136) = *v1;
  *(v4 + 240) = v0;

  if (v0)
  {
    v2 = sub_1B98CF550;
  }

  else
  {
    v2 = sub_1B98CF294;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B98CF294()
{
  v12 = v0[22];
  v13 = v0[21];
  v0[17] = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v14 = *(v12 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v14 + 88))(1, v13, ObjectType);
  swift_unknownObjectRelease();
  sub_1B98F54D8();
  sub_1B98F5A58();
  memcpy(v0 + 12, v0 + 2, 0x28uLL);
  while (1)
  {
    v9 = v11[26];
    v10 = v11[23];
    v8 = v11[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v8 + 48))(v9, 1, v10) == 1)
    {
      break;
    }

    v7 = v11[25];
    v5 = v11[22];
    sub_1B9832680(v11[26], v7);
    v6 = *(v5 + 64);
    swift_unknownObjectRetain();
    v2 = swift_getObjectType();
    (*(v6 + 48))(1, v7, v2);
    swift_unknownObjectRelease();
    sub_1B983A3AC(v7);
  }

  sub_1B9871430();

  v3 = *(v11[17] + 8);

  return v3();
}

uint64_t sub_1B98CF550()
{
  *(v0 + 136) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  v1 = *(*(v3 + 136) + 8);

  return v1();
}

uint64_t BlockList.remove(handle:)(uint64_t a1)
{
  v2[11] = v1;
  v2[10] = a1;
  v2[7] = v2;
  v2[8] = 0;
  v2[9] = 0;
  v3 = sub_1B98F5078();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for BlockedHandle(0);
  v2[16] = swift_task_alloc();
  v2[8] = a1;
  v2[9] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B98CF774, 0);
}

uint64_t sub_1B98CF774()
{
  v9 = v0[16];
  v7 = v0[14];
  v1 = v0[13];
  v8 = v0[11];
  v0[7] = v0;
  (*(v1 + 16))();
  v6 = sub_1B98C5608();
  v2 = sub_1B98C5654();
  BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v7, 0, 0, v6, v2, v9);
  sub_1B98CB8A8(v8 + 16, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  sub_1B98F5F98();
  sub_1B9833334(v9, v3);
  sub_1B9851B38();
  sub_1B9853574();
  v14 = sub_1B98F5A38();
  v0[17] = v14;
  v13 = (*(v12 + 88) + **(v12 + 88));
  v4 = swift_task_alloc();
  *(v10 + 144) = v4;
  *v4 = *(v10 + 56);
  v4[1] = sub_1B98CF990;

  return v13(v14, v11, v12);
}

uint64_t sub_1B98CF990()
{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B98CFC24;
  }

  else
  {

    v2 = sub_1B98CFB0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B98CFB0C()
{
  v6 = v0[16];
  v4 = v0[11];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v5 = *(v4 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(0, v6, ObjectType);
  swift_unknownObjectRelease();
  sub_1B983A3AC(v6);

  v2 = *(v0[7] + 8);

  return v2();
}

uint64_t sub_1B98CFC24()
{
  v3 = *(v0 + 128);
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1B983A3AC(v3);

  v1 = *(*(v4 + 56) + 8);

  return v1();
}

uint64_t BlockList.remove(contact:)(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  memset(v2 + 12, 0, 0x28uLL);
  v3 = type metadata accessor for BlockedHandle(0);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  v2[26] = swift_task_alloc();
  v2[18] = a1;
  v2[19] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B98CFE5C, 0);
}

uint64_t sub_1B98CFE5C()
{
  v5 = v0[22];
  v4 = v0[21];
  v0[17] = v0;
  v1 = sub_1B98CB698();
  v10 = static BlockedHandle.handles(for:shouldBeBlocked:)(v4, v1 & 1);
  v0[27] = v10;
  v0[20] = v10;
  sub_1B98CB8A8(v5 + 16, (v0 + 7));
  v7 = v0[10];
  v8 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
  v9 = (*(v8 + 88) + **(v8 + 88));
  v2 = swift_task_alloc();
  *(v6 + 224) = v2;
  *v2 = *(v6 + 136);
  v2[1] = sub_1B98D0004;

  return v9(v10, v7, v8);
}

uint64_t sub_1B98D0004()
{
  v4 = *v1;
  *(v4 + 136) = *v1;
  *(v4 + 232) = v0;

  if (v0)
  {
    v2 = sub_1B98D0410;
  }

  else
  {
    v2 = sub_1B98D016C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B98D016C()
{
  v12 = v0[22];
  v13 = v0[21];
  v0[17] = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v14 = *(v12 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v14 + 88))(0, v13, ObjectType);
  swift_unknownObjectRelease();
  sub_1B98F54D8();
  sub_1B9853574();
  sub_1B98F5A58();
  memcpy(v0 + 12, v0 + 2, 0x28uLL);
  while (1)
  {
    v9 = v11[26];
    v10 = v11[23];
    v8 = v11[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v8 + 48))(v9, 1, v10) == 1)
    {
      break;
    }

    v7 = v11[25];
    v5 = v11[22];
    sub_1B9832680(v11[26], v7);
    v6 = *(v5 + 64);
    swift_unknownObjectRetain();
    v2 = swift_getObjectType();
    (*(v6 + 48))(0, v7, v2);
    swift_unknownObjectRelease();
    sub_1B983A3AC(v7);
  }

  sub_1B9871430();

  v3 = *(v11[17] + 8);

  return v3();
}

uint64_t sub_1B98D0410()
{
  *(v0 + 136) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  v1 = *(*(v3 + 136) + 8);

  return v1();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BlockList.isEmpty()()
{
  v17 = v0;
  v12 = *(v0 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v16 = (*(v12 + 8))(ObjectType);
  swift_unknownObjectRelease();
  if (v16 != 2)
  {
    v10 = v16;
    return v10 & 1;
  }

  sub_1B98CB8A8(v0 + 16, v13);
  v8 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v7 + 96))(v8);
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = *(v0 + 64);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v2 = (*(v6 + 24))();
    *v3 = v9 & 1;
    v2();
    swift_unknownObjectRelease();
    v10 = v9;
    return v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v5 & 1;
}

uint64_t BlockList.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B98D0750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a5;
  v5[24] = a4;
  v5[19] = v5;
  v5[20] = 0;
  v5[21] = 0;
  v5[22] = 0;
  v5[13] = 0;
  v5[14] = 0;
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = 0;
  v5[18] = 0;
  v5[20] = a4 + 16;
  v5[21] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B98D07BC, 0);
}

uint64_t sub_1B98D07BC()
{
  *(v0 + 152) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v12 = v13[25];
    v13[22] = Strong;
    sub_1B98F54D8();
    v13[23] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E20, &qword_1B98FC9F0);
    sub_1B98D1CAC();
    sub_1B98F5B88();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E30, &qword_1B98FCA88);
      sub_1B98F5DE8();
      v8 = v13[2];
      v9 = v13[3];
      v10 = v13[4];
      v11 = v13[5];
      if (!v9)
      {
        break;
      }

      v13[15] = v8;
      v13[16] = v9;
      v13[17] = v10;
      v13[18] = v11;
      v7 = *(Strong + 64);
      swift_unknownObjectRetain();
      ObjectType = swift_getObjectType();
      (*(v7 + 80))(1, v8, v9, v10, v11, ObjectType);
      swift_unknownObjectRelease();
      sub_1B98371D0(v10, v11);
    }

    sub_1B98D1D34(v13 + 13);
    v6 = *(Strong + 64);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v2 = (*(v6 + 24))();
    *(v3 + 1) = 1;
    v2();
    swift_unknownObjectRelease();
  }

  v4 = *(v13[19] + 8);

  return v4();
}

uint64_t sub_1B98D0AF0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
  v1 = sub_1B98D0B58();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98D0B58()
{
  v2 = qword_1EBBD5DE8;
  if (!qword_1EBBD5DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5458, &qword_1B98FB070);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98D0BF4@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_1B98F5E08();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_1B98D0DB4(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D0EC8;

  return v6(a1);
}

uint64_t sub_1B98D0EC8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

char *sub_1B98D101C(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF8, &qword_1B98FC9A0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DC0, &qword_1B98FC978);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B98F5078();
    (*(*(v2 - 8) + 32))(a2, a1);
    v5 = type metadata accessor for BlockedHandle(0);
    *&a2[v5[5]] = *&a1[v5[5]];
    *&a2[v5[6]] = *&a1[v5[6]];
    *&a2[v5[7]] = *&a1[v5[7]];
    *&a2[v5[8]] = *&a1[v5[8]];
    a2[*(v8 + 48)] = a1[*(v8 + 48)];
    (*(v9 + 56))();
  }

  return a2;
}

unint64_t sub_1B98D12A8()
{
  v2 = qword_1EBBD5E10;
  if (!qword_1EBBD5E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5470, &qword_1B98FA8D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98D135C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D1440;

  return sub_1B98D0750(a1, v6, v7, v8, v9);
}

uint64_t sub_1B98D1440()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98D1598(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1B98D1614(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D16F8;

  return sub_1B98CDC48(a1, v6, v7, v8, v9);
}

uint64_t sub_1B98D16F8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98D1874(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D1968;

  return sub_1B98D0DB4(a1, v6);
}

uint64_t sub_1B98D1968()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98D1A90(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D1B84;

  return sub_1B98D0DB4(a1, v6);
}

uint64_t sub_1B98D1B84()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_1B98D1CAC()
{
  v2 = qword_1EBBD5E28;
  if (!qword_1EBBD5E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5E20, &qword_1B98FC9F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98D1D9C()
{
  v0 = sub_1B98D1DEC(2, 0, 0);
  LOWORD(v2) = v0;
  BYTE2(v2) = BYTE2(v0);
  return v2;
}

uint64_t sub_1B98D1DEC(char a1, char a2, char a3)
{
  LOBYTE(v4) = a1;
  BYTE1(v4) = a2;
  BYTE2(v4) = a3;
  return v4;
}

BOOL sub_1B98D1E08(char a1, char a2)
{
  if (a1 != 2)
  {
    if (a2 != 2)
    {
      return (a1 & 1) == (a2 & 1);
    }

    return 0;
  }

  return a2 == 2;
}

uint64_t sub_1B98D1EE0(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_1B98F54D8();
  v12[0] = sub_1B98F55E8("notQueried", 10, 1);
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
  v11[0] = sub_1B98F55E8("isEmpty", 7, 1);
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

uint64_t sub_1B98D2248(char a1)
{
  if (a1)
  {
    return sub_1B98F55E8("isEmpty", 7, 1);
  }

  else
  {
    return sub_1B98F55E8("notQueried", 10, 1);
  }
}

BOOL sub_1B98D22D4(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8("_0", 2, 1);
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

uint64_t sub_1B98D2504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98D1EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98D2554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D2084();
  *a1 = result;
  return result;
}

uint64_t sub_1B98D26E8(uint64_t a1, int a2)
{
  v24 = a1;
  v32 = a2;
  v36 = 0;
  v35 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FB8, &qword_1B98FD348);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v6 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FC0, &qword_1B98FD350);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v6 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FC8, &qword_1B98FD358);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v24);
  v29 = v6 - v28;
  v36 = v2;
  v35 = v3;
  v30 = v2[3];
  v31 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v30);
  sub_1B98D4E50();
  sub_1B98F6078();
  if (v32 == 2)
  {
    v10 = &v33;
    v33 = 0;
    sub_1B98D4FC4();
    sub_1B98F5ED8();
    (*(v20 + 8))(v23, v19);
    v11 = v13;
LABEL_6:
    v6[1] = v11;
    return (*(v26 + 8))(v29, v25);
  }

  v12 = v32;
  v7 = v32;
  v6[2] = &v34;
  v34 = 1;
  sub_1B98D4F48();
  sub_1B98F5ED8();
  v4 = v13;
  sub_1B98F5F18();
  v8 = v4;
  v9 = v4;
  if (!v4)
  {
    (*(v15 + 8))(v18, v14);
    v11 = v8;
    goto LABEL_6;
  }

  v6[0] = v9;
  (*(v15 + 8))(v18, v14);
  return (*(v26 + 8))(v29, v25);
}

uint64_t sub_1B98D2AC8(uint64_t a1, char a2)
{
  if (a2 != 2)
  {
    sub_1B98F6058();
  }

  return sub_1B98F6058();
}

BOOL sub_1B98D2C18@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98D22D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98D2C68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D23CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B98D2D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98D2658(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B98D2D64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D2698();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B98D2E44(uint64_t a1)
{
  v61 = a1;
  v84 = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F78, &qword_1B98FD318);
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v55 = v13 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F80, &qword_1B98FD320);
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v60 = v13 - v59;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F88, &qword_1B98FD328);
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v61);
  v66 = v13 - v65;
  v84 = v1;
  v68 = v1[3];
  v69 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v68);
  sub_1B98D4E50();
  v2 = v67;
  sub_1B98F6068();
  v70 = v2;
  v71 = v2;
  if (v2)
  {
    v24 = v71;
  }

  else
  {
    v3 = sub_1B98F5EC8();
    v47 = &v79;
    v79 = v3;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F90, &qword_1B98FD330);
    sub_1B98E08A0();
    v80 = sub_1B98F5C78();
    v81 = v4;
    v82 = v5;
    v83 = v6;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FA0, &qword_1B98FD338);
    v49 = sub_1B98E0928();
    sub_1B98F5B38();
    v50 = v78;
    if (v78 == 2 || (v45 = v50, v39 = v50, v43 = v80, v40 = v81, v41 = v82, v42 = v83, swift_unknownObjectRetain(), v74 = v43, v75 = v40, v76 = v41, v77 = v42, v44 = sub_1B98F5B58(), swift_unknownObjectRelease(), (v44 & 1) == 0))
    {
      v18 = 0;
      v22 = sub_1B98F5D38();
      v16 = 1;
      v23 = swift_allocError();
      v21 = v11;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FB0, &qword_1B98FD340);
      v17 = v21 + *(v12 + 48);
      *v21 = &unk_1F379B4C0;
      v19 = sub_1B98F5E68();
      v20 = sub_1B98F55E8("Invalid number of keys found, expected one.", 43, v16 & 1);
      sub_1B98F5D28();
      (*(*(v22 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8]);
      swift_willThrow();
      sub_1B98E09B0(&v80);
      (*(v63 + 8))(v66, v62);
      v24 = v23;
    }

    else if (v39)
    {
      v31 = &v73;
      v73 = v39 & 1;
      sub_1B98D4F48();
      v8 = v70;
      sub_1B98F5E58();
      v32 = v8;
      v33 = v8;
      if (!v8)
      {
        v9 = sub_1B98F5EA8();
        v28 = 0;
        v29 = v9;
        v30 = 0;
        v27 = v9;
        v85 = v9 & 1;
        (*(v52 + 8))(v55, v51);
        v34 = v27 & 1;
        v35 = v28;
        goto LABEL_11;
      }

      v14 = v33;
      sub_1B98E09B0(&v80);
      (*(v63 + 8))(v66, v62);
      v24 = v14;
    }

    else
    {
      v36 = &v72;
      v72 = v39 & 1;
      sub_1B98D4FC4();
      v7 = v70;
      sub_1B98F5E58();
      v37 = v7;
      v38 = v7;
      if (!v7)
      {
        v85 = 2;
        (*(v57 + 8))(v60, v56);
        v34 = 2;
        v35 = v37;
LABEL_11:
        v26 = v35;
        v25 = v34;
        sub_1B98E09B0(&v80);
        (*(v63 + 8))(v66, v62);
        __swift_destroy_boxed_opaque_existential_1(v61);
        return v25;
      }

      v15 = v38;
      sub_1B98E09B0(&v80);
      (*(v63 + 8))(v66, v62);
      v24 = v15;
    }
  }

  v13[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_1B98D376C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B98D2E44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1B98D3900(int a1, int a2)
{
  v4 = BYTE1(a1);
  v5 = BYTE2(a1);
  v6 = BYTE1(a2);
  v7 = BYTE2(a2);
  return sub_1B98D1E08(a1, a2) && (v4 & 1) == (v6 & 1) && (v5 & 1) == (v7 & 1);
}

uint64_t sub_1B98D39F0(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  sub_1B98F54D8();
  v15[0] = sub_1B98F55E8("queryState", 10, 1);
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
  v14[0] = sub_1B98F55E8("didFetchAllContacts", 19, 1);
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
  v13[0] = sub_1B98F55E8("didFetchAllHandles", 18, 1);
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

BOOL sub_1B98D3C44(char a1, char a2)
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

uint64_t sub_1B98D3E48(char a1)
{
  if (!a1)
  {
    return sub_1B98F55E8("queryState", 10, 1);
  }

  if (a1 == 1)
  {
    return sub_1B98F55E8("didFetchAllContacts", 19, 1);
  }

  return sub_1B98F55E8("didFetchAllHandles", 18, 1);
}

uint64_t sub_1B98D3F14(uint64_t a1, int a2)
{
  v9 = a1;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v30 = a2;
  v16 = a2;
  v12 = BYTE1(a2);
  v8 = BYTE2(a2);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F68, &qword_1B98FD310);
  v10 = *(v18 - 8);
  v11 = v18 - 8;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v15 = v7 - v3;
  v29 = v2;
  LOBYTE(v27) = v16;
  HIBYTE(v27) = v12;
  v28 = v4;
  v13 = v2[3];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v13);
  sub_1B98D5138();
  sub_1B98F6078();
  v20 = &v26;
  v26 = v16;
  v17 = &v25;
  v25 = 0;
  sub_1B98E0824();
  v5 = v19;
  sub_1B98F5F28();
  v21 = v5;
  v22 = v5;
  if (v5)
  {
    v7[2] = v22;
  }

  else
  {
    v24 = 1;
    sub_1B98F5F18();
    v7[6] = 0;
    v7[7] = 0;
    v23 = 2;
    sub_1B98F5F18();
    v7[4] = 0;
    v7[5] = 0;
  }

  return (*(v10 + 8))(v15, v18);
}

uint64_t sub_1B98D4218(uint64_t a1, int a2)
{
  sub_1B98D5040();
  sub_1B98F6058();
  sub_1B98F6058();
  return sub_1B98F6058();
}

uint64_t sub_1B98D437C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98D39F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98D43C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D3C2C();
  *a1 = result;
  return result;
}

uint64_t sub_1B98D44C4(uint64_t a1)
{
  v23 = a1;
  v39 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F58, &qword_1B98FD308);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v6 - v27;
  v39 = MEMORY[0x1EEE9AC00](v23);
  v30 = v39[3];
  v31 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v30);
  sub_1B98D5138();
  v1 = v29;
  sub_1B98F6068();
  v32 = v1;
  v33 = v1;
  if (v1)
  {
    v9 = v33;
  }

  else
  {
    v20 = &v37;
    v37 = 0;
    sub_1B98E07A8();
    v2 = v32;
    sub_1B98F5EB8();
    v21 = v2;
    v22 = v2;
    if (!v2)
    {
      v16 = v38;
      v40 = v38;
      v36 = 1;
      v3 = sub_1B98F5EA8();
      v17 = 0;
      v18 = v3;
      v19 = 0;
      v12 = v3;
      v41 = v3 & 1;
      v35 = 2;
      v4 = sub_1B98F5EA8();
      v13 = 0;
      v14 = v4;
      v15 = 0;
      v11 = v4;
      v10 = 1;
      v42 = v4 & 1;
      (*(v25 + 8))(v28, v24);
      __swift_destroy_boxed_opaque_existential_1(v23);
      LOBYTE(v34) = v16;
      BYTE1(v34) = v12 & v10;
      BYTE2(v34) = v11 & 1;
      return v34;
    }

    v8 = v22;
    (*(v25 + 8))(v28, v24);
    v9 = v8;
  }

  v6 = v9;
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v7;
}

uint64_t sub_1B98D4824@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B98D44C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_1B98D48C0(uint64_t a1)
{
  LOWORD(v3) = *v1;
  BYTE2(v3) = *(v1 + 2);
  return sub_1B98D3F14(a1, v3);
}

uint64_t sub_1B98D4934()
{
  LOWORD(v2) = *v0;
  BYTE2(v2) = *(v0 + 2);
  return sub_1B98D4454(v2);
}

uint64_t sub_1B98D4970(uint64_t a1)
{
  LOWORD(v3) = *v1;
  BYTE2(v3) = *(v1 + 2);
  return sub_1B98D4218(a1, v3);
}

BOOL sub_1B98D49C4(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *a1;
  BYTE2(v4) = *(a1 + 2);
  LOWORD(v3) = *a2;
  BYTE2(v3) = *(a2 + 2);
  return sub_1B98D3900(v4, v3);
}

uint64_t sub_1B98D4A20()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_1B98D4A4C()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_1B98D4A78()
{
  v5 = v0;
  os_unfair_lock_lock(v0 + 4);
  sub_1B98D4B50(&v0[5], &v3);
  sub_1B9870E78(v0 + 4);
  LOWORD(v2) = v3;
  BYTE2(v2) = v4;
  return v2;
}

uint64_t sub_1B98D4B50@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = *(result + 2);
  return result;
}

void sub_1B98D4B7C(int a1)
{
  v3 = a1;
  v4 = BYTE1(a1);
  v5 = BYTE2(a1);
  os_unfair_lock_lock(v1 + 4);
  LOBYTE(v6) = v3;
  BYTE1(v6) = v4;
  BYTE2(v6) = v5;
  sub_1B98D4C98(&v1[5], v6);
  sub_1B9870E78(v2 + 4);
}

uint64_t sub_1B98D4C98(uint64_t result, int a2)
{
  *result = a2;
  *(result + 2) = BYTE2(a2);
  return result;
}

void (*sub_1B98D4CE0(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v2 = sub_1B98D4A78();
  *(a1 + 8) = v2;
  *(a1 + 10) = BYTE2(v2);
  return sub_1B98D4D4C;
}

void sub_1B98D4D4C(uint64_t a1, char a2)
{
  if (a2)
  {
    LOWORD(v2) = *(a1 + 8);
    BYTE2(v2) = *(a1 + 10);
    sub_1B98D4B7C(v2);
  }

  else
  {
    LOWORD(v3) = *(a1 + 8);
    BYTE2(v3) = *(a1 + 10);
    sub_1B98D4B7C(v3);
  }
}

unint64_t sub_1B98D4DD4()
{
  v2 = qword_1EBBD5E38;
  if (!qword_1EBBD5E38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D4E50()
{
  v2 = qword_1EBBD5E40;
  if (!qword_1EBBD5E40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D4ECC()
{
  v2 = qword_1EBBD5E48;
  if (!qword_1EBBD5E48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D4F48()
{
  v2 = qword_1EBBD5E50;
  if (!qword_1EBBD5E50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D4FC4()
{
  v2 = qword_1EBBD5E58;
  if (!qword_1EBBD5E58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D5040()
{
  v2 = qword_1EBBD5E60;
  if (!qword_1EBBD5E60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D50BC()
{
  v2 = qword_1EBBD5E68;
  if (!qword_1EBBD5E68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D5138()
{
  v2 = qword_1EBBD5E70;
  if (!qword_1EBBD5E70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D51B4()
{
  v2 = qword_1EBBD5E78;
  if (!qword_1EBBD5E78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98D5230@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint32_t *a3@<X8>)
{
  v20 = a1;
  v19 = a2;
  v9 = *MEMORY[0x1E6995908];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6995908]);
  sub_1B98F5658();
  sub_1B98E0C0C();
  queue = sub_1B98F5BF8();
  v4 = swift_allocObject();

  swift_weakInit();

  v17 = sub_1B98E0C70;
  v18 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_1B98D5534;
  v16 = &block_descriptor;
  handler = _Block_copy(&aBlock);

  v6 = sub_1B98F5698();

  v11 = notify_register_dispatch((v6 + 32), a1, queue, handler);
  swift_unknownObjectRelease();
  _Block_release(handler);
  MEMORY[0x1E69E5920](queue);

  MEMORY[0x1E69E5920](v9);
  result = v11;
  *a3 = v11;
  return result;
}

uint64_t sub_1B98D5420(int a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {

    sub_1B98F3648();

    sub_1B98F3648();

    v5 = sub_1B98D1D9C();
    LOWORD(v4) = v5;
    BYTE2(v4) = BYTE2(v5);
    sub_1B98D4B7C(v4);
  }

  return result;
}

uint64_t sub_1B98D5534(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

uint64_t sub_1B98D558C()
{
  v1 = atomic_load((v0 + 48));
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  sub_1B98DDB60(v6 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4FF8, &qword_1B98F8B20);
  v5 = *(*(v4 - 8) + 8);
  v5(v6 + 23);
  (v5)(v6 + 24, v4);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E98, &qword_1B98FCAB8);
  (*(*(v2 - 8) + 8))(v6 + 48);
  return v6;
}

uint64_t sub_1B98D56E0(uint64_t a1)
{
  v154 = a1;
  v114 = sub_1B98DDD24;
  v115 = sub_1B98DDD98;
  v116 = sub_1B98DDD88;
  v117 = sub_1B98DDD90;
  v118 = sub_1B98DDDA4;
  v119 = sub_1B98DE02C;
  v120 = sub_1B98DE0B8;
  v121 = sub_1B98DE0C4;
  v122 = sub_1B98DE0D0;
  v123 = sub_1B98DE038;
  v124 = sub_1B98DE160;
  v125 = sub_1B98DE0A8;
  v126 = sub_1B98DE0B0;
  v127 = sub_1B98DE0DC;
  v128 = sub_1B98DE150;
  v129 = sub_1B98DE158;
  v130 = sub_1B98DE16C;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v131 = 0;
  v165 = 0;
  v132 = 0;
  v133 = sub_1B98F5078();
  v135 = *(v133 - 8);
  v134 = v133 - 8;
  v136 = v135;
  v137 = *(v135 + 64);
  v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v139 = &v54 - v138;
  v140 = sub_1B98F5138();
  v141 = *(v140 - 8);
  v142 = v140 - 8;
  v143 = (*(v141 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v140);
  v144 = &v54 - v143;
  v145 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v54 - v143);
  v146 = &v54 - v145;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0);
  v147 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v158 = &v54 - v147;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v156 = *(v159 - 8);
  v157 = v159 - 8;
  v148 = v156;
  v149 = *(v156 + 64);
  v150 = (v149 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v154);
  v151 = &v54 - v150;
  v152 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v153 = &v54 - v152;
  v173 = &v54 - v152;
  v172 = v6;
  v171 = v1;
  v155 = *(v1 + 40);

  sub_1B98F376C(v154);

  if ((*(v156 + 48))(v158, 1, v159) == 1)
  {
    v39 = v144;
    sub_1B98DDC10(v158);
    v40 = sub_1B98F1F44();
    (*(v141 + 16))(v39, v40, v140);
    v63 = v136;
    (*(v135 + 16))(v139, v154, v133);
    v64 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v67 = 7;
    v68 = swift_allocObject();
    (*(v135 + 32))(v68 + v64, v139, v133);
    v76 = sub_1B98F5118();
    v77 = sub_1B98F5BD8();
    v65 = 17;
    v70 = swift_allocObject();
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v66 = 32;
    v41 = swift_allocObject();
    v42 = v68;
    v69 = v41;
    *(v41 + 16) = v114;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v69;
    v73 = v43;
    *(v43 + 16) = v115;
    *(v43 + 24) = v44;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v72 = sub_1B98F5F98();
    v74 = v45;

    v46 = v70;
    v47 = v74;
    *v74 = v116;
    v47[1] = v46;

    v48 = v71;
    v49 = v74;
    v74[2] = v117;
    v49[3] = v48;

    v50 = v73;
    v51 = v74;
    v74[4] = v118;
    v51[5] = v50;
    sub_1B9851B38();

    if (os_log_type_enabled(v76, v77))
    {
      v52 = v131;
      v56 = sub_1B98F5C28();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v57 = sub_1B985263C(0, v55, v55);
      v58 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v59 = &v170;
      v170 = v56;
      v60 = &v169;
      v169 = v57;
      v61 = &v168;
      v168 = v58;
      sub_1B9852690(2, &v170);
      sub_1B9852690(1, v59);
      v166 = v116;
      v167 = v70;
      sub_1B98526A4(&v166, v59, v60, v61);
      v62 = v52;
      if (v52)
      {

        __break(1u);
      }

      else
      {
        v166 = v117;
        v167 = v71;
        sub_1B98526A4(&v166, &v170, &v169, &v168);
        v54 = 0;
        v166 = v118;
        v167 = v73;
        sub_1B98526A4(&v166, &v170, &v169, &v168);
        _os_log_impl(&dword_1B982F000, v76, v77, "No cached value found for handle %s", v56, 0xCu);
        sub_1B985281C(v57, 0, v55);
        sub_1B985281C(v58, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v76);
    (*(v141 + 8))(v144, v140);
    return 2;
  }

  else
  {
    v7 = v146;
    sub_1B98DDDB0(v158, v153);
    sub_1B98DDEA4(v153, v151);
    v92 = *(v151 + *(v159 + 48));
    v165 = v92 & 1;
    sub_1B983A3AC(v151);
    v8 = sub_1B98F1F44();
    (*(v141 + 16))(v7, v8, v140);
    v98 = 17;
    v100 = 7;
    v9 = swift_allocObject();
    v10 = v151;
    v11 = v9;
    v12 = v153;
    v94 = v11;
    *(v11 + 16) = v92;
    sub_1B98DDEA4(v12, v10);
    v93 = (*(v148 + 80) + 16) & ~*(v148 + 80);
    v101 = swift_allocObject();
    sub_1B98DDDB0(v151, v101 + v93);
    v112 = sub_1B98F5118();
    v113 = sub_1B98F5BD8();
    v103 = swift_allocObject();
    *(v103 + 16) = 2;
    v104 = swift_allocObject();
    *(v104 + 16) = 4;
    v99 = 32;
    v13 = swift_allocObject();
    v14 = v94;
    v95 = v13;
    *(v13 + 16) = v119;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v95;
    v96 = v15;
    *(v15 + 16) = v120;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v96;
    v97 = v17;
    *(v17 + 16) = v121;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v97;
    v105 = v19;
    *(v19 + 16) = v122;
    *(v19 + 24) = v20;
    v106 = swift_allocObject();
    *(v106 + 16) = 32;
    v107 = swift_allocObject();
    *(v107 + 16) = 8;
    v21 = swift_allocObject();
    v22 = v101;
    v102 = v21;
    *(v21 + 16) = v123;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v102;
    v109 = v23;
    *(v23 + 16) = v124;
    *(v23 + 24) = v24;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v108 = sub_1B98F5F98();
    v110 = v25;

    v26 = v103;
    v27 = v110;
    *v110 = v125;
    v27[1] = v26;

    v28 = v104;
    v29 = v110;
    v110[2] = v126;
    v29[3] = v28;

    v30 = v105;
    v31 = v110;
    v110[4] = v127;
    v31[5] = v30;

    v32 = v106;
    v33 = v110;
    v110[6] = v128;
    v33[7] = v32;

    v34 = v107;
    v35 = v110;
    v110[8] = v129;
    v35[9] = v34;

    v36 = v109;
    v37 = v110;
    v110[10] = v130;
    v37[11] = v36;
    sub_1B9851B38();

    if (os_log_type_enabled(v112, v113))
    {
      v38 = v131;
      v84 = sub_1B98F5C28();
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v85 = sub_1B985263C(0, v83, v83);
      v86 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v88 = &v164;
      v164 = v84;
      v89 = &v163;
      v163 = v85;
      v90 = &v162;
      v162 = v86;
      v87 = 2;
      sub_1B9852690(2, &v164);
      sub_1B9852690(v87, v88);
      v160 = v125;
      v161 = v103;
      sub_1B98526A4(&v160, v88, v89, v90);
      v91 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v160 = v126;
        v161 = v104;
        sub_1B98526A4(&v160, &v164, &v163, &v162);
        v82 = 0;
        v160 = v127;
        v161 = v105;
        sub_1B98526A4(&v160, &v164, &v163, &v162);
        v81 = 0;
        v160 = v128;
        v161 = v106;
        sub_1B98526A4(&v160, &v164, &v163, &v162);
        v80 = 0;
        v160 = v129;
        v161 = v107;
        sub_1B98526A4(&v160, &v164, &v163, &v162);
        v79 = 0;
        v160 = v130;
        v161 = v109;
        sub_1B98526A4(&v160, &v164, &v163, &v162);
        _os_log_impl(&dword_1B982F000, v112, v113, "Got isBlocked: %{BOOL,public}d for cached handle %s", v84, 0x12u);
        sub_1B985281C(v85, 0, v83);
        sub_1B985281C(v86, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v112);
    (*(v141 + 8))(v146, v140);
    sub_1B98DE178(v153);
    return v92 & 1;
  }
}

uint64_t sub_1B98D6C24(uint64_t a1)
{
  v5 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EB0, &qword_1B98FCAD0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v9 = &v4 - v4;
  v8 = sub_1B98F5078();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  (*(v6 + 16))(v9, v5);
  (*(v6 + 56))(v9, 0, 1, v8);
  v11 = sub_1B98F1B88(v9, v8);
  v10 = v2;
  sub_1B98E0B64(v9);
  return v11;
}

uint64_t sub_1B98D6D54(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B98DDEA4(v1, &v4 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B98DDC10(v7);
  return v9;
}

uint64_t sub_1B98D6E58(uint64_t a1)
{
  v172 = a1;
  v146 = 0;
  v134 = sub_1B98DE2C0;
  v135 = sub_1B98DE34C;
  v136 = sub_1B98DE358;
  v137 = sub_1B98DE364;
  v138 = sub_1B98DE2CC;
  v139 = sub_1B98DE3F4;
  v140 = sub_1B98DE33C;
  v141 = sub_1B98DE344;
  v142 = sub_1B98DE370;
  v143 = sub_1B98DE3E4;
  v144 = sub_1B98DE3EC;
  v145 = sub_1B98DE400;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v175 = __b;
  v177 = 40;
  memset(__b, 0, sizeof(__b));
  v186 = 0;
  v178 = 0;
  v154 = 0;
  v147 = sub_1B98F5138();
  v148 = *(v147 - 8);
  v149 = v147 - 8;
  v150 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v151 = &v41 - v150;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0);
  v152 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v153 = &v41 - v152;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v157 = *(v155 - 8);
  v156 = v155 - 8;
  v158 = v157;
  v159 = *(v157 + 64);
  v160 = (v159 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v154);
  v161 = &v41 - v160;
  v162 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v163 = &v41 - v162;
  v192 = &v41 - v162;
  v173 = sub_1B98F5078();
  v164 = *(v173 - 8);
  v165 = v173 - 8;
  v166 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v173);
  v167 = &v41 - v166;
  v168 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v41 - v166);
  v169 = &v41 - v168;
  v191 = &v41 - v168;
  v170 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EB0, &qword_1B98FCAD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v172);
  v171 = &v41 - v170;
  v190 = v6;
  v189 = v1;
  v174 = sub_1B98C982C();
  v188 = sub_1B98F5448();
  sub_1B98F54D8();
  v176 = &v193;
  sub_1B98F5A58();
  memcpy(v175, v176, v177);
  for (i = v178; ; i = v46)
  {
    v132 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EB8, &qword_1B98FCAD8);
    sub_1B98F5AB8();
    if ((*(v164 + 48))(v171, 1, v173) == 1)
    {
      break;
    }

    (*(v164 + 32))(v169, v171, v173);
    v131 = *(v133 + 40);

    sub_1B98F376C(v169);

    if ((*(v157 + 48))(v153, 1, v155) == 1)
    {
      sub_1B98DDC10(v153);
      (*(v164 + 8))(v169, v173);
      v46 = v132;
    }

    else
    {
      v7 = v151;
      sub_1B98DDDB0(v153, v163);
      sub_1B98DDEA4(v163, v161);
      v109 = *(v161 + *(v155 + 48));
      v186 = v109 & 1;
      sub_1B983A3AC(v161);
      v8 = sub_1B98F1F44();
      (*(v148 + 16))(v7, v8, v147);
      v115 = 17;
      v117 = 7;
      v9 = swift_allocObject();
      v10 = v161;
      v11 = v9;
      v12 = v163;
      v111 = v11;
      *(v11 + 16) = v109;
      sub_1B98DDEA4(v12, v10);
      v110 = (*(v158 + 80) + 16) & ~*(v158 + 80);
      v118 = swift_allocObject();
      sub_1B98DDDB0(v161, v118 + v110);
      v129 = sub_1B98F5118();
      v130 = sub_1B98F5BD8();
      v120 = swift_allocObject();
      *(v120 + 16) = 2;
      v121 = swift_allocObject();
      *(v121 + 16) = 4;
      v116 = 32;
      v13 = swift_allocObject();
      v14 = v111;
      v112 = v13;
      *(v13 + 16) = v134;
      *(v13 + 24) = v14;
      v15 = swift_allocObject();
      v16 = v112;
      v113 = v15;
      *(v15 + 16) = v135;
      *(v15 + 24) = v16;
      v17 = swift_allocObject();
      v18 = v113;
      v114 = v17;
      *(v17 + 16) = v136;
      *(v17 + 24) = v18;
      v19 = swift_allocObject();
      v20 = v114;
      v122 = v19;
      *(v19 + 16) = v137;
      *(v19 + 24) = v20;
      v123 = swift_allocObject();
      *(v123 + 16) = 32;
      v124 = swift_allocObject();
      *(v124 + 16) = 8;
      v21 = swift_allocObject();
      v22 = v118;
      v119 = v21;
      *(v21 + 16) = v138;
      *(v21 + 24) = v22;
      v23 = swift_allocObject();
      v24 = v119;
      v126 = v23;
      *(v23 + 16) = v139;
      *(v23 + 24) = v24;
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
      v125 = sub_1B98F5F98();
      v127 = v25;

      v26 = v120;
      v27 = v127;
      *v127 = v140;
      v27[1] = v26;

      v28 = v121;
      v29 = v127;
      v127[2] = v141;
      v29[3] = v28;

      v30 = v122;
      v31 = v127;
      v127[4] = v142;
      v31[5] = v30;

      v32 = v123;
      v33 = v127;
      v127[6] = v143;
      v33[7] = v32;

      v34 = v124;
      v35 = v127;
      v127[8] = v144;
      v35[9] = v34;

      v36 = v126;
      v37 = v127;
      v127[10] = v145;
      v37[11] = v36;
      sub_1B9851B38();

      if (os_log_type_enabled(v129, v130))
      {
        v38 = v132;
        v95 = sub_1B98F5C28();
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v96 = sub_1B985263C(0, v94, v94);
        v97 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v99 = &v184;
        v184 = v95;
        v100 = &v183;
        v183 = v96;
        v101 = &v182;
        v182 = v97;
        v98 = 2;
        sub_1B9852690(2, &v184);
        sub_1B9852690(v98, v99);
        v180 = v140;
        v181 = v120;
        sub_1B98526A4(&v180, v99, v100, v101);
        v102 = v38;
        v103 = v120;
        v104 = v121;
        v105 = v122;
        v106 = v123;
        v107 = v124;
        v108 = v126;
        if (v38)
        {
          v87 = v103;
          v88 = v104;
          v89 = v105;
          v90 = v106;
          v91 = v107;
          v92 = v108;
          v51 = v108;
          v50 = v107;
          v49 = v106;
          v48 = v105;
          v47 = v104;

          __break(1u);
        }

        else
        {
          v180 = v141;
          v181 = v121;
          sub_1B98526A4(&v180, &v184, &v183, &v182);
          v80 = 0;
          v81 = v120;
          v82 = v121;
          v83 = v122;
          v84 = v123;
          v85 = v124;
          v86 = v126;
          v180 = v142;
          v181 = v122;
          sub_1B98526A4(&v180, &v184, &v183, &v182);
          v73 = 0;
          v74 = v120;
          v75 = v121;
          v76 = v122;
          v77 = v123;
          v78 = v124;
          v79 = v126;
          v180 = v143;
          v181 = v123;
          sub_1B98526A4(&v180, &v184, &v183, &v182);
          v66 = 0;
          v67 = v120;
          v68 = v121;
          v69 = v122;
          v70 = v123;
          v71 = v124;
          v72 = v126;
          v180 = v144;
          v181 = v124;
          sub_1B98526A4(&v180, &v184, &v183, &v182);
          v59 = 0;
          v60 = v120;
          v61 = v121;
          v62 = v122;
          v63 = v123;
          v64 = v124;
          v65 = v126;
          v180 = v145;
          v181 = v126;
          sub_1B98526A4(&v180, &v184, &v183, &v182);
          v52 = 0;
          v53 = v120;
          v54 = v121;
          v55 = v122;
          v56 = v123;
          v57 = v124;
          v58 = v126;
          _os_log_impl(&dword_1B982F000, v129, v130, "Got isBlocked: %{BOOL,public}d for cached handle %s", v95, 0x12u);
          sub_1B985281C(v96, 0, v94);
          sub_1B985281C(v97, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B98F5C08();

          v93 = v52;
        }
      }

      else
      {
        v39 = v132;

        v93 = v39;
      }

      v45 = v93;
      MEMORY[0x1E69E5920](v129);
      (*(v148 + 8))(v151, v147);
      (*(v164 + 16))(v167, v169, v173);
      v44 = &v185;
      v185 = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E00, &unk_1B98FCAE0);
      sub_1B98F55C8();
      sub_1B98DE178(v163);
      (*(v164 + 8))(v169, v173);
      v46 = v45;
    }
  }

  sub_1B98DE23C(__b);
  v42 = &v188;
  v43 = v188;
  sub_1B98F54D8();
  sub_1B98CCEE4(v42);
  return v43;
}

uint64_t sub_1B98D8578(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B98DDEA4(v1, &v4 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B98DDC10(v7);
  return v9;
}

uint64_t sub_1B98D867C(unsigned int a1, uint64_t a2)
{
  v94 = a1;
  v95 = a2;
  v100 = sub_1B98D9744;
  v101 = sub_1B98DE48C;
  v103 = sub_1B98DE40C;
  v105 = sub_1B98DE4B4;
  v107 = sub_1B98DE4C0;
  v109 = sub_1B98DE4CC;
  v113 = sub_1B98DE418;
  v117 = sub_1B98DE55C;
  v119 = sub_1B98DE47C;
  v121 = sub_1B98DE484;
  v123 = sub_1B98DE498;
  v125 = sub_1B98DE4A4;
  v127 = sub_1B98DE4AC;
  v129 = sub_1B98DE4D8;
  v131 = sub_1B98DE54C;
  v133 = sub_1B98DE554;
  v136 = sub_1B98DE568;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v74 = 0;
  v85 = 0;
  v75 = sub_1B98F5078();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v56 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v81 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v85);
  v82 = &v56 - v81;
  v83 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v84 = &v56 - v83;
  v150 = &v56 - v83;
  v86 = *(type metadata accessor for BlockedHandle(v4) - 8);
  v96 = v86;
  v97 = *(v86 + 64);
  v87 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85);
  v99 = &v56 - v87;
  v93 = sub_1B98F5138();
  v91 = *(v93 - 8);
  v92 = v93 - 8;
  v89 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v94);
  v6 = &v56 - v89;
  v90 = &v56 - v89;
  v149 = v5 & 1;
  v148 = v7;
  v147 = v8;
  v9 = sub_1B98F1F44();
  (*(v91 + 16))(v6, v9, v93);
  v111 = 17;
  v115 = 7;
  v10 = swift_allocObject();
  v11 = v99;
  v12 = v10;
  v13 = v95;
  v104 = v12;
  *(v12 + 16) = v94;
  sub_1B9833334(v13, v11);
  v98 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v116 = swift_allocObject();
  sub_1B9832680(v99, v116 + v98);
  v140 = sub_1B98F5118();
  v141 = sub_1B98F5BD8();
  v120 = swift_allocObject();
  *(v120 + 16) = 34;
  v122 = swift_allocObject();
  v112 = 8;
  *(v122 + 16) = 8;
  v114 = 32;
  v14 = swift_allocObject();
  v102 = v14;
  *(v14 + 16) = v100;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v102;
  v124 = v15;
  *(v15 + 16) = v101;
  *(v15 + 24) = v16;
  v126 = swift_allocObject();
  *(v126 + 16) = 2;
  v128 = swift_allocObject();
  *(v128 + 16) = 4;
  v17 = swift_allocObject();
  v18 = v104;
  v106 = v17;
  *(v17 + 16) = v103;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v106;
  v108 = v19;
  *(v19 + 16) = v105;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v108;
  v110 = v21;
  *(v21 + 16) = v107;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v110;
  v130 = v23;
  *(v23 + 16) = v109;
  *(v23 + 24) = v24;
  v132 = swift_allocObject();
  *(v132 + 16) = 32;
  v134 = swift_allocObject();
  *(v134 + 16) = v112;
  v25 = swift_allocObject();
  v26 = v116;
  v118 = v25;
  *(v25 + 16) = v113;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v118;
  v137 = v27;
  *(v27 + 16) = v117;
  *(v27 + 24) = v28;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v135 = sub_1B98F5F98();
  v138 = v29;

  v30 = v120;
  v31 = v138;
  *v138 = v119;
  v31[1] = v30;

  v32 = v122;
  v33 = v138;
  v138[2] = v121;
  v33[3] = v32;

  v34 = v124;
  v35 = v138;
  v138[4] = v123;
  v35[5] = v34;

  v36 = v126;
  v37 = v138;
  v138[6] = v125;
  v37[7] = v36;

  v38 = v128;
  v39 = v138;
  v138[8] = v127;
  v39[9] = v38;

  v40 = v130;
  v41 = v138;
  v138[10] = v129;
  v41[11] = v40;

  v42 = v132;
  v43 = v138;
  v138[12] = v131;
  v43[13] = v42;

  v44 = v134;
  v45 = v138;
  v138[14] = v133;
  v45[15] = v44;

  v46 = v137;
  v47 = v138;
  v138[16] = v136;
  v47[17] = v46;
  sub_1B9851B38();

  if (os_log_type_enabled(v140, v141))
  {
    v48 = v74;
    v67 = sub_1B98F5C28();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v68 = sub_1B985263C(0, v66, v66);
    v69 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v70 = &v146;
    v146 = v67;
    v71 = &v145;
    v145 = v68;
    v72 = &v144;
    v144 = v69;
    sub_1B9852690(2, &v146);
    sub_1B9852690(3, v70);
    v142 = v119;
    v143 = v120;
    sub_1B98526A4(&v142, v70, v71, v72);
    v73 = v48;
    if (v48)
    {

      __break(1u);
    }

    else
    {
      v142 = v121;
      v143 = v122;
      sub_1B98526A4(&v142, &v146, &v145, &v144);
      v65 = 0;
      v142 = v123;
      v143 = v124;
      sub_1B98526A4(&v142, &v146, &v145, &v144);
      v64 = 0;
      v142 = v125;
      v143 = v126;
      sub_1B98526A4(&v142, &v146, &v145, &v144);
      v63 = 0;
      v142 = v127;
      v143 = v128;
      sub_1B98526A4(&v142, &v146, &v145, &v144);
      v62 = 0;
      v142 = v129;
      v143 = v130;
      sub_1B98526A4(&v142, &v146, &v145, &v144);
      v61 = 0;
      v142 = v131;
      v143 = v132;
      sub_1B98526A4(&v142, &v146, &v145, &v144);
      v60 = 0;
      v142 = v133;
      v143 = v134;
      sub_1B98526A4(&v142, &v146, &v145, &v144);
      v59 = 0;
      v142 = v136;
      v143 = v137;
      sub_1B98526A4(&v142, &v146, &v145, &v144);
      _os_log_impl(&dword_1B982F000, v140, v141, "%{public}s isBlocked: %{BOOL,public}d for handle %s", v67, 0x1Cu);
      sub_1B985281C(v68, 0, v66);
      sub_1B985281C(v69, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v140);
  (*(v91 + 8))(v90, v93);
  v56 = (v84 + *(v80 + 48));
  sub_1B9833334(v95, v84);
  v49 = v88;
  *v56 = v94;
  v58 = *(v49 + 40);

  v57 = (v82 + *(v80 + 48));
  sub_1B9833334(v84, v99);
  v50 = sub_1B9832680(v99, v82);
  v51 = v95;
  v52 = v76;
  v53 = v75;
  v54 = v79;
  *v57 = v94;
  (*(v52 + 16))(v54, v51, v53, v50);
  sub_1B98F38B8(v82, v79);
  (*(v76 + 8))(v79, v75);
  sub_1B98DE178(v82);

  return sub_1B98DE178(v84);
}

uint64_t sub_1B98D977C(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

void *sub_1B98D9874(uint64_t a1)
{
  v61 = a1;
  v62 = sub_1B98DE574;
  v64 = sub_1B98DA36C;
  v65 = sub_1B98DE5F4;
  v69 = sub_1B98DE57C;
  v73 = sub_1B98DE61C;
  v75 = sub_1B98DE5E4;
  v77 = sub_1B98DE5EC;
  v79 = sub_1B98DE600;
  v81 = sub_1B98DE60C;
  v83 = sub_1B98DE614;
  v86 = sub_1B98DE628;
  v53 = sub_1B98DA3D0;
  v101 = 0;
  v100 = 0;
  v54 = 0;
  v97 = 0;
  v60 = sub_1B98F5138();
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v56 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v31 - v56;
  v57 = v31 - v56;
  v101 = MEMORY[0x1EEE9AC00](v61);
  v100 = v2;
  v3 = sub_1B98F1F44();
  (*(v58 + 16))(v1, v3, v60);
  sub_1B98F54D8();
  v71 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = v61;

  v70 = 32;
  v4 = swift_allocObject();
  v5 = v63;
  v72 = v4;
  *(v4 + 16) = v62;
  *(v4 + 24) = v5;

  v90 = sub_1B98F5118();
  v91 = sub_1B98F5BD8();
  v67 = 17;
  v76 = swift_allocObject();
  *(v76 + 16) = 34;
  v78 = swift_allocObject();
  v68 = 8;
  *(v78 + 16) = 8;
  v6 = swift_allocObject();
  v66 = v6;
  *(v6 + 16) = v64;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v66;
  v80 = v7;
  *(v7 + 16) = v65;
  *(v7 + 24) = v8;
  v82 = swift_allocObject();
  *(v82 + 16) = 32;
  v84 = swift_allocObject();
  *(v84 + 16) = v68;
  v9 = swift_allocObject();
  v10 = v72;
  v74 = v9;
  *(v9 + 16) = v69;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v74;
  v87 = v11;
  *(v11 + 16) = v73;
  *(v11 + 24) = v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v85 = sub_1B98F5F98();
  v88 = v13;

  v14 = v76;
  v15 = v88;
  *v88 = v75;
  v15[1] = v14;

  v16 = v78;
  v17 = v88;
  v88[2] = v77;
  v17[3] = v16;

  v18 = v80;
  v19 = v88;
  v88[4] = v79;
  v19[5] = v18;

  v20 = v82;
  v21 = v88;
  v88[6] = v81;
  v21[7] = v20;

  v22 = v84;
  v23 = v88;
  v88[8] = v83;
  v23[9] = v22;

  v24 = v87;
  v25 = v88;
  v88[10] = v86;
  v25[11] = v24;
  sub_1B9851B38();

  if (os_log_type_enabled(v90, v91))
  {
    v26 = v54;
    v45 = sub_1B98F5C28();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v46 = sub_1B985263C(0, v44, v44);
    v47 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v49 = &v96;
    v96 = v45;
    v50 = &v95;
    v95 = v46;
    v51 = &v94;
    v94 = v47;
    v48 = 2;
    sub_1B9852690(2, &v96);
    sub_1B9852690(v48, v49);
    v92 = v75;
    v93 = v76;
    sub_1B98526A4(&v92, v49, v50, v51);
    v52 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v92 = v77;
      v93 = v78;
      sub_1B98526A4(&v92, &v96, &v95, &v94);
      v42 = 0;
      v92 = v79;
      v93 = v80;
      sub_1B98526A4(&v92, &v96, &v95, &v94);
      v41 = 0;
      v92 = v81;
      v93 = v82;
      sub_1B98526A4(&v92, &v96, &v95, &v94);
      v40 = 0;
      v92 = v83;
      v93 = v84;
      sub_1B98526A4(&v92, &v96, &v95, &v94);
      v39 = 0;
      v92 = v86;
      v93 = v87;
      sub_1B98526A4(&v92, &v96, &v95, &v94);
      v38 = 0;
      _os_log_impl(&dword_1B982F000, v90, v91, "%{public}s blocklist: %s", v45, 0x16u);
      sub_1B985281C(v46, 0, v44);
      sub_1B985281C(v47, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v43 = v38;
    }
  }

  else
  {
    v27 = v54;

    v43 = v27;
  }

  v28 = v43;
  MEMORY[0x1E69E5920](v90);
  (*(v58 + 8))(v57, v60);
  v98[1] = v61;
  v34 = sub_1B98F5078();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  sub_1B98C982C();
  v29 = sub_1B98F5448();
  v37 = v98;
  v98[0] = v29;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EC0, &unk_1B98FCAF0);
  sub_1B98DE634();
  result = sub_1B98F57B8();
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v32 = v99;
    v97 = v99;
    v31[1] = *(v55 + 40);

    sub_1B98F3A04(v32);
  }

  return result;
}

uint64_t sub_1B98DA39C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98DA3D0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0);
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v12 - v12;
  v15 = 0;
  v25 = sub_1B98F5078();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v13 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v12 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v14 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v12 - v14;
  v38 = &v12 - v14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF8, &qword_1B98FC9A0);
  v16 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v12 - v16;
  v18 = (*(*(type metadata accessor for BlockedHandle(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v17);
  v33 = &v12 - v18;
  v37 = &v12 - v18;
  v36 = a1;
  v35 = v5;
  sub_1B98E09DC(v5, v6);
  v22 = *(v20 + *(v19 + 48));
  sub_1B9832680(v20, v33);
  v28 = 1;
  v34 = v22 & 1;
  v21 = *(v29 + 48);
  sub_1B9833334(v33, v32);
  v7 = v23;
  v8 = v25;
  v9 = v33;
  v10 = v30;
  *(v32 + v21) = v22;
  (*(v7 + 16))(v10, v9, v8);
  sub_1B98DDEA4(v32, v31);
  (*(v26 + 56))(v31, 0, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EC0, &unk_1B98FCAF0);
  sub_1B98F55C8();
  sub_1B98DE178(v32);
  return sub_1B983A3AC(v33);
}

uint64_t sub_1B98DA73C()
{
  v4 = v0;

  v2 = sub_1B98F3B54();

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EC0, &unk_1B98FCAF0);
  type metadata accessor for BlockedHandle(0);
  sub_1B98DE6E8();
  sub_1B98F5788();
  sub_1B98DE770(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
  sub_1B9853574();
  sub_1B9871820();
  return sub_1B98F5AE8();
}

uint64_t sub_1B98DA890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v13 = a4;
  v14 = a1;
  v15 = a2;
  v19 = a3;
  v25 = 0;
  v24 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v17 = *(*(v21 - 8) + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v12 - v16;
  v18 = v16;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v20 = &v12 - v18;
  v25 = &v12 - v18;
  v24 = v6;
  sub_1B9833334(v5, &v12 - v18);
  v7 = v22;
  v8 = v20;
  *(v20 + *(v21 + 48)) = v19;
  sub_1B98DDEA4(v8, v7);
  v23 = *(v22 + *(v21 + 48));
  sub_1B983A3AC(v22);
  if (v23)
  {
    sub_1B98DDEA4(v20, v22);
    sub_1B9832680(v22, v13);
    v9 = type metadata accessor for BlockedHandle(0);
    (*(*(v9 - 8) + 56))(v13, 0, 1);
  }

  else
  {
    v10 = type metadata accessor for BlockedHandle(0);
    (*(*(v10 - 8) + 56))(v13, 1);
  }

  return sub_1B98DE178(v20);
}

uint64_t sub_1B98DAA6C(uint64_t a1, uint64_t (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FD0, &unk_1B98FD360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  return a2();
}

uint64_t sub_1B98DAB08(void *a1)
{
  v140 = a1;
  v115 = sub_1B98DE7CC;
  v116 = sub_1B98DE7F0;
  v117 = sub_1B98DE7FC;
  v118 = sub_1B98DE808;
  v119 = sub_1B98DE7D8;
  v120 = sub_1B98DE898;
  v121 = sub_1B98DE7E0;
  v122 = sub_1B98DE7E8;
  v123 = sub_1B98DE814;
  v124 = sub_1B98DE888;
  v125 = sub_1B98DE890;
  v126 = sub_1B98DE8A4;
  v127 = sub_1B98DE79C;
  v128 = sub_1B98DE7B4;
  v129 = sub_1B98DE7A4;
  v130 = sub_1B98DE7AC;
  v131 = sub_1B98DE7C0;
  v164 = 0;
  v163 = 0;
  v132 = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v152 = 0;
  v133 = sub_1B98F5138();
  v134 = *(v133 - 8);
  v135 = v133 - 8;
  v136 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v140);
  v137 = v52 - v136;
  v138 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v139 = v52 - v138;
  v164 = v4;
  v163 = v1;
  v143 = *(v1 + 32);

  v142 = [v140 identifier];
  v5 = sub_1B98F5658();
  v141 = v161;
  v161[0] = v5;
  v161[1] = v6;
  sub_1B98F376C(v161);
  sub_1B9868BFC(v141);
  MEMORY[0x1E69E5920](v142);

  v144 = v161[2];
  v145 = v161[3];
  v146 = v162;
  if (v162 == 2)
  {
    v37 = v137;
    v38 = sub_1B98F1F44();
    (*(v134 + 16))(v37, v38, v133);
    MEMORY[0x1E69E5928](v140);
    v63 = 7;
    v64 = swift_allocObject();
    *(v64 + 16) = v140;
    v72 = sub_1B98F5118();
    v73 = sub_1B98F5BD8();
    v61 = 17;
    v66 = swift_allocObject();
    *(v66 + 16) = 34;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v62 = 32;
    v39 = swift_allocObject();
    v40 = v64;
    v65 = v39;
    *(v39 + 16) = v127;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v65;
    v69 = v41;
    *(v41 + 16) = v128;
    *(v41 + 24) = v42;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v68 = sub_1B98F5F98();
    v70 = v43;

    v44 = v66;
    v45 = v70;
    *v70 = v129;
    v45[1] = v44;

    v46 = v67;
    v47 = v70;
    v70[2] = v130;
    v47[3] = v46;

    v48 = v69;
    v49 = v70;
    v70[4] = v131;
    v49[5] = v48;
    sub_1B9851B38();

    if (os_log_type_enabled(v72, v73))
    {
      v50 = v132;
      v54 = sub_1B98F5C28();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v55 = sub_1B985263C(0, v53, v53);
      v56 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v57 = &v160;
      v160 = v54;
      v58 = &v159;
      v159 = v55;
      v59 = &v158;
      v158 = v56;
      sub_1B9852690(2, &v160);
      sub_1B9852690(1, v57);
      v156 = v129;
      v157 = v66;
      sub_1B98526A4(&v156, v57, v58, v59);
      v60 = v50;
      if (v50)
      {

        __break(1u);
      }

      else
      {
        v156 = v130;
        v157 = v67;
        sub_1B98526A4(&v156, &v160, &v159, &v158);
        v52[1] = 0;
        v156 = v131;
        v157 = v69;
        sub_1B98526A4(&v156, &v160, &v159, &v158);
        _os_log_impl(&dword_1B982F000, v72, v73, "No cached value found for handle %{public}s", v54, 0xCu);
        sub_1B985281C(v55, 0, v53);
        sub_1B985281C(v56, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v72);
    (*(v134 + 8))(v137, v133);
    return 2;
  }

  else
  {
    v112 = v144;
    v113 = v145;
    v114 = v146;
    v7 = v139;
    v91 = v146;
    v89 = v145;
    v88 = v144;
    v153 = v144;
    v154 = v145;
    v90 = 1;
    v155 = v146 & 1;
    sub_1B98D1598(v144, v145);
    v152 = v91 & 1;
    sub_1B98371D0(v88, v89);
    v8 = sub_1B98F1F44();
    (*(v134 + 16))(v7, v8, v133);
    v96 = 17;
    v98 = 7;
    v9 = swift_allocObject();
    v10 = v140;
    v92 = v9;
    *(v9 + 16) = v91 & v90;
    MEMORY[0x1E69E5928](v10);
    v99 = swift_allocObject();
    *(v99 + 16) = v140;
    v110 = sub_1B98F5118();
    v111 = sub_1B98F5BD8();
    v101 = swift_allocObject();
    *(v101 + 16) = 2;
    v102 = swift_allocObject();
    *(v102 + 16) = 4;
    v97 = 32;
    v11 = swift_allocObject();
    v12 = v92;
    v93 = v11;
    *(v11 + 16) = v115;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v93;
    v94 = v13;
    *(v13 + 16) = v116;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v94;
    v95 = v15;
    *(v15 + 16) = v117;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v95;
    v103 = v17;
    *(v17 + 16) = v118;
    *(v17 + 24) = v18;
    v104 = swift_allocObject();
    *(v104 + 16) = 32;
    v105 = swift_allocObject();
    *(v105 + 16) = 8;
    v19 = swift_allocObject();
    v20 = v99;
    v100 = v19;
    *(v19 + 16) = v119;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v100;
    v107 = v21;
    *(v21 + 16) = v120;
    *(v21 + 24) = v22;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v106 = sub_1B98F5F98();
    v108 = v23;

    v24 = v101;
    v25 = v108;
    *v108 = v121;
    v25[1] = v24;

    v26 = v102;
    v27 = v108;
    v108[2] = v122;
    v27[3] = v26;

    v28 = v103;
    v29 = v108;
    v108[4] = v123;
    v29[5] = v28;

    v30 = v104;
    v31 = v108;
    v108[6] = v124;
    v31[7] = v30;

    v32 = v105;
    v33 = v108;
    v108[8] = v125;
    v33[9] = v32;

    v34 = v107;
    v35 = v108;
    v108[10] = v126;
    v35[11] = v34;
    sub_1B9851B38();

    if (os_log_type_enabled(v110, v111))
    {
      v36 = v132;
      v80 = sub_1B98F5C28();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v81 = sub_1B985263C(0, v79, v79);
      v82 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v84 = &v151;
      v151 = v80;
      v85 = &v150;
      v150 = v81;
      v86 = &v149;
      v149 = v82;
      v83 = 2;
      sub_1B9852690(2, &v151);
      sub_1B9852690(v83, v84);
      v147 = v121;
      v148 = v101;
      sub_1B98526A4(&v147, v84, v85, v86);
      v87 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v147 = v122;
        v148 = v102;
        sub_1B98526A4(&v147, &v151, &v150, &v149);
        v78 = 0;
        v147 = v123;
        v148 = v103;
        sub_1B98526A4(&v147, &v151, &v150, &v149);
        v77 = 0;
        v147 = v124;
        v148 = v104;
        sub_1B98526A4(&v147, &v151, &v150, &v149);
        v76 = 0;
        v147 = v125;
        v148 = v105;
        sub_1B98526A4(&v147, &v151, &v150, &v149);
        v75 = 0;
        v147 = v126;
        v148 = v107;
        sub_1B98526A4(&v147, &v151, &v150, &v149);
        _os_log_impl(&dword_1B982F000, v110, v111, "Got isBlocked: %{BOOL,public}d for cached contact with identifier %s", v80, 0x12u);
        sub_1B985281C(v81, 0, v79);
        sub_1B985281C(v82, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v110);
    (*(v134 + 8))(v139, v133);
    sub_1B98371D0(v88, v89);
    return v91 & 1;
  }
}

uint64_t sub_1B98DBE2C(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1B98F5658();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B98DBE90(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1B98F5658();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B98DBEEC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v68 = a1;
  v69 = a2;
  v70 = a3;
  v60 = a4;
  v61 = a5;
  v71 = sub_1B98DCE28;
  v72 = sub_1B98DE8D8;
  v74 = sub_1B98DE8B0;
  v76 = sub_1B98DE900;
  v78 = sub_1B98DE90C;
  v80 = sub_1B98DE918;
  v85 = sub_1B98DE8BC;
  v89 = sub_1B98DE9A8;
  v91 = sub_1B98DE8C8;
  v93 = sub_1B98DE8D0;
  v95 = sub_1B98DE8E4;
  v97 = sub_1B98DE8F0;
  v99 = sub_1B98DE8F8;
  v101 = sub_1B98DE924;
  v103 = sub_1B98DE998;
  v105 = sub_1B98DE9A0;
  v108 = sub_1B98DE9B4;
  v130 = 0;
  v128 = 0;
  v129 = 0;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v59 = 0;
  v67 = sub_1B98F5138();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v63 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v50 - v63;
  v64 = v50 - v63;
  v130 = MEMORY[0x1EEE9AC00](v68) & 1;
  v128 = v6;
  v129 = v7;
  v126 = v8;
  v127 = v9;
  v125 = v10;
  v11 = sub_1B98F1F44();
  (*(v65 + 16))(v5, v11, v67);
  v83 = 17;
  v87 = 7;
  v75 = swift_allocObject();
  *(v75 + 16) = v68;
  sub_1B98F54D8();
  v86 = 32;
  v12 = swift_allocObject();
  v13 = v70;
  v88 = v12;
  *(v12 + 16) = v69;
  *(v12 + 24) = v13;
  v112 = sub_1B98F5118();
  v113 = sub_1B98F5BD8();
  v92 = swift_allocObject();
  v82 = 34;
  *(v92 + 16) = 34;
  v94 = swift_allocObject();
  v84 = 8;
  *(v94 + 16) = 8;
  v14 = swift_allocObject();
  v73 = v14;
  *(v14 + 16) = v71;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v73;
  v96 = v15;
  *(v15 + 16) = v72;
  *(v15 + 24) = v16;
  v98 = swift_allocObject();
  *(v98 + 16) = 2;
  v100 = swift_allocObject();
  *(v100 + 16) = 4;
  v17 = swift_allocObject();
  v18 = v75;
  v77 = v17;
  *(v17 + 16) = v74;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v77;
  v79 = v19;
  *(v19 + 16) = v76;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v79;
  v81 = v21;
  *(v21 + 16) = v78;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v81;
  v102 = v23;
  *(v23 + 16) = v80;
  *(v23 + 24) = v24;
  v104 = swift_allocObject();
  *(v104 + 16) = v82;
  v106 = swift_allocObject();
  *(v106 + 16) = v84;
  v25 = swift_allocObject();
  v26 = v88;
  v90 = v25;
  *(v25 + 16) = v85;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v90;
  v109 = v27;
  *(v27 + 16) = v89;
  *(v27 + 24) = v28;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v107 = sub_1B98F5F98();
  v110 = v29;

  v30 = v92;
  v31 = v110;
  *v110 = v91;
  v31[1] = v30;

  v32 = v94;
  v33 = v110;
  v110[2] = v93;
  v33[3] = v32;

  v34 = v96;
  v35 = v110;
  v110[4] = v95;
  v35[5] = v34;

  v36 = v98;
  v37 = v110;
  v110[6] = v97;
  v37[7] = v36;

  v38 = v100;
  v39 = v110;
  v110[8] = v99;
  v39[9] = v38;

  v40 = v102;
  v41 = v110;
  v110[10] = v101;
  v41[11] = v40;

  v42 = v104;
  v43 = v110;
  v110[12] = v103;
  v43[13] = v42;

  v44 = v106;
  v45 = v110;
  v110[14] = v105;
  v45[15] = v44;

  v46 = v109;
  v47 = v110;
  v110[16] = v108;
  v47[17] = v46;
  sub_1B9851B38();

  if (os_log_type_enabled(v112, v113))
  {
    v48 = v59;
    v52 = sub_1B98F5C28();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v53 = sub_1B985263C(0, v51, v51);
    v54 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v55 = &v118;
    v118 = v52;
    v56 = &v117;
    v117 = v53;
    v57 = &v116;
    v116 = v54;
    sub_1B9852690(2, &v118);
    sub_1B9852690(3, v55);
    v114 = v91;
    v115 = v92;
    sub_1B98526A4(&v114, v55, v56, v57);
    v58 = v48;
    if (v48)
    {

      __break(1u);
    }

    else
    {
      v114 = v93;
      v115 = v94;
      sub_1B98526A4(&v114, &v118, &v117, &v116);
      v50[8] = 0;
      v114 = v95;
      v115 = v96;
      sub_1B98526A4(&v114, &v118, &v117, &v116);
      v50[7] = 0;
      v114 = v97;
      v115 = v98;
      sub_1B98526A4(&v114, &v118, &v117, &v116);
      v50[6] = 0;
      v114 = v99;
      v115 = v100;
      sub_1B98526A4(&v114, &v118, &v117, &v116);
      v50[5] = 0;
      v114 = v101;
      v115 = v102;
      sub_1B98526A4(&v114, &v118, &v117, &v116);
      v50[4] = 0;
      v114 = v103;
      v115 = v104;
      sub_1B98526A4(&v114, &v118, &v117, &v116);
      v50[3] = 0;
      v114 = v105;
      v115 = v106;
      sub_1B98526A4(&v114, &v118, &v117, &v116);
      v50[2] = 0;
      v114 = v108;
      v115 = v109;
      sub_1B98526A4(&v114, &v118, &v117, &v116);
      _os_log_impl(&dword_1B982F000, v112, v113, "%{public}s isBlocked: %{BOOL,public}d for contact with identifier %{public}s", v52, 0x1Cu);
      sub_1B985281C(v53, 0, v51);
      sub_1B985281C(v54, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v112);
  (*(v65 + 8))(v64, v67);
  sub_1B98D1598(v60, v61);
  v122 = v60;
  v123 = v61;
  v124 = v68;
  v50[1] = *(v62 + 32);

  sub_1B98D1598(v60, v61);
  v50[0] = v120;
  v120[0] = v60;
  v120[1] = v61;
  v121 = v68;
  v119[0] = v69;
  v119[1] = v70;
  sub_1B98F38B8(v120, v119);
  sub_1B98DE9C0(v50[0]);

  return sub_1B98371D0(v60, v61);
}

uint64_t sub_1B98DCE94(unsigned int a1, void *a2)
{
  v60 = a1;
  v52 = a2;
  v3 = v2;
  v59 = v3;
  v53 = sub_1B98DE9F4;
  v54 = sub_1B98DEA0C;
  v55 = sub_1B98DE9FC;
  v56 = sub_1B98DEA04;
  v57 = sub_1B98DEA18;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v58 = 0;
  v68 = 0;
  v69 = 0;
  v61 = sub_1B98F5138();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = &v23 - v64;
  v77 = MEMORY[0x1EEE9AC00](v60) & 1;
  v76 = a2;
  v75 = v5;
  v66 = sub_1B98E93E4();
  v67 = v6;
  if ((v6 & 0xF000000000000000) == 0xF000000000000000)
  {
    v9 = v65;
    v10 = sub_1B98F1F44();
    (*(v62 + 16))(v9, v10, v61);
    MEMORY[0x1E69E5928](v52);
    v34 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v52;
    v43 = sub_1B98F5118();
    v44 = sub_1B98F5BC8();
    v32 = 17;
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v33 = 32;
    v11 = swift_allocObject();
    v12 = v35;
    v36 = v11;
    *(v11 + 16) = v53;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v36;
    v40 = v13;
    *(v13 + 16) = v54;
    *(v13 + 24) = v14;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v39 = sub_1B98F5F98();
    v41 = v15;

    v16 = v37;
    v17 = v41;
    *v41 = v55;
    v17[1] = v16;

    v18 = v38;
    v19 = v41;
    v41[2] = v56;
    v19[3] = v18;

    v20 = v40;
    v21 = v41;
    v41[4] = v57;
    v21[5] = v20;
    sub_1B9851B38();

    if (os_log_type_enabled(v43, v44))
    {
      v22 = v58;
      v25 = sub_1B98F5C28();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v26 = sub_1B985263C(0, v24, v24);
      v27 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v28 = &v74;
      v74 = v25;
      v29 = &v73;
      v73 = v26;
      v30 = &v72;
      v72 = v27;
      sub_1B9852690(2, &v74);
      sub_1B9852690(1, v28);
      v70 = v55;
      v71 = v37;
      sub_1B98526A4(&v70, v28, v29, v30);
      v31 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v70 = v56;
        v71 = v38;
        sub_1B98526A4(&v70, &v74, &v73, &v72);
        v23 = 0;
        v70 = v57;
        v71 = v40;
        sub_1B98526A4(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_1B982F000, v43, v44, "Failed to unarchive data for contact with identifier: %s", v25, 0xCu);
        sub_1B985281C(v26, 0, v24);
        sub_1B985281C(v27, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v43);
    return (*(v62 + 8))(v65, v61);
  }

  else
  {
    v50 = v66;
    v51 = v67;
    v49 = v67;
    v48 = v66;
    v68 = v66;
    v69 = v67;
    v47 = [v52 identifier];
    v45 = sub_1B98F5658();
    v46 = v7;
    sub_1B98DBEEC(v60 & 1, v45, v7, v48, v49);

    MEMORY[0x1E69E5920](v47);
    return sub_1B98371D0(v48, v49);
  }
}

uint64_t sub_1B98DD630(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1B98F5658();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B98DD68C()
{
  v5 = v0;

  v3 = sub_1B98F3B54();

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5ED8, &qword_1B98FCB00);
  sub_1B9836338();
  sub_1B98DEA50();
  v2 = sub_1B98F5788();
  sub_1B98DEAD8(&v4);
  return v2;
}

uint64_t sub_1B98DD798(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  sub_1B98D1598(a3, a4);
  sub_1B98371D0(a3, a4);
  if ((a5 & 1) != 0 && (sub_1B9836338(), (v7 = sub_1B98E8C10(a3, a4)) != 0))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B98DD878@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32) & 1);
  *a3 = result;
  return result;
}

uint64_t sub_1B98DD8DC()
{
  v0 = sub_1B98D4A78();
  LOWORD(v2) = v0;
  BYTE2(v2) = BYTE2(v0);
  return v2;
}

void sub_1B98DD91C(int a1)
{
  LOWORD(v1) = a1;
  BYTE2(v1) = BYTE2(a1);
  sub_1B98D4B7C(v1);
}

void (*sub_1B98DD95C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 11820);
  *a1 = v2;
  v2[4] = sub_1B98D4CE0(v2);
  return sub_1B98DD9CC;
}

void sub_1B98DD9CC(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_1B98DDB60(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5600, &qword_1B98FB540);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E90, &unk_1B98FCAA8);
  (*(*(v2 - 8) + 8))(a1 + 4);
  return a1;
}

uint64_t sub_1B98DDC10(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_1B98F5078();
    (*(*(v2 - 8) + 8))(a1);
    type metadata accessor for BlockedHandle(0);
  }

  return a1;
}

uint64_t sub_1B98DDD24()
{
  v1 = *(sub_1B98F5078() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98D6C24(v2);
}

uint64_t sub_1B98DDDB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for BlockedHandle(0);
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  *(a2 + v3[8]) = *(a1 + v3[8]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  result = a2;
  *(a2 + *(v4 + 48)) = *(a1 + *(v4 + 48));
  return result;
}

uint64_t sub_1B98DDEA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = type metadata accessor for BlockedHandle(0);
  v3 = (a1 + v13[5]);
  v7 = (a2 + v13[5]);
  *v7 = *v3;
  v8 = v3[1];
  sub_1B98F54D8();
  v7[1] = v8;
  v9 = v13[6];
  v10 = *(a1 + v9);
  sub_1B98F54D8();
  *(a2 + v9) = v10;
  v11 = v13[7];
  v12 = *(a1 + v11);
  sub_1B98F54D8();
  *(a2 + v11) = v12;
  v4 = v13[8];
  v14 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v15 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  *(v14 + 8) = v15;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  result = a2;
  *(a2 + *(v5 + 48)) = *(a1 + *(v5 + 48));
  return result;
}

uint64_t sub_1B98DE038()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98D6D54(v2);
}

uint64_t sub_1B98DE0DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B98DE178(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for BlockedHandle(0);

  return a1;
}

uint64_t sub_1B98DE2CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98D8578(v2);
}

uint64_t sub_1B98DE370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B98DE418()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98D977C(v2);
}

uint64_t sub_1B98DE4D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B98DE57C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
  v1 = sub_1B98D0B58();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98DE634()
{
  v2 = qword_1EBBD5EC8;
  if (!qword_1EBBD5EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5458, &qword_1B98FB070);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5EC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98DE6E8()
{
  v2 = qword_1EBBD5ED0;
  if (!qword_1EBBD5ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5EC0, &unk_1B98FCAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5ED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98DE814(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B98DE924(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B98DEA50()
{
  v2 = qword_1EBBD5EE0;
  if (!qword_1EBBD5EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5ED8, &qword_1B98FCB00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5EE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_memcpy3_1(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 2) = *(a2 + 2);
  return result;
}

uint64_t sub_1B98DEB18(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 16776961) >> 24) + 1;
    v9 = 1;
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v9 = v2;
    }

    if (v9 == 1)
    {
      v7 = a1[3];
    }

    else
    {
      v7 = v9 == 2 ? *(a1 + 3) : *(a1 + 3);
    }

    if (v7)
    {
      v6 = ((*a1 | (a1[2] << 16)) & 0xFFFFFF | ((v7 - 1) << 24)) + 254;
    }

    else
    {
LABEL_15:
      v4 = a1[1];
      v5 = -1;
      if ((v4 & 0xFFFFFFFE) != 0)
      {
        v5 = v4 & 1 | ((v4 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v6 = v5;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_1B98DECC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 16776961) >> 24) + 1;
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
    v4 = ((a2 - 255) >> 24) + 1;
    *result = a2 - 255;
    *(result + 2) = ((a2 - 255) & 0xFFFFFF) >> 16;
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 3) = v4;
      }

      else if (v7 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 3) = 0;
      }

      else if (v7 == 2)
      {
        *(result + 3) = 0;
      }

      else
      {
        *(result + 3) = 0;
      }
    }

    if (a2)
    {
      *(result + 1) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t sub_1B98DEEF8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v9 = ((a2 + 2) >> 8) + 1;
    v10 = 1;
    if (v9 >= 0x100)
    {
      if (v9 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v10 = v2;
    }

    if (v10 == 1)
    {
      v8 = a1[1];
    }

    else
    {
      v8 = v10 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v8)
    {
      v7 = (*a1 | ((v8 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v5 = *a1;
      v6 = -1;
      if ((v5 & 0xFFFFFFFE) != 0)
      {
        v6 = v5 & 1 | ((v5 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v3 = v6 - 1;
      if (v6 - 1 < 0)
      {
        v3 = -1;
      }

      v7 = v3;
    }
  }

  else
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_BYTE *sub_1B98DF09C(_BYTE *result, unsigned int a2, unsigned int a3)
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
      *result = a2 & 1 | (2 * ((a2 >> 1) + 1));
    }
  }

  return result;
}

uint64_t sub_1B98DF360(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B98DF4C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B98DF70C(unsigned __int8 *a1, int a2)
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

_BYTE *sub_1B98DF85C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B98DFA48(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B98DFBB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B98DFDD4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  LOWORD(v4) = v2 & 0x1FF;
  BYTE2(v4) = BYTE2(v2) & 1;
  return v4;
}

uint64_t sub_1B98DFE38(int a1, uint64_t a2, uint64_t a3)
{
  LOWORD(v4) = a1;
  BYTE2(v4) = BYTE2(a1);
  return (*(a3 + 16))(v4, a2);
}

unint64_t sub_1B98E003C()
{
  v2 = qword_1EBBD5EF0;
  if (!qword_1EBBD5EF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5EF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E00D0()
{
  v2 = qword_1EBBD5EF8;
  if (!qword_1EBBD5EF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0164()
{
  v2 = qword_1EBBD5F00;
  if (!qword_1EBBD5F00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E01F8()
{
  v2 = qword_1EBBD5F08;
  if (!qword_1EBBD5F08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E028C()
{
  v2 = qword_1EBBD5F10;
  if (!qword_1EBBD5F10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0320()
{
  v2 = qword_1EBBD5F18;
  if (!qword_1EBBD5F18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E03B4()
{
  v2 = qword_1EBBD5F20;
  if (!qword_1EBBD5F20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0448()
{
  v2 = qword_1EBBD5F28;
  if (!qword_1EBBD5F28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E04DC()
{
  v2 = qword_1EBBD5F30;
  if (!qword_1EBBD5F30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0570()
{
  v2 = qword_1EBBD5F38;
  if (!qword_1EBBD5F38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0604()
{
  v2 = qword_1EBBD5F40;
  if (!qword_1EBBD5F40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0698()
{
  v2 = qword_1EBBD5F48;
  if (!qword_1EBBD5F48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E072C()
{
  v2 = qword_1EBBD5F50;
  if (!qword_1EBBD5F50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E07A8()
{
  v2 = qword_1EBBD5F60;
  if (!qword_1EBBD5F60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0824()
{
  v2 = qword_1EBBD5F70;
  if (!qword_1EBBD5F70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E08A0()
{
  v2 = qword_1EBBD5F98;
  if (!qword_1EBBD5F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5F90, &qword_1B98FD330);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5F98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E0928()
{
  v2 = qword_1EBBD5FA8;
  if (!qword_1EBBD5FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5FA0, &qword_1B98FD338);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5FA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E09DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = type metadata accessor for BlockedHandle(0);
  v3 = (a1 + v13[5]);
  v7 = (a2 + v13[5]);
  *v7 = *v3;
  v8 = v3[1];
  sub_1B98F54D8();
  v7[1] = v8;
  v9 = v13[6];
  v10 = *(a1 + v9);
  sub_1B98F54D8();
  *(a2 + v9) = v10;
  v11 = v13[7];
  v12 = *(a1 + v11);
  sub_1B98F54D8();
  *(a2 + v11) = v12;
  v4 = v13[8];
  v14 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v15 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  *(v14 + 8) = v15;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF8, &qword_1B98FC9A0);
  result = a2;
  *(a2 + *(v5 + 48)) = *(a1 + *(v5 + 48));
  return result;
}

uint64_t sub_1B98E0B64(uint64_t a1)
{
  v3 = sub_1B98F5078();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B98E0C0C()
{
  v2 = qword_1EDBDB240;
  if (!qword_1EDBDB240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EDBDB240);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B98E0D90()
{
  v2 = qword_1EBBD5FD8;
  if (!qword_1EBBD5FD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5FD8);
    return WitnessTable;
  }

  return v2;
}

id sub_1B98E0ED0()
{
  type metadata accessor for CommunicationTrustManager();
  result = sub_1B98E0F2C();
  qword_1EDBDB010 = result;
  return result;
}

uint64_t *sub_1B98E0F54()
{
  if (qword_1EDBDB008 != -1)
  {
    swift_once();
  }

  return &qword_1EDBDB010;
}

uint64_t static CommunicationTrustManager.shared.getter()
{
  v0 = sub_1B98E0F54();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

id sub_1B98E1068(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  sub_1B98CB8A8(a1, v7);
  sub_1B98CB914(v7, &v1[OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server]);
  v6.receiver = v9;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id sub_1B98E1130()
{
  ObjectType = swift_getObjectType();
  v6 = v0;
  v5[3] = type metadata accessor for CommunicationTrustClient();
  v5[4] = &off_1F37935B0;
  v5[0] = sub_1B984999C();
  sub_1B98CB914(v5, &v0[OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server]);
  v4.receiver = v6;
  v4.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](v3);
  return v3;
}

uint64_t CommunicationTrustManager.trustScore(for:options:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 48) = v3;
  *(v3 + 56) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 64) = 0;
  *(v3 + 56) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  *(v3 + 16) = *a2;
  *(v3 + 24) = v5 & 1;
  *(v3 + 64) = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5 & 1;
  *(v3 + 25) = 2;
  v6 = swift_task_alloc();
  *(v8 + 72) = v6;
  *v6 = *(v8 + 48);
  v6[1] = sub_1B98E1360;

  return CommunicationTrustManager.trustScore(for:countryCode:options:service:)(a1, 0, 0, (v3 + 32), (v3 + 25));
}

uint64_t sub_1B98E1360(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 48) = *v2;
  *(v6 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B98E1514, 0);
  }

  else
  {
    v3 = *(*(v6 + 48) + 8);

    return v3(a1);
  }
}

uint64_t CommunicationTrustManager.trustScore(for:countryCode:options:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  *(v6 + 168) = v5;
  *(v6 + 160) = a3;
  *(v6 + 152) = a2;
  *(v6 + 144) = a1;
  *(v6 + 104) = v6;
  *(v6 + 112) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 216) = 0;
  *(v6 + 120) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 112) = a1;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  v7 = *a4;
  *(v6 + 176) = *a4;
  v8 = *(a4 + 8);
  *(v6 + 82) = v8 & 1;
  *(v6 + 72) = v7;
  *(v6 + 80) = v8 & 1;
  v9 = *a5;
  *(v6 + 83) = *a5;
  *(v6 + 216) = v9;
  *(v6 + 120) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1B98E1634, 0);
}

uint64_t sub_1B98E1634()
{
  v19 = v0;
  v1 = *(v0 + 82);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 152);
  v5 = *(v0 + 144);
  *(v0 + 104) = v0;
  v17 = v2;
  v18 = v1 & 1;
  v16 = sub_1B98E1EBC(v5, v4, v3, &v17);
  *(v0 + 184) = v16;
  *(v0 + 84) = v6;
  *(v0 + 88) = v16;
  *(v0 + 96) = v6 & 1;
  if (v6)
  {
    v11 = *(v15 + 83);
    v10 = *(v15 + 168);
    sub_1B98F54D8();
    *(v15 + 136) = v16;
    sub_1B98CB8A8(v10 + OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server, v15 + 16);
    v12 = *(v15 + 40);
    v13 = *(v15 + 48);
    __swift_project_boxed_opaque_existential_1((v15 + 16), v12);
    *(v15 + 81) = v11;
    v14 = (*(v13 + 48) + **(v13 + 48));
    v7 = swift_task_alloc();
    *(v15 + 192) = v7;
    *v7 = *(v15 + 104);
    v7[1] = sub_1B98E1938;

    return v14(v16, v15 + 81, v12, v13);
  }

  else
  {
    *(v15 + 128) = v16;
    sub_1B98E2B7C(v16, v6 & 1);
    v9 = *(*(v15 + 104) + 8);

    return v9(v16);
  }
}

uint64_t sub_1B98E1938(uint64_t a1)
{
  v5 = *v2;
  v5[13] = *v2;
  v5[25] = a1;
  v5[26] = v1;

  if (v1)
  {
    v3 = sub_1B98E1BA0;
  }

  else
  {
    v3 = sub_1B98E1AAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0);
}

uint64_t sub_1B98E1AAC()
{
  v5 = *(v0 + 84);
  v4 = *(v0 + 184);
  *(v0 + 104) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_1B98E2B7C(v4, v5 & 1);
  v1 = *(v0 + 200);
  v2 = *(*(v0 + 104) + 8);

  return v2(v1);
}

uint64_t sub_1B98E1BA0()
{
  v4 = *(v0 + 84);
  v3 = *(v0 + 184);
  *(v0 + 104) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_1B98E2B7C(v3, v4 & 1);
  v1 = *(*(v5 + 104) + 8);

  return v1();
}

uint64_t CommunicationTrustManager.trustScoreSync(for:countryCode:options:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v34 = a1;
  v32 = a2;
  v33 = a3;
  v5 = *(a4 + 8);
  v30 = *a4;
  v31 = v5 & 1;
  v15 = *a5;
  v29 = *a5;
  v26 = v30;
  v27 = v5 & 1;
  v16 = sub_1B98E1EBC(a1, a2, a3, &v26);
  v17 = v6;
  v24 = v16;
  v25 = v6 & 1;
  if ((v6 & 1) == 0)
  {
    sub_1B98E2B7C(v16, v6 & 1);
    return v16;
  }

  sub_1B98F54D8();
  v22 = v16;
  sub_1B98CB8A8(v13 + OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server, v19);
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18 = v15;
  v12 = (*(v11 + 40))(v16, &v18, v10);
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v19);

    sub_1B98E2B7C(v16, v17 & 1);
    return v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);

  sub_1B98E2B7C(v16, v17 & 1);
  return v8;
}

uint64_t sub_1B98E1EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v115 = a1;
  v118 = a2;
  v116 = a3;
  v117 = a4;
  v96 = sub_1B98E2EC0;
  v97 = sub_1B98E588C;
  v98 = sub_1B98E5840;
  v99 = sub_1B98E5848;
  v100 = sub_1B98E5898;
  v101 = "Fatal error";
  v102 = "Unexpectedly found nil while unwrapping an Optional value";
  v103 = "CommunicationTrust/CommunicationTrustManager.swift";
  v158 = 0;
  v157 = 0;
  v155 = 0;
  v156 = 0;
  v153 = 0;
  v154 = 0;
  v152 = 0;
  v149 = 0;
  v145 = 0;
  v141 = 0;
  v140 = 0;
  v135 = 0;
  v104 = 0;
  v119 = 0;
  v105 = sub_1B98F5078();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v109 = v36 - v108;
  v110 = type metadata accessor for BlockedHandle(v5);
  v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v119);
  v112 = v36 - v111;
  v113 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v114 = v36 - v113;
  v158 = v36 - v113;
  v120 = sub_1B98F5138();
  v121 = *(v120 - 8);
  v122 = v120 - 8;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v119);
  v124 = v36 - v123;
  v157 = v8;
  v155 = v9;
  v156 = v10;
  v125 = *v11;
  v126 = *(v11 + 8);
  v153 = v125;
  v154 = v126 & 1;
  v152 = v4;
  sub_1B98E2BB0();
  v12 = sub_1B98ED20C();
  v127 = *v12;
  v128 = v12[1];
  sub_1B98F54D8();
  v150 = sub_1B98E2C14(v127, v128);
  if (v150)
  {
    v151 = v150;
  }

  else
  {
    v151 = [objc_opt_self() standardUserDefaults];
    if (v150)
    {
      sub_1B98E2C5C(&v150);
    }
  }

  v93 = v151;
  v149 = v151;
  v13 = sub_1B98ED26C();
  v91 = *v13;
  v92 = v13[1];
  sub_1B98F54D8();
  v94 = sub_1B98F5648();

  v95 = [v93 valueForKey_];
  MEMORY[0x1E69E5920](v94);
  if (v95)
  {
    v90 = v95;
    v89 = v95;
    v88 = v129;
    sub_1B98F5C68();
    sub_1B98334F8(v88, &v146);
    swift_unknownObjectRelease();
  }

  else
  {
    v146 = 0uLL;
    v147 = 0uLL;
  }

  v148[0] = v146;
  v148[1] = v147;
  if (*(&v147 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6028, &qword_1B98FD390);
    if (swift_dynamicCast())
    {
      v87 = v129[4];
    }

    else
    {
      v87 = 0;
    }

    v86 = v87;
  }

  else
  {
    sub_1B985DAC0(v148);
    v86 = 0;
  }

  v85 = v86;
  if (!v86)
  {
    goto LABEL_32;
  }

  v84 = v85;
  v76 = v85;
  v141 = v85;
  sub_1B98F5058();
  v72 = v14;
  v78 = sub_1B98F5648();
  v140 = v78;

  v73 = 0;
  v74 = sub_1B98E2C90();
  v75 = sub_1B988F0DC();
  v77 = sub_1B98E2CF4();
  v15 = sub_1B98F54D8();
  v82 = &v139;
  v139 = v15;
  v81 = &v138;
  v138 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6008, &qword_1B98FD388);
  v80 = sub_1B98E2D74();
  sub_1B98E2DFC();
  v83 = sub_1B98F5818();
  sub_1B98E2E7C(v82);
  if ((v83 & 1) == 0)
  {
    goto LABEL_30;
  }

  MEMORY[0x1E69E5928](v78);
  v136 = v78;
  sub_1B98F55B8();
  MEMORY[0x1E69E5920](v136);
  v71 = v137;
  if (v137)
  {
    v70 = v71;
  }

  else
  {
    sub_1B98F5E08();
    __break(1u);
  }

  v67 = v70;
  v68 = [v70 integerValue];
  MEMORY[0x1E69E5920](v67);
  v69 = CommunicationTrustScore.init(rawValue:)(v68);
  if (v16)
  {
LABEL_30:
    MEMORY[0x1E69E5920](v78);

LABEL_32:
    (*(v106 + 16))(v109, v115, v105);
    v36[0] = sub_1B98C5608();
    v31 = sub_1B98C5654();
    v36[1] = 0;
    BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v109, 0, 0, v36[0], v31, v114);
    sub_1B98F54D8();
    v32 = v116;
    v33 = (v114 + *(v110 + 32));
    *v33 = v118;
    v33[1] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FF0, &qword_1B98FD380);
    v36[3] = sub_1B98F5F98();
    v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B9853574();
    v34 = sub_1B98F54A8();
    v37 = &v145;
    v145 = v34;
    sub_1B9833334(v114, v112);
    v36[4] = &v142;
    v142 = v125;
    v143 = v126;
    v144 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    sub_1B98F55C8();
    v38 = v145;
    sub_1B98F54D8();
    sub_1B9868DA4(v37);
    sub_1B983A3AC(v114);
    MEMORY[0x1E69E5920](v93);
    v39 = v38;
    v40 = 1;
    return v39;
  }

  v66 = v69;
  v17 = v124;
  v52 = v69;
  v135 = v69;
  v18 = sub_1B98F1B1C();
  (*(v121 + 16))(v17, v18, v120);
  v55 = 7;
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  v64 = sub_1B98F5118();
  v65 = sub_1B98F5BD8();
  v53 = 17;
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v54 = 32;
  v19 = swift_allocObject();
  v20 = v56;
  v57 = v19;
  *(v19 + 16) = v96;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v57;
  v61 = v21;
  *(v21 + 16) = v97;
  *(v21 + 24) = v22;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v60 = sub_1B98F5F98();
  v62 = v23;

  v24 = v58;
  v25 = v62;
  *v62 = v98;
  v25[1] = v24;

  v26 = v59;
  v27 = v62;
  v62[2] = v99;
  v27[3] = v26;

  v28 = v61;
  v29 = v62;
  v62[4] = v100;
  v29[5] = v28;
  sub_1B9851B38();

  if (os_log_type_enabled(v64, v65))
  {
    v30 = v104;
    v45 = sub_1B98F5C28();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v44 = 0;
    v46 = sub_1B985263C(0, v43, v43);
    v47 = sub_1B985263C(v44, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v48 = &v134;
    v134 = v45;
    v49 = &v133;
    v133 = v46;
    v50 = &v132;
    v132 = v47;
    sub_1B9852690(0, &v134);
    sub_1B9852690(1, v48);
    v130 = v98;
    v131 = v58;
    sub_1B98526A4(&v130, v48, v49, v50);
    v51 = v30;
    if (v30)
    {

      __break(1u);
    }

    else
    {
      v130 = v99;
      v131 = v59;
      sub_1B98526A4(&v130, &v134, &v133, &v132);
      v42 = 0;
      v130 = v100;
      v131 = v61;
      sub_1B98526A4(&v130, &v134, &v133, &v132);
      _os_log_impl(&dword_1B982F000, v64, v65, "Handle has override value, returning %ld", v45, 0xCu);
      v41 = 0;
      sub_1B985281C(v46, 0, v43);
      sub_1B985281C(v47, v41, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v64);
  (*(v121 + 8))(v124, v120);
  MEMORY[0x1E69E5920](v78);

  MEMORY[0x1E69E5920](v93);
  v39 = v52;
  v40 = 0;
  return v39;
}

uint64_t sub_1B98E2B7C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_1B98E2BB0()
{
  v2 = qword_1EBBD5FE8;
  if (!qword_1EBBD5FE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5FE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B98E2C90()
{
  v2 = qword_1EBBD5FF8;
  if (!qword_1EBBD5FF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5FF8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B98E2CF4()
{
  v2 = qword_1EBBD6000;
  if (!qword_1EBBD6000)
  {
    sub_1B98E2C90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E2D74()
{
  v2 = qword_1EBBD6010;
  if (!qword_1EBBD6010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6008, &qword_1B98FD388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E2DFC()
{
  v2 = qword_1EBBD6018;
  if (!qword_1EBBD6018)
  {
    sub_1B98E2C90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6018);
    return WitnessTable;
  }

  return v2;
}

uint64_t CommunicationTrustManager.trustScores(for:options:service:)(uint64_t a1, uint64_t *a2, char *a3)
{
  *(v4 + 528) = v3;
  *(v4 + 520) = a1;
  *(v4 + 344) = v4;
  *(v4 + 352) = 0;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  *(v4 + 720) = 0;
  *(v4 + 360) = 0;
  *(v4 + 368) = 0;
  *(v4 + 376) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 392) = 0;
  *(v4 + 408) = 0;
  *(v4 + 248) = 0;
  *(v4 + 256) = 0;
  *(v4 + 424) = 0;
  memset((v4 + 96), 0, 0x28uLL);
  *(v4 + 432) = 0;
  *(v4 + 448) = 0;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0;
  *(v4 + 504) = 0;
  v5 = type metadata accessor for BlockedHandle(0);
  *(v4 + 536) = v5;
  *(v4 + 544) = *(v5 - 8);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v6 = sub_1B98F5138();
  *(v4 + 584) = v6;
  *(v4 + 592) = *(v6 - 8);
  *(v4 + 600) = swift_task_alloc();
  v7 = sub_1B98F5078();
  *(v4 + 608) = v7;
  *(v4 + 616) = *(v7 - 8);
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EB0, &qword_1B98FCAD0);
  *(v4 + 640) = swift_task_alloc();
  *(v4 + 352) = a1;
  v8 = *a2;
  *(v4 + 648) = *a2;
  v9 = *(a2 + 8);
  *(v4 + 275) = v9 & 1;
  *(v4 + 280) = v8;
  *(v4 + 288) = v9 & 1;
  v10 = *a3;
  *(v4 + 276) = *a3;
  *(v4 + 720) = v10;
  *(v4 + 360) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B98E3230, 0);
}

uint64_t sub_1B98E3230()
{
  v80 = v0;
  v70 = v0[65];
  v0[43] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6030, &qword_1B98FD3A0);
  sub_1B98F5F98();
  sub_1B98C982C();
  v0[46] = sub_1B98F54A8();
  sub_1B98F54D8();
  v0[47] = v70;
  sub_1B98F54D8();
  v0[48] = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6038, &qword_1B98FD3A8);
  v72 = sub_1B98E5984();
  sub_1B98F5B88();
  v73 = 0;
  while (1)
  {
    v67 = *(v69 + 640);
    v68 = *(v69 + 608);
    v66 = *(v69 + 616);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6048, &unk_1B98FD3B0);
    sub_1B98F5DE8();
    if ((*(v66 + 48))(v67, 1, v68) == 1)
    {
      break;
    }

    (*(*(v69 + 616) + 32))(*(v69 + 632), *(v69 + 640), *(v69 + 608));
    sub_1B98E2BB0();
    v1 = sub_1B98ED20C();
    v63 = *v1;
    v64 = v1[1];
    sub_1B98F54D8();
    *(v69 + 440) = sub_1B98E2C14(v63, v64);
    if (*(v69 + 440))
    {
      v74 = *(v69 + 440);
    }

    else
    {
      v74 = [objc_opt_self() standardUserDefaults];
      if (*(v69 + 440))
      {
        sub_1B98E2C5C((v69 + 440));
      }
    }

    *(v69 + 448) = v74;
    sub_1B98ED26C();
    sub_1B98F54D8();
    v61 = sub_1B98F5648();

    v62 = [v74 valueForKey_];
    MEMORY[0x1E69E5920](v61);
    if (v62)
    {
      sub_1B98F5C68();
      sub_1B98334F8(v69 + 200, v69 + 168);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v69 + 168) = 0;
      *(v69 + 176) = 0;
      *(v69 + 184) = 0;
      *(v69 + 192) = 0;
    }

    *(v69 + 136) = *(v69 + 168);
    *(v69 + 152) = *(v69 + 184);
    if (*(v69 + 160))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6028, &qword_1B98FD390);
      if (swift_dynamicCast())
      {
        v60 = *(v69 + 512);
      }

      else
      {
        v60 = 0;
      }

      v59 = v60;
    }

    else
    {
      sub_1B985DAC0(v69 + 136);
      v59 = 0;
    }

    if (v59)
    {
      *(v69 + 456) = v59;
      sub_1B98F5058();
      v57 = sub_1B98F5648();
      *(v69 + 464) = v57;

      sub_1B98E2C90();
      sub_1B988F0DC();
      sub_1B98E2CF4();
      *(v69 + 472) = sub_1B98F54D8();
      *(v69 + 480) = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6008, &qword_1B98FD388);
      sub_1B98E2D74();
      sub_1B98E2DFC();
      v58 = sub_1B98F5818();
      sub_1B98E2E7C((v69 + 472));
      if (v58)
      {
        MEMORY[0x1E69E5928](v57);
        *(v69 + 496) = v57;
        sub_1B98F55B8();
        MEMORY[0x1E69E5920](*(v69 + 496));
        v54 = *(v69 + 488);
        if (!v54)
        {
          return sub_1B98F5E08();
        }

        v52 = [v54 integerValue];
        MEMORY[0x1E69E5920](v54);
        v53 = CommunicationTrustScore.init(rawValue:)(v52);
        if (v2)
        {
          v50 = v73;
          v51 = v65;
        }

        else
        {
          v4 = *(v69 + 600);
          v41 = *(v69 + 584);
          v40 = *(v69 + 592);
          *(v69 + 504) = v53;
          v5 = sub_1B98F1B1C();
          (*(v40 + 16))(v4, v5, v41);
          v42 = swift_allocObject();
          *(v42 + 16) = v53;
          oslog = sub_1B98F5118();
          v49 = sub_1B98F5BD8();
          v44 = swift_allocObject();
          *(v44 + 16) = 0;
          v45 = swift_allocObject();
          *(v45 + 16) = 8;
          v43 = swift_allocObject();
          *(v43 + 16) = sub_1B98E5B14;
          *(v43 + 24) = v42;
          v46 = swift_allocObject();
          *(v46 + 16) = sub_1B98E5B2C;
          *(v46 + 24) = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
          sub_1B98F5F98();
          v47 = v6;

          *v47 = sub_1B98E5B1C;
          v47[1] = v44;

          v47[2] = sub_1B98E5B24;
          v47[3] = v45;

          v47[4] = sub_1B98E5B38;
          v47[5] = v46;
          sub_1B9851B38();

          if (os_log_type_enabled(oslog, v49))
          {
            buf = sub_1B98F5C28();
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
            v38 = sub_1B985263C(0, v36, v36);
            v39 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v75 = buf;
            v76 = v38;
            v77 = v39;
            sub_1B9852690(0, &v75);
            sub_1B9852690(1, &v75);
            v78 = sub_1B98E5B1C;
            v79 = v44;
            sub_1B98526A4(&v78, &v75, &v76, &v77);
            v78 = sub_1B98E5B24;
            v79 = v45;
            sub_1B98526A4(&v78, &v75, &v76, &v77);
            v78 = sub_1B98E5B38;
            v79 = v46;
            sub_1B98526A4(&v78, &v75, &v76, &v77);
            _os_log_impl(&dword_1B982F000, oslog, v49, "Handle has override value, returning %ld", buf, 0xCu);
            sub_1B985281C(v38, 0, v36);
            sub_1B985281C(v39, 0, MEMORY[0x1E69E7CA0] + 8);
            sub_1B98F5C08();
          }

          v34 = *(v69 + 632);
          v33 = *(v69 + 624);
          v32 = *(v69 + 608);
          v29 = *(v69 + 600);
          v30 = *(v69 + 584);
          v31 = *(v69 + 616);
          v28 = *(v69 + 592);
          MEMORY[0x1E69E5920](oslog);
          (*(v28 + 8))(v29, v30);
          (*(v31 + 16))(v33, v34, v32);
          *(v69 + 328) = v53;
          *(v69 + 336) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6058, &qword_1B98FD3D0);
          sub_1B98F55C8();
          *(swift_task_alloc() + 16) = v34;
          sub_1B98E5BD8();
          sub_1B98E5C60();
          sub_1B98F5BA8();

          v50 = 0;
          v51 = 0;
        }
      }

      else
      {
        v50 = v73;
        v51 = v65;
      }

      MEMORY[0x1E69E5920](v57);

      v55 = v50;
      v56 = v51;
    }

    else
    {
      v55 = v73;
      v56 = v65;
    }

    v26 = *(v69 + 632);
    v27 = *(v69 + 608);
    v25 = *(v69 + 616);
    MEMORY[0x1E69E5920](v74);
    (*(v25 + 8))(v26, v27);
    v73 = v55;
    v65 = v56;
  }

  v23 = *(v69 + 536);
  sub_1B98E5A0C((v69 + 232));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FF0, &qword_1B98FD380);
  sub_1B98F5F98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  *(v69 + 656) = sub_1B9853574();
  *(v69 + 392) = sub_1B98F54A8();
  v22 = *(v69 + 376);
  sub_1B98F54D8();
  *(v69 + 400) = v22;
  v24 = sub_1B985D064(sub_1B98E4F8C, 0, v71, v23, MEMORY[0x1E69E73E0], v72, MEMORY[0x1E69E7410], v35);
  *(v69 + 664) = v24;
  sub_1B98E5A38((v69 + 400));
  *(v69 + 408) = v24;
  sub_1B98F54D8();
  *(v69 + 416) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
  sub_1B988AF2C();
  sub_1B98F5B88();
  while (1)
  {
    v20 = *(v69 + 576);
    v21 = *(v69 + 536);
    v19 = *(v69 + 544);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5808, &qword_1B98FD3C0);
    sub_1B98F5DE8();
    v7 = *(v19 + 48);
    *(v69 + 672) = v7;
    *(v69 + 680) = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v7(v20, 1, v21) == 1)
    {
      break;
    }

    v16 = *(v69 + 275);
    v15 = *(v69 + 648);
    v18 = *(v69 + 560);
    v17 = *(v69 + 552);
    sub_1B9832680(*(v69 + 576), v18);
    sub_1B9833334(v18, v17);
    *(v69 + 264) = v15;
    *(v69 + 272) = v16;
    *(v69 + 273) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    sub_1B98F55C8();
    sub_1B983A3AC(v18);
  }

  v10 = *(v69 + 276);
  v9 = *(v69 + 528);
  sub_1B988AFB4((v69 + 248));
  sub_1B98CB8A8(v9 + OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server, v69 + 56);
  v11 = *(v69 + 80);
  v12 = *(v69 + 88);
  __swift_project_boxed_opaque_existential_1((v69 + 56), v11);
  v14 = *(v69 + 392);
  *(v69 + 688) = v14;
  sub_1B98F54D8();
  *(v69 + 274) = v10;
  v13 = (*(v12 + 56) + **(v12 + 56));
  v8 = swift_task_alloc();
  *(v69 + 696) = v8;
  *v8 = *(v69 + 344);
  v8[1] = sub_1B98E4830;

  return v13(v14, v69 + 274, v11, v12);
}

uint64_t sub_1B98E4830(uint64_t a1)
{
  v5 = *v2;
  v5[43] = *v2;
  v5[88] = a1;
  v5[89] = v1;

  if (v1)
  {
    v3 = sub_1B98E4DD4;
  }

  else
  {

    v3 = sub_1B98E49BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0);
}

uint64_t sub_1B98E49BC()
{
  v1 = v0[88];
  v18 = v0[82];
  v17 = v0[67];
  v0[43] = v0;
  v0[53] = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v2 = sub_1B98F54D8();
  MEMORY[0x1BFADD440](v2, v17, &type metadata for CommunicationTrustScore, v18);
  memcpy(v0 + 12, v0 + 2, 0x28uLL);
  while (1)
  {
    v15 = *(v16 + 672);
    v13 = *(v16 + 568);
    v14 = *(v16 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6050, &qword_1B98FD3C8);
    sub_1B98F54C8();
    if (v15(v13, 1, v14) == 1)
    {
      break;
    }

    *(v16 + 432) = *(v16 + 560);
    v10 = *(v16 + 624);
    v9 = *(v16 + 608);
    v12 = *(v16 + 560);
    v11 = *(v16 + 552);
    v8 = *(v16 + 616);
    v3 = sub_1B9832680(*(v16 + 568), v12);
    (*(v8 + 16))(v10, v12, v9, v3);
    sub_1B9833334(v12, v11);
    sub_1B98F55B8();
    v4 = *(v16 + 304);
    *(v16 + 312) = *(v16 + 296);
    *(v16 + 320) = v4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6058, &qword_1B98FD3D0);
    sub_1B98F55C8();
    sub_1B983A3AC(v11);
    sub_1B983A3AC(v12);
  }

  sub_1B98E5A90((v16 + 96));
  v7 = *(v16 + 368);
  sub_1B98F54D8();

  sub_1B9868DA4((v16 + 392));
  sub_1B98E5A38((v16 + 376));
  sub_1B98E5A64((v16 + 368));

  v5 = *(*(v16 + 344) + 8);

  return v5(v7);
}

uint64_t sub_1B98E4DD4()
{
  v0[43] = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  sub_1B9868DA4(v0 + 49);
  sub_1B98E5A38(v0 + 47);
  sub_1B98E5A64(v0 + 46);

  v1 = *(*(v3 + 344) + 8);

  return v1();
}

uint64_t sub_1B98E4F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v6[1] = a1;
  v13 = 0;
  v10 = 0;
  v2 = sub_1B98F5078();
  v8 = *(v2 - 8);
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v12 = v6 - v7;
  v13 = v3;
  (*(v8 + 16))();
  v11 = sub_1B98C5608();
  v4 = sub_1B98C5654();
  return BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v12, v10, v10, v11, v4, v9);
}

uint64_t CommunicationTrustManager.updateServerTrust(for:serverTrust:service:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = v4;
  *(v5 + 112) = a4;
  *(v5 + 104) = a3;
  *(v5 + 177) = a2 & 1;
  *(v5 + 96) = a1;
  *(v5 + 72) = v5;
  *(v5 + 80) = 0;
  *(v5 + 176) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 88) = 0;
  v6 = sub_1B98F5078();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  type metadata accessor for BlockedHandle(0);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 80) = a1;
  *(v5 + 176) = a2 & 1;
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 88) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B98E5230, 0);
}

uint64_t sub_1B98E5230()
{
  v9 = v0[19];
  v11 = v0[18];
  v1 = v0[17];
  v12 = v0[15];
  v0[9] = v0;
  (*(v1 + 16))();
  v10 = sub_1B98C5608();
  v2 = sub_1B98C5654();
  BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v11, 0, 0, v10, v2, v9);
  sub_1B98CB8A8(v12 + OBJC_IVAR____TtC18CommunicationTrust25CommunicationTrustManager_server, (v0 + 2));
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v16 = (*(v15 + 64) + **(v15 + 64));
  v3 = swift_task_alloc();
  *(v13 + 160) = v3;
  *v3 = *(v13 + 72);
  v3[1] = sub_1B98E5418;
  v4 = *(v13 + 152);
  v5 = *(v13 + 112);
  v6 = *(v13 + 104);
  v7 = *(v13 + 177) & 1;

  return v16(v4, v7, v6, v5, v14, v15);
}

uint64_t sub_1B98E5418()
{
  v4 = *v1;
  *(v4 + 72) = *v1;
  *(v4 + 168) = v0;

  if (v0)
  {
    v2 = sub_1B98E5644;
  }

  else
  {
    v2 = sub_1B98E5580;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B98E5580()
{
  v3 = *(v0 + 152);
  *(v0 + 72) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1B983A3AC(v3);

  v1 = *(*(v0 + 72) + 8);

  return v1();
}

uint64_t sub_1B98E5644()
{
  v3 = *(v0 + 152);
  *(v0 + 72) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1B983A3AC(v3);

  v1 = *(*(v4 + 72) + 8);

  return v1();
}

id CommunicationTrustManager.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B98E5790(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_1B98F5648();

    v2 = [v7 initWithSuiteName_];
  }

  else
  {
    v2 = [v7 initWithSuiteName_];
  }

  v5 = v2;
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1B98E5850@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B98E5898(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B98E590C();
  v5 = MEMORY[0x1E69E6530];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B98E590C()
{
  v2 = qword_1EBBD6020;
  if (!qword_1EBBD6020)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E5984()
{
  v2 = qword_1EBBD6040;
  if (!qword_1EBBD6040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6038, &qword_1B98FD3A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E5B38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B98E590C();
  v5 = MEMORY[0x1E69E6530];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B98E5BD8()
{
  v2 = qword_1EBBD6060;
  if (!qword_1EBBD6060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6038, &qword_1B98FD3A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E5C60()
{
  v2 = qword_1EBBD6068;
  if (!qword_1EBBD6068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6038, &qword_1B98FD3A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E5CE8(unsigned __int8 *a1, int a2)
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

_BYTE *sub_1B98E5E38(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B98E605C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B98E6180(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B98E6374()
{
  v2 = qword_1EBBD6070;
  if (!qword_1EBBD6070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6070);
    return WitnessTable;
  }

  return v2;
}

uint64_t CommunicationTrustScore.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
  }

  return 0;
}

BOOL static CommunicationTrustScore.< infix(_:_:)()
{
  CommunicationTrustScore.rawValue.getter();
  v3 = v0;
  CommunicationTrustScore.rawValue.getter();
  return v3 < v1;
}

uint64_t CommunicationTrustScore.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return sub_1B98F55E8("Blocked", 7, 1);
    case 1:
      return sub_1B98F55E8("Junk", 4, 1);
    case 2:
      return sub_1B98F55E8("Blocked By Third Party", 22, 1);
    case 3:
      return sub_1B98F55E8("Suspected Junk", 14, 1);
    case 4:
      return sub_1B98F55E8("Unknown", 7, 1);
    case 5:
      return sub_1B98F55E8("Communicated With", 17, 1);
    case 6:
      return sub_1B98F55E8("Identified By Third Party", 25, 1);
    case 7:
      return sub_1B98F55E8("Maybe", 5, 1);
    case 8:
      return sub_1B98F55E8("Contact", 7, 1);
    case 9:
      return sub_1B98F55E8("Vip", 3, 1);
  }

  sub_1B98F5FC8();
  __break(1u);
  return v2;
}

void static CommunicationTrustScore.allCases.getter()
{
  sub_1B98F5F98();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  v0[9] = 9;
  sub_1B9851B38();
}

uint64_t sub_1B98E6974@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CommunicationTrustScore.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1B98E6AE0()
{
  v2 = qword_1EBBD6078;
  if (!qword_1EBBD6078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E6D54(uint64_t a1, uint64_t a2)
{
  sub_1B98E6EDC();
  sub_1B98E6F58();
  return sub_1B98F5098();
}

unint64_t sub_1B98E6DF8()
{
  v2 = qword_1EBBD6080;
  if (!qword_1EBBD6080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6088, &qword_1B98FD708);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E6EDC()
{
  v2 = qword_1EBBD6090;
  if (!qword_1EBBD6090)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E6F58()
{
  v2 = qword_1EBBD6098;
  if (!qword_1EBBD6098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6098);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B98E6FD4()
{
  if (qword_1EBBD4E80 != -1)
  {
    swift_once();
  }

  return &unk_1EBBD60B0;
}

void *sub_1B98E7034()
{
  if (qword_1EBBD4E78 != -1)
  {
    swift_once();
  }

  return &unk_1EBBD60A8;
}

void *sub_1B98E7094()
{
  if (qword_1EBBD4E88 != -1)
  {
    swift_once();
  }

  return &unk_1EBBD60B8;
}

void *sub_1B98E70F4()
{
  if (qword_1EBBD4E70 != -1)
  {
    swift_once();
  }

  return &unk_1EBBD60A0;
}

void *static CommunicationTrustScoreOptions.junkSignal.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B98E70F4();
  *a1 = *result;
  return result;
}

void *static CommunicationTrustScoreOptions.ignoreContacts.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B98E7034();
  *a1 = *result;
  return result;
}

void *static CommunicationTrustScoreOptions.ignoreCallDirectory.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B98E6FD4();
  *a1 = *result;
  return result;
}

void *static CommunicationTrustScoreOptions.ignoreServerTrust.getter@<X0>(void *a1@<X8>)
{
  result = sub_1B98E7094();
  *a1 = *result;
  return result;
}

unint64_t sub_1B98E7398()
{
  v2 = qword_1EBBD60C0;
  if (!qword_1EBBD60C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98E7484(uint64_t a1)
{
  sub_1B9873520();
  sub_1B98E590C();
  return sub_1B98F6158();
}

uint64_t sub_1B98E7688(uint64_t a1, uint64_t a2)
{
  sub_1B9873520();
  sub_1B98E590C();
  return sub_1B98F6148();
}

uint64_t sub_1B98E76CC(uint64_t a1, uint64_t a2)
{
  sub_1B9873520();
  sub_1B98E590C();
  return sub_1B98F6128();
}

uint64_t sub_1B98E7710(uint64_t a1, uint64_t a2)
{
  sub_1B9873520();
  sub_1B98E590C();
  return sub_1B98F6138();
}

CommunicationTrust::CommunicationTrustScoreOptions sub_1B98E7830@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = CommunicationTrustScoreOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B98E7878@<X0>(uint64_t *a1@<X8>)
{
  result = CommunicationTrustScoreOptions.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1B98E7930()
{
  v2 = qword_1EBBD60C8;
  if (!qword_1EBBD60C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E79F4()
{
  v2 = qword_1EBBD60D0;
  if (!qword_1EBBD60D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E7A88()
{
  v2 = qword_1EBBD60D8;
  if (!qword_1EBBD60D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for CommunicationTrustScoreOptions(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CommunicationTrustScoreOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t Service.description.getter()
{
  if (*v0)
  {
    return sub_1B98F55E8("FaceTime", 8, 1);
  }

  else
  {
    return sub_1B98F55E8("Messages", 8, 1);
  }
}

CommunicationTrust::Service_optional __swiftcall Service.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (!rawValue)
  {
    v3 = 0;
LABEL_6:
    *v1 = v3;
    return rawValue;
  }

  if (rawValue == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  *v1 = 2;
  return rawValue;
}

void static Service.allCases.getter()
{
  sub_1B98F5F98();
  *v0 = 0;
  v0[1] = 1;
  sub_1B9851B38();
}

unint64_t sub_1B98E7FA8()
{
  v2 = qword_1EBBD60E0;
  if (!qword_1EBBD60E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60E0);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B98E8040@<W0>(_DWORD *a1@<X8>)
{
  result = Service.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B98E82D4(uint64_t a1, uint64_t a2)
{
  sub_1B98E8320();
  sub_1B98E7FA8();
  return sub_1B98F5098();
}

unint64_t sub_1B98E8320()
{
  v2 = qword_1EBBD60E8;
  if (!qword_1EBBD60E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E8420()
{
  v2 = qword_1EBBD60F0;
  if (!qword_1EBBD60F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98E84B4()
{
  v2 = qword_1EBBD60F8;
  if (!qword_1EBBD60F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBBD6100, &qword_1B98FDB58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD60F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for Service(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Service(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B98E8940(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v4 = *a1 + 252;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFC)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B98E8A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    *(result + 16) = 0;
    if (a3 >= 0xFD)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B98E8C10(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v6[27] = sub_1B98E9CE4;
  v6[28] = sub_1B98E9CFC;
  v6[29] = sub_1B98E9D08;
  v6[30] = sub_1B98E9CEC;
  v6[31] = sub_1B98E9CF4;
  v6[32] = sub_1B98E9D14;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  v12 = 0;
  v7 = sub_1B98F5138();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = v6 - v10;
  v17 = v3;
  v18 = v4;
  v16 = v2;
  sub_1B98E9380();
  sub_1B9836338();
  return sub_1B98F5BE8();
}

unint64_t sub_1B98E9380()
{
  v2 = qword_1EDBDAC08;
  if (!qword_1EDBDAC08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EDBDAC08);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B98E93E4()
{
  v55 = sub_1B98E9D20;
  v56 = sub_1B98E9D38;
  v57 = sub_1B98E9D44;
  v58 = sub_1B98E9D28;
  v59 = sub_1B98E9D30;
  v60 = sub_1B98E9D50;
  v79 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v73 = 0;
  v61 = sub_1B98F5138();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v22 - v64;
  v75 = v0;
  v78 = 0;
  v66 = objc_opt_self();
  MEMORY[0x1E69E5928](v68);
  v74 = v78;
  v69 = [v66 archivedDataWithRootObject:v68 requiringSecureCoding:1 error:&v74];
  v67 = v74;
  MEMORY[0x1E69E5928](v74);
  v1 = v78;
  v78 = v67;
  MEMORY[0x1E69E5920](v1);
  swift_unknownObjectRelease();
  if (v69)
  {
    v54 = v69;
    v49 = v69;
    v50 = sub_1B98F4F98();
    v51 = v2;
    MEMORY[0x1E69E5920](v49);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v31 = v78;
    v33 = sub_1B98F4F38();
    MEMORY[0x1E69E5920](v31);
    swift_willThrow();
    v4 = v65;
    v32 = 0;
    v5 = v33;
    v73 = v33;
    v6 = sub_1B98F1B1C();
    (*(v62 + 16))(v4, v6, v61);
    v7 = v33;
    v37 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    sub_1B98745B0();

    v46 = sub_1B98F5118();
    v47 = sub_1B98F5BC8();
    v34 = 17;
    v40 = swift_allocObject();
    *(v40 + 16) = 66;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v36 = 32;
    v8 = swift_allocObject();
    v9 = v35;
    v38 = v8;
    *(v8 + 16) = v55;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v38;
    v39 = v10;
    *(v10 + 16) = v56;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v39;
    v43 = v12;
    *(v12 + 16) = v57;
    *(v12 + 24) = v13;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v42 = sub_1B98F5F98();
    v44 = v14;

    v15 = v40;
    v16 = v44;
    *v44 = v58;
    v16[1] = v15;

    v17 = v41;
    v18 = v44;
    v44[2] = v59;
    v18[3] = v17;

    v19 = v43;
    v20 = v44;
    v44[4] = v60;
    v20[5] = v19;
    sub_1B9851B38();

    if (os_log_type_enabled(v46, v47))
    {
      v21 = v32;
      v24 = sub_1B98F5C28();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v25 = sub_1B985263C(1, v23, v23);
      v26 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v27 = &v72;
      v72 = v24;
      v28 = &v77;
      v77 = v25;
      v29 = &v76;
      v76 = v26;
      sub_1B9852690(2, &v72);
      sub_1B9852690(1, v27);
      v70 = v58;
      v71 = v40;
      sub_1B98526A4(&v70, v27, v28, v29);
      v30 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v70 = v59;
        v71 = v41;
        sub_1B98526A4(&v70, &v72, &v77, &v76);
        v22 = 0;
        v70 = v60;
        v71 = v43;
        sub_1B98526A4(&v70, &v72, &v77, &v76);
        _os_log_impl(&dword_1B982F000, v46, v47, "Failed to archive CNContact: %{public}@", v24, 0xCu);
        sub_1B985281C(v25, 1, v23);
        sub_1B985281C(v26, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v46);
    (*(v62 + 8))(v65, v61);

    v52 = 0;
    v53 = 0xF000000000000000;
  }

  v48 = v53;
  return v52;
}

uint64_t sub_1B98E9D6C()
{
  v2 = *(v0 + 8);
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98E9D98(uint64_t a1)
{
  sub_1B98F54D8();
  *(v1 + 8) = a1;
}

uint64_t sub_1B98E9E30(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 40), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1B98E9FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, uint64_t a7@<X5>)
{
  v11 = a4;
  *a6 = a1;
  *(a6 + 1) = a2;
  v12 = type metadata accessor for AsyncStreamManager.State(0, a5, a7, a4);
  (*(*(a5 - 8) + 32))(&a6[*(v12 + 40)], a3);
  result = v12;
  a6[*(v12 + 44)] = v11;
  return result;
}

uint64_t sub_1B98EA074()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t AsyncStreamManager.value.getter()
{
  v11 = 0;
  v4 = *v0;
  v11 = v0;
  v10 = *(v4 + 80);
  v6 = v10;
  v5 = v0[2];

  v8 = v10;
  v9 = *(v4 + 88);
  v2 = type metadata accessor for AsyncStreamManager.State(0, v10, v9, v1);
  sub_1B9875AE4(sub_1B98EA4B0, v7, v5, v2, v6);
}

uint64_t sub_1B98EA1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a4;
  v11 = *(a2 + a3 - 16);
  v14 = v11;
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v5 - v5;
  v6 = *MEMORY[0x1EEE9AC00](a1);

  v13 = v6;
  v12 = v6;
  AsyncStreamManager.value.getter();
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t sub_1B98EA2B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[1] = a1;
  v8 = a2;
  v13 = *(a3 + a4 - 16);
  v7 = *(v13 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v5 - v6;
  (*(v7 + 16))();
  v10 = *v8;

  v12 = v10;
  v11 = v10;
  AsyncStreamManager.value.setter(v9);
}

uint64_t AsyncStreamManager.value.setter(uint64_t a1)
{
  v4 = *(*v1 + 80);
  sub_1B98EA514(a1);
  return (*(*(v4 - 8) + 8))(a1);
}

uint64_t sub_1B98EA514(uint64_t a1)
{
  v32 = a1;
  v39 = sub_1B98EC860;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v47 = 0;
  v46 = 0;
  v1 = memset(__b, 0, sizeof(__b));
  v30 = *v27;
  v31 = v27;
  v33 = *(v30 + 80);
  v52 = v33;
  v14 = *(v33 - 8);
  v15 = v33 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v17 = &v7 - v16;
  v35 = 0;
  v18 = sub_1B98F59A8();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v22 = &v7 - v21;
  v34 = sub_1B98F59F8();
  v23 = *(v34 - 8);
  v24 = v34 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v26 = &v7 - v25;
  v51 = &v7 - v25;
  v28 = (*(*(sub_1B98F5C38() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v32);
  v29 = &v7 - v28;
  v50 = v2;
  v49 = v3;
  v36 = *(v3 + 16);

  v38 = &v41;
  v42 = v33;
  v43 = *(v30 + 88);
  v44 = v32;
  v37 = type metadata accessor for AsyncStreamManager.State(v35, v33, v43, v4);
  sub_1B98F5518();
  v5 = sub_1B98F5C38();
  sub_1B9875AE4(v39, v38, v36, v37, v5);
  v40 = 0;

  v13 = v48;
  v47 = v48;
  sub_1B98F54D8();
  if (!v13)
  {
  }

  v12 = v13;
  v9 = v13;
  v46 = v13;
  sub_1B98F54D8();
  v10 = &v53;
  MEMORY[0x1BFADD470](v9, MEMORY[0x1E69E6530], v34, MEMORY[0x1E69E6540]);
  memcpy(__b, v10, sizeof(__b));
  for (i = v40; ; i = v8)
  {
    v8 = i;
    sub_1B98F5508();
    sub_1B98F54F8();
    if ((*(v23 + 48))(v29, 1, v34) == 1)
    {
      break;
    }

    (*(v23 + 32))(v26, v29, v34);
    (*(v14 + 16))(v17, v32, v33);
    sub_1B98F59D8();
    (*(v19 + 8))(v22, v18);
    (*(v23 + 8))(v26, v34);
  }

  sub_1B98EC89C(__b);
}

uint64_t (*AsyncStreamManager.value.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 43834);
  *a1 = v6;
  *v6 = v1;
  v2 = *(*v1 + 80);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 43834);
  v6[4] = __swift_coroFrameAllocStub(v5, 43834);
  AsyncStreamManager.value.getter();
  return sub_1B98EAC64;
}

void sub_1B98EAC64(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AsyncStreamManager.value.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AsyncStreamManager.value.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AsyncStreamManager.init(initialValue:excludeInitialValue:)(uint64_t a1, int a2)
{
  v26 = a1;
  v18 = a2;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v15 = *v2;
  v25 = *(v15 + 80);
  v31 = v25;
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v14 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v14 - v14;
  v19 = *(v15 + 88);
  v22 = type metadata accessor for AsyncStreamManager.State(0, v3, v19, v4);
  v16 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v14 - v16;
  v30 = v6;
  v29 = v18 & 1;
  v28 = v2;
  (*(v23 + 16))(v5);
  v20 = sub_1B98E9F6C();
  v7 = sub_1B98E9F80();
  sub_1B98E9FC8(v20, v7, v17, v18 & 1, v25, v21, v19);
  v8 = sub_1B98EAFC0(v21, v22);
  v9 = v23;
  v10 = v25;
  v11 = v8;
  v12 = v26;
  v2[2] = v11;
  (*(v9 + 8))(v12, v10);
  return v27;
}

uint64_t sub_1B98EAFC0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v10 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v3 - v3;
  (*(v5 + 16))();
  v9 = sub_1B9874638(v4, v7);
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t AsyncStreamManager.deinit()
{
  AsyncStreamManager.finish()();
  sub_1B98EC920();
  return v1;
}

Swift::Void __swiftcall AsyncStreamManager.finish()()
{
  v27 = sub_1B98ECA2C;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  memset(__b, 0, sizeof(__b));
  v19 = *v16;
  v20 = v16;
  v21 = *(v19 + 80);
  v37 = v21;
  v23 = 0;
  v22 = sub_1B98F59F8();
  v12 = *(v22 - 8);
  v13 = v22 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &v5 - v14;
  v36 = &v5 - v14;
  v0 = sub_1B98F5C38();
  v17 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v18 = &v5 - v17;
  v35 = v1;
  v24 = *(v1 + 16);

  v26 = &v29;
  v30 = v21;
  v31 = *(v19 + 88);
  v25 = type metadata accessor for AsyncStreamManager.State(v23, v21, v31, v2);
  v3 = sub_1B98F5598();
  sub_1B9875AE4(v27, v26, v24, v25, v3);
  v28 = 0;

  v7 = v34;
  v33 = v34;
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E6540];
  v4 = sub_1B98F5538();
  v10 = &v38;
  MEMORY[0x1BFADD470](v4, v8, v22, v9);
  memcpy(__b, v10, sizeof(__b));
  for (i = v28; ; i = v6)
  {
    v6 = i;
    sub_1B98F5508();
    sub_1B98F54F8();
    if ((*(v12 + 48))(v18, 1, v22) == 1)
    {
      break;
    }

    (*(v12 + 32))(v15, v18, v22);
    sub_1B98F59E8();
    (*(v12 + 8))(v15, v22);
  }

  sub_1B98EC89C(__b);
}

uint64_t AsyncStreamManager.sequence.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v63 = v1;
  v36 = 0;
  v74 = sub_1B98ECA64;
  v24 = sub_1B98ECBB0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v65 = *v1;
  v66 = v1;
  v68 = *(v65 + 80);
  v85 = v68;
  v64 = 0;
  v25 = sub_1B98F59A8();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v20 - v28;
  v30 = *(v2 - 8);
  v31 = v2 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20 - v28);
  v33 = v20 - v32;
  v34 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20 - v32);
  v35 = v20 - v34;
  v84 = v20 - v34;
  v38 = sub_1B98F5C38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v64);
  v70 = (v20 - v37);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v40 = v20 - v39;
  v41 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v42 = v20 - v41;
  v83 = v20 - v41;
  v53 = sub_1B98F59C8();
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v43 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v52 = v20 - v43;
  v62 = sub_1B98F59F8();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v44 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v64);
  v61 = v20 - v44;
  v45 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v67 = v20 - v45;
  v82 = v20 - v45;
  v58 = sub_1B98F5A08();
  v54 = *(v58 - 8);
  v55 = v58 - 8;
  v47 = *(v54 + 64);
  v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v68);
  v57 = v20 - v46;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v56 = v20 - v48;
  v81 = v20 - v48;
  v80 = v10;
  sub_1B98EBFB8();
  v49 = v11;
  sub_1B98EBFCC(v52);
  sub_1B98F5998();
  (*(v50 + 8))(v52, v53);
  (*(v54 + 32))(v56, v57, v58);
  (*(v59 + 32))(v67, v61, v62);
  v71 = v63[2];

  v73 = &v75;
  v76 = v68;
  v69 = *(v65 + 88);
  v77 = v69;
  v78 = v67;
  v13 = type metadata accessor for AsyncStreamManager.State(v64, v68, v69, v12);
  sub_1B9875AE4(v74, v73, v71, v13, TupleTypeMetadata2);

  v21 = *v70;
  v14 = v70 + *(TupleTypeMetadata2 + 48);
  v79 = v21;
  sub_1B98ECAA0(v14, v42, v68, v38);
  v20[3] = 7;
  v22 = swift_allocObject();
  v20[1] = v22 + 16;

  v20[2] = v63;
  swift_weakInit();

  v15 = swift_allocObject();
  v16 = v69;
  v17 = v21;
  v18 = v22;
  v15[2] = v68;
  v15[3] = v16;
  v15[4] = v18;
  v15[5] = v17;
  sub_1B98F59B8();

  sub_1B98ECBD0(v42, v40, v68, v38);
  if ((*(v30 + 48))(v40, 1, v68) == 1)
  {
    sub_1B98ECCE0(v40, v68);
  }

  else
  {
    (*(v30 + 32))(v35, v40, v68);
    (*(v30 + 16))(v33, v35, v68);
    sub_1B98F59D8();
    (*(v26 + 8))(v29, v25);
    (*(v30 + 8))(v35, v68);
  }

  (*(v54 + 16))(v23, v56, v58);
  sub_1B98ECCE0(v42, v68);
  (*(v59 + 8))(v67, v62);
  return (*(v54 + 8))(v56, v58);
}

uint64_t sub_1B98EBFCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E8650];
  v1 = sub_1B98F59C8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void *sub_1B98EC044@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v28 = a5;
  v33 = a1;
  v32 = a2;
  v29 = a3;
  v30 = a4;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v42 = a3;
  v31 = sub_1B98F59F8();
  v34 = (*(*(sub_1B98F5C38() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00](v33);
  v35 = &v18 - v34;
  v41 = result;
  v40 = v6;
  v36 = *result;
  v39 = v36;
  v37 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = v35;
    v9 = v31;
    v10 = v32;
    *v33 = v37;
    v21 = *(v9 - 8);
    v22 = v9 - 8;
    (*(v21 + 16))(v8, v10);
    (*(v21 + 56))(v35, 0, 1, v31);
    v23 = &v38;
    v38 = v36;
    v25 = 0;
    v24 = MEMORY[0x1E69E6530];
    sub_1B98F5598();
    sub_1B98F55C8();
    sub_1B98F5C38();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v12 = v30;
    v13 = v29;
    v14 = TupleTypeMetadata2;
    v15 = v25;
    v26 = v28 + *(v14 + 48);
    *v28 = v36;
    v27 = type metadata accessor for AsyncStreamManager.State(v15, v13, v12, v16);
    if (*(v33 + *(v27 + 44)))
    {
      return (*(*(v29 - 8) + 56))(v26, 1);
    }

    else
    {
      v17 = v33 + *(v27 + 40);
      v19 = *(v29 - 8);
      v20 = v29 - 8;
      (*(v19 + 16))(v26, v17);
      return (*(v19 + 56))(v26, 0, 1, v29);
    }
  }

  return result;
}

uint64_t sub_1B98EC340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = 0;
  v27 = a4;
  v26 = a1;
  v22 = a2 + 16;
  v25 = a2 + 16;
  v24 = a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = v21;
    v13[2] = Strong;

    sub_1B98ED050();
    swift_endAccess();
    v14 = *(Strong + 16);
    v13[1] = v14;

    v13[3] = v13;
    MEMORY[0x1EEE9AC00](v13);
    v15 = v12;
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v10 = type metadata accessor for AsyncStreamManager.State(0, v6, v7, v9);
    sub_1B9875AE4(sub_1B98ED07C, v15, v14, v10, MEMORY[0x1E69E7CA8] + 8);
    v16 = v5;

    return v16;
  }

  else
  {
    sub_1B98ED050();
    swift_endAccess();
    return v21;
  }
}

uint64_t sub_1B98EC4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v6[1] = a2;
  v15 = 0;
  v14 = 0;
  v16 = a3;
  v11 = sub_1B98F59F8();
  v6[2] = 0;
  v12 = sub_1B98F5C38();
  v7 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = v6 - v7;
  v15 = v3;
  v14 = v4;
  v9 = &v13;
  v13 = v4;
  sub_1B98F5598();
  sub_1B98F5488();
  return sub_1B98ED0B8(v10, v11);
}

uint64_t sub_1B98EC604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13 = a5;
  v15 = a1;
  v19 = a2;
  v23 = a3;
  v20 = a4;
  v27 = 0;
  v26 = 0;
  v28 = a3;
  v21 = *(a3 - 8);
  v22 = a3 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v11 - v14;
  v27 = MEMORY[0x1EEE9AC00](a1);
  v26 = v5;
  v16 = type metadata accessor for AsyncStreamManager.State(0, v6, v7, v11 - v14);
  v8 = *(v16 + 40);
  v17 = *(v21 + 16);
  v18 = v21 + 16;
  v17(v24, v15 + v8, v23);
  v25 = sub_1B98F5638();
  (*(v21 + 8))(v24, v23);
  result = v25;
  if (v25)
  {
    v12 = *(v15 + *(v16 + 44));
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v17(v24, v19, v23);
    (*(v21 + 40))(v15 + *(v16 + 40), v24, v23);
    v10 = v15;
    *(v15 + *(v16 + 44)) = 0;
    v11[1] = *(v10 + 8);
    sub_1B98F59F8();
    result = sub_1B98F5538();
    *v13 = result;
  }

  else
  {
    *v13 = 0;
  }

  return result;
}

uint64_t sub_1B98EC94C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_1B98F54D8();
  sub_1B98F59F8();
  sub_1B98ED154();
  sub_1B98F5598();
  sub_1B98F5588();
  sub_1B98F54D8();
  *a2 = v3;
}

void *sub_1B98ECAA0(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_1B98ECBD0(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_1B98ECCE0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_1B98ECDAC(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_1B98ECEDC(uint64_t a1)
{
  sub_1B98F59F8();
  v4 = sub_1B98F5598();
  if (v1 <= 0x3F)
  {
    v4 = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B98ED0B8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t *sub_1B98ED1AC()
{
  if (qword_1EBBD4ED0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA9C8;
}

uint64_t *sub_1B98ED20C()
{
  if (qword_1EBBD4ED8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD6208;
}

uint64_t *sub_1B98ED26C()
{
  if (qword_1EBBD4EE8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD6218;
}

uint64_t sub_1B98ED2CC()
{
  result = sub_1B98F55E8("Library", 7, 1);
  qword_1EBBDA948 = result;
  qword_1EBBDA950 = v1;
  return result;
}

uint64_t *sub_1B98ED310()
{
  if (qword_1EBBD4E90 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA948;
}

uint64_t sub_1B98ED370()
{
  v1 = *sub_1B98ED310();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98ED3AC()
{
  result = sub_1B98F55E8("Application Support", 19, 1);
  qword_1EBBDA958 = result;
  qword_1EBBDA960 = v1;
  return result;
}

uint64_t *sub_1B98ED3F0()
{
  if (qword_1EBBD4E98 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA958;
}

uint64_t sub_1B98ED450()
{
  v1 = *sub_1B98ED3F0();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98ED48C()
{
  result = sub_1B98F55E8("com.apple.CommunicationTrust", 28, 1);
  qword_1EBBDA968 = result;
  qword_1EBBDA970 = v1;
  return result;
}

uint64_t *sub_1B98ED4D0()
{
  if (qword_1EBBD4EA0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA968;
}

uint64_t sub_1B98ED530()
{
  v1 = *sub_1B98ED4D0();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98ED56C()
{
  result = sub_1B98F55E8("Store", 5, 1);
  qword_1EBBDA978 = result;
  qword_1EBBDA980 = v1;
  return result;
}

uint64_t *sub_1B98ED5B0()
{
  if (qword_1EBBD4EA8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA978;
}

uint64_t sub_1B98ED610()
{
  v1 = *sub_1B98ED5B0();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98ED64C()
{
  result = sub_1B98F55E8("CommunicationTrust", 18, 1);
  qword_1EBBDA988 = result;
  qword_1EBBDA990 = v1;
  return result;
}

uint64_t *sub_1B98ED690()
{
  if (qword_1EBBD4EB0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA988;
}

uint64_t sub_1B98ED6F0()
{
  v1 = *sub_1B98ED690();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98ED72C()
{
  result = sub_1B98F55E8("sqlitedb", 8, 1);
  qword_1EBBDA998 = result;
  qword_1EBBDA9A0 = v1;
  return result;
}

uint64_t *sub_1B98ED770()
{
  if (qword_1EBBD4EB8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA998;
}

uint64_t sub_1B98ED7D0()
{
  v1 = *sub_1B98ED770();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98ED80C()
{
  result = sub_1B98F55E8("CommunicationTrust", 18, 1);
  qword_1EBBDA9A8 = result;
  qword_1EBBDA9B0 = v1;
  return result;
}

uint64_t *sub_1B98ED850()
{
  if (qword_1EBBD4EC0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA9A8;
}

uint64_t sub_1B98ED8B0()
{
  v1 = *sub_1B98ED850();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98ED8EC()
{
  result = sub_1B98F55E8("momd", 4, 1);
  qword_1EBBDA9B8 = result;
  qword_1EBBDA9C0 = v1;
  return result;
}

uint64_t *sub_1B98ED930()
{
  if (qword_1EBBD4EC8 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA9B8;
}

uint64_t sub_1B98ED990()
{
  v1 = *sub_1B98ED930();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98ED9CC()
{
  result = sub_1B98F55E8("CommunicationTrust", 18, 1);
  qword_1EBBDA9C8 = result;
  qword_1EBBDA9D0 = v1;
  return result;
}

uint64_t sub_1B98EDA10()
{
  v1 = *sub_1B98ED1AC();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98EDA4C()
{
  result = sub_1B98F55E8("com.apple.CommunicationTrust", 28, 1);
  qword_1EBBD6208 = result;
  qword_1EBBD6210 = v1;
  return result;
}

uint64_t static Constants.bundleIdentifier.getter()
{
  v1 = *sub_1B98ED20C();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98EDACC()
{
  result = sub_1B98F55E8("group.com.apple.callhistoryd", 28, 1);
  qword_1EBBDA9D8 = result;
  qword_1EBBDA9E0 = v1;
  return result;
}

uint64_t *sub_1B98EDB10()
{
  if (qword_1EBBD4EE0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA9D8;
}

uint64_t sub_1B98EDB70()
{
  v1 = *sub_1B98EDB10();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B98EDBAC()
{
  result = sub_1B98F55E8("trustScoreOverrideKey", 21, 1);
  qword_1EBBD6218 = result;
  qword_1EBBD6220 = v1;
  return result;
}

uint64_t static Constants.trustScoreOverrideKey.getter()
{
  v1 = *sub_1B98ED26C();
  sub_1B98F54D8();
  return v1;
}

uint64_t getEnumTagSinglePayload for Constants(unsigned __int8 *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Constants(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B98EDFB8(uint64_t a1, uint64_t a2)
{
  v37 = 0;
  v38 = a1;
  v39 = a2;
  v30 = container_query_create();
  if (v30)
  {
    v37 = v30;
    sub_1B98F54D8();
    if (a2)
    {
      sub_1B98F54D8();
      v28 = sub_1B98F5698();

      xpc_string_create((v28 + 32));
      swift_unknownObjectRelease();

      container_query_set_group_identifiers();
      swift_unknownObjectRelease();
    }

    v35 = 0;
    v36 = 0;
    v27 = [objc_opt_self() currentPersona];
    if (v27)
    {
      v2 = [v27 isDataSeparatedPersona];
      if ((v2 & 1) != 0 && ((v26 = [v27 userPersonaUniqueString]) == 0 ? (v24 = 0, v25 = 0) : (v22 = sub_1B98F5658(), v23 = v3, MEMORY[0x1E69E5920](v26), v24 = v22, v25 = v23), v25))
      {
        v4 = sub_1B98F5708();
        if ((v4 & 1) == 0)
        {
          sub_1B98F54D8();
          v35 = v24;
          v36 = v25;
        }

        MEMORY[0x1E69E5920](v27);
      }

      else
      {
        MEMORY[0x1E69E5920](v27);
      }
    }

    sub_1B98F54D8();
    v31 = v35;
    v32 = v36;
    if (v36)
    {
      v33 = v31;
      v34 = v32;
    }

    else
    {
      v33 = sub_1B98F56F8();
      v34 = v5;
    }

    sub_1B98F54D8();
    sub_1B98F5698();

    container_query_set_persona_unique_string();
    swift_unknownObjectRelease();

    container_query_set_class();
    type metadata accessor for container_query_flags_t(0);
    sub_1B98F5F98();
    *v6 = 1;
    v6[1] = 0x800000000;
    v6[2] = 0x100000000;
    sub_1B9851B38();
    sub_1B98555FC();
    sub_1B98F5C88();
    container_query_operation_set_flags();
    single_result = container_query_get_single_result();
    if (single_result)
    {
      path = container_get_path();
      if (path)
      {
        if (strlen(path) > 0)
        {
          sub_1B98EE870(single_result);
          v19 = sub_1B98F56F8();

          sub_1B985EE4C(&v35);
          sub_1B98EE74C();
          return v19;
        }

        sub_1B98EE6D0();
        swift_allocError();
        *v8 = 0;
        *(v8 + 8) = 0;
        *(v8 + 16) = 2;
        swift_willThrow();

        sub_1B985EE4C(&v35);
        sub_1B98EE74C();
      }

      else
      {
        v17 = sub_1B98EE774();
        v18 = v9;
        sub_1B98F54D8();
        sub_1B98EE6D0();
        swift_allocError();
        *v10 = v17;
        *(v10 + 8) = v18;
        *(v10 + 16) = 0;
        swift_willThrow();

        sub_1B985EE4C(&v35);
        sub_1B98EE74C();
      }
    }

    else
    {
      v15 = sub_1B98EE774();
      v16 = v11;
      sub_1B98F54D8();
      sub_1B98EE6D0();
      swift_allocError();
      *v12 = v15;
      *(v12 + 8) = v16;
      *(v12 + 16) = 1;
      swift_willThrow();

      sub_1B985EE4C(&v35);
      sub_1B98EE74C();
    }
  }

  else
  {
    sub_1B98EE6D0();
    swift_allocError();
    *v13 = 1;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    swift_willThrow();
  }

  return v14;
}

unint64_t sub_1B98EE6D0()
{
  v2 = qword_1EBBD6228;
  if (!qword_1EBBD6228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98EE774()
{
  if (!container_query_get_last_error())
  {
    return sub_1B98F55E8("", 0, 1);
  }

  v0 = container_error_copy_unlocalized_description();
  v4 = v0;
  if (!v0)
  {
    return sub_1B98F55E8("", 0, 1);
  }

  v5 = strlen(v0);
  v2 = sub_1B98F56F8();
  sub_1B98EF0CC(v4, v5);
  return v2;
}

uint64_t sub_1B98EE870(uint64_t a1)
{
  v59 = a1;
  v78 = 0;
  v58 = 0;
  v73 = 0;
  v72 = 0;
  v60 = sub_1B98F5138();
  v61 = *(v60 - 8);
  v62 = v61;
  v63 = *(v61 + 64);
  v1 = MEMORY[0x1EEE9AC00](v59);
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = &v12 - v65;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v66 = &v12 - v65;
  v78 = v2;
  v67 = container_copy_sandbox_token();
  if (v67)
  {
    v57 = v67;
    v56 = v67;
    v73 = v67;
    v72 = sandbox_extension_consume();
    if (v72 == -1)
    {
      v3 = v66;
      v4 = sub_1B98F1FB0();
      (*(v62 + 16))(v3, v4, v60);
      v53 = sub_1B98F5118();
      v50 = v53;
      v52 = sub_1B98F5BB8();
      v51 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
      v54 = sub_1B98F5F98();
      if (os_log_type_enabled(v53, v52))
      {
        v5 = v58;
        v41 = sub_1B98F5C28();
        v37 = v41;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v39 = 0;
        v42 = sub_1B985263C(0, v38, v38);
        v40 = v42;
        v43 = sub_1B985263C(v39, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v71 = v41;
        v70 = v42;
        v69 = v43;
        v44 = 0;
        v45 = &v71;
        sub_1B9852690(0, &v71);
        sub_1B9852690(v44, v45);
        v68 = v54;
        v46 = &v12;
        MEMORY[0x1EEE9AC00](&v12);
        v47 = &v12 - 6;
        *(&v12 - 4) = v6;
        *(&v12 - 3) = &v70;
        *(&v12 - 2) = &v69;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
        sub_1B9852720();
        sub_1B98F57D8();
        v49 = v5;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1B982F000, v50, v51, "token/process not valid for extension", v37, 2u);
          v35 = 0;
          sub_1B985281C(v40, 0, v38);
          sub_1B985281C(v43, v35, MEMORY[0x1E69E7CA0] + 8);
          sub_1B98F5C08();

          v36 = v49;
        }
      }

      else
      {

        v36 = v58;
      }

      v34 = v36;

      (*(v62 + 8))(v66, v60);
      sub_1B98EF07C(v56);
      return v34;
    }

    else
    {
      sub_1B98EF07C(v56);
      return v58;
    }
  }

  else
  {
    v7 = v64;
    v8 = sub_1B98F1FB0();
    (*(v62 + 16))(v7, v8, v60);
    v32 = sub_1B98F5118();
    v29 = v32;
    v31 = sub_1B98F5BB8();
    v30 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v33 = sub_1B98F5F98();
    if (os_log_type_enabled(v32, v31))
    {
      v9 = v58;
      v20 = sub_1B98F5C28();
      v16 = v20;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v18 = 0;
      v21 = sub_1B985263C(0, v17, v17);
      v19 = v21;
      v22 = sub_1B985263C(v18, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v77 = v20;
      v76 = v21;
      v75 = v22;
      v23 = 0;
      v24 = &v77;
      sub_1B9852690(0, &v77);
      sub_1B9852690(v23, v24);
      v74 = v33;
      v25 = &v12;
      MEMORY[0x1EEE9AC00](&v12);
      v26 = &v12 - 6;
      *(&v12 - 4) = v10;
      *(&v12 - 3) = &v76;
      *(&v12 - 2) = &v75;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v28 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v29, v30, "token not sent by container", v16, 2u);
        v14 = 0;
        sub_1B985281C(v19, 0, v17);
        sub_1B985281C(v22, v14, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v15 = v28;
      }
    }

    else
    {

      v15 = v58;
    }

    v13 = v15;

    (*(v62 + 8))(v64, v60);
    return v13;
  }
}

uint64_t sub_1B98EF07C(const char *a1)
{
  strlen(a1);
  sub_1B98F5C18();
  return sub_1B98F5C08();
}

uint64_t get_enum_tag_for_layout_string_18CommunicationTrust20DaemonContainerErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3u) < 2)
  {
    return *(a1 + 16) & 3;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_1B98EF1A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B98EF298(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 16) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B98EF454(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = a2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 2;
  }

  return result;
}

uint64_t sub_1B98EF4D0()
{
  if (qword_1EBBD4F00 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F4F88();
  return __swift_project_value_buffer(v0, qword_1EBBDAA18);
}

void sub_1B98EF53C(uint64_t a1)
{
  v91 = a1;
  v98 = 0;
  v70 = sub_1B98F1780;
  v71 = sub_1B98F1858;
  v72 = sub_1B98F194C;
  v73 = sub_1B98F1934;
  v74 = sub_1B98F1974;
  v75 = sub_1B98F1980;
  v76 = sub_1B98F193C;
  v77 = sub_1B98F1944;
  v78 = sub_1B98F1958;
  v79 = sub_1B98F1964;
  v80 = sub_1B98F196C;
  v81 = sub_1B98F198C;
  v112 = *MEMORY[0x1E69E9840];
  v108 = 0;
  v106 = 0;
  v82 = 0;
  v83 = sub_1B98F5138();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v87 = v34 - v86;
  v96 = sub_1B98F4F88();
  v94 = *(v96 - 8);
  v95 = v96 - 8;
  v88 = v94;
  v89 = *(v94 + 64);
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v91);
  v2 = v34 - v90;
  v97 = v34 - v90;
  v108 = v1;
  v111 = 0;
  v101 = [objc_opt_self() defaultManager];
  v92 = *(v94 + 16);
  v93 = v94 + 16;
  v92(v2, v91, v96);
  v100 = sub_1B98F4F68();
  (*(v94 + 8))(v97, v96);
  v107 = v111;
  v102 = [v101 createDirectoryAtURL:v100 withIntermediateDirectories:1 attributes:v98 error:&v107];
  v99 = v107;
  MEMORY[0x1E69E5928](v107);
  v3 = v111;
  v111 = v99;
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v100);
  MEMORY[0x1E69E5920](v101);
  if ((v102 & 1) == 0)
  {
    v45 = v111;
    v49 = sub_1B98F4F38();
    MEMORY[0x1E69E5920](v45);
    swift_willThrow();
    v4 = v87;
    v46 = 0;
    v5 = v49;
    v106 = v49;
    v6 = sub_1B98F1ED8();
    (*(v84 + 16))(v4, v6, v83);
    v92(v97, v91, v96);
    v47 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v56 = 7;
    v48 = swift_allocObject();
    (*(v94 + 32))(v48 + v47, v97, v96);

    v55 = 32;
    v7 = swift_allocObject();
    v8 = v48;
    v50 = v7;
    *(v7 + 16) = v70;
    *(v7 + 24) = v8;

    v9 = v49;
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    sub_1B98745B0();

    v68 = sub_1B98F5118();
    v69 = sub_1B98F5BB8();
    v52 = 17;
    v59 = swift_allocObject();
    *(v59 + 16) = 34;
    v60 = swift_allocObject();
    v53 = 8;
    *(v60 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v50;
    v51 = v10;
    *(v10 + 16) = v71;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v51;
    v61 = v12;
    *(v12 + 16) = v72;
    *(v12 + 24) = v13;
    v62 = swift_allocObject();
    *(v62 + 16) = 66;
    v63 = swift_allocObject();
    *(v63 + 16) = v53;
    v14 = swift_allocObject();
    v15 = v54;
    v57 = v14;
    *(v14 + 16) = v73;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v57;
    v58 = v16;
    *(v16 + 16) = v74;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v58;
    v65 = v18;
    *(v18 + 16) = v75;
    *(v18 + 24) = v19;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v64 = sub_1B98F5F98();
    v66 = v20;

    v21 = v59;
    v22 = v66;
    *v66 = v76;
    v22[1] = v21;

    v23 = v60;
    v24 = v66;
    v66[2] = v77;
    v24[3] = v23;

    v25 = v61;
    v26 = v66;
    v66[4] = v78;
    v26[5] = v25;

    v27 = v62;
    v28 = v66;
    v66[6] = v79;
    v28[7] = v27;

    v29 = v63;
    v30 = v66;
    v66[8] = v80;
    v30[9] = v29;

    v31 = v65;
    v32 = v66;
    v66[10] = v81;
    v32[11] = v31;
    sub_1B9851B38();

    if (os_log_type_enabled(v68, v69))
    {
      v33 = v46;
      v37 = sub_1B98F5C28();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v36 = 1;
      v38 = sub_1B985263C(1, v35, v35);
      v39 = sub_1B985263C(v36, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v41 = &v105;
      v105 = v37;
      v42 = &v110;
      v110 = v38;
      v43 = &v109;
      v109 = v39;
      v40 = 2;
      sub_1B9852690(2, &v105);
      sub_1B9852690(v40, v41);
      v103 = v76;
      v104 = v59;
      sub_1B98526A4(&v103, v41, v42, v43);
      v44 = v33;
      if (v33)
      {

        __break(1u);
      }

      else
      {
        v103 = v77;
        v104 = v60;
        sub_1B98526A4(&v103, &v105, &v110, &v109);
        v34[4] = 0;
        v103 = v78;
        v104 = v61;
        sub_1B98526A4(&v103, &v105, &v110, &v109);
        v34[3] = 0;
        v103 = v79;
        v104 = v62;
        sub_1B98526A4(&v103, &v105, &v110, &v109);
        v34[2] = 0;
        v103 = v80;
        v104 = v63;
        sub_1B98526A4(&v103, &v105, &v110, &v109);
        v34[1] = 0;
        v103 = v81;
        v104 = v65;
        sub_1B98526A4(&v103, &v105, &v110, &v109);
        _os_log_impl(&dword_1B982F000, v68, v69, "MessageStore: Failed to create directories to URL: %{public}s: %{public}@", v37, 0x16u);
        v34[0] = 1;
        sub_1B985281C(v38, 1, v35);
        sub_1B985281C(v39, v34[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v68);
    (*(v84 + 8))(v87, v83);
  }
}

uint64_t sub_1B98F03F0()
{
  v2 = sub_1B98F4F88();
  __swift_allocate_value_buffer(v2, qword_1EBBDA9E8);
  v0 = __swift_project_value_buffer(v2, qword_1EBBDA9E8);
  return sub_1B98F043C(v0);
}

uint64_t sub_1B98F043C@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v51 = sub_1B98F1A24;
  v52 = sub_1B98F1A98;
  v53 = sub_1B98F1B04;
  v54 = sub_1B98F1AF4;
  v55 = sub_1B98F1AFC;
  v56 = sub_1B98F1B10;
  v57 = "Fatal error";
  v58 = "CommunicationTrust/FileUtilities.swift";
  v83 = 0;
  v82[7] = 0;
  v64 = 0;
  v59 = sub_1B98F5138();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v63 = v22 - v62;
  v65 = sub_1B98F4F88();
  v67 = *(v65 - 8);
  v66 = v65 - 8;
  v68 = v67;
  v69 = *(v67 + 64);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v71 = v22 - v70;
  v72 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22 - v70);
  v73 = v22 - v72;
  v83 = v22 - v72;
  v3 = sub_1B98EDFB8(v2, v2);
  v74 = 0;
  v75 = v3;
  v76 = v4;
  v77 = 0;
  v5 = v63;
  v31 = v4;
  sub_1B98F4F58();

  v6 = sub_1B98F1ED8();
  (*(v60 + 16))(v5, v6, v59);
  v34 = v68;
  v32 = *(v67 + 16);
  v33 = v67 + 16;
  v32(v71, v73, v65);
  v35 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v39 = 7;
  v36 = swift_allocObject();
  (*(v67 + 32))(v36 + v35, v71, v65);

  v38 = 32;
  v7 = swift_allocObject();
  v8 = v36;
  v40 = v7;
  *(v7 + 16) = v51;
  *(v7 + 24) = v8;

  v48 = sub_1B98F5118();
  v49 = sub_1B98F5BD8();
  v37 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 34;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v40;
  v41 = v9;
  *(v9 + 16) = v52;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v41;
  v45 = v11;
  *(v11 + 16) = v53;
  *(v11 + 24) = v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v44 = sub_1B98F5F98();
  v46 = v13;

  v14 = v42;
  v15 = v46;
  *v46 = v54;
  v15[1] = v14;

  v16 = v43;
  v17 = v46;
  v46[2] = v55;
  v17[3] = v16;

  v18 = v45;
  v19 = v46;
  v46[4] = v56;
  v19[5] = v18;
  sub_1B9851B38();

  if (os_log_type_enabled(v48, v49))
  {
    v20 = v74;
    v24 = sub_1B98F5C28();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v25 = sub_1B985263C(0, v23, v23);
    v26 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v27 = v82;
    v82[0] = v24;
    v28 = &v81;
    v81 = v25;
    v29 = &v80;
    v80 = v26;
    sub_1B9852690(2, v82);
    sub_1B9852690(1, v27);
    v78 = v54;
    v79 = v42;
    sub_1B98526A4(&v78, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v78 = v55;
      v79 = v43;
      sub_1B98526A4(&v78, v82, &v81, &v80);
      v22[8] = 0;
      v78 = v56;
      v79 = v45;
      sub_1B98526A4(&v78, v82, &v81, &v80);
      _os_log_impl(&dword_1B982F000, v48, v49, "DaemonContainerURL: %{public}s", v24, 0xCu);
      sub_1B985281C(v25, 0, v23);
      sub_1B985281C(v26, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v48);
  (*(v60 + 8))(v63, v59);
  sub_1B98EF53C(v73);
  v32(v50, v73, v65);
  return (*(v67 + 8))(v73, v65);
}

uint64_t sub_1B98F0F8C()
{
  if (qword_1EBBD4EF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F4F88();
  return __swift_project_value_buffer(v0, qword_1EBBDA9E8);
}

uint64_t sub_1B98F0FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F0F8C();
  v1 = sub_1B98F4F88();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F105C()
{
  v5 = 0;
  v17 = sub_1B98F4F48();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v5 - v6;
  v21 = sub_1B98F4F88();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v7 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v21);
  v1 = &v5 - v7;
  v22 = &v5 - v7;
  v8 = qword_1EBBDAA00;
  __swift_allocate_value_buffer(v0, qword_1EBBDAA00);
  v11 = __swift_project_value_buffer(v21, v8);
  v2 = sub_1B98F0F8C();
  (*(v19 + 16))(v1, v2, v21);
  v3 = sub_1B98ED5B0();
  v9 = *v3;
  v10 = v3[1];
  sub_1B98F54D8();
  v18 = v23;
  v23[0] = v9;
  v23[1] = v10;
  v13 = sub_1B98F1998();
  v12 = MEMORY[0x1E69E6158];
  sub_1B98F1270(v16);
  sub_1B98F4F78();
  (*(v14 + 8))(v16, v17);
  sub_1B9868BFC(v18);
  return (*(v19 + 8))(v22, v21);
}

uint64_t sub_1B98F1270@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6968F70];
  v1 = sub_1B98F4F48();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1B98F12E0()
{
  if (qword_1EBBD4EF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F4F88();
  return __swift_project_value_buffer(v0, qword_1EBBDAA00);
}

uint64_t sub_1B98F134C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F12E0();
  v1 = sub_1B98F4F88();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F13B0()
{
  v30 = 0;
  v43 = sub_1B98F4F48();
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v16 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v42 = &v15 - v16;
  v47 = sub_1B98F4F88();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v17 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v47);
  v48 = &v15 - v17;
  v18 = qword_1EBBDAA18;
  __swift_allocate_value_buffer(v0, qword_1EBBDAA18);
  v37 = __swift_project_value_buffer(v47, v18);
  v1 = sub_1B98F12E0();
  (*(v45 + 16))(v48, v1, v47);
  v23 = 1;
  v2 = sub_1B98F5F88();
  v34 = &v52;
  v52 = v2;
  v53 = v3;
  v32 = "";
  v31 = 1;
  v4 = sub_1B98F55E8("", v30, 1);
  v19 = v5;
  MEMORY[0x1BFADDF00](v4);

  v6 = sub_1B98ED690();
  v20 = *v6;
  v21 = v6[1];
  sub_1B98F54D8();
  v22 = v51;
  v51[0] = v20;
  v51[1] = v21;
  v38 = MEMORY[0x1E69E6158];
  v27 = MEMORY[0x1E69E61C8];
  v28 = MEMORY[0x1E69E61C0];
  sub_1B98F5F68();
  sub_1B9868BFC(v22);
  v7 = sub_1B98F55E8(".", v23, v31 & 1);
  v24 = v8;
  MEMORY[0x1BFADDF00](v7);

  v9 = sub_1B98ED770();
  v25 = *v9;
  v26 = v9[1];
  sub_1B98F54D8();
  v29 = v50;
  v50[0] = v25;
  v50[1] = v26;
  sub_1B98F5F68();
  sub_1B9868BFC(v29);
  v10 = sub_1B98F55E8(v32, v30, v31 & 1);
  v33 = v11;
  MEMORY[0x1BFADDF00](v10);

  v36 = v52;
  v35 = v53;
  sub_1B98F54D8();
  sub_1B9856788(v34);
  v12 = sub_1B98F56A8();
  v44 = v49;
  v49[0] = v12;
  v49[1] = v13;
  v39 = sub_1B98F1998();
  sub_1B98F1270(v42);
  sub_1B98F4F78();
  (*(v40 + 8))(v42, v43);
  sub_1B9868BFC(v44);
  return (*(v45 + 8))(v48, v47);
}

uint64_t sub_1B98F1780@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B98F4F88();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B98F0368(v3, a1);
}

uint64_t sub_1B98F17F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98EF4D0();
  v1 = sub_1B98F4F88();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F1858()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B98F4F88();
  v1 = sub_1B98F18B4();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98F18B4()
{
  v2 = qword_1EBBD6230;
  if (!qword_1EBBD6230)
  {
    sub_1B98F4F88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98F1998()
{
  v2 = qword_1EBBD6238;
  if (!qword_1EBBD6238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98F1A24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B98F4F88();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B98F0F2C(v3, a1);
}

uint64_t sub_1B98F1A98()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B98F4F88();
  v1 = sub_1B98F18B4();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98F1B1C()
{
  if (qword_1EDBDB328 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EDBDD4A0);
}

uint64_t sub_1B98F1B88(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v26 = a2;
  v29 = 0;
  v28 = 0;
  v30 = a2;
  v18 = sub_1B98F5C38();
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v17);
  v27 = &v13 - v19;
  v24 = *(v3 - 8);
  v25 = v3 - 8;
  v20 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v21 = &v13 - v20;
  v22 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v23 = &v13 - v22;
  v29 = &v13 - v22;
  v28 = v6;
  sub_1B98F243C(v6, v7, v8, v9);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    sub_1B98F254C(v27, v26);
    v15 = sub_1B98F55E8("nil", 3, 1);
    v16 = v11;
  }

  else
  {
    (*(v24 + 32))(v23, v27, v26);
    (*(v24 + 16))(v21, v23, v26);
    v13 = sub_1B98F5688();
    v14 = v10;
    (*(v24 + 8))(v23, v26);
    v15 = v13;
    v16 = v14;
  }

  return v15;
}

uint64_t sub_1B98F1E00()
{
  if (qword_1EDBDAC50 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EDBDD470);
}

uint64_t sub_1B98F1E6C()
{
  if (qword_1EDBDAC60 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EDBDD488);
}

uint64_t sub_1B98F1ED8()
{
  if (qword_1EBBD4F18 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EBBDAA48);
}

uint64_t sub_1B98F1F44()
{
  if (qword_1EDBDB338 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EDBDD4B8);
}

uint64_t sub_1B98F1FB0()
{
  if (qword_1EBBD4F10 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5138();
  return __swift_project_value_buffer(v0, qword_1EBBDAA30);
}

uint64_t sub_1B98F201C()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EDBDD4B8);
  __swift_project_value_buffer(v1, qword_1EDBDD4B8);
  sub_1B98F55E8("com.apple.communicationTrust", 28, 1);
  sub_1B98F55E8("Cache", 5, 1);
  return sub_1B98F5128();
}

uint64_t sub_1B98F20C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1F44();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F2124()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EBBDAA30);
  __swift_project_value_buffer(v1, qword_1EBBDAA30);
  sub_1B98F55E8("com.apple.communicationTrust", 28, 1);
  sub_1B98F55E8("Security", 8, 1);
  return sub_1B98F5128();
}

uint64_t sub_1B98F21C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1FB0();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F222C()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EBBDAA48);
  __swift_project_value_buffer(v1, qword_1EBBDAA48);
  sub_1B98F55E8("com.apple.communicationTrust", 28, 1);
  sub_1B98F55E8("Store", 5, 1);
  return sub_1B98F5128();
}

uint64_t sub_1B98F22D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1ED8();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F2334()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EDBDD470);
  __swift_project_value_buffer(v1, qword_1EDBDD470);
  sub_1B98F55E8("com.apple.communicationTrust", 28, 1);
  sub_1B98F55E8("Host", 4, 1);
  return sub_1B98F5128();
}

uint64_t sub_1B98F23D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1E00();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_1B98F243C(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_1B98F254C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_1B98F25F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1B1C();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F2654()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EDBDD488);
  __swift_project_value_buffer(v1, qword_1EDBDD488);
  sub_1B98F55E8("com.apple.communicationTrust", 28, 1);
  sub_1B98F55E8("DataSource", 10, 1);
  return sub_1B98F5128();
}

uint64_t sub_1B98F26F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F1E6C();
  v1 = sub_1B98F5138();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F275C()
{
  v2[1] = 0;
  v8 = sub_1B98F5138();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = v2 - v3;
  v5 = sub_1B98F5108();
  v4 = qword_1EBBDAA60;
  __swift_allocate_value_buffer(v5, qword_1EBBDAA60);
  v9 = __swift_project_value_buffer(v5, v4);
  v0 = sub_1B98F1ED8();
  (*(v6 + 16))(v10, v0, v8);
  return sub_1B98F50F8();
}

uint64_t sub_1B98F2850()
{
  if (qword_1EBBD4F28 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5108();
  return __swift_project_value_buffer(v0, qword_1EBBDAA60);
}

uint64_t sub_1B98F28BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98F2850();
  v1 = sub_1B98F5108();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B98F2920(uint64_t a1, void *a2)
{
  v20 = 0;
  v21 = 0;
  v19[3] = a1;
  v19[2] = a2;
  v19[1] = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD6240, qword_1B98FDF00);
  v2 = sub_1B98F2DE8();
  v19[0] = sub_1B985D064(sub_1B98F2C3C, 0, v16, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v17);
  sub_1B98F55E8(", ");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  sub_1B98F2E70();
  v11 = sub_1B98F55F8();
  v12 = v3;

  sub_1B9879B08(v19);
  v18[2] = v11;
  v18[3] = v12;
  v18[0] = sub_1B98F5F88();
  v18[1] = v4;
  v5 = sub_1B98F55E8("<");
  MEMORY[0x1BFADDF00](v5);

  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  sub_1B98F2EF8(DynamicType);
  v7 = sub_1B98F55E8(" ", 1, 1);
  MEMORY[0x1BFADDF00](v7);

  sub_1B98F5F68();
  v8 = sub_1B98F55E8(">", 1, 1);
  MEMORY[0x1BFADDF00](v8);

  sub_1B98F54D8();
  sub_1B9856788(v18);
  sub_1B98F56A8();
  v14 = sub_1B98F5778();
  v13 = v9;
  sub_1B98F54D8();
  v20 = v14;
  v21 = v13;

  __swift_destroy_boxed_opaque_existential_0(a2);

  sub_1B9868BFC(&v20);
  return v14;
}

uint64_t sub_1B98F2C3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v13[2] = a1;
  v13[0] = sub_1B98F5F88();
  v13[1] = v2;
  v3 = sub_1B98F55E8("", 0, 1);
  MEMORY[0x1BFADDF00](v3);

  v4 = a1[1];
  v12[2] = *a1;
  v12[3] = v4;
  sub_1B98F5F68();
  v5 = sub_1B98F55E8("=");
  MEMORY[0x1BFADDF00](v5);

  v12[0] = sub_1B98F1B88((a1 + 2), MEMORY[0x1E69E7CA0] + 8);
  v12[1] = v6;
  sub_1B98F5F68();
  sub_1B9868BFC(v12);
  v7 = sub_1B98F55E8(")", 1, 1);
  MEMORY[0x1BFADDF00](v7);

  sub_1B98F54D8();
  sub_1B9856788(v13);
  result = sub_1B98F56A8();
  *a2 = result;
  a2[1] = v9;
  return result;
}

unint64_t sub_1B98F2DE8()
{
  v2 = qword_1EBBD6248;
  if (!qword_1EBBD6248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD6240, qword_1B98FDF00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98F2E70()
{
  v2 = qword_1EBBD6250;
  if (!qword_1EBBD6250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD6250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98F2EF8(uint64_t a1)
{
  v1 = sub_1B98F6168();
  MEMORY[0x1BFADD670](v1);
}

uint64_t sub_1B98F2F58()
{
  v3 = CPPhoneNumberCopyHomeCountryCode();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1B98F5E08();
    __break(1u);
  }

  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v2);
  v1 = sub_1B98F5658();
  MEMORY[0x1E69E5920](v2);
  return v1;
}

uint64_t sub_1B98F3070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v39 = a1;
  v40 = a2;
  v37 = a3;
  v38 = a4;
  v35 = 0;
  v36 = 0;
  v26 = *MEMORY[0x1E695E480];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E480]);
  v34 = v26;
  sub_1B98F54D8();
  v27 = sub_1B98F5648();
  sub_1B98F54D8();
  if (a4)
  {
    v24 = sub_1B98F5648();

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    v23 = v25;
  }

  else
  {
    v23 = 0;
  }

  v22 = _PNCopyStrippedNumberWithoutPauses();
  MEMORY[0x1E69E5920](v23);
  MEMORY[0x1E69E5920](v27);

  if (v22)
  {
    v21 = v22;
  }

  else
  {
    sub_1B98F5E08();
    __break(1u);
  }

  MEMORY[0x1E69E5928](v21);
  MEMORY[0x1E69E5928](v21);
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](v21);
  v19 = sub_1B98F5658();
  v20 = v4;
  v32 = v19;
  v33 = v4;
  MEMORY[0x1E69E5920](v21);
  sub_1B98F54D8();
  v30 = v19;
  v31 = v20;
  if (sub_1B98F56D8() > 0)
  {
    sub_1B98F54D8();
    v18 = sub_1B98F5648();
    sub_1B98F54D8();
    if (a4)
    {
      v16 = sub_1B98F5648();

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v15 = v17;
    }

    else
    {
      v15 = 0;
    }

    v14 = CFPhoneNumberCreate();
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v18);

    if (v14)
    {
      MEMORY[0x1E69E5928](v14);
      String = CFPhoneNumberCreateString();
      MEMORY[0x1E69E5920](v14);
      if (String)
      {
        v9 = sub_1B98F5658();
        v10 = v5;
        MEMORY[0x1E69E5920](String);
        v11 = v9;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      v35 = v11;
      v36 = v12;

      MEMORY[0x1E69E5920](v14);
    }

    sub_1B98F54D8();
    v29[0] = v35;
    v29[1] = v36;
    v8 = v36 == 0;
    sub_1B985EE4C(v29);
    if (v8)
    {
      sub_1B98F54D8();
      v35 = v19;
      v36 = v20;
    }
  }

  v7 = v35;
  sub_1B98F54D8();

  MEMORY[0x1E69E5920](v26);
  sub_1B985EE4C(&v35);
  return v7;
}

uint64_t sub_1B98F3648()
{
  v11 = 0;
  v3 = *v0;
  v11 = v0;
  v10 = v3[10];
  v9 = v3[11];
  v4 = v0[2];

  v6 = v10;
  v7 = v9;
  v8 = v3[12];
  v1 = sub_1B98F5598();
  sub_1B9875AE4(sub_1B98F4838, v5, v4, v1, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B98F376C(uint64_t a1)
{
  v16 = 0;
  v14 = 0;
  v5 = *v1;
  v16 = a1;
  v15 = v5[10];
  v14 = v1;
  v13 = v5[11];
  v6 = v1[2];

  v9 = v15;
  v10 = v13;
  v11 = v5[12];
  v12 = a1;
  v7 = sub_1B98F5598();
  v2 = sub_1B98F5C38();
  sub_1B9875AE4(sub_1B98F4878, v8, v6, v7, v2);
}

uint64_t sub_1B98F38B8(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v17 = 0;
  v15 = 0;
  v6 = *v2;
  v19 = a1;
  v18 = v6[11];
  v17 = a2;
  v16 = v6[10];
  v15 = v2;
  v8 = v2[2];

  v10 = v16;
  v11 = v18;
  v12 = v6[12];
  v13 = a2;
  v14 = a1;
  v3 = sub_1B98F5598();
  sub_1B9875AE4(sub_1B98F48BC, v9, v8, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B98F3A04(uint64_t a1)
{
  v15 = 0;
  v12 = 0;
  v5 = *v1;
  v15 = a1;
  v14 = v5[10];
  v13 = v5[11];
  v12 = v1;
  v6 = v1[2];

  sub_1B98F54D8();
  v8 = v14;
  v9 = v13;
  v10 = v5[12];
  v11 = a1;
  v2 = sub_1B98F5598();
  sub_1B9875AE4(sub_1B98F4904, v7, v6, v2, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B98F3B54()
{
  v12 = 0;
  v3 = *v0;
  v12 = v0;
  v11 = v3[10];
  v10 = v3[11];
  v4 = v0[2];

  v6 = v11;
  v7 = v10;
  v8 = v3[12];
  v1 = sub_1B98F5598();
  sub_1B9875AE4(sub_1B98F4948, v5, v4, v1, v1);

  return v9;
}

uint64_t sub_1B98F3C74()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B98F3CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[1] = a2;
  v15 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v28 = a4;
  v27 = a5;
  v18 = 0;
  v7 = sub_1B98F5C38();
  v12 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v23 = v11 - v12;
  v14 = *(v8 - 8);
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11 - v12);
  v22 = v11 - v13;
  v26 = a1;
  v25 = v9;
  v24 = v15;
  (*(v14 + 16))();
  v16 = *(v20 - 8);
  v17 = v20 - 8;
  (*(v16 + 16))(v23, v15);
  (*(v16 + 56))(v23, 0, 1, v20);
  sub_1B98F5598();
  return sub_1B98F55C8();
}

void *sub_1B98F3E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v42 = __b;
  v44 = 40;
  memset(__b, 0, sizeof(__b));
  v54 = v39;
  v53 = v40;
  v29 = 0;
  v5 = sub_1B98F5C38();
  v17 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v18 = &v15 - v17;
  v19 = *(v6 - 8);
  v20 = v6 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](&v15 - v17);
  v22 = &v15 - v21;
  v51 = &v15 - v21;
  v23 = *(v8 - 8);
  v24 = v8 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v15 - v25;
  v27 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v25);
  v28 = &v15 - v27;
  v50 = &v15 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = sub_1B98F5C38();
  v34 = *(*(v32 - 8) + 64);
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v38);
  v35 = &v15 - v33;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v15 - v36;
  v49 = v12;
  v48 = v11;
  sub_1B98F54D8();
  v43 = &v52;
  sub_1B98F5498();
  v13 = v45;
  memcpy(v42, v43, v44);
  for (i = v13; ; i = v16)
  {
    v16 = i;
    sub_1B98F5568();
    sub_1B98F5558();
    sub_1B98F4BF0(v35, v37, v39, v40, TupleTypeMetadata2, v32);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v37, 1) == 1)
    {
      break;
    }

    v15 = &v37[*(TupleTypeMetadata2 + 48)];
    (*(v23 + 32))(v28);
    (*(v19 + 32))(v22, v15, v40);
    (*(v23 + 16))(v26, v28, v39);
    (*(v19 + 16))(v18, v22, v40);
    (*(v19 + 56))(v18, 0, 1, v40);
    sub_1B98F5598();
    sub_1B98F55C8();
    (*(v19 + 8))(v22, v40);
    (*(v23 + 8))(v28, v39);
  }

  result = __b;
  sub_1B98F4D58(__b);
  return result;
}

uint64_t sub_1B98F446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = a5;
  v8 = a1;
  v15 = a2;
  v10 = a3;
  v11 = a4;
  v17 = 0;
  v16 = 0;
  v19 = a2;
  v18 = a3;
  v12 = *(a2 - 8);
  v13 = a2 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v7 - v7;
  v17 = v8;
  v16 = v5;
  (*(v12 + 16))();
  sub_1B98F55B8();
  return (*(v12 + 8))(v14, v15);
}

uint64_t sub_1B98F45D8(uint64_t a1)
{
  v16 = 0;
  v14 = 0;
  v5 = *v1;
  v16 = a1;
  v15 = v5[10];
  v14 = v1;
  v13 = v5[11];
  v6 = v1[2];

  v9 = v15;
  v10 = v13;
  v11 = v5[12];
  v12 = a1;
  v7 = sub_1B98F5598();
  v2 = sub_1B98F5C38();
  sub_1B9875AE4(sub_1B98F4988, v8, v6, v7, v2);
}

uint64_t sub_1B98F47A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B98ED154();
  sub_1B98F5598();
  return sub_1B98F5588();
}

uint64_t sub_1B98F49FC(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

void *sub_1B98F4BB8(void *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

char *sub_1B98F4BF0(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a6 - 8) + 64));
  }

  else
  {
    (*(*(a3 - 8) + 32))(a2, a1);
    (*(*(a4 - 8) + 32))(&a2[*(a5 + 48)], &a1[*(a5 + 48)]);
    (*(v13 + 56))(a2, 0, 1, a5);
  }

  return a2;
}

void *sub_1B98F4DDC()
{
  v6 = 0;
  v4 = *v0;
  v6 = v0;
  v5[2] = *(v4 + 80);
  v5[1] = *(v4 + 88);
  swift_getTupleTypeMetadata2();
  sub_1B98F5F98();
  v5[0] = sub_1B98F54A8();
  v1 = sub_1B98F5598();
  v2 = sub_1B9874638(v5, v1);
  result = v0;
  v0[2] = v2;
  return result;
}