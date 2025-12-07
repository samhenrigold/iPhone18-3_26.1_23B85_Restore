uint64_t PayloadProvider.payload(for:sendingOver:knownClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a2;
  v4[31] = a4;
  v4[29] = a1;
  v4[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v5 = sub_241165BD8();
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2410FA3BC, 0, 0);
}

uint64_t sub_2410FA3BC()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  sub_2410FC88C(v0[31], v3, &qword_27E530658, &unk_241167410);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[38];
    v5 = v0[39];
    v7 = v0[36];
    sub_2410FB29C(v0[37], &qword_27E530658, &unk_241167410);
    (*(v5 + 56))(v7, 1, 1, v6);
    v8 = type metadata accessor for AppExtensionProxy(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
    *(v9 + v10) = sub_2410FC34C(MEMORY[0x277D84F90], &qword_27E5307F8, &qword_2411674C8);
    *(v9 + 16) = 1;
    sub_2410FB22C(v7, v9 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client);
    v48 = v8;
    v0[27] = v8;
    v0[28] = sub_2410FCEE0(&qword_27E530660, type metadata accessor for AppExtensionProxy, &unk_2411697A0);
  }

  else
  {
    v11 = v0[40];
    v12 = v0[41];
    v13 = v0[38];
    v14 = v0[39];
    (*(v14 + 32))(v12, v0[37], v13);
    (*(v14 + 16))(v11, v12, v13);
    v15 = sub_241165CC8();
    v16 = sub_2411653A8();

    v9 = sub_241154E14(v11);
    v48 = type metadata accessor for AppExtensionProxy(0);
    v0[27] = v48;
    v0[28] = sub_2410FCEE0(&qword_27E530660, type metadata accessor for AppExtensionProxy, &unk_2411697A0);
    (*(v14 + 8))(v12, v13);
  }

  v18 = v0[38];
  v17 = v0[39];
  v19 = v0[35];
  v21 = v0[32];
  v20 = v0[33];
  v22 = v0[31];
  v0[24] = v9;
  (*(v17 + 104))(v19, *MEMORY[0x277CEED80], v18);
  (*(v17 + 56))(v19, 0, 1, v18);
  v23 = *(v21 + 48);
  sub_2410FC88C(v22, v20, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v19, v20 + v23, &qword_27E530658, &unk_241167410);
  v24 = v4(v20, 1, v18);
  v25 = v0[38];
  if (v24 == 1)
  {
    sub_2410FB29C(v0[35], &qword_27E530658, &unk_241167410);
    if (v4(v20 + v23, 1, v25) == 1)
    {
      sub_2410FB29C(v0[33], &qword_27E530658, &unk_241167410);
LABEL_12:
      v37 = sub_241165CC8();
      v38 = sub_2411653A8();

      v39 = sub_241165368();
      v41 = v40;

      if (v39 == 0xD00000000000001DLL && 0x800000024116A040 == v41)
      {
      }

      else
      {
        sub_2411663E8();
      }

      goto LABEL_16;
    }

    goto LABEL_9;
  }

  sub_2410FC88C(v0[33], v0[34], &qword_27E530658, &unk_241167410);
  if (v4(v20 + v23, 1, v25) == 1)
  {
    v27 = v0[38];
    v26 = v0[39];
    v28 = v0[34];
    sub_2410FB29C(v0[35], &qword_27E530658, &unk_241167410);
    (*(v26 + 8))(v28, v27);
LABEL_9:
    sub_2410FB29C(v0[33], &qword_27E530650, &qword_241167408);
    goto LABEL_16;
  }

  v30 = v0[39];
  v29 = v0[40];
  v31 = v0[38];
  v33 = v0[34];
  v32 = v0[35];
  v34 = v0[33];
  (*(v30 + 32))(v29, v20 + v23, v31);
  sub_2410FCEE0(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
  v35 = sub_241165D98();
  v36 = *(v30 + 8);
  v36(v29, v31);
  sub_2410FB29C(v32, &qword_27E530658, &unk_241167410);
  v36(v33, v31);
  sub_2410FB29C(v34, &qword_27E530658, &unk_241167410);
  if (v35)
  {
    goto LABEL_12;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v43;
  v44 = sub_2410FB2FC(inited);
  v0[42] = v44;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  __swift_project_boxed_opaque_existential_1(v0 + 24, v48);
  v45 = swift_task_alloc();
  v0[43] = v45;
  *v45 = v0;
  v45[1] = sub_2410FAA00;
  v46 = v0[30];

  return sub_241150BD0((v0 + 2), v46, v44);
}

uint64_t sub_2410FAA00()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_2410FAC3C;
  }

  else
  {
    v2 = sub_2410FAB30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2410FAB30()
{
  v1 = *(v0 + 232);
  v1[3] = &type metadata for MessagesPayload;
  v1[4] = &off_2852EBA28;
  v2 = swift_allocObject();
  *v1 = v2;
  v3 = *(v0 + 32);
  v2[1] = *(v0 + 16);
  v2[2] = v3;
  v4 = *(v0 + 64);
  v2[3] = *(v0 + 48);
  v2[4] = v4;
  v2[5] = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2410FAC3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));

  v1 = *(v0 + 8);

  return v1();
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

void *sub_2410FAD68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2410FAD78(uint64_t a1, uint64_t a2)
{
  sub_2411664A8();
  sub_241165E28();
  v4 = sub_2411664C8();

  return sub_2410FAECC(a1, a2, v4);
}

unint64_t sub_2410FADF0(uint64_t a1)
{
  v2 = sub_241166138();

  return sub_2410FAF84(a1, v2);
}

unint64_t sub_2410FAE34(uint64_t a1)
{
  sub_2411651A8();
  sub_2410FCEE0(&qword_27E530780, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_241165D88();

  return sub_2410FB058(a1, v2);
}

unint64_t sub_2410FAECC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2411663E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2410FAF84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2410FCF28(0, &qword_27E5307A0, 0x277D08268);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_241166148();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2410FB058(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2411651A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2410FCEE0(&qword_27E530788, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_241165D98();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2410FB22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2410FB29C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2410FB2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
    v3 = sub_241166298();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2411664A8();

      sub_241165E28();
      result = sub_2411664C8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2411663E8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
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

uint64_t sub_2410FB548()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_2410FB5B8(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2410FB5B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for PayloadProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PayloadProvider(_WORD *result, int a2, int a3)
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

void sub_2410FB6F0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2411661F8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307D8, &unk_2411674B0);
      v3 = sub_241166298();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2411661F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x245CDBC20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_241166138();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2410FCF28(0, &qword_27E5307E0, 0x277CF0B58);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_241166148();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_241166138();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_2410FCF28(0, &qword_27E5307E0, 0x277CF0B58);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_241166148();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_2410FB9E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530770, &unk_241167470);
    v3 = sub_241166378();
    v4 = a1 + 32;

    while (1)
    {
      sub_2410FC88C(v4, &v13, &unk_27E530E80, &qword_241168920);
      v5 = v13;
      v6 = v14;
      result = sub_2410FAD78(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2410FC87C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FBB24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530688, &qword_241167448);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530690, &qword_241167450);
    v7 = sub_241166378();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2410FC88C(v9, v5, &qword_27E530688, &qword_241167448);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2410FAD78(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PendingAskStore.Metadata(0);
      result = sub_2410FC768(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FBCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307A8, &qword_241167490);
    v3 = sub_241166378();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2410FADF0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FBE04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_241166378();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2410FAD78(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FBF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530790, &qword_241167480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530798, &qword_241167488);
    v7 = sub_241166378();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2410FC88C(v9, v5, &qword_27E530790, &qword_241167480);
      result = sub_2410FAE34(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2411651A8();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_2411659F8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FC120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530768, &qword_241167468);
    v3 = sub_241166378();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2410FAD78(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FC21C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530698, &qword_241167458);
    v3 = sub_241166378();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2410FAD78(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FC34C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_241166378();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2410FAD78(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2410FC448(uint64_t a1)
{
  v2 = sub_241165BD8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530678, &qword_241167440);
    v9 = sub_241166298();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2410FCEE0(&qword_27E530680, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB0]);
      v16 = sub_241165D88();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2410FCEE0(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
          v23 = sub_241165D98();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2410FC768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingAskStore.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2410FC87C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2410FC88C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2410FC8F4(uint64_t a1)
{
  v2 = sub_241165A38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307C0, &qword_2411674A8);
    v9 = sub_241166298();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2410FCEE0(&qword_27E5307C8, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
      v16 = sub_241165D88();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2410FCEE0(&qword_27E5307D0, MEMORY[0x277CEECC0], MEMORY[0x277CEECD0]);
          v23 = sub_241165D98();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2410FCC14(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2411661F8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
      v3 = sub_241166298();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2411661F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x245CDBC20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_241166138();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_241165928();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_241166148();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_241166138();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_241165928();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_241166148();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2410FCEE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2410FCF28(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2410FCF7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2410FCF9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2410FD014(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_2410FD064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() newHandleWithDefinition:a1 configurationContext:a2];
  [v4 activateWithContext_];
}

void sub_2410FD0E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_241165808();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E5339F0);
  v9 = sub_241165268();
  v10 = sub_241166068();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51 = v4;
    v13 = v5;
    v14 = v7;
    v15 = a1;
    v16 = v12;
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_241156B38(0xD00000000000002DLL, 0x800000024116A290, aBlock);
    _os_log_impl(&dword_2410F8000, v9, v10, "%s called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v16;
    a1 = v15;
    v7 = v14;
    v5 = v13;
    v2 = v1;
    v4 = v51;
    MEMORY[0x245CDC5E0](v17, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  sub_2410FDA7C();
  if (!v2)
  {
    v19 = v18;
    v51 = v4;
    v48 = v5;
    v20 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
    sub_241164E68();
    swift_allocObject();
    sub_241164E58();
    aBlock[0] = a1;
    sub_241165668();
    sub_2410FDE70(&qword_27E5309A0, MEMORY[0x277CEEAF8], MEMORY[0x277CEEB00]);
    v46 = sub_241164E48();
    v47 = 0;
    v45 = v21;

    v22 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    v23 = sub_2411650F8();
    v44 = a1;
    v24 = v23;
    v25 = sub_241165638();
    v42 = v22;
    [v22 setObject:v24 forSetting:v25];

    aBlock[4] = sub_2410FD798;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2410FD8D4;
    aBlock[3] = &block_descriptor;
    v26 = _Block_copy(aBlock);
    v27 = [objc_opt_self() responderWithHandler_];
    v43 = v27;
    _Block_release(v26);

    v28 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:v22 responder:v27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241167630;
    *(inited + 32) = v28;
    v41 = v28;
    sub_2410FB6F0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_2410FCF28(0, &qword_27E5307E0, 0x277CF0B58);
    sub_2410FDE08();
    v30 = sub_241165FB8();

    [v20 setActions_];

    v31 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
    v40 = v31;
    v32 = *(v49 + 16);
    v33 = v19;
    v34 = v20;
    v32(v33, v34, v31);

    sub_241165818();
    v35 = sub_241165628();
    v49 = sub_2411657C8();

    v36 = sub_241165658();
    v37 = sub_2411653A8();

    v38 = v48;
    v39 = v51;
    (*(v48 + 104))(v7, *MEMORY[0x277CEEBD0], v51);
    sub_2410FDE70(&qword_27E5309B0, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
    sub_241165C28();
    sub_2410FB5B8(v46, v45);

    (*(v38 + 8))(v7, v39);
  }
}

void sub_2410FD798(void *a1)
{
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = a1;
  oslog = sub_241165268();
  v4 = sub_241166068();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_2410F8000, oslog, v4, "SendAsk response: Received response %@", v5, 0xCu);
    sub_2410FDEB8(v6);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }
}

void sub_2410FD8D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2410FD93C()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2410FD9AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2410FD9F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_2410FDA7C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = sub_24113FEE0(0xD000000000000015, 0x800000024116A2C0, 0);
  if (v0)
  {

LABEL_3:
    v3 = 0;
LABEL_4:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v4 = sub_241165288();
    __swift_project_value_buffer(v4, qword_27E5339F0);
    v5 = sub_241165268();
    v6 = sub_241166048();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2410F8000, v5, v6, "Unable to get uiHostAppIdentity", v7, 2u);
      MEMORY[0x245CDC5E0](v7, -1, -1);
    }

    sub_2410FDF20();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
LABEL_9:

    return;
  }

  if (!v2)
  {
    goto LABEL_3;
  }

  v9 = v2;
  v3 = [v2 identities];
  sub_2410FCF28(0, &unk_27E530E20, 0x277CC1E58);
  v10 = sub_241165EF8();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_23:

    v3 = v9;
    goto LABEL_4;
  }

  if (!sub_2411661F8())
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x245CDBC20](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v11 = *(v10 + 32);
  }

  v3 = v11;

  v12 = [objc_opt_self() identityForLSApplicationIdentity_];
  if (!v12)
  {
    if (qword_27E530580 == -1)
    {
LABEL_19:
      v14 = sub_241165288();
      __swift_project_value_buffer(v14, qword_27E5339F0);
      v15 = sub_241165268();
      v16 = sub_241166048();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2410F8000, v15, v16, "Unable to get uiHostProcessIdentity", v17, 2u);
        MEMORY[0x245CDC5E0](v17, -1, -1);
      }

      sub_2410FDF20();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();

      goto LABEL_9;
    }

LABEL_26:
    swift_once();
    goto LABEL_19;
  }

  v13 = v12;
  [objc_allocWithZone(MEMORY[0x277D66BD8]) initWithSceneProvidingProcess:v12 configurationIdentifier:0];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2410FDE08()
{
  result = qword_27E5309A8;
  if (!qword_27E5309A8)
  {
    sub_2410FCF28(255, &qword_27E5307E0, 0x277CF0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5309A8);
  }

  return result;
}

uint64_t sub_2410FDE70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2410FDEB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E30, &qword_2411676F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2410FDF20()
{
  result = qword_27E5309B8;
  if (!qword_27E5309B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5309B8);
  }

  return result;
}

unint64_t sub_2410FDF74(unsigned __int8 a1)
{
  v1 = 0x65737361206C694ELL;
  if (a1 != 4)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (a1 == 3)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000018;
  if (a1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!a1)
  {
    v2 = 0xD000000000000016;
  }

  if (a1 <= 2u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2410FE04C(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  v3 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  if (a1 > 2u)
  {
    v4 = 0xED00006E6F697472;
    v8 = 0x65737361206C694ELL;
    if (a1 != 4)
    {
      v8 = 0xD00000000000001BLL;
      v4 = 0x800000024116A400;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v8;
    }

    if (a1 == 3)
    {
      v4 = 0x800000024116A420;
    }
  }

  else
  {
    v4 = 0x800000024116A480;
    v5 = 0x800000024116A460;
    v6 = 0xD000000000000018;
    if (a1 != 1)
    {
      v6 = 0xD000000000000010;
      v5 = 0x800000024116A440;
    }

    if (a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xD000000000000016;
    }

    if (a1)
    {
      v4 = v5;
    }
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v4;
  v9 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(v3, &unk_27E530E80, &qword_241168920);
  return v9;
}

uint64_t sub_2410FE1EC()
{
  v1 = *v0;
  sub_2411664A8();
  MEMORY[0x245CDBE00](v1);
  return sub_2411664C8();
}

uint64_t sub_2410FE260(uint64_t a1)
{
  v2 = *v1;
  sub_2411664A8();
  MEMORY[0x245CDBE00](v2);
  return sub_2411664C8();
}

uint64_t sub_2410FE2C8(uint64_t a1)
{
  v2 = sub_241100AA8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2410FE304(uint64_t a1)
{
  v2 = sub_241100AA8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2410FE348(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = v3;
  *(v4 + 248) = a2;
  *(v4 + 440) = a1;
  *(v4 + 272) = *v3;
  v5 = sub_241165238();
  *(v4 + 280) = v5;
  *(v4 + 288) = *(v5 - 8);
  *(v4 + 296) = swift_task_alloc();
  v6 = sub_241165208();
  *(v4 + 304) = v6;
  *(v4 + 312) = *(v6 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v7 = sub_241165248();
  *(v4 + 336) = v7;
  *(v4 + 344) = *(v7 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2410FE508, 0, 0);
}

uint64_t sub_2410FE508()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 440);
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 88) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 16) = v2 & 1;
  sub_241165678();
  v3 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v4 = sub_241165DA8();

  v5 = [v3 initWithExtensionPointIdentifier_];
  *(v0 + 368) = v5;

  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_241167630;
  *(v7 + 32) = v5;
  sub_2410FCF28(0, &qword_27E5309C8, 0x277CC5DF8);
  v8 = v5;
  v9 = sub_241165EE8();
  *(v0 + 376) = v9;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_2410FE738;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309D0, &qword_241167798);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2410FF528;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v10;
  [v6 executeQueries:v9 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2410FE738()
{

  return MEMORY[0x2822009F8](sub_2410FE818, 0, 0);
}

uint64_t sub_2410FE818()
{
  v61 = v0;
  v1 = *(v0 + 240);

  if (qword_27E530590 != -1)
  {
LABEL_38:
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A20);

  v3 = sub_241165268();
  v4 = sub_241166068();

  v5 = v1 >> 62;
  v57 = v1;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59 = v55;
    *v6 = 136315394;
    *(v6 + 4) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v59);
    *(v6 + 12) = 2080;
    if (v5)
    {
      v7 = sub_2411661F8();
    }

    else
    {
      v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v60 = MEMORY[0x277D84F90];
      v9 = sub_241100458(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return MEMORY[0x282116960](v9, v10);
      }

      v52 = v4;
      v53 = v6;
      v54 = v1 >> 62;
      v11 = 0;
      v8 = v60;
      v12 = v1 & 0xC000000000000001;
      do
      {
        if (v12)
        {
          v13 = MEMORY[0x245CDBC20](v11, v1);
        }

        else
        {
          v13 = *(v1 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v13 bundleIdentifier];
        v16 = sub_241165DD8();
        v18 = v17;

        v60 = v8;
        v20 = *(v8 + 16);
        v19 = *(v8 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_241100458((v19 > 1), v20 + 1, 1);
          v8 = v60;
        }

        ++v11;
        *(v8 + 16) = v20 + 1;
        v21 = v8 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v1 = v57;
      }

      while (v7 != v11);
      v5 = v54;
      v6 = v53;
      v4 = v52;
    }

    v22 = MEMORY[0x245CDB850](v8, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_241156B38(v22, v24, &v59);

    *(v6 + 14) = v25;
    _os_log_impl(&dword_2410F8000, v3, v4, "Extension bundleId: %s ; Found identities %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v55, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);

    v1 = v57;
  }

  else
  {
  }

  if (v5)
  {
    v26 = sub_2411661F8();
    if (v26)
    {
LABEL_19:
      v27 = 0;
      v28 = v1 & 0xC000000000000001;
      v29 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v28)
        {
          v30 = MEMORY[0x245CDBC20](v27, v1);
        }

        else
        {
          if (v27 >= *(v29 + 16))
          {
            goto LABEL_37;
          }

          v30 = *(v1 + 8 * v27 + 32);
        }

        v1 = v30;
        v56[48] = v30;
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v32 = [v30 bundleIdentifier];
        v33 = sub_241165DD8();
        v35 = v34;

        if (v33 == 0xD000000000000018 && 0x800000024116A380 == v35)
        {
          break;
        }

        v37 = sub_2411663E8();

        if (v37)
        {
          goto LABEL_33;
        }

        ++v27;
        v1 = v57;
        if (v31 == v26)
        {
          goto LABEL_40;
        }
      }

LABEL_33:
      v38 = v56[44];
      v39 = v56[45];
      v40 = v56[42];
      v41 = v56[43];
      v42 = v56[41];
      v58 = v56[40];
      v43 = v56[38];
      v44 = v56[39];

      v45 = v1;
      sub_241165258();
      (*(v41 + 16))(v38, v39, v40);
      sub_2411651F8();
      (*(v44 + 16))(v58, v42, v43);
      v46 = swift_task_alloc();
      v56[49] = v46;
      *v46 = v56;
      v46[1] = sub_2410FEE14;
      v10 = v56[40];
      v9 = v56[37];

      return MEMORY[0x282116960](v9, v10);
    }
  }

  else
  {
    v26 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_19;
    }
  }

LABEL_40:
  v47 = v56[46];

  sub_241100310();
  swift_allocError();
  *v48 = 0;
  swift_willThrow();

  v49 = v56[33];
  sub_2411003D8(v49 + 24);

  sub_241100400(*(v49 + 64), *(v49 + 72));
  sub_241100400(*(v49 + 80), *(v49 + 88));
  swift_deallocPartialClassInstance();

  v50 = v56[1];

  return v50();
}

uint64_t sub_2410FEE14()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_2410FF3FC;
  }

  else
  {
    v2 = sub_2410FEF28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2410FEF28()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 264);
  *(v0 + 408) = sub_2411651E8();
  *(v0 + 416) = v3;
  *(v0 + 420) = v4;
  *(v0 + 424) = v5;
  *(v0 + 428) = v6;
  *(v0 + 432) = v7;
  *(v0 + 436) = v8;
  *(v2 + 40) = audit_token_to_pid((v0 + 408));
  v9 = sub_241165228();
  if (v1)
  {
    v10 = *(v0 + 368);
    v41 = *(v0 + 360);
    v11 = *(v0 + 336);
    v12 = *(v0 + 344);
    v13 = *(v0 + 328);
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    v16 = *(v0 + 288);
    v17 = *(v0 + 296);
    v18 = *(v0 + 280);

    (*(v16 + 8))(v17, v18);
    (*(v14 + 8))(v13, v15);
    (*(v12 + 8))(v41, v11);
    v20 = *(v0 + 264);
    sub_2411003D8(v20 + 24);

    sub_241100400(*(v20 + 64), *(v20 + 72));
    sub_241100400(*(v20 + 80), *(v20 + 88));
    swift_deallocPartialClassInstance();

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v19 = v9;
    (*(v0 + 248))(v9, 0xD000000000000018, 0x800000024116A380);
    v35 = *(v0 + 384);
    v36 = *(v0 + 368);
    v23 = *(v0 + 344);
    v40 = *(v0 + 360);
    v38 = *(v0 + 328);
    v39 = *(v0 + 336);
    v24 = *(v0 + 312);
    v37 = *(v0 + 304);
    v25 = *(v0 + 288);
    v33 = *(v0 + 280);
    v34 = *(v0 + 296);
    *(*(v0 + 264) + 48) = v19;
    v26 = swift_allocObject();
    swift_weakInit();
    *(v0 + 176) = sub_241100448;
    *(v0 + 184) = v26;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_2410FF7EC;
    *(v0 + 168) = &block_descriptor_5;
    v27 = _Block_copy((v0 + 144));
    v28 = v19;

    [v28 setInterruptionHandler_];
    _Block_release(v27);
    v29 = swift_allocObject();
    swift_weakInit();

    *(v0 + 224) = sub_241100450;
    *(v0 + 232) = v29;
    *(v0 + 192) = MEMORY[0x277D85DD0];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_2410FF7EC;
    *(v0 + 216) = &block_descriptor_9;
    v30 = _Block_copy((v0 + 192));

    [v28 setInvalidationHandler_];
    _Block_release(v30);

    (*(v25 + 8))(v34, v33);
    (*(v24 + 8))(v38, v37);
    (*(v23 + 8))(v40, v39);

    v31 = *(v0 + 8);
    v32 = *(v0 + 264);

    return v31(v32);
  }
}

uint64_t sub_2410FF3FC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v1, v3);
  v8 = *(v0 + 264);
  sub_2411003D8(v8 + 24);

  sub_241100400(*(v8 + 64), *(v8 + 72));
  sub_241100400(*(v8 + 80), *(v8 + 88));
  swift_deallocPartialClassInstance();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2410FF528(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_2410FCF28(0, &qword_27E5309D8, 0x277CC5DD8);
  **(*(v2 + 64) + 40) = sub_241165EF8();

  return MEMORY[0x282200948](v2);
}

uint64_t sub_2410FF5AC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 64);
    if (v2)
    {
      v3 = *(result + 72);

      v2(v4);
      sub_241100400(v2, v3);
    }

    sub_2410FF638();
  }

  return result;
}

id sub_2410FF638()
{
  v1 = v0;
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A20);

  v3 = sub_241165268();
  v4 = sub_241166068();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 67109378;
    *(v5 + 4) = *(v1 + 40);

    *(v5 + 8) = 2080;
    *(v5 + 10) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v11);
    _os_log_impl(&dword_2410F8000, v3, v4, "Invalidating assertion for extension with PID %d and bundleId %s", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 56);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v1 + 56);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 56) = 0;

  v9 = *(v1 + 48);

  return [v9 invalidate];
}

uint64_t sub_2410FF7EC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2410FF830(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 80);
    if (v2)
    {
      v3 = *(result + 88);

      v2(v4);
      sub_241100400(v2, v3);
    }

    sub_2410FF638();
  }

  return result;
}

void sub_2410FF8BC()
{
  [*(v0 + 48) activate];
  v1 = *(v0 + 56);
  if (v1 && [v1 valid])
  {
    if (qword_27E530590 != -1)
    {
      swift_once();
    }

    v2 = sub_241165288();
    __swift_project_value_buffer(v2, qword_27E533A20);
    v3 = sub_241165268();
    v4 = sub_241166048();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_241156B38(0x6574617669746361, 0xEA00000000002928, &v7);
      _os_log_impl(&dword_2410F8000, v3, v4, "%s was called, but there was already a valid assertion for the extension process", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x245CDC5E0](v6, -1, -1);
      MEMORY[0x245CDC5E0](v5, -1, -1);
    }
  }

  else
  {
    sub_2410FFA30();
  }
}

void sub_2410FFA30()
{
  v1 = v0;
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A20);

  v3 = sub_241165268();
  v4 = sub_241166068();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 67109378;
    *(v5 + 4) = *(v0 + 40);

    *(v5 + 8) = 2080;
    *(v5 + 10) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v23);
    _os_log_impl(&dword_2410F8000, v3, v4, "Initializing assertion for extension with PID %d and bundleId %s", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 40);
  v8 = objc_allocWithZone(MEMORY[0x277CEEEA8]);
  v9 = sub_241165DA8();
  v10 = [v8 initWithPID:v7 flags:10 reason:13 name:v9];

  if (v10)
  {
    v11 = v10;
    v12 = [v11 acquire];
    v13 = sub_241165268();
    if (v12)
    {
      v14 = sub_241166068();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v23);
        _os_log_impl(&dword_2410F8000, v13, v14, "Successfully acquired assertion for extension with bundleId %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x245CDC5E0](v16, -1, -1);
        MEMORY[0x245CDC5E0](v15, -1, -1);
      }

      v17 = *(v1 + 56);
      *(v1 + 56) = v10;
    }

    else
    {
      v19 = sub_241166048();
      if (os_log_type_enabled(v13, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v23 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v23);
        _os_log_impl(&dword_2410F8000, v13, v19, "Failed to acquire assertion for extension with bundleId %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x245CDC5E0](v21, -1, -1);
        MEMORY[0x245CDC5E0](v20, -1, -1);
      }

      sub_241100310();
      swift_allocError();
      *v22 = 5;
      swift_willThrow();
    }
  }

  else
  {
    sub_241100310();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();
  }
}

void sub_2410FFE1C()
{
  v1 = *(v0 + 48);
  aBlock[4] = sub_2411000CC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241100228;
  aBlock[3] = &block_descriptor_13;
  v2 = _Block_copy(aBlock);
  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_2411661A8();
  swift_unknownObjectRelease();
  v4 = *(v0 + 56);
  if (!v4 || ([v4 valid] & 1) == 0)
  {
    if (qword_27E530590 != -1)
    {
      swift_once();
    }

    v5 = sub_241165288();
    __swift_project_value_buffer(v5, qword_27E533A20);
    v6 = sub_241165268();
    v7 = sub_241166048();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2410F8000, v6, v7, "Trying to obtain a remote proxy without a valid assertion. Re-acquiring assertion.", v8, 2u);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    sub_2410FFA30();
  }
}

void sub_2411000CC(void *a1)
{
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A20);
  v3 = a1;
  oslog = sub_241165268();
  v4 = sub_241166048();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2410F8000, oslog, v4, "Error obtaining remote proxy: %@", v5, 0xCu);
    sub_2410FB29C(v6, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }
}

void sub_241100228(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_241100290()
{
  sub_2411003D8(v0 + 24);

  sub_241100400(*(v0 + 64), *(v0 + 72));
  sub_241100400(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

unint64_t sub_241100310()
{
  result = qword_27E5309C0;
  if (!qword_27E5309C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5309C0);
  }

  return result;
}

uint64_t sub_241100374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241100400(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_241100410()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_241100458(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2411004B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_241100478(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2411005C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241100498(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2411007B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2411004B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2411005C8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309E8, &unk_2411677B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0) - 8);
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

char *sub_2411007B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309E0, &qword_241167F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t getEnumTagSinglePayload for ExtensionConnectionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtensionConnectionError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241100A54()
{
  result = qword_27E5309F8;
  if (!qword_27E5309F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5309F8);
  }

  return result;
}

unint64_t sub_241100AA8()
{
  result = qword_27E530A00;
  if (!qword_27E530A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530A00);
  }

  return result;
}

unint64_t sub_241100B10()
{
  v1 = v0;
  v2 = sub_241165728();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for iMessageSender.Error(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2411035AC(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000056;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000047;
    }

    else
    {
      return 0xD000000000000029;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *v8;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD000000000000045, 0x800000024116A5B0);
      v18 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
      sub_241166318();

      return v19;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD000000000000023, 0x800000024116A560);
      v10 = sub_241165468();
      MEMORY[0x245CDB790](v10);

      MEMORY[0x245CDB790](0xD00000000000001FLL, 0x800000024116A590);
      return v19;
    }

    v13 = *v8;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A18, &qword_241167940);
    (*(v3 + 32))(v5, v8 + *(v14 + 48), v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2411662B8();
    MEMORY[0x245CDB790](0x2820746E65696C43, 0xEC00000020444950);
    LODWORD(v18) = v13;
    v15 = sub_2411663B8();
    MEMORY[0x245CDB790](v15);

    MEMORY[0x245CDB790](0xD000000000000019, 0x800000024116A4F0);
    sub_241166318();
    MEMORY[0x245CDB790](46, 0xE100000000000000);
    v16 = v19;
    (*(v3 + 8))(v5, v2);
    return v16;
  }
}

unint64_t sub_241100EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v1 = sub_241100B10();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v2)
  {
    type metadata accessor for iMessageSender.Error(0);
    sub_241166318();
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v3;
}

uint64_t sub_241100FA4(uint64_t a1)
{
  v2 = sub_24110366C(&qword_27E530A58, type metadata accessor for iMessageSender.Error, &unk_2411679B4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241101010(uint64_t a1)
{
  v2 = sub_24110366C(&qword_27E530A58, type metadata accessor for iMessageSender.Error, &unk_2411679B4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241101088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 424) = a6;
  *(v7 + 432) = v6;
  *(v7 + 608) = a5;
  *(v7 + 408) = a3;
  *(v7 + 416) = a4;
  *(v7 + 392) = a1;
  *(v7 + 400) = a2;
  v8 = sub_241165728();
  *(v7 + 440) = v8;
  *(v7 + 448) = *(v8 - 8);
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  v9 = sub_241165C38();
  *(v7 + 480) = v9;
  *(v7 + 488) = *(v9 - 8);
  *(v7 + 496) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2411011C8, 0, 0);
}

void *sub_2411011C8()
{
  v139 = v0;
  v1 = *(sub_241165A98() + 16);

  if (!v1)
  {
    if (qword_27E530598 != -1)
    {
      swift_once();
    }

    v28 = sub_241165288();
    __swift_project_value_buffer(v28, qword_27E533A38);

    v29 = sub_241165268();
    v30 = sub_241166048();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v138[0] = v32;
      *v31 = 136315138;
      sub_241165A78();
      v33 = sub_241165468();
      v35 = sub_241156B38(v33, v34, v138);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_2410F8000, v29, v30, "There were no ids handles in the privledged recipient group derived from  %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245CDC5E0](v32, -1, -1);
      MEMORY[0x245CDC5E0](v31, -1, -1);
    }

    type metadata accessor for iMessageSender.Error(0);
    sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error, &unk_241167A64);
    swift_allocError();
    *v36 = sub_241165A78();
    goto LABEL_31;
  }

  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 480);
  v5 = *(v0 + 608);
  v6 = *(v0 + 392);
  v7 = v6[5];
  *(v0 + 504) = v7;
  v8 = v6[6];
  *(v0 + 512) = v8;
  v9 = v6[7];
  *(v0 + 520) = v9;
  v10 = *MEMORY[0x277CEEE30];
  v11 = *(v3 + 104);
  *(v0 + 528) = v11;
  *(v0 + 536) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v2, v10, v4);
  MEMORY[0x245CDB590](v7, v8, v9, v2);
  v12 = *(v3 + 8);
  *(v0 + 544) = v12;
  *(v0 + 552) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v2, v4);
  if (v5 == 1)
  {
    v13 = *(v0 + 400);
    (*(*(v0 + 448) + 104))(*(v0 + 472), *MEMORY[0x277CEEB40], *(v0 + 440));
    if (!v13)
    {
      if (qword_27E530598 != -1)
      {
        swift_once();
      }

      v79 = *(v0 + 472);
      v81 = *(v0 + 448);
      v80 = *(v0 + 456);
      v82 = *(v0 + 440);
      v83 = sub_241165288();
      __swift_project_value_buffer(v83, qword_27E533A38);
      (*(v81 + 16))(v80, v79, v82);
      v84 = sub_241165268();
      v85 = sub_241166048();
      v86 = os_log_type_enabled(v84, v85);
      v88 = *(v0 + 448);
      v87 = *(v0 + 456);
      v89 = *(v0 + 440);
      if (v86)
      {
        v90 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v138[0] = v137;
        *v90 = 136315138;
        v136 = sub_241165718();
        v92 = v91;
        v93 = *(v88 + 8);
        v93(v87, v89);
        v94 = sub_241156B38(v136, v92, v138);

        *(v90 + 4) = v94;
        _os_log_impl(&dword_2410F8000, v84, v85, "Unable to to check for %s entitlement because caller is nil. Bailing from send.", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v137);
        MEMORY[0x245CDC5E0](v137, -1, -1);
        v95 = v90;
        v96 = v93;
        MEMORY[0x245CDC5E0](v95, -1, -1);
      }

      else
      {

        v96 = *(v88 + 8);
        v96(v87, v89);
      }

      v117 = *(v0 + 472);
      v118 = *(v0 + 440);
      type metadata accessor for iMessageSender.Error(0);
      sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error, &unk_241167A64);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v96(v117, v118);
      goto LABEL_32;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((sub_241165828() & 1) == 0)
    {
      if (qword_27E530598 != -1)
      {
        swift_once();
      }

      v98 = *(v0 + 464);
      v97 = *(v0 + 472);
      v100 = *(v0 + 440);
      v99 = *(v0 + 448);
      v101 = sub_241165288();
      __swift_project_value_buffer(v101, qword_27E533A38);
      v135 = *(v99 + 16);
      v135(v98, v97, v100);
      v102 = sub_241165268();
      v103 = sub_241166048();
      v104 = os_log_type_enabled(v102, v103);
      v105 = *(v0 + 464);
      v107 = *(v0 + 440);
      v106 = *(v0 + 448);
      if (v104)
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v138[0] = v109;
        *v108 = 136315138;
        v110 = sub_241165718();
        v112 = v111;
        v113 = v107;
        v114 = *(v106 + 8);
        v114(v105, v113);
        v115 = sub_241156B38(v110, v112, v138);

        *(v108 + 4) = v115;
        _os_log_impl(&dword_2410F8000, v102, v103, "Missing entitlement %s. Ignoring IDS destinations that don't support.", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v109);
        MEMORY[0x245CDC5E0](v109, -1, -1);
        MEMORY[0x245CDC5E0](v108, -1, -1);
      }

      else
      {

        v119 = v107;
        v114 = *(v106 + 8);
        v114(v105, v119);
      }

      v120 = *(v0 + 472);
      v121 = *(v0 + 440);
      type metadata accessor for iMessageSender.Error(0);
      sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error, &unk_241167A64);
      swift_allocError();
      v123 = v122;
      v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A18, &qword_241167940) + 48);
      *v123 = sub_241165838();
      v135(&v123[v124], v120, v121);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();
      v114(v120, v121);
      goto LABEL_32;
    }

    if (qword_27E530598 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 392);
    v15 = sub_241165288();
    *(v0 + 560) = __swift_project_value_buffer(v15, qword_27E533A38);
    sub_241102C64(v14, v0 + 96);
    v16 = sub_241165268();
    v17 = sub_241166068();
    sub_241102CC0(v14);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v138[0] = v19;
      *v18 = 136315138;
      v20 = sub_241165FE8();
      v22 = sub_241156B38(v20, v21, v138);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2410F8000, v16, v17, "Looking for IDS endpoints that don't support the following reg caps: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245CDC5E0](v19, -1, -1);
      MEMORY[0x245CDC5E0](v18, -1, -1);
    }

    sub_2411031DC(*(v0 + 432), v0 + 296);
    if (*(v0 + 320))
    {
      v23 = *(v0 + 392);
      sub_24110324C((v0 + 296), v0 + 256);
      __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
      v24 = *(v23 + 32);
      *(v0 + 568) = v24;
      v25 = sub_241165A98();
      *(v0 + 576) = v25;
      v26 = swift_task_alloc();
      *(v0 + 584) = v26;
      *v26 = v0;
      v26[1] = sub_241102128;

      return sub_24114E880(v24, v25);
    }

    goto LABEL_55;
  }

  v37 = *(v0 + 544);
  v38 = *(v0 + 520);
  v40 = *(v0 + 504);
  v39 = *(v0 + 512);
  v41 = *(v0 + 496);
  v42 = *(v0 + 480);
  (*(v0 + 528))(v41, *MEMORY[0x277CEEE28], v42);
  MEMORY[0x245CDB590](v40, v39, v38, v41);
  v37(v41, v42);
  if (qword_27E530598 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 392);
  v44 = sub_241165288();
  __swift_project_value_buffer(v44, qword_27E533A38);
  sub_241102C64(v43, v0 + 16);

  v45 = sub_241165268();
  v46 = sub_241166068();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 392);
  if (v47)
  {
    v49 = swift_slowAlloc();
    result = swift_slowAlloc();
    v50 = result;
    v138[0] = result;
    *v49 = 134218242;
    v51 = v48[1];
    if (v51 >> 60 == 15)
    {
      goto LABEL_22;
    }

    v52 = *v48;
    v116 = v51 >> 62;
    if ((v51 >> 62) <= 1)
    {
      if (v116)
      {
        v128 = __OFSUB__(HIDWORD(v52), v52);
        LODWORD(v52) = HIDWORD(v52) - v52;
        if (v128)
        {
          __break(1u);
          goto LABEL_61;
        }

        v52 = v52;
      }

      else
      {
        v52 = BYTE6(v51);
      }

      goto LABEL_23;
    }

    if (v116 != 2)
    {
LABEL_22:
      v52 = 0;
    }

    else
    {
      v127 = v52 + 16;
      v125 = *(v52 + 16);
      v126 = *(v127 + 8);
      v128 = __OFSUB__(v126, v125);
      v52 = v126 - v125;
      if (v128)
      {
        __break(1u);
LABEL_55:
        sub_2410FB29C(v0 + 296, &qword_27E530A20, &qword_241167948);
        v129 = sub_241165268();
        v130 = sub_241166048();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_2410F8000, v129, v130, "Needed to lookup unsupported destinations, but idsLookupController was nil.", v131, 2u);
          MEMORY[0x245CDC5E0](v131, -1, -1);
        }

        v132 = *(v0 + 472);
        v134 = *(v0 + 440);
        v133 = *(v0 + 448);

        type metadata accessor for iMessageSender.Error(0);
        sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error, &unk_241167A64);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        swift_unknownObjectRelease();
        (*(v133 + 8))(v132, v134);
        goto LABEL_32;
      }
    }

LABEL_23:
    v53 = *(v0 + 392);
    *(v49 + 4) = v52;
    sub_241102CC0(v53);
    *(v49 + 12) = 2080;
    sub_241165A98();
    v54 = MEMORY[0x245CDB850]();
    v56 = v55;

    v57 = sub_241156B38(v54, v56, v138);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_2410F8000, v45, v46, "Sending message of %ld bytes to %s", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x245CDC5E0](v50, -1, -1);
    MEMORY[0x245CDC5E0](v49, -1, -1);
    goto LABEL_25;
  }

  sub_241102CC0(*(v0 + 392));
LABEL_25:

  v58 = sub_241165A98();
  result = [objc_opt_self() stringGUID];
  if (!result)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v59 = result;
  v60 = *(v0 + 392);
  v61 = *v60;
  v62 = v60[1];
  v63 = v60[2];
  v64 = v60[3];
  v65 = sub_241165DD8();
  v67 = v66;

  v68 = sub_241103C68(v61, v62, v58, v63, v64, 0, 0xE000000000000000, v65, v67);

  v69 = sub_241165268();
  v70 = sub_241166068();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 67109120;
    *(v71 + 4) = v68 & 1;
    _os_log_impl(&dword_2410F8000, v69, v70, "Result of call to send message is %{BOOL}d", v71, 8u);
    MEMORY[0x245CDC5E0](v71, -1, -1);
  }

  if ((v68 & 1) == 0)
  {
    type metadata accessor for iMessageSender.Error(0);
    sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error, &unk_241167A64);
    swift_allocError();
LABEL_31:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_32:

    v78 = *(v0 + 8);
    goto LABEL_33;
  }

  v72 = *(v0 + 544);
  v73 = *(v0 + 520);
  v75 = *(v0 + 504);
  v74 = *(v0 + 512);
  v76 = *(v0 + 496);
  v77 = *(v0 + 480);
  (*(v0 + 528))(v76, *MEMORY[0x277CEEE08], v77);
  MEMORY[0x245CDB590](v75, v74, v73, v76);
  v72(v76, v77);

  v78 = *(v0 + 8);
LABEL_33:

  return v78();
}

uint64_t sub_241102128(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 592) = a1;
  *(v3 + 600) = v1;

  if (v1)
  {
    v4 = sub_2411029A8;
  }

  else
  {

    v4 = sub_241102258;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_241102258()
{
  v74 = v0;
  v1 = *(v0 + 592);
  *(v0 + 384) = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    v2 = sub_2411661F8();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_39;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v71 = *(v0 + 592) + 32;
  do
  {
    if (v4)
    {
      v5 = MEMORY[0x245CDBC20](v3, *(v0 + 592));
    }

    else
    {
      v5 = *(v71 + 8 * v3);
      swift_unknownObjectRetain();
    }

    ++v3;
    v6 = [v5 destinationURIs];
    v7 = sub_241165FD8();

    sub_24110BB14(v7);
    swift_unknownObjectRelease();
  }

  while (v2 != v3);
LABEL_10:

  v8 = sub_241165268();
  v9 = sub_241166068();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 472);
  v13 = *(v0 + 440);
  v12 = *(v0 + 448);
  if (v10)
  {
    v72 = *(v0 + 440);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v73[0] = v15;
    *v14 = 136315138;
    swift_beginAccess();

    v17 = MEMORY[0x245CDB850](v16, MEMORY[0x277D837D0]);
    v70 = v11;
    v19 = v18;

    v20 = sub_241156B38(v17, v19, v73);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2410F8000, v8, v9, "The following destinations don't support the required reg caps: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v14, -1, -1);

    swift_unknownObjectRelease();
    (*(v12 + 8))(v70, v72);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v12 + 8))(v11, v13);
  }

  v21 = *(v0 + 424);
  swift_beginAccess();
  *v21 = *(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v22 = *(v0 + 544);
  v23 = *(v0 + 520);
  v25 = *(v0 + 504);
  v24 = *(v0 + 512);
  v26 = *(v0 + 496);
  v27 = *(v0 + 480);
  (*(v0 + 528))(v26, *MEMORY[0x277CEEE28], v27);
  MEMORY[0x245CDB590](v25, v24, v23, v26);
  v22(v26, v27);
  if (qword_27E530598 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 392);
  v29 = sub_241165288();
  __swift_project_value_buffer(v29, qword_27E533A38);
  sub_241102C64(v28, v0 + 16);

  v30 = sub_241165268();
  v31 = sub_241166068();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 392);
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v73[0] = v35;
    *v34 = 134218242;
    v36 = v33[1];
    if (v36 >> 60 == 15)
    {
LABEL_17:
      v37 = 0;
LABEL_18:
      v38 = *(v0 + 392);
      *(v34 + 4) = v37;
      sub_241102CC0(v38);
      *(v34 + 12) = 2080;
      sub_241165A98();
      v39 = MEMORY[0x245CDB850]();
      v41 = v40;

      v42 = sub_241156B38(v39, v41, v73);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_2410F8000, v30, v31, "Sending message of %ld bytes to %s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CDC5E0](v35, -1, -1);
      MEMORY[0x245CDC5E0](v34, -1, -1);
      goto LABEL_20;
    }

    v37 = *v33;
    v65 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v65 != 2)
      {
        goto LABEL_17;
      }

      v68 = v37 + 16;
      v66 = *(v37 + 16);
      v67 = *(v68 + 8);
      v69 = __OFSUB__(v67, v66);
      v37 = v67 - v66;
      if (!v69)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v65)
    {
      v37 = BYTE6(v36);
      goto LABEL_18;
    }

    v69 = __OFSUB__(HIDWORD(v37), v37);
    LODWORD(v37) = HIDWORD(v37) - v37;
    if (!v69)
    {
      v37 = v37;
      goto LABEL_18;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_241102CC0(*(v0 + 392));
LABEL_20:

  v43 = sub_241165A98();
  v44 = [objc_opt_self() stringGUID];
  if (!v44)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v45 = v44;
  v46 = *(v0 + 392);
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  v50 = v46[3];
  v51 = sub_241165DD8();
  v53 = v52;

  v54 = sub_241103C68(v47, v48, v43, v49, v50, 0, 0xE000000000000000, v51, v53);

  v55 = sub_241165268();
  v56 = sub_241166068();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 67109120;
    *(v57 + 4) = v54 & 1;
    _os_log_impl(&dword_2410F8000, v55, v56, "Result of call to send message is %{BOOL}d", v57, 8u);
    MEMORY[0x245CDC5E0](v57, -1, -1);
  }

  if (v54)
  {
    v58 = *(v0 + 544);
    v59 = *(v0 + 520);
    v61 = *(v0 + 504);
    v60 = *(v0 + 512);
    v62 = *(v0 + 496);
    v63 = *(v0 + 480);
    (*(v0 + 528))(v62, *MEMORY[0x277CEEE08], v63);
    MEMORY[0x245CDB590](v61, v60, v59, v62);
    v58(v62, v63);
  }

  else
  {
    type metadata accessor for iMessageSender.Error(0);
    sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error, &unk_241167A64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v64 = *(v0 + 8);

  v64();
}

uint64_t sub_2411029A8()
{
  v23 = v0;
  v1 = v0[75];
  v2 = v0[49];

  sub_241102C64(v2, (v0 + 22));
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();
  sub_241102CC0(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[75];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v10 = sub_241165FE8();
    v12 = sub_241156B38(v10, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_2410F8000, v4, v5, "Error looking up endpoints without required registration capabilities %s. error: %@", v7, 0x16u);
    sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v15 = v0[75];
  v16 = v0[59];
  v17 = v0[55];
  v18 = v0[56];
  type metadata accessor for iMessageSender.Error(0);
  sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error, &unk_241167A64);
  swift_allocError();
  *v19 = v15;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v18 + 8))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  v20 = v0[1];

  return v20();
}

uint64_t sub_241102D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165728();
  v33 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for iMessageSender.Error(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A68, &qword_241167AB8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v31 - v18;
  v20 = (&v31 + *(v17 + 56) - v18);
  sub_2411035AC(a1, &v31 - v18);
  sub_2411035AC(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2411035AC(v19, v15);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v22 = sub_241165488();
          v23 = v22 == sub_241165488();
LABEL_26:
          sub_241103610(v19);
          return v23 & 1;
        }
      }

      else
      {
        sub_2411035AC(v19, v13);
        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A18, &qword_241167940) + 48);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v25 = *v13;
          v31 = *v20;
          v32 = v25;
          v26 = v33;
          v27 = *(v33 + 32);
          v27(v9, &v13[v24], v4);
          v27(v7, v20 + v24, v4);
          if (v32 == v31)
          {
            sub_24110366C(&qword_27E530A70, MEMORY[0x277CEEB48], MEMORY[0x277CEEB50]);
            sub_241165EC8();
            sub_241165EC8();
            if (v36 == v34 && v37 == v35)
            {
              v23 = 1;
            }

            else
            {
              v23 = sub_2411663E8();
            }

            v29 = *(v33 + 8);
            v29(v7, v4);
            v29(v9, v4);
          }

          else
          {
            v28 = *(v26 + 8);
            v28(v7, v4);
            v28(v9, v4);
            v23 = 0;
          }

          goto LABEL_26;
        }

        (*(v33 + 8))(&v13[v24], v4);
      }

      goto LABEL_22;
    }

    if (!swift_getEnumCaseMultiPayload())
    {
      sub_241103610(v20);
      goto LABEL_20;
    }

LABEL_22:
    sub_2410FB29C(v19, &qword_27E530A68, &qword_241167AB8);
    v23 = 0;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_22;
  }

LABEL_20:
  sub_241103610(v19);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for iMessageSender.Error(uint64_t a1)
{
  result = qword_27E530A28;
  if (!qword_27E530A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2411031DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A20, &qword_241167948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24110324C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2411032B4(uint64_t a1)
{
  sub_24110333C();
  if (v1 <= 0x3F)
  {
    sub_2411033E8();
    if (v2 <= 0x3F)
    {
      sub_241103418(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24110333C()
{
  if (!qword_27E530A38)
  {
    v0 = sub_241103384();
    if (!v1)
    {
      atomic_store(v0, &qword_27E530A38);
    }
  }
}

unint64_t sub_241103384()
{
  result = qword_27E530A40;
  if (!qword_27E530A40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E530A40);
  }

  return result;
}

uint64_t sub_2411033E8()
{
  result = qword_27E530A48;
  if (!qword_27E530A48)
  {
    result = MEMORY[0x277CEEAF0];
    atomic_store(MEMORY[0x277CEEAF0], &qword_27E530A48);
  }

  return result;
}

void sub_241103418(uint64_t a1)
{
  if (!qword_27E530A50)
  {
    sub_241165728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E530A50);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon16IDSLookupCapable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2411034B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241103500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2411035AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iMessageSender.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241103610(uint64_t a1)
{
  v2 = type metadata accessor for iMessageSender.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24110366C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2411036B8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;

    v2 = sub_241165DA8();

    [v1 removeListenerID:v2 forService:1];

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_241103794(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (qword_27E5305C0 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E533AB0);

  v10 = sub_241165268();
  v11 = sub_241166068();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a2)
    {
      sub_24110412C();
      swift_allocError();
      *v14 = a1;
      v14[1] = a2;

      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 4) = v15;
    *v13 = v16;
    _os_log_impl(&dword_2410F8000, v10, v11, "sentMessageGUID is %@", v12, 0xCu);
    sub_2410FDEB8(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  if (!a2 || (a1 != a3 || a4 != a2) && (sub_2411663E8() & 1) == 0)
  {
    v33 = a3;

    v17 = sub_241165268();
    v18 = sub_241166048();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v19 = 138412546;
      if (a2)
      {
        sub_24110412C();
        swift_allocError();
        *v22 = a1;
        v22[1] = a2;

        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = v23;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      *(v19 + 4) = v23;
      *v20 = v24;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_241156B38(v33, a4, &v34);
      _os_log_impl(&dword_2410F8000, v17, v18, "sentMessageGUID %@ does not equal payload messageGUID %s", v19, 0x16u);
      sub_2410FDEB8(v20);
      MEMORY[0x245CDC5E0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245CDC5E0](v21, -1, -1);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }
  }

  v25 = sub_241165268();
  v26 = sub_241166068();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    sub_2411040D4();
    v29 = sub_2411663B8();
    v31 = sub_241156B38(v29, v30, &v34);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_2410F8000, v25, v26, "Completing OS transaction background-messsage-send: %s from MSPISendMSMessagePayloadReturningGUID completion handler", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CDC5E0](v28, -1, -1);
    MEMORY[0x245CDC5E0](v27, -1, -1);
  }

  return MEMORY[0x245CDAB10]();
}

uint64_t sub_241103BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_241165DD8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_241103C68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_27E5305C0 != -1)
  {
    swift_once();
  }

  v11 = sub_241165288();
  __swift_project_value_buffer(v11, qword_27E533AB0);
  v12 = sub_241165268();
  v13 = sub_241166068();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_241156B38(0xD000000000000077, 0x800000024116A700, aBlock);
    _os_log_impl(&dword_2410F8000, v12, v13, "%s called", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  sub_2411651D8();
  swift_allocObject();
  v16 = sub_2411651B8();

  v17 = sub_241165268();
  v18 = sub_241166068();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    sub_2411040D4();
    v21 = sub_2411663B8();
    v23 = sub_241156B38(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2410F8000, v17, v18, "Opening OS transaction for background-messsage-send: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x245CDC5E0](v20, -1, -1);
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  if (a2 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_2411650F8();
  }

  v25 = sub_241165EE8();
  v26 = sub_241165DA8();
  v27 = sub_241165DA8();
  v28 = sub_241165DA8();
  v29 = sub_241165EE8();
  v30 = swift_allocObject();
  v30[2] = a8;
  v30[3] = a9;
  v30[4] = v16;
  aBlock[4] = sub_2411040B0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241103BEC;
  aBlock[3] = &block_descriptor_1;
  v31 = _Block_copy(aBlock);

  v32 = IMSPISendMSMessagePayloadReturningGUID();
  _Block_release(v31);

  return v32;
}

uint64_t sub_241104070()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2411040D4()
{
  result = qword_27E530A78;
  if (!qword_27E530A78)
  {
    sub_2411651D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530A78);
  }

  return result;
}

unint64_t sub_24110412C()
{
  result = qword_27E530A80;
  if (!qword_27E530A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530A80);
  }

  return result;
}

id sub_241104184()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2 && (v3 = v2, v4 = sub_241166158(), v6 = v5, v3, v6))
    {

      return v4;
    }

    else
    {
      if (qword_27E530580 != -1)
      {
        swift_once();
      }

      v7 = sub_241165288();
      __swift_project_value_buffer(v7, qword_27E5339F0);
      v8 = sub_241165268();
      v9 = sub_241166048();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2410F8000, v8, v9, "Unable to get logged in user's apple ID", v10, 2u);
        MEMORY[0x245CDC5E0](v10, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2411042F4()
{
  v1 = sub_241157FC8(1, v0, &off_281A914D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A88, &qword_241167C08);
  swift_allocObject();
  v2 = v1;
  v3 = sub_241104670(v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v3 + 24) = &off_281A914C0;
  swift_unknownObjectWeakAssign();

  sub_2411047D4();
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E533A80);
  v6 = sub_241165268();
  v7 = sub_241166068();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v11);
    _os_log_impl(&dword_2410F8000, v6, v7, "%s init complete", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  return v4;
}

unint64_t sub_2411044DC(uint64_t a1)
{
  if (!BYTE4(a1))
  {
    sub_2411662B8();
    v1 = "The Biome event had an invalid Screen Time request status ";
    goto LABEL_5;
  }

  if (BYTE4(a1) == 1)
  {
    sub_2411662B8();
    v1 = "The Biome event had an unknown Screen Time request answer ";
LABEL_5:
    MEMORY[0x245CDB790](0xD00000000000003ALL, (v1 - 32) | 0x8000000000000000);
    v2 = sub_2411663B8();
    MEMORY[0x245CDB790](v2);

    MEMORY[0x245CDB790](46, 0xE100000000000000);
    return 0;
  }

  if (a1)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t sub_241104614()
{

  return swift_deallocClassInstance();
}

uint64_t sub_241104670(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  __swift_project_value_buffer(v4, qword_27E533A80);
  v5 = sub_241165268();
  v6 = sub_241166068();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v10);
    _os_log_impl(&dword_2410F8000, v5, v6, "BiomeStreamListener create for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  *(v2 + 32) = a1;
  return v2;
}

void sub_2411047D4()
{
  v1 = [objc_opt_self() screenTimeRequestStream];
  v2 = [v1 publisher];

  v3 = [v2 subscribeOn_];
  v12 = sub_241105580;
  v13 = v0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2410FD8D4;
  v11 = &block_descriptor_2;
  v4 = _Block_copy(&v8);

  v12 = sub_2411055A0;
  v13 = v0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_241104B00;
  v11 = &block_descriptor_6;
  v5 = _Block_copy(&v8);

  v6 = [v3 sinkWithCompletion:v4 receiveInput:v5];

  _Block_release(v5);
  _Block_release(v4);
  v7 = *(v0 + 40);
  *(v0 + 40) = v6;
}

void sub_241104998(uint64_t a1, uint64_t a2)
{
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A80);

  oslog = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;

    *(v4 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v7);
    _os_log_impl(&dword_2410F8000, oslog, v3, "Biome stream sunk for %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDC5E0](v5, -1, -1);
    MEMORY[0x245CDC5E0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_241104B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_241104B60(uint64_t a1)
{
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E533A80);

  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;

    *(v4 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v22);
    _os_log_impl(&dword_2410F8000, v2, v3, "%s receive input", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDC5E0](v5, -1, -1);
    MEMORY[0x245CDC5E0](v4, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2411062C8(v7);
      swift_unknownObjectRelease();
    }

    else
    {

      v17 = sub_241165268();
      v18 = sub_241166048();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136315138;

        *(v19 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v22);
        _os_log_impl(&dword_2410F8000, v17, v18, "%s received event, but has no delegate to notify", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x245CDC5E0](v20, -1, -1);
        MEMORY[0x245CDC5E0](v19, -1, -1);

        swift_unknownObjectRelease();
        return;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRetain();
    oslog = sub_241165268();
    v8 = sub_241166048();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315650;

      *(v9 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v22);
      *(v9 + 12) = 2080;
      swift_unknownObjectRetain();
      v11 = sub_241165DE8();
      v13 = sub_241156B38(v11, v12, &v22);

      *(v9 + 14) = v13;
      *(v9 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A90, &qword_241167C10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A98, &qword_241167C18);
      v14 = sub_241165DE8();
      v16 = sub_241156B38(v14, v15, &v22);

      *(v9 + 24) = v16;
      _os_log_impl(&dword_2410F8000, oslog, v8, "%s has the wrong type: %s, expected: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v10, -1, -1);
      MEMORY[0x245CDC5E0](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_241105010()
{
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v0 = sub_241165288();
  __swift_project_value_buffer(v0, qword_27E533A80);
  v1 = sub_241165268();
  v2 = sub_241166068();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v6);
    _os_log_impl(&dword_2410F8000, v1, v2, "%s completing transaction", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x245CDC5E0](v4, -1, -1);
    MEMORY[0x245CDC5E0](v3, -1, -1);
  }

  return MEMORY[0x245CDAB10]();
}

uint64_t sub_24110515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_241105208;

  return sub_2411059C8(a5);
}

uint64_t sub_241105208()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24110537C;
  }

  else
  {
    v2 = sub_24110531C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24110531C()
{
  dispatch_group_leave(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24110537C()
{
  v16 = v0;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A80);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v15);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = sub_241166458();
    v12 = sub_241156B38(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s event error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 48));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2411055A4(int a1, int a2)
{
  if (a1 == 2)
  {
    return 0;
  }

  v24[5] = v2;
  v24[6] = v3;
  if (a1 != 3)
  {
    if (qword_27E5305B0 != -1)
    {
      swift_once();
    }

    v7 = sub_241165288();
    __swift_project_value_buffer(v7, qword_27E533A80);
    v8 = sub_241165268();
    v9 = sub_241166048();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = a1;
      *(v10 + 8) = 2080;
      *(v10 + 10) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v24);
      _os_log_impl(&dword_2410F8000, v8, v9, "Invalid status %d for %s", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245CDC5E0](v11, -1, -1);
      MEMORY[0x245CDC5E0](v10, -1, -1);
    }

    v12 = 0;
    v4 = a1;
    goto LABEL_13;
  }

  v4 = a2;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (qword_27E5305B0 != -1)
      {
        swift_once();
      }

      v19 = sub_241165288();
      __swift_project_value_buffer(v19, qword_27E533A80);
      v20 = sub_241165268();
      v21 = sub_241166048();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24[0] = v23;
        *v22 = 67109378;
        *(v22 + 8) = 2080;
        *(v22 + 10) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v24);
        _os_log_impl(&dword_2410F8000, v20, v21, "Unknown approval time %d for %s", v22, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x245CDC5E0](v23, -1, -1);
        MEMORY[0x245CDC5E0](v22, -1, -1);
      }

      v4 = 0;
      v12 = 1;
      goto LABEL_13;
    }

    if (a2 == 1)
    {
      return 1;
    }

LABEL_17:
    if (qword_27E5305B0 != -1)
    {
      swift_once();
    }

    v14 = sub_241165288();
    __swift_project_value_buffer(v14, qword_27E533A80);
    v15 = sub_241165268();
    v16 = sub_241166048();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 67109378;
      *(v17 + 4) = v4;
      *(v17 + 8) = 2080;
      *(v17 + 10) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v24);
      _os_log_impl(&dword_2410F8000, v15, v16, "Unknown approval time %d for %s", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x245CDC5E0](v18, -1, -1);
      MEMORY[0x245CDC5E0](v17, -1, -1);
    }

    v12 = 1;
LABEL_13:
    sub_241106834();
    swift_allocError();
    *v13 = v4;
    *(v13 + 4) = v12;
    return swift_willThrow();
  }

  if (a2 == 2)
  {
    return 2;
  }

  if (a2 != 3)
  {
    goto LABEL_17;
  }

  return 3;
}

uint64_t sub_2411059E8()
{
  v47 = v0;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E533A80);
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v46);
    _os_log_impl(&dword_2410F8000, v2, v3, "Handling %s biome event", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDC5E0](v5, -1, -1);
    MEMORY[0x245CDC5E0](v4, -1, -1);
  }

  v6 = [*(v0 + 56) eventBody];
  *(v0 + 64) = v6;
  if (!v6)
  {
    v13 = sub_241165268();
    v14 = sub_241166048();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v46);
      _os_log_impl(&dword_2410F8000, v13, v14, "No event body for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245CDC5E0](v16, -1, -1);
      MEMORY[0x245CDC5E0](v15, -1, -1);
    }

    sub_241106834();
    swift_allocError();
    *v17 = 0;
    *(v17 + 4) = 2;
    swift_willThrow();
    goto LABEL_19;
  }

  v7 = v6;
  if ([v6 status] == 1)
  {
    v8 = v7;
    v9 = sub_241165268();
    v10 = sub_241166068();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46[0] = v12;
      *v11 = 67109378;
      *(v11 + 4) = [v8 status];

      *(v11 + 8) = 2080;
      *(v11 + 10) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v46);
      _os_log_impl(&dword_2410F8000, v9, v10, "Status was %d (pending) for %s. Ignoring biome event.", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 8);
    goto LABEL_20;
  }

  v18 = [v7 responderDSID];
  if (!v18)
  {
    v24 = sub_241165268();
    v25 = sub_241166048();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2410F8000, v24, v25, "Event body did not contain a DSID.", v26, 2u);
      MEMORY[0x245CDC5E0](v26, -1, -1);
    }

    sub_241106834();
    swift_allocError();
    *v27 = 1;
    *(v27 + 4) = 2;
    swift_willThrow();

LABEL_19:
    v23 = *(v0 + 8);
LABEL_20:

    return v23();
  }

  v19 = v18;
  v20 = sub_241165DD8();
  v22 = v21;

  *(v0 + 72) = v22;
  v29 = sub_2411055A4([v7 status], objc_msgSend(v7, sel_approvalTime));
  v30 = [v7 requestID];
  v31 = sub_241165DD8();
  v33 = v32;

  *(v0 + 80) = v33;
  *(v0 + 16) = v31;
  *(v0 + 24) = v33;
  *(v0 + 32) = v20;
  *(v0 + 40) = v22;
  *(v0 + 48) = v29;

  v34 = v7;
  v35 = sub_241165268();
  v36 = sub_241166068();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v37 = 136315650;
    v38 = [v34 requestID];
    v39 = sub_241165DD8();
    v41 = v40;

    v42 = sub_241156B38(v39, v41, v46);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = sub_241156B38(v20, v22, v46);

    *(v37 + 14) = v43;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v29;
    _os_log_impl(&dword_2410F8000, v35, v36, "Calling into ScreenTimeAnswerHandler with requestID %s, responderDSID: %s, answer: %ld", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v45, -1, -1);
    MEMORY[0x245CDC5E0](v37, -1, -1);
  }

  else
  {
  }

  v44 = swift_task_alloc();
  *(v0 + 88) = v44;
  *v44 = v0;
  v44[1] = sub_2411060CC;

  return sub_24110BEC0();
}

uint64_t sub_2411060CC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_241106254;
  }

  else
  {
    v2 = sub_2411061E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2411061E0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241106254()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2411062C8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v7 = sub_241165288();
  __swift_project_value_buffer(v7, qword_27E533A80);
  v8 = sub_241165268();
  v9 = sub_241166068();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v23);
    _os_log_impl(&dword_2410F8000, v8, v9, "%s event consume", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  sub_2411651D8();
  swift_allocObject();
  sub_2411651B8();
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = sub_241165FA8();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v14[5] = a1;
  v14[6] = v12;

  v15 = a1;
  v16 = v12;
  sub_24113C95C(0, 0, v6, &unk_241167C30, v14);

  sub_241166098();
  v17 = sub_241165268();
  v18 = sub_241166068();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v23);
    _os_log_impl(&dword_2410F8000, v17, v18, "%s eventHandler complete", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x245CDC5E0](v20, -1, -1);
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  sub_241105010();
}

uint64_t sub_241106628()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_241106678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241106740;

  return sub_24110515C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_241106740()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_241106834()
{
  result = qword_27E530AA0;
  if (!qword_27E530AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530AA0);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenTimeRequestBiomeEventHandler.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenTimeRequestBiomeEventHandler.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_241106928(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_241106940(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

id sub_241106974()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() defaultCenter];
    v4 = [objc_allocWithZone(MEMORY[0x277CBDAF0]) initWithContactStore:v0 accountStore:v2 notificationCenter:v3];

    v5 = [v4 downtimeWhitelistContainer];
    v6 = [v5 identifier];

    v7 = sub_241165DD8();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    return (v10 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_241106AC0()
{
  sub_2411664A8();
  MEMORY[0x245CDBE00](0);
  return sub_2411664C8();
}

uint64_t sub_241106B2C(uint64_t a1)
{
  sub_2411664A8();
  MEMORY[0x245CDBE00](0);
  return sub_2411664C8();
}

uint64_t sub_241106B8C(uint64_t a1)
{
  v2 = sub_2411093E8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241106BC8(uint64_t a1)
{
  v2 = sub_2411093E8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241106C04(uint64_t a1)
{
  v1 = sub_241165CC8();
  v2 = sub_241165338();
  v4 = v3;

  v5 = sub_241165498();
  if (v4)
  {
    if (v2 != v5 || v4 != v6)
    {
      sub_2411663E8();
    }
  }

  else
  {
  }

  return sub_241165E38();
}

uint64_t sub_241106CDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_241164ED8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20);
  v2[7] = swift_task_alloc();
  v4 = sub_2411650D8();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_241164F58();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB8, &unk_241167D40);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_241165168();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241106FC4, 0, 0);
}

id sub_241106FC4()
{
  v92 = v0;
  v1 = sub_2411655E8();
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  sub_2411655D8();
  sub_241107BB4();
  sub_241165598();
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result aa_primaryAppleAccount];

  v79 = v2;
  v80 = v1;
  if (v6)
  {
    v7 = [v6 aa_firstName];
    if (v7)
    {
      v8 = v7;
      sub_241165DD8();

      goto LABEL_7;
    }
  }

  sub_241165E38();
LABEL_7:
  v9 = v0[24];
  bufa = v0[23];
  v86 = v0[22];
  v11 = v0[20];
  v10 = v0[21];
  v82 = v0[19];
  v12 = v0[3];
  sub_2411655A8();
  v13 = *v12;
  v14 = sub_241165CC8();
  sub_241165328();
  v89 = v3;

  sub_2411655C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AC0, &qword_241168060);
  v15 = swift_task_alloc();
  v16 = *MEMORY[0x277D39F30];
  v17 = sub_2411654C8();
  v18 = v0;
  v19 = *(v17 - 8);
  (*(v19 + 104))(v15, v16, v17);
  (*(v19 + 56))(v15, 0, 1, v17);
  sub_241165508();

  v20 = sub_241165CC8();
  sub_241165338();

  v21 = v89;
  v22 = sub_241165578();
  sub_241106C04(v22);
  sub_241165528();
  v23 = sub_241165CC8();
  sub_241165388();

  sub_241165548();
  v24 = *(sub_2411654D8() - 8);
  swift_task_alloc();
  (*(v24 + 104))();
  sub_241165558();

  sub_241165158();
  v25 = [objc_opt_self() hours];
  sub_241108F98();
  sub_241164E78();
  sub_241165148();
  (*(v11 + 8))(v10, v82);
  (*(bufa + 1))(v9, v86);
  sub_241165538();
  sub_241164F48();
  sub_241165B68();
  v27 = v18[13];
  v26 = v18[14];
  v28 = v18[12];
  v29 = v18[8];
  v30 = v18[9];
  sub_241107F38(v26, v13, v27);
  sub_2410FB29C(v26, &qword_27E530AB0, &qword_241168080);
  sub_241108FE4(v27, v26);
  sub_241109054(v26, v28);
  v31 = *(v30 + 48);
  v32 = v18;
  if (v31(v28, 1, v29) != 1)
  {
    v34 = v18[16];
    v35 = v18[15];
    v36 = v18[7];
    (*(v18[9] + 32))(v18[10], v18[12], v18[8]);
    sub_241164F28();
    if ((*(v34 + 48))(v36, 1, v35) == 1)
    {
      sub_2410FB29C(v18[7], &qword_27E530AA8, &qword_241167D20);
      v32 = v18;
    }

    else
    {
      v38 = v18[16];
      v37 = v18[17];
      v39 = v18[15];
      (*(v38 + 32))(v37, v18[7], v39);
      v33 = sub_241164F08();
      (*(v38 + 8))(v37, v39);
      v32 = v18;
      if (v33)
      {
        (*(v18[9] + 8))(v18[10], v18[8]);
        goto LABEL_14;
      }
    }

    (*(v32[9] + 8))(v32[10], v32[8]);
    v33 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  sub_2410FB29C(v18[12], &qword_27E530AB0, &qword_241168080);
  v33 = MEMORY[0x277D84F90];
LABEL_14:
  sub_2411654A8();
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v40 = sub_241165288();
  __swift_project_value_buffer(v40, qword_27E533A20);

  v41 = sub_241165268();
  v42 = sub_241166068();
  if (os_log_type_enabled(v41, v42))
  {
    v83 = v42;
    v43 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v90 = v81;
    *v43 = 134218242;
    *(v43 + 4) = *(v33 + 16);

    buf = v43;
    *(v43 + 12) = 2080;
    v44 = *(v33 + 16);
    v45 = MEMORY[0x277D84F90];
    if (v44)
    {
      v76 = v41;
      v78 = v31;
      v46 = v32[5];
      v91 = MEMORY[0x277D84F90];
      sub_241100458(0, v44, 0);
      v45 = v91;
      v47 = *(v46 + 16);
      v46 += 16;
      v77 = v33;
      v48 = v33 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
      v87 = *(v46 + 56);
      v88 = v47;
      v49 = (v46 - 8);
      do
      {
        v50 = v32[6];
        v51 = v32[4];
        v88(v50, v48, v51);
        v52 = sub_241164EB8();
        v54 = v53;
        (*v49)(v50, v51);
        v91 = v45;
        v56 = *(v45 + 16);
        v55 = *(v45 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_241100458((v55 > 1), v56 + 1, 1);
          v45 = v91;
        }

        *(v45 + 16) = v56 + 1;
        v57 = v45 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v54;
        v48 += v87;
        --v44;
      }

      while (v44);
      v31 = v78;
      v33 = v77;
      v41 = v76;
    }

    v58 = MEMORY[0x245CDB850](v45, MEMORY[0x277D837D0]);
    v60 = v59;

    v61 = sub_241156B38(v58, v60, &v90);

    *(buf + 14) = v61;
    _os_log_impl(&dword_2410F8000, v41, v83, "Appending %ld additional components to conversation url: %s", buf, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x245CDC5E0](v81, -1, -1);
    MEMORY[0x245CDC5E0](buf, -1, -1);

    v21 = v89;
  }

  else
  {
  }

  v62 = v32[11];
  v63 = v32[8];
  sub_24110B9E8(v33);
  sub_241164F18();
  sub_241164F38();
  if (v31(v62, 1, v63) == 1)
  {
    v64 = v32[18];
    v66 = v32[15];
    v65 = v32[16];
    v67 = v32[14];
    sub_2410FB29C(v32[11], &qword_27E530AB0, &qword_241168080);
    sub_2411090C4();
    swift_allocError();
    swift_willThrow();
    sub_2410FB29C(v67, &qword_27E530AB0, &qword_241168080);
    (*(v65 + 8))(v64, v66);
    (*(v79 + 8))(v21, v80);

    v68 = v32[1];
  }

  else
  {
    (*(v32[9] + 32))(v32[2], v32[11], v32[8]);
    v69 = sub_241165268();
    v70 = sub_241166068();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2410F8000, v69, v70, "SPI Payload successful!", v71, 2u);
      MEMORY[0x245CDC5E0](v71, -1, -1);
    }

    v72 = v32[18];
    v74 = v32[15];
    v73 = v32[16];
    v75 = v32[14];

    sub_2410FB29C(v75, &qword_27E530AB0, &qword_241168080);
    (*(v73 + 8))(v72, v74);
    (*(v79 + 8))(v89, v80);

    v68 = v32[1];
  }

  return v68();
}

void sub_241107BB4()
{
  v0 = [objc_opt_self() defaultStore];
  if (!v0)
  {
    goto LABEL_76;
  }

  v1 = v0;
  v2 = [v0 aa_primaryAppleAccount];

  if (v2)
  {
    v3 = [v2 normalizedDSID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_241165DD8();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      v9 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v10 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v37 = 0;
          sub_24113049C(v5, v7, 10);
          goto LABEL_66;
        }

        if ((v7 & 0x2000000000000000) != 0)
        {
          v36[0] = v5;
          v36[1] = v7 & 0xFFFFFFFFFFFFFFLL;
          if (v5 == 43)
          {
            if (v8)
            {
              if (--v8)
              {
                v25 = 0;
                v26 = v36 + 1;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  v28 = 10 * v25;
                  if ((v25 * 10) >> 64 != (10 * v25) >> 63)
                  {
                    break;
                  }

                  v25 = v28 + v27;
                  if (__OFADD__(v28, v27))
                  {
                    break;
                  }

                  ++v26;
                  if (!--v8)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_64;
            }

            goto LABEL_75;
          }

          if (v5 != 45)
          {
            if (v8)
            {
              v32 = 0;
              v33 = v36;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                v35 = 10 * v32;
                if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                {
                  break;
                }

                v32 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  break;
                }

                ++v33;
                if (!--v8)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }

          if (v8)
          {
            if (--v8)
            {
              v17 = 0;
              v18 = v36 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  break;
                }

                v20 = 10 * v17;
                if ((v17 * 10) >> 64 != (10 * v17) >> 63)
                {
                  break;
                }

                v17 = v20 - v19;
                if (__OFSUB__(v20, v19))
                {
                  break;
                }

                ++v18;
                if (!--v8)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v11 = sub_2411662F8();
          }

          v12 = *v11;
          if (v12 == 43)
          {
            if (v9 >= 1)
            {
              v8 = v9 - 1;
              if (v9 != 1)
              {
                v21 = 0;
                if (v11)
                {
                  v22 = v11 + 1;
                  while (1)
                  {
                    v23 = *v22 - 48;
                    if (v23 > 9)
                    {
                      goto LABEL_64;
                    }

                    v24 = 10 * v21;
                    if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                    {
                      goto LABEL_64;
                    }

                    v21 = v24 + v23;
                    if (__OFADD__(v24, v23))
                    {
                      goto LABEL_64;
                    }

                    ++v22;
                    if (!--v8)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                goto LABEL_56;
              }

              goto LABEL_64;
            }

            goto LABEL_74;
          }

          if (v12 != 45)
          {
            if (v9)
            {
              v29 = 0;
              if (v11)
              {
                while (1)
                {
                  v30 = *v11 - 48;
                  if (v30 > 9)
                  {
                    goto LABEL_64;
                  }

                  v31 = 10 * v29;
                  if ((v29 * 10) >> 64 != (10 * v29) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v29 = v31 + v30;
                  if (__OFADD__(v31, v30))
                  {
                    goto LABEL_64;
                  }

                  ++v11;
                  if (!--v9)
                  {
                    goto LABEL_56;
                  }
                }
              }

              goto LABEL_56;
            }

LABEL_64:
            LOBYTE(v8) = 1;
            goto LABEL_65;
          }

          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v13 = 0;
              if (v11)
              {
                v14 = v11 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_64;
                  }

                  v16 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v13 = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    goto LABEL_64;
                  }

                  ++v14;
                  if (!--v8)
                  {
                    goto LABEL_65;
                  }
                }
              }

LABEL_56:
              LOBYTE(v8) = 0;
LABEL_65:
              v37 = v8;
LABEL_66:

              return;
            }

            goto LABEL_64;
          }

          __break(1u);
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_241107F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v91 = a3;
  v90 = sub_241164F58();
  v84 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_241164ED8();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v83 = &v75 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v75 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v75 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v75 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v75 - v16;
  v18 = sub_241165B28();
  v81 = *(v18 - 8);
  v82 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v92 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v89 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v75 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v75 - v26;
  v28 = sub_2411650D8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v87 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v31 = sub_241165288();
  __swift_project_value_buffer(v31, qword_27E533A20);
  v32 = sub_241165268();
  v33 = sub_241166068();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2410F8000, v32, v33, "Attempting to add icon image data to base URL", v34, 2u);
    MEMORY[0x245CDC5E0](v34, -1, -1);
  }

  sub_241109054(a1, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_2410FB29C(v27, &qword_27E530AB0, &qword_241168080);
    v35 = sub_241165268();
    v36 = sub_241166068();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2410F8000, v35, v36, "Tried adding an icon to a URL, but the given URL was nil", v37, 2u);
      MEMORY[0x245CDC5E0](v37, -1, -1);
    }

    return (*(v29 + 56))(v91, 1, 1, v28);
  }

  else
  {
    v39 = *(v29 + 32);
    v75 = v28;
    v39(v87, v27, v28);
    sub_241164F28();
    type metadata accessor for MessagesBackwardCompatibilityURLProvider(0);
    v40 = v89;
    sub_241165738();
    sub_241165B18();
    sub_241165748();
    v41 = *(v84 + 48);
    v42 = v41(v24, 1, v90);
    v43 = MEMORY[0x277D84F90];
    if (!v42)
    {
      v44 = sub_241164F08();
      if (v44)
      {
        v43 = v44;
      }
    }

    if ((sub_241165B18() & 1) != 0 || (sub_241108CD8(v40), !v45))
    {
      v51 = sub_241165268();
      v52 = sub_241166068();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2410F8000, v51, v52, "Tried adding associatedContentIcon data to the URL, but the icon data was nil", v53, 2u);
        MEMORY[0x245CDC5E0](v53, -1, -1);
      }
    }

    else
    {
      sub_241164EA8();

      (*(v85 + 16))(v77, v17, v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_241160894(0, v43[2] + 1, 1, v43);
      }

      v47 = v43[2];
      v46 = v43[3];
      if (v47 >= v46 >> 1)
      {
        v43 = sub_241160894((v46 > 1), v47 + 1, 1, v43);
      }

      v48 = v85;
      v49 = v17;
      v50 = v86;
      (*(v85 + 8))(v49, v86);
      v43[2] = v47 + 1;
      (*(v48 + 32))(v43 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v77, v50);
    }

    if ((sub_241165B18() & 1) != 0 || (sub_241108CD8(v92), !v54))
    {
      v60 = sub_241165268();
      v61 = sub_241166068();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2410F8000, v60, v61, "Tried adding clientIcon data to the URL, but the icon data was nil", v62, 2u);
        MEMORY[0x245CDC5E0](v62, -1, -1);
      }

      v56 = v85;
      v57 = v86;
    }

    else
    {
      v55 = v78;
      sub_241164EA8();

      v56 = v85;
      v57 = v86;
      (*(v85 + 16))(v79, v55, v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_241160894(0, v43[2] + 1, 1, v43);
      }

      v59 = v43[2];
      v58 = v43[3];
      if (v59 >= v58 >> 1)
      {
        v43 = sub_241160894((v58 > 1), v59 + 1, 1, v43);
      }

      (*(v56 + 8))(v78, v57);
      v43[2] = v59 + 1;
      (*(v56 + 32))(v43 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v59, v79, v57);
    }

    v63 = v83;
    sub_241164EA8();

    (*(v56 + 16))(v88, v63, v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_241160894(0, v43[2] + 1, 1, v43);
    }

    v65 = v43[2];
    v64 = v43[3];
    if (v65 >= v64 >> 1)
    {
      v43 = sub_241160894((v64 > 1), v65 + 1, 1, v43);
    }

    v43[2] = v65 + 1;
    (*(v56 + 32))(v43 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v65, v88, v57);
    v66 = v90;
    if (v41(v24, 1, v90))
    {
    }

    else
    {
      sub_241164F18();
    }

    if (v41(v24, 1, v66))
    {
      (*(v56 + 8))(v63, v57);
      v67 = v82;
      v68 = *(v81 + 8);
      v68(v92, v82);
      v68(v89, v67);
      v69 = v75;
      (*(v29 + 8))(v87, v75);
      (*(v29 + 56))(v91, 1, 1, v69);
    }

    else
    {
      v70 = v56;
      v71 = v84;
      v72 = v76;
      (*(v84 + 16))(v76, v24, v66);
      sub_241164F38();
      (*(v71 + 8))(v72, v66);
      (*(v70 + 8))(v63, v57);
      v73 = v82;
      v74 = *(v81 + 8);
      v74(v92, v82);
      v74(v89, v73);
      (*(v29 + 8))(v87, v75);
    }

    return sub_2410FB29C(v24, &qword_27E530AA8, &qword_241167D20);
  }
}

uint64_t URL.getQueryParameters.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_241164F58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241164F28();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2410FB29C(v2, &qword_27E530AA8, &qword_241167D20);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = sub_241164F08();
    (*(v4 + 8))(v6, v3);
    if (v8)
    {
      return v8;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }
}

uint64_t sub_241108CD8(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for MessagesBackwardCompatibilityURLProvider(0);
  v1 = sub_241165758();
  v3 = v2;
  v4 = 0;
  if (v2 >> 60 != 15)
  {
    v5 = sub_2411650F8();
    v25[0] = 0;
    v4 = [v5 compressedDataUsingAlgorithm:3 error:v25];

    v6 = v25[0];
    if (!v4)
    {
      v7 = v6;
      v8 = sub_241165058();

      swift_willThrow();
      v4 = 0;
    }
  }

  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E533A20);
  v10 = v4;
  v11 = sub_241165268();
  v12 = sub_241166068();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    if (!v4)
    {
      v20 = 0;
LABEL_17:
      *(v13 + 4) = v20;

      _os_log_impl(&dword_2410F8000, v11, v12, "Icon image data is %ld bytes", v13, 0xCu);
      MEMORY[0x245CDC5E0](v13, -1, -1);

      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v24 = v1;
    v14 = sub_241166108();
    v15 = sub_241166118();
    v16 = sub_241166108();
    v17 = sub_241166118();
    if (v14 < v16 || v17 < v14)
    {
      __break(1u);
    }

    else
    {
      v18 = sub_241166108();
      v19 = sub_241166118();
      if (v15 >= v18 && v19 >= v15)
      {
        v20 = v15 - v14;
        if (!__OFSUB__(v15, v14))
        {
          v1 = v24;
          goto LABEL_17;
        }

LABEL_22:
        __break(1u);
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_18:
    sub_241109164(v1, v3);
    return 0;
  }

LABEL_15:
  v21 = [v10 base64EncodedStringWithOptions_];
  v22 = sub_241165DD8();
  sub_241109164(v1, v3);

  return v22;
}

unint64_t sub_241108F98()
{
  result = qword_27E530AC8;
  if (!qword_27E530AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E530AC8);
  }

  return result;
}

uint64_t sub_241108FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241109054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2411090C4()
{
  result = qword_27E530AD0;
  if (!qword_27E530AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530AD0);
  }

  return result;
}

uint64_t type metadata accessor for MessagesBackwardCompatibilityURLProvider(uint64_t a1)
{
  result = qword_27E530AD8;
  if (!qword_27E530AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241109164(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2410FB5B8(result, a2);
  }

  return result;
}

uint64_t sub_2411091A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_241165788();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_241109264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_241165788();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_241109308(uint64_t a1)
{
  result = sub_241165CE8();
  if (v2 <= 0x3F)
  {
    result = sub_241165788();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_241109394()
{
  result = qword_27E530AE8;
  if (!qword_27E530AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530AE8);
  }

  return result;
}

unint64_t sub_2411093E8()
{
  result = qword_27E530AF0;
  if (!qword_27E530AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530AF0);
  }

  return result;
}

unint64_t sub_24110943C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  v1 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x800000024116A970;
  v2 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(v1, &unk_27E530E80, &qword_241168920);
  return v2;
}

void sub_241109594(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  __swift_project_value_buffer(v4, qword_27E533A08);
  v5 = v1;
  v6 = a1;
  v7 = sub_241165268();
  v8 = sub_241166068();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_241156B38(*(v5 + qword_27E530B00), *(v5 + qword_27E530B00 + 8), &aBlock);
    *(v9 + 12) = 1024;
    *(v9 + 14) = [v6 processIdentifier];

    _os_log_impl(&dword_2410F8000, v7, v8, "Configuring XPC connection for %s from PID %d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  else
  {
  }

  aBlock = v6;
  v11 = *(v3 + 96);
  v12 = *(v3 + 80);
  swift_getAssociatedConformanceWitness();
  v13 = v6;
  v14 = sub_2411657D8();
  v41 = (*(v11 + 32))();
  v15 = (*(v11 + 24))(v12, v11);
  v38 = objc_opt_self();
  v40 = [v38 interfaceWithProtocol_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309E0, &qword_241167F80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_241167EC0;
  v17 = sub_24110A348();
  *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C08, &qword_241167F88);
  *(v16 + 32) = v17;
  v18 = sub_241165928();
  *(v16 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530C10, &qword_241167F90);
  *(v16 + 64) = v18;
  v19 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v20 = sub_241165EE8();

  v21 = [v19 initWithArray_];

  aBlock = 0;
  sub_241165FC8();
  if (aBlock)
  {

    v22 = sub_241165FB8();
    [v40 setClasses:v22 forSelector:sel_knownHandlesFrom_reply_ argumentIndex:0 ofReply:0];

    v23 = sub_241165FB8();

    [v40 setClasses:v23 forSelector:sel_knownHandlesFrom_reply_ argumentIndex:0 ofReply:1];

    [v13 setExportedInterface_];
    [v13 setExportedObject_];
    v24 = sub_2411657E8();
    v25 = [v38 interfaceWithProtocol_];

    v39 = v25;
    [v13 setRemoteObjectInterface_];
    v26 = swift_allocObject();
    v26[2] = v13;
    v26[3] = v5;
    v26[4] = v14;
    v46 = sub_24110A398;
    v47 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_2410FF7EC;
    v45 = &block_descriptor_3;
    v27 = _Block_copy(&aBlock);
    v28 = v5;
    v29 = v13;
    swift_unknownObjectRetain();

    [v29 setInterruptionHandler_];
    _Block_release(v27);
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v28;
    v30[4] = v14;
    v46 = sub_24110A434;
    v47 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_2410FF7EC;
    v45 = &block_descriptor_7;
    v31 = _Block_copy(&aBlock);
    v32 = v28;
    v33 = v29;
    swift_unknownObjectRetain();

    [v33 setInvalidationHandler_];
    _Block_release(v31);
    sub_2411657F8();
    sub_24114C170(v14);
    v34 = v33;
    v35 = sub_241165268();
    v36 = sub_241166068();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = [v34 processIdentifier];

      _os_log_impl(&dword_2410F8000, v35, v36, "Activated connection for PID %d", v37, 8u);
      MEMORY[0x245CDC5E0](v37, -1, -1);
      swift_unknownObjectRelease();
      v34 = v40;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_241109CA0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t))
{
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E533A08);
  v10 = a1;
  v11 = sub_241165268();
  v12 = sub_241166068();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = [v10 processIdentifier];

    _os_log_impl(&dword_2410F8000, v11, v12, a4, v13, 8u);
    MEMORY[0x245CDC5E0](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  return a5(a3);
}

id sub_241109DE8(const char *a1, const char **a2)
{
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E533A08);
  v6 = v2;
  v7 = sub_241165268();
  v8 = sub_241166068();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_241156B38(*&v6[qword_27E530B00], *&v6[qword_27E530B00 + 8], &v14);
    _os_log_impl(&dword_2410F8000, v7, v8, a1, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  v11 = *&v6[qword_27E530B08];
  v12 = *a2;

  return [v11 v12];
}

uint64_t sub_241109F5C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_24110A1BC(v7);

  return v9 & 1;
}

id sub_24110A010()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24110A048(uint64_t a1)
{
}

uint64_t sub_24110A0E0()
{
  v0 = sub_24110A1A8();

  return v0;
}

uint64_t sub_24110A1BC(void *a1)
{
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A08);
  v4 = v1;
  v5 = sub_241165268();
  v6 = sub_241166068();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241156B38(*&v4[qword_27E530B00], *&v4[qword_27E530B00 + 8], &v10);
    _os_log_impl(&dword_2410F8000, v5, v6, "Incoming XPC connection for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  sub_241109594(a1);
  return 1;
}

unint64_t sub_24110A348()
{
  result = qword_27E530C00;
  if (!qword_27E530C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E530C00);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24110A4BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v13 = sub_241165DA8();
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = sub_24110B940;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24110AB10;
  aBlock[3] = &block_descriptor_4;
  v16 = _Block_copy(aBlock);

  [a2 openApplication:v13 withOptions:v18 completion:v16];
  _Block_release(v16);
}

uint64_t sub_24110A6AC(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v6 = qword_27E5305E0;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E533B10);
    v9 = v7;

    v10 = sub_241165268();
    v11 = sub_241166068();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_241156B38(a3, a4, &v30);
      *(v12 + 12) = 1024;
      *(v12 + 14) = [v9 pid];

      _os_log_impl(&dword_2410F8000, v10, v11, "Successfully background launched app with bundle identifier %s. Client PID: %d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      v15 = a2;
      if (qword_27E5305E0 != -1)
      {
        swift_once();
      }

      v16 = sub_241165288();
      __swift_project_value_buffer(v16, qword_27E533B10);

      v17 = a2;
      v18 = sub_241165268();
      v19 = sub_241166048();

      if (!os_log_type_enabled(v18, v19))
      {

        goto LABEL_18;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_241156B38(a3, a4, &v30);
      *(v20 + 12) = 2112;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_2410F8000, v18, v19, "Failed to background launch app with bundle identifier %s. error: %@", v20, 0x16u);
      sub_2410FDEB8(v21);
      MEMORY[0x245CDC5E0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245CDC5E0](v22, -1, -1);
      MEMORY[0x245CDC5E0](v20, -1, -1);
    }

    else
    {
      if (qword_27E5305E0 != -1)
      {
        swift_once();
      }

      v25 = sub_241165288();
      __swift_project_value_buffer(v25, qword_27E533B10);

      v18 = sub_241165268();
      v26 = sub_241166048();

      if (os_log_type_enabled(v18, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_241156B38(a3, a4, &v30);
        _os_log_impl(&dword_2410F8000, v18, v26, "Failed to background launch app with bundle identifier %s due to an unknown error.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x245CDC5E0](v28, -1, -1);
        MEMORY[0x245CDC5E0](v27, -1, -1);
      }
    }
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  return sub_241165F78();
}

void sub_24110AB10(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24110AB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_241106740;

  return sub_24110AC5C(a1, a2, a3);
}

uint64_t sub_24110AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v3[22] = swift_getObjectType();
  v4 = sub_241165AC8();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2411651A8();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24110AD88, 0, 0);
}

uint64_t sub_24110AD88()
{
  v58 = v0;
  if (qword_27E5305E0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533B10);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166068();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = v0[28];
    v8 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v57[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_241156B38(0xD00000000000002BLL, 0x800000024116AA10, v57);
    *(v9 + 12) = 2080;
    v11 = sub_2411656C8();
    sub_2411653D8();

    sub_24110B828(&qword_27E530C38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_2411663B8();
    v14 = v13;
    (*(v6 + 8))(v7, v8);
    v15 = sub_241156B38(v12, v14, v57);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s called with response for original question ID %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  v16 = sub_241165268();
  v17 = sub_241166068();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = v0[19];
    v18 = v0[20];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v57[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_241156B38(v19, v18, v57);
    _os_log_impl(&dword_2410F8000, v16, v17, "Launching client with bundle identifier %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x245CDC5E0](v21, -1, -1);
    MEMORY[0x245CDC5E0](v20, -1, -1);
  }

  v22 = v0[21];
  sub_241164E68();
  swift_allocObject();
  sub_241164E58();
  v0[18] = v22;
  sub_24110B828(&qword_27E530C20, MEMORY[0x277CEEB10], MEMORY[0x277CEEB18]);
  v23 = sub_241164E48();
  v0[29] = v23;
  v0[30] = v24;
  v25 = v23;
  v26 = v24;
  v27 = v0[24];
  v28 = v0[25];
  v29 = v0[23];

  v30 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v0[31] = v30;
  v31 = sub_2411650F8();
  (*(v27 + 104))(v28, *MEMORY[0x277CEED30], v29);
  v32 = sub_241165AB8();
  (*(v27 + 8))(v28, v29);
  [v30 setObject:v31 forSetting:v32];

  v33 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:v30 responder:0];
  v0[32] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241167EC0;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v35;
  v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 72) = sub_2410FCF28(0, &qword_27E530C28, 0x277CCABB0);
  *(inited + 48) = v36;
  *(inited + 80) = sub_241165DD8();
  *(inited + 88) = v37;
  v38 = sub_2410FCF28(0, &qword_27E530C30, 0x277CBEA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309E0, &qword_241167F80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2411673F0;
  *(v39 + 56) = sub_2410FCF28(0, &qword_27E5307E0, 0x277CF0B58);
  *(v39 + 32) = v33;
  v40 = v33;
  v41 = MEMORY[0x245CDBA70](v39);
  *(inited + 120) = v38;
  *(inited + 96) = v41;
  v42 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530E80, &qword_241168920);
  swift_arrayDestroy();
  v43 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[33] = v43;
  if (v43)
  {
    v44 = v43;
    v46 = v0[19];
    v45 = v0[20];
    sub_241142774(v42);

    v47 = sub_241165D08();

    v48 = [objc_opt_self() optionsWithDictionary_];
    v0[34] = v48;

    v49 = swift_task_alloc();
    v0[35] = v49;
    v49[2] = v44;
    v49[3] = v46;
    v49[4] = v45;
    v49[5] = v48;
    v50 = swift_task_alloc();
    v0[36] = v50;
    *v50 = v0;
    v50[1] = sub_24110B660;
    v51 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v50, 0, 0, 0xD00000000000002BLL, 0x800000024116AA10, sub_24110B81C, v49, v51);
  }

  else
  {

    v52 = sub_241165268();
    v53 = sub_241166048();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2410F8000, v52, v53, "FBSOpenApplicationService was nil", v54, 2u);
      MEMORY[0x245CDC5E0](v54, -1, -1);
    }

    sub_2410FB5B8(v25, v26);

    v55 = v0[1];

    return v55();
  }
}

uint64_t sub_24110B660()
{

  return MEMORY[0x2822009F8](sub_24110B778, 0, 0);
}

uint64_t sub_24110B778()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);

  sub_2410FB5B8(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24110B828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24110B870()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24110B940(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_24110A6AC(a1, a2, v5, v6);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24110B9E8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_241160894(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_241164ED8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24110BB14(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2411608BC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_241130E9C(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_2411608BC((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_24111606C(result);
  *v1 = v4;
  return result;
}

uint64_t sub_24110BDD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2411661F8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2411661F8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_241112744(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2411127E4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24110BEC0()
{
  v1[24] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20);
  v1[25] = swift_task_alloc();
  v2 = sub_241164F58();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = sub_241165BD8();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  v4 = sub_241165B58();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v5 = sub_2411650D8();
  v1[35] = v5;
  v1[36] = *(v5 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C48, &qword_241168010);
  v1[39] = v6;
  v1[40] = *(v6 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24110C164, 0, 0);
}

uint64_t sub_24110C164()
{
  v19 = v0;
  v0[22] = *(v0[24] + 32);
  v1 = sub_2411663B8();
  v3 = v2;
  v0[45] = v1;
  v0[46] = v2;
  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  v0[47] = v4;
  v0[48] = __swift_project_value_buffer(v4, qword_27E533A98);

  v5 = sub_241165268();
  v6 = sub_241166068();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241156B38(v1, v3, &v18);
    _os_log_impl(&dword_2410F8000, v5, v6, "ScreenTime answer ID was %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v9 = v0[24];
  v10 = *v9;
  v0[49] = *v9;
  v11 = v9[1];
  v0[50] = v11;
  v0[51] = v9[2];
  v0[52] = v9[3];

  v12 = sub_241165268();
  v13 = sub_241166068();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_241156B38(v10, v11, &v18);
    _os_log_impl(&dword_2410F8000, v12, v13, "Looking for Messages messages with request ID %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[53] = v16;
  *v16 = v0;
  v16[1] = sub_24110C450;

  return sub_2411129EC(v10, v11);
}

uint64_t sub_24110C450(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_24110D7B0;
  }

  else
  {
    v4 = sub_24110C564;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24110C564()
{
  v139 = v0;

  v2 = sub_241165268();
  v3 = sub_241166068();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 432);
  if (v4)
  {
    v7 = *(v0 + 392);
    v6 = *(v0 + 400);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v138[0] = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v5 + 16);

    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_241156B38(v7, v6, v138);
    _os_log_impl(&dword_2410F8000, v2, v3, "Found %ld Messages messages matching request ID %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 432);
  v11 = *(v10 + 16);
  *(v0 + 448) = v11;
  if (!v11)
  {

    v43 = *(v0 + 8);
LABEL_66:

    return v43();
  }

  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  v15 = *(v0 + 312);
  v16 = *(v0 + 320);
  v17 = *(v0 + 288);
  v18 = *(v15 + 48);
  *(v0 + 592) = v18;
  *(v0 + 456) = sub_241165CE8();
  v19 = *(v16 + 80);
  *(v0 + 596) = v19;
  v20 = MEMORY[0x277D188E0];
  *(v0 + 600) = *MEMORY[0x277CEED80];
  v21 = *v20;
  v22 = *(v0 + 440);
  *(v0 + 464) = v21;
  *(v0 + 472) = 0;
  if (*(v10 + 16))
  {
    v1 = *(v0 + 280);
    v129 = *(v0 + 304);
    v135 = v22;
    sub_2410FC88C(v10 + ((v19 + 32) & ~v19), v13, &qword_27E530C48, &qword_241168010);
    v23 = *(v13 + 8);
    v24 = *(v15 + 48);
    *v12 = *v13;
    *(v12 + 1) = v23;
    v25 = *(v17 + 32);
    v17 += 32;
    v25(&v12[v24], v13 + v18, v1);
    sub_2410FC88C(v12, v14, &qword_27E530C48, &qword_241168010);

    v25(v129, v14 + *(v15 + 48), v1);
    sub_241165B48();
    v26 = MEMORY[0x277CEEE38];
    sub_241115914(&qword_27E530C50, MEMORY[0x277CEEE38], MEMORY[0x277CEEE48]);
    sub_241115914(&qword_27E530C58, v26, MEMORY[0x277CEEE40]);
    sub_241165B38();
    if (v135)
    {
      v1 = v135;
      (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
      v27 = v135;
      v28 = sub_241165268();
      v29 = sub_241166048();

      v30 = os_log_type_enabled(v28, v29);
      v32 = *(v0 + 288);
      v31 = *(v0 + 296);
      v33 = *(v0 + 280);
      if (v30)
      {
        v34 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v138[0] = v136;
        *v34 = 136315394;
        sub_241115914(&qword_27E530C70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v35 = v1;
        v36 = sub_2411663B8();
        v38 = v37;
        v134 = *(v32 + 8);
        v134(v31, v33);
        v39 = v36;
        v1 = v35;
        v40 = sub_241156B38(v39, v38, v138);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2112;
        v41 = v35;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v42;
        *v131 = v42;
        _os_log_impl(&dword_2410F8000, v28, v29, "Could not parse ATPayload from messagesPayloadURL %s. error: %@", v34, 0x16u);
        sub_2410FB29C(v131, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v131, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v136);
        MEMORY[0x245CDC5E0](v136, -1, -1);
        MEMORY[0x245CDC5E0](v34, -1, -1);
      }

      else
      {

        v134 = *(v32 + 8);
        v134(v31, v33);
      }

      v54 = *(v0 + 208);
      v55 = *(v0 + 216);
      v56 = *(v0 + 200);
      sub_241164F28();
      if ((*(v55 + 48))(v56, 1, v54) == 1)
      {
        v57 = *(v0 + 200);

        sub_2410FB29C(v57, &qword_27E530AA8, &qword_241167D20);
        if (qword_27E5305B0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
        v58 = sub_241165268();
        v59 = sub_241166048();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v138[0] = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v138);
          _os_log_impl(&dword_2410F8000, v58, v59, "%s URL components was nil", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v61);
          MEMORY[0x245CDC5E0](v61, -1, -1);
          MEMORY[0x245CDC5E0](v60, -1, -1);
        }

        v62 = *(v0 + 344);
        v63 = *(v0 + 304);
        v64 = *(v0 + 280);
        v65 = *(v0 + 264);
        v66 = *(v0 + 272);
        v67 = *(v0 + 256);
        sub_2411133A8();
        swift_allocError();
        *v68 = v1;
        *(v68 + 8) = 0;
        *(v68 + 16) = 3;
        swift_willThrow();
        (*(v65 + 8))(v66, v67);
        v134(v63, v64);
        v69 = v62;
        goto LABEL_64;
      }

      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
      v17 = sub_2411655E8();
      v70 = *(v17 - 8);
      v13 = swift_task_alloc();
      v71 = swift_task_alloc();
      sub_2411654E8();
      (*(v70 + 32))(v13, v71, v17);

      v72 = sub_241114874(v13);
      if (!v72)
      {

        if (qword_27E5305B0 == -1)
        {
LABEL_40:
          __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
          v80 = sub_241165268();
          v81 = sub_241166048();
          v130 = v1;
          v132 = v13;
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v138[0] = v83;
            *v82 = 136315138;
            *(v82 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v138);
            _os_log_impl(&dword_2410F8000, v80, v81, "%s derivedPayload was nil", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v83);
            MEMORY[0x245CDC5E0](v83, -1, -1);
            MEMORY[0x245CDC5E0](v82, -1, -1);
          }

          v127 = *(v0 + 304);
          v128 = *(v0 + 344);
          v84 = *(v0 + 264);
          v85 = *(v0 + 272);
          v86 = *(v0 + 256);
          v88 = *(v0 + 216);
          v87 = *(v0 + 224);
          v89 = *(v0 + 208);
          v126 = *(v0 + 280);
          sub_2411133A8();
          swift_allocError();
          *v90 = v130;
          *(v90 + 8) = 0;
          *(v90 + 16) = 3;
          swift_willThrow();
          (*(v70 + 8))(v132, v17);
          (*(v88 + 8))(v87, v89);
          (*(v84 + 8))(v85, v86);
          v134(v127, v126);
          sub_2410FB29C(v128, &qword_27E530C48, &qword_241168010);

          goto LABEL_65;
        }

LABEL_70:
        swift_once();
        goto LABEL_40;
      }

      v44 = v72;
      v74 = *(v0 + 216);
      v73 = *(v0 + 224);
      v75 = *(v0 + 208);

      (*(v70 + 8))(v13, v17);
      (*(v74 + 8))(v73, v75);
    }

    else
    {
      v44 = *(v0 + 184);
    }

    v45 = v44;
    *(v0 + 480) = v45;
    v46 = sub_241165CC8();
    v134 = v45;

    v18 = sub_2411652F8();
    if (!(v18 >> 62))
    {
      v47 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        goto LABEL_13;
      }

LABEL_47:

      v91 = sub_241165CC8();
      v92 = sub_2411652F8();

      if (v92 >> 62)
      {
        v70 = sub_2411661F8();
        if (v70)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v70 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v70)
        {
LABEL_49:
          v137 = v0;
          v138[0] = MEMORY[0x277D84F90];
          sub_241100458(0, v70 & ~(v70 >> 63), 0);
          if ((v70 & 0x8000000000000000) == 0)
          {
            v93 = 0;
            v94 = v138[0];
            v95 = v92;
            v96 = v92 & 0xC000000000000001;
            v97 = v92;
            v98 = v70;
            do
            {
              if (v96)
              {
                v99 = MEMORY[0x245CDBC20](v93, v95);
              }

              else
              {
                v99 = *(v95 + 8 * v93 + 32);
              }

              v100 = v99;
              v101 = sub_241165418();
              v103 = v102;

              v138[0] = v94;
              v105 = *(v94 + 16);
              v104 = *(v94 + 24);
              if (v105 >= v104 >> 1)
              {
                sub_241100458((v104 > 1), v105 + 1, 1);
                v94 = v138[0];
              }

              ++v93;
              *(v94 + 16) = v105 + 1;
              v106 = v94 + 16 * v105;
              *(v106 + 32) = v101;
              *(v106 + 40) = v103;
              v95 = v97;
            }

            while (v98 != v93);

            v0 = v137;
            goto LABEL_60;
          }

          __break(1u);
          goto LABEL_70;
        }
      }

      v94 = MEMORY[0x277D84F90];
LABEL_60:

      v107 = sub_241165268();
      v108 = sub_241166048();

      if (os_log_type_enabled(v107, v108))
      {
        v110 = *(v0 + 360);
        v109 = *(v0 + 368);
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v138[0] = v112;
        *v111 = 136315394;
        *(v111 + 4) = sub_241156B38(v110, v109, v138);
        *(v111 + 12) = 2080;
        v113 = MEMORY[0x245CDB850](v94, MEMORY[0x277D837D0]);
        v115 = v114;

        v116 = sub_241156B38(v113, v115, v138);

        *(v111 + 14) = v116;
        _os_log_impl(&dword_2410F8000, v107, v108, "No answer choice in the original question had id %s. originalAnswerIds: %s", v111, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v112, -1, -1);
        MEMORY[0x245CDC5E0](v111, -1, -1);
      }

      else
      {
      }

      v117 = *(v0 + 360);
      v118 = *(v0 + 368);
      v133 = *(v0 + 344);
      v119 = *(v0 + 304);
      v120 = *(v0 + 280);
      v121 = *(v0 + 288);
      v122 = *(v0 + 264);
      v123 = *(v0 + 272);
      v124 = *(v0 + 256);
      sub_2411133A8();
      swift_allocError();
      *v125 = v117;
      *(v125 + 8) = v118;
      *(v125 + 16) = 1;
      swift_willThrow();

      (*(v122 + 8))(v123, v124);
      (*(v121 + 8))(v119, v120);
      v69 = v133;
LABEL_64:
      sub_2410FB29C(v69, &qword_27E530C48, &qword_241168010);
LABEL_65:

      v43 = *(v0 + 8);
      goto LABEL_66;
    }
  }

  else
  {
LABEL_45:
    __break(1u);
  }

  v47 = sub_2411661F8();
  if (!v47)
  {
    goto LABEL_47;
  }

LABEL_13:
  v17 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x245CDBC20](v17, v18);
    }

    else
    {
      if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v48 = *(v18 + 8 * v17 + 32);
    }

    v49 = v48;
    *(v0 + 488) = v48;
    v1 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v51 = *(v0 + 360);
    v50 = *(v0 + 368);
    if (sub_241165418() == v51 && v52 == v50)
    {
      break;
    }

    v13 = sub_2411663E8();

    if (v13)
    {
      goto LABEL_36;
    }

    ++v17;
    if (v1 == v47)
    {
      goto LABEL_47;
    }
  }

LABEL_36:

  v76 = swift_task_alloc();
  *(v0 + 496) = v76;
  *v76 = v0;
  v76[1] = sub_24110D8A4;
  v78 = *(v0 + 408);
  v77 = *(v0 + 416);

  return sub_2411133FC(v78, v77);
}

uint64_t sub_24110D7B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24110D8A4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[63] = a1;
  v4[64] = a2;
  v4[65] = v2;

  if (v2)
  {

    v5 = sub_24110DDA0;
  }

  else
  {
    v5 = sub_24110D9D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24110D9D0()
{
  v1 = *(v0 + 488);
  v18 = *(v0 + 600);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v17 = *(v0 + 232);
  v4 = *(v0 + 480);
  sub_241165CC8();
  v5 = objc_allocWithZone(sub_2411656E8());

  v6 = v1;
  v7 = sub_2411656D8();
  *(v0 + 528) = v7;
  v8 = v7;
  v9 = sub_241165C68();
  *(v0 + 536) = v9;
  (*(v3 + 104))(v2, v18, v17);
  v10 = objc_allocWithZone(sub_241165378());
  v11 = sub_241165358();
  *(v0 + 544) = sub_241154E14(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v13;
  v14 = sub_2410FB2FC(inited);
  *(v0 + 552) = v14;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v15 = swift_task_alloc();
  *(v0 + 560) = v15;
  *v15 = v0;
  v15[1] = sub_24110DBDC;

  return sub_241150BD0(v0 + 16, v9, v14);
}

uint64_t sub_24110DBDC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_241110C44, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[72] = v4;
    *v4 = v3;
    v4[1] = sub_24110DEF4;
    v5 = v2[64];
    v6 = v2[60];
    v7 = v2[63];

    return sub_241113DE8(v7, v5, v6);
  }
}

uint64_t sub_24110DDA0()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 344);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  sub_2410FB29C(v2, &qword_27E530C48, &qword_241168010);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24110DEF4()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_24110F5C0;
  }

  else
  {
    v2 = sub_24110E028;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24110E028()
{
  v178 = v0;
  v174 = *(v0 + 584);
  *(v0 + 144) = *(v0 + 16);
  if (*(v0 + 152) >> 60 == 15)
  {

    v1 = sub_241165268();
    v2 = sub_241166048();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2410F8000, v1, v2, "The data for the messages paylaod obtained from the People extension was nil.", v3, 2u);
      MEMORY[0x245CDC5E0](v3, -1, -1);
    }

    v4 = *(v0 + 536);
    v5 = *(v0 + 528);
    v6 = *(v0 + 488);
    v168 = *(v0 + 304);
    v172 = *(v0 + 344);
    v7 = *(v0 + 288);
    v159 = *(v0 + 480);
    v163 = *(v0 + 280);
    v8 = *(v0 + 264);
    v155 = *(v0 + 272);
    v9 = *(v0 + 256);

    sub_2411133A8();
    swift_allocError();
    *v10 = xmmword_241167FD0;
    *(v10 + 16) = 7;
    swift_willThrow();

    sub_241102CC0(v0 + 16);
    (*(v8 + 8))(v155, v9);
    (*(v7 + 8))(v168, v163);
    v11 = v172;
    goto LABEL_5;
  }

  v173 = *(v0 + 152);
  v13 = *(v0 + 528);
  sub_2410FC88C(*(v0 + 344), *(v0 + 328), &qword_27E530C48, &qword_241168010);
  v14 = v13;
  sub_2410FC88C(v0 + 144, v0 + 160, &qword_27E530C68, &unk_241168040);
  v15 = sub_241165268();
  v16 = sub_241166068();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 528);
    v19 = *(v0 + 328);
    v18 = *(v0 + 336);
    v20 = *(v0 + 288);
    v156 = *(v0 + 312);
    v160 = *(v0 + 280);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v177[0] = v164;
    *v21 = 136315394;
    sub_2411158A4(v19, v18);
    v23 = *v18;
    v24 = v18[1];
    (*(v20 + 8))(v18 + *(v156 + 48), v160);
    v25 = sub_241156B38(v23, v24, v177);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v17;
    *v22 = v17;
    v26 = v17;
    _os_log_impl(&dword_2410F8000, v15, v16, "Updating message with GUID %s in Messages with response: %@", v21, 0x16u);
    sub_2410FB29C(v22, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v164);
    MEMORY[0x245CDC5E0](v164, -1, -1);
    MEMORY[0x245CDC5E0](v21, -1, -1);
  }

  else
  {
    v27 = *(v0 + 328);

    sub_2410FB29C(v27, &qword_27E530C48, &qword_241168010);
  }

  v28 = *(v0 + 544);
  v148 = *(v0 + 536);
  v152 = *(v0 + 488);
  v153 = *(v0 + 480);
  v30 = *(v0 + 336);
  v29 = *(v0 + 344);
  v31 = *(v0 + 312);
  v157 = *(v0 + 304);
  v32 = *(v0 + 280);
  v33 = *(v0 + 288);
  v34 = *(v0 + 264);
  v150 = *(v0 + 528);
  v151 = *(v0 + 272);
  v161 = *(v0 + 472) + 1;
  v165 = *(v0 + 448);
  v149 = *(v0 + 256);
  sub_2410FC88C(v29, v30, &qword_27E530C48, &qword_241168010);
  v35 = *(v31 + 48);
  v36 = sub_241165DA8();

  v38 = *(v33 + 8);
  v37 = (v33 + 8);
  v38(v30 + v35, v32);
  v39 = sub_2411650F8();
  IMSPIUpdatePluginMessageWithGUID();
  sub_2410FB29C(v0 + 144, &qword_27E530C68, &unk_241168040);

  sub_241102CC0(v0 + 16);

  (*(v34 + 8))(v151, v149);
  v38(v157, v32);
  sub_2410FB29C(v29, &qword_27E530C48, &qword_241168010);
  if (v161 == v165)
  {

    v12 = *(v0 + 8);
    goto LABEL_12;
  }

  v41 = *(v0 + 472) + 1;
  *(v0 + 472) = v41;
  v42 = *(v0 + 432);
  if (v41 >= *(v42 + 16))
  {
LABEL_54:
    __break(1u);
  }

  else
  {
    v43 = *(v0 + 592);
    v45 = *(v0 + 344);
    v44 = *(v0 + 352);
    v46 = *(v0 + 336);
    v47 = *(v0 + 312);
    v30 = *(v0 + 280);
    v48 = *(v0 + 288);
    v166 = *(v0 + 304);
    v37 = &qword_241168010;
    sub_2410FC88C(v42 + ((*(v0 + 596) + 32) & ~*(v0 + 596)) + *(*(v0 + 320) + 72) * v41, v44, &qword_27E530C48, &qword_241168010);
    v49 = *(v44 + 1);
    v50 = *(v47 + 48);
    *v45 = *v44;
    *(v45 + 1) = v49;
    v51 = *(v48 + 32);
    v51(&v45[v50], &v44[v43], v30);
    sub_2410FC88C(v45, v46, &qword_27E530C48, &qword_241168010);

    v51(v166, (v46 + *(v47 + 48)), v30);
    sub_241165B48();
    v52 = MEMORY[0x277CEEE38];
    v36 = sub_241115914(&qword_27E530C50, MEMORY[0x277CEEE38], MEMORY[0x277CEEE48]);
    sub_241115914(&qword_27E530C58, v52, MEMORY[0x277CEEE40]);
    sub_241165B38();
    if (v174)
    {
      v37 = v174;
      (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
      v53 = v174;
      v54 = sub_241165268();
      v55 = sub_241166048();

      v56 = os_log_type_enabled(v54, v55);
      v58 = *(v0 + 288);
      v57 = *(v0 + 296);
      v59 = *(v0 + 280);
      if (v56)
      {
        v60 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v177[0] = v175;
        *v60 = 136315394;
        sub_241115914(&qword_27E530C70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v61 = v37;
        v62 = sub_2411663B8();
        v64 = v63;
        v173 = *(v58 + 8);
        v173(v57, v59);
        v65 = v62;
        v37 = v61;
        v66 = sub_241156B38(v65, v64, v177);

        *(v60 + 4) = v66;
        *(v60 + 12) = 2112;
        v67 = v61;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 14) = v68;
        *v169 = v68;
        _os_log_impl(&dword_2410F8000, v54, v55, "Could not parse ATPayload from messagesPayloadURL %s. error: %@", v60, 0x16u);
        sub_2410FB29C(v169, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v169, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v175);
        MEMORY[0x245CDC5E0](v175, -1, -1);
        MEMORY[0x245CDC5E0](v60, -1, -1);
      }

      else
      {

        v173 = *(v58 + 8);
        v173(v57, v59);
      }

      v79 = *(v0 + 208);
      v80 = *(v0 + 216);
      v81 = *(v0 + 200);
      sub_241164F28();
      if ((*(v80 + 48))(v81, 1, v79) == 1)
      {
        v82 = *(v0 + 200);

        sub_2410FB29C(v82, &qword_27E530AA8, &qword_241167D20);
        if (qword_27E5305B0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
        v83 = sub_241165268();
        v84 = sub_241166048();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v177[0] = v86;
          *v85 = 136315138;
          *(v85 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v177);
          _os_log_impl(&dword_2410F8000, v83, v84, "%s URL components was nil", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v86);
          MEMORY[0x245CDC5E0](v86, -1, -1);
          MEMORY[0x245CDC5E0](v85, -1, -1);
        }

        v87 = *(v0 + 344);
        v88 = *(v0 + 304);
        v89 = *(v0 + 280);
        v90 = *(v0 + 264);
        v91 = *(v0 + 272);
        v92 = *(v0 + 256);
        sub_2411133A8();
        swift_allocError();
        *v93 = v37;
        *(v93 + 8) = 0;
        *(v93 + 16) = 3;
        swift_willThrow();
        (*(v90 + 8))(v91, v92);
        v173(v88, v89);
        v11 = v87;
        goto LABEL_5;
      }

      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
      v36 = sub_2411655E8();
      v94 = *(v36 - 8);
      v30 = swift_task_alloc();
      v95 = swift_task_alloc();
      sub_2411654E8();
      (*(v94 + 32))(v30, v95, v36);

      v96 = sub_241114874(v30);
      if (!v96)
      {

        if (qword_27E5305B0 == -1)
        {
LABEL_49:
          __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
          v103 = sub_241165268();
          v104 = sub_241166048();
          v167 = v37;
          v170 = v30;
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v177[0] = v106;
            *v105 = 136315138;
            *(v105 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v177);
            _os_log_impl(&dword_2410F8000, v103, v104, "%s derivedPayload was nil", v105, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v106);
            MEMORY[0x245CDC5E0](v106, -1, -1);
            MEMORY[0x245CDC5E0](v105, -1, -1);
          }

          v158 = *(v0 + 304);
          v162 = *(v0 + 344);
          v107 = *(v0 + 264);
          v108 = *(v0 + 272);
          v109 = *(v0 + 256);
          v111 = *(v0 + 216);
          v110 = *(v0 + 224);
          v112 = *(v0 + 208);
          v154 = *(v0 + 280);
          sub_2411133A8();
          swift_allocError();
          *v113 = v167;
          *(v113 + 8) = 0;
          *(v113 + 16) = 3;
          swift_willThrow();
          (*(v94 + 8))(v170, v36);
          (*(v111 + 8))(v110, v112);
          (*(v107 + 8))(v108, v109);
          v173(v158, v154);
          sub_2410FB29C(v162, &qword_27E530C48, &qword_241168010);

          goto LABEL_6;
        }

LABEL_74:
        swift_once();
        goto LABEL_49;
      }

      v69 = v96;
      v98 = *(v0 + 216);
      v97 = *(v0 + 224);
      v99 = *(v0 + 208);

      (*(v94 + 8))(v30, v36);
      (*(v98 + 8))(v97, v99);
    }

    else
    {
      v69 = *(v0 + 184);
    }

    v70 = v69;
    *(v0 + 480) = v70;
    v71 = sub_241165CC8();
    v173 = v70;

    v28 = sub_2411652F8();
    if (!(v28 >> 62))
    {
      v72 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v72)
      {
        goto LABEL_22;
      }

LABEL_56:

      v114 = sub_241165CC8();
      v115 = sub_2411652F8();

      if (v115 >> 62)
      {
        v94 = sub_2411661F8();
        if (v94)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v94 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v94)
        {
LABEL_58:
          v177[0] = MEMORY[0x277D84F90];
          sub_241100458(0, v94 & ~(v94 >> 63), 0);
          if ((v94 & 0x8000000000000000) == 0)
          {
            v116 = 0;
            v117 = v177[0];
            v118 = v115;
            v176 = v115 & 0xC000000000000001;
            v119 = v115;
            v120 = v94;
            do
            {
              if (v176)
              {
                v121 = MEMORY[0x245CDBC20](v116, v118);
              }

              else
              {
                v121 = *(v118 + 8 * v116 + 32);
              }

              v122 = v121;
              v123 = sub_241165418();
              v125 = v124;

              v177[0] = v117;
              v127 = *(v117 + 16);
              v126 = *(v117 + 24);
              if (v127 >= v126 >> 1)
              {
                sub_241100458((v126 > 1), v127 + 1, 1);
                v117 = v177[0];
              }

              ++v116;
              *(v117 + 16) = v127 + 1;
              v128 = v117 + 16 * v127;
              *(v128 + 32) = v123;
              *(v128 + 40) = v125;
              v118 = v119;
            }

            while (v120 != v116);

            goto LABEL_69;
          }

          __break(1u);
          goto LABEL_74;
        }
      }

      v117 = MEMORY[0x277D84F90];
LABEL_69:

      v129 = sub_241165268();
      v130 = sub_241166048();

      if (os_log_type_enabled(v129, v130))
      {
        v132 = *(v0 + 360);
        v131 = *(v0 + 368);
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v177[0] = v134;
        *v133 = 136315394;
        *(v133 + 4) = sub_241156B38(v132, v131, v177);
        *(v133 + 12) = 2080;
        v135 = MEMORY[0x245CDB850](v117, MEMORY[0x277D837D0]);
        v137 = v136;

        v138 = sub_241156B38(v135, v137, v177);

        *(v133 + 14) = v138;
        _os_log_impl(&dword_2410F8000, v129, v130, "No answer choice in the original question had id %s. originalAnswerIds: %s", v133, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v134, -1, -1);
        MEMORY[0x245CDC5E0](v133, -1, -1);
      }

      else
      {
      }

      v139 = *(v0 + 360);
      v140 = *(v0 + 368);
      v171 = *(v0 + 344);
      v141 = *(v0 + 304);
      v142 = *(v0 + 280);
      v143 = *(v0 + 288);
      v144 = *(v0 + 264);
      v145 = *(v0 + 272);
      v146 = *(v0 + 256);
      sub_2411133A8();
      swift_allocError();
      *v147 = v139;
      *(v147 + 8) = v140;
      *(v147 + 16) = 1;
      swift_willThrow();

      (*(v144 + 8))(v145, v146);
      (*(v143 + 8))(v141, v142);
      v11 = v171;
LABEL_5:
      sub_2410FB29C(v11, &qword_27E530C48, &qword_241168010);
LABEL_6:

      v12 = *(v0 + 8);
LABEL_12:

      return v12();
    }
  }

  v72 = sub_2411661F8();
  if (!v72)
  {
    goto LABEL_56;
  }

LABEL_22:
  v36 = 0;
  while (1)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x245CDBC20](v36, v28);
    }

    else
    {
      if (v36 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v73 = *(v28 + 8 * v36 + 32);
    }

    v74 = v73;
    *(v0 + 488) = v73;
    v37 = (v36 + 1);
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v76 = *(v0 + 360);
    v75 = *(v0 + 368);
    if (sub_241165418() == v76 && v77 == v75)
    {
      break;
    }

    v30 = sub_2411663E8();

    if (v30)
    {
      goto LABEL_45;
    }

    ++v36;
    if (v37 == v72)
    {
      goto LABEL_56;
    }
  }

LABEL_45:

  v100 = swift_task_alloc();
  *(v0 + 496) = v100;
  *v100 = v0;
  v100[1] = sub_24110D8A4;
  v102 = *(v0 + 408);
  v101 = *(v0 + 416);

  return sub_2411133FC(v102, v101);
}

uint64_t sub_24110F5C0()
{
  v149 = v0;
  v1 = *(v0 + 584);
  v2 = v1;
  v3 = sub_241165268();
  v4 = sub_241166048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 584);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2410F8000, v3, v4, "Failed to send response acknowledgement. error: %@", v7, 0xCu);
    sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  else
  {
  }

  *(v0 + 144) = *(v0 + 16);
  if (*(v0 + 152) >> 60 == 15)
  {

    v11 = sub_241165268();
    v12 = sub_241166048();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2410F8000, v11, v12, "The data for the messages paylaod obtained from the People extension was nil.", v13, 2u);
      MEMORY[0x245CDC5E0](v13, -1, -1);
    }

    v14 = *(v0 + 536);
    v15 = *(v0 + 528);
    v16 = *(v0 + 488);
    v139 = *(v0 + 304);
    v145 = *(v0 + 344);
    v17 = *(v0 + 288);
    v131 = *(v0 + 480);
    v135 = *(v0 + 280);
    v18 = *(v0 + 264);
    v128 = *(v0 + 272);
    v19 = *(v0 + 256);

    sub_2411133A8();
    swift_allocError();
    *v20 = xmmword_241167FD0;
    *(v20 + 16) = 7;
    swift_willThrow();

    sub_241102CC0(v0 + 16);
    (*(v18 + 8))(v128, v19);
    (*(v17 + 8))(v139, v135);
    v21 = v145;
    goto LABEL_8;
  }

  v146 = *(v0 + 152);
  v23 = *(v0 + 528);
  sub_2410FC88C(*(v0 + 344), *(v0 + 328), &qword_27E530C48, &qword_241168010);
  v24 = v23;
  sub_2410FC88C(v0 + 144, v0 + 160, &qword_27E530C68, &unk_241168040);
  v25 = sub_241165268();
  v26 = sub_241166068();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 528);
    v29 = *(v0 + 328);
    v28 = *(v0 + 336);
    v30 = *(v0 + 288);
    v132 = *(v0 + 312);
    v136 = *(v0 + 280);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v148[0] = v140;
    *v31 = 136315394;
    sub_2411158A4(v29, v28);
    v33 = *v28;
    v34 = v28[1];
    (*(v30 + 8))(v28 + *(v132 + 48), v136);
    v35 = sub_241156B38(v33, v34, v148);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v27;
    *v32 = v27;
    v36 = v27;
    _os_log_impl(&dword_2410F8000, v25, v26, "Updating message with GUID %s in Messages with response: %@", v31, 0x16u);
    sub_2410FB29C(v32, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v140);
    MEMORY[0x245CDC5E0](v140, -1, -1);
    MEMORY[0x245CDC5E0](v31, -1, -1);
  }

  else
  {
    v37 = *(v0 + 328);

    sub_2410FB29C(v37, &qword_27E530C48, &qword_241168010);
  }

  v38 = *(v0 + 544);
  v122 = *(v0 + 536);
  v126 = *(v0 + 488);
  v129 = *(v0 + 480);
  v40 = *(v0 + 336);
  v39 = *(v0 + 344);
  v41 = *(v0 + 312);
  v133 = *(v0 + 304);
  v42 = *(v0 + 280);
  v43 = *(v0 + 288);
  v44 = *(v0 + 264);
  v124 = *(v0 + 528);
  v125 = *(v0 + 272);
  v137 = *(v0 + 472) + 1;
  v141 = *(v0 + 448);
  v123 = *(v0 + 256);
  sub_2410FC88C(v39, v40, &qword_27E530C48, &qword_241168010);
  v45 = *(v41 + 48);
  v46 = sub_241165DA8();

  v47 = *(v43 + 8);
  (v47)(v40 + v45, v42);
  v48 = sub_2411650F8();
  IMSPIUpdatePluginMessageWithGUID();
  sub_2410FB29C(v0 + 144, &qword_27E530C68, &unk_241168040);

  sub_241102CC0(v0 + 16);

  v50 = *(v44 + 8);
  v49 = (v44 + 8);
  v50(v125, v123);
  (v47)(v133, v42);
  sub_2410FB29C(v39, &qword_27E530C48, &qword_241168010);
  if (v137 == v141)
  {

    v22 = *(v0 + 8);
    goto LABEL_15;
  }

  v52 = *(v0 + 472) + 1;
  *(v0 + 472) = v52;
  v53 = *(v0 + 432);
  if (v52 >= *(v53 + 16))
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    v54 = *(v0 + 592);
    v56 = *(v0 + 344);
    v55 = *(v0 + 352);
    v57 = *(v0 + 336);
    v58 = *(v0 + 312);
    v47 = *(v0 + 280);
    v59 = *(v0 + 288);
    v142 = *(v0 + 304);
    v49 = &qword_241168010;
    sub_2410FC88C(v53 + ((*(v0 + 596) + 32) & ~*(v0 + 596)) + *(*(v0 + 320) + 72) * v52, v55, &qword_27E530C48, &qword_241168010);
    v60 = *(v55 + 1);
    v61 = *(v58 + 48);
    *v56 = *v55;
    *(v56 + 1) = v60;
    v62 = *(v59 + 32);
    v62(&v56[v61], &v55[v54], v47);
    sub_2410FC88C(v56, v57, &qword_27E530C48, &qword_241168010);

    v62(v142, (v57 + *(v58 + 48)), v47);
    sub_241165B48();
    v63 = MEMORY[0x277CEEE38];
    v42 = sub_241115914(&qword_27E530C50, MEMORY[0x277CEEE38], MEMORY[0x277CEEE48]);
    sub_241115914(&qword_27E530C58, v63, MEMORY[0x277CEEE40]);
    sub_241165B38();
    v64 = *(v0 + 184);
    *(v0 + 480) = v64;
    v65 = sub_241165CC8();
    v146 = v64;

    v38 = sub_2411652F8();
    if (!(v38 >> 62))
    {
      v66 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v66)
      {
        goto LABEL_21;
      }

LABEL_45:

      v87 = sub_241165CC8();
      v88 = sub_2411652F8();

      if (v88 >> 62)
      {
        v89 = sub_2411661F8();
        if (v89)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v89)
        {
LABEL_47:
          v148[0] = MEMORY[0x277D84F90];
          sub_241100458(0, v89 & ~(v89 >> 63), 0);
          if (v89 < 0)
          {
            __break(1u);
            swift_once();
            __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
            v76 = sub_241165268();
            v77 = sub_241166048();
            v138 = v49;
            v143 = v47;
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v148[0] = v79;
              *v78 = 136315138;
              *(v78 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v148);
              _os_log_impl(&dword_2410F8000, v76, v77, "%s derivedPayload was nil", v78, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v79);
              MEMORY[0x245CDC5E0](v79, -1, -1);
              MEMORY[0x245CDC5E0](v78, -1, -1);
            }

            v130 = *(v0 + 304);
            v134 = *(v0 + 344);
            v80 = *(v0 + 264);
            v81 = *(v0 + 272);
            v82 = *(v0 + 256);
            v84 = *(v0 + 216);
            v83 = *(v0 + 224);
            v85 = *(v0 + 208);
            v127 = *(v0 + 280);
            sub_2411133A8();
            swift_allocError();
            *v86 = v138;
            *(v86 + 8) = 0;
            *(v86 + 16) = 3;
            swift_willThrow();
            (*(v89 + 8))(v143, v42);
            (*(v84 + 8))(v83, v85);
            (*(v80 + 8))(v81, v82);
            v146(v130, v127);
            sub_2410FB29C(v134, &qword_27E530C48, &qword_241168010);

            goto LABEL_9;
          }

          v90 = 0;
          v91 = v148[0];
          v92 = v88;
          v147 = v88 & 0xC000000000000001;
          v93 = v88;
          v94 = v89;
          do
          {
            if (v147)
            {
              v95 = MEMORY[0x245CDBC20](v90, v92);
            }

            else
            {
              v95 = *(v92 + 8 * v90 + 32);
            }

            v96 = v95;
            v97 = sub_241165418();
            v99 = v98;

            v148[0] = v91;
            v101 = *(v91 + 16);
            v100 = *(v91 + 24);
            if (v101 >= v100 >> 1)
            {
              sub_241100458((v100 > 1), v101 + 1, 1);
              v91 = v148[0];
            }

            ++v90;
            *(v91 + 16) = v101 + 1;
            v102 = v91 + 16 * v101;
            *(v102 + 32) = v97;
            *(v102 + 40) = v99;
            v92 = v93;
          }

          while (v94 != v90);

          goto LABEL_58;
        }
      }

      v91 = MEMORY[0x277D84F90];
LABEL_58:

      v103 = sub_241165268();
      v104 = sub_241166048();

      if (os_log_type_enabled(v103, v104))
      {
        v106 = *(v0 + 360);
        v105 = *(v0 + 368);
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v148[0] = v108;
        *v107 = 136315394;
        *(v107 + 4) = sub_241156B38(v106, v105, v148);
        *(v107 + 12) = 2080;
        v109 = MEMORY[0x245CDB850](v91, MEMORY[0x277D837D0]);
        v111 = v110;

        v112 = sub_241156B38(v109, v111, v148);

        *(v107 + 14) = v112;
        _os_log_impl(&dword_2410F8000, v103, v104, "No answer choice in the original question had id %s. originalAnswerIds: %s", v107, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v108, -1, -1);
        MEMORY[0x245CDC5E0](v107, -1, -1);
      }

      else
      {
      }

      v113 = *(v0 + 360);
      v114 = *(v0 + 368);
      v144 = *(v0 + 344);
      v115 = *(v0 + 304);
      v116 = *(v0 + 280);
      v117 = *(v0 + 288);
      v118 = *(v0 + 264);
      v119 = *(v0 + 272);
      v120 = *(v0 + 256);
      sub_2411133A8();
      swift_allocError();
      *v121 = v113;
      *(v121 + 8) = v114;
      *(v121 + 16) = 1;
      swift_willThrow();

      (*(v118 + 8))(v119, v120);
      (*(v117 + 8))(v115, v116);
      v21 = v144;
LABEL_8:
      sub_2410FB29C(v21, &qword_27E530C48, &qword_241168010);
LABEL_9:

      v22 = *(v0 + 8);
LABEL_15:

      return v22();
    }
  }

  v66 = sub_2411661F8();
  if (!v66)
  {
    goto LABEL_45;
  }

LABEL_21:
  v42 = 0;
  while (1)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x245CDBC20](v42, v38);
    }

    else
    {
      if (v42 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v67 = *(v38 + 8 * v42 + 32);
    }

    v68 = v67;
    *(v0 + 488) = v67;
    v49 = (v42 + 1);
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v70 = *(v0 + 360);
    v69 = *(v0 + 368);
    if (sub_241165418() == v70 && v71 == v69)
    {
      break;
    }

    v47 = sub_2411663E8();

    if (v47)
    {
      goto LABEL_35;
    }

    ++v42;
    if (v49 == v66)
    {
      goto LABEL_45;
    }
  }

LABEL_35:

  v73 = swift_task_alloc();
  *(v0 + 496) = v73;
  *v73 = v0;
  v73[1] = sub_24110D8A4;
  v75 = *(v0 + 408);
  v74 = *(v0 + 416);

  return sub_2411133FC(v75, v74);
}