uint64_t sub_2273C54D4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *__swift_project_boxed_opaque_existential_0((v1 + 664), *(v1 + 688));
  v15 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v14 + v15, &v33);
  if (v34)
  {
    sub_226E92AB8(&v33, v32);
    sub_226E91B50(v32, v31);
    v16 = swift_allocObject();
    sub_226E92AB8(v31, v16 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    sub_226F099DC();
    v17 = swift_allocError();
    *v18 = 0;
    *(swift_allocObject() + 16) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v3 + 16))(v5, v8, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v5, v2);
  v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_2273C644C;
  v21[1] = 0;
  sub_227665AD0();
  sub_227669270();
  (*(v3 + 8))(v8, v2);
  v23 = v28;
  v22 = v29;
  (*(v9 + 16))(v28, v13, v29);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273C6568;
  v26[1] = 0;
  sub_227669270();
  return (*(v9 + 8))(v13, v22);
}

uint64_t sub_2273C5940@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  MEMORY[0x28223BE20](v10);
  v63 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v12 - 8);
  v55 = v12;
  v53 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = *a1;
  v15 = v50;
  v51 = &v46 - v16;
  v17 = a2[75];
  v18 = a2[76];
  __swift_project_boxed_opaque_existential_0(a2 + 72, v17);
  v19 = swift_allocObject();
  v47 = a2;
  *(v19 + 16) = a2;
  *(v19 + 24) = v15;

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v20 = v9;
  sub_226ECF5D8(sub_2273CBA40, v19, v17, v62, v18, v9);

  v59 = *(v5 + 16);
  v21 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v49;
  v59(v21, v9, v49);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v48 = v23 + v6;
  v58 = v23;
  v24 = (v23 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v57 = *(v5 + 32);
  v57(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2273C9684;
  v26[1] = 0;
  v27 = v63;
  sub_227669270();
  v28 = *(v5 + 8);
  v60 = v5 + 8;
  v61 = v28;
  v29 = v20;
  v28(v20, v22);
  v30 = swift_allocObject();
  v31 = v47;
  *(v30 + 16) = sub_2273CBA5C;
  *(v30 + 24) = v31;
  v59(v20, v27, v22);
  v32 = swift_allocObject();
  v57(v32 + v58, v29, v22);
  v33 = (v32 + v24);
  *v33 = sub_227087D64;
  v33[1] = v30;

  v34 = v51;
  sub_227669270();
  v35 = v63;
  v61(v63, v22);
  sub_2273C5160(v50, v35);
  v59(v29, v35, v22);
  v36 = swift_allocObject();
  v57(v36 + v58, v29, v22);
  v37 = v54;
  v38 = v55;
  v39 = v52;
  (*(v54 + 16))(v52, v34, v55);
  v40 = v37;
  v41 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v42 = (v53 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v40 + 32))(v43 + v41, v39, v38);
  v44 = (v43 + v42);
  *v44 = sub_2273CBA8C;
  v44[1] = v36;
  sub_227669270();
  v61(v63, v22);
  return (*(v40 + 8))(v34, v38);
}

uint64_t sub_2273C5EC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 752, v12);

    __swift_project_boxed_opaque_existential_0(v12, v12[3]);
    v11[15] = 3;
    sub_226F19410();
    sub_226F19464();
    sub_22766A120();
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  sub_22766A710();
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v7, v8, "Finished fetching asset bundles to prefetch", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_2273C60E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v6 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_2273CCBB4(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();
}

uint64_t sub_2273C61CC(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  if (*(a1 + 8) == 1)
  {
    v9 = *a1;
    sub_22766A6C0();
    v10 = v9;
    v11 = sub_22766B380();
    v12 = sub_22766C8B0();
    sub_226EB4548(v9, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x22AA995D0](v22[2], v22[3]);
      v17 = sub_226E97AE8(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v11, v12, "Prefetch - Resolved with error %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA9A450](v14, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_22766A6C0();
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226E8E000, v19, v20, "Prefetch - Resolved successfully", v21, 2u);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_2273C644C(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2273C6568()
{
  v0 = sub_227662750();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662740();
  v4 = sub_227665AA0();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_2276692A0();
  }

  v6 = sub_227663190();
  sub_2273CCDD0(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v7 = swift_allocError();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D4FD48], v6);
  *(swift_allocObject() + 16) = v7;
  return sub_227669280();
}

uint64_t sub_2273C672C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  sub_22766A6C0();
  sub_22766B370();
  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v3 > 1u)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v12 = "GuidedRunPrefetchEnabled";
    v13 = 0xD00000000000001FLL;
LABEL_8:
    if (sub_22711ABE8(v13, v12 | 0x8000000000000000))
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_22766A6C0();
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v23 = sub_227664C10();
      v25 = sub_226E97AE8(v23, v24, &v32);
      v31 = v11;
      v26 = v25;

      *(v21 + 4) = v26;
      _os_log_impl(&dword_226E8E000, v19, v20, "Prefetching not supported for media type %s, returning empty set", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);

      v31(v7, v4);
    }

    else
    {

      v11(v7, v4);
    }

    *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    return sub_227669280();
  }

  if (v3)
  {
    v12 = "outIdentifiersToPrefetch()";
    v13 = 0xD00000000000001CLL;
    goto LABEL_8;
  }

  if ((sub_22711ABE8(0xD000000000000018, 0x800000022769FBF0) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v14 = sub_227664C10();
  v16 = v15;
  if (v14 == sub_227664C10() && v16 == v17)
  {

    v18 = 7;
  }

  else
  {
    v28 = sub_22766D190();

    if (v28)
    {
      v18 = 7;
    }

    else
    {
      v18 = 2;
    }
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  *(v29 + 24) = v3;
  *(v29 + 32) = v18;
  v30 = swift_allocObject();
  *(v30 + 16) = "SeymourServices/AssetSystemPrefetching.swift";
  *(v30 + 24) = 44;
  *(v30 + 32) = 2;
  *(v30 + 40) = 151;
  *(v30 + 48) = &unk_227684888;
  *(v30 + 56) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  return sub_227669270();
}

void sub_2273C6B6C(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84FA0];
    while (v5 < *(v3 + 16))
    {
      v7 = v5 + 1;

      sub_2273FB844(v8, v6);
      v6 = v9;
      v5 = v7;
      if (v4 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
LABEL_7:
    *a2 = v6;
  }
}

uint64_t sub_2273C6C04(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = *a1;
  if (*(a1 + 8))
  {
    sub_22766A6C0();
    v10 = v9;
    v11 = sub_22766B380();
    v12 = sub_22766C890();
    sub_226F38F34(v9, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x22AA995D0](v26[2], v26[3]);
      v17 = sub_226E97AE8(v15, v16, &v27);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v11, v12, "Prefetch - Failed to query qualifying items with error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA9A450](v14, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_22766A6C0();

    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    sub_226F38F34(v9, 0);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 141558274;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2080;
      v23 = sub_22766C610();
      v25 = sub_226E97AE8(v23, v24, &v27);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_226E8E000, v19, v20, "Prefetch - All qualifying items: %{mask.hash}s", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_2273C6F10(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = a4;
  *(v4 + 184) = a3;
  *(v4 + 64) = a1;
  v5 = sub_22766B390();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273C6FE4, 0, 0);
}

uint64_t sub_2273C6FE4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = v2[75];
  v5 = v2[76];
  __swift_project_boxed_opaque_existential_0(v2 + 72, v4);
  v6 = swift_allocObject();
  *(v0 + 120) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v10 = (*(v5 + 24) + **(v5 + 24));
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  *(v0 + 136) = v8;
  *v7 = v0;
  v7[1] = sub_2273C7184;

  return v10(v0 + 40, sub_2273CCD6C, v6, v8, v4, v5);
}

uint64_t sub_2273C7184()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2273C77BC;
  }

  else
  {

    v2 = sub_2273C72A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273C72A0()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[19] = v2;
  v3 = v1[75];
  v4 = v1[76];
  __swift_project_boxed_opaque_existential_0(v1 + 72, v3);
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = v2;
  v6 = *(v4 + 24);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_2273C7434;
  v8 = v0[17];

  return (v10)(v0 + 7, sub_2273CCD8C, v5, v8, v3, v4);
}

uint64_t sub_2273C7434()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_2273C79E0;
  }

  else
  {
    v2 = sub_2273C7578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273C7578()
{
  v22 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v21 = *(v0 + 152);
    sub_22700604C(v2);

    v3 = v21;
  }

  else
  {
    v3 = sub_22700776C(*(v0 + 56), v1);
  }

  sub_22766A6C0();

  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  if (v6)
  {
    v20 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446466;
    v12 = sub_227664C10();
    v14 = sub_226E97AE8(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_22766C610();
    v17 = sub_226E97AE8(v15, v16, &v21);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v4, v5, "Prefetch - Qualifying items for media type %{public}s: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  **(v0 + 64) = v3;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2273C77BC()
{
  v22 = v0;

  v1 = v0[18];
  sub_22766A6C0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v20 = v0[13];
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136446466;
    v9 = sub_227664C10();
    v11 = sub_226E97AE8(v9, v10, v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v14 = sub_226E97AE8(v12, v13, v21);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "Prefetch - Failed to query qualifying items for media type %{public}s with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v20, v6);
  }

  else
  {
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    (*(v16 + 8))(v15, v17);
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2273C79E0(uint64_t a1)
{
  v23 = v1;
  v2 = v1[22];
  sub_22766A6C0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[12];
    v21 = v1[13];
    v7 = v1[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136446466;
    v10 = sub_227664C10();
    v12 = sub_226E97AE8(v10, v11, v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v13 = MEMORY[0x22AA995D0](v1[3], v1[4]);
    v15 = sub_226E97AE8(v13, v14, v22);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Prefetch - Failed to query qualifying items for media type %{public}s with error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v21, v7);
  }

  else
  {
    v17 = v1[12];
    v16 = v1[13];
    v18 = v1[11];

    (*(v17 + 8))(v16, v18);
  }

  swift_willThrow();

  v19 = v1[1];

  return v19();
}

void sub_2273C7BFC(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v34 = a4;
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  swift_getKeyPath();
  v12 = sub_227664C10();
  v14 = v13;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v37[0] = v12;
  v37[1] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226ED25F8(v37, v35);
  v16 = v36;
  if (v36)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226EBC888(v37);
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
  v26(v37, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397FC8();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  v30 = v37[5];
  sub_2273FC91C(KeyPath);
  if (v30)
  {
  }

  else
  {
    v32 = sub_226F3E6A8(v31);

    *v34 = v32;
  }
}

uint64_t sub_2273C802C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  swift_getKeyPath();
  sub_227230638(a2);
  v14 = v13;
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v38[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226ED25F8(v38, v36);
  v16 = v37;
  if (v37)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226EBC888(v38);
  swift_beginAccess();
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v35[1] = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v38, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  sub_2273FC7CC(KeyPath);
  if (v3)
  {

    swift_setDeallocating();

    v29 = qword_2813B2078;
    v30 = sub_22766A100();
    (*(*(v30 - 8) + 8))(v10 + v29, v30);
    return swift_deallocClassInstance();
  }

  else
  {
    v32 = sub_226F3E6A8(v28);

    swift_setDeallocating();

    v33 = qword_2813B2078;
    v34 = sub_22766A100();
    (*(*(v34 - 8) + 8))(v10 + v33, v34);
    result = swift_deallocClassInstance();
    *v39 = v32;
  }

  return result;
}

void sub_2273C84EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (!v3)
  {
    v77 = a3;
    v78 = 0;
    v6 = v82;
    v7 = v83;
    v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v8 + 16);
    v12 = v8[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v13 = swift_allocObject();
    v14 = v9;
    v15 = v10;

    sub_22766A070();
    *(v13 + 16) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    swift_getKeyPath();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v82 = v6;
    v83 = v7;
    v16 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v17 = sub_22766C820();
    sub_226ED25F8(&v82, v80);
    v18 = v81;
    if (v81)
    {
      v19 = __swift_project_boxed_opaque_existential_0(v80, v81);
      v20 = *(v18 - 8);
      v21 = MEMORY[0x28223BE20](v19);
      v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = sub_22766D170();
      (*(v20 + 8))(v23, v18);
      __swift_destroy_boxed_opaque_existential_0(v80);
    }

    else
    {
      v24 = 0;
    }

    v79 = objc_opt_self();
    v25 = [v79 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v27 = &off_2785D6000;
    v28 = [objc_allocWithZone(v26) initWithLeftExpression:v17 rightExpression:v25 modifier:0 type:4 options:0];

    sub_226EBC888(&v82);
    v29 = qword_2813B2078;
    swift_beginAccess();
    v30 = v28;
    v85 = v29;
    v31 = sub_22766A080();
    v33 = v32;
    MEMORY[0x22AA985C0]();
    if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v31(&v82, 0);
    swift_endAccess();

    swift_getKeyPath();
    v34 = sub_227663450();
    v84 = MEMORY[0x277D83B88];
    v82 = v34;

    v35 = sub_22766C820();
    sub_226ED25F8(&v82, v80);
    v36 = v81;
    if (v81)
    {
      v37 = __swift_project_boxed_opaque_existential_0(v80, v81);
      v76 = v16;
      v38 = v26;
      v39 = *(v36 - 8);
      v40 = MEMORY[0x28223BE20](v37);
      v42 = &v76 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42, v40);
      v43 = sub_22766D170();
      (*(v39 + 8))(v42, v36);
      v26 = v38;
      v27 = &off_2785D6000;
      __swift_destroy_boxed_opaque_existential_0(v80);
    }

    else
    {
      v43 = 0;
    }

    v44 = [v79 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v45 = [objc_allocWithZone(v26) v27[298]];

    sub_226EBC888(&v82);
    swift_beginAccess();
    v46 = v45;
    v47 = sub_22766A080();
    v49 = v48;
    MEMORY[0x22AA985C0]();
    if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v47(&v82, 0);
    swift_endAccess();

    swift_getKeyPath();
    v50 = sub_227664570();
    v84 = MEMORY[0x277D83B88];
    v82 = v50;

    v51 = sub_22766C820();
    sub_226ED25F8(&v82, v80);
    v52 = v81;
    if (v81)
    {
      v53 = __swift_project_boxed_opaque_existential_0(v80, v81);
      v76 = &v76;
      v54 = v27;
      v55 = v26;
      v56 = *(v52 - 8);
      v57 = MEMORY[0x28223BE20](v53);
      v59 = &v76 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v59, v57);
      v60 = sub_22766D170();
      (*(v56 + 8))(v59, v52);
      v26 = v55;
      v27 = v54;
      __swift_destroy_boxed_opaque_existential_0(v80);
    }

    else
    {
      v60 = 0;
    }

    v61 = [v79 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v62 = [objc_allocWithZone(v26) v27[298]];

    sub_226EBC888(&v82);
    swift_beginAccess();
    v63 = v62;
    v64 = sub_22766A080();
    v66 = v65;
    MEMORY[0x22AA985C0]();
    if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v64(&v82, 0);
    swift_endAccess();

    v67 = v78;
    v68 = sub_2272328B8(100);
    if (v67)
    {
      swift_setDeallocating();

      v69 = qword_2813B2078;
      v70 = sub_22766A100();
      (*(*(v70 - 8) + 8))(v13 + v69, v70);
      swift_deallocClassInstance();
    }

    else
    {
      v71 = v68;
      swift_setDeallocating();

      v72 = qword_2813B2078;
      v73 = sub_22766A100();
      (*(*(v73 - 8) + 8))(v13 + v72, v73);
      swift_deallocClassInstance();
      v74 = sub_2273C301C(v71);

      v75 = sub_226F40934(v74);

      *v77 = v75;
    }
  }
}

void sub_2273C8EA8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v70 = a4;
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (!v4)
  {
    v61 = a3;
    v64 = 0;
    v8 = v67;
    v7 = v68;
    v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 16);
    v13 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v14 = swift_allocObject();
    v15 = v10;
    v16 = v11;

    sub_22766A070();
    *(v14 + 16) = v15;
    *(v14 + 24) = v16;
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    swift_getKeyPath();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v60 = v8;
    v67 = v8;
    v68 = v7;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
    v63 = v7;

    v17 = sub_22766C820();
    sub_226ED25F8(&v67, v65);
    v18 = v66;
    if (v66)
    {
      v19 = __swift_project_boxed_opaque_existential_0(v65, v66);
      v20 = *(v18 - 8);
      v21 = MEMORY[0x28223BE20](v19);
      v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = sub_22766D170();
      (*(v20 + 8))(v23, v18);
      __swift_destroy_boxed_opaque_existential_0(v65);
    }

    else
    {
      v24 = 0;
    }

    v25 = objc_opt_self();
    v26 = [v25 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v27 = [objc_allocWithZone(v62) initWithLeftExpression:v17 rightExpression:v26 modifier:0 type:4 options:0];

    sub_226EBC888(&v67);
    swift_beginAccess();
    v28 = v27;
    v29 = sub_22766A080();
    v31 = v30;
    MEMORY[0x22AA985C0]();
    if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v29(&v67, 0);
    swift_endAccess();

    swift_getKeyPath();
    v32 = sub_227663450();
    v69 = MEMORY[0x277D83B88];
    v67 = v32;

    v33 = sub_22766C820();
    sub_226ED25F8(&v67, v65);
    v34 = v66;
    if (v66)
    {
      v35 = __swift_project_boxed_opaque_existential_0(v65, v66);
      v59 = v25;
      v36 = *(v34 - 8);
      v37 = MEMORY[0x28223BE20](v35);
      v39 = &v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v39, v37);
      v40 = sub_22766D170();
      (*(v36 + 8))(v39, v34);
      v25 = v59;
      __swift_destroy_boxed_opaque_existential_0(v65);
    }

    else
    {
      v40 = 0;
    }

    v41 = [v25 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v42 = [objc_allocWithZone(v62) initWithLeftExpression:v33 rightExpression:v41 modifier:0 type:4 options:0];

    sub_226EBC888(&v67);
    swift_beginAccess();
    v43 = v42;
    v44 = sub_22766A080();
    v46 = v45;
    MEMORY[0x22AA985C0]();
    if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v44(&v67, 0);
    swift_endAccess();

    v47 = v64;
    v48 = sub_2272328B8(100);
    if (v47)
    {

      swift_setDeallocating();

      v49 = qword_2813B2078;
      v50 = sub_22766A100();
      (*(*(v50 - 8) + 8))(v14 + v49, v50);
      swift_deallocClassInstance();
    }

    else
    {
      v51 = v48;
      swift_setDeallocating();

      v52 = qword_2813B2078;
      v53 = sub_22766A100();
      (*(*(v53 - 8) + 8))(v14 + v52, v53);
      swift_deallocClassInstance();
      v54 = v61;

      v55 = sub_2273CC2AC(v51, v54);

      v56 = v63;

      v57 = sub_2273CAAF0(v55, v60, v56);

      swift_bridgeObjectRelease_n();
      v58 = sub_226F40934(v57);

      *v70 = v58;
    }
  }
}

void sub_2273C9698(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (!v4)
  {
    v106 = v12;
    v107 = a3;
    v102 = v10;
    v103 = v9;
    v104 = a2;
    v105 = a1;
    v98 = a4;
    v109 = 0;
    v14 = v112;
    v13 = v113;
    v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v15 + 16);
    v19 = v15[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v20 = swift_allocObject();
    v21 = v16;
    v22 = v17;

    sub_22766A070();
    *(v20 + 16) = v21;
    *(v20 + 24) = v22;
    *(v20 + 32) = v18;
    *(v20 + 40) = v19;
    swift_getKeyPath();
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v101 = v14;
    v112 = v14;
    v113 = v13;
    v23 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
    v108 = v13;

    v24 = sub_22766C820();
    sub_226ED25F8(&v112, v110);
    v25 = v111;
    if (v111)
    {
      v26 = __swift_project_boxed_opaque_existential_0(v110, v111);
      v27 = *(v25 - 8);
      v28 = MEMORY[0x28223BE20](v26);
      v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30, v28);
      v31 = sub_22766D170();
      (*(v27 + 8))(v30, v25);
      __swift_destroy_boxed_opaque_existential_0(v110);
    }

    else
    {
      v31 = 0;
    }

    v32 = objc_opt_self();
    v33 = [v32 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v34 = [objc_allocWithZone(v115) initWithLeftExpression:v24 rightExpression:v33 modifier:0 type:4 options:0];

    sub_226EBC888(&v112);
    v35 = qword_2813B2078;
    swift_beginAccess();
    v36 = v34;
    v37 = sub_22766A080();
    v39 = v38;
    MEMORY[0x22AA985C0]();
    if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v37(&v112, 0);
    swift_endAccess();

    swift_getKeyPath();
    v40 = sub_227663450();
    v114 = MEMORY[0x277D83B88];
    v112 = v40;

    v41 = sub_22766C820();
    sub_226ED25F8(&v112, v110);
    v42 = v111;
    if (v111)
    {
      v43 = __swift_project_boxed_opaque_existential_0(v110, v111);
      v99 = v23;
      v100 = v35;
      v44 = v32;
      v45 = *(v42 - 8);
      v46 = MEMORY[0x28223BE20](v43);
      v48 = &v97 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v48, v46);
      v49 = sub_22766D170();
      (*(v45 + 8))(v48, v42);
      v32 = v44;
      __swift_destroy_boxed_opaque_existential_0(v110);
    }

    else
    {
      v49 = 0;
    }

    v50 = [v32 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v51 = [objc_allocWithZone(v115) initWithLeftExpression:v41 rightExpression:v50 modifier:0 type:4 options:0];

    sub_226EBC888(&v112);
    swift_beginAccess();
    v52 = v51;
    v53 = sub_22766A080();
    v55 = v54;
    MEMORY[0x22AA985C0]();
    if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v53(&v112, 0);
    swift_endAccess();

    swift_getKeyPath();
    v56 = sub_227664570();
    v114 = MEMORY[0x277D83B88];
    v112 = v56;

    v57 = sub_22766C820();
    sub_226ED25F8(&v112, v110);
    v58 = v111;
    if (v111)
    {
      v59 = __swift_project_boxed_opaque_existential_0(v110, v111);
      v100 = v32;
      v60 = *(v58 - 8);
      v61 = MEMORY[0x28223BE20](v59);
      v63 = &v97 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v63, v61);
      v64 = sub_22766D170();
      (*(v60 + 8))(v63, v58);
      v32 = v100;
      __swift_destroy_boxed_opaque_existential_0(v110);
    }

    else
    {
      v64 = 0;
    }

    v65 = [v32 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v66 = [objc_allocWithZone(v115) initWithLeftExpression:v57 rightExpression:v65 modifier:0 type:4 options:0];

    sub_226EBC888(&v112);
    swift_beginAccess();
    v67 = v66;
    v68 = sub_22766A080();
    v70 = v69;
    MEMORY[0x22AA985C0]();
    if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v68(&v112, 0);
    swift_endAccess();

    v71 = v109;
    v72 = sub_2272328B8(100);
    if (v71)
    {

      swift_setDeallocating();

      v73 = qword_2813B2078;
      v74 = sub_22766A100();
      (*(*(v74 - 8) + 8))(v20 + v73, v74);
      swift_deallocClassInstance();
    }

    else
    {
      v75 = v72;
      swift_setDeallocating();

      v76 = qword_2813B2078;
      v77 = sub_22766A100();
      (*(*(v77 - 8) + 8))(v20 + v76, v77);
      swift_deallocClassInstance();
      v78 = sub_2273C2D14(v75);

      v80 = sub_2273CC8BC(v79, v78);

      v81 = v106;
      sub_22766A6C0();

      v82 = sub_22766B380();
      v83 = sub_22766C8B0();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v112 = v85;
        *v84 = 141558274;
        *(v84 + 4) = 1752392040;
        *(v84 + 12) = 2080;
        sub_227663480();
        sub_2273CCDD0(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
        v86 = sub_22766C610();
        v88 = v87;

        v89 = sub_226E97AE8(v86, v88, &v112);

        *(v84 + 14) = v89;
        _os_log_impl(&dword_226E8E000, v82, v83, "Prefetch - Existing bundles excluded from qualifying bundles: %{mask.hash}s", v84, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x22AA9A450](v85, -1, -1);
        MEMORY[0x22AA9A450](v84, -1, -1);

        (*(v102 + 8))(v106, v103);
      }

      else
      {

        (*(v102 + 8))(v81, v103);
      }

      v90 = v105;
      v91 = v108;

      v92 = sub_2273CBBE8(v80, v101, v91);

      swift_bridgeObjectRelease_n();
      v93 = sub_226F40934(v92);

      MEMORY[0x28223BE20](v94);
      v95 = v104;
      *(&v97 - 2) = v104;
      *(&v97 - 1) = v90;
      sub_2275CE470(sub_2273CCB98, (&v97 - 4), v93);
      __swift_project_boxed_opaque_existential_0((v95 + 712), *(v95 + 736));
      v96 = sub_2273C33DC(v93);
      sub_2272D752C(0, v96, v90);

      *v98 = v93;
    }
  }
}

double sub_2273CA38C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v6 + 8))(v8, v5);
  v9 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
  v10 = sub_227663480();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v13 + v12, a1, v10);
  sub_227556A7C(v13, v9[1], *(v9 + 16), v9[3]);

  return result;
}

double sub_2273CA588@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  __swift_project_boxed_opaque_existential_0((a2 + 712), *(a2 + 736));
  sub_2271D7EE8();
  *a3 = v4;

  return result;
}

uint64_t sub_2273CA5F4(uint64_t a1, const char *a2, const char *a3, ...)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  v13 = *a1;
  if (*(a1 + 8))
  {
    sub_22766A6C0();
    v14 = v13;
    v15 = sub_22766B380();
    v16 = sub_22766C890();
    sub_226F38F34(v13, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136446210;
      swift_getErrorValue();
      v19 = MEMORY[0x22AA995D0](v30[2], v30[3]);
      v21 = sub_226E97AE8(v19, v20, &v31);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_226E8E000, v15, v16, a3, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AA9A450](v18, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_22766A6C0();

    v23 = sub_22766B380();
    v24 = sub_22766C8B0();
    sub_226F38F34(v13, 0);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 141558274;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      sub_227663480();
      sub_2273CCDD0(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
      v27 = sub_22766C610();
      v29 = sub_226E97AE8(v27, v28, &v31);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_226E8E000, v23, v24, a2, v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

void *sub_2273CA99C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t sub_2273CAAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = v3;
    v49 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v11, 0);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_22766CC90();
    v13 = result;
    v14 = 0;
    v39 = v6 + 8;
    v40 = v6 + 16;
    v37 = v11;
    v38 = v6 + 32;
    v36 = a1 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v47 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      v17 = *(a1 + 36);
      v44 = v14;
      v45 = v17;
      v18 = *(a1 + 48);
      v46 = *(v6 + 72);
      v19 = v41;
      (*(v6 + 16))(v41, v18 + v46 * v13, v5);
      sub_227663470();
      (*(v6 + 8))(v19, v5);
      v20 = v48;
      v49 = v48;
      v21 = a1;
      v23 = *(v48 + 16);
      v22 = *(v48 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v48 = v23 + 1;
        sub_226F1F568((v22 > 1), v23 + 1, 1);
        v24 = v48;
        v20 = v49;
      }

      *(v20 + 16) = v24;
      v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v48 = v20;
      result = (*(v6 + 32))(v20 + v25 + v23 * v46, v10, v5);
      v15 = 1 << *(v21 + 32);
      if (v13 >= v15)
      {
        goto LABEL_24;
      }

      v26 = *(v47 + 8 * v16);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v21;
      if (v45 != *(v21 + 36))
      {
        goto LABEL_26;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v10;
        v29 = v5;
        v30 = v16 << 6;
        v31 = v16 + 1;
        v32 = (v36 + 8 * v16);
        while (v31 < (v15 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_226EB526C(v13, v45, 0);
            v15 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v13, v45, 0);
LABEL_19:
        v5 = v29;
        v10 = v28;
      }

      v14 = v44 + 1;
      v13 = v15;
      if (v44 + 1 == v37)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2273CAE98(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v76 = sub_227663480();
  v4 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v52 - v10;
  MEMORY[0x28223BE20](v11);
  v64 = &v52 - v13;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v63 = v12;
  v52 = v2;
  v77 = MEMORY[0x277D84F90];
  sub_226F1F4E8(0, v14, 0);
  v15 = v77;
  v16 = a1 + 56;
  result = sub_22766CC90();
  v18 = 0;
  v61 = v4 + 16;
  v62 = 0x8000000227695BD0;
  v59 = v8 + 7;
  v60 = v7 + 16;
  v19 = v7 + 32;
  v73 = v4;
  v57 = v4 + 8;
  v58 = v7 + 8;
  v53 = a1 + 64;
  v54 = v14;
  v55 = a1 + 56;
  v56 = a1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v16 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v69 = 1 << result;
    v70 = result >> 6;
    v22 = *(a1 + 36);
    v67 = v18;
    v68 = v22;
    v23 = *(a1 + 48) + *(v73 + 72) * result;
    v24 = *(v73 + 16);
    v25 = v75;
    v71 = result;
    v24(v75, v23, v76);
    __swift_project_boxed_opaque_existential_0((v66 + 96), *(v66 + 120));
    v26 = v74;
    sub_226F25E48(v25, v74);
    v27 = swift_allocObject();
    v27[2] = 0xD00000000000002ALL;
    v27[3] = v62;
    v27[4] = 92;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_226F33024;
    *(v28 + 24) = v27;
    v29 = *(v7 + 16);
    v30 = v19;
    v31 = v65;
    v72 = v15;
    v32 = v7;
    v33 = v63;
    v29(v65, v26, v63);
    v34 = *(v32 + 80);
    v35 = (v34 + 16) & ~v34;
    v36 = (v59 + v35) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v31;
    v19 = v30;
    v39 = *(v32 + 32);
    v39(v37 + v35, v38, v33);
    v40 = (v37 + v36);
    *v40 = sub_226F32FE8;
    v40[1] = v28;
    v41 = v64;
    v42 = v33;
    v7 = v32;
    v15 = v72;
    sub_227669270();
    (*(v7 + 8))(v74, v42);
    (*(v73 + 8))(v75, v76);
    v77 = v15;
    v44 = *(v15 + 16);
    v43 = *(v15 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_226F1F4E8((v43 > 1), v44 + 1, 1);
      v42 = v63;
      v15 = v77;
    }

    *(v15 + 16) = v44 + 1;
    v39(v15 + ((v34 + 32) & ~v34) + *(v7 + 72) * v44, v41, v42);
    a1 = v56;
    v20 = 1 << *(v56 + 32);
    result = v71;
    if (v71 >= v20)
    {
      goto LABEL_22;
    }

    v16 = v55;
    v45 = *(v55 + 8 * v70);
    if ((v45 & v69) == 0)
    {
      goto LABEL_23;
    }

    if (v68 != *(v56 + 36))
    {
      goto LABEL_24;
    }

    v46 = v45 & (-2 << (v71 & 0x3F));
    if (v46)
    {
      v20 = __clz(__rbit64(v46)) | v71 & 0x7FFFFFFFFFFFFFC0;
      v21 = v54;
    }

    else
    {
      v47 = v70 << 6;
      v48 = v70 + 1;
      v49 = (v53 + 8 * v70);
      v21 = v54;
      while (v48 < (v20 + 63) >> 6)
      {
        v51 = *v49++;
        v50 = v51;
        v47 += 64;
        ++v48;
        if (v51)
        {
          sub_226EB526C(v71, v68, 0);
          v20 = __clz(__rbit64(v50)) + v47;
          goto LABEL_4;
        }
      }

      sub_226EB526C(v71, v68, 0);
    }

LABEL_4:
    v18 = v67 + 1;
    result = v20;
    if (v67 + 1 == v21)
    {
      return v15;
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

uint64_t sub_2273CB458(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v76 = sub_227663480();
  v4 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v52 - v10;
  MEMORY[0x28223BE20](v11);
  v64 = &v52 - v13;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v63 = v12;
  v52 = v2;
  v77 = MEMORY[0x277D84F90];
  sub_226F1F4E8(0, v14, 0);
  v15 = v77;
  v16 = a1 + 56;
  result = sub_22766CC90();
  v18 = 0;
  v61 = v4 + 16;
  v62 = 0x8000000227695C40;
  v59 = v8 + 7;
  v60 = v7 + 16;
  v19 = v7 + 32;
  v73 = v4;
  v57 = v4 + 8;
  v58 = v7 + 8;
  v53 = a1 + 64;
  v54 = v14;
  v55 = a1 + 56;
  v56 = a1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v16 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v69 = 1 << result;
    v70 = result >> 6;
    v22 = *(a1 + 36);
    v67 = v18;
    v68 = v22;
    v23 = *(a1 + 48) + *(v73 + 72) * result;
    v24 = *(v73 + 16);
    v25 = v75;
    v71 = result;
    v24(v75, v23, v76);
    __swift_project_boxed_opaque_existential_0((v66 + 56), *(v66 + 80));
    v26 = v74;
    sub_227496AB8(v25, v74);
    v27 = swift_allocObject();
    v27[2] = 0xD000000000000028;
    v27[3] = v62;
    v27[4] = 132;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_226F323BC;
    *(v28 + 24) = v27;
    v29 = *(v7 + 16);
    v30 = v19;
    v31 = v65;
    v72 = v15;
    v32 = v7;
    v33 = v63;
    v29(v65, v26, v63);
    v34 = *(v32 + 80);
    v35 = (v34 + 16) & ~v34;
    v36 = (v59 + v35) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v31;
    v19 = v30;
    v39 = *(v32 + 32);
    v39(v37 + v35, v38, v33);
    v40 = (v37 + v36);
    *v40 = sub_226F323DC;
    v40[1] = v28;
    v41 = v64;
    v42 = v33;
    v7 = v32;
    v15 = v72;
    sub_227669270();
    (*(v7 + 8))(v74, v42);
    (*(v73 + 8))(v75, v76);
    v77 = v15;
    v44 = *(v15 + 16);
    v43 = *(v15 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_226F1F4E8((v43 > 1), v44 + 1, 1);
      v42 = v63;
      v15 = v77;
    }

    *(v15 + 16) = v44 + 1;
    v39(v15 + ((v34 + 32) & ~v34) + *(v7 + 72) * v44, v41, v42);
    a1 = v56;
    v20 = 1 << *(v56 + 32);
    result = v71;
    if (v71 >= v20)
    {
      goto LABEL_22;
    }

    v16 = v55;
    v45 = *(v55 + 8 * v70);
    if ((v45 & v69) == 0)
    {
      goto LABEL_23;
    }

    if (v68 != *(v56 + 36))
    {
      goto LABEL_24;
    }

    v46 = v45 & (-2 << (v71 & 0x3F));
    if (v46)
    {
      v20 = __clz(__rbit64(v46)) | v71 & 0x7FFFFFFFFFFFFFC0;
      v21 = v54;
    }

    else
    {
      v47 = v70 << 6;
      v48 = v70 + 1;
      v49 = (v53 + 8 * v70);
      v21 = v54;
      while (v48 < (v20 + 63) >> 6)
      {
        v51 = *v49++;
        v50 = v51;
        v47 += 64;
        ++v48;
        if (v51)
        {
          sub_226EB526C(v71, v68, 0);
          v20 = __clz(__rbit64(v50)) + v47;
          goto LABEL_4;
        }
      }

      sub_226EB526C(v71, v68, 0);
    }

LABEL_4:
    v18 = v67 + 1;
    result = v20;
    if (v67 + 1 == v21)
    {
      return v15;
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

uint64_t sub_2273CBA8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2272B3974(v4, a1);
}

uint64_t sub_2273CBBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v5 = sub_227662750();
  MEMORY[0x28223BE20](v5 - 8);
  v36 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_227663480();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v28[1] = v3;
  v43 = MEMORY[0x277D84F90];
  sub_226F1F568(0, v10, 0);
  v11 = v43;
  v12 = a1 + 56;
  result = sub_22766CC90();
  v14 = result;
  v15 = 0;
  v32 = v7 + 32;
  v33 = a1 + 56;
  v29 = a1 + 64;
  v30 = v10;
  v34 = v7;
  v31 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v39 = v15;
    v40 = v18;
    v41 = *(*(a1 + 48) + 16 * v14);

    sub_22766C0A0();
    v42 = v11;
    swift_bridgeObjectRetain_n();

    sub_227662740();
    v11 = v42;
    sub_2276633D0();

    v43 = v11;
    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_226F1F568((v19 > 1), v20 + 1, 1);
      v11 = v43;
    }

    *(v11 + 16) = v20 + 1;
    result = (*(v34 + 32))(v11 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, v9, v35);
    a1 = v31;
    v16 = 1 << *(v31 + 32);
    v12 = v33;
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v21 = *(v33 + 8 * v17);
    if ((v21 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v40 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v14 & 0x3F));
    if (v22)
    {
      v16 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v17 << 6;
      v24 = v17 + 1;
      v25 = (v29 + 8 * v17);
      while (v24 < (v16 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_226EB526C(v14, v40, 0);
          v16 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v14, v40, 0);
    }

LABEL_4:
    v15 = v39 + 1;
    v14 = v16;
    if (v39 + 1 == v30)
    {
      return v11;
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

void sub_2273CBFA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_227663480();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v44 = v8 + 16;
  v45 = v11;
  v20 = a4 + 56;
  v46 = v8;
  v47 = v7;
  v42 = 0;
  v43 = (v8 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v12 << 6);
    v25 = *(v49 + 48);
    v26 = *(v46 + 72);
    v48 = v24;
    (*(v46 + 16))(v11, v25 + v26 * v24, v6, v9);
    v27 = sub_227663410();
    v29 = v28;
    if (*(a4 + 16) && (v30 = v27, sub_22766D370(), sub_22766C100(), v31 = sub_22766D3F0(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v30 && v35[1] == v29;
        if (v36 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      v18 = v50;
    }

    else
    {
LABEL_22:

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v37 = __OFADD__(v42++, 1);
      v18 = v50;
      if (v37)
      {
        __break(1u);
LABEL_25:
        v38 = v49;

        sub_22726AD50(v41, v40, v42, v38);
        return;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v50 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2273CC2AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = v10;
    v39 = v3;
    v37 = &v37;
    MEMORY[0x28223BE20](v12);
    v40 = &v37 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = v7 + 16;
    v44 = v7;
    v11 = a2 + 56;
    v41 = 0;
    v42 = (v7 + 8);
    v45 = v6;
    v46 = a1;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v22 = *(a1 + 48);
      v23 = *(v7 + 72);
      v47 = v21;
      v3 = v49;
      (*(v7 + 16))(v49, v22 + v23 * v21, v6);
      v24 = sub_227663410();
      v26 = v25;
      if (*(a2 + 16) && (v3 = v24, sub_22766D370(), sub_22766C100(), v27 = sub_22766D3F0(), v28 = -1 << *(a2 + 32), v29 = v27 & ~v28, ((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a2 + 48) + 16 * v29);
          v32 = *v31 == v3 && v31[1] == v26;
          if (v32 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        v7 = v44;
        v16 = v48;
      }

      else
      {
LABEL_23:

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        *&v40[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        v33 = __OFADD__(v41++, 1);
        v7 = v44;
        v16 = v48;
        if (v33)
        {
          __break(1u);
LABEL_26:
          v34 = sub_22726AD50(v40, v38, v41, a1);

          return v34;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_26;
      }

      v20 = *(v13 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();

  v34 = sub_2273CA99C(v36, v10, a1, a2, sub_2273CBFA4);

  MEMORY[0x22AA9A450](v36, -1, -1);

  return v34;
}

void sub_2273CC70C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v24[0] = *v14;
    v24[1] = v15;
    MEMORY[0x28223BE20](a1);
    v19[2] = v24;

    v16 = sub_226F7E160(sub_2273CCF14, v19, v23);

    if ((v16 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v25;

        sub_22726999C(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2273CC8BC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26[1] = v26;
    v27 = v5;
    MEMORY[0x28223BE20](v7);
    v28 = v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v30 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v18 = (*(v30 + 48) + 16 * v17);
      v19 = v18[1];
      v32[0] = *v18;
      v32[1] = v19;
      MEMORY[0x28223BE20](v8);
      v26[-2] = v32;

      v20 = sub_226F7E160(sub_226FA6D84, &v26[-4], v31);

      if ((v20 & 1) == 0)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_22726999C(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;

  v22 = sub_2273CA99C(v24, v5, v2, v25, sub_2273CC70C);

  MEMORY[0x22AA9A450](v24, -1, -1);
LABEL_17:

  return v22;
}

uint64_t sub_2273CCBB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2273CCCA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_2273C6F10(a1, v4, v6, v5);
}

uint64_t sub_2273CCDD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2273CCE34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2273CCF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v35 - v3;
  v41 = sub_227662CA0();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v35 - v6;
  v36 = sub_227662C90();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227665C20();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227662C60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2276688C0();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2276627D0();
  MEMORY[0x28223BE20](v20 - 8);
  MEMORY[0x28223BE20](v21);
  v37 = v35 - v22;
  sub_227662D40();
  v23 = sub_227662D60();
  v35[0] = v24;
  v35[1] = v23;
  sub_227662D70();
  v42 = v19;
  sub_226FFF5EC(v19);
  v25 = v16;
  v26 = v38;
  (*(v14 + 8))(v25, v13);
  sub_227662D30();
  sub_22735CAE4(v12);
  v27 = v9;
  v28 = v40;
  (*(v7 + 8))(v27, v36);
  v29 = v39;
  sub_227662D80();
  v30 = v41;
  (*(v26 + 32))(v28, v29, v41);
  v31 = (*(v26 + 88))(v28, v30);
  if (v31 != *MEMORY[0x277D494D8] && v31 != *MEMORY[0x277D494E0] && v31 != *MEMORY[0x277D494E8])
  {
    (*(v26 + 8))(v28, v30);
  }

  sub_2276686B0();
  sub_227662D50();
  sub_227668680();
  v32 = v44;
  sub_2276686A0();
  v33 = sub_2276686C0();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  return sub_227666D30();
}

uint64_t sub_2273CD428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_22766B390();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273CD4EC, 0, 0);
}

uint64_t sub_2273CD4EC()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_2273CD588;

  return sub_226EA0808();
}

uint64_t sub_2273CD588(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2273CD6D8, 0, 0);
  }
}

uint64_t sub_2273CD6D8()
{
  v1 = v0[15];
  v2 = sub_22766BFD0();
  v3 = [v1 URLForKey_];

  v4 = [v3 valuePromise];
  v0[16] = v4;

  v5 = swift_task_alloc();
  v0[17] = v5;
  *(v5 + 16) = v4;
  v6 = swift_task_alloc();
  v0[18] = v6;
  v7 = sub_226E99364(0, &qword_281398A30, 0x277CBEBC0);
  *v6 = v0;
  v6[1] = sub_2273CD838;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_226EA24CC, v5, v7);
}

uint64_t sub_2273CD838()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2273CD9EC;
  }

  else
  {

    v2 = sub_2273CD954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273CD954()
{
  v1 = *(v0 + 40);
  sub_227662430();

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2273CD9EC()
{
  v21 = v0;
  v1 = *(v0 + 152);

  sub_22766A6C0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v12 = sub_226E97AE8(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "URL value couldn't be loaded: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 152);
  sub_227145EAC();
  swift_allocError();
  *v17 = 0;
  swift_willThrow();

  swift_unknownObjectRelease();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2273CDC0C(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_22766B390();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_22766C050();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273CDD3C, 0, 0);
}

uint64_t sub_2273CDD3C()
{
  v47 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  v2 = [*(v0[14] + OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_amsSession) dataTaskPromiseWithRequest_];
  v0[21] = v2;
  v3 = [v1 HTTPBody];
  if (v3)
  {
    v4 = v3;
    v5 = sub_227662590();
    v7 = v6;

    sub_22766C040();
    v8 = sub_22766C020();
    if (v9)
    {
      v10 = v9;
      v45 = v8;
      v11 = objc_opt_self();
      v12 = sub_227662560();
      v0[11] = 0;
      v13 = [v11 JSONObjectWithData:v12 options:0 error:v0 + 11];

      v14 = v0[11];
      if (v13)
      {
        v15 = v14;
        sub_22766CC20();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
        if (swift_dynamicCast())
        {
          sub_22766A6C0();

          v16 = sub_22766B380();
          v17 = sub_22766C8B0();

          v43 = v17;
          v18 = os_log_type_enabled(v16, v17);
          v19 = v0[19];
          v20 = v0[16];
          v44 = v0[15];
          if (v18)
          {
            v42 = v0[19];
            v21 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v46[0] = v41;
            *v21 = 136315394;
            log = v16;
            v22 = sub_22766BEC0();
            v24 = v23;

            v25 = sub_226E97AE8(v22, v24, v46);

            *(v21 + 4) = v25;
            *(v21 + 12) = 2080;
            v26 = sub_226E97AE8(v45, v10, v46);

            *(v21 + 14) = v26;
            _os_log_impl(&dword_226E8E000, log, v43, "Decoded request body: %s, request body string: %s", v21, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v41, -1, -1);
            MEMORY[0x22AA9A450](v21, -1, -1);
            sub_226EDC420(v5, v7);

            (*(v20 + 8))(v42, v44);
          }

          else
          {
            sub_226EDC420(v5, v7);

            (*(v20 + 8))(v19, v44);
          }
        }

        else
        {
          sub_226EDC420(v5, v7);
        }
      }

      else
      {
        v37 = v14;

        v38 = sub_2276622C0();

        swift_willThrow();
        sub_226EDC420(v5, v7);
      }

      goto LABEL_11;
    }

    sub_226EDC420(v5, v7);
  }

  sub_22766A6C0();
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[18];
  v31 = v0[15];
  v32 = v0[16];
  if (v29)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226E8E000, v27, v28, "No request body", v33, 2u);
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  (*(v32 + 8))(v30, v31);
LABEL_11:
  v34 = swift_task_alloc();
  v0[22] = v34;
  *(v34 + 16) = v2;
  v35 = swift_task_alloc();
  v0[23] = v35;
  v36 = sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);
  *v35 = v0;
  v35[1] = sub_2273CE280;

  return MEMORY[0x2822008A0](v0 + 9, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_2273D1138, v34, v36);
}

uint64_t sub_2273CE280()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2273CE4A0;
  }

  else
  {

    v2 = sub_2273CE3D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273CE3D0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2273CE4A0()
{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = v0[24];

  sub_22766A6C0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v0[7], v0[8]);
    v12 = sub_226E97AE8(v10, v11, v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Encountered AMS Error. Content couldn't be fetched: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[21];
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2273CE6CC(uint64_t a1, uint64_t a2)
{
  v3[105] = v2;
  v3[104] = a2;
  v3[103] = a1;
  v4 = sub_22766B390();
  v3[106] = v4;
  v3[107] = *(v4 - 8);
  v3[108] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273CE794, 0, 0);
}

uint64_t sub_2273CE794()
{
  v1 = *(v0 + 840);
  v2 = swift_allocObject();
  *(v0 + 872) = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 760, sub_2273CE860, v0 + 656);
}

uint64_t sub_2273CE860()
{
  *(v1 + 880) = v0;
  if (v0)
  {
    v2 = sub_2273CEF34;
  }

  else
  {
    v2 = sub_2273CE894;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273CE894()
{
  v1 = v0[95];
  swift_unknownObjectRetain();
  v2 = sub_22766BFD0();
  v3 = [v1 integerForKey_];
  swift_unknownObjectRelease();

  v4 = [v3 valuePromise];
  v0[111] = v4;

  v5 = swift_task_alloc();
  v0[112] = v5;
  *(v5 + 16) = v4;
  v6 = swift_task_alloc();
  v0[113] = v6;
  v7 = sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
  *v6 = v0;
  v6[1] = sub_2273CEA10;

  return MEMORY[0x2822008A0](v0 + 102, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_2273D1060, v5, v7);
}

uint64_t sub_2273CEA10()
{
  *(*v1 + 912) = v0;

  if (v0)
  {
    v2 = sub_2273CEC44;
  }

  else
  {

    v2 = sub_2273CEB2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273CEB2C()
{
  v1 = *(v0 + 816);
  *(v0 + 920) = [v1 integerValue];

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_2273CEBB4, v0 + 768);
}

uint64_t sub_2273CEBD0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 920);

  return v1(v2);
}

uint64_t sub_2273CEC44()
{
  v21 = v0;

  v1 = *(v0 + 912);
  sub_22766A690();

  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v19 = *(v0 + 864);
    v5 = *(v0 + 856);
    v6 = *(v0 + 848);
    v7 = *(v0 + 832);
    v8 = *(v0 + 824);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_226E97AE8(v8, v7, v20);
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 704), *(v0 + 712));
    v13 = sub_226E97AE8(v11, v12, v20);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Int value couldn't be loaded from the bag for key %s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v5 + 8))(v19, v6);
  }

  else
  {
    v14 = *(v0 + 864);
    v15 = *(v0 + 856);
    v16 = *(v0 + 848);

    (*(v15 + 8))(v14, v16);
  }

  sub_227145EAC();
  *(v0 + 928) = swift_allocError();
  *v17 = 0;
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_2273CEEA8, v0 + 720);
}

uint64_t sub_2273CEEC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273CEF34(uint64_t a1)
{
  v22 = v1;
  v2 = v1[110];
  sub_22766A690();

  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v20 = v1[108];
    v6 = v1[107];
    v7 = v1[106];
    v8 = v1[104];
    v9 = v1[103];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_226E97AE8(v9, v8, v21);
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](v1[88], v1[89]);
    v14 = sub_226E97AE8(v12, v13, v21);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "Int value couldn't be loaded from the bag for key %s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v6 + 8))(v20, v7);
  }

  else
  {
    v15 = v1[108];
    v16 = v1[107];
    v17 = v1[106];

    (*(v16 + 8))(v15, v17);
  }

  sub_227145EAC();
  v1[116] = swift_allocError();
  *v18 = 0;
  swift_willThrow();

  return MEMORY[0x282200920](v1 + 2, v1 + 95, sub_2273CEEA8, v1 + 90);
}

uint64_t sub_2273CF184(uint64_t a1, uint64_t a2)
{
  v3[105] = v2;
  v3[104] = a2;
  v3[103] = a1;
  v4 = sub_22766B390();
  v3[106] = v4;
  v3[107] = *(v4 - 8);
  v3[108] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273CF24C, 0, 0);
}

uint64_t sub_2273CF24C()
{
  v1 = *(v0 + 840);
  v2 = swift_allocObject();
  *(v0 + 872) = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 760, sub_2273CF318, v0 + 656);
}

uint64_t sub_2273CF318()
{
  *(v1 + 880) = v0;
  if (v0)
  {
    v2 = sub_2273CF9FC;
  }

  else
  {
    v2 = sub_2273CF34C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273CF34C()
{
  v1 = v0[95];
  swift_unknownObjectRetain();
  v2 = sub_22766BFD0();
  v3 = [v1 stringForKey_];
  swift_unknownObjectRelease();

  v4 = [v3 valuePromise];
  v0[111] = v4;

  v5 = swift_task_alloc();
  v0[112] = v5;
  *(v5 + 16) = v4;
  v6 = swift_task_alloc();
  v0[113] = v6;
  v7 = sub_226E99364(0, &qword_281398A00, 0x277CCACA8);
  *v6 = v0;
  v6[1] = sub_2273CF4C8;

  return MEMORY[0x2822008A0](v0 + 102, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_2273D111C, v5, v7);
}

uint64_t sub_2273CF4C8()
{
  *(*v1 + 912) = v0;

  if (v0)
  {
    v2 = sub_2273CF70C;
  }

  else
  {

    v2 = sub_2273CF5E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273CF5E4()
{
  v1 = *(v0 + 816);
  v2 = sub_22766C000();
  v4 = v3;

  *(v0 + 920) = v2;
  *(v0 + 928) = v4;

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_2273CF678, v0 + 768);
}

uint64_t sub_2273CF694()
{

  v1 = v0[1];
  v2 = v0[116];
  v3 = v0[115];

  return v1(v3, v2);
}

uint64_t sub_2273CF70C()
{
  v21 = v0;

  v1 = *(v0 + 912);
  sub_22766A690();

  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v19 = *(v0 + 864);
    v5 = *(v0 + 856);
    v6 = *(v0 + 848);
    v7 = *(v0 + 832);
    v8 = *(v0 + 824);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_226E97AE8(v8, v7, v20);
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 704), *(v0 + 712));
    v13 = sub_226E97AE8(v11, v12, v20);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "String value couldn't be loaded from the bag for key %s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v5 + 8))(v19, v6);
  }

  else
  {
    v14 = *(v0 + 864);
    v15 = *(v0 + 856);
    v16 = *(v0 + 848);

    (*(v15 + 8))(v14, v16);
  }

  sub_227145EAC();
  *(v0 + 936) = swift_allocError();
  *v17 = 0;
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_2273CF970, v0 + 720);
}

uint64_t sub_2273CF98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273CF9FC(uint64_t a1)
{
  v22 = v1;
  v2 = v1[110];
  sub_22766A690();

  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v20 = v1[108];
    v6 = v1[107];
    v7 = v1[106];
    v8 = v1[104];
    v9 = v1[103];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_226E97AE8(v9, v8, v21);
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](v1[88], v1[89]);
    v14 = sub_226E97AE8(v12, v13, v21);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "String value couldn't be loaded from the bag for key %s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v6 + 8))(v20, v7);
  }

  else
  {
    v15 = v1[108];
    v16 = v1[107];
    v17 = v1[106];

    (*(v16 + 8))(v15, v17);
  }

  sub_227145EAC();
  v1[117] = swift_allocError();
  *v18 = 0;
  swift_willThrow();

  return MEMORY[0x282200920](v1 + 2, v1 + 95, sub_2273CF970, v1 + 90);
}

uint64_t sub_2273CFC4C(char a1)
{
  *(v2 + 1352) = v1;
  *(v2 + 1416) = a1;
  return MEMORY[0x2822009F8](sub_2273CFC70, 0, 0);
}

uint64_t sub_2273CFC70()
{
  v1 = *(v0 + 1352);
  v2 = swift_allocObject();
  *(v0 + 1360) = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1336, sub_2273CFD3C, v0 + 656);
}

uint64_t sub_2273CFD3C()
{
  *(v1 + 1368) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16, v1 + 1336, sub_2273D0080, v1 + 656);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_2273CFD80, 0, 0);
  }
}

uint64_t sub_2273CFD80()
{
  v1 = *(v0 + 1416);
  v2 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  *(v0 + 1376) = v2;
  [v2 setRequestEncoding_];
  if (v1)
  {
    *(v0 + 1400) = 0u;

    return MEMORY[0x282200920](v0 + 16, v0 + 1336, sub_2273CFFE8, v0 + 656);
  }

  else
  {
    v3 = *(v0 + 1352);
    v4 = swift_allocObject();
    *(v0 + 1384) = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    sub_226E99364(0, &qword_2813989F0, 0x277CB8F30);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 656, v0 + 1344, sub_2273CFED4, v0 + 1296);
  }
}

uint64_t sub_2273CFED4()
{
  *(v1 + 1392) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 1344, sub_2273D010C, v1 + 1296);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_2273CFF18, 0, 0);
  }
}

uint64_t sub_2273CFF18()
{
  [*(v0 + 1376) setAccount_];

  return MEMORY[0x282200920](v0 + 656, v0 + 1344, sub_2273CFF90, v0 + 1296);
}

uint64_t sub_2273CFFAC()
{
  v0[176] = v0[173];
  v0[175] = &unk_227684A40;
  return MEMORY[0x282200920](v0 + 2, v0 + 167, sub_2273CFFE8, v0 + 82);
}

uint64_t sub_2273D0004()
{
  v1 = v0[176];
  v2 = v0[175];

  sub_226EA9E3C(v2, v1);
  v3 = v0[1];
  v4 = v0[172];

  return v3(v4);
}

uint64_t sub_2273D009C()
{

  sub_226EA9E3C(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273D0128()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 1336, sub_2273D0194, v0 + 656);
}

uint64_t sub_2273D01B0()
{
  v1 = *(v0 + 1384);

  sub_226EA9E3C(&unk_227684A40, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2273D0234(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2273D0254, 0, 0);
}

uint64_t sub_2273D0254()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_226FCECEC;

  return sub_226EA0808();
}

uint64_t sub_2273D02F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2273D0310, 0, 0);
}

uint64_t sub_2273D0310()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_accountProvider);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_226FCECEC;

  return MEMORY[0x2821AFC58](v3, v2);
}

uint64_t sub_2273D0484(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2273D04A4, 0, 0);
}

uint64_t sub_2273D04A4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_226FCADF8;

  return sub_226EA0808();
}

uint64_t sub_2273D0540(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v10 = a1;
  v11 = a2;
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  if (os_log_type_enabled(v12, v13))
  {
    v36 = v13;
    v37 = v12;
    v38 = v7;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v14 = 138543618;
    *(v14 + 4) = v10;
    v34 = v15;
    *v15 = a1;
    *(v14 + 12) = 2082;
    if (a2)
    {
      swift_getErrorValue();
      v33[1] = v39;
      v16 = a3;
      v18 = v40;
      v17 = v41;
      v19 = v10;
      v20 = v18;
      a3 = v16;
      v21 = MEMORY[0x22AA995D0](v20, v17);
      v23 = v22;
    }

    else
    {
      v24 = v10;
      v21 = 0;
      v23 = 0;
    }

    v42 = v21;
    v43 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v25 = sub_22766CB80();
    v27 = v26;

    v28 = sub_226E97AE8(v25, v27, &v44);

    *(v14 + 14) = v28;
    v29 = v37;
    _os_log_impl(&dword_226E8E000, v37, v36, "Authenticate - Result: %{public}@ Error: %{public}s", v14, 0x16u);
    v30 = v34;
    sub_226F2534C(v34);
    MEMORY[0x22AA9A450](v30, -1, -1);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v38 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return a3(a1, a2);
}

uint64_t sub_2273D0900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_2273D0234(a1, v4);
}

void sub_2273D09A0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD380, &qword_227684A18);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2273D173C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226EA24D4;
  aBlock[3] = &block_descriptor_45;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

void sub_2273D0B50(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD370, &qword_227684A08);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2273D1140;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226EA24D4;
  aBlock[3] = &block_descriptor_37_0;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

void sub_2273D0D00(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD358, &qword_2276849D0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2273D1068;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226EA24D4;
  aBlock[3] = &block_descriptor_30;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

void sub_2273D0EB0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD368, &qword_2276849F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2273D1124;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226EA24D4;
  aBlock[3] = &block_descriptor_27;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

uint64_t sub_2273D107C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return sub_2273D0484(a1, v4);
}

uint64_t sub_2273D1154(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 136) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_22766B390();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273D121C, 0, 0);
}

uint64_t sub_2273D121C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_226E99364(0, &qword_281398B38, 0x277CEE6D0);
  *v3 = v0;
  v3[1] = sub_2273D1328;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_2273D1734, v2, v4);
}

uint64_t sub_2273D1328()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2273D1528;
  }

  else
  {

    v2 = sub_2273D1444;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273D1444()
{
  v1 = *(v0 + 40);
  if ((*(v0 + 136) & 1) == 0)
  {
    [*(v0 + 40) setNetworkServiceType_];
  }

  if (*(v0 + 80))
  {
    v2 = sub_22766BFD0();
    v3 = sub_22766BFD0();
    [v1 setValue:v2 forHTTPHeaderField:v3];
  }

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_2273D1528()
{
  v21 = v0;
  v1 = v0[16];

  sub_22766A6C0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v12 = sub_226E97AE8(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request couldn't be encoded: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[16];
  sub_227145EAC();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2273D1750(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_2273D0234(a1, v4);
}

uint64_t sub_2273D17F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_2273D02F0(a1, v4);
}

void sub_2273D1898(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v10, v11, "Authenticate - Attempting to authenticate", v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = [a1 options];
  if (!v13)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CEE3D8]) init];
  }

  v14 = v13;
  [v13 setAuthenticationType_];
  v15 = sub_22766BFD0();
  [v14 setDebugReason_];

  [a1 setOptions_];
  v16 = [objc_allocWithZone(MEMORY[0x277CEE3E8]) initWithRequest_];
  v17 = [v16 performAuthentication];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_2273D1B70;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9F1D0;
  aBlock[3] = &block_descriptor_83;
  v19 = _Block_copy(aBlock);

  [v17 addFinishBlock_];
  _Block_release(v19);
}

void *sub_2273D1B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD390, &qword_227684A58);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v26 - v3;
  v5 = sub_227663590();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276640B0();
  MEMORY[0x28223BE20](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = v26 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v17 = *(v13 + 72);
  v30 = (v6 + 56);
  v31 = v17;
  v18 = (v6 + 32);
  v29 = (v6 + 48);
  v19 = MEMORY[0x277D84F90];
  v27 = v8;
  v28 = v6;
  v26[1] = v9;
  do
  {
    v20 = v32;
    sub_227141704(v16, v32);
    sub_2273D1F28(v20, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v18)(v4, v11, v5);
      (*v30)(v4, 0, 1, v5);
    }

    else
    {
      (*v30)(v4, 1, 1, v5);
      sub_227141768(v11);
    }

    if ((*v29)(v4, 1, v5) == 1)
    {
      sub_2273D1F8C(v4);
    }

    else
    {
      v21 = *v18;
      (*v18)(v8, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2273A6CEC(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_2273A6CEC((v22 > 1), v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      v24 = v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23;
      v8 = v27;
      v21(v24, v27, v5);
    }

    v16 += v31;
    --v15;
  }

  while (v15);
  return v19;
}

uint64_t sub_2273D1F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276640B0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273D1F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD390, &qword_227684A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2273D2018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v107 = a7;
  v104 = a5;
  v105 = a6;
  v112 = a3;
  v115 = a2;
  v116 = a8;
  v10 = sub_2276665E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v110 = *(v14 - 8);
  v111 = v14;
  v15 = *(v110 + 64);
  MEMORY[0x28223BE20](v14);
  v108 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v103 - v17;
  v18 = sub_227662750();
  v113 = *(v18 - 8);
  v114 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v103 - v25;
  v27 = sub_227664D30();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2273D2AF4(a1, v29);
  if ((*(v11 + 48))(v29, 1, v10) != 1)
  {
    v109 = v13;
    v110 = v11;
    v33 = *(v11 + 32);
    v111 = v10;
    v33(v13, v29, v10);
    v34 = sub_2276636B0();
    *&v117[0] = sub_227666C60();
    BYTE8(v117[0]) = v35 & 1;
    LOBYTE(v118) = 1;
    sub_226FFD9B0();
    sub_226FFDA04();
    v36 = sub_227663B30();
    sub_226E93170(v115, v23, &qword_27D7B8428, &qword_227675CB0);
    v37 = sub_227665AD0();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v23, 1, v37) == 1)
    {
      sub_226E97D1C(v23, &qword_27D7B8428, &qword_227675CB0);
      v39 = 0;
    }

    else
    {
      sub_227662740();
      v39 = sub_227665AA0();
      (*(v113 + 8))(v20, v114);
      (*(v38 + 8))(v23, v37);
    }

    v58 = sub_22714972C(MEMORY[0x277D84F90]);
    v60 = v109;
    v59 = v110;
    if (v39 & 1 | ((v36 & 1) == 0) | v34 & 1)
    {
      v61 = sub_227666580();
      v63 = v111;
      if (v62)
      {
        v64 = v61;
        v65 = v62;
        v66 = sub_2276647F0();
        v68 = v67;
        v118 = v64;
        v119 = v65;
        sub_22766CDA0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v58;
        sub_22736A5BC(v117, v66, v68, isUniquelyReferenced_nonNull_native);

        v58 = v118;
      }

      v70 = sub_227666550();
      if (v71)
      {
        v72 = v70;
        v73 = v71;
        v74 = sub_2276647D0();
        v76 = v75;
        v118 = v72;
        v119 = v73;
        sub_22766CDA0();
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v118 = v58;
        sub_22736A5BC(v117, v74, v76, v77);

        v78 = v118;
        v79 = sub_227664810();
        v81 = v80;
        v118 = sub_227666560();
        sub_22766CDA0();
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v118 = v78;
        sub_22736A5BC(v117, v79, v81, v82);

        v58 = v118;
      }

      v83 = sub_227666570();
      if (v84)
      {
        v85 = v83;
        v86 = v84;
        v87 = sub_227664820();
        v89 = v88;
        v118 = v85;
        v119 = v86;
        sub_22766CDA0();
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v118 = v58;
        sub_22736A5BC(v117, v87, v89, v90);

        v58 = v118;
      }

      v91 = sub_227666590();
      if (!v92)
      {
        goto LABEL_22;
      }

      v93 = v91;
      v94 = v92;
      v95 = sub_227664800();
    }

    else
    {
      v97 = sub_227666550();
      v63 = v111;
      if (!v98)
      {
LABEL_22:
        *(swift_allocObject() + 16) = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
        sub_227669280();
        return (*(v59 + 8))(v60, v63);
      }

      v93 = v97;
      v94 = v98;
      v95 = sub_227664780();
    }

    v99 = v95;
    v100 = v96;
    v118 = v93;
    v119 = v94;
    sub_22766CDA0();
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v58;
    sub_22736A5BC(v117, v99, v100, v101);

    v58 = v118;
    goto LABEL_22;
  }

  v30 = a4;
  sub_226E93170(v115, v26, &qword_27D7B8428, &qword_227675CB0);
  v31 = sub_227665AD0();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v26, 1, v31) == 1)
  {
    sub_226E97D1C(v26, &qword_27D7B8428, &qword_227675CB0);
  }

  else
  {
    sub_227662740();
    v40 = sub_227665AA0();
    (*(v113 + 8))(v20, v114);
    (*(v32 + 8))(v26, v31);
    if (v40)
    {
LABEL_8:
      v41 = v106;
      v42 = v107;
      v43 = v109;
      v44 = v30;
      v45 = v105;
      (*(v107 + 40))(v44, v104, v105, v107);
      v46 = sub_2273D29D4(v41, v45, v42);
      v48 = v47;
      v49 = swift_allocObject();
      *(v49 + 16) = v46;
      *(v49 + 24) = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_2273F40C4;
      *(v50 + 24) = v49;
      v52 = v110;
      v51 = v111;
      v53 = v108;
      (*(v110 + 16))(v108, v43, v111);
      v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v55 = swift_allocObject();
      (*(v52 + 32))(v55 + v54, v53, v51);
      v56 = (v55 + ((v15 + v54 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v56 = sub_2273F4100;
      v56[1] = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
      sub_227669270();
      return (*(v52 + 8))(v43, v51);
    }
  }

  if (sub_2276636B0())
  {
    goto LABEL_8;
  }

  v102 = sub_22714972C(MEMORY[0x277D84F90]);
  *(swift_allocObject() + 16) = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
  return sub_227669280();
}

unint64_t (*sub_2273D29D4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_2273F4264;
}

uint64_t sub_2273D2AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664D30();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273D8890(uint64_t a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD630, &unk_227684CC0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v22[-1] - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22[-1] - v14;
  sub_226E93170(a1, v23, &qword_27D7BA2B8, &qword_227678B38);
  if (v24)
  {
    v16 = *&v23[0];
    *v11 = *&v23[0];
    swift_storeEnumTagMultiPayload();
    v17 = v16;
    a4(v11);

    return sub_226E97D1C(v11, &unk_27D7BD630, &unk_227684CC0);
  }

  else
  {
    sub_226E92AB8(v23, v22);
    a2(v22);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    v19(sub_226E93814, v20);

    (*(v13 + 8))(v15, v12);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }
}

uint64_t sub_2273D8AD8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD610, &unk_227684CA0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD610, &unk_227684CA0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273D8CEC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for MetricServiceSubscriptionState(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD630, &unk_227684CC0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &unk_27D7BD630, &unk_227684CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_2273F60B0(v16, v13, type metadata accessor for MetricServiceSubscriptionState);
    v22(v13);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_226EB4544, v20);

    (*(v8 + 8))(v10, v7);
    sub_2273F6118(v13, type metadata accessor for MetricServiceSubscriptionState);
  }
}

void sub_2273D8F90(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276666A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD560, &unk_227684C50);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD560, &unk_227684C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273D9270(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227666C80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D0, &qword_227678B48);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BA2D0, &qword_227678B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273D9550(void *a1, char a2, void (*a3)(char *, double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v21 = a1;
    v22 = 1;
    v16 = a1;
    a5(&v21);
    sub_226EB4548(a1, 1);
  }

  else
  {
    v20 = a1;
    a3(&v20, v13);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EB4544, v18);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_2273D96F8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD630, &unk_227684CC0);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_227665AD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &unk_27D7BD630, &unk_227684CC0);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273D9A44(uint64_t a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v9);
  v11 = (&v22[-1] - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22[-1] - v14;
  sub_226E93170(a1, v23, &qword_27D7BA2B8, &qword_227678B38);
  if (v24)
  {
    v16 = *&v23[0];
    *v11 = *&v23[0];
    swift_storeEnumTagMultiPayload();
    v17 = v16;
    a4(v11);

    return sub_226E97D1C(v11, &qword_27D7B9B28, &unk_227684550);
  }

  else
  {
    sub_226E92AB8(v23, v22);
    a2(v22);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    v19(sub_226E937DC, v20);

    (*(v13 + 8))(v15, v12);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }
}

uint64_t sub_2273D9C8C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA330, &qword_227678B70);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BA330, &qword_227678B70);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273D9EA0(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA330, &qword_227678B70);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BA330, &qword_227678B70);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DA0D8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6C0, &unk_22768B740);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD6C0, &unk_22768B740);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DA2EC(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6C0, &unk_22768B740);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BD6C0, &unk_22768B740);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273DA524(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227663480();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9C0, &qword_227684EF8);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD9C0, &qword_227684EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2273DA804(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_227663480();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9C0, &qword_227684EF8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v25 - v17);
  sub_226E93170(a1, &v25 - v17, &unk_27D7BD9C0, &qword_227684EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v29(v15);

    return sub_226E97D1C(v15, &unk_27D7BD9C0, &qword_227684EF8);
  }

  else
  {
    (*(v10 + 32))(v12, v18, v9);
    v26(v12);
    v22 = v28;
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_226E93814, v24);

    (*(v27 + 8))(v8, v22);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_2273DAB20(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  v25 = a1;
  if (a2)
  {
    v26 = 1;
    v19 = a1;
    a5(&v25);
    v20 = MEMORY[0x277D84FB8];
    v21 = a1;
    v22 = 1;
  }

  else
  {

    a3(&v25);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = a5;
    *(v24 + 24) = a6;

    v23(a10, v24);

    (*(v16 + 8))(v18, v15);
    v20 = MEMORY[0x277D84FB8];
    v21 = a1;
    v22 = 0;
  }

  sub_226EB4668(v21, v22, v20);
}

void sub_2273DACE8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227663180();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9A0, &qword_227684EE8);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD9A0, &qword_227684EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2273DAFC8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A0, &qword_227684D08);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD6A0, &qword_227684D08);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DB1DC(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A0, &qword_227684D08);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BD6A0, &qword_227684D08);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273DB414(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227664700();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A0, &qword_227684D08);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD6A0, &qword_227684D08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273DB6F4(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20[-1] - v14;
  if (a2)
  {
    v20[0] = a1;
    v20[1] = 0;
    v21 = 1;
    v16 = a1;
    a5(v20);
    sub_226EB4548(a1, 1);
  }

  else
  {
    LOBYTE(v20[0]) = a1;
    (a3)(v20, v13);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EC29B8, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_2273DB89C(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24[-1] - v15;
  v24[0] = a1;
  v24[1] = a2;
  if (a3)
  {
    v25 = 1;
    v17 = a1;
    a6(v24);
    v18 = a1;
    v19 = a2;
    v20 = 1;
  }

  else
  {

    (a4)(v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a6;
    *(v22 + 24) = a7;

    v21(sub_226EC29B8, v22);

    (*(v14 + 8))(v16, v13);
    v18 = a1;
    v19 = a2;
    v20 = 0;
  }

  sub_226EC33EC(v18, v19, v20);
}

uint64_t sub_2273DBA60(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD790, &unk_227671C90);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD790, &unk_227671C90);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DBC74(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD790, &unk_227671C90);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD790, &unk_227671C90);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DBEAC(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD780, &qword_227684DB8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C0, &unk_22767E4C0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD780, &qword_227684DB8);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DC0C0(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD780, &qword_227684DB8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C0, &unk_22767E4C0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD780, &qword_227684DB8);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DC2F8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD770, &qword_22768B7A0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD770, &qword_22768B7A0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DC50C(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD770, &qword_22768B7A0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD770, &qword_22768B7A0);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DC744(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD760, &qword_227684DA8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD760, &qword_227684DA8);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DC958(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD760, &qword_227684DA8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD760, &qword_227684DA8);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DCB90(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD740, &unk_22768B770);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD740, &unk_22768B770);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DCDA4(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD740, &unk_22768B770);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD740, &unk_22768B770);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DCFDC(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD750, &unk_22767B6B0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD750, &unk_22767B6B0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DD1F0(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD750, &unk_22767B6B0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD750, &unk_22767B6B0);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DD428(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A8, &unk_227684D10);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD6A8, &unk_227684D10);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DD63C(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A8, &unk_227684D10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BD6A8, &unk_227684D10);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273DD874(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_226E93170(a1, v20, &qword_27D7BA300, &unk_227684C90);
  if (v21)
  {
    v13 = *&v20[0];
    v18 = *&v20[0];
    v19 = 1;
    v14 = *&v20[0];
    a4(&v18);
  }

  else
  {
    sub_226E92AB8(v20, &v18);
    a2(&v18);
    v15 = sub_227669290();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;

    v15(sub_226EB4544, v16);

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0(&v18);
  }
}

void sub_2273DDA48(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227665AD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273DDD28(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for MetricRecordingContext(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD610, &unk_227684CA0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &unk_27D7BD610, &unk_227684CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_2273F60B0(v16, v13, type metadata accessor for MetricRecordingContext);
    v22(v13);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_226EB4544, v20);

    (*(v8 + 8))(v10, v7);
    sub_2273F6118(v13, type metadata accessor for MetricRecordingContext);
  }
}

uint64_t sub_2273DDFCC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v24 = a3;
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MetricRecordingContext(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD610, &unk_227684CA0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v24 - v17);
  sub_226E93170(a1, &v24 - v17, &unk_27D7BD610, &unk_227684CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v26(v15);

    return sub_226E97D1C(v15, &unk_27D7BD610, &unk_227684CA0);
  }

  else
  {
    sub_2273F60B0(v18, v12, type metadata accessor for MetricRecordingContext);
    v25(v12);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = v27;

    v22(sub_226E93814, v23);

    (*(v7 + 8))(v9, v6);
    return sub_2273F6118(v12, type metadata accessor for MetricRecordingContext);
  }
}

uint64_t sub_2273DE2A8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BCAB8, &qword_22767FE80);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

double sub_2273DE4BC(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5, void (*a6)(void **), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  v21 = a1;
  if (a3)
  {
    LOBYTE(v22) = 1;
    v17 = a1;
    a6(&v21);
    return sub_2273F7F54(a1, a2, 1);
  }

  else
  {
    v22 = a2;

    a4(&v21);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;

    v19(sub_226E9F880, v20);

    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_2273DE68C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v25 - v17);
  sub_226E93170(a1, &v25 - v17, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v29(v15);

    return sub_226E97D1C(v15, &qword_27D7BBD48, &qword_22767C010);
  }

  else
  {
    (*(v10 + 32))(v12, v18, v9);
    v26(v12);
    v22 = v28;
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_226E93814, v24);

    (*(v27 + 8))(v8, v22);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_2273DE9A8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276642E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD448, &unk_22768B800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E9F880, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273DEC88(void *a1, char a2, void (*a3)(void **, double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v16 = a1;
    a5(&v19);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(&v19, v13);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226E9F880, v18);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_2273DEE30(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD538, &unk_22768B7F0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD538, &unk_22768B7F0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273DF044(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD538, &unk_22768B7F0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BD538, &unk_22768B7F0);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273DF27C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  v25 = a1;
  if (a2)
  {
    v26 = 1;
    v19 = a1;
    a5(&v25);
    v20 = MEMORY[0x277D85028];
    v21 = a1;
    v22 = 1;
  }

  else
  {
    swift_unknownObjectRetain();
    a3(&v25);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = a5;
    *(v24 + 24) = a6;

    v23(a10, v24);

    (*(v16 + 8))(v18, v15);
    v20 = MEMORY[0x277D85028];
    v21 = a1;
    v22 = 0;
  }

  sub_226EB4668(v21, v22, v20);
}

void sub_2273DF444(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22[-1] - v13;
  if (a2)
  {
    v22[0] = a1;
    v22[1] = 0;
    v23 = 1;
    v15 = a1;
    a5(v22);
    v16 = MEMORY[0x277D85028];
    v17 = a1;
    v18 = 1;
  }

  else
  {
    v22[0] = a1;
    swift_unknownObjectRetain();
    a3(v22);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_226EC29B8, v20);

    (*(v12 + 8))(v14, v11);
    v16 = MEMORY[0x277D85028];
    v17 = a1;
    v18 = 0;
  }

  sub_226EB4668(v17, v18, v16);
}

void sub_2273DF624(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9528, &qword_227674710);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD690, &unk_227674730);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_226E97D1C(v12, &qword_27D7B9528, &qword_227674710);
  }

  else
  {
    v21 = a1;
    swift_unknownObjectRetain();
    a3(&v21);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_226E93814, v19);

    (*(v14 + 8))(v16, v13);
    sub_226EB4668(a1, 0, MEMORY[0x277D85028]);
  }
}

void sub_2273DF864(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276658F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9528, &qword_227674710);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7B9528, &qword_227674710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273DFB44(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EB4544, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_226EF4F04(a1);
}

uint64_t sub_2273DFCF8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD650, &qword_227684CF0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273DFF0C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_2276624A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &qword_27D7BD650, &qword_227684CF0);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E0258(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_227666130();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BD650, &qword_227684CF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &qword_27D7B96C8, &qword_227674900);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E93814, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_2273E05A4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for AssetLoaderResponse(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_2273F60B0(v16, v13, type metadata accessor for AssetLoaderResponse);
    v22(v13);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_226EB4544, v20);

    (*(v8 + 8))(v10, v7);
    sub_2273F6118(v13, type metadata accessor for AssetLoaderResponse);
  }
}

uint64_t sub_2273E0848(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_2276631F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD658, &unk_227685650);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BD658, &unk_227685650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E0B94(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD658, &unk_227685650);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_227666230();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7B96C8, &qword_227674900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &qword_27D7BD658, &unk_227685650);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E93814, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E0EE0(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD658, &unk_227685650);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD658, &unk_227685650);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E10F4(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD658, &unk_227685650);
  MEMORY[0x28223BE20](v9);
  v11 = (&v21 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  sub_226E93170(a1, v23, &unk_27D7BE8D0, &qword_227684CF8);
  if (v24)
  {
    v16 = *&v23[0];
    *v11 = *&v23[0];
    swift_storeEnumTagMultiPayload();
    v17 = v16;
    a4(v11);

    return sub_226E97D1C(v11, &qword_27D7BD658, &unk_227685650);
  }

  else
  {
    sub_226F04970(v23, v22);
    a2(v22);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    v19(sub_226E937DC, v20);

    (*(v13 + 8))(v15, v12);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }
}

void sub_2273E133C(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20[-1] - v13;
  v20[0] = a1;
  if (a2)
  {
    v21 = 1;
    v15 = a1;
    a5(v20);
    sub_226E97D1C(v20, &unk_27D7BE8D0, &qword_227684CF8);
  }

  else
  {
    v16 = a1;
    a3(v20);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_2273F6310, v18);

    (*(v12 + 8))(v14, v11);
    sub_226EF4F04(a1);
  }
}

void sub_2273E1500(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E9F880, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273E17E0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_22766B7F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD620, &unk_227684CB0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD620, &unk_227684CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273E1AC0(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(id *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v20 = a1;
    v21 = 0;
    v22 = 1;
    v16 = a1;
    a5(&v20);
    sub_2270934D8(v20, v21, v22);
  }

  else
  {
    a3(v13);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EC29B8, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_2273E1C60(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, void (*a4)(_OWORD *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_226E93170(a1, v19, &unk_27D7BE8D0, &qword_227684CF8);
  if (v20)
  {
    v13 = *&v19[0];
    *&v18[0] = *&v19[0];
    BYTE8(v18[0]) = 1;
    v14 = *&v19[0];
    a4(v18);
  }

  else
  {
    sub_226F04970(v19, v18);
    a2(v18);
    v15 = sub_227669290();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;

    v15(sub_226EB4544, v16);

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

void sub_2273E1E34(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227668CE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BEB60, &unk_227684DD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2273E2114(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_2276690A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B8, &qword_227684DE0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BD7B8, &qword_227684DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &unk_27D7BEB60, &unk_227684DD0);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E2460(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BEB60, &unk_227684DD0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E2674(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BEB60, &unk_227684DD0);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273E28AC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_227665AD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_226E93170(a1, &v20 - v14, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EC29B0, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2273E2B8C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7B9B28, &unk_227684550);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E2DA0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_22766AAF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6F0, &qword_227684D58);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD6F0, &qword_227684D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273E3080(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void **), uint64_t a6, void (*a7)(void **), uint64_t a8)
{
  v25 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v26 = a1;
  if (a4)
  {
    LOBYTE(v27) = 1;
    v18 = a1;
    v25(&v26);
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = 1;
  }

  else
  {
    v27 = a2;
    v28 = a3;
    swift_unknownObjectRetain();
    a5(&v26);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v25;
    *(v24 + 24) = a8;

    v23(sub_226EB4544, v24);

    (*(v15 + 8))(v17, v14);
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = 0;
  }

  sub_2273F5F54(v19, v20, v21, v22);
}

uint64_t sub_2273E325C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v26[1] = a3;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD710, &qword_22768B760);
  MEMORY[0x28223BE20](v6);
  v8 = (v26 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB88, &qword_227684D80);
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD728, &unk_227684D90);
  MEMORY[0x28223BE20](v15);
  v17 = (v26 - v16);
  sub_226E93170(a1, v26 - v16, &qword_27D7BD728, &unk_227684D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v8 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v8);

    v20 = &unk_27D7BD710;
    v21 = &qword_22768B760;
    v22 = v8;
  }

  else
  {
    sub_226E95D18(v17, v14, &qword_27D7BD720, &qword_227684D88);
    v27(v14);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_226E93814, v24);

    (*(v28 + 8))(v11, v9);
    v22 = v14;
    v20 = &qword_27D7BD720;
    v21 = &qword_227684D88;
  }

  return sub_226E97D1C(v22, v20, v21);
}

void sub_2273E3574(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  v23 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  if (a4)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD450, &qword_227684B70);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;
    v26[2] = a3;
    swift_unknownObjectRetain();
    v24(v26);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = a8;

    v21(sub_226E937DC, v22);

    (*(v17 + 8))(v19, v16);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

uint64_t sub_2273E37B8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_227668BB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD700, &qword_227684D68);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BD700, &qword_227684D68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &unk_27D7BD450, &qword_227684B70);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E3B04(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD700, &qword_227684D68);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6F8, &qword_227684D60);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_22766AAF0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6F0, &qword_227684D58);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BD6F0, &qword_227684D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &qword_27D7BD700, &qword_227684D68);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E93814, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_2273E3E50(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  v23 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  if (a4)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7B9B28, &unk_227684550);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;
    v26[2] = a3;
    swift_unknownObjectRetain();
    v24(v26);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = a8;

    v21(sub_226E937DC, v22);

    (*(v17 + 8))(v19, v16);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

void sub_2273E4094(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  v23 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5F8, &qword_227684C88);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD600, &unk_22767BC30);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  if (a4)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD5F8, &qword_227684C88);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;
    v26[2] = a3;
    swift_unknownObjectRetain();
    v24(v26);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = a8;

    v21(sub_226E93814, v22);

    (*(v17 + 8))(v19, v16);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

void sub_2273E42D8(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  v23 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD20, &unk_227684BF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB80, &unk_22767BC20);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  if (a4)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BBD20, &unk_227684BF0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;
    v26[2] = a3;
    swift_unknownObjectRetain();
    v24(v26);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = a8;

    v21(sub_226E937DC, v22);

    (*(v17 + 8))(v19, v16);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

void sub_2273E451C(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  v23 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D8, &qword_227684D50);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD6E0, &qword_22767BC18);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  if (a4)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD6D8, &qword_227684D50);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;
    v26[2] = a3;
    swift_unknownObjectRetain();
    v24(v26);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = a8;

    v21(sub_226E93814, v22);

    (*(v17 + 8))(v19, v16);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

uint64_t sub_2273E4760(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD450, &qword_227684B70);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E4974(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227668720();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD6D0, &qword_22768C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273E4C54(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_2276666A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD560, &unk_227684C50);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_226E93170(a1, &v20 - v14, &qword_27D7BD560, &unk_227684C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_2273F86A4, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2273E4F34(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD560, &unk_227684C50);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD560, &unk_227684C50);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E5148(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_227666C80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D0, &qword_227678B48);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_226E93170(a1, &v20 - v14, &qword_27D7BA2D0, &qword_227678B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_2273F86A4, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2273E5428(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D0, &qword_227678B48);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BA2D0, &qword_227678B48);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E563C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEBF0, &qword_227684EE0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BEBF0, &qword_227684EE0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E5850(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEBF0, &qword_227684EE0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BEBF0, &qword_227684EE0);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E5A88(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD908, &unk_227684ED0);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD910, &qword_22767D5A8);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_227669080();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEBF0, &qword_227684EE0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BEBF0, &qword_227684EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &qword_27D7BD908, &unk_227684ED0);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E93814, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E5DD4(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E8, &unk_227684EB0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD8E8, &unk_227684EB0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E5FE8(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E8, &unk_227684EB0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BD8E8, &unk_227684EB0);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E6220(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D8, &unk_227684EA0);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E0, &qword_22767D5A0);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_2276645D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E8, &unk_227684EB0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BD8E8, &unk_227684EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &qword_27D7BD8D8, &unk_227684EA0);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E93814, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E656C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBD0, &unk_227684E80);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BEBD0, &unk_227684E80);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E6780(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBD0, &unk_227684E80);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BEBD0, &unk_227684E80);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E69B8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBC0, &unk_227684E70);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8B0, &qword_22767D598);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_227664220();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBD0, &unk_227684E80);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &unk_27D7BEBD0, &unk_227684E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &unk_27D7BEBC0, &unk_227684E70);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E93814, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E6D04(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD448, &unk_22768B800);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E6F18(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BD448, &unk_22768B800);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E7150(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7F0, &qword_22767C068);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB188, &unk_227684DF0);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_2276642E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BD448, &unk_22768B800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &unk_27D7BD7F0, &qword_22767C068);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E93814, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E749C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD890, &qword_22768B860);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD890, &qword_22768B860);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E76B0(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD890, &qword_22768B860);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD890, &qword_22768B860);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E78E8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD850, &unk_22768B850);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD850, &unk_22768B850);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E7AFC(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD850, &unk_22768B850);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD850, &unk_22768B850);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E7D34(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD840, &unk_22768B840);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC320, &qword_227684E30);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_2276692D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD850, &unk_22768B850);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &unk_27D7BD850, &unk_22768B850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &unk_27D7BD840, &unk_22768B840);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E93814, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E8080(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBB0, &unk_227684E10);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BEBB0, &unk_227684E10);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E8294(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBB0, &unk_227684E10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BEBB0, &unk_227684E10);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273E84CC(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD810, &unk_22768B830);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC318, &unk_227684E00);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_226E97D1C(v12, &unk_27D7BD810, &unk_22768B830);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_226E93814, v19);

    (*(v14 + 8))(v16, v13);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_2273E870C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_226E97D1C(v12, &qword_27D7BD448, &unk_22768B800);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_226E93814, v19);

    (*(v14 + 8))(v16, v13);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_2273E894C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276687F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7E0, &qword_227684DE8);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD7E0, &qword_227684DE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E9F880, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273E8C2C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7E0, &qword_227684DE8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF20, &unk_2276823C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_226E97D1C(v12, &unk_27D7BD7E0, &qword_227684DE8);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_226E93814, v19);

    (*(v14 + 8))(v16, v13);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

uint64_t sub_2273E8E6C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_227668CE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v25 - v17);
  sub_226E93170(a1, &v25 - v17, &unk_27D7BEB60, &unk_227684DD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v29(v15);

    return sub_226E97D1C(v15, &unk_27D7BEB60, &unk_227684DD0);
  }

  else
  {
    (*(v10 + 32))(v12, v18, v9);
    v26(v12);
    v22 = v28;
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_226E93814, v24);

    (*(v27 + 8))(v8, v22);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_2273E9188(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B8, &qword_227684DE0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B0, &unk_227682270);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_226E97D1C(v12, &qword_27D7BD7B8, &qword_227684DE0);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_226E93814, v19);

    (*(v14 + 8))(v16, v13);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_2273E93C8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227665AD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E9F880, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2273E96A8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_227663180();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9A0, &qword_227684EE8);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &unk_27D7BD9A0, &qword_227684EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_226E97D1C(v7, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273E99F4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v24 = a3;
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AssetLoaderResponse(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v24 - v17);
  sub_226E93170(a1, &v24 - v17, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v26(v15);

    return sub_226E97D1C(v15, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    sub_2273F60B0(v18, v12, type metadata accessor for AssetLoaderResponse);
    v25(v12);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = v27;

    v22(sub_226E937DC, v23);

    (*(v7 + 8))(v9, v6);
    return sub_2273F6118(v12, type metadata accessor for AssetLoaderResponse);
  }
}

uint64_t sub_2273E9CD0(uint64_t a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v9);
  v11 = (&v22[-1] - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22[-1] - v14;
  sub_226E93170(a1, v23, &qword_27D7BD410, &qword_227684B30);
  if (v24)
  {
    v16 = *&v23[0];
    *v11 = *&v23[0];
    swift_storeEnumTagMultiPayload();
    v17 = v16;
    a4(v11);

    return sub_226E97D1C(v11, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    sub_226E92AB8(v23, v22);
    a2(v22);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    v19(sub_226E937DC, v20);

    (*(v13 + 8))(v15, v12);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }
}

void sub_2273E9F18(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF50, &qword_22767C288);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &unk_27D7BBF50, &qword_22767C288);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_226E95D18(v16, v13, &unk_27D7BD3F0, &unk_2276823F0);
    v22(v13);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_226E9F880, v20);

    (*(v8 + 8))(v10, v7);
    sub_226E97D1C(v13, &unk_27D7BD3F0, &unk_2276823F0);
  }
}

uint64_t sub_2273EA1C8(void *a1, char a2, void (*a3)(char *, double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v22(v12);
    return sub_226E97D1C(v12, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    v23 = a1 & 1;
    a3(&v23, v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273EA3E8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273EA5FC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F0, qword_2276873A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F8, &qword_227684F20);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &qword_27D7BD9F8, &qword_227684F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_226E95D18(v16, v13, &qword_27D7BD9F0, qword_2276873A0);
    v22(v13);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_226EB4544, v20);

    (*(v8 + 8))(v10, v7);
    sub_226E97D1C(v13, &qword_27D7BD9F0, qword_2276873A0);
  }
}

void sub_2273EA8AC(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_226E97D1C(v12, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_226E937DC, v19);

    (*(v14 + 8))(v16, v13);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_2273EAAEC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_226E93170(a1, &v20 - v14, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 0;
    v27 = 1;
    v17 = v25;
    v23(&v25);

    sub_2270934D8(v25, v26, v27);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EC29B8, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273EADD0(void *a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - v19;
  if (a3)
  {
    v26 = a1;
    LOBYTE(v27) = 1;
    v21 = a1;
    a6(&v26);
    sub_2270934D8(a1, a2, 1);
  }

  else
  {
    v25 = a11;
    v26 = a1;
    v27 = a2;
    sub_226F5E0B4(a1, a2);
    a4(&v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;

    v22(v25, v23);

    (*(v18 + 8))(v20, v17);
    sub_226EDC420(v26, v27);
  }
}

void sub_2273EAF80(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(id *), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *, void))
{
  v22 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  if (a2)
  {
    v23 = a1;
    v24 = 0;
    v25 = 1;
    v18 = a1;
    a5(&v23);
    sub_2270934D8(v23, v24, v25);
  }

  else
  {
    v23 = a1;
    v19 = a1;
    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;

    v20(v22, v21);

    (*(v15 + 8))(v17, v14);
    a9(a1, 0);
  }
}

void sub_2273EB134(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226E9F880, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_226EF4F04(a1);
}

void sub_2273EB2E8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAE8, &qword_227680060);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E9F880, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273EB5C8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227666230();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7B96C8, &qword_227674900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2273EB8A8(void *a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  if (a3)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v22(v13);
    return sub_226E97D1C(v13, &qword_27D7B96C8, &qword_227674900);
  }

  else
  {
    v24 = a1;
    v25 = a2;
    sub_226F5E0B4(a1, a2);
    a4(&v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = v23;

    v20(sub_226E937DC, v21);

    (*(v15 + 8))(v17, v14);
    return sub_226EDC420(v24, v25);
  }
}

void sub_2273EBAD4(void *a1, char a2, void (*a3)(void **, double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v16 = a1;
    a5(&v19);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(&v19, v13);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EB4544, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_2273EBC7C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227663480();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9C0, &qword_227684EF8);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD9C0, &qword_227684EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E9F880, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_2273EBF5C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v21(v12);
    sub_226E97D1C(v12, &qword_27D7BD650, &qword_227684CF0);
  }

  else
  {
    v22 = a1;
    v18 = a1;
    a3(&v22);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = v21;
    *(v20 + 24) = a6;

    v19(sub_226E93814, v20);

    (*(v14 + 8))(v16, v13);
    sub_226EF4F04(a1);
  }
}

uint64_t sub_2273EC184(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD800, &qword_227678BD0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD800, &qword_227678BD0);
  }

  else
  {
    a3(v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273EC398(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD800, &qword_227678BD0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD800, &qword_227678BD0);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;

    (a4)(v24);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a7;

    v20(sub_226E937DC, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273EC5D0(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5, void (*a6)(void **), uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  if (a3)
  {
    v30 = a1;
    LOBYTE(v31) = 1;
    v21 = a1;
    a6(&v30);
    v22 = a1;
    v23 = a2;
    v24 = 1;
  }

  else
  {
    v29 = a11;
    v30 = a1;
    v25 = a6;
    v31 = a2;

    a4(&v30);
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = a7;

    v26(v29, v27);

    (*(v18 + 8))(v20, v17);
    v22 = a1;
    v23 = a2;
    v24 = 0;
  }

  sub_226EC33EC(v22, v23, v24);
}

void sub_2273EC788(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD908, &unk_227684ED0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD910, &qword_22767D5A8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_226E97D1C(v12, &qword_27D7BD908, &unk_227684ED0);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_226E937DC, v19);

    (*(v14 + 8))(v16, v13);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}