uint64_t ThreadGuard.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 112)));
  return v0;
}

uint64_t ThreadGuard.__deallocating_deinit()
{
  ThreadGuard.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ThreadGuard.syncRead<A>(callsite:_:)(__int128 *a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  v29 = a2;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v28 - v8;
  v11 = (v3 + *(v10 + 112));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  result = (*(v13 + 8))(v12, v13);
  if (!result)
  {
    v15 = a1[1];
    v30 = *a1;
    v31 = v15;
    v32[0] = a1[2];
    *(v32 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v30);
  }

  v16 = *v3;
  if (*(v3 + *(*v3 + 104)))
  {
    v17 = a1[1];
    v30 = *a1;
    v31 = v17;
    v32[0] = a1[2];
    *(v32 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v30);
    v16 = *v3;
  }

  v18 = *(v16 + 96);
  v19 = *(v3 + v18);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v18) = v21;
    v22 = *(*v3 + 88);
    swift_beginAccess();
    (*(v7 + 16))(v9, v4 + v22, v6);
    v23 = v33;
    v29(v9);
    result = (*(v7 + 8))(v9, v6);
    v24 = *(*v4 + 96);
    v25 = *(v4 + v24);
    v20 = __OFSUB__(v25, 1);
    v26 = v25 - 1;
    v27 = v20;
    if (v23)
    {
      if (!v27)
      {
LABEL_13:
        *(v4 + v24) = v26;
        return result;
      }

      __break(1u);
    }

    if (!v27)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ThreadGuard.syncWrite<A>(callsite:_:)(__int128 *a1, void (*a2)(char *))
{
  v4 = v2;
  v7 = &v2[*(*v2 + 112)];
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  result = (*(v9 + 8))(v8, v9);
  if (result <= 1u)
  {
    v11 = a1[1];
    v24 = *a1;
    v25 = v11;
    v26[0] = a1[2];
    *(v26 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v24);
  }

  v12 = *v2;
  v13 = *(*v2 + 104);
  if (*&v4[v13])
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26[0] = a1[2];
    *(v26 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v24);
    v12 = *v4;
  }

  if (*&v4[*(v12 + 96)])
  {
    v15 = a1[1];
    v24 = *a1;
    v25 = v15;
    v26[0] = a1[2];
    *(v26 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v24);
  }

  v16 = *&v4[v13];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *&v4[v13] = v18;
    v19 = *(*v4 + 88);
    swift_beginAccess();
    a2(&v4[v19]);
    result = swift_endAccess();
    v20 = *(*v4 + 104);
    v21 = *&v4[v20];
    v17 = __OFSUB__(v21, 1);
    v22 = v21 - 1;
    v23 = v17;
    if (v3)
    {
      if (!v23)
      {
LABEL_15:
        *&v4[v20] = v22;
        return result;
      }

      __break(1u);
    }

    if (!v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2D93B4(uint64_t a1)
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

uint64_t IsolatedInvalidatableCache.__allocating_init()()
{
  v0 = swift_allocObject();
  IsolatedInvalidatableCache.init()();
  return v0;
}

uint64_t IsolatedInvalidatableCache.resource(on:for:create:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 232) = a4;
  *(v7 + 240) = a5;
  *(v7 + 216) = a2;
  *(v7 + 224) = a3;
  *(v7 + 208) = a1;
  v8 = *v6;
  v9 = *(*v6 + 80);
  *(v7 + 264) = v9;
  v10 = v8[11];
  *(v7 + 272) = v10;
  v11 = v8[12];
  *(v7 + 280) = v11;
  v12 = v8[13];
  *(v7 + 288) = v12;
  *&v13 = v9;
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  *(v7 + 32) = v14;
  *(v7 + 16) = v13;
  v15 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(0, v7 + 16);
  *(v7 + 296) = v15;
  *(v7 + 304) = *(v15 - 8);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = *(v10 - 8);
  *(v7 + 328) = swift_task_alloc();
  v16 = *(v9 - 8);
  *(v7 + 336) = v16;
  *(v7 + 344) = *(v16 + 64);
  *(v7 + 352) = swift_task_alloc();
  v17 = sub_25F305C1C();
  *(v7 + 360) = v17;
  *(v7 + 368) = *(v17 - 8);
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  swift_getObjectType();
  v19 = sub_25F3053EC();
  *(v7 + 408) = v19;
  *(v7 + 416) = v18;

  return MEMORY[0x2822009F8](sub_25F2D9790, v19, v18);
}

uint64_t sub_25F2D9790()
{
  v1 = v0[50];
  v2 = v0[37];
  v3 = v0[38];
  swift_beginAccess();
  sub_25F304B8C();
  swift_endAccess();
  v4 = *(v3 + 48);
  v0[53] = v4;
  v0[54] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[49];
    v6 = v0[44];
    v7 = v0[42];
    v8 = v0[37];
    v9 = v0[38];
    v10 = v0[33];
    v11 = v0[29];
    v12 = v0[30];
    v13 = *(v7 + 16);
    v0[55] = v13;
    v0[56] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v6, v11, v10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v0[57] = sub_25F30542C();
    *v5 = sub_25F3052DC();
    swift_storeEnumTagMultiPayload();
    v14 = *(v9 + 56);
    v0[58] = v14;
    v0[59] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v5, 0, 1, v8);
    swift_beginAccess();
    v0[60] = sub_25F304B4C();
    sub_25F304B9C();
    swift_endAccess();
    v29 = (v12 + *v12);
    v15 = swift_task_alloc();
    v0[61] = v15;
    *v15 = v0;
    v15[1] = sub_25F2D9BCC;
    v16 = v0[41];

    return v29(v16);
  }

  else
  {
    v18 = v0[50];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v0[40] + 32))(v0[26], v18, v0[34]);

      v19 = v0[1];

      return v19();
    }

    else
    {
      v20 = v0[32];
      v21 = v0[28];
      v22 = v0[29];
      v23 = v0[27];
      v24 = *v18;
      v0[63] = *v18;
      v25 = swift_task_alloc();
      v0[64] = v25;
      v25[2] = v20;
      v25[3] = v22;
      v25[4] = v24;
      v26 = swift_task_alloc();
      v0[65] = v26;
      *v26 = v0;
      v26[1] = sub_25F2DA0F0;
      v27 = v0[34];
      v28 = v0[26];

      return MEMORY[0x2822008A0](v28, v23, v21, 0xD000000000000018, 0x800000025F31B7D0, sub_25F2DC794, v25, v27);
    }
  }
}

uint64_t sub_25F2D9BCC()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_25F2DA2C8;
  }

  else
  {
    v5 = sub_25F2D9D08;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F2D9D08()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 384);
  v3 = *(v0 + 296);
  swift_beginAccess();
  sub_25F304B8C();
  v4 = v1(v2, 1, v3);
  v5 = *(v0 + 384);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  if (v4)
  {
    (*(v7 + 8))(*(v0 + 384), *(v0 + 360));
    swift_endAccess();
    v30 = 0;
  }

  else
  {
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 296);
    (*(v9 + 16))(v8, *(v0 + 384), v10);
    (*(v7 + 8))(v5, v6);
    swift_endAccess();
    v30 = sub_25F2DBF74(v10);
    (*(v9 + 8))(v8, v10);
  }

  v26 = *(v0 + 464);
  v11 = *(v0 + 440);
  v12 = *(v0 + 392);
  v13 = *(v0 + 352);
  v14 = *(v0 + 328);
  v28 = *(v0 + 336);
  v15 = *(v0 + 320);
  v16 = *(v0 + 296);
  v29 = *(v0 + 288);
  v17 = *(v0 + 256);
  v18 = *(v0 + 264);
  v27 = *(v0 + 232);
  v31 = *(v0 + 272);
  v11(v13);
  (*(v15 + 16))(v12, v14);
  swift_storeEnumTagMultiPayload();
  v26(v12, 0, 1, v16);
  swift_beginAccess();
  sub_25F304B9C();
  swift_endAccess();
  (v11)(v13, v27, v18);
  v19 = (*(v28 + 80) + 56) & ~*(v28 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v31;
  *(v20 + 40) = v29;
  *(v20 + 48) = v17;
  (*(v28 + 32))(v20 + v19, v13, v18);

  IsolatedInvalidatable.onInvalidation(_:)(sub_25F2DD354, v20, v31, v29);

  if (v30)
  {
    v21 = *(v0 + 328);
    *(v0 + 200) = v30;
    v22 = swift_task_alloc();
    v23 = *(v0 + 280);
    *(v22 + 16) = *(v0 + 264);
    *(v22 + 32) = v23;
    *(v22 + 48) = v21;
    sub_25F30539C();
    swift_getWitnessTable();
    sub_25F3051BC();
  }

  (*(*(v0 + 320) + 32))(*(v0 + 208), *(v0 + 328), *(v0 + 272));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_25F2DA0F0()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_25F2DA590;
  }

  else
  {

    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_25F2DA214;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25F2DA214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F2DA2C8()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 376);
  v3 = *(v0 + 296);
  swift_beginAccess();
  sub_25F304B8C();
  v4 = v1(v2, 1, v3);
  v6 = *(v0 + 368);
  v5 = *(v0 + 376);
  v7 = *(v0 + 360);
  if (v4)
  {
    (*(v6 + 8))(*(v0 + 376), *(v0 + 360));
    swift_endAccess();
    v8 = 0;
  }

  else
  {
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    v11 = *(v0 + 296);
    (*(v10 + 16))(v9, *(v0 + 376), v11);
    (*(v6 + 8))(v5, v7);
    swift_endAccess();
    v8 = sub_25F2DBF74(v11);
    (*(v10 + 8))(v9, v11);
  }

  v12 = *(v0 + 464);
  v13 = *(v0 + 392);
  v14 = *(v0 + 296);
  (*(v0 + 440))(*(v0 + 352), *(v0 + 232), *(v0 + 264));
  v12(v13, 1, 1, v14);
  swift_beginAccess();
  sub_25F304B9C();
  swift_endAccess();
  if (v8)
  {
    v15 = *(v0 + 496);
    *(v0 + 192) = v8;
    v16 = swift_task_alloc();
    v17 = *(v0 + 280);
    *(v16 + 16) = *(v0 + 264);
    *(v16 + 32) = v17;
    *(v16 + 48) = v15;
    sub_25F30539C();
    swift_getWitnessTable();
    sub_25F3051BC();
  }

  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_25F2DA590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IsolatedInvalidatableCache.snapshot.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v7 = v1[13];

  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v7;
  type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(0, v8);
  v5 = sub_25F304ABC();

  return v5;
}

void sub_25F2DA76C(__int128 *a1, uint64_t *a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v38 = sub_25F305C1C();
  v53 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v50 = v36 - v8;
  v9 = *(v5 + 80);
  v47 = *(v6 + 96);
  *&v55 = v9;
  *(&v55 + 1) = v7;
  v10 = v9;
  v56 = v47;
  v11 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(0, &v55);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v44 = v36 - v14;
  v15 = a1[1];
  v55 = *a1;
  v56 = v15;
  v57[0] = a1[2];
  *(v57 + 9) = *(a1 + 41);
  v48 = *a2;
  v17 = v16;
  swift_beginAccess();
  v46 = v10;
  nullsub_2();
  v19 = v18;
  swift_beginAccess();
  sub_25F304B4C();

  sub_25F304B3C();
  swift_endAccess();
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v43 = v12 + 16;
  v42 = v12 + 32;
  v41 = v7 - 8;
  v37 = *(&v47 + 1);
  v36[1] = *(&v47 + 1) + 16;
  v36[0] = v53 + 8;
  v45 = v12;
  v40 = (v12 + 8);
  v49 = v19;

  v25 = 0;
  v51 = 0;
  *&v26 = v46;
  v53 = v7;
  *(&v26 + 1) = v7;
  v39 = v26;
  v52 = v17;
  while (v23)
  {
    v27 = v25;
    v28 = v53;
    v29 = v50;
LABEL_11:
    v30 = v45;
    v31 = v44;
    (*(v45 + 16))(v44, *(v49 + 56) + *(v45 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v11);
    (*(v30 + 32))(v17, v31, v11);
    sub_25F2DBDCC(v11, v29);
    v32 = *(v28 - 8);
    if ((*(v32 + 48))(v29, 1, v28) == 1)
    {
      (*v36[0])(v29, v38);
    }

    else
    {
      (*(v37 + 16))(v28);
      (*(v32 + 8))(v29, v28);
      sub_25F28ACD4();
    }

    v23 &= v23 - 1;
    v17 = v52;
    v33 = sub_25F2DBF74(v11);
    if (v33)
    {
      v46 = v36;
      v54 = v33;
      MEMORY[0x28223BE20](v33);
      v34 = v47;
      *&v36[-6] = v39;
      *&v36[-4] = v34;
      v36[-2] = &v55;
      v36[-1] = v48;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30542C();
      sub_25F30539C();
      swift_getWitnessTable();
      v35 = v51;
      v17 = v52;
      sub_25F3051BC();
      v51 = v35;
    }

    (*v40)(v17, v11);
    v25 = v27;
  }

  v28 = v53;
  v29 = v50;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return;
    }

    v23 = *(v20 + 8 * v27);
    ++v25;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_25F2DADB4(uint64_t a1, uint64_t *a2)
{
  v29 = a2;
  v30 = a1;
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 104);
  v31[0] = *(*v2 + 80);
  v31[1] = v3;
  v31[2] = v4;
  v31[3] = v5;
  v25 = v5;
  v6 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(0, v31);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v7;
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v27 = v3;
  v12 = sub_25F305C1C();
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *v29;
  swift_beginAccess();
  v16 = v28;
  sub_25F304B8C();
  if ((*(v16 + 48))(v11, 1, v6))
  {
    (*(v9 + 8))(v11, v8);
    return swift_endAccess();
  }

  else
  {
    v30 = v12;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    (*(v16 + 16))(v26, v11, v6);
    (*(v9 + 8))(v11, v8);
    swift_endAccess();
    sub_25F2DBDCC(v6, v14);
    (*(v16 + 8))(v20, v6);
    v21 = v27;
    v22 = *(v27 - 8);
    if ((*(v22 + 48))(v14, 1, v27) == 1)
    {
      return (*(v18 + 8))(v14, v30);
    }

    else
    {
      v31[0] = v15;
      AnyInvalidatable.invalidate(file:line:column:function:trace:)("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedInvalidatableCache.swift", 138, 2, 100, 41, "invalidateResource(for:trace:)", 30, 2, v31, v21, *(v19 + 8));
      return (*(v22 + 8))(v14, v21);
    }
  }
}

uint64_t sub_25F2DB194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  v8 = *v6;
  v9 = *(*v6 + 88);
  v7[19] = v9;
  v10 = sub_25F1E6B9C();
  v7[20] = v10;
  v11 = *(v8 + 104);
  v7[21] = v11;
  v7[2] = &type metadata for Identifier;
  v7[3] = v9;
  v7[4] = v10;
  v7[5] = v11;
  v12 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(255, (v7 + 2));
  v7[22] = v12;
  v7[23] = swift_getTupleTypeMetadata2();
  v13 = sub_25F305C1C();
  v7[24] = v13;
  v7[25] = *(v13 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_getTupleTypeMetadata2();
  v7[28] = swift_task_alloc();
  v7[29] = *(v12 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_25F3053EC();
  v7[32] = v15;
  v7[33] = v14;

  return MEMORY[0x2822009F8](sub_25F2DB3B8, v15, v14);
}

uint64_t sub_25F2DB3B8()
{
  v1 = *(v0 + 208);
  v43 = *(v0 + 184);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  swift_beginAccess();
  *(v0 + 72) = *(v4 + 16);
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = sub_25F2DD8E4;
  v7[5] = v6;
  sub_25F304B4C();

  swift_getWitnessTable();
  sub_25F30516C();

  if ((*(*(v43 - 8) + 48))(v1, 1) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    if (qword_27FD52798 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 168);
    v9 = *(v0 + 152);
    v10 = *(v0 + 120);
    v11 = off_27FD559A0;
    v44 = *(v0 + 128);
    os_unfair_lock_lock(off_27FD559A0 + 6);
    v12 = *(v11 + 2);
    *(v11 + 2) = v12 + 1;
    os_unfair_lock_unlock(v11 + 6);
    *(v0 + 80) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58810, &qword_25F315A78);
    sub_25F2DD94C();
    v13 = sub_25F30511C();
    *(v0 + 304) = v13;
    *(v0 + 88) = v12;
    v14 = swift_task_alloc();
    *(v0 + 312) = v14;
    *(v14 + 16) = v9;
    *(v14 + 24) = v8;
    *(v14 + 32) = v44;
    *(v14 + 48) = v12;
    *(v14 + 56) = v13;
    v15 = swift_task_alloc();
    *(v0 + 320) = v15;
    *v15 = v0;
    v15[1] = sub_25F2DBB10;
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);

    return IsolatedInvalidatableCache.resource(on:for:create:)(v18, v16, v17, v0 + 88, &unk_25F315A88, v14);
  }

  else
  {
    v20 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v24 = *(v0 + 208);
    v25 = *(v0 + 216);
    v26 = *(v0 + 176);
    v27 = *(*(v0 + 184) + 48);
    v28 = *(v25 + 48);
    *v23 = *v24;
    v29 = *(v22 + 32);
    v29(&v23[v28], &v24[v27], v26);
    v30 = *v23;
    v29(v21, &v23[*(v25 + 48)], v26);
    (*(v22 + 16))(v20, v21, v26);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = *(v0 + 240);
      v32 = *(v0 + 152);
      v33 = *(v0 + 96);
      (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 176));
      (*(*(v32 - 8) + 32))(v33, v31, v32);

      v34 = *(v0 + 8);

      return v34();
    }

    else
    {
      v35 = *(v0 + 144);
      v36 = *(v0 + 104);
      v37 = *(v0 + 112);
      v38 = **(v0 + 240);
      *(v0 + 272) = v38;
      v39 = swift_task_alloc();
      *(v0 + 280) = v39;
      v39[2] = v35;
      v39[3] = v30;
      v39[4] = v38;
      v40 = swift_task_alloc();
      *(v0 + 288) = v40;
      *v40 = v0;
      v40[1] = sub_25F2DB8F8;
      v41 = *(v0 + 152);
      v42 = *(v0 + 96);

      return MEMORY[0x2822008A0](v42, v36, v37, 0xD000000000000029, 0x800000025F31B8A0, sub_25F2DDA84, v39, v41);
    }
  }
}

uint64_t sub_25F2DB8F8()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_25F2DBD24;
  }

  else
  {
    v5 = sub_25F2DBA68;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F2DBA68()
{
  (*(v0[29] + 8))(v0[31], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F2DBB10()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = v2[32];
    v4 = v2[33];

    return MEMORY[0x2822009F8](sub_25F2DBC88, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_25F2DBC88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F2DBD24()
{
  (*(v0[29] + 8))(v0[31], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F2DBDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(v7 - 8);
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t sub_25F2DBF74(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  (*(*(*(a1 + 24) - 8) + 8))(v3);
  return 0;
}

void *IsolatedInvalidatableCache.init()()
{
  v6 = *(*v0 + 96);
  v7[0] = *(*v0 + 80);
  v5 = *&v7[0];
  v7[1] = v6;
  v1 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(255, v7);
  swift_getTupleTypeMetadata2();
  v2 = sub_25F3052DC();
  v3 = sub_25F1CCBBC(v2, v5, v1, v6);

  v0[2] = v3;
  return v0;
}

uint64_t sub_25F2DC14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 96);
  v14[0] = *(*a2 + 80);
  v14[1] = v4;
  v15[0] = v14[0];
  v15[1] = v4;
  v5 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(255, v15);
  v6 = sub_25F305C1C();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v14 - v8;
  v10 = *&v14[0];
  MEMORY[0x28223BE20](v7);
  (*(v12 + 16))(v14 - v11, a3, v10);
  (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t sub_25F2DC314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  return sub_25F30541C();
}

uint64_t sub_25F2DC40C(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  return sub_25F30540C();
}

uint64_t sub_25F2DC488(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v8 = *(*a2 + 88);
  v23[0] = *(*a2 + 80);
  v7 = v23[0];
  v23[1] = v8;
  v22 = *(v6 + 96);
  v24 = v22;
  v9 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(255, v23);
  v10 = sub_25F305C1C();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v23[-2] - v12);
  MEMORY[0x28223BE20](v11);
  (*(v15 + 16))(&v23[-2] - v14, a3, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v16 = sub_25F30542C();
  sub_25F3064EC();
  v17 = *(v16 - 8);
  swift_allocObject();
  v18 = sub_25F30527C();
  (*(v17 + 16))(v19, a1, v16);
  sub_25F1F7314(v18, v16);
  v20 = sub_25F3052BC();

  *v13 = v20;
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

void IsolatedInvalidatableCache.invalidate(file:line:column:function:trace:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9)
{
  v9 = *a9;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v10 = v9;
  sub_25F2DA76C(&v11, &v10);
}

uint64_t sub_25F2DC7E8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25F2DD890();
  swift_allocError();
  v8 = a2[1];
  v7 = a2[2];
  v9 = *a2;
  *(v10 + 41) = *(a2 + 41);
  *(v10 + 16) = v8;
  *(v10 + 32) = v7;
  *v10 = v9;
  *(v10 + 64) = a3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  return sub_25F30540C();
}

uint64_t IsolatedInvalidatableCache.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void *IsolatedOnDemand.init(create:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10[1] = a3;
  v10[0] = MEMORY[0x277D83B88];
  v10[2] = MEMORY[0x277D83B98];
  v10[3] = a4;
  type metadata accessor for IsolatedInvalidatableCache(0, v10);
  v8 = swift_allocObject();
  result = IsolatedInvalidatableCache.init()();
  *a5 = v8;
  a5[1] = a1;
  a5[2] = a2;
  return result;
}

uint64_t IsolatedOnDemand.resource(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v4[2] = 0;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_25F2DCA64;

  return IsolatedInvalidatableCache.resource(on:for:create:)(a1, a2, a3, (v4 + 2), v8, v9);
}

uint64_t sub_25F2DCA64()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    swift_getObjectType();
    v4 = sub_25F3053EC();

    return MEMORY[0x2822009F8](sub_25F2996E4, v4, v3);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

void IsolatedOnDemand.invalidate(file:line:column:function:trace:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9)
{
  v9 = *a9;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v10 = v9;
  sub_25F2DA76C(&v11, &v10);
}

uint64_t sub_25F2DCC4C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = sub_25F1E6B9C();
  v7 = *(v4 + 104);
  v21[0] = &type metadata for Identifier;
  v21[1] = v5;
  v19 = v5;
  v21[2] = v6;
  v21[3] = v7;
  v8 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(0, v21);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = sub_25F305C1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  v16 = *a1;
  swift_beginAccess();
  v21[5] = v16;
  sub_25F304B8C();
  if ((*(v9 + 48))(v15, 1, v8))
  {
    (*(v13 + 8))(v15, v12);
    swift_endAccess();
    return (*(*(v19 - 8) + 56))(v20, 1, 1);
  }

  else
  {
    (*(v9 + 16))(v11, v15, v8);
    (*(v13 + 8))(v15, v12);
    swift_endAccess();
    sub_25F2DBDCC(v8, v20);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_25F2DCEF8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_25F2230B0;

  return v10(a1, v5 + 16, a5);
}

uint64_t sub_25F2DD010(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = &type metadata for Identifier;
  v10[1] = a4;
  v10[2] = sub_25F1E6B9C();
  v10[3] = a5;
  type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(255, v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_25F2DD0C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(*a2 + 88);
  v8 = sub_25F1E6B9C();
  v9 = *(v6 + 104);
  v21[0] = &type metadata for Identifier;
  v21[1] = v7;
  v21[2] = v8;
  v21[3] = v9;
  v10 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(255, v21);
  v11 = sub_25F305C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (v20 - v12);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v14 = sub_25F30542C();
  sub_25F3064EC();
  v15 = *(v14 - 8);
  swift_allocObject();
  v16 = sub_25F30527C();
  (*(v15 + 16))(v17, a1, v14);
  sub_25F1F7314(v16, v14);
  v18 = sub_25F3052BC();

  *v13 = v18;
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v13, 0, 1, v10);
  v20[1] = a3;
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t sub_25F2DD3B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus(0, v6);
  return sub_25F2DBDCC(v4, a1);
}

uint64_t sub_25F2DD49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2DD4F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  result = sub_25F30539C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2DD59C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
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
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
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
    goto LABEL_25;
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

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_25F2DD6B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

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
        goto LABEL_39;
      }

      goto LABEL_36;
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
LABEL_39:
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
            goto LABEL_39;
          }
        }

LABEL_36:
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
      goto LABEL_39;
    }

    goto LABEL_36;
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

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_25F2DD890()
{
  result = qword_27FD58808;
  if (!qword_27FD58808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58808);
  }

  return result;
}

unint64_t sub_25F2DD94C()
{
  result = qword_27FD58818;
  if (!qword_27FD58818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD58810, &qword_25F315A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58818);
  }

  return result;
}

uint64_t sub_25F2DD9B0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1AFDB0;

  return sub_25F2DCEF8(a1, v4, v5, v7, v6);
}

uint64_t sub_25F2DDA90(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v37 = MEMORY[0x277D84F90];
  sub_25F1BD168(0, v5, 0);
  v6 = v37;
  v9 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v11 = v9[1];
    v12 = v9[3];
    v35 = v9[2];
    v36[0] = v12;
    *(v36 + 9) = *(v9 + 57);
    v13 = v9[1];
    v34[0] = *v9;
    v34[1] = v13;
    v14 = v9[3];
    v30 = v35;
    v31[0] = v14;
    *(v31 + 9) = *(v9 + 57);
    v28 = v34[0];
    v29 = v11;
    sub_25F1DF984(v34, &v24);
    a1(v32, &v28);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22[2] = v30;
    v23[0] = v31[0];
    *(v23 + 9) = *(v31 + 9);
    v22[0] = v28;
    v22[1] = v29;
    sub_25F1DF9E0(v22);
    *(v27 + 9) = *(v33 + 9);
    v26 = v32[2];
    v27[0] = v33[0];
    v24 = v32[0];
    v25 = v32[1];
    v37 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_25F1BD168((v15 > 1), v16 + 1, 1);
      v6 = v37;
    }

    *(v6 + 16) = v16 + 1;
    v17 = (v6 + 80 * v16);
    v17[2] = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27[0];
    *(v17 + 89) = *(v27 + 9);
    v17[4] = v19;
    v17[5] = v20;
    v17[3] = v18;
    if (!i)
    {
      return v6;
    }

    v9 += 5;
  }

  v26 = v30;
  v27[0] = v31[0];
  *(v27 + 9) = *(v31 + 9);
  v24 = v28;
  v25 = v29;
  sub_25F1DF9E0(&v24);

  __break(1u);
  return result;
}

uint64_t sub_25F2DDC58(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_25F304F2C();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v9 = v7;
  v25 = MEMORY[0x277D84F90];
  sub_25F1BD208(0, v7 & ~(v7 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v8 = v25;
    v20 = v9;
    while (!__OFADD__(v10, 1))
    {
      v22 = v10 + 1;
      v11 = a4;
      v23[0] = sub_25F30509C();
      v23[1] = v12;
      a1(v24, v23);
      if (v5)
      {
        goto LABEL_12;
      }

      v5 = 0;

      v13 = v24[0];
      v14 = v24[1];
      v25 = v8;
      v15 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v15 >= v16 >> 1)
      {
        v19 = v24[0];
        sub_25F1BD208((v16 > 1), v15 + 1, 1);
        v13 = v19;
        v8 = v25;
      }

      *(v8 + 16) = v15 + 1;
      v17 = v8 + 16 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      a4 = v11;
      sub_25F304F3C();
      ++v10;
      if (v22 == v20)
      {
        return v8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:

  __break(1u);
  return result;
}

Swift::String __swiftcall String.prefixingEachLine(with:startingOnLine:)(Swift::String with, Swift::UInt startingOnLine)
{
  sub_25F1BF118();
  v2 = sub_25F305CEC();
  v3 = *(v2 + 16);
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    v4 = sub_25F1BD008(0, v3, 0);
    v6 = 0;
    v7 = *(v2 + 16);
    v8 = (v2 + 40);
    while (v7 != v6)
    {
      countAndFlagsBits = *(v8 - 1);
      object = *v8;
      if (v6 >= startingOnLine)
      {

        MEMORY[0x25F8D7130](countAndFlagsBits, object);

        countAndFlagsBits = with._countAndFlagsBits;
        object = with._object;
      }

      else
      {
      }

      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_25F1BD008((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v20 + 16) = v12 + 1;
      v13 = v20 + 16 * v12;
      *(v13 + 32) = countAndFlagsBits;
      *(v13 + 40) = object;
      v8 += 2;
      if (v3 == v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    sub_25F1F72CC(qword_27FD52F88, &qword_27FD52F80, &qword_25F309110, MEMORY[0x277D83958]);
    v14 = sub_25F304CAC();
    v16 = v15;

    v4 = v14;
    v5 = v16;
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_25F2DE000(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v1 + 32 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 56);
    v5 += 32;
    ++v2;
    if (v7 != 255)
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      v10 = *(v5 + 16);
      sub_25F208950(*v5, v9, v10, v7 & 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F2F0C4C(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_25F2F0C4C((v11 > 1), v12 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = v12 + 1;
      v13 = &v4[4 * v12];
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v10;
      *(v13 + 56) = v7 & 1;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25F2DE124(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 48;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 24 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *v5;
    v5 += 24;
    v7 = v8;
    ++v1;
    if (v8 != 255)
    {
      v9 = *(v5 - 5);
      v10 = *(v5 - 4);
      sub_25F1D93AC(v9, v10, v7 & 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F2F1164(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_25F2F1164((v11 > 1), v12 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = v12 + 1;
      v13 = &v4[3 * v12];
      v13[4] = v9;
      v13[5] = v10;
      *(v13 + 48) = v7 & 1;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25F2DE23C(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *v5;
    v5 += 2;
    v7 = v8;
    ++v1;
    if (v8)
    {
      v9 = *(v5 - 3);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F2EFB20(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_25F2EFB20((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_25F2DE334(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25F2E1FAC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_25F305F9C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_25F30605C();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

Swift::String __swiftcall String.uppercasingFirstLetter()()
{
  v2 = sub_25F2DED54(v0, v1, MEMORY[0x277D83728]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.uv_sha256.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F3049FC();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F3049EC();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F304E6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F304E4C();
  v11 = sub_25F304E1C();
  v13 = v12;
  v14 = *(v8 + 8);
  v14(v10, v7);
  if (v13 >> 60 == 15)
  {
    sub_25F304E5C();
    v15 = sub_25F304E1C();
    v17 = v16;
    v14(v10, v7);
    if (v17 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = v15;
    }

    if (v17 >> 60 == 15)
    {
      v13 = 0xC000000000000000;
    }

    else
    {
      v13 = v17;
    }
  }

  sub_25F2E3010();
  sub_25F3049CC();
  sub_25F1B70AC(v11, v13);
  sub_25F2E2974(v11, v13, v4);
  sub_25F1D4BB0(v11, v13);
  v18 = v21;
  sub_25F3049BC();
  (*(v22 + 8))(v4, v2);
  sub_25F3049DC();
  sub_25F1D4BB0(v11, v13);
  (*(v23 + 8))(v18, v24);
  return v25;
}

Swift::String __swiftcall String.deleting(prefix:)(Swift::String prefix)
{
  v3 = sub_25F2DFD1C(prefix._countAndFlagsBits, prefix._object, v1, v2, Substring.uv_deletingLeading(prefix:));
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String.init(spaced:)(uint64_t a1)
{
  sub_25F2DE23C(a1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1F72CC(qword_27FD52F88, &qword_27FD52F80, &qword_25F309110, MEMORY[0x277D83958]);
  v1 = sub_25F304CAC();

  return v1;
}

uint64_t String.contains(anyCharactersFrom:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v13 = 0;
    return v13 & 1;
  }

  v6 = a3 & 0xFFFFFFFFFFFFFFLL;
  v7 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;

  for (i = 0; i < v3; i += v12)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      sub_25F305F9C();
      v12 = v11;
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v16[0] = a2;
        v16[1] = v6;
        v10 = v16 + i;
      }

      else
      {
        v9 = v7;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v9 = sub_25F30605C();
        }

        v10 = (v9 + i);
      }

      if ((*v10 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v14 = (__clz(*v10 ^ 0xFF) - 24);
      if (v14 <= 2)
      {
        if (v14 != 1)
        {
          v12 = 2;
          goto LABEL_15;
        }

LABEL_14:
        v12 = 1;
        goto LABEL_15;
      }

      if (v14 == 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 4;
      }
    }

LABEL_15:
    v13 = sub_25F30425C();
    if (v13)
    {
      break;
    }
  }

  return v13 & 1;
}

uint64_t String.filteringCharacters(to:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    v19 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v20 = a3 & 0xFFFFFFFFFFFFFFLL;
    swift_bridgeObjectRetain_n();
    v6 = 0;
    while (1)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v11 = sub_25F305F9C();
        v13 = v12;
      }

      else
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          v21[0] = a2;
          v21[1] = v20;
          v10 = v21 + v6;
        }

        else
        {
          v9 = v19;
          if ((a2 & 0x1000000000000000) == 0)
          {
            v9 = sub_25F30605C();
          }

          v10 = (v9 + v6);
        }

        v11 = *v10;
        if ((*v10 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v15 = (__clz(v11 ^ 0xFF) - 24);
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v11 = ((v11 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
            v13 = 3;
          }

          else
          {
            v11 = ((v11 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
            v13 = 4;
          }

          goto LABEL_18;
        }

        if (v15 == 1)
        {
LABEL_17:
          v13 = 1;
        }

        else
        {
          v11 = v10[1] & 0x3F | ((v11 & 0x1F) << 6);
          v13 = 2;
        }
      }

LABEL_18:
      if (sub_25F30425C())
      {
        if (v11 <= 0x7F)
        {
          v7 = v11 + 1;
        }

        else
        {
          v14 = (v11 & 0x3F) << 8;
          if (v11 >= 0x800)
          {
            v16 = (v14 | (v11 >> 6) & 0x3F) << 8;
            v17 = (((v16 | (v11 >> 12) & 0x3F) << 8) | (v11 >> 18)) - 2122219023;
            v7 = (v11 >> 12) + v16 + 8487393;
            if (HIWORD(v11))
            {
              v7 = v17;
            }
          }

          else
          {
            v7 = (v11 >> 6) + v14 + 33217;
          }
        }

        v21[0] = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v7) >> 3))));
        v8 = sub_25F304EFC();
        MEMORY[0x25F8D7130](v8);
      }

      v6 += v13;
      if (v6 >= v4)
      {
        swift_bridgeObjectRelease_n();
        return v22;
      }
    }
  }

  return 0;
}

uint64_t String.replacingCharacters(in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[6] = sub_25F2DDC58(sub_25F2E3068, v6, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58830, &qword_25F315A98);
  sub_25F1F72CC(&qword_27FD58838, &qword_27FD58830, &qword_25F315A98, MEMORY[0x277D83970]);
  return sub_25F3050AC();
}

Swift::String __swiftcall String.lowercasingFirstLetter()()
{
  v2 = sub_25F2DED54(v0, v1, MEMORY[0x277D83718]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_25F2DED54(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = sub_25F2DE334(a1, a2);
    if ((v5 & 0x100000000) == 0)
    {
      v6 = v5;

      sub_25F2E28E8(1uLL);
      if ((v6 & 0xFFFFFF80) != 0 || v6 <= 0xFF)
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
LABEL_7:
    v7 = sub_25F304EFC();
    v8 = a3(v7);

    MEMORY[0x25F8D7130](a1, a2);

    return v8;
  }

  return 0;
}

BOOL sub_25F2DEF0C(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_25F30427C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = sub_25F304F3C();
  v21[0] = sub_25F3050CC();
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  a3(v21[0], v12, v13, v14);
  sub_25F2A3D58();
  v15 = sub_25F305D0C();
  v17 = v16;
  v19 = v18;
  (*(v7 + 8))(v9, v6);

  result = 0;
  if ((v19 & 1) == 0 && !(v15 >> 14))
  {
    return (v17 ^ v11) < 0x4000;
  }

  return result;
}

uint64_t String.spacedTitleCase.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F30427C();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F3067FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HIBYTE(a2) & 0xF;
  v43 = a1;
  v44 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v45 = 0;
  v46 = v10;

  result = sub_25F304F9C();
  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_40:

    v43 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    sub_25F1F72CC(qword_27FD52F88, &qword_27FD52F80, &qword_25F309110, MEMORY[0x277D83958]);
    v32 = sub_25F304CAC();
    v34 = v33;

    v43 = v32;
    v44 = v34;
    v35 = v38;
    sub_25F30420C();
    sub_25F1BF118();
    v36 = sub_25F305D1C();
    (*(v39 + 8))(v35, v40);

    return v36;
  }

  v13 = result;
  v14 = v12;
  v15 = (v7 + 8);
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    v17 = (v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v13 & 0xFFFFFFFFFFFFLL;
    if (!v17)
    {
      break;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v22 = sub_25F304EDC();
    }

    else
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v19 = v13;
      }

      else
      {
        if ((v13 & 0x1000000000000000) != 0)
        {
          v18 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v18 = sub_25F30605C();
        }

        v19 = *v18;
      }

      v20 = v19;
      v21 = (__clz(~v19) - 24) << 16;
      if (v20 < 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 65541;
      }
    }

    v23 = 4 * v17;
    if (v23 == v22 >> 14)
    {
      result = sub_25F2E1E5C(v13, v14);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_42;
      }

      sub_25F30680C();
      v24 = sub_25F3067DC();
      (*v15)(v9, v6);
      if (v24)
      {
        goto LABEL_30;
      }
    }

    if (sub_25F304C2C())
    {
      if ((v14 & 0x1000000000000000) != 0)
      {
        if (v23 != sub_25F304EDC() >> 14)
        {
          goto LABEL_28;
        }
      }

      else if (v23 != ((4 * sub_25F305F8C()) & 0x3FFFFFFFFFFFFLL))
      {
LABEL_28:
        if (sub_25F304C2C() & 1) != 0 && (sub_25F304C1C())
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      result = sub_25F2E1E5C(v13, v14);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_43;
      }

      sub_25F30680C();
      v25 = sub_25F3067EC();
      (*v15)(v9, v6);
      if ((v25 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_30:
      MEMORY[0x25F8D7130](32, 0xE100000000000000);
    }

LABEL_31:
    MEMORY[0x25F8D7130](v13, v14);

    v26 = v41;
    v27 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_25F2EFB20(0, *(v16 + 2) + 1, 1, v16);
    }

    v29 = *(v16 + 2);
    v28 = *(v16 + 3);
    if (v29 >= v28 >> 1)
    {
      v16 = sub_25F2EFB20((v28 > 1), v29 + 1, 1, v16);
    }

    *(v16 + 2) = v29 + 1;
    v30 = &v16[16 * v29];
    *(v30 + 4) = v26;
    *(v30 + 5) = v27;
    result = sub_25F304F9C();
    v13 = result;
    v14 = v31;
    if (!v31)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

Swift::String __swiftcall String.strippingTrailingNewlines()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58840, &qword_25F315AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_25F3050CC();
  v11 = sub_25F2E234C(0xAuLL, 0xE100000000000000, v7, v8, v9, v10);

  if (v11)
  {
    v12 = sub_25F3046AC();
    v13 = *(*(v12 - 8) + 56);
    while (1)
    {
      v28[2] = v3;
      v28[3] = v2;
      v28[0] = 10;
      v28[1] = 0xE100000000000000;
      v13(v6, 1, 1, v12);
      sub_25F1BF118();
      sub_25F305D3C();
      v15 = v14;
      v16 = sub_25F2E30E8(v6);
      if (v15)
      {
        break;
      }

      v18 = sub_25F3050CC();
      v22 = sub_25F2E234C(0xAuLL, 0xE100000000000000, v18, v19, v20, v21);

      if ((v22 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v23 = sub_25F3050CC();
    v24 = MEMORY[0x25F8D7070](v23);
    v26 = v25;

    v16 = v24;
    v17 = v26;
  }

  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

Swift::String __swiftcall String.describingDifference(from:)(Swift::String from)
{
  v3 = v2;
  v4 = v1;
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v7 = 0x66666964206F4ELL;
  if (v1 == from._countAndFlagsBits && v2 == from._object || (v8 = sub_25F30659C(), (v8 & 1) != 0))
  {
    v9 = 0xE700000000000000;
LABEL_5:
    v10 = v7;
  }

  else
  {
    v58 = 10;
    v59 = 0xE100000000000000;
    MEMORY[0x28223BE20](v8);
    v49 = &v58;

    v12 = sub_25F1BA664(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F1F8CB8, v48, v4, v3, v11);
    v58 = 10;
    v59 = 0xE100000000000000;
    MEMORY[0x28223BE20](v12);
    v49 = &v58;

    v13 = v12;
    v15 = sub_25F1BA664(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F2E3430, v48, countAndFlagsBits, object, v14);
    v16 = *(v12 + 16);
    v54 = *(v15 + 16);
    v50 = v15 + 32;
    v51 = v12 + 32;

    v17 = 0;
    v18 = 0;
    v19 = 0;
    for (i = v16; ; v16 = i)
    {
      if (v19 == v16)
      {
        v55 = 0;
        v56 = 0;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        if (v19 >= *(v13 + 16))
        {
          goto LABEL_31;
        }

        v16 = v19 + 1;
        v22 = (v51 + 32 * v19);
        v20 = v22[2];
        v21 = v22[3];
        v23 = v22[1];
        v55 = *v22;
        v56 = v23;
      }

      v19 = v16;
      if (v18 == v54)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v18 = v54;
        if (!v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v18 >= *(v15 + 16))
        {
          goto LABEL_32;
        }

        v52 = v21;
        v28 = v17;
        v29 = v20;
        v30 = v13;
        v31 = v15;
        v32 = v18 + 1;
        v33 = (v50 + 32 * v18);
        v26 = v33[2];
        v27 = v33[3];
        v34 = *v33;
        v25 = v33[1];

        v24 = v34;
        v18 = v32;
        v15 = v31;
        v13 = v30;
        v20 = v29;
        v17 = v28;
        v21 = v52;
        if (!(v52 | v27))
        {
LABEL_26:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v9 = 0x800000025F31B8D0;
          v7 = 0xD000000000000058;
          goto LABEL_5;
        }
      }

      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (!v21 || !v27)
      {

        v58 = 0;
        v59 = 0xE000000000000000;
        sub_25F305FAC();
        MEMORY[0x25F8D7130](0xD00000000000004BLL, 0x800000025F31B930);
        v35 = *(v13 + 16);

        v57 = v35;
        v36 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v36);

        MEMORY[0x25F8D7130](0x20736177202CLL, 0xE600000000000000);
        v37 = *(v15 + 16);

        v57 = v37;
        v38 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v38);

        v39 = 41;
LABEL_29:
        MEMORY[0x25F8D7130](v39, 0xE100000000000000);
        v7 = v58;
        v9 = v59;
        goto LABEL_5;
      }

      v52 = v24;
      if (v20 != v26 || v21 != v27 || v55 >> 16 != v24 >> 16 || v56 >> 16 != v25 >> 16)
      {
        LOBYTE(v49) = 0;
        if ((sub_25F30648C() & 1) == 0)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_25F305FAC();

          v58 = 0xD00000000000001CLL;
          v59 = 0x800000025F31B980;
          v57 = v17;
          v40 = sub_25F3064DC();
          MEMORY[0x25F8D7130](v40);

          MEMORY[0x25F8D7130](2951738, 0xE300000000000000);
          v41 = MEMORY[0x25F8D7070](v52, v25, v26, v27);
          v43 = v42;

          MEMORY[0x25F8D7130](v41, v43);

          MEMORY[0x25F8D7130](11018, 0xE200000000000000);
          v44 = MEMORY[0x25F8D7070](v55, v56, v20, v21);
          v46 = v45;

          MEMORY[0x25F8D7130](v44, v46);

          v39 = 10;
          goto LABEL_29;
        }
      }

      ++v17;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  result._object = v9;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall String.indentingEachLine(startingOnLine:)(Swift::UInt startingOnLine)
{
  v2._countAndFlagsBits = 2105376;
  v2._object = 0xE300000000000000;
  v5 = String.prefixingEachLine(with:startingOnLine:)(v2, startingOnLine);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall String.uv_deletingTrailing(suffix:)(Swift::String suffix)
{
  v3 = sub_25F2DFD1C(suffix._countAndFlagsBits, suffix._object, v1, v2, Substring.uv_deletingTrailing(suffix:));
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_25F2DFD1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_25F3050CC();
  v12 = a5(a1, a2, v8, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x25F8D7070](v12, v14, v16, v18);

  return v19;
}

unint64_t Substring.uv_deletingTrailing(suffix:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  if ((sub_25F2E234C(a1, a2, a3, a4, a5, a6) & 1) == 0)
  {

    return v6;
  }

  result = sub_25F30500C();
  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    result = sub_25F305C9C();
    if (result >> 14 >= v6 >> 14)
    {
      return sub_25F305CCC();
    }
  }

  __break(1u);
  return result;
}

uint64_t Substring.uv_deletingLeading(prefix:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_25F2E21DC(a1, a2, a3, a4, a5, a6))
  {
    sub_25F30500C();
    if (a4 >> 14 >= sub_25F305C9C() >> 14)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = a3;
  if (a4 >> 14 < a3 >> 14)
  {
    __break(1u);
    return result;
  }

LABEL_5:

  return sub_25F305CCC();
}

Swift::String __swiftcall String.unquoted()()
{
  v2 = v1;
  v3 = v0;
  if (sub_25F30509C() == 34 && v4 == 0xE100000000000000)
  {
    goto LABEL_8;
  }

  v6 = sub_25F30659C();

  if (v6)
  {
    goto LABEL_9;
  }

  if (sub_25F30509C() == 10322146 && v7 == 0xA300000000000000)
  {
LABEL_8:
  }

  else
  {
    v17 = sub_25F30659C();

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_9:
  sub_25F304F4C();
  if (sub_25F30509C() == 34 && v8 == 0xE100000000000000)
  {
    goto LABEL_16;
  }

  v10 = sub_25F30659C();

  if ((v10 & 1) == 0)
  {
    sub_25F304F4C();
    if (sub_25F30509C() == 10322146 && v11 == 0xA300000000000000)
    {
LABEL_16:

      goto LABEL_17;
    }

    v18 = sub_25F30659C();

    if (v18)
    {
      goto LABEL_17;
    }

LABEL_23:

    goto LABEL_19;
  }

LABEL_17:
  v12 = sub_25F304F3C();
  v13 = sub_25F304F4C();
  if (v13 >> 14 < v12 >> 14)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = sub_25F3050CC();
  v3 = MEMORY[0x25F8D7070](v15);
  v2 = v16;

LABEL_19:
  v13 = v3;
  v14 = v2;
LABEL_25:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_25F2E021C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58840, &qword_25F315AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v36 - v5;
  v50 = a1;
  v51 = a2;
  v42 = 0x800000025F31B9B0;
  v38 = 0x800000025F31B9D0;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1;
  }

  v8 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  v44 = v8 | (v7 << 16);
  v41 = sub_25F3046AC();
  v9 = *(v41 - 8);
  v10 = *(v9 + 56);
  v39 = v9 + 56;
  v40 = v10;

  v37 = 0;
  v43 = 15;
LABEL_6:
  v45 = a1;
  while (1)
  {
    v48 = a1;
    v49 = a2;
    v11 = v41;
    v46 = 0xD000000000000018;
    v47 = v42;
    v12 = v40;
    v40(v6, 1, 1, v41);
    sub_25F1BF118();

    v13 = sub_25F305D3C();
    v15 = v14;
    v17 = v16;
    sub_25F2E30E8(v6);

    if (v17)
    {
      return v45;
    }

    v48 = v45;
    v49 = a2;
    v46 = 0xD000000000000011;
    v47 = v38;
    v12(v6, 1, 1, v11);

    v36[1] = v15;
    sub_25F305D3C();
    v19 = v18;
    sub_25F2E30E8(v6);

    a1 = v45;
    if ((v19 & 1) == 0)
    {
      v20 = sub_25F3050CC();
      v24 = v23;
      if ((v20 ^ v21) >> 14)
      {
        v25 = v20;
        v26 = v21;
        v27 = v22;
        if ((v23 & 0x1000000000000000) != 0)
        {
          v27 = sub_25F2E18D4(v20, v21, v22, v23, 16);

          if ((v27 & 0x100000000) == 0)
          {
LABEL_16:
            if (WORD1(v27) <= 0x10u && (v27 & 0xFFFFF800) != 0xD800)
            {
              v48 = 0;
              v49 = 0xE000000000000000;
              sub_25F30681C();
              sub_25F2E31A4();
              sub_25F304ECC();

              a1 = v50;
              a2 = v51;
              v33 = HIBYTE(v51) & 0xF;
              if ((v51 & 0x2000000000000000) == 0)
              {
                v33 = v50 & 0xFFFFFFFFFFFFLL;
              }

              v34 = 7;
              if (((v51 >> 60) & ((v50 & 0x800000000000000) == 0)) != 0)
              {
                v34 = 11;
              }

              v43 = v13;
              v44 = v34 | (v33 << 16);
              if (4 * v33 < v13 >> 14)
              {
                __break(1u);
                return v45;
              }

              goto LABEL_6;
            }
          }
        }

        else
        {
          v28 = v13;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v48 = v22;
            v49 = v23 & 0xFFFFFFFFFFFFFFLL;
            v29 = &v48;
          }

          else if ((v22 & 0x1000000000000000) != 0)
          {
            v29 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v29 = sub_25F30605C();
          }

          v30 = v37;
          v31 = sub_25F2E2BA4(v29, v25, v26, v27, v24, 16);
          LODWORD(v27) = v31;
          v37 = v30;
          LOBYTE(v46) = BYTE4(v31) & 1;
          v32 = BYTE4(v31) & 1;

          v13 = v28;
          if ((v32 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
      }
    }
  }
}

Swift::String __swiftcall String.unescaped()()
{
  v2 = v1;
  v3 = v0;
  v4 = off_27FD58820;
  v5 = *(off_27FD58820 + 2);

  if (v5)
  {
    v8 = 0;
    v9 = (v4 + 7);
    while (v8 < v4[2])
    {
      ++v8;
      sub_25F1BF118();

      v3 = sub_25F305D2C();
      v11 = v10;

      v9 += 32;
      if (v5 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = v2;
LABEL_7:

    v12 = sub_25F2E021C(v3, v11);
    v14 = v13;

    v6 = v12;
    v7 = v14;
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall String.escapedAndQuotedString()()
{
  MEMORY[0x25F8D7130]();
  MEMORY[0x25F8D7130](34, 0xE100000000000000);
  v0 = 34;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.quotedCompilerArgumentAndEscaping()()
{

  sub_25F1BF118();

  sub_25F305D2C();

  sub_25F305D2C();

  v0 = sub_25F305D2C();
  v2 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58848, &qword_25F315AA8);
  swift_arrayDestroy();
  MEMORY[0x25F8D7130](v0, v2);

  MEMORY[0x25F8D7130](34, 0xE100000000000000);
  v3 = 34;
  v4 = 0xE100000000000000;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String.PaddingPosition.hashValue.getter(char a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1 & 1);
  return sub_25F30676C();
}

uint64_t String.padded(toAtLeastLength:withPad:position:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (sub_25F304F2C() >= a1)
  {

    return a5;
  }

  result = sub_25F304F2C();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_25F304F2C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_17;
  }

  if (!(v11 % result) || !__OFADD__(v11 / result, 1))
  {

    v12 = sub_25F30507C();
    v14 = v13;
    if (a4)
    {
      v18 = a5;
      v15 = v12;

      v16 = v15;
      v17 = v14;
    }

    else
    {
      v18 = v12;

      v16 = a5;
      v17 = a6;
    }

    MEMORY[0x25F8D7130](v16, v17);

    return v18;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25F2E0BA0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58870, &unk_25F315B48);
  sub_25F2E3304();
  v2 = sub_25F304CAC();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F2E0C38@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84B78];
  *(v4 + 16) = xmmword_25F3077D0;
  v6 = MEMORY[0x277D84BC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_25F304E3C();
  *a2 = result;
  a2[1] = v8;
  return result;
}

Swift::String __swiftcall String.uv_escapingForRegex()()
{
  sub_25F2E3150();
  sub_25F2E31A4();
  sub_25F30591C();
  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  v0 = v3;
  v1 = v4;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

id NSString.uv_sha256.getter()
{
  v1 = sub_25F3049FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F3049EC();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 dataUsingEncoding_];
  if (v8 || (v8 = [v0 dataUsingEncoding_]) != 0)
  {
    v9 = v8;
    v10 = sub_25F30453C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xC000000000000000;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCAB68]) init];
  sub_25F2E3010();
  sub_25F3049CC();
  sub_25F1B70AC(v10, v12);
  sub_25F2E2974(v10, v12, v4);
  sub_25F1D4BB0(v10, v12);
  sub_25F3049BC();
  v14 = (*(v2 + 8))(v4, v1);
  MEMORY[0x28223BE20](v14);
  *(&v16 - 2) = v13;
  sub_25F3049DC();
  sub_25F1D4BB0(v10, v12);
  (*(v17 + 8))(v7, v18);
  return v13;
}

char *sub_25F2E131C(char *result, char *a2)
{
  if (result)
  {
    v3 = result;
    if (result != a2)
    {
      sub_25F1ED8D0();
      v7 = xmmword_25F3077D0;
      do
      {
        v4 = *v3++;
        v5 = sub_25F305B8C("%02x", v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
        v6 = swift_allocObject();
        *(v6 + 16) = v7;
        *(v6 + 56) = MEMORY[0x277D84B78];
        *(v6 + 64) = MEMORY[0x277D84BC0];
        *(v6 + 32) = v4;
        sub_25F305A2C();
      }

      while (v3 != a2);
    }
  }

  return result;
}

Swift::String __swiftcall Substring.uv_escapingForRegex()()
{
  MEMORY[0x25F8D7070]();
  v0 = String.uv_escapingForRegex()();

  countAndFlagsBits = v0._countAndFlagsBits;
  object = v0._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void *sub_25F2E1468(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD531A0, &qword_25F308A90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_25F2E14DC(uint64_t a1, unint64_t a2)
{
  v2 = sub_25F3050CC();
  v6 = sub_25F2E155C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_25F2E155C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25F305CAC();
    if (!v9 || (v10 = v9, v11 = sub_25F2E1468(v9, 0), v12 = sub_25F2E16B4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25F304EFC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25F304EFC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25F30605C();
LABEL_4:

  return sub_25F304EFC();
}

unint64_t sub_25F2E16B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25F2925C8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25F304FFC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25F30605C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25F2925C8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25F304FBC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unsigned __int8 *sub_25F2E18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_25F2E327C();

  result = sub_25F3050BC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25F2E14DC(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25F30605C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_25F2E1E5C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25F2E1FAC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_25F305F9C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_25F30605C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_25F2E1FAC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25F2E2044(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25F2E20B8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25F2E2044(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25F2925C8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25F2E20B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25F30605C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_25F2E21DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 ^ a4;

  if (v7 >= 0x4000)
  {
    while (1)
    {
      v12 = sub_25F305CBC();
      v14 = v13;
      v15 = sub_25F305C7C();
      v16 = sub_25F304F9C();
      if (!v17)
      {
        break;
      }

      if (v12 == v16 && v17 == v14)
      {
      }

      else
      {
        v11 = sub_25F30659C();

        if ((v11 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v15 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_25F304F9C();
    v9 = v8;

    if (v9)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_25F2E234C(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  if ((a4 ^ a3) >= 0x4000)
  {
    while (1)
    {
      v11 = sub_25F305C8C();
      v12 = sub_25F305CBC();
      v14 = v13;
      if (v8 < 0x4000)
      {
        break;
      }

      v15 = v12;
      v8 = sub_25F304F4C();
      if (v15 == sub_25F30509C() && v14 == v16)
      {
      }

      else
      {
        v10 = sub_25F30659C();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v11 ^ a3) < 0x4000)
      {
        goto LABEL_14;
      }
    }

    v18 = 1;
    goto LABEL_17;
  }

LABEL_14:
  if (v8 >= 0x4000)
  {
    sub_25F304F4C();
    sub_25F30509C();
    v18 = 0;
LABEL_17:

    return v18;
  }

  return 1;
}

unint64_t sub_25F2E2504(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25F2E259C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25F2E20B8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25F2E259C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25F2925C8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25F2E2610(unint64_t result, int64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a3 & 0xC) == 4 << v9)
  {
LABEL_53:
    v28 = result;
    v7 = sub_25F2925C8(v7, a4, a5);
    result = v28;
  }

  v11 = result;
  if ((result & 0xC) == v10)
  {
    v29 = result;
    v11 = sub_25F2925C8(result, a4, a5);
    result = v29;
  }

  result = sub_25F2E2504(result, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v10 = 0;
    v18 = v11 >> 14;
    v19 = &v31 + 7;
    v20 = &v31 + 6;
    while (v18 < v7 || v7 < result >> 14)
    {
      if (result < 0x10000)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v31 = v19;
        v27 = v20;
        result = sub_25F304EEC();
        v20 = v27;
        v19 = v31;
      }

      else
      {
        v21 = result >> 16;
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          if ((v19[v21] & 0xC0) == 0x80)
          {
            v24 = &v20[v21];
            v25 = 1;
            do
            {
              ++v25;
              v26 = *v24--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v25 = 1;
          }

          v21 -= v25;
        }

        else
        {
          v22 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v30 = v20;
            v31 = v19;
            v22 = sub_25F30605C();
            v20 = v30;
            v19 = v31;
          }

          do
          {
            v23 = *(v22 - 1 + v21--) & 0xC0;
          }

          while (v23 == 128);
        }

        result = (v21 << 16) | 5;
      }

      if (--v10 <= a2)
      {
        if (v18 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  v12 = v11 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while (v7 < v12 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v10)
      {
        __break(1u);
        goto LABEL_52;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = sub_25F304EDC();
        if (!--a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v32 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = sub_25F30605C();
          }

          v13 = *(v17 + v16);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        result = ((v16 + v15) << 16) | 5;
        if (!--a2)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

LABEL_24:
  if (v7 >= v12 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

unint64_t sub_25F2E28E8(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v1;
      v3 = v1[1];
      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      v5 = 7;
      if (((v3 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
      {
        v5 = 11;
      }

      result = sub_25F2E2610(0xFuLL, result, v5 | (v4 << 16), v2, v3);
      if ((v6 & 1) == 0)
      {
        sub_25F2E33DC();
        return sub_25F30590C();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F2E2974(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_25F3049FC();
      sub_25F2E3010();
      return sub_25F3049AC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_25F2E2AF4(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_25F2E2AF4(v5, v6);
  }

  sub_25F3049FC();
  sub_25F2E3010();
  return sub_25F3049AC();
}

uint64_t sub_25F2E2AF4(uint64_t a1, uint64_t a2)
{
  result = sub_25F3042CC();
  if (!result || (result = sub_25F3042FC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25F3042EC();
      sub_25F3049FC();
      sub_25F2E3010();
      return sub_25F3049AC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2E2BA4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25F2925C8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25F304FEC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25F2925C8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25F2925C8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25F304FEC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_25F2E3010()
{
  result = qword_27FD58828;
  if (!qword_27FD58828)
  {
    sub_25F3049FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58828);
  }

  return result;
}

double sub_25F2E3068@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  v14[2] = v4;
  v9 = sub_25F232CE0(sub_25F2E32D0, v14, v7, v8);
  v10 = (v9 & 1) == 0;
  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v5;
  }

  *a2 = v12;
  a2[1] = v11;

  return result;
}

uint64_t sub_25F2E30E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58840, &qword_25F315AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F2E3150()
{
  result = qword_27FD58850;
  if (!qword_27FD58850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58850);
  }

  return result;
}

unint64_t sub_25F2E31A4()
{
  result = qword_27FD58858;
  if (!qword_27FD58858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58858);
  }

  return result;
}

unint64_t sub_25F2E3218()
{
  result = qword_27FD58860;
  if (!qword_27FD58860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58860);
  }

  return result;
}

unint64_t sub_25F2E327C()
{
  result = qword_27FD58868;
  if (!qword_27FD58868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58868);
  }

  return result;
}

unint64_t sub_25F2E3304()
{
  result = qword_27FD58878;
  if (!qword_27FD58878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD58870, &unk_25F315B48);
    sub_25F2E3388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58878);
  }

  return result;
}

unint64_t sub_25F2E3388()
{
  result = qword_27FD58880;
  if (!qword_27FD58880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58880);
  }

  return result;
}

unint64_t sub_25F2E33DC()
{
  result = qword_27FD58888[0];
  if (!qword_27FD58888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD58888);
  }

  return result;
}

uint64_t Sequence.firstMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25F305FEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  MEMORY[0x25F8D7310](a3, a5);
  swift_getWitnessTable();
  v11 = sub_25F30511C();
  (*(v8 + 8))(v10, v7);
  v13 = v11;
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F30583C();
}

uint64_t Sequence.keyedMap<A, B>(_:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a1;
  v18[8] = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  result = sub_25F2E3888(sub_25F2E425C, v18, a3, TupleTypeMetadata2, v11, a6, MEMORY[0x277D84950], &v19);
  if (!v7)
  {
    v13 = result;
    v14 = sub_25F304B4C();
    v19 = v13;
    v15 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    v17 = swift_getWitnessTable();
    KeyValueMap.init<A>(_:)(&v19, v14, v15, WitnessTable, v17, &v20);
    return v20;
  }

  return result;
}

uint64_t Sequence.compactKeyedMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getTupleTypeMetadata2();
  result = sub_25F30511C();
  if (!v7)
  {
    v9 = result;
    v10 = sub_25F304B4C();
    v14 = v9;
    v11 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    v13 = swift_getWitnessTable();
    KeyValueMap.init<A>(_:)(&v14, v10, v11, WitnessTable, v13, &v15);
    return v15;
  }

  return result;
}

uint64_t sub_25F2E3888(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_25F305C1C();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_25F3050EC();
  v63 = sub_25F30611C();
  v58 = sub_25F30612C();
  sub_25F3060CC();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_25F3050DC();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25F305CDC();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_25F30610C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_25F305CDC();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_25F30610C();
      sub_25F305CDC();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

void Sequence.orderedKeyedMap<A, B>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = a1;
  v20[8] = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v17 = sub_25F2E3888(sub_25F2E7FA8, v20, a3, TupleTypeMetadata2, v16, a6, MEMORY[0x277D84950], &v21);
  if (!v8)
  {
    v21 = v17;
    v18 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    OrderedDictionary.init<A>(_:)(&v21, a4, a5, v18, a7, WitnessTable, a8);
  }
}

uint64_t Sequence.coiterate<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2);
  (*(v12 + 16))(v15, a1, a3);
  return sub_25F2E73D4(v17, v15, a2, a3, a4, a5, type metadata accessor for Coiteration, a6);
}

uint64_t Sequence.identified<A>(by:)(uint64_t *a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return Sequence.keyedMap<A, B>(_:)(sub_25F2E74AC, v6, a2, *(v4 + *MEMORY[0x277D84DE8] + 8), *(v4 + *MEMORY[0x277D84DE8]), a3, a4);
}

void Sequence.orderedKeyedMap<A, B>(_:uniquingKeysWith:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *)@<X2>, uint64_t a4@<X3>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10;
  v28 = a1;
  v29 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v18 = sub_25F2E3888(sub_25F2E7FA8, v22, a5, TupleTypeMetadata2, v17, a8, MEMORY[0x277D84950], &v30);
  if (!v10)
  {
    v30 = v18;
    v19 = sub_25F30539C();
    swift_getWitnessTable();
    OrderedDictionary.init<A>(_:uniquingKeysWith:)(&v30, a3, a4, a6, a7, v19, a10, a9);
  }
}

void (*Sequence.groupElements<A, B>(using:)(void (*a1)(char *, char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void, void, void)
{
  v87 = a7;
  v84 = a1;
  v85 = a2;
  v11 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v83 = v11;
  v14 = type metadata accessor for Inhabited(255, v11, WitnessTable, v13);
  v69 = sub_25F305C1C();
  v63 = *(v69 - 8);
  v15 = MEMORY[0x28223BE20](v69);
  v82 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v59 - v18;
  v72 = *(v14 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v68 = &v59 - v20;
  v62 = *(a5 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v67 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v59 - v24;
  v71 = *(a4 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v91 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v60 = &v59 - v28;
  v80 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v86 = &v59 - v30;
  v31 = sub_25F305C1C();
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v59 - v33;
  v35 = *(a3 - 8);
  MEMORY[0x28223BE20](v32);
  v79 = &v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = swift_getAssociatedTypeWitness();
  v61 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v59 - v37;
  swift_getTupleTypeMetadata2();
  v38 = sub_25F3052DC();
  v76 = sub_25F1CCBBC(v38, a4, v14, v87);

  v93 = v76;
  (*(v35 + 16))(v79, AssociatedConformanceWitness, a3);
  v39 = AssociatedTypeWitness;
  v40 = v34;
  v41 = v60;
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v42 = v88;
  v43 = v86;
  v79 = *(v88 + 48);
  v80 = v88 + 48;
  if ((v79)(v40, 1, v39) != 1)
  {
    v76 = *(v42 + 32);
    v75 = (v72 + 6);
    v66 = (v72 + 4);
    v74 = (v71 + 2);
    v65 = (v72 + 2);
    v73 = (v72 + 7);
    v64 = v72 + 1;
    v72 = (v62 + 1);
    ++v71;
    v88 = v42 + 32;
    v70 = (v42 + 8);
    ++v63;
    v62 += 2;
    v77 = v40;
    v78 = v39;
    v76(v43, v40, v39);
    while (1)
    {
      v84(v41, v25, v43);
      v54 = v92;
      sub_25F304B8C();
      if ((*v75)(v54, 1, v14) == 1)
      {
        (*v63)(v92, v69);
        (*v74)(v91, v41, a4);
        v45 = v41;
        v46 = v67;
        (*v62)(v67, v25, a5);
        v47 = sub_25F3052DC();
        v48 = v25;
        v49 = v83;
        v50 = swift_getWitnessTable();
        v51 = v82;
        Inhabited<>.init(_:otherElements:)(v46, v47, v49, v50, v82);
        (*v73)(v51, 0, 1, v14);
        sub_25F304B4C();
        sub_25F304B9C();
      }

      else
      {
        v55 = v68;
        (*v66)(v68, v92, v14);
        v56 = swift_getWitnessTable();
        Inhabited<>.append(_:)(v25, v14, v56, v57);
        v45 = v41;
        (*v74)(v91, v41, a4);
        v48 = v25;
        v58 = v82;
        (*v65)(v82, v55, v14);
        (*v73)(v58, 0, 1, v14);
        sub_25F304B4C();
        sub_25F304B9C();
        (*v64)(v55, v14);
      }

      (*v72)(v48, a5);
      (*v71)(v45, a4);
      v43 = v86;
      v52 = v78;
      (*v70)(v86, v78);
      v53 = v77;
      sub_25F305CDC();
      v25 = v48;
      v41 = v45;
      if ((v79)(v53, 1, v52) == 1)
      {
        break;
      }

      v76(v43, v53, v52);
    }
  }

  (*(v61 + 8))(v89, v90);
  return v93;
}

void (*Sequence.groupElements<A>(by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void, void, void)
{
  v4 = *a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return Sequence.groupElements<A, B>(using:)(sub_25F2E7E2C, v6, a2, *(v4 + *MEMORY[0x277D84DE8] + 8), *(v4 + *MEMORY[0x277D84DE8]), a3, a4);
}

unint64_t Sequence.compactGroupElements<A>(by:)(uint64_t *a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return Sequence.compactGroupElements<A, B>(_:)(sub_25F2E7EDC, v6, a2, *(*(v4 + *MEMORY[0x277D84DE8] + 8) + 16), *(v4 + *MEMORY[0x277D84DE8]), a3, a4);
}

uint64_t sub_25F2E4F5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v18[-v13];
  swift_getAtKeyPath();
  v19 = a3;
  v20 = *(v11 + 16);
  v21 = a4;
  v22 = a5;
  v23 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F20977C(sub_25F2E7F7C, v18, MEMORY[0x277D84A98], TupleTypeMetadata2, v16, a6);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_25F2E50E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a4 - 8) + 16))(a6, a1, a4);
  return (*(*(AssociatedTypeWitness - 8) + 16))(a6 + v11, a2, AssociatedTypeWitness);
}

unint64_t Sequence.compactGroupElements<A, B>(_:)(void (*a1)(char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v93 = a7;
  v104 = a1;
  v105 = a2;
  v11 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v91 = v11;
  v14 = type metadata accessor for Inhabited(255, v11, WitnessTable, v13);
  v78 = sub_25F305C1C();
  v79 = *(v78 - 8);
  v15 = MEMORY[0x28223BE20](v78);
  v90 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v69 - v18;
  v96 = *(v14 - 8);
  MEMORY[0x28223BE20](v17);
  v77 = &v69 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = sub_25F305C1C();
  v69 = *(v89 - 8);
  v21 = MEMORY[0x28223BE20](v89);
  v23 = &v69 - v22;
  v95 = a5;
  v71 = *(a5 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v76 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v103 = &v69 - v27;
  v80 = *(a4 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v88 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v69 - v30;
  v108 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v110 = &v69 - v32;
  v33 = sub_25F305C1C();
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v69 - v35;
  v37 = *(a3 - 1);
  MEMORY[0x28223BE20](v34);
  v101 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = swift_getAssociatedTypeWitness();
  v70 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v107 = &v69 - v39;
  swift_getTupleTypeMetadata2();
  v40 = sub_25F3052DC();
  v41 = sub_25F1CCBBC(v40, a4, v14, v93);

  v111 = v41;
  v42 = AssociatedTypeWitness;
  v43 = *(v37 + 16);
  v100 = a3;
  v43(v101, v109, a3);
  v44 = v94;
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v100 = *(v44 + 48);
  v101 = (v44 + 48);
  if (v100(v36, 1, v42) != 1)
  {
    v48 = *(v44 + 32);
    v47 = v44 + 32;
    v97 = TupleTypeMetadata2 - 8;
    v98 = v48;
    v86 = (v80 + 4);
    v85 = (v71 + 4);
    v84 = (v96 + 6);
    v75 = (v96 + 4);
    v83 = (v80 + 2);
    v74 = (v96 + 2);
    v82 = (v96 + 7);
    v73 = v96 + 1;
    v81 = (v71 + 1);
    ++v80;
    v96 = (v47 - 24);
    v72 = v79 + 1;
    v71 += 2;
    v79 = (v69 + 8);
    v108 = v14;
    v109 = a4;
    v87 = TupleTypeMetadata2;
    v94 = v47;
    v99 = v36;
    do
    {
      v49 = v36;
      v50 = v110;
      v98(v110, v49, v42);
      v104(v50);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v23, 1, TupleTypeMetadata2) == 1)
      {
        (*v96)(v50, v42);
        (*v79)(v23, v89);
      }

      else
      {
        v51 = *(TupleTypeMetadata2 + 48);
        (*v86)(v31, v23, a4);
        v52 = v95;
        (*v85)(v103, &v23[v51], v95);
        v53 = v102;
        sub_25F304B8C();
        if ((*v84)(v53, 1, v14) == 1)
        {
          (*v72)(v102, v78);
          (*v83)(v88, v31, a4);
          v54 = v103;
          v55 = v23;
          v56 = v76;
          (*v71)(v76, v103, v52);
          v57 = sub_25F3052DC();
          v58 = v91;
          v59 = swift_getWitnessTable();
          v60 = AssociatedConformanceWitness;
          v61 = v90;
          v62 = v56;
          v23 = v55;
          v63 = v58;
          v14 = v108;
          Inhabited<>.init(_:otherElements:)(v62, v57, v63, v59, v90);
          (*v82)(v61, 0, 1, v14);
          sub_25F304B4C();
          AssociatedConformanceWitness = v60;
          sub_25F304B9C();
          a4 = v109;
          (*v81)(v54, v95);
        }

        else
        {
          v64 = v77;
          (*v75)(v77, v102, v14);
          v65 = swift_getWitnessTable();
          v66 = v103;
          Inhabited<>.append(_:)(v103, v14, v65, v67);
          (*v83)(v88, v31, v109);
          v68 = v90;
          (*v74)(v90, v64, v108);
          (*v82)(v68, 0, 1, v108);
          sub_25F304B4C();
          v14 = v108;
          sub_25F304B9C();
          (*v73)(v64, v14);
          a4 = v109;
          (*v81)(v66, v52);
        }

        (*v80)(v31, a4);
        v42 = AssociatedTypeWitness;
        (*v96)(v110, AssociatedTypeWitness);
        TupleTypeMetadata2 = v87;
      }

      v36 = v99;
      sub_25F305CDC();
    }

    while (v100(v36, 1, v42) != 1);
  }

  (*(v70 + 8))(v107, v106);
  return v111;
}

unsigned int (**Sequence.groupElements<A, B>(using:)(void (*a1)(char *, char *, char *), uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void, void, void)
{
  v71 = a2;
  v78 = a7;
  v73 = a1;
  v10 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v58 = v10;
  v13 = type metadata accessor for Inhabited(255, v10, WitnessTable, v12);
  v57 = sub_25F305C1C();
  v54 = *(v57 - 8);
  v14 = MEMORY[0x28223BE20](v57);
  v74 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v52 - v17;
  v61 = *(v13 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  v60 = *(a4 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v72 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - v25;
  v69 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v52 - v29;
  v31 = sub_25F305C1C();
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v75 = &v52 - v33;
  v34 = *(a3 - 1);
  MEMORY[0x28223BE20](v32);
  v68 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = swift_getAssociatedTypeWitness();
  v53 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v77 = &v52 - v36;
  swift_getTupleTypeMetadata2();
  v37 = sub_25F3052DC();
  v65 = sub_25F1CCBBC(v37, a4, v13, v78);

  v80 = v65;
  v38 = *(v34 + 16);
  v66 = a3;
  v38(v68, AssociatedConformanceWitness, a3);
  v39 = v75;
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v68 = *(v28 + 48);
  v69 = v28 + 48;
  if ((v68)(v39, 1, AssociatedTypeWitness) != 1)
  {
    v41 = *(v28 + 32);
    v42 = v61;
    v65 = (v61 + 6);
    v66 = v41;
    v55 = (v61 + 4);
    v63 = (v61 + 2);
    v64 = (v60 + 2);
    ++v61;
    v62 = (v42 + 7);
    ++v60;
    v59 = (v28 + 8);
    ++v54;
    v67 = v22;
    v41(v30, v39, AssociatedTypeWitness);
    while (1)
    {
      v73(v26, v22, v30);
      v45 = v79;
      sub_25F304B8C();
      if ((*v65)(v45, 1, v13) == 1)
      {
        (*v54)(v79, v57);
        (*v64)(v72, v26, a4);
        v43 = v74;
        (*v63)(v74, v22, v13);
        (*v62)(v43, 0, 1, v13);
        sub_25F304B4C();
        sub_25F304B9C();
        (*v61)(v22, v13);
      }

      else
      {
        v46 = v56;
        (*v55)(v56, v79, v13);
        v47 = swift_getWitnessTable();
        v48 = swift_getWitnessTable();
        Inhabited<>.append<A>(contentsOf:)(v67, v13, v13, v47, v48);
        (*v64)(v72, v26, a4);
        v49 = v74;
        (*v63)(v74, v46, v13);
        (*v62)(v49, 0, 1, v13);
        sub_25F304B4C();
        sub_25F304B9C();
        v50 = *v61;
        v51 = v46;
        v22 = v67;
        (*v61)(v51, v13);
        v50(v22, v13);
      }

      (*v60)(v26, a4);
      (*v59)(v30, AssociatedTypeWitness);
      v44 = v75;
      sub_25F305CDC();
      if ((v68)(v44, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v66(v30, v44, AssociatedTypeWitness);
    }
  }

  (*(v53 + 8))(v77, v76);
  return v80;
}

double Sequence.orderedGroupElements<A, B>(using:)@<D0>(void (*a1)(char *, char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v95 = a7;
  v99 = a6;
  v91 = a1;
  v92 = a2;
  v68 = a8;
  v11 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v90 = v11;
  v14 = type metadata accessor for Inhabited(255, v11, WitnessTable, v13);
  v77 = sub_25F305C1C();
  v70 = *(v77 - 8);
  v15 = MEMORY[0x28223BE20](v77);
  v89 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v80 = *(v14 - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v76 = &v65 - v21;
  v93 = a5;
  v69 = *(a5 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v75 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v65 - v25;
  v79 = *(a4 - 8);
  v27 = MEMORY[0x28223BE20](v24);
  v98 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v100 = &v65 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v32 = &v65 - v31;
  v33 = sub_25F305C1C();
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v94 = &v65 - v35;
  v36 = *(a3 - 8);
  MEMORY[0x28223BE20](v34);
  v38 = &v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = swift_getAssociatedTypeWitness();
  v67 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v65 - v39;
  OrderedDictionary.init()(a4, v14, v95, &v101);
  (*(v36 + 16))(v38, AssociatedConformanceWitness, a3);
  v40 = v94;
  sub_25F3050DC();
  v41 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v86 = *(v30 + 48);
  v87 = v30 + 48;
  if (v86(v40, 1, v41) != 1)
  {
    v44 = *(v30 + 32);
    v43 = v30 + 32;
    v84 = v44;
    v83 = (v80 + 6);
    v73 = (v80 + 4);
    v82 = (v79 + 2);
    v72 = (v80 + 2);
    v81 = (v80 + 7);
    v71 = v80 + 1;
    v80 = (v69 + 1);
    ++v79;
    v78 = (v43 - 24);
    ++v70;
    v69 += 2;
    v74 = v43;
    v85 = v32;
    v44(v32, v40, v41);
    while (1)
    {
      v59 = v100;
      v91(v100, v26, v32);
      v99 = type metadata accessor for OrderedDictionary(0, a4, v14, v95);
      OrderedDictionary.subscript.getter(v59, v99);
      if ((*v83)(v19, 1, v14) == 1)
      {
        (*v70)(v19, v77);
        (*v82)(v98, v100, a4);
        v45 = v75;
        v46 = a4;
        v47 = v93;
        (*v69)(v75, v26, v93);
        v48 = sub_25F3052DC();
        v49 = v41;
        v50 = v14;
        v51 = v26;
        v52 = v90;
        v53 = swift_getWitnessTable();
        v54 = v19;
        v55 = v89;
        v56 = v52;
        v26 = v51;
        v14 = v50;
        v41 = v49;
        Inhabited<>.init(_:otherElements:)(v45, v48, v56, v53, v89);
        (*v81)(v55, 0, 1, v14);
        v57 = v55;
        v19 = v54;
        OrderedDictionary.subscript.setter(v57, v98, v99);
      }

      else
      {
        v60 = v76;
        (*v73)(v76, v19, v14);
        v61 = swift_getWitnessTable();
        Inhabited<>.append(_:)(v26, v14, v61, v62);
        v63 = v98;
        (*v82)(v98, v100, a4);
        v64 = v89;
        (*v72)(v89, v60, v14);
        (*v81)(v64, 0, 1, v14);
        OrderedDictionary.subscript.setter(v64, v63, v99);
        (*v71)(v60, v14);
        v46 = a4;
        v47 = v93;
      }

      (*v80)(v26, v47);
      (*v79)(v100, v46);
      v32 = v85;
      (*v78)(v85, v41);
      v58 = v94;
      sub_25F305CDC();
      a4 = v46;
      if (v86(v58, 1, v41) == 1)
      {
        break;
      }

      v84(v32, v58, v41);
    }
  }

  (*(v67 + 8))(v96, v97);
  result = *&v101;
  *v68 = v101;
  return result;
}

uint64_t Coiteration.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = *(a1 + 24);
  v26 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v6 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v23 - v10;
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  (*(v12 + 16))(v14, v3, v11);
  sub_25F3050DC();
  (*(v26 + 16))(v8, v3 + *(a1 + 52), v5);
  v18 = v24;
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = AssociatedTypeWitness;
  v21 = swift_getAssociatedConformanceWitness();
  return sub_25F2E73D4(v17, v18, v15, v20, AssociatedConformanceWitness, v21, type metadata accessor for Coiterator, v28);
}

uint64_t sub_25F2E73D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void *)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = a7(0, v17);
  return (*(*(a4 - 8) + 32))(a8 + *(v15 + 52), a2, a4);
}

uint64_t sub_25F2E74AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(v3 + 40);
  swift_getAtKeyPath();
  return (*(*(*(v6 + *MEMORY[0x277D84DE8]) - 8) + 16))(a2, a3);
}

uint64_t sub_25F2E7558@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 56);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v8(a3, a3 + *(TupleTypeMetadata2 + 48), a1);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_25F2E75D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Coiteration.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t Coiterator.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v19 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_25F305C1C();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  sub_25F305CDC();
  sub_25F305CDC();
  if ((*(*(v5 - 8) + 48))(v9, 1, v5) == 1 && (*(*(AssociatedTypeWitness - 8) + 48))(v4, 1) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v10 = v21;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v22, 1, 1, TupleTypeMetadata2);
    v12 = v20;
  }

  else
  {
    v10 = v21;
    v13 = swift_getTupleTypeMetadata2();
    v14 = *(v13 + 48);
    v15 = v22;
    (*(v7 + 32))(v22, v9, v6);
    v12 = v20;
    (*(v20 + 16))(v15 + v14, v4, v10);
    (*(*(v13 - 8) + 56))(v15, 0, 1, v13);
  }

  return (*(v12 + 8))(v4, v10);
}

uint64_t Sequence.stableSorted(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_25F3062EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-v11];
  MEMORY[0x25F8D72E0](a3, a4);
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v26 = a2;
  swift_getWitnessTable();
  v13 = v12;
  v14 = sub_25F3051AC();
  if (v4)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v15 = v14;
    v16 = (*(v10 + 8))(v12, v9);
    v27 = v15;
    MEMORY[0x28223BE20](v16);
    *&v22[-16] = a3;
    *&v22[-8] = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v18 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    v13 = sub_25F1C1AC4(sub_25F2E7F0C, &v22[-32], v18, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);
  }

  return v13;
}

BOOL sub_25F2E7C00(char *a1, char *a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = a3(&a1[v10], &a2[v10]);
  if (!v6)
  {
    return (v11 & 1) != 0 || (a3(&a2[v10], &a1[v10]) & 1) == 0 && *a1 < *a2;
  }

  return v12;
}

uint64_t sub_25F2E7CE4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a4, &v9[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
}

uint64_t sub_25F2E7E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(v3 + 40);
  swift_getAtKeyPath();
  v7 = *(*(*(v6 + *MEMORY[0x277D84DE8]) - 8) + 16);

  return v7(a2, a3);
}

uint64_t Weak.__allocating_init(_:)(uint64_t a1)
{
  v1 = sub_25F2E8318(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t Weak.init(_:)(uint64_t a1)
{
  v1 = sub_25F2E82C0(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t Weak.hash(into:)()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x25F8D88E0]();
  }

  MEMORY[0x25F8D88E0]();
  return swift_unknownObjectRelease();
}

BOOL static Weak.== infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t Weak.__deallocating_deinit()
{
  MEMORY[0x25F8D9600](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Weak.hashValue.getter()
{
  sub_25F30671C();
  Weak.hash(into:)();
  return sub_25F30676C();
}

uint64_t sub_25F2E825C(uint64_t a1)
{
  sub_25F30671C();
  Weak.hash(into:)();
  return sub_25F30676C();
}

uint64_t sub_25F2E82C0(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t AnyEquatable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyEquatableBoxImpl(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = sub_25F2E8510(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t sub_25F2E8510(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

uint64_t sub_25F2E8718(uint64_t a1)
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

uint64_t sub_25F2E87F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyEquatableBoxImpl(0, *(*v4 + 104), *(*v4 + 112), a4);
  result = swift_dynamicCastClass();
  if (result)
  {

    v6 = sub_25F304DCC();

    return v6 & 1;
  }

  return result;
}

uint64_t sub_25F2E88F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

uint64_t sub_25F2E89E0()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Actor.makeIsolatedTask(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_25F30546C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a4;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;
  v13[8] = v4;
  swift_unknownObjectRetain_n();

  return sub_25F1B1524(0, 0, v11, &unk_25F315E20, v13);
}

uint64_t sub_25F2E8C0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_25F1AFDB0;

  return v10(a6);
}

uint64_t sub_25F2E8D10(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD000000000000013, 0x800000025F31BA70);
  sub_25F30653C();
  v5 = MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v6 = a2(v5);
  MEMORY[0x25F8D7130](v6);

  return 0;
}

uint64_t sub_25F2E8DE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1AFDB0;

  return sub_25F2E8C0C(a1, v4, v5, v6, v7, v8);
}

uint64_t JITError.additionalLinkErrorInformation.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t JITError.lowValueTitle.getter()
{
  if (*(*v0 + 16))
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0;
  }
}

unint64_t JITError.additionalDiagnostics.getter()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  sub_25F305FAC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v1 = sub_25F304CAC();
  v3 = v2;

  MEMORY[0x25F8D7130](v1, v3);

  return 0xD00000000000001DLL;
}

unint64_t sub_25F2E9054()
{
  if (*(*v0 + 16))
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0;
  }
}

uint64_t HumanReadableError.isJITRelated.getter(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  while (1)
  {
    v6 = v28;
    if (!v28)
    {
      goto LABEL_2;
    }

    v7 = v29;
    v8 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v9 = *(v6 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    HumanReadableError.unwrapped.getter(v6, v7, &v24);
    (*(v9 + 8))(v11, v6);
    v12 = *(&v25 + 1);
    v13 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    (*(v13 + 56))(&v22, v12, v13);
    v14 = v22;
    LOBYTE(v7) = v23;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if ((v7 & 1) == 0 && (v14 & 0x40) != 0)
    {
      break;
    }

    v15 = v28;
    if (v28)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v27, v28);
      v17 = *(v15 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v19);
      v20 = HumanReadableError.underlying.getter(v15, &v24);
      (*(v17 + 8))(v19, v15, v20);
      goto LABEL_3;
    }

LABEL_2:
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
LABEL_3:
    sub_25F2E9354(&v24, v27);
    sub_25F2E93C4(v27, &v24);
    v5 = *(&v25 + 1);
    sub_25F2E9434(&v24);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v5 = 1;
LABEL_10:
  sub_25F2E9434(v27);
  return v5;
}

uint64_t sub_25F2E9354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54840, &unk_25F30BAD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2E93C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54840, &unk_25F30BAD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2E9434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54840, &unk_25F30BAD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F2E94AC(uint64_t a1)
{
  *(a1 + 8) = sub_25F2E94DC();
  result = sub_25F2E9530();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F2E94DC()
{
  result = qword_27FD58A90;
  if (!qword_27FD58A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58A90);
  }

  return result;
}

unint64_t sub_25F2E9530()
{
  result = qword_27FD58A98;
  if (!qword_27FD58A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58A98);
  }

  return result;
}

unint64_t sub_25F2E9588()
{
  result = qword_27FD58AA0;
  if (!qword_27FD58AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58AA0);
  }

  return result;
}

uint64_t sub_25F2E95EC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v4 + 80);
  v8 = type metadata accessor for Future.Activity(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v25[-1] - v10);
  v12 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v12;
  *(v5 + 48) = a1[2];
  *(v5 + 57) = *(a1 + 41);
  *(v5 + 80) = mach_absolute_time();
  type metadata accessor for FutureTermination(255, v7, v13, v14);
  swift_getFunctionTypeMetadata1();
  *v11 = sub_25F3052DC();
  swift_storeEnumTagMultiPayload();
  v15 = sub_25F203E0C(v11, v8);
  (*(v9 + 8))(v11, v8);
  *(v5 + 88) = v15;
  v26 = 0;
  type metadata accessor for Future(255, v7, v16, v17);
  v18 = sub_25F305C1C();
  v19 = sub_25F203E0C(&v26, v18);
  *(v5 + 96) = v19;
  v25[1] = v19;
  v24 = v7;
  KeyPath = swift_getKeyPath();
  v25[0] = v5;
  v21 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, v25, v21, WitnessTable);

  return v5;
}

uint64_t Future.deinit()
{

  return v0;
}

uint64_t sub_25F2E9840@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Future.Activity(0, *(*v3 + 80), a1, a2);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v19 = v3[11];
  *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v13 + 1) = 118;
  v14 = 2;
  v15 = xmmword_25F315F60;
  v16 = "recentStateSnapshot";
  v17 = 19;
  v18 = 2;
  v9 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v13, v9, WitnessTable);
  sub_25F2EA450(v5, a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F2E99C4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for FutureState(0, *(*v3 + 80), a1, a2);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_25F2E9840(v9, v10, &v14 - v7);
  FutureState.succeededValue.getter(v5, a3, v11, v12);
  return (*(v6 + 8))(v8, v5);
}

BOOL sub_25F2E9AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FutureState(0, *(*v4 + 80), a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_25F2E9840(v9, v10, &v16 - v7);
  v14 = FutureState.isCanceled.getter(v5, v11, v12, v13);
  (*(v6 + 8))(v8, v5);
  return v14;
}

BOOL sub_25F2E9B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FutureState(0, *(*v4 + 80), a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_25F2E9840(v9, v10, &v16 - v7);
  v14 = FutureState.failedError.getter(v5, v11, v12, v13);
  (*(v6 + 8))(v8, v5);
  if (v14)
  {
  }

  return v14 != 0;
}

uint64_t sub_25F2E9C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v18 = v4[11];
  *&v12 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v12 + 1) = 118;
  v13 = 2;
  v14 = xmmword_25F315F70;
  v15 = "runningTime";
  v16 = 11;
  v17 = 2;
  v11 = *(v5 + 80);
  type metadata accessor for Future.Activity(255, v11, a3, a4);
  v6 = sub_25F30476C();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58AA8, &qword_25F315FC0);
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncRead<A>(defaultCallsite:_:)(&v12, sub_25F2EA7C0, &v10, v6, v7, WitnessTable);
}

uint64_t sub_25F2E9DB4(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for FutureTermination(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v25 = &v24 - v9;
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v38 = v4[11];
  *&v32 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v32 + 1) = 118;
  v33 = 2;
  v34 = xmmword_25F315F80;
  v35 = "_observeFinish(_:)";
  v36 = 18;
  v37 = 2;
  v29 = v6;
  v30 = a1;
  v26 = a1;
  v31 = v27;
  type metadata accessor for Future.Activity(255, v6, v17, v18);
  v19 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v32, sub_25F2ED7D0, v28, v19, v10, WitnessTable);

  (*(v11 + 16))(v14, v16, v10);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v21 = *(v11 + 8);
    v21(v16, v10);
    return (v21)(v14, v10);
  }

  else
  {
    v23 = v25;
    (*(v8 + 32))(v25, v14, v7);
    v26(v23);
    (*(v8 + 8))(v23, v7);
    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_25F2EA104(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[10];
  v6 = mach_absolute_time();
  v33 = v2[11];
  *&v27 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v27 + 1) = 118;
  v28 = 2;
  v29 = xmmword_25F315F90;
  v30 = "didFinish(_:)";
  v31 = 13;
  v32 = 2;
  v7 = *(v4 + 80);
  v23 = v7;
  v24 = a1;
  v25 = v5;
  v26 = v6;
  type metadata accessor for Future.Activity(255, v7, v8, v9);
  v10 = sub_25F30476C();
  type metadata accessor for FutureTermination(255, v7, v11, v12);
  swift_getFunctionTypeMetadata1();
  sub_25F30539C();
  v13 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v27, sub_25F2ED494, v22, v10, v13, WitnessTable);

  if (v34)
  {
    *&v27 = v34;
    MEMORY[0x28223BE20](v15);
    swift_getWitnessTable();
    sub_25F3051BC();
  }

  v34 = v2[12];
  MEMORY[0x28223BE20](v15);
  KeyPath = swift_getKeyPath();
  v33 = 0;
  type metadata accessor for Future(255, v7, v17, v18);
  sub_25F305C1C();
  v19 = sub_25F30476C();

  v20 = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, &v33, v19, v20);
}

uint64_t Future<A>.init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, __int128 a11, uint64_t a13, uint64_t a14)
{
  v13 = sub_25F2ECDC4(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a13, a14);

  return v13;
}

uint64_t sub_25F2EA450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for FutureTermination(0, *(a1 + 16), v7, v8);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v6, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    v14 = type metadata accessor for FutureTermination(0, *(a1 + 16), v12, v13);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

__n128 Future.initializationCallsite.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

uint64_t sub_25F2EA638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for Future.Activity(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - v10;
  (*(v9 + 16))(v16 - v10, a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for FutureTermination(255, a2, v12, v13);
    *a5 = *&v11[*(swift_getTupleTypeMetadata2() + 48)];
    *(a5 + 16) = 0;
    return (*(*(v14 - 8) + 8))(v11, v14);
  }

  else
  {
    result = (*(v9 + 8))(v11, v8);
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
  }

  return result;
}

uint64_t sub_25F2EA7DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Future.Activity(0, a4, a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v23 - v12);
  (*(v11 + 16))(v23 - v12, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for FutureTermination(0, a4, v14, v15);
    v17 = *(v16 - 8);
    (*(v17 + 32))(a5, v13, v16);
    return (*(v17 + 56))(a5, 0, 1, v16);
  }

  else
  {
    (*(v11 + 8))(a1, v10);
    v24 = *v13;
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a2;
    v19[4] = a3;
    v23[0] = sub_25F2BD03C;
    v23[1] = v19;
    type metadata accessor for FutureTermination(255, a4, v20, v21);
    swift_getFunctionTypeMetadata1();
    sub_25F30539C();

    sub_25F30533C();
    *a1 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = swift_checkMetadataState();
    return (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
  }
}

uint64_t sub_25F2EAA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for Future.Activity(0, a5, a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v23 - v14);
  (*(v13 + 16))(v23 - v14, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 8))(v15, v12);
    v23[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
    v23[1] = 118;
    v24 = 2;
    *v25 = *v30;
    *&v25[3] = *&v30[3];
    v26 = xmmword_25F314AB0;
    v27 = "didFinish(_:)";
    v28 = 13;
    v29 = 2;
    result = sub_25F213F98(v23);
    v17 = 0;
  }

  else
  {
    (*(v13 + 8))(a1, v12);
    v17 = *v15;
    v20 = type metadata accessor for FutureTermination(255, a5, v18, v19);
    v21 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v20 - 8) + 16))(a1, a2, v20);
    *v21 = a3;
    v21[1] = a4;
    result = swift_storeEnumTagMultiPayload();
  }

  *a6 = v17;
  return result;
}

uint64_t Future.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t Future<A>.termination.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_25F2EAD6C, 0, 0);
}

uint64_t sub_25F2EAD6C()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v5 = type metadata accessor for FutureTermination(0, *(v1 + 80), v3, v4);
  *v2 = v0;
  v2[1] = sub_25F2EAE50;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x2822007B8](v6, 0, 0, 0x74616E696D726574, 0xEB000000006E6F69, sub_25F2ECE44, v7, v5);
}

uint64_t sub_25F2EAE50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F2EAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a2 + 80);
  v5 = sub_25F2EAFE8(a1, v4, a3, a4);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v7;
  Future.observeFinish(_:)(sub_25F2ED54C, v8);
}

uint64_t (*sub_25F2EAFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FutureTermination(255, a2, a3, a4);
  v6 = sub_25F30542C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v7 + 32))(v11 + v10, v9, v6);
  return sub_25F2ED558;
}

uint64_t sub_25F2EB138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F2ED5F8(a1, a2, a3, a4);
  v8 = type metadata accessor for FutureTermination(0, a3, v6, v7);
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

uint64_t sub_25F2EB1A8(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FutureTermination(0, a4, a3, a4);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return a2(v8);
}

uint64_t Future<A>.result.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v6 = *(*v4 + 80);
  v5[3] = v6;
  v5[4] = type metadata accessor for FutureTermination(0, v6, a3, a4);
  v7 = swift_task_alloc();
  v5[5] = v7;
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_25F2EB35C;

  return Future<A>.termination.getter(v7);
}

uint64_t sub_25F2EB35C()
{

  return MEMORY[0x2822009F8](sub_25F2EB458, 0, 0);
}

uint64_t sub_25F2EB458()
{
  v1 = v0[5];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(*(v0[3] - 8) + 32))(v0[2], v1, v0[3]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *v0[2] = *v1;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
LABEL_5:
    swift_storeEnumTagMultiPayload();

    v3 = v0[1];
    goto LABEL_7;
  }

  v6 = *v1;
  v7 = v1[1];
  *v8 = v1[2];
  *&v8[9] = *(v1 + 41);
  sub_25F2DD890();
  swift_allocError();
  *(v4 + 41) = *&v8[9];
  *(v4 + 16) = v7;
  *(v4 + 32) = *v8;
  *v4 = v6;
  *(v4 + 64) = MEMORY[0x277D84F90];
  swift_willThrow();

  v3 = v0[1];
LABEL_7:

  return v3();
}

uint64_t Future<A>.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_25F2EB65C, 0, 0);
}

uint64_t sub_25F2EB65C()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_25F2EB730;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x282200830](v4, &unk_25F315FF0, v5, sub_25F2ECEE8, v5, 0, 0, v3);
}

uint64_t sub_25F2EB730()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F2996E4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F2EB864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v5 = *(*a2 + 80);
  v4[3] = v5;
  v4[4] = type metadata accessor for FutureTermination(0, v5, a3, a4);
  v6 = swift_task_alloc();
  v4[5] = v6;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_25F2EB94C;

  return Future<A>.termination.getter(v6);
}

uint64_t sub_25F2EB94C()
{

  return MEMORY[0x2822009F8](sub_25F2EBA48, 0, 0);
}

uint64_t sub_25F2EBA48()
{
  v1 = v0[5];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v6 = *v1;
      v7 = v1[1];
      *v8 = v1[2];
      *&v8[9] = *(v1 + 41);
      sub_25F2DD890();
      swift_allocError();
      *(v4 + 41) = *&v8[9];
      *(v4 + 16) = v7;
      *(v4 + 32) = *v8;
      *v4 = v6;
      *(v4 + 64) = MEMORY[0x277D84F90];
    }

    swift_willThrow();

    v3 = v0[1];
  }

  else
  {
    (*(*(v0[3] - 8) + 32))(v0[2], v1);

    v3 = v0[1];
  }

  return v3();
}

uint64_t Task<>.future.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  type metadata accessor for Future(0, a2, v7, v8);
  v9 = sub_25F30546C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;

  *&v20 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v20 + 1) = 118;
  v21 = 2;
  v22 = xmmword_25F315FA0;
  v23 = "future";
  v24 = 6;
  v25 = 2;
  v15 = v6;
  v16 = &unk_25F316008;
  v17 = v10;
  v18 = nullsub_2;
  v19 = v11;
  v12 = sub_25F1D6C6C(&v20, sub_25F2ED6E4, v14);
  sub_25F1B47B0(v6);

  return v12;
}

uint64_t sub_25F2EBD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  *v7 = v3;
  v7[1] = sub_25F1AFDB0;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, a3, v8, v9);
}

void sub_25F2EBE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_25F1B4740(a2, &v17 - v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a5;
  v15[8] = a6;

  v16 = sub_25F1B1524(0, 0, v14, &unk_25F3160E0, v15);
  v17 = 0uLL;

  Promise.observeCancelation(on:_:)(&v17, sub_25F29FE88, v16);

  sub_25F2033DC(v17);
}

uint64_t sub_25F2EBF64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[22] = a6;
  v10 = *a6;
  v11 = sub_25F30543C();
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();
  v12 = *(v10 + 80);
  v8[28] = v12;
  v13 = *(v12 - 8);
  v8[29] = v13;
  v8[30] = *(v13 + 64);
  v8[31] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[32] = v14;
  v17 = (a4 + *a4);
  v15 = swift_task_alloc();
  v8[33] = v15;
  *v15 = v8;
  v15[1] = sub_25F2EC150;

  return v17(v14);
}

uint64_t sub_25F2EC150()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_25F2EC3D4;
  }

  else
  {
    v2 = sub_25F2EC264;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F2EC264()
{
  v12 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[28];
  v6 = v0[23];
  v5 = v0[24];
  Promise.succeed(with:)(v1);
  (*(v3 + 16))(v2, v1, v4);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = v4;
  *(v8 + 3) = v6;
  *(v8 + 4) = v5;
  (*(v3 + 32))(&v8[v7], v2, v4);
  v11 = 0uLL;

  Promise.observeCancelation(on:_:)(&v11, sub_25F2C88D8, v8);

  sub_25F2033DC(v11);
  (*(v3 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F2EC3D4()
{
  v18 = v0;
  v1 = *(v0 + 272);
  *(v0 + 160) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  if (swift_dynamicCast())
  {
    v7 = *v2;
    *(v0 + 104) = *(v0 + 32);
    v8 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 48);
    *(v0 + 136) = *(v0 + 64);
    *(v0 + 88) = *v2;
    v9 = *(v0 + 272);
    *(v0 + 152) = *(v0 + 80);
    v16[0] = v7;
    v16[1] = v8;
    v17[0] = *(v0 + 48);
    *(v17 + 9) = *(v0 + 57);
    Promise.cancel(callsite:)(v16, v4, v5, v6);

    sub_25F278DD0(v0 + 88);
  }

  else
  {
    v10 = *(v0 + 272);
    *(v0 + 168) = v10;
    v11 = v10;
    v12 = swift_dynamicCast();
    v13 = *(v0 + 272);
    if (v12)
    {
      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      sub_25F1D8FB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift", 118, 2, 285, 39, "init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)", 82, 2);
    }

    else
    {
      Promise.fail(with:)(*(v0 + 272));
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t Future<A>.init(dsoHandle:file:line:column:function:priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = a7;
  v25 = a8;
  v22 = a5;
  v23 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  sub_25F1B4740(a10, &v22 - v17);
  v19 = swift_allocObject();
  *(v19 + 16) = *(v12 + 80);
  *&v32 = a2;
  *(&v32 + 1) = a3;
  v33 = a4;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = a9;
  v27 = v18;
  v28 = a11;
  v29 = a12;
  v30 = nullsub_2;
  v31 = v19;
  v20 = sub_25F1D6C6C(&v32, sub_25F2ED6E4, v26);
  sub_25F1B47B0(v18);

  sub_25F1B47B0(a10);
  return v20;
}

uint64_t Sequence.select<A>(file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD58AB0, &qword_25F316010);
  v13 = swift_allocObject();
  *(v13 + 20) = 0;
  *(v13 + 16) = 0;
  type metadata accessor for Future(0, a5, v14, v15);
  v19 = a4;
  v20 = a6;
  v21 = v6;
  v22 = v13;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v16 = sub_25F1D8E58("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift", 118, 2, 329, 23, "select(file:line:)", 18, 2, sub_25F2ED028, v18);

  return v16;
}

void sub_25F2EC810(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a6;
  v31 = a5;
  v28[1] = *a1;
  v29 = a4;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = v28 - v18;
  (*(v13 + 16))(v15, a2, a7);
  sub_25F3050DC();
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  if (v32)
  {
    v31 = v17;
    do
    {
      v20 = swift_allocObject();
      v20[2] = a7;
      v20[3] = a8;
      v20[4] = a3;
      v20[5] = a1;

      Future.observeFinish(_:)(sub_25F2ED540, v20);

      sub_25F305CDC();
    }

    while (v32);
    (*(v31 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    (*(v17 + 8))(v19, AssociatedTypeWitness);
    v21 = sub_25F30685C();
    v23 = v22;
    sub_25F2ED4EC();
    v24 = swift_allocError();
    *v25 = v21;
    v25[1] = v23;
    v26 = v30;
    v27 = v31;
    v25[2] = v29;
    v25[3] = v27;
    v25[4] = v26;

    Promise.fail(with:)(v24);
  }
}

void sub_25F2ECB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v21 - v7;
  v11 = type metadata accessor for FutureTermination(0, v5, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  os_unfair_lock_lock((a2 + 20));
  if (*(a2 + 16))
  {

    os_unfair_lock_unlock((a2 + 20));
  }

  else
  {
    *(a2 + 16) = 1;
    os_unfair_lock_unlock((a2 + 20));
    (*(v12 + 16))(v14, a1, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v19 = *v14;
        Promise.fail(with:)(*v14);
      }

      else
      {
        v20 = *(v14 + 1);
        v21[0] = *v14;
        v21[1] = v20;
        v22[0] = *(v14 + 2);
        *(v22 + 9) = *(v14 + 41);
        Promise.cancel(callsite:)(v21, v16, v17, v18);
      }
    }

    else
    {
      (*(v6 + 32))(v8, v14, v5);
      Promise.succeed(with:)(v8);
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_25F2ECD6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  return (*(*v8 + 192))(v10);
}

uint64_t sub_25F2ECDC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  *&v18 = a1;
  *(&v18 + 1) = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v14[2] = a9;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  v12 = sub_25F1D6C6C(&v18, sub_25F2ED6E4, v14);
  sub_25F1B47B0(a9);
  return v12;
}

uint64_t sub_25F2ECE4C(uint64_t a1)
{
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F1AFDB0;

  return sub_25F2EB864(a1, v1, v4, v5);
}

uint64_t sub_25F2ECEE8()
{
  v2[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  v2[1] = 118;
  v3 = 2;
  v4 = xmmword_25F315FB0;
  v5 = "value";
  v6 = 5;
  v7 = 2;
  return (*(*v0 + 192))(v2);
}

uint64_t sub_25F2ECF7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F1B51E0;

  return sub_25F2EBD3C(a1, v4, v5);
}

uint64_t sub_25F2ED194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FutureTermination(255, *(a1 + 16), a3, a4);
  swift_getFunctionTypeMetadata1();
  result = sub_25F30539C();
  if (v5 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2ED24C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x39)
  {
    v3 = 57;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
  }

  v5 = v4 | 1;
  if ((v4 | 1) <= 3)
  {
    v6 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v7 = 1;
  }

  if (v6 >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = *&a1[v5];
      if (*&a1[v5])
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = *&a1[v5];
      if (v9)
      {
        goto LABEL_25;
      }
    }

LABEL_29:
    v13 = a1[v4];
    if (v13 >= 2)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = a1[v5];
  if (!a1[v5])
  {
    goto LABEL_29;
  }

LABEL_25:
  v11 = (v9 - 1) << (8 * v5);
  if (v5 <= 3)
  {
    v12 = *a1;
  }

  else
  {
    v11 = 0;
    v12 = *a1;
  }

  return (v12 | v11) + 255;
}

void sub_25F2ED340(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x39)
  {
    v5 = 57;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = v6 | 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_18;
    }

LABEL_26:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      *&a1[v7] = 0;
    }

    else if (v10)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_36:
      a1[v6] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v7 <= 3)
  {
    v8 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_26;
  }

LABEL_18:
  v11 = a2 - 255;
  v12 = (a2 - 255) >> 8;
  bzero(a1, v6 | 1);
  if (v7 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v7 <= 3)
  {
    *a1 = v11;
    if (v10 > 1)
    {
LABEL_23:
      if (v10 == 2)
      {
        *&a1[v7] = v13;
      }

      else
      {
        *&a1[v7] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_23;
    }
  }

  if (v10)
  {
    a1[v7] = v13;
  }
}

unint64_t sub_25F2ED4EC()
{
  result = qword_27FD58BB8[0];
  if (!qword_27FD58BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD58BB8);
  }

  return result;
}

uint64_t sub_25F2ED558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  type metadata accessor for FutureTermination(255, v6, a3, a4);
  v8 = *(sub_25F30542C() - 8);
  v9 = v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return sub_25F2EB138(a1, v9, v6, v7);
}

uint64_t sub_25F2ED5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FutureTermination(0, a3, a3, a4);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v9 - v6, a1, v5);
  sub_25F30542C();
  return sub_25F30541C();
}

uint64_t sub_25F2ED6F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F1AFDB0;

  return sub_25F2EBF64(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t WeakSet.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for Weak(0, a1, a2, a3);
  v6 = sub_25F3052DC();
  if (sub_25F30531C())
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_25F2EE1A8(v6, v5, WitnessTable);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  *a4 = v8;
  return result;
}

uint64_t WeakSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v9 = type metadata accessor for Weak(0, a2, a3, a4);
  v16[6] = sub_25F2E3888(sub_25F24928C, v16, a3, v9, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v10);
  v11 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = Collection<>.uniqued()(v11, WitnessTable, v13);
  (*(*(a3 - 1) + 8))(a1, a3);

  *a5 = v14;
  return result;
}

uint64_t WeakSet.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a1;
  v5 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  result = WeakSet.init<A>(_:)(&v8, a2, v5, WitnessTable, &v9);
  *a3 = v9;
  return result;
}

uint64_t WeakSet.array.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(255, *(a1 + 16), a3, a4);

  swift_getWitnessTable();
  sub_25F3056FC();
  swift_getWitnessTable();
  v4 = sub_25F30511C();

  return v4;
}

uint64_t sub_25F2EDB7C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for Weak(0, *(a1 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable();
  return a2(v6, v7, WitnessTable);
}

uint64_t WeakSet.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, *(a4 + 16), a3, a4);
  swift_getWitnessTable();
  return sub_25F30566C();
}

uint64_t WeakSet.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, *(a4 + 16), a3, a4);
  swift_getWitnessTable();
  sub_25F30571C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t WeakSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, *(a2 + 16), a3, a4);
  sub_25F2E8318(a1);
  swift_getWitnessTable();
  sub_25F3056FC();
  sub_25F30568C();
}

uint64_t WeakSet.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, *(a2 + 16), a3, a4);
  sub_25F2E8318(a1);
  swift_getWitnessTable();
  sub_25F3056FC();
  sub_25F30569C();
}

uint64_t sub_25F2EDEA8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void (*sub_25F2EDEDC(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_25F2EDF6C(v6, *a2, *(a2 + 8), *(a2 + 16), a3);
  v7[4] = v9;
  v7[5] = v8;
  return sub_25F2490BC;
}

uint64_t (*sub_25F2EDF6C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5))(uint64_t a1)
{
  *a1 = *v5;
  a1[1] = WeakSet.subscript.getter(a2, a3, a4 & 1, a5);
  return sub_25F24915C;
}

uint64_t sub_25F2EDFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = WeakSet.index(after:)(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_25F2EE010(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = WeakSet.index(after:)(*a1, v4, v5, a2);
  v8 = v7;
  v10 = v9;
  result = sub_25F1AC3CC(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  return result;
}

uint64_t sub_25F2EE08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;

  v8 = WeakSet.startIndex.getter(a1, v5, v6, v7);
  v10 = v9;
  v12 = v11;

  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12 & 1;
  return result;
}

uint64_t sub_25F2EE0F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2EE14C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_25F2EE1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_25F30531C())
  {
    sub_25F305F4C();
    v15 = sub_25F305F3C();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_25F30531C();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_25F3052FC();
    sub_25F30528C();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_25F30601C();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_25F304BCC();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_25F304DCC();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25F2EE59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void CrashReportError.ConditionInFileError.init(report:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for CrashReportError.ConditionInFileError(0);
  v138 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = 0;
  v137 = v6;
  v6[8] = 1;
  v7 = type metadata accessor for CrashReport(0);
  v8 = *(v7 + 36);
  v139 = a1;
  v9 = *(a1 + v8);
  if (!v9)
  {
LABEL_70:
    sub_25F1AF760(v139);
    v115 = 1;
    goto LABEL_119;
  }

  v135 = v7;
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = ((v11 + 63) >> 6);
  v144 = v9;
  swift_bridgeObjectRetain_n();
  v15 = v14;
  v16 = v10;
  v17 = 0;
  v18 = 0x27FD52000uLL;
  v19 = &unk_27FD58000;
  v136 = MEMORY[0x277D84F90];
  v142 = a2;
  v143 = v4;
  v141 = v10;
  v140 = v14;
LABEL_5:
  v20 = v17;
  if (!v13)
  {
    goto LABEL_7;
  }

  do
  {
    v21 = v20;
LABEL_10:
    v22 = *(v144 + 56);
    v147 = v21;
    v23 = *(v22 + ((v21 << 9) | (8 * __clz(__rbit64(v13)))));
    v14 = *(v23 + 16);

    if (!v14)
    {
      v26 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v24 = 0;
    v25 = v23 + 40;
    v145 = v14 - 1;
    v26 = MEMORY[0x277D84F90];
    v149 = v23;
    v150 = v13;
    v151 = v14;
    v146 = v23 + 40;
    do
    {
      v148 = v26;
      v27 = v25 + 16 * v24;
      a2 = v24;
      while (1)
      {
        if (a2 >= *(v23 + 16))
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:

          v131 = 0;
          v130 = 1;
          a2 = v142;
          v4 = v143;
          goto LABEL_118;
        }

        v28 = sub_25F304DDC();
        if (*(v18 + 2472) != -1)
        {
          break;
        }

        v29 = v19[392];
        if (v29)
        {
          goto LABEL_18;
        }

LABEL_13:

LABEL_14:
        ++a2;

        v27 += 16;
        if (v14 == a2)
        {
          v26 = v148;
          goto LABEL_41;
        }
      }

      v157 = v28;
      swift_once();
      v28 = v157;
      v29 = v19[392];
      if (!v29)
      {
        goto LABEL_13;
      }

LABEL_18:
      v157 = v28;
      v30 = v29;
      v31 = sub_25F304DDC();
      v32 = [v30 firstMatchInString:v31 options:0 range:{0, sub_25F304F2C()}];

      if (!v32)
      {

        v14 = v151;
        goto LABEL_14;
      }

      v152 = v30;
      v33 = sub_25F304DDC();
      v155 = v32;
      v34 = [v32 rangeWithName_];
      v36 = v35;

      if (v36 <= 0)
      {
        v153 = 0;
        v154 = 0;
      }

      else
      {
        v37 = [v157 substringWithRange_];
        v38 = sub_25F304E0C();
        v40 = v39;

        v158 = v38;
        v159 = v40;
        v153 = sub_25F3050BC();
        v154 = v41;
      }

      v42 = sub_25F304DDC();
      v43 = [v155 rangeWithName_];
      v45 = v44;

      v46 = [v157 substringWithRange_];
      v47 = sub_25F304E0C();
      v49 = v48;

      v158 = v47;
      v159 = v49;
      sub_25F3050BC();
      v50 = sub_25F304BFC();
      v52 = v51;

      if (v154)
      {
        v53 = sub_25F304BFC();
        v55 = v54;
      }

      else
      {
        v55 = 0;
        v53 = v153;
      }

      v56 = off_28715BC88;
      v158 = v50;
      v159 = v52;
      v162 = v53;
      v163 = v55;
      v156 = *&qword_28715BC90;
      swift_retain_n();

      (v56)(&v162, &v161);

      if ((v161 & 1) == 0)
      {

        v57 = off_28715BCA8;
        v158 = v50;
        v159 = v52;
        v162 = v53;
        v163 = v55;
        v156 = *&qword_28715BCB0;
        swift_retain_n();

        (v57)(&v161);

        if ((v161 & 1) == 0)
        {

          v58 = off_28715BCC8;
          v158 = v50;
          v159 = v52;
          v162 = v53;
          v163 = v55;
          v156 = *&qword_28715BCD0;
          swift_retain_n();

          (v58)(&v161);

          if ((v161 & 1) == 0)
          {

            v59 = off_28715BCE8;
            v158 = v50;
            v159 = v52;
            v162 = v53;
            v163 = v55;
            v156 = *&qword_28715BCF0;
            swift_retain_n();

            (v59)(&v161);

            if ((v161 & 1) == 0)
            {

              v23 = v149;
              v13 = v150;
              v18 = 0x27FD52000;
              v19 = &unk_27FD58000;
              v14 = v151;
              goto LABEL_14;
            }
          }
        }
      }

      v13 = v150;
      v60 = v152;
      v61 = v154;

      v162 = v153;
      v163 = v61;
      (*(&v156 + 1))(&v158, &v162);

      v62 = v158;
      v63 = v159;
      v64 = v160;
      v65 = v148;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_25F2EFD74(0, v65[2] + 1, 1, v65);
      }

      v67 = v65[2];
      v66 = v65[3];
      v68 = v65;
      v23 = v149;
      if (v67 >= v66 >> 1)
      {
        v68 = sub_25F2EFD74((v66 > 1), v67 + 1, 1, v65);
      }

      v24 = a2 + 1;
      v26 = v68;
      v68[2] = v67 + 1;
      v69 = &v68[5 * v67];
      v69[4] = v157;
      v69[5] = v62;
      v69[6] = v63;
      *(v69 + 56) = v64;
      v69[8] = v155;
      v25 = v146;
      v18 = 0x27FD52000;
      v19 = &unk_27FD58000;
      v14 = v151;
    }

    while (v145 != a2);
LABEL_41:
    v13 &= v13 - 1;
    if (v26[2])
    {
      v70 = v26[5];
      v14 = v26[6];
      v71 = *(v26 + 56);
      v72 = v26[8];
      v73 = v26[4];
      sub_25F2EFEBC(v70, v14, v71);
      v74 = v72;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a2 = v142;
      v76 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v136 = sub_25F2EFD74(0, v136[2] + 1, 1, v136);
      }

      v16 = v141;
      v15 = v140;
      v78 = v136[2];
      v77 = v136[3];
      if (v78 >= v77 >> 1)
      {
        v81 = sub_25F2EFD74((v77 > 1), v78 + 1, 1, v136);
        v15 = v140;
        v16 = v141;
        v136 = v81;
      }

      v79 = v136;
      v136[2] = v78 + 1;
      v80 = &v79[5 * v78];
      v80[4] = v73;
      v80[5] = v70;
      v80[6] = v14;
      *(v80 + 56) = v71;
      v80[8] = v74;
      v4 = v143;
      v13 = v76;
      v18 = 0x27FD52000;
      v19 = &unk_27FD58000;
      v17 = v147;
      goto LABEL_5;
    }

    v20 = v147;
    a2 = v142;
    v4 = v143;
    v16 = v141;
    v15 = v140;
  }

  while (v13);
  while (1)
  {
LABEL_7:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_121;
    }

    if (v21 >= v15)
    {
      break;
    }

    v13 = *(v16 + 8 * v21);
    ++v20;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  if (!v136[2])
  {

    goto LABEL_70;
  }

  v82 = v136[5];
  v83 = v136[6];
  v84 = v136[8];
  v85 = *(v136 + 56);
  v14 = v136[4];
  sub_25F2EFEBC(v82, v83, v85);
  a2 = v84;

  v86 = (v139 + *(v135 + 20));
  v87 = v86[1];
  v88 = v137;
  *(v137 + 2) = *v86;
  *(v88 + 3) = v87;
  *(v88 + 4) = v82;
  *(v88 + 5) = v83;
  v88[48] = v85;

  v89 = sub_25F304DDC();
  v90 = [a2 rangeWithName_];
  v92 = v91;

  v93 = [v14 substringWithRange_];
  v94 = sub_25F304E0C();
  v96 = v95;

  v158 = v94;
  v159 = v96;
  *(v88 + 7) = sub_25F3050BC();
  *(v88 + 8) = v97;
  v98 = sub_25F304DDC();
  v99 = [a2 rangeWithName_];
  v101 = v100;

  v102 = [v14 substringWithRange_];
  v103 = sub_25F304E0C();
  v105 = v104;

  v106 = HIBYTE(v105) & 0xF;
  v107 = v103 & 0xFFFFFFFFFFFFLL;
  if ((v105 & 0x2000000000000000) != 0)
  {
    v108 = HIBYTE(v105) & 0xF;
  }

  else
  {
    v108 = v103 & 0xFFFFFFFFFFFFLL;
  }

  if (!v108)
  {
    goto LABEL_122;
  }

  v4 = v143;
  if ((v105 & 0x1000000000000000) != 0)
  {
    LOBYTE(v162) = 0;
    v111 = sub_25F2F1970(v103, v105, 10);
    v130 = v133;
    goto LABEL_114;
  }

  if ((v105 & 0x2000000000000000) != 0)
  {
    v158 = v103;
    v159 = v105 & 0xFFFFFFFFFFFFFFLL;
    if (v103 == 43)
    {
      if (!v106)
      {
LABEL_128:
        __break(1u);
        return;
      }

      if (--v106)
      {
        v111 = 0;
        v122 = &v158 + 1;
        while (1)
        {
          v123 = *v122 - 48;
          if (v123 > 9)
          {
            break;
          }

          v124 = 10 * v111;
          if ((v111 * 10) >> 64 != (10 * v111) >> 63)
          {
            break;
          }

          v111 = v124 + v123;
          if (__OFADD__(v124, v123))
          {
            break;
          }

          ++v122;
          if (!--v106)
          {
            goto LABEL_113;
          }
        }
      }
    }

    else if (v103 == 45)
    {
      if (!v106)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      if (--v106)
      {
        v111 = 0;
        v116 = &v158 + 1;
        while (1)
        {
          v117 = *v116 - 48;
          if (v117 > 9)
          {
            break;
          }

          v118 = 10 * v111;
          if ((v111 * 10) >> 64 != (10 * v111) >> 63)
          {
            break;
          }

          v111 = v118 - v117;
          if (__OFSUB__(v118, v117))
          {
            break;
          }

          ++v116;
          if (!--v106)
          {
            goto LABEL_113;
          }
        }
      }
    }

    else if (v106)
    {
      v111 = 0;
      v127 = &v158;
      while (1)
      {
        v128 = *v127 - 48;
        if (v128 > 9)
        {
          break;
        }

        v129 = 10 * v111;
        if ((v111 * 10) >> 64 != (10 * v111) >> 63)
        {
          break;
        }

        v111 = v129 + v128;
        if (__OFADD__(v129, v128))
        {
          break;
        }

        v127 = (v127 + 1);
        if (!--v106)
        {
          goto LABEL_113;
        }
      }
    }

LABEL_112:
    v111 = 0;
    LOBYTE(v106) = 1;
    goto LABEL_113;
  }

  if ((v103 & 0x1000000000000000) != 0)
  {
    v109 = ((v105 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v109 = sub_25F30605C();
  }

  v110 = *v109;
  if (v110 == 43)
  {
    if (v107 < 1)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v106 = v107 - 1;
    if (v107 == 1)
    {
      goto LABEL_112;
    }

    v111 = 0;
    if (!v109)
    {
      goto LABEL_104;
    }

    v119 = v109 + 1;
    while (1)
    {
      v120 = *v119 - 48;
      if (v120 > 9)
      {
        goto LABEL_112;
      }

      v121 = 10 * v111;
      if ((v111 * 10) >> 64 != (10 * v111) >> 63)
      {
        goto LABEL_112;
      }

      v111 = v121 + v120;
      if (__OFADD__(v121, v120))
      {
        goto LABEL_112;
      }

      ++v119;
      if (!--v106)
      {
        goto LABEL_113;
      }
    }
  }

  if (v110 != 45)
  {
    if (!v107)
    {
      goto LABEL_112;
    }

    v111 = 0;
    if (!v109)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v125 = *v109 - 48;
      if (v125 > 9)
      {
        goto LABEL_112;
      }

      v126 = 10 * v111;
      if ((v111 * 10) >> 64 != (10 * v111) >> 63)
      {
        goto LABEL_112;
      }

      v111 = v126 + v125;
      if (__OFADD__(v126, v125))
      {
        goto LABEL_112;
      }

      ++v109;
      if (!--v107)
      {
        goto LABEL_104;
      }
    }
  }

  if (v107 < 1)
  {
    __break(1u);
    goto LABEL_126;
  }

  v106 = v107 - 1;
  if (v107 == 1)
  {
    goto LABEL_112;
  }

  v111 = 0;
  if (v109)
  {
    v112 = v109 + 1;
    while (1)
    {
      v113 = *v112 - 48;
      if (v113 > 9)
      {
        goto LABEL_112;
      }

      v114 = 10 * v111;
      if ((v111 * 10) >> 64 != (10 * v111) >> 63)
      {
        goto LABEL_112;
      }

      v111 = v114 - v113;
      if (__OFSUB__(v114, v113))
      {
        goto LABEL_112;
      }

      ++v112;
      if (!--v106)
      {
        goto LABEL_113;
      }
    }
  }

LABEL_104:
  LOBYTE(v106) = 0;
LABEL_113:
  LOBYTE(v162) = v106;
  v130 = v106;
LABEL_114:

  if (v130)
  {
    v131 = 0;
  }

  else
  {
    v131 = v111;
  }

  a2 = v142;
LABEL_118:
  v132 = v137;
  *(v137 + 9) = v131;
  *(v132 + 80) = v130 & 1;
  sub_25F2F1EFC(v139, v132 + *(v4 + 36), type metadata accessor for CrashReport);
  sub_25F2F1EFC(v132, a2, type metadata accessor for CrashReportError.ConditionInFileError);
  v115 = 0;
LABEL_119:
  (*(v138 + 56))(a2, v115, 1, v4);
}

uint64_t type metadata accessor for CrashReportError.ConditionInFileError(uint64_t a1)
{
  result = qword_27FD58C48;
  if (!qword_27FD58C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.ConditionInFileError.processName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CrashReportError.ConditionInFileError.kind.getter()
{
  v1 = *(v0 + 32);
  sub_25F2EFEBC(v1, *(v0 + 40), *(v0 + 48));
  return v1;
}

uint64_t CrashReportError.ConditionInFileError.file.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CrashReportError.ConditionInFileError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.ConditionInFileError(0) + 36);

  return sub_25F1DF920(v3, a1);
}

unint64_t CrashReportError.ConditionInFileError.highValueTitle.getter()
{
  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) == 2)
    {
      sub_25F305FAC();

      v1 = 0x7245206C61746146;
      goto LABEL_6;
    }

    sub_25F305FAC();

    v2 = 0xD000000000000022;
LABEL_9:
    v4 = v2;
    goto LABEL_10;
  }

  if (*(v0 + 48))
  {
    sub_25F305FAC();

    v2 = 0xD000000000000010;
    goto LABEL_9;
  }

  v1 = 0x6920747265737341;
LABEL_6:
  v4 = v1;
LABEL_10:
  MEMORY[0x25F8D7130](*(v0 + 56), *(v0 + 64));
  return v4;
}

uint64_t CrashReportError.ConditionInFileError.additionalInfo.getter()
{
  sub_25F305FAC();
  v1 = *(v0 + 16);

  v16 = v1;
  MEMORY[0x25F8D7130](0xD000000000000010, 0x800000025F31BBE0);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = 0xE600000000000000;
  v6 = 0x747265737361;
  v7 = 0xEA0000000000726FLL;
  v8 = 0x7272456C61746166;
  if (v4 != 2)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x800000025F31BC00;
  }

  if (*(v0 + 48))
  {
    v6 = 0x69646E6F63657270;
    v5 = 0xEC0000006E6F6974;
  }

  if (*(v0 + 48) <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (*(v0 + 48) <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x25F8D7130](v9, v10);

  MEMORY[0x25F8D7130](544106784, 0xE400000000000000);
  MEMORY[0x25F8D7130](*(v0 + 56), *(v0 + 64));
  if (*(v0 + 80))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v13);

    v11 = 0x656E696C20746120;
    v12 = 0xE900000000000020;
  }

  MEMORY[0x25F8D7130](v11, v12);

  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  if (v4 <= 2 && v3)
  {
    v14 = sub_25F2EFEBC(v2, v3, v4);
    MEMORY[0x25F8D7130](v2, v3, v14);
    sub_25F2F2010(v2, v3, v4);

    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  }

  return v16;
}

id sub_25F2EF934()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000048, 0x800000025F31BCC0, 0);
  qword_27FD58C40 = result;
  return result;
}

char *sub_25F2EFA04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D30, &qword_25F316588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F2EFB20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
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