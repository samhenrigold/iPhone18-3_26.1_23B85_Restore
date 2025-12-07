uint64_t sub_227050714(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE0, &qword_227676AA0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v26 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v34 = MEMORY[0x277D84F90];
  sub_226F1FEA8(0, v6, 0);
  v7 = v34;
  v8 = a1 + 56;
  result = sub_22766CC90();
  v10 = result;
  v11 = 0;
  v27 = a1 + 64;
  v28 = v6;
  v29 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v32 = v11;
    v33 = v14;
    v15 = *(a1 + 48);
    v16 = sub_227665100();
    (*(*(v16 - 8) + 16))(v5 + *(v31 + 48), v15 + *(*(v16 - 8) + 72) * v10, v16);
    *v5 = sub_2276650C0();
    v34 = v7;
    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_226F1FEA8((v17 > 1), v18 + 1, 1);
      v7 = v34;
    }

    *(v7 + 16) = v18 + 1;
    result = sub_227063300(v5, v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v18);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v8 = v29;
    v19 = *(v29 + 8 * v13);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v13 << 6;
      v22 = v13 + 1;
      v23 = (v27 + 8 * v13);
      while (v22 < (v12 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_226EB526C(v10, v33, 0);
          v12 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v10, v33, 0);
    }

LABEL_4:
    v11 = v32 + 1;
    v10 = v12;
    if (v32 + 1 == v28)
    {
      return v7;
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

uint64_t sub_227050A1C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v52 = a3;
  v51 = a2(0);
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - v7;
  MEMORY[0x28223BE20](v8);
  v45 = &v44 - v9;
  v10 = *(a1 + 16);
  v57 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v11 = a1 + 56;
  v12 = v57;
  v13 = -1;
  v14 = -1 << *(a1 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(a1 + 56);
  v16 = (63 - v14) >> 6;
  v53 = a1;
  v54 = v4;
  v49 = v10;
  if (v10)
  {
    v47 = v4 + 8;
    v48 = v4 + 16;

    v17 = 0;
    v18 = 0;
    while (v15)
    {
      v19 = v12;
LABEL_11:
      v21 = v54;
      v22 = *(a1 + 48) + *(v54 + 72) * (__clz(__rbit64(v15)) | (v18 << 6));
      v23 = v50;
      v24 = v51;
      v25 = (*(v54 + 16))(v50, v22, v51);
      v26 = v52(v25);
      v55 = v27;
      v56 = v26;
      (*(v21 + 8))(v23, v24);
      v12 = v19;
      v57 = v19;
      v28 = *(v19 + 16);
      if (v28 >= *(v19 + 24) >> 1)
      {
        sub_226F1EF90();
        v12 = v57;
      }

      ++v17;
      v15 &= v15 - 1;
      *(v12 + 16) = v28 + 1;
      v29 = v12 + 16 * v28;
      v30 = v55;
      *(v29 + 32) = v56;
      *(v29 + 40) = v30;
      a1 = v53;
      if (v17 == v49)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        goto LABEL_29;
      }

      v15 = *(v11 + 8 * v20);
      ++v18;
      if (v15)
      {
        v19 = v12;
        v18 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v18 = 0;
LABEL_16:
    v31 = v54;
    v55 = v54 + 16;
    v49 = v54 + 8;
    v50 = (v54 + 32);
    if (!v15)
    {
      goto LABEL_18;
    }

    do
    {
      v56 = v12;
LABEL_22:
      v33 = *(a1 + 48) + *(v31 + 72) * (__clz(__rbit64(v15)) | (v18 << 6));
      v34 = v46;
      v35 = v51;
      (*(v31 + 16))(v46, v33, v51);
      v36 = v45;
      v37 = (*(v31 + 32))(v45, v34, v35);
      v38 = v52(v37);
      v40 = v39;
      (*(v31 + 8))(v36, v35);
      v12 = v56;
      v57 = v56;
      v41 = *(v56 + 16);
      if (v41 >= *(v56 + 24) >> 1)
      {
        sub_226F1EF90();
        v12 = v57;
      }

      v15 &= v15 - 1;
      *(v12 + 16) = v41 + 1;
      v42 = v12 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v40;
      a1 = v53;
      v31 = v54;
    }

    while (v15);
LABEL_18:
    while (1)
    {
      v32 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v32 >= v16)
      {

        return v12;
      }

      v15 = *(v11 + 8 * v32);
      ++v18;
      if (v15)
      {
        v56 = v12;
        v18 = v32;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_227050E80(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4)
{
  v5 = a2(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    a3();
    sub_2276699D0();
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_227050FCC(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F20, &qword_22767A960);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE8, &qword_227676AA8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270510A0, 0, 0);
}

uint64_t sub_2270510A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = v0[10];
    v3 = sub_227667500();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2270512C4;
    v5 = v0[10];

    return sub_2270593C8(v5);
  }

  else
  {
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    v0[14] = v7;
    if (v7)
    {
      v8 = v0[9];
      v9 = sub_227668970();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      v10 = swift_task_alloc();
      v0[15] = v10;
      *v10 = v0;
      v10[1] = sub_227051570;
      v11 = v0[9];

      return sub_227053904(v11);
    }

    else
    {

      v12 = v0[1];

      return v12();
    }
  }
}

uint64_t sub_2270512C4()
{
  v2 = *(*v1 + 80);
  *(*v1 + 104) = v0;

  sub_226E97D1C(v2, &qword_27D7B9EE8, &qword_227676AA8);

  if (v0)
  {
    v3 = sub_227051720;
  }

  else
  {
    v3 = sub_227051428;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227051428()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = v0[9];
    v3 = sub_227668970();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_227051570;
    v5 = v0[9];

    return sub_227053904(v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227051570()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(*v1 + 128) = v0;

  sub_226E97D1C(v2, &qword_27D7B9F20, &qword_22767A960);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22705178C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_227051720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22705178C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227051818()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_227051900;

    return sub_227056070();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_227051900()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2270638EC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227051A5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_227051900;

    return sub_22705BF50();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_227051B44(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE8, &qword_227676AA8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227051BE0, 0, 0);
}

uint64_t sub_227051BE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  v2 = v0[6];
  if (Strong)
  {
    sub_2276674E0();
    v3 = sub_227667500();
    (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_227051D30;
    v5 = v0[6];

    return sub_2270593C8(v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227051D30()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(*v1 + 72) = v0;

  sub_226E97D1C(v2, &qword_27D7B9EE8, &qword_227676AA8);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227051ED4, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_227051ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227051F50(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v6 + 104))(v8, *a4, v5);
  sub_227669660();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_227052060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v39 = a2;
  v4 = sub_227669910();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227665E80();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766A2F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6D0();
  v16 = *(v10 + 16);
  v37 = a1;
  v16(v12, a1, v9);
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v19;
    v33 = swift_slowAlloc();
    v44 = v33;
    *v19 = 136315138;
    sub_22766A2D0();
    sub_227063888(&qword_27D7B9F48, MEMORY[0x277D51EA0], MEMORY[0x277D51EA8]);
    v20 = v43;
    v21 = sub_22766D140();
    v34 = v4;
    v23 = v22;
    (*(v42 + 8))(v8, v20);
    (*(v10 + 8))(v12, v9);
    v24 = sub_226E97AE8(v21, v23, &v44);
    v4 = v34;

    v25 = v32;
    *(v32 + 1) = v24;
    _os_log_impl(&dword_226E8E000, v17, v18, "Broadcasting mindful minutes metric %s updated to clients!", v25, 0xCu);
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  (*(v35 + 8))(v15, v36);
  swift_getObjectType();
  v27 = v40;
  v28 = v38;
  (*(v40 + 104))(v38, *MEMORY[0x277D4E1A0], v4);
  sub_22766A2D0();
  v29 = v43;
  sub_227669650();
  (*(v42 + 8))(v8, v29);
  return (*(v27 + 8))(v28, v4);
}

uint64_t sub_227052528()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_226F73E2C;

    return sub_22705BF50();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_227052610()
{
  v1[29] = v0;
  v2 = sub_22766B390();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v3 = sub_227662750();
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  v5 = sub_227665AD0();
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v6 = sub_227667900();
  v1[44] = v6;
  v1[45] = *(v6 - 8);
  v1[46] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[47] = v7;
  v1[48] = *(v7 - 8);
  v1[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270528CC, v0, 0);
}

uint64_t sub_2270528CC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 232) + 392), *(*(v0 + 232) + 416));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    sub_226E92AB8((v0 + 56), v0 + 96);
    sub_226E91B50(v0 + 96, v0 + 136);
    v3 = swift_allocObject();
    sub_226E92AB8((v0 + 136), v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    sub_226F099DC();
    v4 = swift_allocError();
    *v5 = 0;
    *(swift_allocObject() + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  return MEMORY[0x2822009F8](sub_227052A7C, 0, 0);
}

uint64_t sub_227052A7C()
{
  v1 = v0[49];
  v2 = swift_task_alloc();
  v0[50] = v2;
  *(v2 + 16) = "SeymourServices/HealthDataSystem.swift";
  *(v2 + 24) = 38;
  *(v2 + 32) = 2;
  *(v2 + 40) = 123;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[51] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
  *v3 = v0;
  v3[1] = sub_227052BA0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637E4, v2, v4);
}

uint64_t sub_227052BA0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_22705301C;
    v4 = 0;
  }

  else
  {
    v5 = v2[29];
    (*(v2[48] + 8))(v2[49], v2[47]);
    v3 = sub_227052CFC;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_227052CFC()
{
  v1 = v0[46];
  sub_2276678E0();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  (*(v3 + 8))(v1, v2, v3);

  return MEMORY[0x2822009F8](sub_227052DB8, 0, 0);
}

uint64_t sub_227052DB8()
{
  v1 = v0[39];
  v2 = swift_task_alloc();
  v0[53] = v2;
  *(v2 + 16) = "SeymourServices/HealthDataSystem.swift";
  *(v2 + 24) = 38;
  *(v2 + 32) = 2;
  *(v2 + 40) = 128;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v3[1] = sub_227052EC0;
  v4 = v0[43];
  v5 = v0[40];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637FC, v2, v5);
}

uint64_t sub_227052EC0()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_227053644;
    v4 = 0;
  }

  else
  {
    v5 = v2[29];
    (*(v2[38] + 8))(v2[39], v2[37]);
    v3 = sub_2270532BC;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_22705301C()
{
  v1 = v0[29];
  (*(v0[48] + 8))(v0[49], v0[47]);

  return MEMORY[0x2822009F8](sub_227053098, v1, 0);
}

uint64_t sub_227053098(uint64_t a1)
{
  v20 = v1;
  v2 = v1[52];
  sub_22766A6D0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[31];
    v18 = v1[32];
    v7 = v1[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v1[26], v1[27]);
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to query service subscription with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = v1[31];
    v13 = v1[32];
    v15 = v1[30];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v1[1];

  return v16(0);
}

uint64_t sub_2270532BC(uint64_t a1)
{
  v42 = v1;
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[34];
  sub_227662740();
  v5 = sub_227665AA0();
  (*(v2 + 8))(v3, v4);
  if (v5)
  {
    v6 = v1[45];
    v7 = v1[46];
    v8 = v1[44];
    (*(v1[41] + 8))(v1[43], v1[40]);
    (*(v6 + 8))(v7, v8);
  }

  else
  {
    v10 = v1[42];
    v9 = v1[43];
    v12 = v1[40];
    v11 = v1[41];
    sub_22766A6D0();
    (*(v11 + 16))(v10, v9, v12);
    v13 = sub_22766B380();
    v14 = sub_22766C8B0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[45];
    v17 = v1[44];
    v39 = v1[46];
    v40 = v1[43];
    v19 = v1[41];
    v18 = v1[42];
    v20 = v1[40];
    v21 = v1[31];
    v37 = v1[30];
    v38 = v1[33];
    if (v15)
    {
      v35 = v14;
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41 = v34;
      *v22 = 136315138;
      sub_227063888(&qword_28139B758, MEMORY[0x277D51C40], MEMORY[0x277D51C50]);
      log = v13;
      v23 = v20;
      v36 = v17;
      v24 = sub_22766D140();
      v25 = v5;
      v27 = v26;
      v28 = *(v19 + 8);
      v28(v18, v23);
      v29 = sub_226E97AE8(v24, v27, &v41);
      v5 = v25;

      *(v22 + 4) = v29;
      _os_log_impl(&dword_226E8E000, log, v35, "Skipping HealthKit workout due to current subscription status: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AA9A450](v34, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);

      (*(v21 + 8))(v38, v37);
      v28(v40, v23);
      (*(v16 + 8))(v39, v36);
    }

    else
    {

      v30 = *(v19 + 8);
      v30(v18, v20);
      (*(v21 + 8))(v38, v37);
      v30(v40, v20);
      (*(v16 + 8))(v39, v17);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v31 = v1[1];

  return v31(v5 & 1);
}

uint64_t sub_227053644()
{
  v1 = v0[29];
  (*(v0[38] + 8))(v0[39], v0[37]);

  return MEMORY[0x2822009F8](sub_2270536C0, v1, 0);
}

uint64_t sub_2270536C0()
{
  v19 = v0;
  (*(v0[45] + 8))(v0[46], v0[44]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[55];
  sub_22766A6D0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v17 = v0[32];
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[26], v0[27]);
    v11 = sub_226E97AE8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to query service subscription with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[31];
    v12 = v0[32];
    v14 = v0[30];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_227053904(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_22766B390();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v2[18] = swift_task_alloc();
  v4 = sub_2276627D0();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_227666BF0();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_227663FA0();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F20, &qword_22767A960);
  v2[28] = swift_task_alloc();
  v7 = sub_227668970();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v8 = sub_22766A8A0();
  v2[33] = v8;
  v2[34] = *(v8 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227053C18, v1, 0);
}

uint64_t sub_227053C18()
{
  v24 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(*(v0 + 104) + 344);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F938], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = sub_227053FA0;

    return sub_227052610();
  }

  else
  {
    sub_22766A6D0();

    v9 = sub_22766B380();
    v10 = sub_22766C8B0();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 112);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      *(v0 + 392) = v4;
      v17 = MEMORY[0x22AA958B0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
      v19 = sub_226E97AE8(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_226E8E000, v9, v10, "Querying, insertion and syncing of HealthKit mindful sessions is not supported on %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA9A450](v16, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    v20 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8], MEMORY[0x277D50BB0]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D50BA0], v20);
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_227053FA0(char a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 393) = a1;

  return MEMORY[0x2822009F8](sub_2270540B8, v2, 0);
}

uint64_t sub_2270540B8(uint64_t a1)
{
  if (*(v1 + 393) == 1)
  {
    v2 = *(v1 + 232);
    v3 = *(v1 + 240);
    v4 = *(v1 + 224);
    sub_226E93170(*(v1 + 96), v4, &qword_27D7B9F20, &qword_22767A960);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v5 = *(v1 + 104);
      sub_226E97D1C(*(v1 + 224), &qword_27D7B9F20, &qword_22767A960);
      v6 = v5[17];
      v7 = v5[18];
      __swift_project_boxed_opaque_existential_0(v5 + 14, v6);
      v8 = *__swift_project_boxed_opaque_existential_0(v5 + 37, v5[40]);
      *(v1 + 40) = type metadata accessor for ConfigurationDataStore();
      *(v1 + 48) = &off_283AA1218;
      *(v1 + 16) = v8;
      sub_226E91B50(v1 + 16, v1 + 56);
      v9 = swift_allocObject();
      *(v1 + 296) = v9;
      sub_226E92AB8((v1 + 56), v9 + 16);

      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      v28 = (*(v7 + 24) + **(v7 + 24));
      v10 = swift_task_alloc();
      *(v1 + 304) = v10;
      *v10 = v1;
      v10[1] = sub_2270544F8;
      v11 = *(v1 + 216);
      v12 = *(v1 + 200);

      return v28(v11, sub_2270638D4, v9, v12, v6, v7);
    }

    else
    {
      v22 = *(v1 + 248);
      v23 = *(v1 + 256);
      v24 = *(v1 + 232);
      v25 = *(*(v1 + 240) + 32);
      v25(v22, *(v1 + 224), v24);
      v25(v23, v22, v24);
      v26 = swift_task_alloc();
      *(v1 + 320) = v26;
      *v26 = v1;
      v26[1] = sub_2270546E8;
      v27 = *(v1 + 256);

      return sub_22705531C(v27);
    }
  }

  else
  {
    sub_22766A6D0();
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v1 + 136);
    v18 = *(v1 + 112);
    v19 = *(v1 + 120);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Skipping HealthKitMindfulSession query/insert, no subscription found", v20, 2u);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    (*(v19 + 8))(v17, v18);

    v21 = *(v1 + 8);

    return v21();
  }
}

uint64_t sub_2270544F8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_227055020;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_227054620;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227054620()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_227663F50();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_2270546E8;
  v5 = v0[32];

  return sub_22705531C(v5);
}

uint64_t sub_2270546E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v5 = *(v3 + 104);
  if (v1)
  {
    v6 = sub_227055114;
  }

  else
  {
    v6 = sub_22705481C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22705481C()
{
  v1 = v0[20];
  v2 = v0[41];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[41] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v27 = v0[23];
  v26 = (v1 + 48);
  v24 = v0[20];
  v25 = (v1 + 32);
  v28 = v0[41];

  v10 = 0;
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v10;
    v0[43] = v29;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = v0[24];
    v13 = v0[22];
    v14 = v0[18];
    v30 = v0[19];
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v27 + 16))(v12, *(v28 + 48) + *(v27 + 72) * (v15 | (v10 << 6)), v13);
    sub_227666BA0();
    sub_227662760();

    (*(v27 + 8))(v12, v13);
    if ((*v26)(v14, 1, v30) == 1)
    {
      sub_226E97D1C(v0[18], &unk_27D7BB9D0, &qword_227671550);
    }

    else
    {
      v16 = *v25;
      (*v25)(v0[21], v0[18], v0[19]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_2273A63FC(0, *(v29 + 2) + 1, 1, v29);
      }

      v18 = *(v29 + 2);
      v17 = *(v29 + 3);
      if (v18 >= v17 >> 1)
      {
        v29 = sub_2273A63FC((v17 > 1), v18 + 1, 1, v29);
      }

      v19 = v0[21];
      v20 = v0[19];
      *(v29 + 2) = v18 + 1;
      v16(&v29[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18], v19, v20);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v21 = v0[13];

  __swift_project_boxed_opaque_existential_0((v21 + 216), *(v21 + 240));
  v22 = swift_task_alloc();
  v0[44] = v22;
  *v22 = v0;
  v22[1] = sub_227054B2C;
  v23 = v0[32];

  sub_2270120EC(v23, v29);
}

uint64_t sub_227054B2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[45] = a1;
  v4[46] = v1;

  if (v1)
  {
    v6 = v4[13];

    return MEMORY[0x2822009F8](sub_227054E20, v6, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v4[47] = v7;
    *v7 = v5;
    v7[1] = sub_227054CD8;

    return sub_227055C1C(a1);
  }
}

uint64_t sub_227054CD8()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 104);

  if (v0)
  {
    v4 = sub_227055218;
  }

  else
  {
    v4 = sub_227054F24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227054E20()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227054F24()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227055020()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227055114()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227055218()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22705531C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227662940();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_227662930();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v2[11] = swift_task_alloc();
  v5 = sub_227662750();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v2[14] = *(v6 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270554EC, v1, 0);
}

uint64_t sub_2270554EC(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[12];
  v4 = v1[13];
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[8];
  v8 = v1[9];
  sub_227662740();
  (*(v8 + 104))(v6, *MEMORY[0x277CC9968], v7);
  sub_227668950();
  sub_227662610();
  (*(v8 + 8))(v6, v7);
  v9 = *(v4 + 8);
  v1[18] = v9;
  v1[19] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_226E97D1C(v1[11], &qword_27D7B9690, qword_227670B50);
    v10 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8], MEMORY[0x277D50BB0]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50B90], v10);
    swift_willThrow();

    v12 = v1[1];

    return v12();
  }

  else
  {
    v14 = v1[16];
    v29 = v1[17];
    v30 = v1[15];
    v15 = v1[12];
    v16 = v1[13];
    v17 = v1[11];
    v19 = v1[6];
    v18 = v1[7];
    v20 = v1[4];
    v32 = v1[5];
    sub_227662920();
    sub_2276625F0();
    (*(v19 + 8))(v18, v32);
    v9(v17, v15);
    v21 = *(v16 + 32);
    v21(v29, v14, v15);
    v22 = v20[17];
    v23 = v20[18];
    __swift_project_boxed_opaque_existential_0(v20 + 14, v22);
    (*(v16 + 16))(v30, v29, v15);
    v24 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v25 = swift_allocObject();
    v1[20] = v25;
    *(v25 + 16) = v20;
    v21(v25 + v24, v30, v15);
    v26 = *(v23 + 24);

    v31 = (v26 + *v26);
    v27 = swift_task_alloc();
    v1[21] = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8C0, &qword_227676BC0);
    *v27 = v1;
    v27[1] = sub_227055950;

    return (v31)(v1 + 2, sub_227063764, v25, v28, v22, v23);
  }
}

uint64_t sub_227055950()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 32);

  if (v0)
  {
    v4 = sub_227055B64;
  }

  else
  {
    v4 = sub_227055A98;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227055A98()
{
  (*(v0 + 144))(*(v0 + 136), *(v0 + 96));
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227055B64()
{
  (*(v0 + 144))(*(v0 + 136), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227055C1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A460();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227055CDC, v1, 0);
}

uint64_t sub_227055CDC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_227055E6C;

  return v8();
}

uint64_t sub_227055E6C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_2270638D0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_227055F94;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227055F94()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_0((v0[3] + 152), *(v0[3] + 176));
  sub_2271D7EE8();
  swift_getObjectType();
  sub_22766A450();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227056070()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_22766A8A0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227056198, v0, 0);
}

uint64_t sub_227056198()
{
  v28 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(*(v0 + 16) + 344);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F968], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_0((*(v0 + 16) + 432), *(*(v0 + 16) + 456));
    *(v0 + 113) = 0;
    *(v0 + 80) = sub_226F19410();
    *(v0 + 88) = sub_226F19464();
    sub_22766A130();
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    v8 = type metadata accessor for HealthDataSystem(0);
    v9 = sub_227063888(qword_28139AD20, type metadata accessor for HealthDataSystem, &unk_2276769A0);
    *v7 = v0;
    v7[1] = sub_2270565D4;
    v10 = *(v0 + 16);
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v9, &unk_227676B60, v10, v8, v11, v9);
  }

  else
  {
    sub_22766A6D0();

    v12 = sub_22766B380();
    v13 = sub_22766C8B0();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 24);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136446210;
      *(v0 + 112) = v4;
      v20 = MEMORY[0x22AA958B0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
      v22 = sub_226E97AE8(v20, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_226E8E000, v12, v13, "Saving standalone mindfulness sessions into HealthKit is not supported on platform: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    v23 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8], MEMORY[0x277D50BB0]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D50BA0], v23);
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_2270565D4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_2270568A4;
  }

  else
  {
    v4 = sub_227056700;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227056700()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 16) + 432), *(*(v0 + 16) + 456));
  *(v0 + 114) = 0;
  sub_22766A120();
  sub_22766A710();
  v1 = sub_22766B380();
  v2 = sub_22766C8B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "Finished processing standalone mindful session job", v3, 2u);
    MEMORY[0x22AA9A450](v3, -1, -1);
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  (*(v6 + 8))(v4, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2270568A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227056924(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_227668E30();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227056AD0, a2, 0);
}

uint64_t sub_227056AD0()
{
  v1 = *(v0 + 56);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F00, &qword_227676B68);
  *v4 = v0;
  v4[1] = sub_227056C38;

  return v7(v0 + 40, sub_227058E94, 0, v5, v2, v3);
}

uint64_t sub_227056C38()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_2270586BC;
  }

  else
  {
    v4 = sub_227056D64;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227056D64(uint64_t a1)
{
  v68 = v1;
  v2 = *(v1 + 40);
  *(v1 + 224) = v2;
  if (!*(v2 + 16))
  {

    sub_22766A6D0();
    v17 = sub_22766B380();
    v18 = sub_22766C8B0();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v1 + 168);
    v21 = *(v1 + 144);
    v22 = *(v1 + 152);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226E8E000, v17, v18, "HealthDataSystem: No StandaloneMindfulSessionJobs", v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    (*(v22 + 8))(v20, v21);
LABEL_22:

    v61 = *(v1 + 8);

    return v61();
  }

  sub_22766A6D0();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 200);
  v8 = *(v1 + 144);
  v7 = *(v1 + 152);
  if (v5)
  {
    v66 = *(v1 + 200);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v67 = v10;
    *v9 = 136315138;
    sub_227063888(&unk_2813A5530, MEMORY[0x277D538B8], MEMORY[0x277D538C0]);
    v11 = sub_22766C610();
    v13 = sub_226E97AE8(v11, v12, &v67);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "HealthDataSystem: Saving StandaloneMindfulSessionJobs: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v16 = *(v7 + 8);
    v15 = v7 + 8;
    v14 = v16;
    v16(v66, v8);
  }

  else
  {

    v24 = *(v7 + 8);
    v15 = v7 + 8;
    v14 = v24;
    v24(v6, v8);
  }

  *(v1 + 232) = v15;
  *(v1 + 240) = v14;
  v25 = *(v1 + 72);
  v26 = *(v1 + 56);
  v27 = *(v2 + 32);
  *(v1 + 344) = v27;
  v28 = -1;
  v29 = -1 << v27;
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v2 + 56);
  if (!v30)
  {
    v33 = 0;
    v34 = ((63 - v29) >> 6) - 1;
    v32 = *(v1 + 224);
    while (v34 != v33)
    {
      v31 = v33 + 1;
      v30 = *(v32 + 8 * v33++ + 64);
      if (v30)
      {
        goto LABEL_15;
      }
    }

    __swift_project_boxed_opaque_existential_0((v26 + 152), *(v26 + 176));
    sub_2271D7EE8();
    goto LABEL_22;
  }

  v31 = 0;
  v32 = *(v1 + 224);
LABEL_15:
  *(v1 + 248) = v30;
  *(v1 + 256) = v31;
  v36 = *(v1 + 128);
  v35 = *(v1 + 136);
  v37 = *(v1 + 120);
  v38 = *(v1 + 64);
  v39 = *(v32 + 48) + v25[9] * (__clz(__rbit64(v30)) | (v31 << 6));
  v40 = v25[2];
  *(v1 + 264) = v40;
  *(v1 + 272) = (v25 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v35, v39, v38);
  v41 = v25[4];
  *(v1 + 280) = v41;
  *(v1 + 288) = (v25 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v41(v36, v35, v38);
  sub_22766A6D0();
  v40(v37, v36, v38);
  v42 = sub_22766B380();
  v43 = sub_22766C8B0();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v1 + 240);
  v46 = *(v1 + 192);
  v47 = *(v1 + 144);
  v48 = *(v1 + 120);
  v50 = *(v1 + 64);
  v49 = *(v1 + 72);
  if (v44)
  {
    v51 = swift_slowAlloc();
    v65 = v46;
    v52 = swift_slowAlloc();
    v67 = v52;
    *v51 = 136315138;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
    v63 = v47;
    v64 = v45;
    v53 = sub_22766D140();
    v55 = v54;
    v62 = v43;
    v56 = *(v49 + 8);
    v56(v48, v50);
    v57 = sub_226E97AE8(v53, v55, &v67);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_226E8E000, v42, v62, "HealthDataSystem: Saving StandaloneMindfulnessJob %s.", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x22AA9A450](v52, -1, -1);
    MEMORY[0x22AA9A450](v51, -1, -1);

    v64(v65, v63);
  }

  else
  {

    v56 = *(v49 + 8);
    v56(v48, v50);
    v45(v46, v47);
  }

  *(v1 + 296) = v56;
  __swift_project_boxed_opaque_existential_0((*(v1 + 56) + 216), *(*(v1 + 56) + 240));
  v58 = swift_task_alloc();
  *(v1 + 304) = v58;
  *v58 = v1;
  v58[1] = sub_2270573C4;
  v59 = *(v1 + 128);

  return sub_227011568(v59);
}

uint64_t sub_2270573C4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_2270578A0;
  }

  else
  {
    v4 = sub_2270574F0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2270574F0(uint64_t a1)
{
  v39 = v1;
  v2 = v1[33];
  v3 = v1[16];
  v4 = v1[14];
  v5 = v1[8];
  sub_22766A6D0();
  v2(v4, v3, v5);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[37];
  v10 = v1[30];
  v11 = v1[23];
  v37 = v1[18];
  v12 = v1[14];
  v13 = v1[8];
  if (v8)
  {
    v36 = v1[30];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = v15;
    *v14 = 136315138;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
    v33 = v11;
    v16 = sub_22766D140();
    v18 = v17;
    v9(v12, v13);
    v19 = sub_226E97AE8(v16, v18, &v38);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v6, v7, "HealthDataSystem: Saved StandaloneMindfulnessJob %s. Deleting from database.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v36(v33, v37);
  }

  else
  {

    v9(v12, v13);
    v10(v11, v37);
  }

  v34 = v1[35];
  v20 = v1[33];
  v21 = v1[16];
  v22 = v1[13];
  v24 = v1[9];
  v23 = v1[10];
  v26 = v1[7];
  v25 = v1[8];
  v27 = v26[18];
  __swift_project_boxed_opaque_existential_0(v26 + 14, v26[17]);
  v20(v22, v21, v25);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = swift_allocObject();
  v1[40] = v29;
  v34(v29 + v28, v22, v25);
  *(v29 + ((v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v30 = *(v27 + 24);

  v35 = (v30 + *v30);
  v31 = swift_task_alloc();
  v1[41] = v31;
  *v31 = v1;
  v31[1] = sub_227057F6C;

  return v35();
}

uint64_t sub_2270578A0(uint64_t a1)
{
  v70 = v1;
  v2 = *(v1 + 312);
  v3 = *(v1 + 264);
  v4 = *(v1 + 128);
  v5 = *(v1 + 88);
  v6 = *(v1 + 64);
  sub_22766A6D0();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v1 + 296);
    v67 = *(v1 + 240);
    v60 = *(v1 + 144);
    v62 = *(v1 + 160);
    v64 = *(v1 + 128);
    v11 = *(v1 + 88);
    v12 = *(v1 + 64);
    v13 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v69 = v59;
    *v13 = 136315394;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
    v14 = sub_22766D140();
    v16 = v15;
    v10(v11, v12);
    v17 = sub_226E97AE8(v14, v16, &v69);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v18 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v20 = sub_226E97AE8(v18, v19, &v69);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v8, v9, "HealthDataSystem: Error processing StandaloneMindfulnessJob %s, error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v67(v62, v60);
    result = (v10)(v64, v12);
  }

  else
  {
    v22 = *(v1 + 296);
    v68 = *(v1 + 240);
    v23 = *(v1 + 160);
    v24 = *(v1 + 144);
    v25 = *(v1 + 128);
    v26 = *(v1 + 88);
    v27 = *(v1 + 64);

    v22(v26, v27);
    v68(v23, v24);
    result = (v22)(v25, v27);
  }

  v28 = *(v1 + 256);
  v29 = (*(v1 + 248) - 1) & *(v1 + 248);
  if (v29)
  {
    result = *(v1 + 224);
LABEL_10:
    *(v1 + 248) = v29;
    *(v1 + 256) = v28;
    v32 = *(v1 + 128);
    v31 = *(v1 + 136);
    v33 = *(v1 + 120);
    v34 = *(v1 + 64);
    v35 = *(v1 + 72);
    v36 = *(result + 48) + v35[9] * (__clz(__rbit64(v29)) | (v28 << 6));
    v37 = v35[2];
    *(v1 + 264) = v37;
    *(v1 + 272) = (v35 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v31, v36, v34);
    v38 = v35[4];
    *(v1 + 280) = v38;
    *(v1 + 288) = (v35 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v38(v32, v31, v34);
    sub_22766A6D0();
    v37(v33, v32, v34);
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v1 + 240);
    v43 = *(v1 + 192);
    v44 = *(v1 + 144);
    v45 = *(v1 + 120);
    v47 = *(v1 + 64);
    v46 = *(v1 + 72);
    if (v41)
    {
      v48 = swift_slowAlloc();
      v66 = v43;
      v49 = swift_slowAlloc();
      v69 = v49;
      *v48 = 136315138;
      sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
      v63 = v44;
      v65 = v42;
      v50 = sub_22766D140();
      v52 = v51;
      v61 = v40;
      v53 = *(v46 + 8);
      v53(v45, v47);
      v54 = sub_226E97AE8(v50, v52, &v69);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_226E8E000, v39, v61, "HealthDataSystem: Saving StandaloneMindfulnessJob %s.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AA9A450](v49, -1, -1);
      MEMORY[0x22AA9A450](v48, -1, -1);

      v65(v66, v63);
    }

    else
    {

      v53 = *(v46 + 8);
      v53(v45, v47);
      v42(v43, v44);
    }

    *(v1 + 296) = v53;
    __swift_project_boxed_opaque_existential_0((*(v1 + 56) + 216), *(*(v1 + 56) + 240));
    v55 = swift_task_alloc();
    *(v1 + 304) = v55;
    *v55 = v1;
    v55[1] = sub_2270573C4;
    v56 = *(v1 + 128);

    return sub_227011568(v56);
  }

  else
  {
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v1 + 224);
      if (v30 >= (((1 << *(v1 + 344)) + 63) >> 6))
      {
        break;
      }

      v29 = *(result + 8 * v30 + 56);
      ++v28;
      if (v29)
      {
        v28 = v30;
        goto LABEL_10;
      }
    }

    v57 = *(v1 + 56);

    __swift_project_boxed_opaque_existential_0((v57 + 152), *(v57 + 176));
    sub_2271D7EE8();

    v58 = *(v1 + 8);

    return v58();
  }
}

uint64_t sub_227057F6C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_2270587C0;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_227058094;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227058094(uint64_t a1)
{
  v61 = v1;
  v2 = *(v1 + 264);
  v3 = *(v1 + 128);
  v4 = *(v1 + 96);
  v5 = *(v1 + 64);
  sub_22766A6D0();
  v2(v4, v3, v5);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 296);
  v10 = *(v1 + 240);
  v57 = *(v1 + 144);
  v59 = *(v1 + 176);
  v11 = *(v1 + 128);
  v12 = *(v1 + 96);
  v13 = *(v1 + 64);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v53 = v11;
    v15 = swift_slowAlloc();
    v60 = v15;
    *v14 = 136315138;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
    v16 = sub_22766D140();
    v52 = v10;
    v18 = v17;
    v9(v12, v13);
    v19 = sub_226E97AE8(v16, v18, &v60);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v6, v7, "HealthDataSystem: Deleted StandaloneMindfulnessJob %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v52(v59, v57);
    result = (v9)(v53, v13);
  }

  else
  {

    v9(v12, v13);
    v10(v59, v57);
    result = (v9)(v11, v13);
  }

  v21 = *(v1 + 256);
  v22 = (*(v1 + 248) - 1) & *(v1 + 248);
  if (v22)
  {
    result = *(v1 + 224);
LABEL_10:
    *(v1 + 248) = v22;
    *(v1 + 256) = v21;
    v25 = *(v1 + 128);
    v24 = *(v1 + 136);
    v26 = *(v1 + 120);
    v27 = *(v1 + 64);
    v28 = *(v1 + 72);
    v29 = *(result + 48) + v28[9] * (__clz(__rbit64(v22)) | (v21 << 6));
    v30 = v28[2];
    *(v1 + 264) = v30;
    *(v1 + 272) = (v28 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v24, v29, v27);
    v31 = v28[4];
    *(v1 + 280) = v31;
    *(v1 + 288) = (v28 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v31(v25, v24, v27);
    sub_22766A6D0();
    v30(v26, v25, v27);
    v32 = sub_22766B380();
    v33 = sub_22766C8B0();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 240);
    v36 = *(v1 + 192);
    v37 = *(v1 + 144);
    v38 = *(v1 + 120);
    v40 = *(v1 + 64);
    v39 = *(v1 + 72);
    if (v34)
    {
      v41 = swift_slowAlloc();
      v58 = v36;
      v42 = swift_slowAlloc();
      v60 = v42;
      *v41 = 136315138;
      sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
      v55 = v37;
      v56 = v35;
      v43 = sub_22766D140();
      v45 = v44;
      v54 = v33;
      v46 = *(v39 + 8);
      v46(v38, v40);
      v47 = sub_226E97AE8(v43, v45, &v60);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v32, v54, "HealthDataSystem: Saving StandaloneMindfulnessJob %s.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AA9A450](v42, -1, -1);
      MEMORY[0x22AA9A450](v41, -1, -1);

      v56(v58, v55);
    }

    else
    {

      v46 = *(v39 + 8);
      v46(v38, v40);
      v35(v36, v37);
    }

    *(v1 + 296) = v46;
    __swift_project_boxed_opaque_existential_0((*(v1 + 56) + 216), *(*(v1 + 56) + 240));
    v48 = swift_task_alloc();
    *(v1 + 304) = v48;
    *v48 = v1;
    v48[1] = sub_2270573C4;
    v49 = *(v1 + 128);

    return sub_227011568(v49);
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v1 + 224);
      if (v23 >= (((1 << *(v1 + 344)) + 63) >> 6))
      {
        break;
      }

      v22 = *(result + 8 * v23 + 56);
      ++v21;
      if (v22)
      {
        v21 = v23;
        goto LABEL_10;
      }
    }

    v50 = *(v1 + 56);

    __swift_project_boxed_opaque_existential_0((v50 + 152), *(v50 + 176));
    sub_2271D7EE8();

    v51 = *(v1 + 8);

    return v51();
  }
}

uint64_t sub_2270586BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2270587C0()
{
  v69 = v0;

  v1 = *(v0 + 336);
  v2 = *(v0 + 264);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  sub_22766A6D0();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 296);
    v66 = *(v0 + 240);
    v59 = *(v0 + 144);
    v61 = *(v0 + 160);
    v63 = *(v0 + 128);
    v10 = *(v0 + 88);
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v68 = v58;
    *v12 = 136315394;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
    v13 = sub_22766D140();
    v15 = v14;
    v9(v10, v11);
    v16 = sub_226E97AE8(v13, v15, &v68);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v19 = sub_226E97AE8(v17, v18, &v68);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_226E8E000, v7, v8, "HealthDataSystem: Error processing StandaloneMindfulnessJob %s, error: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v58, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    v66(v61, v59);
    result = (v9)(v63, v11);
  }

  else
  {
    v21 = *(v0 + 296);
    v67 = *(v0 + 240);
    v22 = *(v0 + 160);
    v23 = *(v0 + 144);
    v24 = *(v0 + 128);
    v25 = *(v0 + 88);
    v26 = *(v0 + 64);

    v21(v25, v26);
    v67(v22, v23);
    result = (v21)(v24, v26);
  }

  v27 = *(v0 + 256);
  v28 = (*(v0 + 248) - 1) & *(v0 + 248);
  if (v28)
  {
    result = *(v0 + 224);
LABEL_10:
    *(v0 + 248) = v28;
    *(v0 + 256) = v27;
    v31 = *(v0 + 128);
    v30 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(v0 + 64);
    v34 = *(v0 + 72);
    v35 = *(result + 48) + v34[9] * (__clz(__rbit64(v28)) | (v27 << 6));
    v36 = v34[2];
    *(v0 + 264) = v36;
    *(v0 + 272) = (v34 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36(v30, v35, v33);
    v37 = v34[4];
    *(v0 + 280) = v37;
    *(v0 + 288) = (v34 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v37(v31, v30, v33);
    sub_22766A6D0();
    v36(v32, v31, v33);
    v38 = sub_22766B380();
    v39 = sub_22766C8B0();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 240);
    v42 = *(v0 + 192);
    v43 = *(v0 + 144);
    v44 = *(v0 + 120);
    v46 = *(v0 + 64);
    v45 = *(v0 + 72);
    if (v40)
    {
      v47 = swift_slowAlloc();
      v65 = v42;
      v48 = swift_slowAlloc();
      v68 = v48;
      *v47 = 136315138;
      sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
      v62 = v43;
      v64 = v41;
      v49 = sub_22766D140();
      v51 = v50;
      v60 = v39;
      v52 = *(v45 + 8);
      v52(v44, v46);
      v53 = sub_226E97AE8(v49, v51, &v68);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_226E8E000, v38, v60, "HealthDataSystem: Saving StandaloneMindfulnessJob %s.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA9A450](v48, -1, -1);
      MEMORY[0x22AA9A450](v47, -1, -1);

      v64(v65, v62);
    }

    else
    {

      v52 = *(v45 + 8);
      v52(v44, v46);
      v41(v42, v43);
    }

    *(v0 + 296) = v52;
    __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 216), *(*(v0 + 56) + 240));
    v54 = swift_task_alloc();
    *(v0 + 304) = v54;
    *v54 = v0;
    v54[1] = sub_2270573C4;
    v55 = *(v0 + 128);

    return sub_227011568(v55);
  }

  else
  {
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 224);
      if (v29 >= (((1 << *(v0 + 344)) + 63) >> 6))
      {
        break;
      }

      v28 = *(result + 8 * v29 + 56);
      ++v27;
      if (v28)
      {
        v27 = v29;
        goto LABEL_10;
      }
    }

    v56 = *(v0 + 56);

    __swift_project_boxed_opaque_existential_0((v56 + 152), *(v56 + 176));
    sub_2271D7EE8();

    v57 = *(v0 + 8);

    return v57();
  }
}

void sub_227058ED0(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v4 = a1[3];
  v45 = a1;
  v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F10, &qword_227676B70);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  v41[0] = v12;
  v41[1] = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  swift_getKeyPath();
  v44 = a2;
  v13 = sub_227668E00();
  v15 = v14;
  v48[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v48[0] = v13;
  v48[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v48, v46, &unk_27D7BC990, &qword_227670A30);
  v17 = v47;
  if (v47)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v46, v47);
    v42 = v41;
    v19 = v9;
    v20 = v8;
    v21 = *(v17 - 8);
    v22 = MEMORY[0x28223BE20](v18);
    v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v17);
    v8 = v20;
    v9 = v19;
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F18 &unk_227676BA0))];

  sub_226E97D1C(v48, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = v27;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v48, 0);
  swift_endAccess();

  v33 = sub_227543008(v10 + v28, v8, v9);
  if (v33)
  {
    if (v33 == 1)
    {

LABEL_9:
      __swift_project_boxed_opaque_existential_0((v43 + 152), *(v43 + 176));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_227670CD0;
      *(v34 + 32) = sub_227668E00();
      *(v34 + 40) = v35;
      sub_2272D7C7C(1, v34, v45);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v36 = v48[5];
    v37 = sub_227248AE8(0);
    if (!v36)
    {
      v38 = v37;
      [v37 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v39 = sub_22766C9E0();
      v40 = sub_226EDAB24(v39);

      sub_226EDAB78(v40, v41[0]);

      goto LABEL_9;
    }
  }
}

uint64_t sub_2270593C8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_22766B390();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v2[19] = swift_task_alloc();
  v4 = sub_2276627D0();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_227664CA0();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = sub_227663FA0();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE8, &qword_227676AA8);
  v2[29] = swift_task_alloc();
  v7 = sub_227667500();
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v8 = sub_22766A8A0();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270596F4, v1, 0);
}

uint64_t sub_2270596F4()
{
  v22 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(*(v0 + 104) + 344);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F938], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 304) = v7;
    *v7 = v0;
    v7[1] = sub_2270599F8;

    return sub_227052610();
  }

  else
  {
    sub_22766A6D0();

    v9 = sub_22766B380();
    v10 = sub_22766C8B0();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 112);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      *(v0 + 424) = v4;
      v17 = MEMORY[0x22AA958B0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
      v19 = sub_226E97AE8(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_226E8E000, v9, v10, "Querying, insertion and syncing of HealthKit workouts is not supported on platform %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA9A450](v16, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2270599F8(char a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 427) = a1;

  return MEMORY[0x2822009F8](sub_227059B10, v2, 0);
}

uint64_t sub_227059B10(uint64_t a1)
{
  if (*(v1 + 427) == 1)
  {
    v2 = *(v1 + 240);
    v3 = *(v1 + 248);
    v4 = *(v1 + 232);
    sub_226E93170(*(v1 + 96), v4, &qword_27D7B9EE8, &qword_227676AA8);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v5 = *(v1 + 104);
      sub_226E97D1C(*(v1 + 232), &qword_27D7B9EE8, &qword_227676AA8);
      v6 = v5[17];
      v7 = v5[18];
      __swift_project_boxed_opaque_existential_0(v5 + 14, v6);
      v8 = *__swift_project_boxed_opaque_existential_0(v5 + 37, v5[40]);
      *(v1 + 40) = type metadata accessor for ConfigurationDataStore();
      *(v1 + 48) = &off_283AA1218;
      *(v1 + 16) = v8;
      sub_226E91B50(v1 + 16, v1 + 56);
      v9 = swift_allocObject();
      *(v1 + 312) = v9;
      sub_226E92AB8((v1 + 56), v9 + 16);

      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      v28 = (*(v7 + 24) + **(v7 + 24));
      v10 = swift_task_alloc();
      *(v1 + 320) = v10;
      *v10 = v1;
      v10[1] = sub_227059FF4;
      v11 = *(v1 + 224);
      v12 = *(v1 + 208);

      return v28(v11, sub_227063370, v9, v12, v6, v7);
    }

    else
    {
      v22 = *(v1 + 264);
      v23 = *(v1 + 272);
      v24 = *(v1 + 240);
      v25 = *(*(v1 + 248) + 32);
      v25(v22, *(v1 + 232), v24);
      v25(v23, v22, v24);
      __swift_project_boxed_opaque_existential_0((*(v1 + 104) + 432), *(*(v1 + 104) + 456));
      *(v1 + 425) = 1;
      *(v1 + 336) = sub_226F19410();
      *(v1 + 344) = sub_226F19464();
      sub_22766A130();
      v26 = swift_task_alloc();
      *(v1 + 352) = v26;
      *v26 = v1;
      v26[1] = sub_22705A2A8;
      v27 = *(v1 + 272);

      return sub_22705B078(v27);
    }
  }

  else
  {
    sub_22766A6D0();
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v1 + 136);
    v18 = *(v1 + 112);
    v19 = *(v1 + 120);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Skipping HealthKitMindfulSession query/insert, no subscription found", v20, 2u);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    (*(v19 + 8))(v17, v18);

    v21 = *(v1 + 8);

    return v21();
  }
}

uint64_t sub_227059FF4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_22705AD34;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_22705A11C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22705A11C()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);
  sub_227663F20();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 32))(v1, v2, v4);
  __swift_project_boxed_opaque_existential_0((*(v0 + 104) + 432), *(*(v0 + 104) + 456));
  *(v0 + 425) = 1;
  *(v0 + 336) = sub_226F19410();
  *(v0 + 344) = sub_226F19464();
  sub_22766A130();
  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  *v8 = v0;
  v8[1] = sub_22705A2A8;
  v9 = *(v0 + 272);

  return sub_22705B078(v9);
}

uint64_t sub_22705A2A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v5 = *(v3 + 104);
  if (v1)
  {
    v6 = sub_22705AE40;
  }

  else
  {
    v6 = sub_22705A3DC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22705A3DC()
{
  v1 = v0[21];
  v2 = v0[45];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[45] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v27 = v0[24];
  v26 = (v1 + 48);
  v24 = v0[21];
  v25 = (v1 + 32);
  v28 = v0[45];

  v10 = 0;
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v10;
    v0[47] = v29;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = v0[25];
    v13 = v0[23];
    v14 = v0[19];
    v30 = v0[20];
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v27 + 16))(v12, *(v28 + 48) + *(v27 + 72) * (v15 | (v10 << 6)), v13);
    sub_227664C40();
    sub_227662760();

    (*(v27 + 8))(v12, v13);
    if ((*v26)(v14, 1, v30) == 1)
    {
      sub_226E97D1C(v0[19], &unk_27D7BB9D0, &qword_227671550);
    }

    else
    {
      v16 = *v25;
      (*v25)(v0[22], v0[19], v0[20]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_2273A63FC(0, *(v29 + 2) + 1, 1, v29);
      }

      v18 = *(v29 + 2);
      v17 = *(v29 + 3);
      if (v18 >= v17 >> 1)
      {
        v29 = sub_2273A63FC((v17 > 1), v18 + 1, 1, v29);
      }

      v19 = v0[22];
      v20 = v0[20];
      *(v29 + 2) = v18 + 1;
      v16(&v29[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18], v19, v20);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v21 = v0[13];

  __swift_project_boxed_opaque_existential_0((v21 + 256), *(v21 + 280));
  v22 = swift_task_alloc();
  v0[48] = v22;
  *v22 = v0;
  v22[1] = sub_22705A6EC;
  v23 = v0[34];

  sub_2274FBDB4(v23, v29);
}

uint64_t sub_22705A6EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v6 = v4[13];

    return MEMORY[0x2822009F8](sub_22705A9E4, v6, 0);
  }

  else
  {
    v4[50] = a1;
    v7 = swift_task_alloc();
    v4[51] = v7;
    *v7 = v5;
    v7[1] = sub_22705A89C;

    return sub_22705BA90(a1);
  }
}

uint64_t sub_22705A89C()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_22705AF5C;
  }

  else
  {
    v4 = sub_22705AB00;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22705A9E4()
{
  (*(v0[31] + 8))(v0[34], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22705AB00()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 104) + 432), *(*(v0 + 104) + 456));
  *(v0 + 426) = 1;
  sub_22766A120();
  sub_22766A710();
  v1 = sub_22766B380();
  v2 = sub_22766C8B0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  if (v3)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "Finished syncing healhtkit workouts", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22705AD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22705AE40()
{
  (*(v0[31] + 8))(v0[34], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22705AF5C()
{
  (*(v0[31] + 8))(v0[34], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22705B078(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227667500();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_227662940();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v6 = sub_227662930();
  v2[12] = v6;
  v2[13] = *(v6 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v2[15] = swift_task_alloc();
  v7 = sub_227662750();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v2[18] = *(v8 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22705B2AC, v1, 0);
}

uint64_t sub_22705B2AC(uint64_t a1)
{
  v2 = v1[19];
  v3 = v1[16];
  v4 = v1[17];
  v6 = v1[14];
  v5 = v1[15];
  v7 = v1[12];
  v8 = v1[13];
  sub_227662740();
  (*(v8 + 104))(v6, *MEMORY[0x277CC9968], v7);
  sub_2276674F0();
  sub_227662610();
  (*(v8 + 8))(v6, v7);
  v9 = *(v4 + 8);
  v1[22] = v9;
  v1[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_226E97D1C(v1[15], &qword_27D7B9690, qword_227670B50);
    v10 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8], MEMORY[0x277D50BB0]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50B90], v10);
    swift_willThrow();

    v12 = v1[1];

    return v12();
  }

  else
  {
    v14 = v1[20];
    v27 = v1[21];
    v15 = v1[17];
    v16 = v1[15];
    v18 = v1[10];
    v17 = v1[11];
    v37 = v1[9];
    v38 = v1[16];
    v30 = v1[8];
    v19 = v1[6];
    v33 = v1[19];
    v34 = v1[7];
    v20 = v1[4];
    v28 = v1[3];
    v29 = v1[5];
    sub_227662920();
    sub_2276625F0();
    (*(v18 + 8))(v17, v37);
    v9(v16, v38);
    v32 = *(v15 + 32);
    v32(v27, v14, v38);
    v36 = v20[17];
    v31 = v20[18];
    __swift_project_boxed_opaque_existential_0(v20 + 14, v36);
    (*(v19 + 16))(v30, v28, v29);
    (*(v15 + 16))(v33, v27, v38);
    v21 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v22 = (v34 + *(v15 + 80) + v21) & ~*(v15 + 80);
    v23 = swift_allocObject();
    v1[24] = v23;
    *(v23 + 16) = v20;
    (*(v19 + 32))(v23 + v21, v30, v29);
    v32(v23 + v22, v33, v38);
    v24 = *(v31 + 24);

    v35 = (v24 + *v24);
    v25 = swift_task_alloc();
    v1[25] = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8B0, &unk_227676AC8);
    *v25 = v1;
    v25[1] = sub_22705B7A4;

    return (v35)(v1 + 2, sub_2270633F4, v23, v26, v36, v31);
  }
}

uint64_t sub_22705B7A4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 32);

  if (v0)
  {
    v4 = sub_22705B9C4;
  }

  else
  {
    v4 = sub_22705B8EC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22705B8EC()
{
  (*(v0 + 176))(*(v0 + 168), *(v0 + 128));
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22705B9C4()
{
  (*(v0 + 176))(*(v0 + 168), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22705BA90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A190();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22705BB50, v1, 0);
}

uint64_t sub_22705BB50()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_22705BCE0;

  return v8();
}

uint64_t sub_22705BCE0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_22705BEE4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_22705BE08;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22705BE08()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_0((v0[3] + 152), *(v0[3] + 176));
  sub_2271D7EE8();
  swift_getObjectType();
  sub_22766A180();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22705BEE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22705BF50()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_22766A8A0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22705C06C, v0, 0);
}

uint64_t sub_22705C06C()
{
  v28 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(*(v0 + 16) + 344);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F970], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    v8 = type metadata accessor for HealthDataSystem(0);
    v9 = sub_227063888(qword_28139AD20, type metadata accessor for HealthDataSystem, &unk_2276769A0);
    *v7 = v0;
    v7[1] = sub_22705C414;
    v10 = *(v0 + 16);
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v9, &unk_227676A20, v10, v8, v11, v9);
  }

  else
  {
    sub_22766A6D0();

    v12 = sub_22766B380();
    v13 = sub_22766C8B0();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 24);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136446210;
      *(v0 + 88) = v4;
      v20 = MEMORY[0x22AA958B0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
      v22 = sub_226E97AE8(v20, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_226E8E000, v12, v13, "Saving standalone workouts into HealthKit is not supported on platform: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    v23 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8], MEMORY[0x277D50BB0]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D50BA0], v23);
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_22705C414()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_22705C5B0;
  }

  else
  {
    v4 = sub_22705C540;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22705C540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22705C5B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22705C620(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_22766A5A0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC0, &qword_22767C990);
  v2[11] = swift_task_alloc();
  v5 = sub_227668390();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v2[14] = *(v6 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v7 = sub_22766B390();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22705C86C, a2, 0);
}

uint64_t sub_22705C86C()
{
  v1 = *(v0 + 56);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC8, &unk_227676A30);
  *v4 = v0;
  v4[1] = sub_22705C9D4;

  return v7(v0 + 40, sub_22705F9FC, 0, v5, v2, v3);
}

uint64_t sub_22705C9D4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_22705F008;
  }

  else
  {
    v4 = sub_22705CB00;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22705CB00(uint64_t a1)
{
  v28 = v1;
  v2 = v1[5];
  v1[33] = v2;
  if (*(v2 + 16))
  {
    sub_22766A6D0();

    v3 = sub_22766B380();
    v4 = sub_22766C8B0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[30];
    v8 = v1[22];
    v7 = v1[23];
    if (v5)
    {
      v26 = v1[30];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315138;
      sub_227063888(&unk_2813A5570, MEMORY[0x277D53480], MEMORY[0x277D53488]);
      v11 = sub_22766C610();
      v13 = sub_226E97AE8(v11, v12, &v27);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_226E8E000, v3, v4, "HealthDataSystem: Saving HealthKitStandaloneWorkoutJobs: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA9A450](v10, -1, -1);
      MEMORY[0x22AA9A450](v9, -1, -1);

      v14 = *(v7 + 8);
      v14(v26, v8);
    }

    else
    {

      v14 = *(v7 + 8);
      v14(v6, v8);
    }

    v1[34] = v14;
    v24 = sub_227050414(v2);
    v1[35] = v24;
    v25 = swift_task_alloc();
    v1[36] = v25;
    *v25 = v1;
    v25[1] = sub_22705CEC4;

    return sub_2271DD124(v24);
  }

  else
  {

    sub_22766A6D0();
    v15 = sub_22766B380();
    v16 = sub_22766C8B0();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[25];
    v19 = v1[22];
    v20 = v1[23];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226E8E000, v15, v16, "HealthDataSystem: No HealthKitStandaloneWorkoutJob to process", v21, 2u);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    (*(v20 + 8))(v18, v19);

    v22 = v1[1];

    return v22();
  }
}

uint64_t sub_22705CEC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[7];

    return MEMORY[0x2822009F8](sub_22705D110, v7, 0);
  }
}

uint64_t sub_22705D110()
{
  v67 = v0;
  v1 = *(v0 + 304);
  if (*(sub_227050714(*(v0 + 296)) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98C8, &qword_227674D18);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v66[0] = v2;

  sub_227062D7C(v3, 1, v66);
  if (v1)
  {

    return swift_unexpectedError();
  }

  else
  {
    v5 = *(v0 + 264);
    v6 = *(v0 + 56);

    *(v0 + 312) = v66[0];
    __swift_project_boxed_opaque_existential_0((v6 + 432), *(v6 + 456));
    *(v0 + 432) = 2;
    *(v0 + 320) = sub_226F19410();
    *(v0 + 328) = sub_226F19464();
    sub_22766A130();
    v7 = *(v5 + 32);
    *(v0 + 434) = v7;
    v8 = -1;
    v9 = -1 << v7;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v5 + 56);
    if (v10)
    {
      v11 = 0;
      v12 = *(v0 + 264);
LABEL_15:
      *(v0 + 336) = v10;
      *(v0 + 344) = v11;
      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v17 = *(v0 + 152);
      v18 = *(v0 + 96);
      v19 = *(v0 + 104);
      v20 = *(v12 + 48) + v19[9] * (__clz(__rbit64(v10)) | (v11 << 6));
      v21 = v19[2];
      *(v0 + 352) = v21;
      *(v0 + 360) = (v19 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21(v15, v20, v18);
      v22 = v19[4];
      *(v0 + 368) = v22;
      *(v0 + 376) = (v19 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v22(v16, v15, v18);
      sub_22766A6D0();
      v21(v17, v16, v18);
      v23 = sub_22766B380();
      v24 = sub_22766C8B0();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 272);
      v27 = *(v0 + 224);
      v28 = *(v0 + 176);
      v29 = *(v0 + 152);
      v31 = *(v0 + 96);
      v30 = *(v0 + 104);
      if (v25)
      {
        v65 = *(v0 + 272);
        v32 = swift_slowAlloc();
        v64 = v27;
        v33 = swift_slowAlloc();
        v66[0] = v33;
        *v32 = 136315138;
        v63 = v28;
        v34 = sub_227668350();
        v36 = v35;
        v62 = v24;
        v37 = *(v30 + 8);
        v37(v29, v31);
        v38 = sub_226E97AE8(v34, v36, v66);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_226E8E000, v23, v62, "HealthDataSystem: Saving HealthKitStandaloneWorkout %s.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x22AA9A450](v33, -1, -1);
        MEMORY[0x22AA9A450](v32, -1, -1);

        v65(v64, v63);
      }

      else
      {

        v37 = *(v30 + 8);
        v37(v29, v31);
        v26(v27, v28);
      }

      *(v0 + 384) = v37;
      v39 = *(v0 + 312);
      __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 256), *(*(v0 + 56) + 280));
      v40 = sub_227668360();
      if (*(v39 + 16) && (v41 = sub_226F491D4(v40), (v42 & 1) != 0))
      {
        v43 = v41;
        v44 = *(v0 + 88);
        v45 = *(*(v0 + 312) + 56);
        v46 = sub_227665100();
        v47 = *(v46 - 8);
        (*(v47 + 16))(v44, v45 + *(v47 + 72) * v43, v46);
        (*(v47 + 56))(v44, 0, 1, v46);
      }

      else
      {
        v48 = *(v0 + 88);
        v49 = sub_227665100();
        (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
      }

      v50 = swift_task_alloc();
      *(v0 + 392) = v50;
      *v50 = v0;
      v50[1] = sub_22705D8B8;
      v51 = *(v0 + 160);
      v52 = *(v0 + 88);

      return sub_2274F9DB4(v51, v52);
    }

    else
    {
      v13 = 0;
      v14 = ((63 - v9) >> 6) - 1;
      while (v14 != v13)
      {
        v11 = v13 + 1;
        v12 = *(v0 + 264);
        v10 = *(v12 + 8 * v13++ + 64);
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v53 = *(v0 + 56);

      __swift_project_boxed_opaque_existential_0(v53 + 19, v53[22]);
      sub_2271D7EE8();
      __swift_project_boxed_opaque_existential_0(v53 + 54, v53[57]);
      *(v0 + 433) = 2;
      sub_22766A130();
      sub_22766A710();
      v54 = sub_22766B380();
      v55 = sub_22766C8B0();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 272);
      v58 = *(v0 + 232);
      v59 = *(v0 + 176);
      if (v56)
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_226E8E000, v54, v55, "Finished processing standalone workout jobs", v60, 2u);
        MEMORY[0x22AA9A450](v60, -1, -1);
      }

      v57(v58, v59);

      v61 = *(v0 + 8);

      return v61();
    }
  }
}

uint64_t sub_22705D8B8()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 56);
  sub_226E97D1C(v3, &qword_27D7B9EC0, &qword_22767C990);
  if (v0)
  {
    v5 = sub_22705DD90;
  }

  else
  {
    v5 = sub_22705DA10;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22705DA10(uint64_t a1)
{
  v39 = v1;
  v2 = v1[44];
  v3 = v1[20];
  v4 = v1[18];
  v5 = v1[12];
  sub_22766A6D0();
  v2(v4, v3, v5);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[48];
  v10 = v1[34];
  v11 = v1[27];
  v37 = v1[22];
  v12 = v1[18];
  v13 = v1[12];
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36 = v10;
    v15 = swift_slowAlloc();
    v38 = v15;
    *v14 = 136315138;
    v33 = v11;
    v16 = sub_227668350();
    v18 = v17;
    v9(v12, v13);
    v19 = sub_226E97AE8(v16, v18, &v38);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v6, v7, "HealthDataSystem: Saved HealthKitStandaloneWorkout %s. Deleting from database.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v36(v33, v37);
  }

  else
  {

    v9(v12, v13);
    v10(v11, v37);
  }

  v34 = v1[46];
  v20 = v1[44];
  v21 = v1[20];
  v22 = v1[17];
  v24 = v1[13];
  v23 = v1[14];
  v25 = v1[12];
  v26 = v1[7];
  v27 = v26[18];
  __swift_project_boxed_opaque_existential_0(v26 + 14, v26[17]);
  v20(v22, v21, v25);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = swift_allocObject();
  v1[51] = v29;
  v34(v29 + v28, v22, v25);
  *(v29 + ((v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v30 = *(v27 + 24);

  v35 = (v30 + *v30);
  v31 = swift_task_alloc();
  v1[52] = v31;
  *v31 = v1;
  v31[1] = sub_22705E64C;

  return v35();
}

uint64_t sub_22705DD90(uint64_t a1)
{
  v90 = v1;
  v2 = *(v1 + 400);
  v3 = *(v1 + 352);
  v4 = *(v1 + 160);
  v5 = *(v1 + 120);
  v6 = *(v1 + 96);
  sub_22766A6D0();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v1 + 384);
    v83 = *(v1 + 192);
    v85 = *(v1 + 160);
    v87 = *(v1 + 272);
    v11 = *(v1 + 120);
    v12 = *(v1 + 96);
    v81 = *(v1 + 176);
    v13 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v89 = v79;
    *v13 = 136315394;
    v14 = sub_227668350();
    v16 = v15;
    v10(v11, v12);
    v17 = sub_226E97AE8(v14, v16, &v89);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v18 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v20 = sub_226E97AE8(v18, v19, &v89);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v8, v9, "HealthDataSystem: Error processing HealthKitStandaloneWorkout %s, error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v79, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v87(v83, v81);
    result = (v10)(v85, v12);
  }

  else
  {
    v22 = *(v1 + 384);
    v88 = *(v1 + 272);
    v23 = *(v1 + 192);
    v24 = *(v1 + 176);
    v25 = *(v1 + 160);
    v26 = *(v1 + 120);
    v27 = *(v1 + 96);

    v22(v26, v27);
    v88(v23, v24);
    result = (v22)(v25, v27);
  }

  v28 = *(v1 + 344);
  v29 = (*(v1 + 336) - 1) & *(v1 + 336);
  if (v29)
  {
    v30 = *(v1 + 264);
LABEL_10:
    *(v1 + 336) = v29;
    *(v1 + 344) = v28;
    v33 = *(v1 + 160);
    v32 = *(v1 + 168);
    v34 = *(v1 + 152);
    v35 = *(v1 + 96);
    v36 = *(v1 + 104);
    v37 = *(v30 + 48) + v36[9] * (__clz(__rbit64(v29)) | (v28 << 6));
    v38 = v36[2];
    *(v1 + 352) = v38;
    *(v1 + 360) = (v36 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38(v32, v37, v35);
    v39 = v36[4];
    *(v1 + 368) = v39;
    *(v1 + 376) = (v36 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v39(v33, v32, v35);
    sub_22766A6D0();
    v38(v34, v33, v35);
    v40 = sub_22766B380();
    v41 = sub_22766C8B0();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v1 + 272);
    v44 = *(v1 + 224);
    v45 = *(v1 + 176);
    v46 = *(v1 + 152);
    v48 = *(v1 + 96);
    v47 = *(v1 + 104);
    if (v42)
    {
      v86 = *(v1 + 272);
      v49 = swift_slowAlloc();
      v84 = v44;
      v50 = swift_slowAlloc();
      v89 = v50;
      *v49 = 136315138;
      v82 = v45;
      v51 = sub_227668350();
      v53 = v52;
      v80 = v41;
      v54 = *(v47 + 8);
      v54(v46, v48);
      v55 = sub_226E97AE8(v51, v53, &v89);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_226E8E000, v40, v80, "HealthDataSystem: Saving HealthKitStandaloneWorkout %s.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);

      v86(v84, v82);
    }

    else
    {

      v54 = *(v47 + 8);
      v54(v46, v48);
      v43(v44, v45);
    }

    *(v1 + 384) = v54;
    v56 = *(v1 + 312);
    __swift_project_boxed_opaque_existential_0((*(v1 + 56) + 256), *(*(v1 + 56) + 280));
    v57 = sub_227668360();
    if (*(v56 + 16) && (v58 = sub_226F491D4(v57), (v59 & 1) != 0))
    {
      v60 = v58;
      v61 = *(v1 + 88);
      v62 = *(*(v1 + 312) + 56);
      v63 = sub_227665100();
      v64 = *(v63 - 8);
      (*(v64 + 16))(v61, v62 + *(v64 + 72) * v60, v63);
      (*(v64 + 56))(v61, 0, 1, v63);
    }

    else
    {
      v65 = *(v1 + 88);
      v66 = sub_227665100();
      (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
    }

    v67 = swift_task_alloc();
    *(v1 + 392) = v67;
    *v67 = v1;
    v67[1] = sub_22705D8B8;
    v68 = *(v1 + 160);
    v69 = *(v1 + 88);

    return sub_2274F9DB4(v68, v69);
  }

  else
  {
    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      if (v31 >= (((1 << *(v1 + 434)) + 63) >> 6))
      {
        break;
      }

      v30 = *(v1 + 264);
      v29 = *(v30 + 8 * v31 + 56);
      ++v28;
      if (v29)
      {
        v28 = v31;
        goto LABEL_10;
      }
    }

    v70 = *(v1 + 56);

    __swift_project_boxed_opaque_existential_0(v70 + 19, v70[22]);
    sub_2271D7EE8();
    __swift_project_boxed_opaque_existential_0(v70 + 54, v70[57]);
    *(v1 + 433) = 2;
    sub_22766A130();
    sub_22766A710();
    v71 = sub_22766B380();
    v72 = sub_22766C8B0();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v1 + 272);
    v75 = *(v1 + 232);
    v76 = *(v1 + 176);
    if (v73)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_226E8E000, v71, v72, "Finished processing standalone workout jobs", v77, 2u);
      MEMORY[0x22AA9A450](v77, -1, -1);
    }

    v74(v75, v76);

    v78 = *(v1 + 8);

    return v78();
  }
}

uint64_t sub_22705E64C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_22705F138;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22705E774;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22705E774(uint64_t a1)
{
  v88 = v1;
  v2 = *(v1 + 352);
  v3 = *(v1 + 160);
  v4 = *(v1 + 128);
  v5 = *(v1 + 96);
  sub_22766A6D0();
  v2(v4, v3, v5);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 384);
  v10 = *(v1 + 272);
  v11 = *(v1 + 208);
  v85 = *(v1 + 176);
  v12 = *(v1 + 128);
  v13 = *(v1 + 96);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v82 = v10;
    v15 = swift_slowAlloc();
    v87 = v15;
    *v14 = 136315138;
    v80 = v11;
    v16 = sub_227668350();
    v18 = v17;
    v9(v12, v13);
    v19 = sub_226E97AE8(v16, v18, &v87);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v6, v7, "HealthDataSystem: Deleted HealthKitStandaloneWorkout %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v82(v80, v85);
  }

  else
  {

    v9(v12, v13);
    v10(v11, v85);
  }

  v20 = *(v1 + 352);
  v21 = *(v1 + 160);
  v22 = *(v1 + 136);
  v23 = *(v1 + 96);
  v25 = *(v1 + 72);
  v24 = *(v1 + 80);
  v26 = *(v1 + 64);
  v86 = *(v1 + 384);
  swift_getObjectType();
  v20(v22, v21, v23);
  sub_22766A590();
  sub_2276699D0();
  (*(v25 + 8))(v24, v26);
  result = v86(v21, v23);
  v28 = *(v1 + 344);
  v29 = (*(v1 + 336) - 1) & *(v1 + 336);
  if (v29)
  {
    v30 = *(v1 + 264);
LABEL_10:
    *(v1 + 336) = v29;
    *(v1 + 344) = v28;
    v33 = *(v1 + 160);
    v32 = *(v1 + 168);
    v34 = *(v1 + 152);
    v35 = *(v1 + 96);
    v36 = *(v1 + 104);
    v37 = *(v30 + 48) + v36[9] * (__clz(__rbit64(v29)) | (v28 << 6));
    v38 = v36[2];
    *(v1 + 352) = v38;
    *(v1 + 360) = (v36 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38(v32, v37, v35);
    v39 = v36[4];
    *(v1 + 368) = v39;
    *(v1 + 376) = (v36 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v39(v33, v32, v35);
    sub_22766A6D0();
    v38(v34, v33, v35);
    v40 = sub_22766B380();
    v41 = sub_22766C8B0();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v1 + 272);
    v44 = *(v1 + 224);
    v45 = *(v1 + 176);
    v46 = *(v1 + 152);
    v48 = *(v1 + 96);
    v47 = *(v1 + 104);
    if (v42)
    {
      v84 = *(v1 + 272);
      v49 = swift_slowAlloc();
      v83 = v44;
      v50 = swift_slowAlloc();
      v87 = v50;
      *v49 = 136315138;
      v81 = v45;
      v51 = sub_227668350();
      v53 = v52;
      v79 = v41;
      v54 = *(v47 + 8);
      v54(v46, v48);
      v55 = sub_226E97AE8(v51, v53, &v87);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_226E8E000, v40, v79, "HealthDataSystem: Saving HealthKitStandaloneWorkout %s.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);

      v84(v83, v81);
    }

    else
    {

      v54 = *(v47 + 8);
      v54(v46, v48);
      v43(v44, v45);
    }

    *(v1 + 384) = v54;
    v56 = *(v1 + 312);
    __swift_project_boxed_opaque_existential_0((*(v1 + 56) + 256), *(*(v1 + 56) + 280));
    v57 = sub_227668360();
    if (*(v56 + 16) && (v58 = sub_226F491D4(v57), (v59 & 1) != 0))
    {
      v60 = v58;
      v61 = *(v1 + 88);
      v62 = *(*(v1 + 312) + 56);
      v63 = sub_227665100();
      v64 = *(v63 - 8);
      (*(v64 + 16))(v61, v62 + *(v64 + 72) * v60, v63);
      (*(v64 + 56))(v61, 0, 1, v63);
    }

    else
    {
      v65 = *(v1 + 88);
      v66 = sub_227665100();
      (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
    }

    v67 = swift_task_alloc();
    *(v1 + 392) = v67;
    *v67 = v1;
    v67[1] = sub_22705D8B8;
    v68 = *(v1 + 160);
    v69 = *(v1 + 88);

    return sub_2274F9DB4(v68, v69);
  }

  else
  {
    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      if (v31 >= (((1 << *(v1 + 434)) + 63) >> 6))
      {
        break;
      }

      v30 = *(v1 + 264);
      v29 = *(v30 + 8 * v31 + 56);
      ++v28;
      if (v29)
      {
        v28 = v31;
        goto LABEL_10;
      }
    }

    v70 = *(v1 + 56);

    __swift_project_boxed_opaque_existential_0(v70 + 19, v70[22]);
    sub_2271D7EE8();
    __swift_project_boxed_opaque_existential_0(v70 + 54, v70[57]);
    *(v1 + 433) = 2;
    sub_22766A130();
    sub_22766A710();
    v71 = sub_22766B380();
    v72 = sub_22766C8B0();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v1 + 272);
    v75 = *(v1 + 232);
    v76 = *(v1 + 176);
    if (v73)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_226E8E000, v71, v72, "Finished processing standalone workout jobs", v77, 2u);
      MEMORY[0x22AA9A450](v77, -1, -1);
    }

    v74(v75, v76);

    v78 = *(v1 + 8);

    return v78();
  }
}

uint64_t sub_22705F008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22705F138()
{
  v89 = v0;

  v1 = *(v0 + 424);
  v2 = *(v0 + 352);
  v3 = *(v0 + 160);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  sub_22766A6D0();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 384);
    v82 = *(v0 + 192);
    v84 = *(v0 + 160);
    v86 = *(v0 + 272);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v80 = *(v0 + 176);
    v12 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88 = v78;
    *v12 = 136315394;
    v13 = sub_227668350();
    v15 = v14;
    v9(v10, v11);
    v16 = sub_226E97AE8(v13, v15, &v88);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v19 = sub_226E97AE8(v17, v18, &v88);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_226E8E000, v7, v8, "HealthDataSystem: Error processing HealthKitStandaloneWorkout %s, error: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v78, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    v86(v82, v80);
    result = (v9)(v84, v11);
  }

  else
  {
    v21 = *(v0 + 384);
    v87 = *(v0 + 272);
    v22 = *(v0 + 192);
    v23 = *(v0 + 176);
    v24 = *(v0 + 160);
    v25 = *(v0 + 120);
    v26 = *(v0 + 96);

    v21(v25, v26);
    v87(v22, v23);
    result = (v21)(v24, v26);
  }

  v27 = *(v0 + 344);
  v28 = (*(v0 + 336) - 1) & *(v0 + 336);
  if (v28)
  {
    v29 = *(v0 + 264);
LABEL_10:
    *(v0 + 336) = v28;
    *(v0 + 344) = v27;
    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = *(v0 + 152);
    v34 = *(v0 + 96);
    v35 = *(v0 + 104);
    v36 = *(v29 + 48) + v35[9] * (__clz(__rbit64(v28)) | (v27 << 6));
    v37 = v35[2];
    *(v0 + 352) = v37;
    *(v0 + 360) = (v35 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v31, v36, v34);
    v38 = v35[4];
    *(v0 + 368) = v38;
    *(v0 + 376) = (v35 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v38(v32, v31, v34);
    sub_22766A6D0();
    v37(v33, v32, v34);
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 272);
    v43 = *(v0 + 224);
    v44 = *(v0 + 176);
    v45 = *(v0 + 152);
    v47 = *(v0 + 96);
    v46 = *(v0 + 104);
    if (v41)
    {
      v85 = *(v0 + 272);
      v48 = swift_slowAlloc();
      v83 = v43;
      v49 = swift_slowAlloc();
      v88 = v49;
      *v48 = 136315138;
      v81 = v44;
      v50 = sub_227668350();
      v52 = v51;
      v79 = v40;
      v53 = *(v46 + 8);
      v53(v45, v47);
      v54 = sub_226E97AE8(v50, v52, &v88);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_226E8E000, v39, v79, "HealthDataSystem: Saving HealthKitStandaloneWorkout %s.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AA9A450](v49, -1, -1);
      MEMORY[0x22AA9A450](v48, -1, -1);

      v85(v83, v81);
    }

    else
    {

      v53 = *(v46 + 8);
      v53(v45, v47);
      v42(v43, v44);
    }

    *(v0 + 384) = v53;
    v55 = *(v0 + 312);
    __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 256), *(*(v0 + 56) + 280));
    v56 = sub_227668360();
    if (*(v55 + 16) && (v57 = sub_226F491D4(v56), (v58 & 1) != 0))
    {
      v59 = v57;
      v60 = *(v0 + 88);
      v61 = *(*(v0 + 312) + 56);
      v62 = sub_227665100();
      v63 = *(v62 - 8);
      (*(v63 + 16))(v60, v61 + *(v63 + 72) * v59, v62);
      (*(v63 + 56))(v60, 0, 1, v62);
    }

    else
    {
      v64 = *(v0 + 88);
      v65 = sub_227665100();
      (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
    }

    v66 = swift_task_alloc();
    *(v0 + 392) = v66;
    *v66 = v0;
    v66[1] = sub_22705D8B8;
    v67 = *(v0 + 160);
    v68 = *(v0 + 88);

    return sub_2274F9DB4(v67, v68);
  }

  else
  {
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return result;
      }

      if (v30 >= (((1 << *(v0 + 434)) + 63) >> 6))
      {
        break;
      }

      v29 = *(v0 + 264);
      v28 = *(v29 + 8 * v30 + 56);
      ++v27;
      if (v28)
      {
        v27 = v30;
        goto LABEL_10;
      }
    }

    v69 = *(v0 + 56);

    __swift_project_boxed_opaque_existential_0(v69 + 19, v69[22]);
    sub_2271D7EE8();
    __swift_project_boxed_opaque_existential_0(v69 + 54, v69[57]);
    *(v0 + 433) = 2;
    sub_22766A130();
    sub_22766A710();
    v70 = sub_22766B380();
    v71 = sub_22766C8B0();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 272);
    v74 = *(v0 + 232);
    v75 = *(v0 + 176);
    if (v72)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_226E8E000, v70, v71, "Finished processing standalone workout jobs", v76, 2u);
      MEMORY[0x22AA9A450](v76, -1, -1);
    }

    v73(v74, v75);

    v77 = *(v0 + 8);

    return v77();
  }
}

uint64_t sub_22705FA38@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = swift_allocObject();
  v15 = v10;
  v16 = v11;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;
  v17 = a4(100);
  if (v5)
  {
    swift_setDeallocating();

    v18 = qword_2813B2078;
    v19 = sub_22766A100();
    (*(*(v19 - 8) + 8))(v14 + v18, v19);
    return swift_deallocClassInstance();
  }

  else
  {
    v21 = v17;
    swift_setDeallocating();

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v14 + v22, v23);
    result = swift_deallocClassInstance();
    *a5 = v21;
  }

  return result;
}

void sub_22705FC68(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v4 = a1[3];
  v45 = a1;
  v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED0, qword_227676A40);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  v41[0] = v12;
  v41[1] = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  swift_getKeyPath();
  v44 = a2;
  v13 = sub_227668350();
  v15 = v14;
  v48[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v48[0] = v13;
  v48[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v48, v46, &unk_27D7BC990, &qword_227670A30);
  v17 = v47;
  if (v47)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v46, v47);
    v42 = v41;
    v19 = v9;
    v20 = v8;
    v21 = *(v17 - 8);
    v22 = MEMORY[0x28223BE20](v18);
    v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v17);
    v8 = v20;
    v9 = v19;
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED8 &unk_227676A90))];

  sub_226E97D1C(v48, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = v27;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v48, 0);
  swift_endAccess();

  v33 = sub_227543050(v10 + v28, v8, v9);
  if (v33)
  {
    if (v33 == 1)
    {

LABEL_9:
      __swift_project_boxed_opaque_existential_0((v43 + 152), *(v43 + 176));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_227670CD0;
      *(v34 + 32) = sub_227668350();
      *(v34 + 40) = v35;
      sub_2272D7CA8(1, v34, v45);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v36 = v48[5];
    v37 = sub_227284814(0);
    if (!v36)
    {
      v38 = v37;
      [v37 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v39 = sub_22766C9E0();
      v40 = sub_226EDAB24(v39);

      sub_226EDAB78(v40, v41[0]);

      goto LABEL_9;
    }
  }
}

char *sub_227060160()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);

  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  __swift_destroy_boxed_opaque_existential_0(v0 + 49);
  __swift_destroy_boxed_opaque_existential_0(v0 + 54);
  v1 = OBJC_IVAR____TtC15SeymourServices16HealthDataSystem_lock;
  v2 = sub_22766A9D0();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227060220()
{
  sub_227060160();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HealthDataSystem(uint64_t a1)
{
  result = qword_2813A3340;
  if (!qword_2813A3340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2270602A0(uint64_t a1)
{
  result = sub_22766A9D0();
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

uint64_t sub_2270603C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SeymourServices16HealthDataSystem_lock;
  swift_beginAccess();
  v4 = sub_22766A9D0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_227060448(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SeymourServices16HealthDataSystem_lock;
  swift_beginAccess();
  v4 = sub_22766A9D0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_22706053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F40, qword_227676C10);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270605EC, v3, 0);
}

uint64_t sub_2270605EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v4);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = *(v5 + 24);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_227060778;
  v9 = v0[8];
  v10 = v0[6];

  return (v12)(v9, sub_22706386C, v6, v10, v4, v5);
}

uint64_t sub_227060778()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_227060ABC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2270608A0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2270608A0()
{
  v1 = v0[7];
  sub_226E93170(v0[8], v1, &qword_27D7B9F40, qword_227676C10);
  v2 = sub_227664CA0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_226E97D1C(v0[7], &qword_27D7B9F40, qword_227676C10);
    v5 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8], MEMORY[0x277D50BB0]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50B98], v5);
    swift_willThrow();
    sub_226E97D1C(v4, &qword_27D7B9F40, qword_227676C10);
  }

  else
  {
    v8 = v0[7];
    v9 = v0[2];
    sub_226E97D1C(v0[8], &qword_27D7B9F40, qword_227676C10);
    (*(v3 + 32))(v9, v8, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_227060ABC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227060B30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF0, qword_227676AD8);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v35[0] = a2;
  v35[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v35, v33, &unk_27D7BC990, &qword_227670A30);
  v16 = v34;
  if (v34)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF8 qword_2276830E0))];

  sub_226E97D1C(v35, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = v24;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v35, 0);
  swift_endAccess();

  v29 = MEMORY[0x22AA99A00]();
  sub_2275448DC(a4);
  objc_autoreleasePoolPop(v29);
  swift_setDeallocating();

  v30 = qword_2813B2078;
  v31 = sub_22766A100();
  (*(*(v31 - 8) + 8))(v12 + v30, v31);
  return swift_deallocClassInstance();
}

uint64_t sub_227060F9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v93 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v81 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  __swift_project_boxed_opaque_existential_0((a2 + 352), *(a2 + 376));
  result = sub_227362748(a1, v21);
  if (!v5)
  {
    v85 = a3;
    v86 = v12;
    v23 = v93;
    v87 = a5;
    v88 = 0;
    sub_226E93170(v21, v18, &qword_27D7B93D8, &qword_227673E10);
    v24 = sub_227668A00();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v18, 1, v24) == 1)
    {
      sub_226E97D1C(v18, &qword_27D7B93D8, &qword_227673E10);
LABEL_4:
      result = sub_226E97D1C(v21, &qword_27D7B93D8, &qword_227673E10);
      *v87 = MEMORY[0x277D84FA0];
      return result;
    }

    v84 = v15;
    v26 = sub_2276689C0();
    v28 = v27;
    (*(v25 + 8))(v18, v24);
    if ((v28 & 1) == 0 || v26 != 1)
    {
      goto LABEL_4;
    }

    v29 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v29 + 16);
    v33 = v29[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF0, qword_227676AD8);
    v34 = swift_allocObject();
    v35 = v30;
    v36 = v31;

    sub_22766A070();
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 32) = v32;
    *(v34 + 40) = v33;
    swift_getKeyPath();
    sub_2276674D0();
    *(&v92 + 1) = MEMORY[0x277D839F8];
    *&v91 = v37;
    v38 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v83 = v38;
    v39 = sub_22766C820();
    sub_226E93170(&v91, v89, &unk_27D7BC990, &qword_227670A30);
    v40 = v90;
    if (v90)
    {
      v41 = __swift_project_boxed_opaque_existential_0(v89, v90);
      v85 = &v81;
      v42 = *(v40 - 8);
      v43 = MEMORY[0x28223BE20](v41);
      v45 = &v81 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v45, v43);
      v46 = sub_22766D170();
      (*(v42 + 8))(v45, v40);
      __swift_destroy_boxed_opaque_existential_0(v89);
    }

    else
    {
      v46 = 0;
    }

    v47 = v23;
    v82 = objc_opt_self();
    v48 = [v82 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF8, qword_2276830E0);
    v49 = [objc_allocWithZone(v81) initWithLeftExpression:v39 rightExpression:v48 modifier:0 type:3 options:0];

    sub_226E97D1C(&v91, &unk_27D7BC990, &qword_227670A30);
    v50 = qword_2813B2078;
    swift_beginAccess();
    v51 = v49;
    v85 = v50;
    v52 = sub_22766A080();
    v54 = v53;
    MEMORY[0x22AA985C0]();
    if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
      v47 = v23;
    }

    sub_22766C3A0();
    v52(&v91, 0);
    swift_endAccess();

    swift_getKeyPath();
    v55 = sub_227662750();
    v56 = *(v55 - 8);
    v57 = v84;
    (*(v56 + 16))(v84, v47, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    v58 = v86;
    sub_226E93170(v57, v86, &qword_27D7B9690, qword_227670B50);
    if ((*(v56 + 48))(v58, 1, v55) == 1)
    {
      sub_226E97D1C(v58, &qword_27D7B9690, qword_227670B50);
      v91 = 0u;
      v92 = 0u;
    }

    else
    {
      *(&v92 + 1) = v55;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v91);
      (*(v56 + 32))(boxed_opaque_existential_0, v58, v55);
    }

    v60 = sub_22766C820();
    sub_226E93170(&v91, v89, &unk_27D7BC990, &qword_227670A30);
    v61 = v90;
    if (v90)
    {
      v62 = __swift_project_boxed_opaque_existential_0(v89, v90);
      v63 = *(v61 - 8);
      v64 = MEMORY[0x28223BE20](v62);
      v66 = &v81 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v66, v64);
      v67 = sub_22766D170();
      (*(v63 + 8))(v66, v61);
      v57 = v84;
      __swift_destroy_boxed_opaque_existential_0(v89);
    }

    else
    {
      v67 = 0;
    }

    v68 = [v82 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v69 = [objc_allocWithZone(v81) initWithLeftExpression:v60 rightExpression:v68 modifier:0 type:3 options:0];

    sub_226E97D1C(v57, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(&v91, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v70 = v69;
    v71 = sub_22766A080();
    v73 = v72;
    MEMORY[0x22AA985C0]();
    if (*((*v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v71(&v91, 0);
    swift_endAccess();

    v74 = v88;
    v75 = sub_227236AB8(100);
    if (v74)
    {
      sub_226E97D1C(v21, &qword_27D7B93D8, &qword_227673E10);
      swift_setDeallocating();

      v76 = qword_2813B2078;
      v77 = sub_22766A100();
      (*(*(v77 - 8) + 8))(v34 + v76, v77);
      return swift_deallocClassInstance();
    }

    else
    {
      v78 = v75;
      sub_226E97D1C(v21, &qword_27D7B93D8, &qword_227673E10);
      swift_setDeallocating();

      v79 = qword_2813B2078;
      v80 = sub_22766A100();
      (*(*(v80 - 8) + 8))(v34 + v79, v80);
      result = swift_deallocClassInstance();
      *v87 = v78;
    }
  }

  return result;
}

uint64_t sub_227061A24(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A7B0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227668E30();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[12] = v6;
  v2[13] = *(v6 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227061BB0, v1, 0);
}

uint64_t sub_227061BB0(uint64_t a1)
{
  v40 = v1;
  v2 = v1[11];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[2];
  sub_22766A6D0();
  v6 = *(v4 + 16);
  v1[15] = v6;
  v1[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38 = v6;
  v6(v2, v5, v3);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[13];
  v10 = v1[14];
  v12 = v1[11];
  v13 = v1[12];
  v15 = v1[7];
  v14 = v1[8];
  if (v9)
  {
    v37 = v8;
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    sub_227063888(&qword_27D7B9F08, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
    v33 = v10;
    v34 = v13;
    v17 = sub_22766D140();
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = sub_226E97AE8(v17, v19, &v39);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v7, v37, "Inserting %{mask.hash}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v11 + 8))(v33, v34);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v22 = v1[9];
  v21 = v1[10];
  v24 = v1[7];
  v23 = v1[8];
  v25 = v1[2];
  v26 = v1[3];
  v27 = v26[18];
  __swift_project_boxed_opaque_existential_0(v26 + 14, v26[17]);
  v38(v21, v25, v24);
  v28 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v29 = swift_allocObject();
  v1[17] = v29;
  (*(v23 + 32))(v29 + v28, v21, v24);
  *(v29 + ((v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v30 = *(v27 + 24);

  v36 = (v30 + *v30);
  v31 = swift_task_alloc();
  v1[18] = v31;
  *v31 = v1;
  v31[1] = sub_227061F70;

  return v36();
}

uint64_t sub_227061F70()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_2270621CC;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_227062098;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227062098()
{
  v9 = v0[15];
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  __swift_project_boxed_opaque_existential_0((v0[3] + 152), *(v0[3] + 176));
  sub_2271D7EE8();
  swift_getObjectType();
  v9(v1, v6, v3);
  sub_22766A7A0();
  sub_2276699D0();
  (*(v4 + 8))(v2, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2270621CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227062264(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F38, &qword_227676C00);
  v8 = sub_227668E30();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v11 + v10, a2, v8);
  sub_22756211C(v11, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a3 + 152), *(a3 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    *(v13 + 32) = sub_227668E00();
    *(v13 + 40) = v14;
    sub_2272D7C7C(0, v13, a1);
  }

  return result;
}

uint64_t sub_22706240C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), void (*a7)(void, uint64_t, void *))
{
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = a4(a2, v15[1], *(v15 + 16), v15[3]);
  if (!v7)
  {
    __swift_project_boxed_opaque_existential_0((a3 + 152), *(a3 + 176));
    v17 = sub_227050A1C(a2, a5, a6);
    a7(0, v17, a1);
  }

  return result;
}

uint64_t sub_2270624E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  __swift_project_boxed_opaque_existential_0((a2 + 352), *(a2 + 376));
  result = sub_227362748(a1, v20);
  if (!v4)
  {
    v60 = a3;
    v61 = a4;
    v66 = 0;
    sub_226E93170(v20, v17, &qword_27D7B93D8, &qword_227673E10);
    v22 = sub_227668A00();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) == 1)
    {
      sub_226E97D1C(v17, &qword_27D7B93D8, &qword_227673E10);
LABEL_4:
      result = sub_226E97D1C(v20, &qword_27D7B93D8, &qword_227673E10);
      *v61 = MEMORY[0x277D84FA0];
      return result;
    }

    v24 = sub_2276689C0();
    v26 = v25;
    (*(v23 + 8))(v17, v22);
    if ((v26 & 1) == 0 || v24 != 1)
    {
      goto LABEL_4;
    }

    v27 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v27 + 16);
    v31 = v27[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F28, &qword_227676BC8);
    v32 = swift_allocObject();
    v33 = v28;
    v34 = v29;

    sub_22766A070();
    *(v32 + 16) = v33;
    *(v32 + 24) = v34;
    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    swift_getKeyPath();
    v35 = sub_227662750();
    v36 = *(v35 - 8);
    (*(v36 + 16))(v14, v60, v35);
    (*(v36 + 56))(v14, 0, 1, v35);
    sub_226E93170(v14, v11, &qword_27D7B9690, qword_227670B50);
    if ((*(v36 + 48))(v11, 1, v35) == 1)
    {
      sub_226E97D1C(v11, &qword_27D7B9690, qword_227670B50);
      v64 = 0u;
      v65 = 0u;
    }

    else
    {
      *(&v65 + 1) = v35;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
      (*(v36 + 32))(boxed_opaque_existential_0, v11, v35);
    }

    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v60 = sub_22766C820();
    sub_226E93170(&v64, v62, &unk_27D7BC990, &qword_227670A30);
    v38 = v63;
    if (v63)
    {
      v39 = __swift_project_boxed_opaque_existential_0(v62, v63);
      v40 = *(v38 - 8);
      v41 = MEMORY[0x28223BE20](v39);
      v43 = &v60 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v43, v41);
      v44 = sub_22766D170();
      (*(v40 + 8))(v43, v38);
      __swift_destroy_boxed_opaque_existential_0(v62);
    }

    else
    {
      v44 = 0;
    }

    v45 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F30, qword_227683060));
    v47 = v60;
    v48 = [v46 initWithLeftExpression:v60 rightExpression:v45 modifier:0 type:3 options:0];

    sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(&v64, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v49 = v48;
    v50 = sub_22766A080();
    v52 = v51;
    MEMORY[0x22AA985C0]();
    if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v50(&v64, 0);
    swift_endAccess();

    v53 = v66;
    v54 = sub_227236DB8(100);
    if (v53)
    {
      sub_226E97D1C(v20, &qword_27D7B93D8, &qword_227673E10);
      swift_setDeallocating();

      v55 = qword_2813B2078;
      v56 = sub_22766A100();
      (*(*(v56 - 8) + 8))(v32 + v55, v56);
      return swift_deallocClassInstance();
    }

    else
    {
      v57 = v54;
      sub_226E97D1C(v20, &qword_27D7B93D8, &qword_227673E10);
      swift_setDeallocating();

      v58 = qword_2813B2078;
      v59 = sub_22766A100();
      (*(*(v59 - 8) + 8))(v32 + v58, v59);
      result = swift_deallocClassInstance();
      *v61 = v57;
    }
  }

  return result;
}

uint64_t sub_227062CE0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22705C620(a1, v1);
}

void sub_227062D7C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_227665100();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE0, &qword_227676AA0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v53 - v14);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_22;
  }

  v55 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v59 = *(v13 + 72);
  v61 = a1;
  v54 = v17;
  sub_226E93170(a1 + v17, &v53 - v14, &qword_27D7B9EE0, &qword_227676AA0);
  v56 = v8;
  v18 = *(v8 + 32);
  v67 = *v15;
  v19 = v67;
  v58 = v16;
  v62 = v7;
  v63 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v21 = sub_226F491D4(v19);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (v20[3] < v26)
  {
    sub_226FE8B88(v26, a2 & 1);
    v21 = sub_226F491D4(v19);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      sub_22766D220();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v31 = v21;
  sub_226FF334C();
  v21 = v31;
  if (v27)
  {
LABEL_9:
    v29 = swift_allocError();
    swift_willThrow();
    v66 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v56 + 8))(v63, v62);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = *a3;
  *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  *(v32[6] + 8 * v21) = v19;
  v33 = v32[7];
  v57 = *(v56 + 72);
  v34 = v62;
  v18((v33 + v57 * v21), v63, v62);
  v35 = v32[2];
  v25 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v25)
  {
    v32[2] = v36;
    v37 = v61;
    if (v60 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v61 + v59 + v54;
    v39 = 1;
    while (v39 < *(v37 + 16))
    {
      sub_226E93170(v38, v15, &qword_27D7B9EE0, &qword_227676AA0);
      v40 = v34;
      v67 = *v15;
      v41 = v67;
      v18(v63, v15 + v58, v40);
      v42 = *a3;
      v43 = sub_226F491D4(v41);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v25 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v25)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_226FE8B88(v47, 1);
        v43 = sub_226F491D4(v41);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      *(v50[6] + 8 * v43) = v41;
      v34 = v62;
      v18((v50[7] + v57 * v43), v63, v62);
      v51 = v50[2];
      v25 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v39;
      v50[2] = v52;
      v38 += v59;
      v37 = v61;
      if (v60 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_227063300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE0, &qword_227676AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2270633F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_227667500() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227662750() - 8);
  return sub_227060F9C(a1, *(v2 + 16), (v2 + v6), v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_2270634D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227056924(a1, v1);
}

uint64_t sub_2270635B4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_37Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227063888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2270638F0()
{
  v63 = v0;
  v1 = v0[27];
  v2 = v0[24];

  sub_22766A730();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = v0[18];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62[0] = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v13 = sub_226E97AE8(v11, v12, v62);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "JetPack host not found in bag: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v6(v7, v8);
  }

  else
  {
    v14 = v0[20];
    v15 = v0[18];
    v16 = v0[14];

    v14(v15, v16);
  }

  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[9];
  v20 = sub_2276693B0();
  v21 = "https://apps.mzstatic.com/content/2253eb7bf7674787835ae45311b2349e/";
  if (v20)
  {
    v21 = "https://apps.mzstatic.com/content/c42f3d5dc9ee4cfd830d6a654ac8656a/";
  }

  v22 = v21 - 32;
  sub_227662470();
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_226FB1188(v0[9]);
    sub_22766A730();

    v23 = sub_22766B380();
    v24 = sub_22766C890();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[20];
    v27 = v0[16];
    v28 = v0[14];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 141558274;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2080;
      v31 = sub_226E97AE8(0xD000000000000043, v22 | 0x8000000000000000, v62);

      *(v29 + 14) = v31;
      _os_log_impl(&dword_226E8E000, v23, v24, "Fallback URL invalid: %{mask.hash}s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    else
    {
    }

    v26(v27, v28);
    v52 = v0[27];
    sub_226F6649C();
    swift_allocError();
    *v53 = 9;
    swift_willThrow();

    swift_unknownObjectRelease();

    v54 = v0[1];
  }

  else
  {
    v33 = v0[12];
    v32 = v0[13];
    v34 = v0[10];
    v35 = v0[11];
    v36 = v0[9];

    v37 = *(v35 + 32);
    v37(v32, v36, v34);
    sub_22766A730();
    (*(v35 + 16))(v33, v32, v34);
    v38 = sub_22766B380();
    v59 = sub_22766C8B0();
    v39 = os_log_type_enabled(v38, v59);
    v60 = v0[27];
    v40 = v0[20];
    v41 = v0[17];
    v61 = v0[14];
    v43 = v0[11];
    v42 = v0[12];
    v44 = v0[10];
    if (v39)
    {
      v58 = v37;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v62[0] = v46;
      *v45 = 141558274;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2080;
      sub_226EA2B70(&qword_28139BDD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v56 = v41;
      v57 = v40;
      v47 = sub_22766D140();
      v49 = v48;
      (*(v43 + 8))(v42, v44);
      v50 = sub_226E97AE8(v47, v49, v62);

      *(v45 + 14) = v50;
      _os_log_impl(&dword_226E8E000, v38, v59, "Using fallback URL: %{mask.hash}s", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      v51 = v45;
      v37 = v58;
      MEMORY[0x22AA9A450](v51, -1, -1);

      swift_unknownObjectRelease();
      v57(v56, v61);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v43 + 8))(v42, v44);
      v40(v41, v61);
    }

    v37(v0[7], v0[13], v0[10]);

    v54 = v0[1];
  }

  return v54();
}

uint64_t sub_227063F6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227063FF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_227064054()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22706411C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2270641C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];

  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2270642BC()
{
  v1 = sub_22766B620();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227064384, 0, 0);
}

uint64_t sub_227064384()
{
  sub_22766B680();
  sub_22766B670();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  sub_22766B610();
  (*(v4 + 16))(v2, v1, v3);
  sub_22766B650();
  swift_allocObject();
  v0[6] = sub_22766B630();

  (*(v4 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_227064528;

  return MEMORY[0x28217E7D0]();
}

uint64_t sub_227064528()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2270646B4;
  }

  else
  {
    v2 = sub_22706463C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22706463C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2270646B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for IncomingScriptRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingScriptRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_227064878(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_226EA8DA8(*a1);
  v5 = v4;
  if (v3 == sub_226EA8DA8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_227064900()
{
  v1 = *v0;
  sub_22766D370();
  sub_226EA8DA8(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227064964(uint64_t a1)
{
  sub_226EA8DA8(*v1);
  sub_22766C100();
}

uint64_t sub_2270649B8(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  sub_226EA8DA8(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_227064A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226EA68D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_227064A48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226EA8DA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227064A78()
{
  result = qword_28139A428;
  if (!qword_28139A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A428);
  }

  return result;
}

uint64_t sub_227064B60@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CB8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227064BD8(uint64_t a1)
{
  v2 = MEMORY[0x277D50180];
  *(a1 + 24) = sub_227064C5C(&qword_2813A57F0, MEMORY[0x277D50180], &unk_22768D998);
  result = sub_227064C5C(&qword_2813A57E8, v2, MEMORY[0x277D50188]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227064C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227064CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D78];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227064D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227669350();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227064D40(uint64_t a1)
{
  *(a1 + 24) = sub_227064DA8(&qword_2813A5508, &unk_227680918);
  result = sub_227064DA8(&qword_2813A5500, MEMORY[0x277D53BA8]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227064DA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227669360();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_227064DEC(void *a1)
{
  v2 = [a1 topic];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 topicIdentifier];
  if (!v4)
  {

LABEL_5:
    v6 = sub_227664DD0();
    sub_227065498(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v4;
  sub_22766C000();

  [a1 duration];
  [a1 startTime];
  sub_22706539C();
  sub_227663AE0();
  sub_227664610();
LABEL_6:
}

void *static CommentaryEvent.representativeSamples()()
{
  v18 = sub_227664650();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5D274();
  v3 = sub_22766BE70();
  v4 = sub_22766BE70();
  sub_227065348();
  sub_22706539C();
  v5 = sub_227663B50();
  v6 = sub_22766C090();
  v30 = v4;
  v31[0] = v3;
  v31[1] = v31;
  v31[2] = &v30;
  v28 = v6;
  v29 = v5;
  v31[3] = &v29;
  v31[4] = &v28;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F60, &qword_227676E18);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v20 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v21 = v20;
  v22 = sub_226F5BF60(&qword_27D7B9F68, &qword_27D7B9F60, &qword_227676E18);
  v23 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_226F1F3A8(0, v8, 0);
    v10 = 0;
    v11 = 0;
    v12 = v19;
    v15 = v0 + 32;
    v17 = v7;
    v16 = v8;
    while (v11 < *(v7 + 16))
    {
      sub_226EB396C(*(v7 + v10 + 48), *(v7 + v10 + 56), *(v7 + v10 + 64));

      sub_227664610();
      v19 = v12;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1F3A8((v13 > 1), v14 + 1, 1);
        v12 = v19;
      }

      ++v11;
      *(v12 + 16) = v14 + 1;
      result = (*(v0 + 32))(v12 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v14, v2, v18);
      v10 += 56;
      v7 = v17;
      if (v16 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_227065348()
{
  result = qword_27D7B9F50;
  if (!qword_27D7B9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9F50);
  }

  return result;
}

unint64_t sub_22706539C()
{
  result = qword_27D7B9F58;
  if (!qword_27D7B9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9F58);
  }

  return result;
}

uint64_t sub_227065440(uint64_t a1)
{
  result = sub_227065498(&qword_27D7B9F70, MEMORY[0x277D50A68], &protocol conformance descriptor for CommentaryEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227065498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2270654E0(void *a1)
{
  v2 = sub_227664600();
  v4 = v3;
  v6 = v5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F78, &qword_22768BA10);
  sub_227663AD0();
  v7 = sub_22766BFD0();
  sub_226EB2DFC(v2, v4, v6);

  [a1 setTopic_];

  sub_227664640();
  [a1 setStartTime_];
  sub_227664620();
  [a1 setDuration_];
  sub_2276645F0();
  v8 = sub_22766BFD0();

  [a1 setTopicIdentifier_];
}

uint64_t sub_2270655F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D70];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_227065678@<X0>(_DWORD *a1@<X8>)
{
  sub_227669020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F80, &qword_227676E88);
  result = sub_227663AD0();
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    *a1 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2270656F8(uint64_t a1)
{
  *(a1 + 24) = sub_227065760(&qword_2813A5520, &unk_2276788A0);
  result = sub_227065760(&qword_2813A5518, MEMORY[0x277D539C8]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227065760(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227669040();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2270657A4()
{
  v1 = [*v0 allAuthKitAccounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_227065808();
  v3 = sub_22766C2C0();

  return v3;
}

unint64_t sub_227065808()
{
  result = qword_2813989F0;
  if (!qword_2813989F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813989F0);
  }

  return result;
}

uint64_t sub_227065864()
{
  sub_22766D370();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2270658B8(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_227065900(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22766D190();
  }
}

unint64_t sub_227065934()
{
  result = qword_27D7B9F88;
  if (!qword_27D7B9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9F88);
  }

  return result;
}

unint64_t sub_227065988(uint64_t a1)
{
  result = sub_2270659B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2270659B0()
{
  result = qword_27D7B9F90;
  if (!qword_27D7B9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9F90);
  }

  return result;
}

uint64_t sub_227065A04(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EE30(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EE30((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_227065AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_227065B44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_227065B90(uint64_t a1)
{
  v3 = type metadata accessor for SyncZoneChangeWindow(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2276694E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x277D84F90];
  sub_226F1EF50(0, v9, 0);
  v10 = v42;
  v11 = a1 + 56;
  result = sub_22766CC90();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 64;
  v32 = v9;
  v33 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_22706D188(*(a1 + 48) + *(v39 + 72) * v14, v38, type metadata accessor for SyncZoneChangeWindow);
    (*v36)(v8, v19, v5);
    sub_22706D20C(v19, type metadata accessor for SyncZoneChangeWindow);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_226F1EF50((v21 > 1), v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_226EB526C(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
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

uint64_t sub_227065F58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F98, &unk_227677050);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v41 = v5;
  v36 = v1;
  v48 = MEMORY[0x277D84F90];
  sub_226F1F050(0, v8, 0);
  v9 = v48;
  v10 = a1 + 64;
  result = sub_22766CC90();
  v12 = result;
  v13 = 0;
  v47 = *(a1 + 36);
  v37 = a1 + 72;
  v38 = v8;
  v39 = a1 + 64;
  v40 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_24;
    }

    if (v47 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v45 = v13;
    v46 = v9;
    v16 = *(a1 + 56);
    v17 = (*(a1 + 48) + 16 * v12);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v16 + 4 * v12);
    swift_bridgeObjectRetain_n();
    v21 = v41;
    sub_2276694B0();
    v9 = sub_2276694E0();
    v22 = *(v9 - 8);
    if ((*(v22 + 48))(v21, 1, v9) == 1)
    {
      sub_22706CF74(v21);
      v34 = sub_22766AF20();
      sub_22706D140(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
      swift_allocError();
      *v35 = v18;
      v35[1] = v19;
      (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D544A0], v34);
      swift_willThrow();

      return v9;
    }

    v23 = *(v44 + 48);
    v24 = v42;
    (*(v22 + 32))();

    *(v24 + v23) = v20;
    v9 = v46;
    v48 = v46;
    v26 = *(v46 + 16);
    v25 = *(v46 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_226F1F050((v25 > 1), v26 + 1, 1);
      v9 = v48;
    }

    *(v9 + 16) = v26 + 1;
    result = sub_226E95D18(v24, v9 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26, &qword_27D7B9F98, &unk_227677050);
    a1 = v40;
    v14 = 1 << *(v40 + 32);
    if (v12 >= v14)
    {
      goto LABEL_26;
    }

    v10 = v39;
    v27 = *(v39 + 8 * v15);
    if ((v27 & (1 << v12)) == 0)
    {
      goto LABEL_27;
    }

    if (v47 != *(v40 + 36))
    {
      goto LABEL_28;
    }

    v28 = v27 & (-2 << (v12 & 0x3F));
    if (v28)
    {
      v14 = __clz(__rbit64(v28)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v15 << 6;
      v30 = v15 + 1;
      v31 = (v37 + 8 * v15);
      while (v30 < (v14 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_226EB526C(v12, v47, 0);
          v14 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v12, v47, 0);
    }

LABEL_4:
    v13 = v45 + 1;
    v12 = v14;
    if (v45 + 1 == v38)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_227066408(uint64_t a1)
{
  v3 = type metadata accessor for SyncZoneChangeWindow(0);
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B130();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v42 = v1;
    v35 = v8;
    v43 = MEMORY[0x277D84F90];
    sub_226F1FEC8(0, v9, 0);
    v40 = a1 + 56;
    v41 = v43;
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v33 = a1;
    v34 = v6 + 32;
    v31 = a1 + 64;
    v32 = v9;
    v36 = v6;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v40 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v16 = v37;
      v17 = sub_22706D188(*(a1 + 48) + *(v38 + 72) * v11, v37, type metadata accessor for SyncZoneChangeWindow);
      MEMORY[0x28223BE20](v17);
      *(&v31 - 2) = v16;
      sub_22706D140(&qword_281399218, MEMORY[0x277D54550], MEMORY[0x277D54548]);
      v18 = v35;
      v19 = v42;
      sub_22766AD80();
      v42 = v19;
      sub_22706D20C(v16, type metadata accessor for SyncZoneChangeWindow);
      v20 = v41;
      v43 = v41;
      v22 = *(v41 + 16);
      v21 = *(v41 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1FEC8((v21 > 1), v22 + 1, 1);
        v20 = v43;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v41 = v20;
      result = (*(v36 + 32))(v20 + v23 + *(v36 + 72) * v22, v18, v5);
      a1 = v33;
      v13 = 1 << *(v33 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v24 = *(v40 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (v39 != *(v33 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v32;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v14 = v32;
        v28 = (v31 + 8 * v15);
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_226EB526C(v11, v39, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v11, v39, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227066830(uint64_t a1)
{
  v2 = v1;
  v49 = sub_2276694E0();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B130();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v46 = v8;
  v56 = MEMORY[0x277D84F90];
  sub_226F1FEC8(0, v11, 0);
  v55 = v56;
  v13 = a1 + 56;
  result = sub_22766CC90();
  v15 = result;
  v16 = 0;
  v47 = v4;
  v43 = v4 + 8;
  v44 = v4 + 16;
  v41 = a1;
  v42 = v7 + 32;
  v38 = a1 + 64;
  v39 = v11;
  v45 = v7;
  v40 = a1 + 56;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_22;
    }

    v53 = 1 << v15;
    v54 = v15 >> 6;
    v50 = v16;
    v52 = *(a1 + 36);
    v19 = v47;
    v18 = v48;
    v20 = *(a1 + 48) + *(v47 + 72) * v15;
    v21 = v49;
    v22 = (*(v47 + 16))(v48, v20, v49);
    MEMORY[0x28223BE20](v22);
    *(&v38 - 2) = v18;
    sub_22706D140(&qword_281399218, MEMORY[0x277D54550], MEMORY[0x277D54548]);
    v23 = v10;
    v24 = v46;
    sub_22766AD80();
    v51 = v2;
    (*(v19 + 8))(v18, v21);
    v25 = v55;
    v56 = v55;
    v27 = *(v55 + 16);
    v26 = *(v55 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_226F1FEC8((v26 > 1), v27 + 1, 1);
      v25 = v56;
    }

    *(v25 + 16) = v27 + 1;
    v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v55 = v25;
    v29 = v25 + v28 + *(v45 + 72) * v27;
    v30 = v23;
    result = (*(v45 + 32))(v29, v23, v24);
    a1 = v41;
    v17 = 1 << *(v41 + 32);
    if (v15 >= v17)
    {
      goto LABEL_23;
    }

    v13 = v40;
    v31 = *(v40 + 8 * v54);
    if ((v31 & v53) == 0)
    {
      goto LABEL_24;
    }

    if (v52 != *(v41 + 36))
    {
      goto LABEL_25;
    }

    v32 = v31 & (-2 << (v15 & 0x3F));
    if (v32)
    {
      v17 = __clz(__rbit64(v32)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v10 = v30;
    }

    else
    {
      v33 = v54 << 6;
      v34 = v54 + 1;
      v35 = (v38 + 8 * v54);
      v10 = v30;
      while (v34 < (v17 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_226EB526C(v15, v52, 0);
          v17 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v15, v52, 0);
    }

LABEL_4:
    v2 = v51;
    v16 = v50 + 1;
    v15 = v17;
    if (v50 + 1 == v39)
    {
      return v55;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_227066C94(uint64_t a1)
{
  v34 = sub_2276694E0();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_2276694C0();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227066F9C(uint64_t a1)
{
  v2 = sub_22766B4E0();
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SyncEncryptionKey(0);
  MEMORY[0x28223BE20](v49);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2276695E0();
  v10 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v55 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v47 = v5;
    v57 = MEMORY[0x277D84F90];
    sub_226F1FF08(0, v12, 0);
    v53 = a1 + 56;
    v54 = v57;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v45 = v7 + 16;
    v46 = (v7 + 8);
    v43 = v10 + 32;
    v44 = v10;
    v39 = a1 + 64;
    v40 = v12;
    v41 = v7;
    v42 = v6;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v19 = v14 >> 6;
      if ((*(v53 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      v20 = *(a1 + 36);
      v51 = v15;
      v52 = v20;
      v21 = *(v7 + 16);
      v21(v9, *(a1 + 48) + *(v7 + 72) * v14, v6);
      v22 = v47;
      v21(v47, v9, v6);
      sub_22766B4D0();
      v23 = v6;
      v24 = v49;
      sub_22766B4A0();
      sub_2276627C0();
      v25 = (v22 + *(v24 + 24));
      *v25 = 1886217588;
      v25[1] = 0xE400000000000000;
      [sub_2273C0F60() setEtag_];
      v26 = v56;
      sub_2276695F0();
      if (v26)
      {
        sub_22706D20C(v22, type metadata accessor for SyncEncryptionKey);
        (*v46)(v9, v23);
      }

      v27 = a1;
      v56 = 0;
      sub_22706D20C(v22, type metadata accessor for SyncEncryptionKey);
      (*v46)(v9, v23);
      v28 = v54;
      v57 = v54;
      v30 = *(v54 + 16);
      v29 = *(v54 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F1FF08((v29 > 1), v30 + 1, 1);
        v28 = v57;
      }

      *(v28 + 16) = v30 + 1;
      v31 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v54 = v28;
      result = (*(v44 + 32))(v28 + v31 + *(v44 + 72) * v30, v55, v48);
      v16 = 1 << *(v27 + 32);
      if (v14 >= v16)
      {
        goto LABEL_26;
      }

      v32 = *(v53 + 8 * v19);
      if ((v32 & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      a1 = v27;
      if (v52 != *(v27 + 36))
      {
        goto LABEL_28;
      }

      v33 = v32 & (-2 << (v14 & 0x3F));
      if (v33)
      {
        v16 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v7 = v41;
        v6 = v42;
        v17 = v40;
        v18 = v51;
      }

      else
      {
        v34 = v19 << 6;
        v35 = v19 + 1;
        v36 = (v39 + 8 * v19);
        v7 = v41;
        v6 = v42;
        v17 = v40;
        while (v35 < (v16 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_226EB526C(v14, v52, 0);
            v16 = __clz(__rbit64(v37)) + v34;
            goto LABEL_20;
          }
        }

        result = sub_226EB526C(v14, v52, 0);
LABEL_20:
        v18 = v51;
      }

      v15 = v18 + 1;
      v14 = v16;
      if (v15 == v17)
      {
        return v54;
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
    __break(1u);
  }

  return result;
}

uint64_t sub_2270674E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B1F0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22766B160();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_22766B390();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227067670, 0, 0);
}

uint64_t sub_227067670()
{
  v1 = v0[3];
  v2 = sub_227065B90(v0[2]);

  v0[15] = sub_227006648(v2, v1);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_227067738;

  return sub_22706BF3C();
}

uint64_t sub_227067738()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_227067FF4;
  }

  else
  {
    v2 = sub_22706784C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22706784C(uint64_t a1)
{
  v26 = v1;
  sub_22766A6B0();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    sub_2276694E0();
    sub_22706D140(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v10 = sub_22766C610();
    v12 = sub_226E97AE8(v10, v11, &v25);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v2, v3, "Fetching changesets from server for zones: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[18] = v13;
  v14 = v1[15];
  v15 = v1[4];
  v16 = v1[2];
  v17 = swift_task_alloc();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  sub_22706D140(&qword_281399210, MEMORY[0x277D54560], MEMORY[0x277D54540]);
  sub_22766AD80();

  v18 = v15[5];
  v19 = v15[6];
  __swift_project_boxed_opaque_existential_0(v15 + 2, v18);
  v24 = (*(v19 + 24) + **(v19 + 24));
  v20 = swift_task_alloc();
  v1[19] = v20;
  *v20 = v1;
  v20[1] = sub_227067B80;
  v21 = v1[10];
  v22 = v1[7];

  return v24(v22, v21, v18, v19);
}

uint64_t sub_227067B80()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_227068088;
  }

  else
  {
    v2 = sub_227067C94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227067C94()
{
  v32 = v0;
  v1 = v0[20];
  sub_22766B1E0();
  v2 = type metadata accessor for SyncZoneChangeset(0);
  sub_22706D140(qword_28139A9B0, type metadata accessor for SyncZoneChangeset, &unk_227686488);
  v3 = sub_22766C300();
  if (v1)
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v3;
    sub_22766A6B0();

    v10 = sub_22766B380();
    v11 = sub_22766C8B0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[18];
    v14 = v0[10];
    v27 = v0[11];
    v28 = v0[13];
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[6];
    v29 = v0[5];
    v30 = v0[7];
    if (v12)
    {
      v26 = v0[10];
      v18 = swift_slowAlloc();
      v25 = v15;
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 134218242;
      *(v18 + 4) = *(v9 + 16);

      *(v18 + 12) = 2080;
      v20 = MEMORY[0x22AA98660](v9, v2);
      v24 = v13;
      v22 = sub_226E97AE8(v20, v21, &v31);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_226E8E000, v10, v11, "Received %ld Changesets from server: %s", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);

      v24(v28, v27);
      (*(v17 + 8))(v30, v29);
      (*(v16 + 8))(v26, v25);
    }

    else
    {

      v13(v28, v27);
      (*(v17 + 8))(v30, v29);
      (*(v16 + 8))(v14, v15);
    }

    v23 = v0[1];

    return v23(v9);
  }
}

uint64_t sub_227067FF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227068088()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22706812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_227066408(a2);
  sub_22766B150();
  v4 = sub_227066830(a3);
  v5 = sub_22766B140();
  sub_227461614(v4);
  return v5(&v7, 0);
}

uint64_t sub_2270681C0(uint64_t a1, uint64_t a2)
{
  sub_2276694C0();
  sub_22766B120();
  v3 = type metadata accessor for SyncZoneChangeWindow(0);
  sub_226F5E0B4(*(a2 + *(v3 + 20)), *(a2 + *(v3 + 20) + 8));
  return sub_22766B110();
}

uint64_t sub_227068234(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B290();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22766B210();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227068354, 0, 0);
}

uint64_t sub_227068354()
{
  v1 = v0[3];
  v2 = v0[4];
  *(swift_task_alloc() + 16) = v1;
  sub_22706D140(&qword_281399208, MEMORY[0x277D54590], MEMORY[0x277D54580]);
  sub_22766AD80();

  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  v9 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_227068514;
  v6 = v0[10];
  v7 = v0[7];

  return v9(v7, v6, v3, v4);
}

uint64_t sub_227068514()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_227068800;
  }

  else
  {
    v2 = sub_227068628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227068628()
{
  v14 = v0;
  v1 = v0[12];
  v2 = sub_22766B280();
  v3 = sub_227065F58(v2);

  if (v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];
  }

  else
  {
    if (*(v3 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98C0, &qword_227674D10);
      v6 = sub_22766D010();
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    v13 = v6;
    sub_22706CA30(v3, 1, &v13);
    v8 = v0[9];
    v7 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    sub_227664450();
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);

    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_227068800()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227068890(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276695E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_22766B0A0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v2[12] = swift_task_alloc();
  v5 = sub_2276694E0();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_22766B2C0();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8488, &qword_227670A60);
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v8 = sub_22766B2E0();
  v2[22] = v8;
  v2[23] = *(v8 - 8);
  v2[24] = swift_task_alloc();
  v9 = sub_22766B270();
  v2[25] = v9;
  v2[26] = *(v9 - 8);
  v2[27] = swift_task_alloc();
  v10 = sub_22766B390();
  v2[28] = v10;
  v2[29] = *(v10 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227068C30, 0, 0);
}

uint64_t sub_227068C30()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[31] = v1;
    *v1 = v0;
    v1[1] = sub_227068DB4;

    return sub_22706BF3C();
  }

  else
  {

    v3 = v0[1];
    v4 = MEMORY[0x277D84F90];

    return v3(v4);
  }
}

uint64_t sub_227068DB4()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227068F94, 0, 0);
  }
}

uint64_t sub_227068F94(uint64_t a1)
{
  v27 = v1;
  sub_22766A6B0();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[29];
  v5 = v1[30];
  v7 = v1[28];
  if (v4)
  {
    v8 = v1[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v11 = type metadata accessor for SyncSubmissionChangeset(0);
    v12 = MEMORY[0x22AA98660](v8, v11);
    v14 = sub_226E97AE8(v12, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v2, v3, "Sending changesets to server: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v15 = v1[32];
  v16 = v1[2];
  *(swift_task_alloc() + 16) = v16;
  sub_22706D140(&qword_2813991F8, MEMORY[0x277D545B8], MEMORY[0x277D54598]);
  sub_22766AD80();

  if (v15)
  {

    v17 = v1[1];

    return v17();
  }

  else
  {
    v19 = v1[3];
    v20 = v19[5];
    v21 = v19[6];
    __swift_project_boxed_opaque_existential_0(v19 + 2, v20);
    v25 = (*(v21 + 56) + **(v21 + 56));
    v22 = swift_task_alloc();
    v1[33] = v22;
    *v22 = v1;
    v22[1] = sub_227069340;
    v23 = v1[27];
    v24 = v1[24];

    return v25(v24, v23, v20, v21);
  }
}

uint64_t sub_227069340()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_227069C8C;
  }

  else
  {
    v2 = sub_227069454;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227069454()
{
  v1 = sub_22766B2D0();
  v2 = *(v1 + 16);
  if (v2)
  {
    v77 = v0[19];
    v78 = v0[20];
    v3 = v0[17];
    v4 = v0[14];
    v5 = v0[10];
    v6 = v0[5];
    v94 = MEMORY[0x277D84F90];
    result = sub_226F1F070(0, v2, 0);
    v8 = 0;
    v82 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = v94;
    v81 = (v4 + 48);
    v75 = (v4 + 16);
    v76 = (v4 + 32);
    v86 = v6;
    v92 = (v6 + 8);
    v73 = (v4 + 8);
    v74 = (v5 + 8);
    v83 = v3;
    v84 = (v3 + 8);
    v79 = v2;
    v80 = v1;
    while (1)
    {
      if (v8 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = v0[12];
      v10 = v0[13];
      (*(v83 + 16))(v0[18], v82 + *(v83 + 72) * v8, v0[16]);
      sub_22766B2B0();
      sub_2276694B0();
      if ((*v81)(v11, 1, v10) == 1)
      {
        break;
      }

      v87 = v8;
      v88 = v9;
      v12 = v0[21];
      v13 = v0[15];
      v14 = v0[13];
      (*v76)(v13, v0[12], v14);
      (*v75)(v12, v13, v14);
      sub_22766B2A0();
      v15 = sub_22766B060();
      v16 = MEMORY[0x277D84F90];
      v95 = MEMORY[0x277D84F90];
      v17 = *(v15 + 16);
      if (v17)
      {
        sub_22706C980();
        v18 = v15 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        v19 = *(v86 + 72);
        v20 = *(v86 + 16);
        v21 = v16;
        do
        {
          v22 = v0[8];
          v23 = v0[6];
          v24 = v0[4];
          v20(v22, v18, v24);
          v20(v23, v22, v24);
          v25 = sub_22766CAE0();
          v26 = (*v92)(v22, v24);
          if (v25)
          {
            MEMORY[0x22AA985C0](v26);
            if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22766C360();
            }

            sub_22766C3A0();
            v21 = v95;
          }

          v18 += v19;
          --v17;
        }

        while (v17);

        v16 = MEMORY[0x277D84F90];
      }

      else
      {

        v21 = v16;
      }

      v27 = sub_226F3E740(v21);

      v28 = sub_22766B040();
      v96 = v16;
      v29 = *(v28 + 16);
      if (v29)
      {
        v85 = v27;
        sub_22706C980();
        v30 = v28 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        v31 = *(v86 + 72);
        v32 = *(v86 + 16);
        v33 = v16;
        do
        {
          v35 = v0[6];
          v34 = v0[7];
          v36 = v0[4];
          v32(v34, v30, v36);
          v32(v35, v34, v36);
          v37 = sub_22766CAE0();
          v38 = (*v92)(v34, v36);
          if (v37)
          {
            MEMORY[0x22AA985C0](v38);
            if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22766C360();
            }

            sub_22766C3A0();
            v33 = v96;
          }

          v30 += v31;
          --v29;
        }

        while (v29);

        v27 = v85;
        v16 = v33;
      }

      else
      {
      }

      v90 = v0[18];
      v40 = v0[15];
      v39 = v0[16];
      v41 = v0[13];
      v42 = v0[11];
      v43 = v0[9];
      v44 = (v0[21] + *(v77 + 48));
      v45 = sub_226F3E740(v16);

      sub_22766B080();
      v47 = v46;
      (*v74)(v42, v43);
      (*v73)(v40, v41);
      (*v84)(v90, v39);
      *v44 = v27;
      v44[1] = v45;
      v44[2] = v47;
      v9 = v88;
      v49 = *(v88 + 16);
      v48 = *(v88 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_226F1F070((v48 > 1), v49 + 1, 1);
        v9 = v88;
      }

      v8 = v87 + 1;
      v50 = v0[21];
      *(v9 + 16) = v49 + 1;
      result = sub_226E95D18(v50, v9 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v49, &qword_27D7B8488, &qword_227670A60);
      v1 = v80;
      if (v87 + 1 == v79)
      {
        v67 = v0[26];
        v66 = v0[27];
        v69 = v0[24];
        v68 = v0[25];
        v70 = v0[22];
        v71 = v0[23];

        (*(v71 + 8))(v69, v70);
        (*(v67 + 8))(v66, v68);
        v89 = v9;
        goto LABEL_31;
      }
    }

    v57 = v0[26];
    v58 = v0[24];
    v91 = v0[25];
    v93 = v0[27];
    v60 = v0[22];
    v59 = v0[23];
    v61 = v0[18];
    v62 = v0[16];
    v63 = v0[12];

    sub_22706CF74(v63);
    sub_226F1893C();
    swift_allocError();
    *v64 = 9;
    swift_willThrow();
    (*v84)(v61, v62);
    (*(v59 + 8))(v58, v60);
    (*(v57 + 8))(v93, v91);

    v65 = v0[1];

    return v65();
  }

  else
  {
    v52 = v0[26];
    v51 = v0[27];
    v54 = v0[24];
    v53 = v0[25];
    v55 = v0[22];
    v56 = v0[23];

    (*(v56 + 8))(v54, v55);
    (*(v52 + 8))(v51, v53);
    v89 = MEMORY[0x277D84F90];
LABEL_31:

    v72 = v0[1];

    return v72(v89);
  }
}

uint64_t sub_227069C8C()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227069DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SyncSubmissionChangeset(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B250();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (!v14)
  {
    return sub_22766B260();
  }

  v23 = a1;
  v29 = MEMORY[0x277D84F90];
  sub_226F1FEE8(0, v14, 0);
  v28 = v29;
  v15 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v24 = *(v7 + 72);
  v25 = v11 + 32;
  while (1)
  {
    v27 = v14;
    v16 = sub_22706D188(v15, v9, type metadata accessor for SyncSubmissionChangeset);
    MEMORY[0x28223BE20](v16);
    *(&v23 - 2) = v9;
    sub_22706D140(&qword_281399200, MEMORY[0x277D545A8], MEMORY[0x277D545A0]);
    sub_22766AD80();
    if (v3)
    {
      break;
    }

    v26 = 0;
    v17 = v9;
    sub_22706D20C(v9, type metadata accessor for SyncSubmissionChangeset);
    v18 = v28;
    v29 = v28;
    v20 = *(v28 + 16);
    v19 = *(v28 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_226F1FEE8((v19 > 1), v20 + 1, 1);
      v18 = v29;
    }

    *(v18 + 16) = v20 + 1;
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v28 = v18;
    (*(v11 + 32))(v18 + v21 + *(v11 + 72) * v20, v13, v10);
    v15 += v24;
    v14 = v27 - 1;
    v9 = v17;
    v3 = v26;
    if (v27 == 1)
    {
      return sub_22766B260();
    }
  }

  sub_22706D20C(v9, type metadata accessor for SyncSubmissionChangeset);
}

uint64_t sub_22706A0E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22766B0A0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22766AFD0();
  MEMORY[0x28223BE20](v4);
  sub_2276694C0();
  sub_22766AFB0();
  sub_22706D140(&qword_281399228, MEMORY[0x277D54508], MEMORY[0x277D54500]);
  sub_22766AD80();
  sub_22766B230();
  type metadata accessor for SyncSubmissionChangeset(0);
  sub_22706D140(&qword_281399220, MEMORY[0x277D54530], MEMORY[0x277D54528]);
  result = sub_22766AD80();
  if (!v2)
  {
    return sub_22766B220();
  }

  return result;
}

uint64_t sub_22706A2EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SyncSubmissionChangeset(0);
  type metadata accessor for SyncEncryptionKey(0);
  sub_227662770();
  sub_22766AFB0();

  return sub_22766AFC0();
}

uint64_t sub_22706A37C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(type metadata accessor for SyncEncryptionKey(0) - 8);
  v2[5] = swift_task_alloc();
  v3 = sub_2276695E0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_22766B320();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_22766B300();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22706A5B4, 0, 0);
}

uint64_t sub_22706A5B4()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[19] = v1;
    *v1 = v0;
    v1[1] = sub_22706A6E4;

    return sub_22706BF3C();
  }

  else
  {

    v3 = v0[1];
    v4 = MEMORY[0x277D84FA0];

    return v3(v4);
  }
}

uint64_t sub_22706A6E4()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22706A870, 0, 0);
  }
}

uint64_t sub_22706A870(uint64_t a1)
{
  v25 = v1;
  sub_22766A6B0();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[17];
  v5 = v1[18];
  v7 = v1[16];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    sub_2276694E0();
    sub_22706D140(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v10 = sub_22766C610();
    v12 = sub_226E97AE8(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v2, v3, "Updating Encryption Keys for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v13 = v1[20];
  v14 = v1[2];
  *(swift_task_alloc() + 16) = v14;
  sub_22706D140(&qword_2813991F0, MEMORY[0x277D545D0], MEMORY[0x277D545C0]);
  sub_22766AD80();

  if (v13)
  {

    v15 = v1[1];

    return v15();
  }

  else
  {
    v17 = v1[3];
    v18 = v17[5];
    v19 = v17[6];
    __swift_project_boxed_opaque_existential_0(v17 + 2, v18);
    v23 = (*(v19 + 64) + **(v19 + 64));
    v20 = swift_task_alloc();
    v1[21] = v20;
    *v20 = v1;
    v20[1] = sub_22706AC1C;
    v21 = v1[15];
    v22 = v1[12];

    return v23(v22, v21, v18, v19);
  }
}

uint64_t sub_22706AC1C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_22706B240;
  }

  else
  {
    v2 = sub_22706AD30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22706AD30()
{
  v4 = sub_22766B310();
  v5 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v43 = v4;
  v6 = *(v4 + 16);
  if (!v6)
  {

    v15 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_9;
    }

LABEL_14:
    v16 = sub_22766CD20();
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_15:

    goto LABEL_25;
  }

  v7 = *(v2 + 56);
  v8 = sub_22706C980();
  v9 = *(v7 + 16);
  v1 = v7 + 16;
  v46 = v9;
  v47 = v8;
  v10 = v43 + ((*(v1 + 64) + 32) & ~*(v1 + 64));
  v45 = *(v1 + 56);
  v44 = MEMORY[0x277D84F90];
  do
  {
    v11 = *(v2 + 64);
    v12 = *(v2 + 72);
    v0 = v2;
    v3 = *(v2 + 48);
    (v46)(v12, v10, v3);
    (v46)(v11, v12, v3);
    v13 = sub_22766CAE0();
    v14 = (*(v1 - 8))(v12, v3);
    if (v13)
    {
      MEMORY[0x22AA985C0](v14);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v44 = v48;
    }

    v10 += v45;
    --v6;
  }

  while (v6);

  v15 = v44;
  v5 = MEMORY[0x277D84F90];
  if (v44 >> 62)
  {
    goto LABEL_14;
  }

LABEL_9:
  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_10:
  v49 = v5;
  sub_226F1EF70(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    goto LABEL_40;
  }

  v3 = *(v2 + 32);
  v1 = *(v2 + 176);
  v46 = v15 & 0xFFFFFFFFFFFFFF8;
  v47 = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x22AA991A0](0, v15);
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_39;
    }

    v18 = *(v15 + 32);
  }

  sub_2273C12F4(v18, *(v2 + 40));
  if (v1)
  {
    v20 = *(v2 + 112);
    v19 = *(v2 + 120);
    v22 = *(v2 + 96);
    v21 = *(v2 + 104);
    v24 = *(v2 + 80);
    v23 = *(v2 + 88);

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);

    v25 = *(v2 + 8);

    return v25();
  }

  v0 = *(v5 + 16);
  v17 = *(v5 + 24);
  v1 = v0 + 1;
  if (v0 >= v17 >> 1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v27 = v2;
    v28 = *(v2 + 40);
    *(v5 + 16) = v1;
    v29 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v3 = *(v3 + 72);
    sub_22706C9CC(v28, v5 + v29 + v3 * v0);
    if (v16 == 1)
    {
      break;
    }

    v0 = 5;
    while (1)
    {
      v2 = v0 - 3;
      if (__OFADD__(v0 - 4, 1))
      {
        break;
      }

      if (v47)
      {
        v38 = MEMORY[0x22AA991A0]();
      }

      else
      {
        v17 = *(v46 + 16);
        if (v0 - 4 >= v17)
        {
          goto LABEL_39;
        }

        v38 = *(v15 + 8 * v0);
      }

      sub_2273C12F4(v38, *(v27 + 40));
      v39 = v15;
      v49 = v5;
      v41 = *(v5 + 16);
      v40 = *(v5 + 24);
      v1 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_226F1EF70((v40 > 1), v41 + 1, 1);
      }

      v42 = *(v27 + 40);
      *(v5 + 16) = v1;
      sub_22706C9CC(v42, v5 + v29 + v3 * v41);
      ++v0;
      v15 = v39;
      if (v2 == v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_226F1EF70((v17 > 1), v1, 1);
    v5 = v49;
  }

LABEL_24:

  v2 = v27;
LABEL_25:
  v31 = *(v2 + 112);
  v30 = *(v2 + 120);
  v33 = *(v2 + 96);
  v32 = *(v2 + 104);
  v34 = *(v2 + 80);
  v35 = *(v2 + 88);
  v36 = sub_226F3DDAC(v5);

  (*(v35 + 8))(v33, v34);
  (*(v31 + 8))(v30, v32);

  v37 = *(v2 + 8);

  return v37(v36);
}

uint64_t sub_22706B240()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22706B304(uint64_t a1, uint64_t a2)
{
  result = sub_227066F9C(a2);
  if (!v2)
  {
    return sub_22766B2F0();
  }

  return result;
}

uint64_t sub_22706B33C()
{
  v1[25] = v0;
  v2 = sub_227662750();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = sub_227667900();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[35] = v5;
  v1[36] = *(v5 - 8);
  v1[37] = swift_task_alloc();
  v6 = sub_227665AD0();
  v1[38] = v6;
  v1[39] = *(v6 - 8);
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22706B584, 0, 0);
}

uint64_t sub_22706B584()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 200) + 56), *(*(v0 + 200) + 80));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    sub_226E92AB8((v0 + 56), v0 + 96);
    sub_226E91B50(v0 + 96, v0 + 136);
    v3 = swift_allocObject();
    sub_226E92AB8((v0 + 136), v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    sub_226F099DC();
    v4 = swift_allocError();
    *v5 = 0;
    *(swift_allocObject() + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v6 = *(v0 + 296);
  v7 = swift_task_alloc();
  *(v0 + 328) = v7;
  *(v7 + 16) = "SeymourServices/SyncServer.swift";
  *(v7 + 24) = 32;
  *(v7 + 32) = 2;
  *(v7 + 40) = 151;
  *(v7 + 48) = v6;
  v8 = swift_task_alloc();
  *(v0 + 336) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
  *v8 = v0;
  v8[1] = sub_22706B7F0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637E4, v7, v9);
}

uint64_t sub_22706B7F0()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = sub_22706BC24;
  }

  else
  {
    v5 = v2[36];
    v4 = v2[37];
    v6 = v2[35];

    (*(v5 + 8))(v4, v6);
    v3 = sub_22706B948;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22706B948()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  sub_2276678E0();
  (*(v6 + 8))(v2, v5, v6);
  (*(v3 + 8))(v2, v4);
  v7 = swift_task_alloc();
  v0[44] = v7;
  *(v7 + 16) = "SeymourServices/SyncServer.swift";
  *(v7 + 24) = 32;
  *(v7 + 32) = 2;
  *(v7 + 40) = 153;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_22706BAD0;
  v9 = v0[40];
  v10 = v0[38];

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637FC, v7, v10);
}

uint64_t sub_22706BAD0()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {

    v3 = sub_22706BE78;
  }

  else
  {
    v5 = v2[33];
    v4 = v2[34];
    v6 = v2[32];

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = sub_22706BCE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22706BC24()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22706BCE0(uint64_t a1)
{
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  sub_227662740();
  v5 = sub_227665AA0();
  (*(v3 + 8))(v2, v4);
  v7 = v1[39];
  v6 = v1[40];
  v8 = v1[38];
  if (v5)
  {
    (*(v7 + 8))(v1[40], v1[38]);
  }

  else
  {
    sub_226F1893C();
    swift_allocError();
    *v10 = 15;
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_22706BE78()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22706BF3C()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_22766A8A0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22706C064, 0, 0);
}

uint64_t sub_22706C064()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F988], v3);
  v5 = sub_226EC9A38(v1, v4);

  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_22706C208;

    return sub_22706B33C();
  }

  else
  {
    v8 = v0[3];
    v9 = v8[15];
    v10 = v8[16];
    __swift_project_boxed_opaque_existential_0(v8 + 12, v9);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_22706C3D4;

    return MEMORY[0x2821AFC28](v9, v10);
  }
}

uint64_t sub_22706C208()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_22706C700;
  }

  else
  {
    v2 = sub_22706C31C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22706C31C()
{
  v1 = *(v0 + 24);
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_0(v1 + 12, v2);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_22706C3D4;

  return MEMORY[0x2821AFC28](v2, v3);
}

uint64_t sub_22706C3D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22706C530, 0, 0);
  }
}

uint64_t sub_22706C530()
{
  v1 = *(v0 + 112);
  v2 = *MEMORY[0x277CB8990];
  v3 = [v1 isProvisionedForDataclass_];
  v4 = [v1 isEnabledForDataclass_];
  if (!v3 || (v4 & 1) != 0)
  {

    v13 = *(v0 + 8);
  }

  else
  {
    sub_22766A6B0();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "Not Syncing: Not Enabled.", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v8 = *(v0 + 112);
    v9 = *(v0 + 56);
    v10 = *(v0 + 32);
    v11 = *(v0 + 40);

    (*(v11 + 8))(v9, v10);
    sub_226F1893C();
    swift_allocError();
    *v12 = 15;
    swift_willThrow();

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_22706C700(uint64_t a1)
{
  v22 = v1;
  v2 = v1[12];
  sub_22766A6B0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[12];
    v8 = v1[5];
    v7 = v1[6];
    v9 = v1[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    v1[2] = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v13 = sub_22766C060();
    v15 = sub_226E97AE8(v13, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Not Syncing: No Subscription: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v1[5];
    v16 = v1[6];
    v18 = v1[4];

    (*(v17 + 8))(v16, v18);
  }

  swift_willThrow();

  v19 = v1[1];

  return v19();
}

uint64_t sub_22706C8F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_22706C980()
{
  result = qword_281398A20;
  if (!qword_281398A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A20);
  }

  return result;
}

uint64_t sub_22706C9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncEncryptionKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22706CA30(uint64_t a1, char a2, void *a3)
{
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F98, &unk_227677050);
  MEMORY[0x28223BE20](v11);
  v15 = v52 - v14;
  v57 = *(a1 + 16);
  if (!v57)
  {
    goto LABEL_22;
  }

  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v56 = *(v13 + 72);
  v58 = a1;
  v52[0] = v17;
  v52[1] = v3;
  sub_22706D074(a1 + v17, v52 - v14);
  v53 = v8;
  v59 = *(v8 + 32);
  v60 = v7;
  v59(v10, v15, v7);
  v55 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_226F39E30(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_226FE16B0(v25, a2 & 1);
    v20 = sub_226F39E30(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_22766D220();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_226FEFEFC();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v63 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v53 + 8))(v10, v60);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v32 = v31[6];
  v54 = *(v53 + 72);
  v33 = v20;
  v59((v32 + v54 * v20), v10, v60);
  *(v31[7] + 8 * v33) = v18;
  v34 = v31[2];
  v24 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v24)
  {
    v31[2] = v35;
    v36 = v58;
    if (v57 == 1)
    {
LABEL_22:

      return;
    }

    v37 = v58 + v56 + v52[0];
    v38 = 1;
    while (v38 < *(v36 + 16))
    {
      sub_22706D074(v37, v15);
      v59(v10, v15, v60);
      v39 = *&v15[v55];
      v40 = *a3;
      v41 = sub_226F39E30(v10);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v24 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v24)
      {
        goto LABEL_23;
      }

      v46 = v42;
      if (v40[3] < v45)
      {
        sub_226FE16B0(v45, 1);
        v41 = sub_226F39E30(v10);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v46)
      {
        goto LABEL_9;
      }

      v48 = *a3;
      *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v49 = v41;
      v59((v48[6] + v54 * v41), v10, v60);
      *(v48[7] + 8 * v49) = v39;
      v50 = v48[2];
      v24 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v38;
      v48[2] = v51;
      v37 += v56;
      v36 = v58;
      if (v57 == v38)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_22706CF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22706D074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F98, &unk_227677050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22706D140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22706D188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22706D20C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ServerConnectionType(uint64_t a1)
{
  result = qword_2813A0AC8;
  if (!qword_2813A0AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22706D2E0(uint64_t a1)
{
  v1 = sub_2276624A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_22706D33C@<X0>(uint64_t a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_22766C0C0();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    if (v11 == 0x6C61636F6CLL && v12 == 0xE500000000000000 || (sub_22766D190() & 1) != 0)
    {

      v15 = sub_2276624A0();
      (*(*(v15 - 8) + 56))(a4, 1, 2, v15);
    }

    else
    {
      if ((v13 != 0x65746F6D6572 || v14 != 0xE600000000000000) && (sub_22766D190() & 1) == 0)
      {
        sub_227662470();

        sub_22706D914(v10, v7);
        v24 = sub_2276624A0();
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(v7, 1, v24) == 1)
        {
          v26 = type metadata accessor for ServerConnectionType(0);
          return (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
        }

        else
        {
          (*(v25 + 32))(a4, v7, v24);
          (*(v25 + 56))(a4, 0, 2, v24);
          v27 = type metadata accessor for ServerConnectionType(0);
          return (*(*(v27 - 8) + 56))(a4, 0, 1, v27);
        }
      }

      v23 = sub_2276624A0();
      (*(*(v23 - 8) + 56))(a4, 2, 2, v23);
    }

    v16 = type metadata accessor for ServerConnectionType(0);
    v17 = *(*(v16 - 8) + 56);
    v18 = v16;
    v19 = a4;
    v20 = 0;
  }

  else
  {
    v21 = type metadata accessor for ServerConnectionType(0);
    v17 = *(*(v21 - 8) + 56);
    v18 = v21;
    v19 = a4;
    v20 = 1;
  }

  return v17(v19, v20, 1, v18);
}

uint64_t sub_22706D6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_2276624A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerConnectionType(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22706D8B0(v4, v11);
  if ((*(v6 + 48))(v11, 2, v5))
  {
    return sub_22766C0D0();
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_227662390();
  sub_22766C0D0();

  return (*(v6 + 8))(v8, v5);
}