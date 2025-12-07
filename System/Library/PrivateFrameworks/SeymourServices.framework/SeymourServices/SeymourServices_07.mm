uint64_t sub_226F587E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C48, &unk_227671C40);
  v5 = sub_2276646D0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_227670CD0;
  (*(v6 + 16))(v8 + v7, a3, v5);
  sub_2275575BC(v8, v4[1], *(v4 + 16), v4[3]);
}

uint64_t sub_226F58900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = v2[37];
  v15 = v2[38];
  __swift_project_boxed_opaque_existential_0(v2 + 34, v14);

  sub_226ECF5D8(sub_226F5AE54, v2, v14, MEMORY[0x277D84F78] + 8, v15, v9);

  v16 = swift_allocObject();
  *(v16 + 16) = sub_226F5B0E0;
  *(v16 + 24) = v2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F5B0EC;
  *(v17 + 24) = v16;
  (*(v4 + 16))(v6, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v6, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_226F32FEC;
  v20[1] = v17;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

void sub_226F58C40(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C88, &qword_227671C80);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  v10 = qword_2813B2078;
  swift_beginAccess();
  v11 = sub_227542618(v7 + v10, v6, v5);
  if (v11)
  {
    if (v11 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_5;
  }

  v12 = sub_2272846DC(0);
  if (v1)
  {
LABEL_5:

    return;
  }

  v13 = v12;
  [v12 setResultType_];
  sub_226ED9864();
  v14 = sub_22766C9E0();
  v15 = sub_226EDAB24(v14);

  sub_226EDAB78(v15, v9);
}

uint64_t sub_226F58DF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = v2[37];
  v15 = v2[38];
  __swift_project_boxed_opaque_existential_0(v2 + 34, v14);

  sub_226ECF5D8(sub_226F5AD54, v2, v14, MEMORY[0x277D84F78] + 8, v15, v9);

  v16 = swift_allocObject();
  *(v16 + 16) = sub_226F5B0C4;
  *(v16 + 24) = v2;
  (*(v4 + 16))(v6, v9, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v17, v6, v3);
  v20 = (v19 + v18);
  *v20 = sub_226F32FEC;
  v20[1] = v16;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226F5910C(void *a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_2272331B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v14 = qword_2813B2078;
    v15 = sub_22766A100();
    (*(*(v15 - 8) + 8))(v10 + v14, v15);
    return swift_deallocClassInstance();
  }

  else
  {
    v17 = v13;
    swift_setDeallocating();

    v18 = qword_2813B2078;
    v19 = sub_22766A100();
    (*(*(v19 - 8) + 8))(v10 + v18, v19);
    swift_deallocClassInstance();
    sub_22751304C(v17, a1);
    __swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
    v20 = sub_226F5A5AC(v17);

    sub_2272D7A98(1, v20, a1);
  }
}

char *sub_226F593A0(void *a1, uint64_t a2)
{
  result = sub_2275134A4(a1);
  if (!v2)
  {
    v6 = result;
    sub_22751304C(result, a1);
    __swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
    v7 = sub_226F5A5AC(v6);

    sub_2272D7A98(1, v7, a1);
  }

  return result;
}

uint64_t sub_226F59450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v5 = sub_227669040();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v38 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v35 = &v34 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v3[37];
  v18 = v3[38];
  __swift_project_boxed_opaque_existential_0(v3 + 34, v17);
  (*(v6 + 16))(v8, a1, v5);
  v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v6 + 32))(v20 + v19, v8, v5);

  v21 = v35;
  sub_226ECF5D8(sub_226F5ACEC, v20, v17, MEMORY[0x277D84F78] + 8, v18, v35);

  v22 = *__swift_project_boxed_opaque_existential_0(v3 + 47, v3[50]);
  v41[3] = type metadata accessor for SyncCoordinator(0);
  v41[4] = &off_283AA3680;
  v41[0] = v22;
  sub_226E91B50(v41, v40);
  v23 = swift_allocObject();
  sub_226F19770(v40, v23 + 16);

  __swift_destroy_boxed_opaque_existential_0(v41);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_226F3277C;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_226F5AD2C;
  *(v25 + 24) = v24;
  v26 = v36;
  v27 = v21;
  v28 = v38;
  (*(v9 + 16))(v36, v21, v38);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = (v37 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v9 + 32))(v31 + v29, v26, v28);
  v32 = (v31 + v30);
  *v32 = sub_226F32FEC;
  v32[1] = v25;
  sub_227669270();
  return (*(v9 + 8))(v27, v28);
}

void sub_226F598F0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_227513C04(a3, a1);
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_227670CD0;
    v7 = sub_226F5AE70(&qword_27D7B8C70, MEMORY[0x277D539C0], &unk_227676E68);
    v8 = *(v7 + 104);
    v9 = sub_227669040();
    v8(&v11, v9, v7);
    *(v6 + 32) = sub_22766D140();
    *(v6 + 40) = v10;
    sub_2272D7AC4(0, v6, a1);
  }
}

void sub_226F59A2C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C90, &qword_227671C88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_0((a2 + 136), *(a2 + 160));
  sub_2275129B4(a1, v12);
  if (!v3)
  {
    sub_226E93170(v12, v9, &qword_27D7B8C90, &qword_227671C88);
    v13 = sub_227669040();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      sub_226E97D1C(v9, &qword_27D7B8C90, &qword_227671C88);
      sub_227669030();
      sub_226E97D1C(v12, &qword_27D7B8C90, &qword_227671C88);
    }

    else
    {
      sub_226E97D1C(v12, &qword_27D7B8C90, &qword_227671C88);
      (*(v14 + 32))(a3, v9, v13);
    }
  }
}

uint64_t sub_226F59BF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C88, &qword_227671C80);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_2272337B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    result = swift_deallocClassInstance();
    *a2 = v16;
  }

  return result;
}

uint64_t sub_226F59E0C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_227513EC4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226F59E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a1;
  v33 = a2;
  v4 = sub_227666170();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v28 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = v3[37];
  v28 = v3[38];
  __swift_project_boxed_opaque_existential_0(v3 + 34, v16);
  v17 = v4;
  (*(v5 + 16))(v7, v30, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  (*(v5 + 32))(v19 + v18, v7, v17);

  v20 = v29;
  sub_226ECF5D8(sub_226F5AD70, v19, v16, MEMORY[0x277D84F78] + 8, v28, v29);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_226F5AE3C;
  *(v21 + 24) = v3;
  v23 = v31;
  v22 = v32;
  (*(v8 + 16))(v31, v20, v32);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_226F32FEC;
  v26[1] = v21;

  sub_227669270();
  return (*(v8 + 8))(v20, v22);
}

uint64_t sub_226F5A240(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C80, &qword_227679AE0);
  v8 = sub_227666170();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v11 + v10, a3, v8);
  sub_2275586F8(v11, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    *(v13 + 32) = sub_227666150();
    *(v13 + 40) = v14;
    sub_2272D7A98(0, v13, a1);
  }

  return result;
}

uint64_t sub_226F5A3E8(uint64_t a1)
{
  v3 = sub_2276624A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_0((*v1 + 56), *(*v1 + 80));
  sub_226E9EF44();
  v6 = objc_allocWithZone(sub_22766AA60());
  v7 = sub_22766AA50();
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = "SeymourServices/EngagementSystem.swift";
  *(v10 + 24) = 38;
  *(v10 + 32) = 2;
  *(v10 + 40) = 229;
  *(v10 + 48) = &unk_227671C30;
  *(v10 + 56) = v9;
  return sub_227669270();
}

uint64_t sub_226F5A5AC(uint64_t a1)
{
  v47 = sub_227666170();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - v7;
  v8 = *(a1 + 16);
  v52 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v9 = a1 + 56;
  v10 = v52;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(a1 + 56);
  v14 = (63 - v12) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v8;
  if (v8)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v15 = 0;
    v16 = 0;
    while (v13)
    {
      v17 = v10;
LABEL_11:
      v19 = v49;
      v20 = *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v21 = v46;
      v22 = v47;
      (*(v49 + 16))(v46, v20, v47);
      v23 = sub_227666150();
      v50 = v24;
      v51 = v23;
      (*(v19 + 8))(v21, v22);
      v10 = v17;
      v52 = v17;
      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      ++v15;
      v13 &= v13 - 1;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      v27 = v50;
      *(v26 + 32) = v51;
      *(v26 + 40) = v27;
      a1 = v48;
      if (v15 == v45)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v10;
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_16:
    v28 = v49;
    v50 = v49 + 16;
    v45 = v49 + 8;
    v46 = (v49 + 32);
    if (!v13)
    {
      goto LABEL_18;
    }

    do
    {
      v51 = v10;
LABEL_22:
      v30 = *(a1 + 48) + *(v28 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v31 = v42;
      v32 = v47;
      (*(v28 + 16))(v42, v30, v47);
      v33 = v41;
      (*(v28 + 32))(v41, v31, v32);
      v34 = sub_227666150();
      v36 = v35;
      (*(v28 + 8))(v33, v32);
      v10 = v51;
      v52 = v51;
      v37 = *(v51 + 16);
      if (v37 >= *(v51 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      v13 &= v13 - 1;
      *(v10 + 16) = v37 + 1;
      v38 = v10 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      a1 = v48;
      v28 = v49;
    }

    while (v13);
LABEL_18:
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v14)
      {

        return v10;
      }

      v13 = *(v9 + 8 * v29);
      ++v16;
      if (v13)
      {
        v51 = v10;
        v16 = v29;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_226F5A990(uint64_t a1)
{
  v4 = *(sub_2276624A0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_226F582F4(a1, v6, v1 + v5);
}

uint64_t sub_226F5AB40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C58, &qword_227671C50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F5AE70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226F5AFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_226F5B178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226F5B19C, 0, 0);
}

uint64_t sub_226F5B19C()
{
  v1 = v0[4];
  v2 = v1[2];
  v0[5] = v2;
  if (v2)
  {
    v0[6] = 0;
    v3 = v1[7];
    v4 = v1[8];
    __swift_project_boxed_opaque_existential_0(v1 + 4, v3);
    v10 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_226F5B310;
    v7 = v0[2];
    v6 = v0[3];

    return v10(v7, v6, v3, v4);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_226F5B310()
{

  return MEMORY[0x2822009F8](sub_226F5B40C, 0, 0);
}

uint64_t sub_226F5B40C()
{
  v1 = v0[6] + 1;
  if (v1 == v0[5])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[6] = v1;
    v4 = (v0[4] + 40 * v1);
    v5 = v4[7];
    v6 = v4[8];
    __swift_project_boxed_opaque_existential_0(v4 + 4, v5);
    v10 = (*(v6 + 8) + **(v6 + 8));
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_226F5B310;
    v9 = v0[2];
    v8 = v0[3];

    return v10(v9, v8, v5, v6);
  }
}

uint64_t sub_226F5B58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a3 + 32);
  v12 = *(a3 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = v11[3];
    v15 = v11[4];
    __swift_project_boxed_opaque_existential_0(v11, v14);
    v16 = (*(v15 + 16))(a1, a2, a4, a5, a6, v14, v15);
    v11 = v13;
    if (v16)
    {
      return v16;
    }
  }

  return 0;
}

uint64_t sub_226F5B64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + 32);
  v12 = *(a4 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = v11[3];
    v15 = v11[4];
    __swift_project_boxed_opaque_existential_0(v11, v14);
    v16 = (*(v15 + 24))(a1, a2, a3, a5, a6, v14, v15);
    v11 = v13;
    if (v16)
    {
      return v16;
    }
  }

  return 0;
}

uint64_t sub_226F5B70C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E92F34;

  return sub_226F5B178(a1, a2, v6);
}

void sub_226F5B7DC(void *a1)
{
  v3 = sub_227662190();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227665440();
  v8 = [a1 dateOffset];
  if (v8)
  {
    v19 = v4;
    v9 = v8;
    sub_22766C000();

    sub_2276620C0();
    if (!v1)
    {
      sub_227662120();
      if (v10 & 1) != 0 || (sub_227662130(), (v11) || (sub_227662160(), (v12) || (sub_227662170(), (v13))
      {
        v14 = sub_227664470();
        sub_226F5C124(&qword_27D7BA250, MEMORY[0x277D50940], MEMORY[0x277D50948]);
        swift_allocError();
        (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D50908], v14);
        swift_willThrow();

        (*(v19 + 8))(v6, v3);
        return;
      }

      sub_2276653F0();
      (*(v19 + 8))(v6, v3);
      [a1 index];
      sub_227665EF0();
    }
  }

  else
  {
    v16 = sub_227664DD0();
    sub_226F5C124(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51028], v16);
    swift_willThrow();
  }
}

void *static WorkoutPlanReference.representativeSamples()()
{
  v25 = sub_227665440();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CA0, &qword_227671D68);
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = v18 - v3;
  v22 = sub_227665F20();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CA8, &qword_227671D70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_227670CD0;
  sub_2276653F0();
  sub_226F05E24();
  v31 = sub_22766CFA0();
  v32[0] = v8;
  v32[1] = v32;
  v32[2] = &v31;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CB0, &qword_227671D78);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v27 = sub_226F5BF60(&qword_27D7B8CB8, &qword_27D7B8CB0, &qword_227671D78);
  v28 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v20 = v7;
    v26 = MEMORY[0x277D84F90];
    result = sub_226F1F708(0, v10, 0);
    v12 = 0;
    v13 = v26;
    v21 = v2;
    v19 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = (v0 + 16);
    v18[1] = v5 + 32;
    v15 = v20;
    while (v12 < *(v9 + 16))
    {
      sub_226F5BFF4(v19 + *(v21 + 72) * v12, v4);
      (*v14)(v24, v4, v25);
      sub_227665EF0();
      sub_226F5C064(v4);
      v26 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_226F1F708((v16 > 1), v17 + 1, 1);
        v13 = v26;
      }

      ++v12;
      *(v13 + 16) = v17 + 1;
      result = (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v15, v22);
      if (v10 == v12)
      {

        return v13;
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

uint64_t sub_226F5BF60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_226F5BFF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CA0, &qword_227671D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F5C064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CA0, &qword_227671D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F5C0CC(uint64_t a1)
{
  result = sub_226F5C124(&qword_27D7B8CC0, MEMORY[0x277D51FE0], &protocol conformance descriptor for WorkoutPlanReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F5C124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_226F5C16C(void *a1)
{
  v3 = sub_227665440();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665F00();
  sub_22730F2B4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 8))(v6, v3);
  v8 = sub_22766BFD0();

  [a1 setDateOffset_];

  v9 = sub_227665F10();
  v10 = 0x7FFFFFFFLL;
  if (v9 < 0x7FFFFFFF)
  {
    v10 = v9;
  }

  if (v10 <= 0xFFFFFFFF80000000)
  {
    v11 = 0xFFFFFFFF80000000;
  }

  else
  {
    v11 = v10;
  }

  return [a1 setIndex_];
}

void sub_226F5C2F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v48 - v7;
  v60 = sub_2276627D0();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v12);
  v59 = &v48 - v13;
  v61 = sub_227662750();
  v14 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  v24 = [a1 sessionIdentifier];
  if (!v24)
  {
    goto LABEL_12;
  }

  v53 = a2;
  v25 = v24;
  v52 = sub_22766C000();
  v27 = v26;

  v28 = [a1 catalogWorkoutIdentifier];
  if (!v28)
  {
LABEL_11:

LABEL_12:
    v42 = sub_227664DD0();
    sub_226F5D360(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51028], v42);
    swift_willThrow();

    return;
  }

  v54 = v27;
  v29 = v28;
  v51 = sub_22766C000();
  v31 = v30;

  v32 = [a1 startDate];
  if (!v32)
  {
LABEL_10:

    goto LABEL_11;
  }

  v33 = v32;
  sub_227662710();

  v34 = v19;
  v35 = v61;
  (*(v14 + 32))(v23, v34, v61);
  v36 = [a1 healthKitWorkoutIdentifier];
  if (!v36)
  {
    (*(v14 + 8))(v23, v35);
    goto LABEL_10;
  }

  v37 = v36;
  sub_2276627B0();

  (*(v58 + 32))(v59, v11, v60);
  v49 = [a1 workoutActivityType];
  [a1 duration];
  v38 = [a1 queueIdentifier];
  v50 = v31;
  if (v38)
  {
    v39 = v38;
    sub_22766C000();

    v40 = [a1 playlistIdentifier];
    if (v40)
    {
      v41 = v40;
      v48 = sub_22766C000();
    }

    v45 = v57;
    sub_227664920();
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v45 = v57;
  }

  v46 = sub_227664950();
  (*(*(v46 - 8) + 56))(v45, v44, 1, v46);
  v47 = v58;
  (*(v58 + 16))(v55, v59, v60);
  v57 = (v49 & ~(v49 >> 31));
  (*(v14 + 16))(v16, v23, v61);
  sub_226E93170(v45, v56, &qword_27D7B8CC8, &unk_227689B50);
  sub_227668340();

  sub_226E97D1C(v45, &qword_27D7B8CC8, &unk_227689B50);
  (*(v47 + 8))(v59, v60);
  (*(v14 + 8))(v23, v61);
}

void *static HealthKitStandaloneWorkoutJob.representativeSamples()()
{
  v50 = sub_227662750();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v31 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2276627D0();
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = v31 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CD0, &qword_227671E38);
  v6 = *(v44 - 1);
  MEMORY[0x28223BE20](v44);
  v41 = v31 - v7;
  v43 = sub_227668390();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  v11 = sub_22766C090();
  v12 = sub_227662780();
  sub_226F5D220();
  v13 = sub_22766CFA0();
  v14 = sub_227662630();
  sub_226F5D274();
  v15 = sub_22766BE70();
  v16 = sub_227664950();
  v17 = sub_22766C320();
  v68 = v11;
  v69[0] = v10;
  v69[1] = v69;
  v69[2] = &v68;
  v66 = v13;
  v67 = v12;
  v69[3] = &v67;
  v69[4] = &v66;
  v64 = v15;
  v65 = v14;
  v69[5] = &v65;
  v69[6] = &v64;
  v63 = v17;
  v69[7] = &v63;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v57 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D00, &qword_227671E58);
  v55[0] = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v55[1] = v55[0];
  v55[2] = sub_226F5BF60(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v55[3] = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v55[4] = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v55[5] = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v55[6] = sub_226F5BF60(&qword_27D7B8D20, &qword_27D7B8D00, &qword_227671E58);
  v18 = sub_2276638E0();

  v19 = *(v18 + 16);
  if (v19)
  {
    v54 = MEMORY[0x277D84F90];
    result = sub_226F1F728(0, v19, 0);
    v21 = 0;
    v35 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v22 = v54;
    v34 = v16 - 8;
    v33 = (v52 + 16);
    v32 = (v53 + 16);
    v31[1] = v8 + 32;
    v40 = v6;
    v39 = v8;
    v38 = v16;
    v37 = v18;
    v36 = v19;
    while (v21 < *(v18 + 16))
    {
      v23 = v41;
      sub_226E93170(v35 + *(v6 + 72) * v21, v41, &qword_27D7B8CD0, &qword_227671E38);
      v53 = *v23;
      v52 = *(v23 + 2);
      v24 = v44[16];
      v51 = *&v23[v44[20]];
      v25 = v44[24];
      v26 = *(v16 - 8);
      v27 = v45;
      (*(v26 + 16))(v45, &v23[v44[32]], v16);
      (*(v26 + 56))(v27, 0, 1, v16);
      (*v33)(v47, &v23[v24], v48);
      (*v32)(v49, &v23[v25], v50);
      sub_226E93170(v27, v46, &qword_27D7B8CC8, &unk_227689B50);

      v28 = v42;
      sub_227668340();
      sub_226E97D1C(v27, &qword_27D7B8CC8, &unk_227689B50);
      sub_226E97D1C(v23, &qword_27D7B8CD0, &qword_227671E38);
      v54 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F1F728((v29 > 1), v30 + 1, 1);
        v22 = v54;
      }

      ++v21;
      *(v22 + 16) = v30 + 1;
      result = (*(v39 + 32))(v22 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30, v28, v43);
      v6 = v40;
      v16 = v38;
      v18 = v37;
      if (v36 == v21)
      {

        return v22;
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

unint64_t sub_226F5D220()
{
  result = qword_27D7B8CD8;
  if (!qword_27D7B8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8CD8);
  }

  return result;
}

unint64_t sub_226F5D274()
{
  result = qword_27D7B8CE0;
  if (!qword_27D7B8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8CE0);
  }

  return result;
}

uint64_t sub_226F5D308(uint64_t a1)
{
  result = sub_226F5D360(&qword_2813A5568, MEMORY[0x277D53480], &protocol conformance descriptor for HealthKitStandaloneWorkoutJob);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F5D360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226F5D3A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - v5;
  v31 = sub_227662750();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227668350();
  v13 = sub_22766BFD0();

  [a1 setSessionIdentifier_];

  sub_227668320();
  v14 = sub_22766BFD0();

  [a1 setCatalogWorkoutIdentifier_];

  sub_227668310();
  v15 = sub_227662790();
  v16 = v9;
  v17 = v30;
  (*(v10 + 8))(v12, v16);
  [a1 setHealthKitWorkoutIdentifier_];

  v18 = sub_227668360();
  if (v18 >= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFFLL;
  }

  else
  {
    v19 = v18;
  }

  [a1 setWorkoutActivityType_];
  sub_227668380();
  v20 = sub_2276626A0();
  (*(v6 + 8))(v8, v31);
  [a1 setStartDate_];

  sub_227668370();
  [a1 setDuration_];
  sub_227668330();
  v21 = sub_227664950();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v17, 1, v21) == 1)
  {
    sub_226E97D1C(v17, &qword_27D7B8CC8, &unk_227689B50);
    v24 = 0;
  }

  else
  {
    sub_227664930();
    (*(v22 + 8))(v17, v21);
    v24 = sub_22766BFD0();
  }

  [a1 setQueueIdentifier_];

  v25 = v32;
  sub_227668330();
  if (v23(v25, 1, v21) == 1)
  {
    sub_226E97D1C(v25, &qword_27D7B8CC8, &unk_227689B50);
  }

  else
  {
    sub_227664940();
    v27 = v26;
    (*(v22 + 8))(v25, v21);
    if (v27)
    {
      v28 = sub_22766BFD0();

      [a1 setPlaylistIdentifier_];
    }
  }
}

void sub_226F5D81C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 zoneName];
  if (v12)
  {
    v25 = a2;
    v13 = v12;
    sub_22766C000();

    sub_2276694B0();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_226E97D1C(v6, &qword_27D7B8460, qword_2276709E0);
    }

    else
    {
      v14 = *(v8 + 32);
      v14(v11, v6, v7);
      v15 = [a1 changeWindow];
      if (v15)
      {
        v16 = v15;
        v17 = sub_227662590();
        v19 = v18;

        v20 = v25;
        v14(v25, v11, v7);
        v21 = &v20[*(type metadata accessor for SyncZoneChangeWindow(0) + 20)];
        *v21 = v17;
        v21[1] = v19;
        return;
      }

      (*(v8 + 8))(v11, v7);
    }
  }

  v22 = sub_227664DD0();
  sub_226F5DC10(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51028], v22);
  swift_willThrow();
}

void sub_226F5DB1C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2276694C0();
  v4 = sub_22766BFD0();

  [a1 setZoneName_];

  v5 = sub_227662560();
  [a1 setChangeWindow_];
}

uint64_t sub_226F5DBB8(uint64_t a1)
{
  result = sub_226F5DC10(qword_28139A520, type metadata accessor for SyncZoneChangeWindow, &unk_227671EA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F5DC10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226F5DC58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D28, &qword_227671EF0);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - v2;
  v28 = type metadata accessor for SyncZoneChangeWindow(0);
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276694D0();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = sub_2274CD740(*(v7 + 16), 0);
    v11 = *(sub_2276694E0() - 8);
    sub_2274CDD98(v38, &v10[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);
    v13 = v12;
    sub_226EBB21C(v38[0]);
    if (v13 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_5:
  v36 = sub_2276624D0();
  v37 = v10;
  v38[0] = &v37;
  v38[1] = &v36;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D38, &qword_227671F00);
  v32 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v33 = sub_226F5BF60(&qword_27D7B8D48, &qword_27D7B8D38, &qword_227671F00);
  v14 = sub_2276638E0();

  v15 = *(v14 + 16);
  if (v15)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_226F1EFD0(0, v15, 0);
    v17 = 0;
    v18 = v31;
    v19 = v14 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    while (v17 < *(v14 + 16))
    {
      sub_226F5E044(v19 + *(v30 + 72) * v17, v3);
      v20 = &v3[*(v29 + 48)];
      v21 = *v20;
      v22 = v20[1];
      v23 = sub_2276694E0();
      (*(*(v23 - 8) + 16))(v6, v3, v23);
      v24 = &v6[*(v28 + 20)];
      *v24 = v21;
      v24[1] = v22;
      sub_226F5E0B4(v21, v22);
      sub_226E97D1C(v3, &qword_27D7B8D28, &qword_227671EF0);
      v31 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1EFD0((v25 > 1), v26 + 1, 1);
        v18 = v31;
      }

      ++v17;
      *(v18 + 16) = v26 + 1;
      result = sub_226F5E108(v6, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v26);
      if (v15 == v17)
      {

        return v18;
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

uint64_t sub_226F5E044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D28, &qword_227671EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F5E0B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_226F5E108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncZoneChangeWindow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226F5E16C(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 type];
  if (!v4)
  {
LABEL_29:

LABEL_30:
    v15 = sub_227664DD0();
    sub_226F5EA44(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();

    return;
  }

  v5 = v4;
  v6 = sub_22766C000();
  v8 = v7;

  v9 = [a1 intensity];
  if (v9)
  {
    v10 = v9;
    sub_22766C000();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 rangeLowerBound];
  if ([a1 rangeUpperBound] >= v13)
  {
    [a1 shouldShowPlus];
    if (v6 == 0x52656E696C636E69 && v8 == 0xEA00000000006E75 || (sub_22766D190() & 1) != 0 || v6 == 0x57656E696C636E69 && v8 == 0xEB000000006B6C61 || (sub_22766D190() & 1) != 0)
    {

LABEL_11:
      [a1 duration];
      [a1 leadDuration];
      [a1 startTime];
      sub_227663DE0();

      return;
    }

    if (v6 == 0x7469736E65746E69 && v8 == 0xE900000000000079 || (sub_22766D190() & 1) != 0)
    {

      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (v6 == 7172210 && v8 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v6 == 7172211 && v8 == 0xE300000000000000)
      {

        goto LABEL_11;
      }

      v14 = sub_22766D190();

      if (v14)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_29;
  }

  __break(1u);
}

void *static CoachingEvent.representativeSamples()()
{
  v22 = sub_227663E50();
  v0 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  sub_226F5D274();
  v4 = sub_22766BE70();
  v5 = sub_22766BE70();
  v6 = sub_22766BE70();
  v37 = v4;
  v38[0] = v3;
  v38[1] = v38;
  v38[2] = &v37;
  v35 = v6;
  v36 = v5;
  v38[3] = &v36;
  v38[4] = &v35;
  v34 = &unk_283A92378;
  v38[5] = &v34;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v31 = v30;
  v32 = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D50, &qword_227671F08);
  v24 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v25 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v26 = v25;
  v27 = v25;
  v28 = sub_226F5BF60(&qword_27D7B8D58, &qword_27D7B8D50, &qword_227671F08);
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    result = sub_226F1F368(0, v8, 0);
    v10 = 0;
    v11 = 0;
    v12 = v23;
    v19 = v0 + 32;
    v21 = v7;
    v20 = v8;
    while (v11 < *(v7 + 16))
    {
      v13 = v0;
      v14 = *(v7 + v10 + 72);
      v15 = *(v7 + v10 + 80);
      v16 = *(v7 + v10 + 88);

      sub_226F5E9D4(v14, v15, v16);
      sub_227663DE0();
      v23 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F1F368((v17 > 1), v18 + 1, 1);
        v12 = v23;
      }

      ++v11;
      *(v12 + 16) = v18 + 1;
      v0 = v13;
      result = (*(v13 + 32))(v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v18, v2, v22);
      v10 += 64;
      v7 = v21;
      if (v20 == v11)
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

uint64_t sub_226F5E9D4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xE0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_226F5E9EC(uint64_t a1)
{
  result = sub_226F5EA44(&qword_27D7B8D60, MEMORY[0x277D50520], &protocol conformance descriptor for CoachingEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F5EA44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226F5EA8C(void *a1)
{
  sub_227663DF0();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  v3 = sub_227663E10();
  if (v5 >> 5 == 2)
  {
    sub_226F5ED70(v3, v4, v5);
  }

  v6 = sub_22766BFD0();

  [a1 setType_];

  sub_227663E40();
  [a1 setStartTime_];
  sub_227663E20();
  [a1 setDuration_];
  sub_227663E00();
  [a1 setLeadDuration_];
  v7 = sub_227663E10();
  v9 = v7;
  v11 = v10;
  v12 = v8 >> 5;
  if (v12 <= 2)
  {
    if (v12 >= 2)
    {
      v13 = v8;
      v18 = sub_22766BFD0();
      sub_226F5ED70(v9, v11, v13);
      [a1 setIntensity_];

      return;
    }

LABEL_14:
    if (v7 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v7 <= 0x7FFFFFFF)
    {
      [a1 setRangeLowerBound_];
      if (v11 >= 0xFFFFFFFF80000000)
      {
        if (v11 <= 0x7FFFFFFF)
        {
          v15 = sel_setRangeUpperBound_;
          v17 = a1;
          v16 = v11;
          goto LABEL_19;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v12 != 3)
  {
    goto LABEL_14;
  }

  if (v7 < 0xFFFFFFFF80000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = v8;
  [a1 setRangeLowerBound_];
  if (v11 < 0xFFFFFFFF80000000)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    return;
  }

  [a1 setRangeUpperBound_];
  v15 = sel_setShouldShowPlus_;
  v16 = v14 & 1;
  v17 = a1;
LABEL_19:

  [v17 v15];
}

uint64_t sub_226F5ED70(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xE0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_226F5ED98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D68, &qword_227671FC0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  v11 = sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v12 = MEMORY[0x22AA99A00](v11);
  sub_227544534(a2);
  objc_autoreleasePoolPop(v12);
  swift_setDeallocating();

  v13 = qword_2813B2078;
  v14 = sub_22766A100();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  return swift_deallocClassInstance();
}

void sub_226F5EF20(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D68, &qword_227671FC0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v11 = qword_2813B2078;
  swift_beginAccess();
  v12 = sub_2275426F0(v8 + v11, v7, v6);
  if (v12)
  {
    if (v12 == 1)
    {

LABEL_4:
      v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D70, &qword_227671FC8);
      v14 = sub_227664900();
      v15 = *(v14 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_227670CD0;
      (*(v15 + 16))(v17 + v16, a1, v14);
      sub_227558D1C(v17, v13[1], *(v13 + 16), v13[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v18 = sub_22728470C(0);
    if (!v23)
    {
      v19 = v18;
      [v18 setResultType_];
      sub_226ED9864();
      v20 = sub_22766C9E0();
      v21 = sub_226EDAB24(v20);

      sub_226EDAB78(v21, v10);

      goto LABEL_4;
    }
  }
}

uint64_t sub_226F5F1D0()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = v1[2];
  v40 = v1[4];
  ObjectType = swift_getObjectType();
  v46 = v10;
  v11 = *MEMORY[0x277D4EB58];
  v44 = *(v3 + 104);
  v45 = v3 + 104;
  v44(v5, v11, v2);
  swift_allocObject();
  v39 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();

  sub_227669EF0();

  v41 = *(v3 + 8);
  v41(v5, v2);
  v43 = v3 + 8;

  swift_unknownObjectRelease();
  v46 = v10;
  v12 = v44;
  v44(v5, *MEMORY[0x277D4EA68], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v38 = v2;
  v13 = v41;
  v41(v5, v2);

  swift_unknownObjectRelease();
  v46 = v10;
  v12(v5, *MEMORY[0x277D4E820], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v14 = v38;
  v13(v5, v38);

  swift_unknownObjectRelease();
  v46 = v10;
  v12(v5, *MEMORY[0x277D4EC78], v14);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_226F62F70(&qword_281398F70, &qword_27D7B84E0, &qword_22767C6B0);
  sub_226F62680();
  sub_227669E90();

  v15 = v41;
  v41(v5, v14);
  swift_unknownObjectRelease();
  v46 = v10;
  v44(v5, *MEMORY[0x277D4E6D0], v14);
  swift_allocObject();
  swift_weakInit();
  sub_227666190();
  swift_unknownObjectRetain();
  sub_227669E90();

  v15(v5, v14);
  swift_unknownObjectRelease();
  v46 = v10;
  v16 = v44;
  v44(v5, *MEMORY[0x277D4E5E8], v14);
  swift_allocObject();
  swift_weakInit();
  sub_227664DC0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v17 = v41;
  v41(v5, v14);
  swift_unknownObjectRelease();
  v46 = v10;
  v16(v5, *MEMORY[0x277D4EC40], v14);
  swift_allocObject();
  swift_weakInit();
  v37 = sub_227668F90();
  sub_2276689A0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v17(v5, v14);
  swift_unknownObjectRelease();
  v46 = v10;
  v18 = v44;
  v44(v5, *MEMORY[0x277D4E940], v14);
  swift_allocObject();
  swift_weakInit();
  sub_227668C50();
  sub_2276671E0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v19 = v38;
  v17(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v18(v5, *MEMORY[0x277D4ED50], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D78, &qword_227672050);
  sub_226F629CC();
  sub_226F62A50();
  sub_227669ED0();

  v20 = v41;
  v41(v5, v19);
  swift_unknownObjectRelease();
  v46 = v10;
  v44(v5, *MEMORY[0x277D4E338], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227668850();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v20(v5, v19);
  swift_unknownObjectRelease();
  v46 = v10;
  v21 = v44;
  v44(v5, *MEMORY[0x277D4E6E8], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v35[2] = sub_226F62BB8();
  v35[1] = sub_226F62C3C();
  sub_227669E90();

  v22 = v38;
  v41(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v21(v5, *MEMORY[0x277D4E898], v22);
  swift_allocObject();
  v23 = v39;
  swift_weakInit();
  v37 = sub_227666650();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v24 = v38;
  v41(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v44(v5, *MEMORY[0x277D4EA28], v24);
  swift_allocObject();
  v25 = v23;
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D80, &unk_227672090);
  sub_226F62E28();
  sub_226F62EAC();
  sub_227669ED0();

  v26 = v41;
  v41(v5, v24);
  swift_unknownObjectRelease();
  v46 = v10;
  v27 = v44;
  v44(v5, *MEMORY[0x277D4E980], v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v28 = v38;
  v26(v5, v38);
  swift_unknownObjectRelease();
  v46 = v10;
  v27(v5, *MEMORY[0x277D4E5C0], v28);
  v29 = v27;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  sub_226F62F70(&qword_281399000, &unk_27D7BB8B0, &unk_22767E490);
  sub_226F62FD8();
  sub_227669E80();

  v30 = v41;
  v41(v5, v28);
  swift_unknownObjectRelease();
  v46 = v10;
  LODWORD(v36) = *MEMORY[0x277D4E930];
  v29(v5);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v30(v5, v28);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v25 + 10, v25[13]);
  v31 = swift_allocObject();
  swift_weakInit();
  sub_226F64CC4(34, sub_226ECF5D0, v31);

  __swift_project_boxed_opaque_existential_0(v25 + 10, v25[13]);
  v32 = swift_allocObject();
  swift_weakInit();
  sub_22712A074(50, sub_226ED3AC4, v32);

  v33 = v25[15];
  swift_getObjectType();
  v46 = v33;
  v44(v5, v36, v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v30(v5, v28);
  return swift_unknownObjectRelease();
}

uint64_t sub_226F60324()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_226F60430;

    return sub_22715B14C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_226F60430()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226F60544;
  }

  else
  {
    v2 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F60544()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F605A8@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v13);

    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    a4();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v10 - 8) + 56))(a5, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v12 - 8) + 56))(a5, 1, 1, v12);
  }
}

uint64_t sub_226F606D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_226F606FC, 0, 0);
}

uint64_t sub_226F606FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_226F60850;
    v3 = v0[10];
    v4 = v0[11];

    return sub_22715E524(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276689A0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_226F60850()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_226F60964;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F60964()
{
  v1 = v0[10];
  v2 = sub_2276689A0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F60A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_226F60A30, 0, 0);
}

uint64_t sub_226F60A30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_226F60B84;
    v3 = v0[10];
    v4 = v0[11];

    return sub_227161A14(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276671E0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_226F60B84()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F60D40;
  }

  else
  {
    v2 = sub_226F60C98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F60C98()
{
  v1 = v0[10];
  v2 = sub_2276671E0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F60D40()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F60DA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F60DC4, 0, 0);
}

uint64_t sub_226F60DC4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_226F60ED8;

    return sub_227165ECC();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_226F60ED8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_226F69344;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_226F6938C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226F61000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_226F61024, 0, 0);
}

uint64_t sub_226F61024()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_226F61178;
    v3 = v0[10];
    v4 = v0[11];

    return sub_227161098(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_227668850();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_226F61178()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_226F6128C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F6128C()
{
  v1 = v0[10];
  v2 = sub_227668850();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F61334@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A660();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[70];
    v10 = v8[71];
    __swift_project_boxed_opaque_existential_0(v8 + 67, v9);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
    sub_226ECF5D8(sub_226F687F4, v8, v9, v11, v10, a2);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_226F61598(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F615B8, 0, 0);
}

uint64_t sub_226F615B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F6170C;
    v3 = v0[10];

    return sub_22715D2C4(v3);
  }

  else
  {
    v5 = v0[10];
    v6 = sub_227666650();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_226F6170C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F618C8;
  }

  else
  {
    v2 = sub_226F61820;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F61820()
{
  v1 = v0[10];
  v2 = sub_227666650();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F618C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F6192C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F6194C, 0, 0);
}

uint64_t sub_226F6194C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_226F61A60;

    return sub_22715D030();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_226F61A60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_226F69344;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_226F61B88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226F61B88()
{
  **(v0 + 80) = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F61BF8@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v19);

    v11 = *__swift_project_boxed_opaque_existential_0(v19, v19[3]);
    sub_22766A660();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    v12 = v11[70];
    v13 = v11[71];
    __swift_project_boxed_opaque_existential_0(v11 + 67, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
    sub_226ECF5D8(sub_226F687D4, v14, v12, v15, v13, a3);

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
    (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
    return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }
}

uint64_t sub_226F61E8C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_22715D764(v5, v4, a3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_226F61FC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F61FE8, 0, 0);
}

uint64_t sub_226F61FE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F620FC;
    v3 = v0[10];

    return sub_227170038(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_226F620FC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F69344;
  }

  else
  {
    v2 = sub_226F62210;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F62210()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F62274(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F62294, 0, 0);
}

uint64_t sub_226F62294()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_227170038(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_226F623A8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F69344;
  }

  else
  {
    v2 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F624BC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_226F62530()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_226F60304(v0);
}

unint64_t sub_226F62680()
{
  result = qword_281398F68;
  if (!qword_281398F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    sub_226F62704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F68);
  }

  return result;
}

unint64_t sub_226F62704()
{
  result = qword_2813991A8;
  if (!qword_2813991A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813991A8);
  }

  return result;
}

uint64_t sub_226F627D8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226F606D8(a1, a2, v2);
}

uint64_t sub_226F62884(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226F60A0C(a1, a2, v2);
}

uint64_t sub_226F62930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226F60DA4(a1, v1);
}

unint64_t sub_226F629CC()
{
  result = qword_281398C58;
  if (!qword_281398C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8D78, &qword_227672050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C58);
  }

  return result;
}

unint64_t sub_226F62A50()
{
  result = qword_281398C50;
  if (!qword_281398C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8D78, &qword_227672050);
    sub_226EE1A34(&qword_28139B290, MEMORY[0x277D53920], MEMORY[0x277D53918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C50);
  }

  return result;
}

uint64_t sub_226F62B04(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226F61000(a1, a2, v2);
}

unint64_t sub_226F62BB8()
{
  result = qword_281398E38;
  if (!qword_281398E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBA20, &qword_22767B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E38);
  }

  return result;
}

unint64_t sub_226F62C3C()
{
  result = qword_281398E30;
  if (!qword_281398E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBA20, &qword_22767B6C0);
    sub_226EE1A34(&qword_28139B988, MEMORY[0x277D508B0], MEMORY[0x277D508A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E30);
  }

  return result;
}

uint64_t sub_226F62CF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226F61598(a1, v1);
}

uint64_t sub_226F62D8C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226F6192C(a1, v1);
}

unint64_t sub_226F62E28()
{
  result = qword_281398D30;
  if (!qword_281398D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8D80, &unk_227672090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D30);
  }

  return result;
}

unint64_t sub_226F62EAC()
{
  result = qword_281398D28;
  if (!qword_281398D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8D80, &unk_227672090);
    sub_226EE1A34(&qword_28139B660, MEMORY[0x277D52498], MEMORY[0x277D52490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D28);
  }

  return result;
}

uint64_t sub_226F62F70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_226F62FD8()
{
  result = qword_281398FF8;
  if (!qword_281398FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BB8B0, &unk_22767E490);
    sub_226EE1A34(&qword_28139B590, MEMORY[0x277D52AB0], MEMORY[0x277D52AA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398FF8);
  }

  return result;
}

uint64_t sub_226F6308C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226F61FC8(a1, v1);
}

uint64_t sub_226F63124@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D88, &qword_2276720C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8D88, &qword_2276720C8);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_226ECFB7C(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F63344@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E08, &qword_2276721A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8E08, &qword_2276721A0);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A6048(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F63564@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8E00, &qword_227672198);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_226EA9990(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F63784@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB8, &qword_227672128);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD920, &qword_227672130);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DB8, &qword_227672128);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A7004(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F639A4@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC0, &qword_227672138);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC8, &qword_227672140);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DC0, &qword_227672138);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A7548(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F63BC4@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DD0, &qword_227672148);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD930, &qword_227672150);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DD0, &qword_227672148);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A7A8C(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F63DE4@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DD8, &qword_227672158);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD940, &qword_227672160);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DD8, &qword_227672158);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A8514(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F64004@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DE0, &qword_227672168);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD950, &qword_227672170);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DE0, &qword_227672168);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A8F9C(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F64224@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DE8, &qword_227672178);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF0, &qword_227672180);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DE8, &qword_227672178);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A94E0(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F64444@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF8, &qword_227672188);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD960, &qword_227672190);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DF8, &qword_227672188);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A9A24(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F64664@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DA8, &qword_227672118);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DA8, &qword_227672118);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272A9F68(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F64884@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D98, &qword_2276720F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8D98, &qword_2276720F8);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272AA4AC(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F64AA4@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DA0, &unk_227672108);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DA0, &unk_227672108);
LABEL_6:
    v13 = 1;
    return (*(v9 + 56))(a3, v13, 1, v8);
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  sub_2272AA9E0(v12, a3);

  (*(v9 + 8))(v12, v8);
  v13 = 0;
  return (*(v9 + 56))(a3, v13, 1, v8);
}

uint64_t sub_226F64CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226ECF344;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226ECF2EC, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226ECF340;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226ECF33C, v15);
}

uint64_t sub_226F64EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F692CC;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F692D8, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69388;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F693BC, v15);
}

uint64_t sub_226F650A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F68FD8;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F68FE4, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F6936C;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F693A0, v15);
}

uint64_t sub_226F65294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F6904C;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F69058, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69370;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F693A4, v15);
}

uint64_t sub_226F65484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F690C0;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F690CC, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69374;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F693A8, v15);
}

uint64_t sub_226F65674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F69134;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F69140, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69378;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F693AC, v15);
}

uint64_t sub_226F65864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F691A8;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F691B4, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F6937C;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F693B0, v15);
}

uint64_t sub_226F65A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F6921C;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F69228, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69380;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F693B4, v15);
}

uint64_t sub_226F65C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F69258;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F69264, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69384;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F693B8, v15);
}

uint64_t sub_226F65E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F68F10;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F68F1C, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69368;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F6939C, v15);
}

uint64_t sub_226F66024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F68810;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F6881C, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69360;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F69394, v15);
}

uint64_t sub_226F66214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226F68E44;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226F68E50, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226F69364;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226F69398, v15);
}

uint64_t sub_226F66404(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226F62274(a1, v1);
}

unint64_t sub_226F6649C()
{
  result = qword_28139B0B8;
  if (!qword_28139B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B0B8);
  }

  return result;
}

uint64_t sub_226F664F0@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E08, &qword_2276721A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8E08, &qword_2276721A0);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F68824;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F692E0;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F6681C@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB8, &qword_227672128);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD920, &qword_227672130);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DB8, &qword_227672128);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F688E8;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F68FEC;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F66B48@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC0, &qword_227672138);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC8, &qword_227672140);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DC0, &qword_227672138);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F689AC;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F69060;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F66E74@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DD0, &qword_227672148);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD930, &qword_227672150);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DD0, &qword_227672148);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F68A70;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F690D4;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F671A0@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DD8, &qword_227672158);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD940, &qword_227672160);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DD8, &qword_227672158);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F68B34;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F69148;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F674CC@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DE0, &qword_227672168);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD950, &qword_227672170);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DE0, &qword_227672168);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F68BF8;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F691BC;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F677F8@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DE8, &qword_227672178);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF0, &qword_227672180);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DE8, &qword_227672178);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226EE1970;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226EE1858;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F67B24@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF8, &qword_227672188);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD960, &qword_227672190);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DF8, &qword_227672188);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F68CBC;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F6926C;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F67E50@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DA8, &qword_227672118);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DA8, &qword_227672118);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F68D80;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F68F24;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F6817C@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D98, &qword_2276720F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8D98, &qword_2276720F8);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F68DE0;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F68E14;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F684A8@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DA0, &unk_227672108);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8DA0, &unk_227672108);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226F68E58;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226F68EE0;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226F68824@<X0>(uint64_t *a2@<X8>)
{
  sub_227663480();
  v4 = MEMORY[0x277D4FF88];
  sub_226EE1A34(&qword_28139BCD8, MEMORY[0x277D4FF88], MEMORY[0x277D4FF80]);
  sub_226EE1A34(&unk_2813A5800, v4, MEMORY[0x277D4FF90]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226F688E8@<X0>(uint64_t *a2@<X8>)
{
  sub_2276633A0();
  v4 = MEMORY[0x277D4FF18];
  sub_226EE1A34(&qword_28139BCE0, MEMORY[0x277D4FF18], MEMORY[0x277D4FF10]);
  sub_226EE1A34(&unk_28139BCF8, v4, MEMORY[0x277D4FF20]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226F689AC@<X0>(uint64_t *a2@<X8>)
{
  sub_2276632A0();
  v4 = MEMORY[0x277D4FE80];
  sub_226EE1A34(&qword_28139BD10, MEMORY[0x277D4FE80], MEMORY[0x277D4FE78]);
  sub_226EE1A34(&qword_28139BD28, v4, MEMORY[0x277D4FE88]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226F68A70@<X0>(uint64_t *a2@<X8>)
{
  sub_227669580();
  v4 = MEMORY[0x277D53E88];
  sub_226EE1A34(&qword_28139B1F0, MEMORY[0x277D53E88], MEMORY[0x277D53E80]);
  sub_226EE1A34(&unk_28139B208, v4, MEMORY[0x277D53E90]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226F68B34@<X0>(uint64_t *a2@<X8>)
{
  sub_227664EB0();
  v4 = MEMORY[0x277D51130];
  sub_226EE1A34(&qword_28139B8A0, MEMORY[0x277D51130], MEMORY[0x277D51128]);
  sub_226EE1A34(&qword_28139B8B8, v4, MEMORY[0x277D51138]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226F68BF8@<X0>(uint64_t *a2@<X8>)
{
  sub_227663A30();
  v4 = MEMORY[0x277D50278];
  sub_226EE1A34(&qword_28139BC78, MEMORY[0x277D50278], MEMORY[0x277D50270]);
  sub_226EE1A34(&qword_28139BC90, v4, MEMORY[0x277D50280]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226F68CBC@<X0>(uint64_t *a2@<X8>)
{
  sub_227666FF0();
  v4 = MEMORY[0x277D52AF8];
  sub_226EE1A34(&qword_28139B560, MEMORY[0x277D52AF8], MEMORY[0x277D52AF0]);
  sub_226EE1A34(&unk_28139B578, v4, MEMORY[0x277D52B00]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226F68D80@<X0>(uint64_t *a2@<X8>)
{
  sub_226F68F84();
  sub_226F44E40();
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_226F68E8C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a3@<X8>)
{
  a1(0);
  result = sub_227667710();
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

unint64_t sub_226F68F84()
{
  result = qword_28139BA08;
  if (!qword_28139BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BA08);
  }

  return result;
}

uint64_t WorkoutPlanGenerationScheduledItem.description.getter()
{
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000031, 0x80000002276945A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663AD0();
  MEMORY[0x22AA98450]();

  MEMORY[0x22AA98450](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  v0 = sub_22766D140();
  MEMORY[0x22AA98450](v0);

  MEMORY[0x22AA98450](0xD000000000000015, 0x80000002276945E0);
  sub_226F4906C();
  v1 = sub_22766C610();
  MEMORY[0x22AA98450](v1);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226F69538()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_226F69594()
{
  sub_22766D370();
  sub_22766D3B0();
  return sub_22766D3F0();
}

uint64_t sub_226F69608(uint64_t a1)
{
  sub_22766D370();
  sub_22766D3B0();
  return sub_22766D3F0();
}

_WORD *sub_226F6964C@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_226F6968C()
{
  result = qword_27D7B8E10;
  if (!qword_27D7B8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8E10);
  }

  return result;
}

unint64_t sub_226F696E4()
{
  result = qword_27D7B8E18;
  if (!qword_27D7B8E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BEA30, &unk_22768B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8E18);
  }

  return result;
}

uint64_t sub_226F69758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_2276637B0();
  v5[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F697EC, 0, 0);
}

uint64_t sub_226F697EC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_226F69918;
  v6 = v0[4];
  v5 = v0[5];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_226F69918()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_226F69B20;
  }

  else
  {
    v2 = sub_226F69A2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F69A2C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E20, &qword_22767C3B0) + 48);
  v5 = sub_227665680();
  (*(*(v5 - 8) + 16))(v3, v1, v5);
  sub_226F69C10(v2, v3 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  swift_storeEnumTagMultiPayload();

  v6 = v0[1];

  return v6();
}

uint64_t sub_226F69B20()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E20, &qword_22767C3B0) + 48);
  v5 = sub_227665680();
  (*(*(v5 - 8) + 16))(v3, v2, v5);
  *(v3 + v4) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  swift_storeEnumTagMultiPayload();

  v6 = v0[1];

  return v6();
}

uint64_t sub_226F69C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276637B0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AccountSyncStatusUpdated(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
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

_WORD *storeEnumTagSinglePayload for AccountSyncStatusUpdated(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_226F69DD4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22766B390();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F69E94, 0, 0);
}

uint64_t sub_226F69E94()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v1[30];
  v4 = v1[31];
  __swift_project_boxed_opaque_existential_0(v1 + 27, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v10 = (*(v4 + 24) + **(v4 + 24));
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E30, &unk_227672460);
  *v7 = v0;
  v7[1] = sub_226F6A048;

  return v10(v0 + 5, sub_226F6AB34, v6, v8, v3, v4);
}

uint64_t sub_226F6A048()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F6A1CC;
  }

  else
  {

    v2 = sub_226F6A164;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F6A164()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226F6A1CC()
{
  v20 = v0;
  v1 = *(v0 + 112);

  sub_22766A610();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to fetch all completed archived session identifiers: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_226F6A3A4@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a4;
  v6 = sub_227662010();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_2276625C0();
  (*(v10 + 16))(v13, v16, v9);
  sub_227662720();
  sub_227661FF0();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v17 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v18 = sub_226F72B08(v8, *v17, v17[1], *(v17 + 16), v17[3]);

  if (a3)
  {
    v20 = sub_226F73070(0, v18[2], a3, v18, a3);

LABEL_5:
    (*(v21 + 8))(v8, v22);
    result = (*(v10 + 8))(v16, v9);
    *v23 = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_226F6A644@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_0((a2 + 296), *(a2 + 320));
  result = sub_227253C1C(a3, a4, a1, v13);
  if (!v5)
  {
    v15 = sub_2276638D0();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      sub_226E97D1C(v13, &unk_27D7BB920, &unk_227672480);
      v17 = sub_227664AB0();
      sub_226F73C88(&qword_27D7B8E58, MEMORY[0x277D50D38], MEMORY[0x277D50D40]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D50CF8], v17);
      return swift_willThrow();
    }

    else
    {
      return (*(v16 + 32))(a5, v13, v15);
    }
  }

  return result;
}

uint64_t sub_226F6A860@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_2276627D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276637C0();
  sub_227669DE0();
  sub_227669DA0();
  v10 = v9;
  sub_2276637D0();
  v11 = sub_226F491E8();
  v12 = sub_22727227C(v8, v11, a1, v10);
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v14 = v12;
  (*(v6 + 8))(v8, v5);

  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = sub_2274CD7B8(*(v14 + 16), 0);
  v17 = *(sub_227664530() - 8);
  sub_2274CDE08(&v21, &v16[(*(v17 + 80) + 32) & ~*(v17 + 80)], v15, v14);
  v19 = v18;
  sub_226EBB21C(v21);
  if (v19 != v15)
  {
    __break(1u);
LABEL_6:

    v16 = MEMORY[0x277D84F90];
  }

  v21 = v16;

  sub_226F712B8(&v21);

  *a2 = v21;
  return result;
}

uint64_t sub_226F6AAA0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);

  return swift_deallocClassInstance();
}

uint64_t sub_226F6AB50(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_22766A490();
  v2[51] = v3;
  v2[52] = *(v3 - 8);
  v2[53] = swift_task_alloc();
  v4 = sub_227662750();
  v2[54] = v4;
  v2[55] = *(v4 - 8);
  v2[56] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v2[57] = v5;
  v2[58] = *(v5 + 64);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v6 = sub_2276627D0();
  v2[62] = v6;
  v2[63] = *(v6 - 8);
  v2[64] = swift_task_alloc();
  v7 = sub_2276638D0();
  v2[65] = v7;
  v8 = *(v7 - 8);
  v2[66] = v8;
  v2[67] = *(v8 + 64);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v2[71] = v9;
  v2[72] = *(v9 + 64);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v10 = sub_227664530();
  v2[76] = v10;
  v11 = *(v10 - 8);
  v2[77] = v11;
  v2[78] = *(v11 + 64);
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  v2[83] = swift_task_alloc();
  v12 = sub_227667A70();
  v2[84] = v12;
  v13 = *(v12 - 8);
  v2[85] = v13;
  v2[86] = *(v13 + 64);
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v14 = sub_22766B390();
  v2[92] = v14;
  v2[93] = *(v14 - 8);
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F6B038, 0, 0);
}

uint64_t sub_226F6B038()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 256), *(*(v0 + 400) + 280));
  *(v0 + 1144) = 22;
  *(v0 + 800) = sub_226F19410();
  *(v0 + 808) = sub_226F19464();
  sub_22766A130();
  sub_22766A610();

  v1 = sub_22766B380();
  v2 = sub_22766C8B0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 392);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = sub_22766CD20();
    }

    else
    {
      v6 = *(*(v0 + 392) + 16);
    }

    *(v5 + 4) = v6;

    _os_log_impl(&dword_226E8E000, v1, v2, "Running historical evaluation for [%ld] templates", v5, 0xCu);
    MEMORY[0x22AA9A450](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 792);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);
  v10 = *(v0 + 664);
  v11 = *(v8 + 8);
  *(v0 + 816) = v11;
  *(v0 + 824) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  v12 = sub_2276667B0();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = MEMORY[0x277D84F90];
  sub_226F73738(MEMORY[0x277D84F90]);
  sub_226F7383C(v13);
  sub_226F7383C(v13);
  sub_227667A20();
  v14 = swift_task_alloc();
  *(v0 + 832) = v14;
  *v14 = v0;
  v14[1] = sub_226F6B310;

  return sub_226F69DD4(100);
}

uint64_t sub_226F6B310(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 840) = a1;

  v4 = swift_task_alloc();
  *(v3 + 848) = v4;
  *v4 = v6;
  v4[1] = sub_226F6B444;

  return sub_226F7344C(a1);
}

uint64_t sub_226F6B444(char a1)
{
  *(*v1 + 1147) = a1;

  return MEMORY[0x2822009F8](sub_226F6B544, 0, 0);
}

uint64_t sub_226F6B544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 1147) == 1)
  {
    v4 = *(v3 + 840);
    v5 = *(v4 + 16);
    *(v3 + 856) = v5;
    if (v5)
    {
      v6 = *(v3 + 400);
      *(v3 + 872) = 0;
      *(v3 + 864) = MEMORY[0x277D84FA0];
      if (*(v4 + 16))
      {
        v7 = *(v4 + 32);
        *(v3 + 880) = v7;
        v8 = v6[22];
        v9 = v6[23];
        __swift_project_boxed_opaque_existential_0(v6 + 19, v8);

        v10 = swift_task_alloc();
        *(v3 + 888) = v10;
        a3 = *(v9 + 8);
        *v10 = v3;
        v10[1] = sub_226F6B9A4;
        v4 = v7;
        a2 = v8;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x2821AED70](v4, a2, a3);
    }

    else
    {

      *(v3 + 1120) = MEMORY[0x277D84FA0];
      v16 = *(v3 + 440);
      v15 = *(v3 + 448);
      v17 = *(v3 + 432);
      v18 = *(v3 + 400);
      sub_227662720();
      sub_2276679C0();
      (*(v16 + 8))(v15, v17);
      __swift_project_boxed_opaque_existential_0((v18 + 96), *(v18 + 120));
      v19 = swift_task_alloc();
      *(v3 + 1128) = v19;
      *v19 = v3;
      v19[1] = sub_226F6FF40;
      v20 = *(v3 + 696);

      return sub_226FB5BA4(v20);
    }
  }

  else
  {
    v11 = *(v3 + 400);
    (*(*(v3 + 680) + 8))(*(v3 + 728), *(v3 + 672), a3);

    __swift_project_boxed_opaque_existential_0((v11 + 256), *(v11 + 280));
    *(v3 + 1145) = 22;
    sub_22766A120();

    v12 = *(v3 + 8);
    v13 = MEMORY[0x277D84FA0];

    return v12(v13);
  }
}

uint64_t sub_226F6B9A4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_226F707A4;
  }

  else
  {
    *(v4 + 896) = a1;
    v5 = sub_226F6BAD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226F6BAD0()
{
  v0[113] = v0[112];
  v1 = v0[110];
  v2 = v1[2];
  v0[114] = v2;
  if (v2)
  {
    v3 = v0[108];
    v0[116] = 0;
    v0[115] = v3;
    v4 = v0[50];
    v5 = v1[4];
    v0[117] = v5;
    v6 = v1[5];
    v0[118] = v6;
    v7 = v4[30];
    v8 = v4[31];
    __swift_project_boxed_opaque_existential_0(v4 + 27, v7);
    v9 = swift_allocObject();
    v0[119] = v9;
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v6;
    v10 = *(v8 + 24);
    swift_bridgeObjectRetain_n();

    v32 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[120] = v11;
    *v11 = v0;
    v11[1] = sub_226F6BE60;
    v12 = v0[82];
    v13 = v0[76];

    return (v32)(v12, sub_226F73938, v9, v13, v7, v8);
  }

  else
  {

    v18 = v0[109] + 1;
    if (v18 == v0[107])
    {
      v19 = v0[108];

      v0[140] = v19;
      v21 = v0[55];
      v20 = v0[56];
      v22 = v0[54];
      v23 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v21 + 8))(v20, v22);
      __swift_project_boxed_opaque_existential_0((v23 + 96), *(v23 + 120));
      v24 = swift_task_alloc();
      v0[141] = v24;
      *v24 = v0;
      v24[1] = sub_226F6FF40;
      v25 = v0[87];

      return sub_226FB5BA4(v25);
    }

    else
    {
      v0[109] = v18;
      v26 = v0[105];
      if (v18 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = v0[50];
        v28 = *(v26 + 8 * v18 + 32);
        v0[110] = v28;
        v29 = v27[22];
        v30 = v27[23];
        __swift_project_boxed_opaque_existential_0(v27 + 19, v29);

        v31 = swift_task_alloc();
        v0[111] = v31;
        v17 = *(v30 + 8);
        *v31 = v0;
        v31[1] = sub_226F6B9A4;
        v15 = v28;
        v16 = v29;
      }

      return MEMORY[0x2821AED70](v15, v16, v17);
    }
  }
}

uint64_t sub_226F6BE60()
{
  *(*v1 + 968) = v0;

  if (v0)
  {
    v2 = sub_226F70B34;
  }

  else
  {

    v2 = sub_226F6BF7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F6BF7C()
{
  v1 = v0[50];
  v2 = sub_2276644D0();
  v4 = v3;
  v5 = v1[30];
  v6 = v1[31];
  __swift_project_boxed_opaque_existential_0(v1 + 27, v5);
  v7 = swift_allocObject();
  v0[122] = v7;
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v4;
  v8 = *(v6 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[123] = v9;
  *v9 = v0;
  v9[1] = sub_226F6C118;
  v10 = v0[75];
  v11 = v0[65];

  return (v13)(v10, sub_226F73998, v7, v11, v5, v6);
}

uint64_t sub_226F6C118()
{

  if (v0)
  {

    v1 = sub_226F6CAAC;
  }

  else
  {

    v1 = sub_226F6C260;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_226F6C260()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  (*(v3 + 56))(v1, 0, 1, v4);
  sub_226E93170(v1, v2, &unk_27D7BB920, &unk_227672480);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    sub_226E97D1C(*(v0 + 592), &unk_27D7BB920, &unk_227672480);
    v5 = *(v0 + 904);
    if (v5 && *(v5 + 16))
    {
      v6 = *(v0 + 944);
      v7 = *(v0 + 936);

      v8 = sub_226E92000(v7, v6);
      v9 = *(v0 + 488);
      if (v10)
      {
        v11 = v8;
        v12 = *(*(v0 + 904) + 56);
        v13 = sub_22766A4C0();
        v14 = *(v13 - 8);
        (*(v14 + 16))(v9, v12 + *(v14 + 72) * v11, v13);

        (*(v14 + 56))(v9, 0, 1, v13);
LABEL_10:
        v35 = *(v0 + 480);
        v34 = *(v0 + 488);
        v36 = __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 56), *(*(v0 + 400) + 80));
        sub_226E93170(v34, v35, &qword_27D7B8E38, &qword_22767C730);
        sub_22766A4C0();
        v37 = *(v13 - 8);
        v38 = (*(v37 + 48))(v35, 1, v13);
        v39 = *(v0 + 480);
        if (v38 == 1)
        {
          sub_226E97D1C(*(v0 + 480), &qword_27D7B8E38, &qword_22767C730);
          v40 = 0;
        }

        else
        {
          sub_22766A4A0();
          v40 = v41;
          (*(v37 + 8))(v39, v13);
        }

        v71 = *(v0 + 728);
        v42 = *(v0 + 720);
        v82 = v42;
        v77 = *(v0 + 688);
        v43 = *(v0 + 680);
        v44 = *(v0 + 672);
        v80 = v44;
        v68 = *(v0 + 656);
        v45 = *(v0 + 648);
        v46 = *(v0 + 616);
        v47 = *(v0 + 608);
        v81 = v47;
        v48 = *(v0 + 584);
        v74 = *(v0 + 576);
        v75 = *(v0 + 624);
        v69 = *(v0 + 600);
        v70 = *(v0 + 488);
        v49 = *(v0 + 472);
        v78 = v49;
        v79 = v48;
        v76 = *(v0 + 464);
        v72 = *(v0 + 568);
        v73 = *(v0 + 456);
        v87 = v36[16];
        v85 = v36[17];
        __swift_project_boxed_opaque_existential_0(v36 + 13, v87);
        sub_226F739B8(v36, v0 + 16);
        v50 = *(v46 + 16);
        *(v0 + 1024) = v50;
        *(v0 + 1032) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v50(v45, v68, v47);
        sub_226E93170(v69, v48, &unk_27D7BB920, &unk_227672480);
        v51 = *(v43 + 16);
        *(v0 + 1040) = v51;
        *(v0 + 1048) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v51(v42, v71, v44);
        sub_226E93170(v70, v49, &qword_27D7B8E38, &qword_22767C730);
        v52 = (*(v46 + 80) + 240) & ~*(v46 + 80);
        v53 = (v75 + *(v72 + 80) + v52) & ~*(v72 + 80);
        v54 = (v74 + *(v43 + 80) + v53) & ~*(v43 + 80);
        v55 = (v77 + *(v73 + 80) + v54) & ~*(v73 + 80);
        v56 = (v76 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
        v57 = swift_allocObject();
        *(v0 + 1056) = v57;
        v58 = *(v0 + 192);
        *(v57 + 11) = *(v0 + 176);
        *(v57 + 12) = v58;
        v59 = *(v0 + 224);
        *(v57 + 13) = *(v0 + 208);
        *(v57 + 14) = v59;
        v60 = *(v0 + 128);
        *(v57 + 7) = *(v0 + 112);
        *(v57 + 8) = v60;
        v61 = *(v0 + 160);
        *(v57 + 9) = *(v0 + 144);
        *(v57 + 10) = v61;
        v62 = *(v0 + 64);
        *(v57 + 3) = *(v0 + 48);
        *(v57 + 4) = v62;
        v63 = *(v0 + 96);
        *(v57 + 5) = *(v0 + 80);
        *(v57 + 6) = v63;
        v64 = *(v0 + 32);
        *(v57 + 1) = *(v0 + 16);
        *(v57 + 2) = v64;
        (*(v46 + 32))(&v57[v52], v45, v81);
        sub_226E95D18(v79, &v57[v53], &unk_27D7BB920, &unk_227672480);
        v65 = *(v43 + 32);
        *(v0 + 1064) = v65;
        *(v0 + 1072) = (v43 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v65(&v57[v54], v82, v80);
        sub_226E95D18(v78, &v57[v55], &qword_27D7B8E38, &qword_22767C730);
        *&v57[v56] = 0;
        *&v57[(v56 + 15) & 0xFFFFFFFFFFFFFFF8] = v40;
        v84 = (*(v85 + 24) + **(v85 + 24));
        v66 = swift_task_alloc();
        *(v0 + 1080) = v66;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
        *v66 = v0;
        v66[1] = sub_226F6E734;
        v28 = sub_226F73A14;
        v29 = v0 + 240;
        v30 = v57;
        v31 = v87;
        v32 = v85;
        v33 = v84;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *(v0 + 488);
    }

    v13 = sub_22766A4C0();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    goto LABEL_10;
  }

  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);
  v19 = *(v0 + 400);
  v20 = *(v17 + 32);
  v20(v15, *(v0 + 592), v18);
  v21 = v19[31];
  v86 = v19[30];
  __swift_project_boxed_opaque_existential_0(v19 + 27, v86);
  v22 = *(v17 + 16);
  v17 += 16;
  *(v0 + 992) = v22;
  *(v0 + 1000) = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v16, v15, v18);
  v23 = (*(v17 + 64) + 24) & ~*(v17 + 64);
  v24 = swift_allocObject();
  *(v0 + 1008) = v24;
  *(v24 + 16) = v19;
  v20(v24 + v23, v16, v18);
  v25 = *(v21 + 24);

  v83 = v25 + *v25;
  v26 = swift_task_alloc();
  *(v0 + 1016) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA10, &qword_2276724A0);
  *v26 = v0;
  v26[1] = sub_226F6D2F8;
  v28 = sub_226F73C08;
  v29 = v0 + 376;
  v30 = v24;
  v31 = v86;
  v32 = v21;
  v33 = v83;
LABEL_14:

  return v33(v29, v28, v30, v27, v31, v32);
}

uint64_t sub_226F6CAAC()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  (*(v3 + 56))(v1, 1, 1, v4);
  sub_226E93170(v1, v2, &unk_27D7BB920, &unk_227672480);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    sub_226E97D1C(*(v0 + 592), &unk_27D7BB920, &unk_227672480);
    v5 = *(v0 + 904);
    if (v5 && *(v5 + 16))
    {
      v6 = *(v0 + 944);
      v7 = *(v0 + 936);

      v8 = sub_226E92000(v7, v6);
      v9 = *(v0 + 488);
      if (v10)
      {
        v11 = v8;
        v12 = *(*(v0 + 904) + 56);
        v13 = sub_22766A4C0();
        v14 = *(v13 - 8);
        (*(v14 + 16))(v9, v12 + *(v14 + 72) * v11, v13);

        (*(v14 + 56))(v9, 0, 1, v13);
LABEL_10:
        v35 = *(v0 + 480);
        v34 = *(v0 + 488);
        v36 = __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 56), *(*(v0 + 400) + 80));
        sub_226E93170(v34, v35, &qword_27D7B8E38, &qword_22767C730);
        sub_22766A4C0();
        v37 = *(v13 - 8);
        v38 = (*(v37 + 48))(v35, 1, v13);
        v39 = *(v0 + 480);
        if (v38 == 1)
        {
          sub_226E97D1C(*(v0 + 480), &qword_27D7B8E38, &qword_22767C730);
          v40 = 0;
        }

        else
        {
          sub_22766A4A0();
          v40 = v41;
          (*(v37 + 8))(v39, v13);
        }

        v71 = *(v0 + 728);
        v42 = *(v0 + 720);
        v82 = v42;
        v77 = *(v0 + 688);
        v43 = *(v0 + 680);
        v44 = *(v0 + 672);
        v80 = v44;
        v68 = *(v0 + 656);
        v45 = *(v0 + 648);
        v46 = *(v0 + 616);
        v47 = *(v0 + 608);
        v81 = v47;
        v48 = *(v0 + 584);
        v74 = *(v0 + 576);
        v75 = *(v0 + 624);
        v69 = *(v0 + 600);
        v70 = *(v0 + 488);
        v49 = *(v0 + 472);
        v78 = v49;
        v79 = v48;
        v76 = *(v0 + 464);
        v72 = *(v0 + 568);
        v73 = *(v0 + 456);
        v87 = v36[16];
        v85 = v36[17];
        __swift_project_boxed_opaque_existential_0(v36 + 13, v87);
        sub_226F739B8(v36, v0 + 16);
        v50 = *(v46 + 16);
        *(v0 + 1024) = v50;
        *(v0 + 1032) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v50(v45, v68, v47);
        sub_226E93170(v69, v48, &unk_27D7BB920, &unk_227672480);
        v51 = *(v43 + 16);
        *(v0 + 1040) = v51;
        *(v0 + 1048) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v51(v42, v71, v44);
        sub_226E93170(v70, v49, &qword_27D7B8E38, &qword_22767C730);
        v52 = (*(v46 + 80) + 240) & ~*(v46 + 80);
        v53 = (v75 + *(v72 + 80) + v52) & ~*(v72 + 80);
        v54 = (v74 + *(v43 + 80) + v53) & ~*(v43 + 80);
        v55 = (v77 + *(v73 + 80) + v54) & ~*(v73 + 80);
        v56 = (v76 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
        v57 = swift_allocObject();
        *(v0 + 1056) = v57;
        v58 = *(v0 + 192);
        *(v57 + 11) = *(v0 + 176);
        *(v57 + 12) = v58;
        v59 = *(v0 + 224);
        *(v57 + 13) = *(v0 + 208);
        *(v57 + 14) = v59;
        v60 = *(v0 + 128);
        *(v57 + 7) = *(v0 + 112);
        *(v57 + 8) = v60;
        v61 = *(v0 + 160);
        *(v57 + 9) = *(v0 + 144);
        *(v57 + 10) = v61;
        v62 = *(v0 + 64);
        *(v57 + 3) = *(v0 + 48);
        *(v57 + 4) = v62;
        v63 = *(v0 + 96);
        *(v57 + 5) = *(v0 + 80);
        *(v57 + 6) = v63;
        v64 = *(v0 + 32);
        *(v57 + 1) = *(v0 + 16);
        *(v57 + 2) = v64;
        (*(v46 + 32))(&v57[v52], v45, v81);
        sub_226E95D18(v79, &v57[v53], &unk_27D7BB920, &unk_227672480);
        v65 = *(v43 + 32);
        *(v0 + 1064) = v65;
        *(v0 + 1072) = (v43 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v65(&v57[v54], v82, v80);
        sub_226E95D18(v78, &v57[v55], &qword_27D7B8E38, &qword_22767C730);
        *&v57[v56] = 0;
        *&v57[(v56 + 15) & 0xFFFFFFFFFFFFFFF8] = v40;
        v84 = (*(v85 + 24) + **(v85 + 24));
        v66 = swift_task_alloc();
        *(v0 + 1080) = v66;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
        *v66 = v0;
        v66[1] = sub_226F6E734;
        v28 = sub_226F73A14;
        v29 = v0 + 240;
        v30 = v57;
        v31 = v87;
        v32 = v85;
        v33 = v84;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *(v0 + 488);
    }

    v13 = sub_22766A4C0();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    goto LABEL_10;
  }

  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);
  v19 = *(v0 + 400);
  v20 = *(v17 + 32);
  v20(v15, *(v0 + 592), v18);
  v21 = v19[31];
  v86 = v19[30];
  __swift_project_boxed_opaque_existential_0(v19 + 27, v86);
  v22 = *(v17 + 16);
  v17 += 16;
  *(v0 + 992) = v22;
  *(v0 + 1000) = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v16, v15, v18);
  v23 = (*(v17 + 64) + 24) & ~*(v17 + 64);
  v24 = swift_allocObject();
  *(v0 + 1008) = v24;
  *(v24 + 16) = v19;
  v20(v24 + v23, v16, v18);
  v25 = *(v21 + 24);

  v83 = v25 + *v25;
  v26 = swift_task_alloc();
  *(v0 + 1016) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA10, &qword_2276724A0);
  *v26 = v0;
  v26[1] = sub_226F6D2F8;
  v28 = sub_226F73C08;
  v29 = v0 + 376;
  v30 = v24;
  v31 = v86;
  v32 = v21;
  v33 = v83;
LABEL_14:

  return v33(v29, v28, v30, v27, v31, v32);
}

uint64_t sub_226F6D2F8()
{

  if (v0)
  {

    v1 = sub_226F6DEB8;
  }

  else
  {

    v1 = sub_226F6D440;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_226F6D440(uint64_t a1)
{
  v118 = v1;
  v2 = *(v1 + 376);
  v3 = *(v1 + 992);
  v4 = *(v1 + 560);
  v5 = *(v1 + 544);
  v6 = *(v1 + 520);
  sub_22766A610();
  v3(v5, v4, v6);

  v7 = sub_22766B380();
  v8 = sub_22766C8B0();

  if (os_log_type_enabled(v7, v8))
  {
    v112 = *(v1 + 816);
    v110 = *(v1 + 784);
    log = v7;
    v107 = *(v1 + 736);
    v9 = *(v1 + 544);
    v10 = *(v1 + 528);
    v97 = *(v1 + 520);
    v11 = *(v1 + 504);
    v12 = *(v1 + 512);
    v13 = *(v1 + 496);
    v14 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v117[0] = v102;
    *v14 = 136315394;
    v99 = v8;
    sub_2276637C0();
    sub_226F73C88(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_22766D140();
    v17 = v16;
    (*(v11 + 8))(v12, v13);
    v18 = *(v10 + 8);
    (v18)(v9, v97);
    v19 = sub_226E97AE8(v15, v17, v117);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v1 + 384) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E50, &qword_2276724A8);
    v20 = sub_22766CB80();
    v22 = sub_226E97AE8(v20, v21, v117);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_226E8E000, log, v99, "[Historical Evaluation] Completed sessions for workout plan %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v102, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v112(v110, v107);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = *(v1 + 816);
    v33 = *(v1 + 784);
    v34 = *(v1 + 736);
    v35 = *(v1 + 544);
    v36 = *(v1 + 528);
    v37 = *(v1 + 520);

    v38 = v35;
    v18 = *(v36 + 8);
    (v18)(v38, v37);
    v32(v33, v34);
    if (v2)
    {
LABEL_3:
      v23 = *(v2 + 16);
      if (v23)
      {
        v24 = *(v1 + 648);
        v25 = *(v1 + 616);
        v26 = *(v1 + 608);
        v27 = v2 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v113 = *(v25 + 16);
        v113(v24, v27, v26);

        sub_2276644D0();
        v111 = *(v25 + 8);
        result = v111(v24, v26);
        if (v23 > *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v93 = *(v1 + 720);
        v95 = *(v1 + 728);
        loga = v18;
        v29 = *(v1 + 680);
        v108 = *(v1 + 672);
        v30 = *(v1 + 648);
        v31 = *(v1 + 608);
        v100 = *(v1 + 520);
        v103 = *(v1 + 560);
        v113(v30, v27 + *(*(v1 + 616) + 72) * (v23 - 1), v31);

        sub_2276644D0();
        v111(v30, v31);
        sub_2276679A0();

        (loga)(v103, v100);
        (*(v29 + 8))(v95, v108);
        (*(v29 + 32))(v95, v93, v108);
      }

      else
      {
        (v18)(*(v1 + 560), *(v1 + 520));
      }

      v115 = *(v2 + 16);

      v39 = *(v1 + 904);
      if (!v39)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  (v18)(*(v1 + 560), *(v1 + 520));
  v115 = 0;
  v39 = *(v1 + 904);
  if (!v39)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (!*(v39 + 16))
  {
LABEL_14:
    v43 = *(v1 + 488);
LABEL_16:
    v47 = sub_22766A4C0();
    (*(*(v47 - 8) + 56))(v43, 1, 1, v47);
    goto LABEL_17;
  }

  v40 = *(v1 + 944);
  v41 = *(v1 + 936);

  v42 = sub_226E92000(v41, v40);
  v43 = *(v1 + 488);
  if ((v44 & 1) == 0)
  {

    goto LABEL_16;
  }

  v45 = v42;
  v46 = *(*(v1 + 904) + 56);
  v47 = sub_22766A4C0();
  v48 = *(v47 - 8);
  (*(v48 + 16))(v43, v46 + *(v48 + 72) * v45, v47);

  (*(v48 + 56))(v43, 0, 1, v47);
LABEL_17:
  v50 = *(v1 + 480);
  v49 = *(v1 + 488);
  v51 = __swift_project_boxed_opaque_existential_0((*(v1 + 400) + 56), *(*(v1 + 400) + 80));
  sub_226E93170(v49, v50, &qword_27D7B8E38, &qword_22767C730);
  sub_22766A4C0();
  v52 = *(v47 - 8);
  v53 = (*(v52 + 48))(v50, 1, v47);
  v54 = *(v1 + 480);
  if (v53 == 1)
  {
    sub_226E97D1C(*(v1 + 480), &qword_27D7B8E38, &qword_22767C730);
    v55 = 0;
  }

  else
  {
    sub_22766A4A0();
    v55 = v56;
    (*(v52 + 8))(v54, v47);
  }

  v86 = *(v1 + 728);
  v57 = *(v1 + 720);
  v92 = *(v1 + 688);
  v58 = *(v1 + 680);
  v59 = *(v1 + 672);
  v60 = *(v1 + 648);
  v104 = v57;
  v61 = *(v1 + 616);
  v62 = *(v1 + 608);
  v98 = v59;
  v101 = v62;
  v83 = *(v1 + 656);
  v84 = *(v1 + 600);
  v63 = *(v1 + 584);
  v89 = *(v1 + 576);
  v90 = *(v1 + 624);
  v85 = *(v1 + 488);
  v64 = *(v1 + 472);
  v94 = v64;
  v96 = v63;
  v91 = *(v1 + 464);
  v87 = *(v1 + 568);
  v88 = *(v1 + 456);
  v114 = v51[16];
  v109 = v51[17];
  __swift_project_boxed_opaque_existential_0(v51 + 13, v114);
  sub_226F739B8(v51, v1 + 16);
  v65 = *(v61 + 16);
  *(v1 + 1024) = v65;
  *(v1 + 1032) = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v65(v60, v83, v62);
  sub_226E93170(v84, v63, &unk_27D7BB920, &unk_227672480);
  v66 = *(v58 + 16);
  *(v1 + 1040) = v66;
  *(v1 + 1048) = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v66(v57, v86, v59);
  sub_226E93170(v85, v64, &qword_27D7B8E38, &qword_22767C730);
  v67 = (*(v61 + 80) + 240) & ~*(v61 + 80);
  v68 = (v90 + *(v87 + 80) + v67) & ~*(v87 + 80);
  v69 = (v89 + *(v58 + 80) + v68) & ~*(v58 + 80);
  v70 = (v92 + *(v88 + 80) + v69) & ~*(v88 + 80);
  v71 = (v91 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  *(v1 + 1056) = v72;
  v73 = *(v1 + 192);
  *(v72 + 11) = *(v1 + 176);
  *(v72 + 12) = v73;
  v74 = *(v1 + 224);
  *(v72 + 13) = *(v1 + 208);
  *(v72 + 14) = v74;
  v75 = *(v1 + 128);
  *(v72 + 7) = *(v1 + 112);
  *(v72 + 8) = v75;
  v76 = *(v1 + 160);
  *(v72 + 9) = *(v1 + 144);
  *(v72 + 10) = v76;
  v77 = *(v1 + 64);
  *(v72 + 3) = *(v1 + 48);
  *(v72 + 4) = v77;
  v78 = *(v1 + 96);
  *(v72 + 5) = *(v1 + 80);
  *(v72 + 6) = v78;
  v79 = *(v1 + 32);
  *(v72 + 1) = *(v1 + 16);
  *(v72 + 2) = v79;
  (*(v61 + 32))(&v72[v67], v60, v101);
  sub_226E95D18(v96, &v72[v68], &unk_27D7BB920, &unk_227672480);
  v80 = *(v58 + 32);
  *(v1 + 1064) = v80;
  *(v1 + 1072) = (v58 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v80(&v72[v69], v104, v98);
  sub_226E95D18(v94, &v72[v70], &qword_27D7B8E38, &qword_22767C730);
  *&v72[v71] = v115;
  *&v72[(v71 + 15) & 0xFFFFFFFFFFFFFFF8] = v55;
  v116 = (*(v109 + 24) + **(v109 + 24));
  v81 = swift_task_alloc();
  *(v1 + 1080) = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
  *v81 = v1;
  v81[1] = sub_226F6E734;

  return v116(v1 + 240, sub_226F73A14, v72, v82, v114, v109);
}

uint64_t sub_226F6DEB8(uint64_t a1)
{
  v98 = v1;
  v2 = *(v1 + 992);
  v3 = *(v1 + 560);
  v4 = *(v1 + 544);
  v5 = *(v1 + 520);
  sub_22766A610();
  v2(v4, v3, v5);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();

  if (os_log_type_enabled(v6, v7))
  {
    v95 = *(v1 + 816);
    v93 = *(v1 + 784);
    v91 = *(v1 + 736);
    v8 = *(v1 + 544);
    v9 = *(v1 + 528);
    v85 = *(v1 + 520);
    v11 = *(v1 + 504);
    v10 = *(v1 + 512);
    v12 = *(v1 + 496);
    v13 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v97 = v89;
    *v13 = 136315394;
    v87 = v7;
    sub_2276637C0();
    sub_226F73C88(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22766D140();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = *(v9 + 8);
    v17(v8, v85);
    v18 = sub_226E97AE8(v14, v16, &v97);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v1 + 384) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E50, &qword_2276724A8);
    v19 = sub_22766CB80();
    v21 = sub_226E97AE8(v19, v20, &v97);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v6, v87, "[Historical Evaluation] Completed sessions for workout plan %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v89, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v95(v93, v91);
  }

  else
  {
    v22 = *(v1 + 816);
    v23 = *(v1 + 784);
    v24 = *(v1 + 736);
    v25 = *(v1 + 544);
    v26 = *(v1 + 528);
    v27 = *(v1 + 520);

    v17 = *(v26 + 8);
    v17(v25, v27);
    v22(v23, v24);
  }

  v17(*(v1 + 560), *(v1 + 520));
  v28 = *(v1 + 904);
  if (v28 && *(v28 + 16))
  {
    v29 = *(v1 + 944);
    v30 = *(v1 + 936);

    v31 = sub_226E92000(v30, v29);
    v32 = *(v1 + 488);
    if (v33)
    {
      v34 = v31;
      v35 = *(*(v1 + 904) + 56);
      v36 = sub_22766A4C0();
      v37 = *(v36 - 8);
      (*(v37 + 16))(v32, v35 + *(v37 + 72) * v34, v36);

      (*(v37 + 56))(v32, 0, 1, v36);
      goto LABEL_11;
    }
  }

  else
  {
    v32 = *(v1 + 488);
  }

  v36 = sub_22766A4C0();
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
LABEL_11:
  v39 = *(v1 + 480);
  v38 = *(v1 + 488);
  v40 = __swift_project_boxed_opaque_existential_0((*(v1 + 400) + 56), *(*(v1 + 400) + 80));
  sub_226E93170(v38, v39, &qword_27D7B8E38, &qword_22767C730);
  sub_22766A4C0();
  v41 = *(v36 - 8);
  v42 = (*(v41 + 48))(v39, 1, v36);
  v43 = *(v1 + 480);
  if (v42 == 1)
  {
    sub_226E97D1C(*(v1 + 480), &qword_27D7B8E38, &qword_22767C730);
    v44 = 0;
  }

  else
  {
    sub_22766A4A0();
    v44 = v45;
    (*(v41 + 8))(v43, v36);
  }

  v76 = *(v1 + 728);
  v46 = *(v1 + 720);
  v82 = *(v1 + 688);
  v47 = *(v1 + 680);
  v48 = *(v1 + 672);
  v49 = *(v1 + 648);
  v90 = v46;
  v50 = *(v1 + 616);
  v51 = *(v1 + 608);
  v86 = v48;
  v88 = v51;
  v73 = *(v1 + 656);
  v74 = *(v1 + 600);
  v52 = *(v1 + 584);
  v79 = *(v1 + 576);
  v80 = *(v1 + 624);
  v75 = *(v1 + 488);
  v53 = *(v1 + 472);
  v83 = v53;
  v84 = v52;
  v81 = *(v1 + 464);
  v77 = *(v1 + 568);
  v78 = *(v1 + 456);
  v96 = v40[16];
  v94 = v40[17];
  __swift_project_boxed_opaque_existential_0(v40 + 13, v96);
  sub_226F739B8(v40, v1 + 16);
  v54 = *(v50 + 16);
  *(v1 + 1024) = v54;
  *(v1 + 1032) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54(v49, v73, v51);
  sub_226E93170(v74, v52, &unk_27D7BB920, &unk_227672480);
  v55 = *(v47 + 16);
  *(v1 + 1040) = v55;
  *(v1 + 1048) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v55(v46, v76, v48);
  sub_226E93170(v75, v53, &qword_27D7B8E38, &qword_22767C730);
  v56 = (*(v50 + 80) + 240) & ~*(v50 + 80);
  v57 = (v80 + *(v77 + 80) + v56) & ~*(v77 + 80);
  v58 = (v79 + *(v47 + 80) + v57) & ~*(v47 + 80);
  v59 = (v82 + *(v78 + 80) + v58) & ~*(v78 + 80);
  v60 = (v81 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  *(v1 + 1056) = v61;
  v62 = *(v1 + 192);
  *(v61 + 11) = *(v1 + 176);
  *(v61 + 12) = v62;
  v63 = *(v1 + 224);
  *(v61 + 13) = *(v1 + 208);
  *(v61 + 14) = v63;
  v64 = *(v1 + 128);
  *(v61 + 7) = *(v1 + 112);
  *(v61 + 8) = v64;
  v65 = *(v1 + 160);
  *(v61 + 9) = *(v1 + 144);
  *(v61 + 10) = v65;
  v66 = *(v1 + 64);
  *(v61 + 3) = *(v1 + 48);
  *(v61 + 4) = v66;
  v67 = *(v1 + 96);
  *(v61 + 5) = *(v1 + 80);
  *(v61 + 6) = v67;
  v68 = *(v1 + 32);
  *(v61 + 1) = *(v1 + 16);
  *(v61 + 2) = v68;
  (*(v50 + 32))(&v61[v56], v49, v88);
  sub_226E95D18(v84, &v61[v57], &unk_27D7BB920, &unk_227672480);
  v69 = *(v47 + 32);
  *(v1 + 1064) = v69;
  *(v1 + 1072) = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v69(&v61[v58], v90, v86);
  sub_226E95D18(v83, &v61[v59], &qword_27D7B8E38, &qword_22767C730);
  *&v61[v60] = 0;
  *&v61[(v60 + 15) & 0xFFFFFFFFFFFFFFF8] = v44;
  v92 = (*(v94 + 24) + **(v94 + 24));
  v70 = swift_task_alloc();
  *(v1 + 1080) = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
  *v70 = v1;
  v70[1] = sub_226F6E734;

  return v92(v1 + 240, sub_226F73A14, v61, v71, v96, v94);
}

uint64_t sub_226F6E734()
{
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v2 = sub_226F6EA54;
  }

  else
  {

    v2 = sub_226F6E850;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F6E850()
{
  v1 = v0[115];
  v2 = v0[49];
  v3 = v0[50];
  __swift_project_boxed_opaque_existential_0(v0 + 30, v0[33]);
  v4 = sub_22735E6FC(v2);
  sub_2273FB564(v4, v1);
  v0[137] = v5;
  __swift_project_boxed_opaque_existential_0((v3 + 96), *(v3 + 120));
  v6 = swift_task_alloc();
  v0[138] = v6;
  *v6 = v0;
  v6[1] = sub_226F6E938;
  v7 = v0[91];
  v8 = v0[89];
  v9 = v0[82];
  v10 = v0[61];

  return sub_226FB4D90(v8, v9, v7, v10);
}

uint64_t sub_226F6E938()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2 = sub_226F6F984;
  }

  else
  {

    v2 = sub_226F6F220;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F6EA54()
{
  v88 = v0;
  v1 = v0[136];
  v2 = v0[128];
  v3 = v0[82];
  v4 = v0[80];
  v5 = v0[76];

  sub_22766A610();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v84 = v0[102];
    v80 = v0[92];
    v82 = v0[97];
    v9 = v0[80];
    v10 = v0[77];
    v11 = v0[76];
    v12 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v87[0] = v79;
    *v12 = 136315394;
    v13 = sub_2276644D0();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_226E97AE8(v13, v15, v87);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v18 = MEMORY[0x22AA995D0](v0[42], v0[43]);
    v20 = sub_226E97AE8(v18, v19, v87);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v7, v8, "Failed to create evaluator for session identifier %s with error %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v79, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    v84(v82, v80);
  }

  else
  {
    v21 = v0[102];
    v22 = v0[97];
    v23 = v0[92];
    v24 = v0[80];
    v25 = v0[77];
    v26 = v0[76];

    v16 = *(v25 + 8);
    v16(v24, v26);
    v21(v22, v23);
  }

  v27 = v0[82];
  v28 = v0[76];
  v29 = v0[75];
  v30 = v0[61];
  swift_willThrow();
  sub_226E97D1C(v30, &qword_27D7B8E38, &qword_22767C730);
  sub_226E97D1C(v29, &unk_27D7BB920, &unk_227672480);
  v16(v27, v28);
  v31 = v0[136];
  v32 = v0[115];
  sub_22766A610();

  v33 = v31;
  v34 = sub_22766B380();
  v35 = sub_22766C890();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[118];
  if (v36)
  {
    v38 = v0[117];
    v85 = v0[102];
    v81 = v0[92];
    v83 = v0[94];
    v39 = swift_slowAlloc();
    v40 = v32;
    v41 = swift_slowAlloc();
    v87[0] = v41;
    *v39 = 136315394;
    v42 = sub_226E97AE8(v38, v37, v87);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    swift_getErrorValue();
    v43 = MEMORY[0x22AA995D0](v0[39], v0[40]);
    v45 = sub_226E97AE8(v43, v44, v87);

    *(v39 + 14) = v45;
    _os_log_impl(&dword_226E8E000, v34, v35, "[Historical Evaluation] Session evaluation for %s failed with error %s, continuing evaluation", v39, 0x16u);
    swift_arrayDestroy();
    v46 = v41;
    v32 = v40;
    MEMORY[0x22AA9A450](v46, -1, -1);
    MEMORY[0x22AA9A450](v39, -1, -1);

    v85(v83, v81);
  }

  else
  {
    v47 = v0[102];
    v48 = v0[94];
    v49 = v0[92];

    v47(v48, v49);
  }

  v50 = v0[116] + 1;
  if (v50 == v0[114])
  {

    v54 = v0[109] + 1;
    if (v54 == v0[107])
    {

      v0[140] = v32;
      v56 = v0[55];
      v55 = v0[56];
      v57 = v0[54];
      v58 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v56 + 8))(v55, v57);
      __swift_project_boxed_opaque_existential_0((v58 + 96), *(v58 + 120));
      v59 = swift_task_alloc();
      v0[141] = v59;
      *v59 = v0;
      v59[1] = sub_226F6FF40;
      v60 = v0[87];

      return sub_226FB5BA4(v60);
    }

    else
    {
      v0[109] = v54;
      v0[108] = v32;
      v73 = v0[105];
      if (v54 >= *(v73 + 16))
      {
        __break(1u);
      }

      else
      {
        v74 = v0[50];
        v75 = *(v73 + 8 * v54 + 32);
        v0[110] = v75;
        v76 = v74[22];
        v77 = v74[23];
        __swift_project_boxed_opaque_existential_0(v74 + 19, v76);

        v78 = swift_task_alloc();
        v0[111] = v78;
        v53 = *(v77 + 8);
        *v78 = v0;
        v78[1] = sub_226F6B9A4;
        v51 = v75;
        v52 = v76;
      }

      return MEMORY[0x2821AED70](v51, v52, v53);
    }
  }

  else
  {
    v0[116] = v50;
    v0[115] = v32;
    v62 = v0[50];
    v63 = v0[110] + 16 * v50;
    v64 = *(v63 + 32);
    v0[117] = v64;
    v65 = *(v63 + 40);
    v0[118] = v65;
    v66 = v62[30];
    v67 = v62[31];
    __swift_project_boxed_opaque_existential_0(v62 + 27, v66);
    v68 = swift_allocObject();
    v0[119] = v68;
    v68[2] = v62;
    v68[3] = v64;
    v68[4] = v65;
    v69 = *(v67 + 24);
    swift_bridgeObjectRetain_n();

    v86 = (v69 + *v69);
    v70 = swift_task_alloc();
    v0[120] = v70;
    *v70 = v0;
    v70[1] = sub_226F6BE60;
    v71 = v0[82];
    v72 = v0[76];

    return (v86)(v71, sub_226F73938, v68, v72, v66, v67);
  }
}

uint64_t sub_226F6F220(uint64_t a1)
{
  v88 = v1;
  v81 = *(v1 + 1040);
  v2 = *(v1 + 1024);
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  v5 = *(v1 + 672);
  v6 = *(v1 + 656);
  v7 = *(v1 + 632);
  v8 = *(v1 + 608);
  sub_22766A610();
  v2(v7, v6, v8);
  v81(v4, v3, v5);
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v68 = *(v1 + 1040);
    v75 = *(v1 + 768);
    v77 = *(v1 + 816);
    v74 = *(v1 + 736);
    v85 = *(v1 + 728);
    v11 = *(v1 + 720);
    v69 = *(v1 + 680);
    v66 = *(v1 + 672);
    v67 = *(v1 + 704);
    v82 = *(v1 + 656);
    log = v9;
    v12 = *(v1 + 632);
    v13 = *(v1 + 616);
    v14 = *(v1 + 608);
    v72 = v14;
    v79 = *(v1 + 600);
    v73 = *(v1 + 488);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v87 = v16;
    *v15 = 136315394;
    v17 = sub_2276644D0();
    v19 = v18;
    v70 = *(v13 + 8);
    v70(v12, v14);
    v20 = sub_226E97AE8(v17, v19, &v87);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v68(v11, v67, v66);
    v21 = sub_22766C060();
    v23 = v22;
    v24 = *(v69 + 8);
    v24(v67, v66);
    v25 = sub_226E97AE8(v21, v23, &v87);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_226E8E000, log, v10, "[HistoricalAwardingSource] Updated cache to evaluate against adding data from session %s: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v77(v75, v74);
    sub_226E97D1C(v73, &qword_27D7B8E38, &qword_22767C730);
    sub_226E97D1C(v79, &unk_27D7BB920, &unk_227672480);
    v70(v82, v72);
    v24(v85, v66);
  }

  else
  {
    v78 = *(v1 + 816);
    v76 = *(v1 + 768);
    v26 = *(v1 + 736);
    v27 = *(v1 + 704);
    v28 = *(v1 + 680);
    v29 = *(v1 + 672);
    v83 = *(v1 + 656);
    v86 = *(v1 + 728);
    v30 = *(v1 + 632);
    v31 = *(v1 + 616);
    v32 = *(v1 + 608);
    v80 = *(v1 + 600);
    v33 = *(v1 + 488);

    v34 = *(v28 + 8);
    v34(v27, v29);
    v35 = *(v31 + 8);
    v35(v30, v32);
    v78(v76, v26);
    sub_226E97D1C(v33, &qword_27D7B8E38, &qword_22767C730);
    sub_226E97D1C(v80, &unk_27D7BB920, &unk_227672480);
    v35(v83, v32);
    v34(v86, v29);
  }

  (*(v1 + 1064))(*(v1 + 728), *(v1 + 712), *(v1 + 672));
  __swift_destroy_boxed_opaque_existential_0((v1 + 240));
  v36 = *(v1 + 1096);
  v37 = *(v1 + 928) + 1;
  if (v37 == *(v1 + 912))
  {

    v41 = *(v1 + 872) + 1;
    if (v41 == *(v1 + 856))
    {

      *(v1 + 1120) = v36;
      v43 = *(v1 + 440);
      v42 = *(v1 + 448);
      v44 = *(v1 + 432);
      v45 = *(v1 + 400);
      sub_227662720();
      sub_2276679C0();
      (*(v43 + 8))(v42, v44);
      __swift_project_boxed_opaque_existential_0((v45 + 96), *(v45 + 120));
      v46 = swift_task_alloc();
      *(v1 + 1128) = v46;
      *v46 = v1;
      v46[1] = sub_226F6FF40;
      v47 = *(v1 + 696);

      return sub_226FB5BA4(v47);
    }

    else
    {
      *(v1 + 872) = v41;
      *(v1 + 864) = v36;
      v60 = *(v1 + 840);
      if (v41 >= *(v60 + 16))
      {
        __break(1u);
      }

      else
      {
        v61 = *(v1 + 400);
        v62 = *(v60 + 8 * v41 + 32);
        *(v1 + 880) = v62;
        v63 = v61[22];
        v64 = v61[23];
        __swift_project_boxed_opaque_existential_0(v61 + 19, v63);

        v65 = swift_task_alloc();
        *(v1 + 888) = v65;
        v40 = *(v64 + 8);
        *v65 = v1;
        v65[1] = sub_226F6B9A4;
        v38 = v62;
        v39 = v63;
      }

      return MEMORY[0x2821AED70](v38, v39, v40);
    }
  }

  else
  {
    *(v1 + 928) = v37;
    *(v1 + 920) = v36;
    v49 = *(v1 + 400);
    v50 = *(v1 + 880) + 16 * v37;
    v51 = *(v50 + 32);
    *(v1 + 936) = v51;
    v52 = *(v50 + 40);
    *(v1 + 944) = v52;
    v53 = v49[30];
    v54 = v49[31];
    __swift_project_boxed_opaque_existential_0(v49 + 27, v53);
    v55 = swift_allocObject();
    *(v1 + 952) = v55;
    v55[2] = v49;
    v55[3] = v51;
    v55[4] = v52;
    v56 = *(v54 + 24);
    swift_bridgeObjectRetain_n();

    v84 = (v56 + *v56);
    v57 = swift_task_alloc();
    *(v1 + 960) = v57;
    *v57 = v1;
    v57[1] = sub_226F6BE60;
    v58 = *(v1 + 656);
    v59 = *(v1 + 608);

    return (v84)(v58, sub_226F73938, v55, v59, v53, v54);
  }
}

uint64_t sub_226F6F984()
{
  v55 = v0;
  v1 = v0[82];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  sub_226E97D1C(v0[61], &qword_27D7B8E38, &qword_22767C730);
  sub_226E97D1C(v4, &unk_27D7BB920, &unk_227672480);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  v5 = v0[139];
  v6 = v0[137];
  sub_22766A610();

  v7 = v5;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[118];
    v11 = v0[117];
    v52 = v0[102];
    v12 = v0[94];
    v51 = v0[92];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54 = v14;
    *v13 = 136315394;
    v15 = sub_226E97AE8(v11, v10, &v54);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v16 = MEMORY[0x22AA995D0](v0[39], v0[40]);
    v18 = sub_226E97AE8(v16, v17, &v54);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_226E8E000, v8, v9, "[Historical Evaluation] Session evaluation for %s failed with error %s, continuing evaluation", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v52(v12, v51);
  }

  else
  {
    v19 = v0[102];
    v20 = v0[94];
    v21 = v0[92];

    v19(v20, v21);
  }

  v22 = v0[116] + 1;
  if (v22 == v0[114])
  {

    v26 = v0[109] + 1;
    if (v26 == v0[107])
    {

      v0[140] = v6;
      v28 = v0[55];
      v27 = v0[56];
      v29 = v0[54];
      v30 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v28 + 8))(v27, v29);
      __swift_project_boxed_opaque_existential_0((v30 + 96), *(v30 + 120));
      v31 = swift_task_alloc();
      v0[141] = v31;
      *v31 = v0;
      v31[1] = sub_226F6FF40;
      v32 = v0[87];

      return sub_226FB5BA4(v32);
    }

    else
    {
      v0[109] = v26;
      v0[108] = v6;
      v45 = v0[105];
      if (v26 >= *(v45 + 16))
      {
        __break(1u);
      }

      else
      {
        v46 = v0[50];
        v47 = *(v45 + 8 * v26 + 32);
        v0[110] = v47;
        v48 = v46[22];
        v49 = v46[23];
        __swift_project_boxed_opaque_existential_0(v46 + 19, v48);

        v50 = swift_task_alloc();
        v0[111] = v50;
        v25 = *(v49 + 8);
        *v50 = v0;
        v50[1] = sub_226F6B9A4;
        v23 = v47;
        v24 = v48;
      }

      return MEMORY[0x2821AED70](v23, v24, v25);
    }
  }

  else
  {
    v0[116] = v22;
    v0[115] = v6;
    v34 = v0[50];
    v35 = v0[110] + 16 * v22;
    v36 = *(v35 + 32);
    v0[117] = v36;
    v37 = *(v35 + 40);
    v0[118] = v37;
    v38 = v34[30];
    v39 = v34[31];
    __swift_project_boxed_opaque_existential_0(v34 + 27, v38);
    v40 = swift_allocObject();
    v0[119] = v40;
    v40[2] = v34;
    v40[3] = v36;
    v40[4] = v37;
    v41 = *(v39 + 24);
    swift_bridgeObjectRetain_n();

    v53 = (v41 + *v41);
    v42 = swift_task_alloc();
    v0[120] = v42;
    *v42 = v0;
    v42[1] = sub_226F6BE60;
    v43 = v0[82];
    v44 = v0[76];

    return (v53)(v43, sub_226F73938, v40, v44, v38, v39);
  }
}

uint64_t sub_226F6FF40()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_226F70388;
  }

  else
  {
    v2 = sub_226F70054;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F70054()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 408);
  v11 = *(v0 + 728);
  swift_getObjectType();
  (*(v3 + 16))(v1, v2, v4);
  sub_22766A480();
  sub_2276699D0();
  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v11, v4);
  __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 256), *(*(v0 + 400) + 280));
  *(v0 + 1146) = 22;
  sub_22766A120();
  v12 = *(v0 + 1120);

  v9 = *(v0 + 8);

  return v9(v12);
}

uint64_t sub_226F70388()
{
  v29 = v0;
  v1 = *(v0 + 1136);
  v26 = *(*(v0 + 680) + 8);
  v26(*(v0 + 696), *(v0 + 672));
  sub_22766A610();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1136);
    v25 = *(v0 + 816);
    v22 = *(v0 + 760);
    v6 = *(v0 + 736);
    v23 = *(v0 + 672);
    v24 = *(v0 + 728);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](*(v0 + 288), *(v0 + 296));
    v11 = sub_226E97AE8(v9, v10, &v28);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to insert AchievementEnvironmentCache after historical run with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    v25(v22, v6);
    v13 = v23;
    v12 = v24;
  }

  else
  {
    v14 = *(v0 + 1136);
    v15 = *(v0 + 816);
    v16 = *(v0 + 760);
    v17 = *(v0 + 736);
    v18 = *(v0 + 728);
    v19 = *(v0 + 672);

    v15(v16, v17);
    v12 = v18;
    v13 = v19;
  }

  v26(v12, v13);
  __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 256), *(*(v0 + 400) + 280));
  *(v0 + 1146) = 22;
  sub_22766A120();
  v27 = *(v0 + 1120);

  v20 = *(v0 + 8);

  return v20(v27);
}

uint64_t sub_226F707A4()
{
  v0[113] = 0;
  v1 = v0[110];
  v2 = v1[2];
  v0[114] = v2;
  if (v2)
  {
    v3 = v0[108];
    v0[116] = 0;
    v0[115] = v3;
    v4 = v0[50];
    v5 = v1[4];
    v0[117] = v5;
    v6 = v1[5];
    v0[118] = v6;
    v7 = v4[30];
    v8 = v4[31];
    __swift_project_boxed_opaque_existential_0(v4 + 27, v7);
    v9 = swift_allocObject();
    v0[119] = v9;
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v6;
    v10 = *(v8 + 24);
    swift_bridgeObjectRetain_n();

    v32 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[120] = v11;
    *v11 = v0;
    v11[1] = sub_226F6BE60;
    v12 = v0[82];
    v13 = v0[76];

    return (v32)(v12, sub_226F73938, v9, v13, v7, v8);
  }

  else
  {

    v18 = v0[109] + 1;
    if (v18 == v0[107])
    {
      v19 = v0[108];

      v0[140] = v19;
      v21 = v0[55];
      v20 = v0[56];
      v22 = v0[54];
      v23 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v21 + 8))(v20, v22);
      __swift_project_boxed_opaque_existential_0((v23 + 96), *(v23 + 120));
      v24 = swift_task_alloc();
      v0[141] = v24;
      *v24 = v0;
      v24[1] = sub_226F6FF40;
      v25 = v0[87];

      return sub_226FB5BA4(v25);
    }

    else
    {
      v0[109] = v18;
      v26 = v0[105];
      if (v18 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = v0[50];
        v28 = *(v26 + 8 * v18 + 32);
        v0[110] = v28;
        v29 = v27[22];
        v30 = v27[23];
        __swift_project_boxed_opaque_existential_0(v27 + 19, v29);

        v31 = swift_task_alloc();
        v0[111] = v31;
        v17 = *(v30 + 8);
        *v31 = v0;
        v31[1] = sub_226F6B9A4;
        v15 = v28;
        v16 = v29;
      }

      return MEMORY[0x2821AED70](v15, v16, v17);
    }
  }
}

uint64_t sub_226F70B34()
{
  v51 = v0;

  v1 = v0[121];
  v2 = v0[115];
  sub_22766A610();

  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[118];
    v7 = v0[117];
    v48 = v0[102];
    v8 = v0[94];
    v47 = v0[92];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315394;
    v11 = sub_226E97AE8(v7, v6, &v50);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](v0[39], v0[40]);
    v14 = sub_226E97AE8(v12, v13, &v50);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "[Historical Evaluation] Session evaluation for %s failed with error %s, continuing evaluation", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v48(v8, v47);
  }

  else
  {
    v15 = v0[102];
    v16 = v0[94];
    v17 = v0[92];

    v15(v16, v17);
  }

  v18 = v0[116] + 1;
  if (v18 == v0[114])
  {

    v22 = v0[109] + 1;
    if (v22 == v0[107])
    {

      v0[140] = v2;
      v24 = v0[55];
      v23 = v0[56];
      v25 = v0[54];
      v26 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v24 + 8))(v23, v25);
      __swift_project_boxed_opaque_existential_0((v26 + 96), *(v26 + 120));
      v27 = swift_task_alloc();
      v0[141] = v27;
      *v27 = v0;
      v27[1] = sub_226F6FF40;
      v28 = v0[87];

      return sub_226FB5BA4(v28);
    }

    else
    {
      v0[109] = v22;
      v0[108] = v2;
      v41 = v0[105];
      if (v22 >= *(v41 + 16))
      {
        __break(1u);
      }

      else
      {
        v42 = v0[50];
        v43 = *(v41 + 8 * v22 + 32);
        v0[110] = v43;
        v44 = v42[22];
        v45 = v42[23];
        __swift_project_boxed_opaque_existential_0(v42 + 19, v44);

        v46 = swift_task_alloc();
        v0[111] = v46;
        v21 = *(v45 + 8);
        *v46 = v0;
        v46[1] = sub_226F6B9A4;
        v19 = v43;
        v20 = v44;
      }

      return MEMORY[0x2821AED70](v19, v20, v21);
    }
  }

  else
  {
    v0[116] = v18;
    v0[115] = v2;
    v30 = v0[50];
    v31 = v0[110] + 16 * v18;
    v32 = *(v31 + 32);
    v0[117] = v32;
    v33 = *(v31 + 40);
    v0[118] = v33;
    v34 = v30[30];
    v35 = v30[31];
    __swift_project_boxed_opaque_existential_0(v30 + 27, v34);
    v36 = swift_allocObject();
    v0[119] = v36;
    v36[2] = v30;
    v36[3] = v32;
    v36[4] = v33;
    v37 = *(v35 + 24);
    swift_bridgeObjectRetain_n();

    v49 = (v37 + *v37);
    v38 = swift_task_alloc();
    v0[120] = v38;
    *v38 = v0;
    v38[1] = sub_226F6BE60;
    v39 = v0[82];
    v40 = v0[76];

    return (v49)(v39, sub_226F73938, v36, v40, v34, v35);
  }
}

uint64_t sub_226F71098@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_0((a2 + 16), *(a2 + 40));
  result = sub_2274B4E8C(a3, a4, a1, v13);
  if (!v5)
  {
    v15 = sub_227664530();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      sub_226E97D1C(v13, &qword_27D7B8E60, &unk_2276724B0);
      sub_226F73CD0();
      swift_allocError();
      *v17 = 0;
      return swift_willThrow();
    }

    else
    {
      return (*(v16 + 32))(a5, v13, v15);
    }
  }

  return result;
}

unint64_t sub_226F71240(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_22766C100();
  v4 = sub_22766D3F0();

  return sub_226E92278(a1, a2, v4);
}

void sub_226F712B8(uint64_t *a1)
{
  v2 = *(sub_227664530() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117694(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_226F71360(v5);
  *a1 = v3;
}

void sub_226F71360(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227664530();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227664530() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_226F7182C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_226F7148C(0, v2, 1, a1);
  }
}

void sub_226F7148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_227662750();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_227664530();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_227664520();
      v32 = v59;
      sub_227664520();
      v62 = sub_2276626C0();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_226F7182C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_227662750();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_227664530();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_2271171D0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_226F7242C(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2271171D0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_227117144(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_227664520();
      v34 = v159;
      sub_227664520();
      LODWORD(v149) = sub_2276626C0();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_227664520();
        v46 = v159;
        sub_227664520();
        LOBYTE(v162) = sub_2276626C0() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_2273A4F9C(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_2273A4F9C((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_226F7242C(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2271171D0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_227117144(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_227664520();
    v120 = v159;
    sub_227664520();
    LODWORD(v162) = sub_2276626C0();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_226F7242C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_227662750();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_227664530();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_227664520();
            v48 = v66;
            sub_227664520();
            v68 = sub_2276626C0();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_227664520();
        v28 = v66;
        sub_227664520();
        v68 = sub_2276626C0();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_2271171FC(&v75, &v74, &v73);
}

uint64_t sub_226F72B08(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_227662010();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v42 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v43 = &v39 - v16;
  v17 = type metadata accessor for DateIntervalSessionThreshold(0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = &type metadata for PersistenceHandle;
  v47[4] = &off_283A9AF78;
  v21 = swift_allocObject();
  v47[0] = v21;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  v22 = v11;
  v23 = *(v11 + 2);
  v40 = a1;
  v23(v20, a1, v10);
  *&v20[v18[7]] = 0x4072C00000000000;
  v24 = &v20[v18[8]];
  *v24 = 0;
  v24[8] = 1;
  *&v20[v18[9]] = 0x3FE0000000000000;
  v25 = a2;
  v26 = a3;

  v27 = sub_2274B8C4C(v20, v47);
  v42 = v22;
  sub_226F733F0(v20);
  sub_22766A610();
  v28 = v41;
  v23(v41, v40, v10);

  v29 = sub_22766B380();
  v30 = sub_22766C8B0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 134218242;
    *(v31 + 4) = *(v27 + 16);

    *(v31 + 12) = 2080;
    sub_226F73C88(&qword_28139BDF8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v33 = sub_22766D140();
    v34 = v28;
    v36 = v35;
    v42[1](v34, v10);
    v37 = sub_226E97AE8(v33, v36, &v46);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_226E8E000, v29, v30, "Found [%ld] completed archived sessions for date interval: %s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  else
  {

    v42[1](v28, v10);
  }

  (*(v44 + 8))(v43, v45);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v27;
}

uint64_t sub_226F73070(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x277D84F90];
  result = sub_226F1F7A8(0, v9, 0);
  v37 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_63;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_64;
      }

      if (v8 < 0)
      {
        goto LABEL_65;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v24 = v23 - 32;
            if (v23 < 32)
            {
              v24 = v23 - 17;
            }

            v20[2] = v19;
            v20[3] = 2 * (v24 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_226F1F7A8((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v22 + 1;
      *(v38 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v37;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_36:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v38;
    }

    while (1)
    {
      v26 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v27 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v28 = a4[2];
      if (v28 < v27)
      {
        v27 = a4[2];
      }

      v29 = v27 - v17;
      if (v27 < v17)
      {
        goto LABEL_67;
      }

      if (v17 < 0)
      {
        goto LABEL_68;
      }

      if (v28 == v29)
      {

        v30 = a4;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
        if (v27 != v17)
        {
          if (v29 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
            v30 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v30);
            v35 = v34 - 32;
            if (v34 < 32)
            {
              v35 = v34 - 17;
            }

            v30[2] = v29;
            v30[3] = 2 * (v35 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_226F1F7A8((v31 > 1), v32 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= v37;
      if (a3 > 0)
      {
        v33 = v26 >= v37;
      }

      v17 = v26;
      if (v33)
      {
        return v38;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_226F733F0(uint64_t a1)
{
  v2 = type metadata accessor for DateIntervalSessionThreshold(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F7344C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F7350C, 0, 0);
}

void sub_226F7350C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_19:
    v14 = *(v4 + 2);

    if (!v14)
    {
      sub_22766A610();
      v15 = sub_22766B380();
      v16 = sub_22766C890();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_226E8E000, v15, v16, "No archived sessions were found, skipping historical evaluation", v17, 2u);
        MEMORY[0x22AA9A450](v17, -1, -1);
      }

      v19 = v0[4];
      v18 = v0[5];
      v20 = v0[3];

      (*(v19 + 8))(v18, v20);
    }

    v21 = v0[1];

    v21(v14 != 0);
    return;
  }

  v3 = (v1 + 32);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *v3;
    v6 = *(*v3 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_14:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_29;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_27;
    }

LABEL_4:
    ++v3;
    if (!--v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

unint64_t sub_226F73738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E78, &qword_2276724C0);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226F71240(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226F7383C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226F71240(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_226F73A14(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_227664530() - 8);
  v6 = (*(v5 + 80) + 240) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_227667A70() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2274AFEA0(a1, (v2 + 16), v2 + v6, (v2 + v9), (v2 + v12), v2 + v15, *(v2 + v16), a2, *(v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_226F73C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226F73CD0()
{
  result = qword_27D7B8E68;
  if (!qword_27D7B8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8E68);
  }

  return result;
}

uint64_t sub_226F73D44()
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

    return sub_226F73FCC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_226F73E2C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F73F68, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226F73F68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F73FCC()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F7408C, 0, 0);
}

uint64_t sub_226F7408C()
{
  sub_22766A6E0();
  v1 = sub_22766B380();
  v2 = sub_22766C8B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "Starting score submissions.", v3, 2u);
    MEMORY[0x22AA9A450](v3, -1, -1);
  }

  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_0(v7 + 2, v8);
  v10 = *(v9 + 24);

  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E90, &unk_22768CBE0);
  *v11 = v0;
  v11[1] = sub_226F74294;
  v13 = v0[3];

  return (v15)(v0 + 2, sub_226F75370, v13, v12, v8, v9);
}

uint64_t sub_226F74294()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226F748A8;
  }

  else
  {

    v2 = sub_226F743B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F743B0()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[9] = v2;
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_0(v1 + 12, v3);
  v7 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_226F744EC;

  return v7(v2, v3, v4);
}

uint64_t sub_226F744EC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_226F74914;
  }

  else
  {
    v2 = sub_226F74600;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F74600()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_226F7478C;

  return v8();
}

uint64_t sub_226F7478C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F74980;
  }

  else
  {

    v2 = sub_226F16658;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F748A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F74914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F74980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F749EC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_226F74A68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E98, &qword_227672550);
  v5 = sub_2276640A0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_227670CD0;
  (*(v6 + 16))(v8 + v7, a3, v5);
  sub_227559274(v8, v4[1], *(v4 + 16), v4[3]);
}

void sub_226F74B88(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E88, &qword_227672538);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  v10 = qword_2813B2078;
  swift_beginAccess();
  v11 = sub_227542738(v7 + v10, v6, v5);
  if (v11)
  {
    if (v11 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_5;
  }

  v12 = sub_22723EF70(0);
  if (v1)
  {
LABEL_5:

    return;
  }

  v13 = v12;
  [v12 setResultType_];
  sub_226ED9864();
  v14 = sub_22766C9E0();
  v15 = sub_226EDAB24(v14);

  sub_226EDAB78(v15, v9);
}

uint64_t sub_226F74D40(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_227665510();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F74E6C, 0, 0);
}

uint64_t sub_226F74E6C()
{
  v41 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  sub_22766A6E0();
  v6 = *(v4 + 16);
  v6(v1, v5, v3);
  v6(v2, v5, v3);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[5];
  if (v9)
  {
    v36 = v8;
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v17 = 136446466;
    log = v7;
    v18 = sub_2276654F0();
    v38 = v10;
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v12, v16);
    v22 = sub_226E97AE8(v18, v20, &v40);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    sub_226F75318();
    v23 = sub_22766D140();
    v25 = v24;
    v21(v15, v16);
    v26 = sub_226E97AE8(v23, v25, &v40);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_226E8E000, log, v36, "Requesting scores for workout: %{public}s. %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v37, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v11 + 8))(v38, v13);
  }

  else
  {

    v27 = *(v14 + 8);
    v27(v15, v16);
    v27(v12, v16);
    (*(v11 + 8))(v10, v13);
  }

  v28 = v0[4];
  v29 = v28[15];
  v30 = v28[16];
  __swift_project_boxed_opaque_existential_0(v28 + 12, v29);
  v39 = (*(v30 + 16) + **(v30 + 16));
  v31 = swift_task_alloc();
  v0[12] = v31;
  *v31 = v0;
  v31[1] = sub_226F751C8;
  v32 = v0[2];
  v33 = v0[3];

  return v39(v32, v33, v29, v30);
}

uint64_t sub_226F751C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_226F75318()
{
  result = qword_27D7B8E80;
  if (!qword_27D7B8E80)
  {
    sub_227665510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8E80);
  }

  return result;
}

char *sub_226F75370@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_22709A590(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_226F7540C(uint64_t a1)
{
  sub_226F75534(319, &qword_28139D290, sub_226F754E8);
  if (v1 <= 0x3F)
  {
    sub_226F75534(319, &unk_28139D320, MEMORY[0x277D219A0]);
    if (v2 <= 0x3F)
    {
      sub_226F75534(319, &qword_28139D318, MEMORY[0x277D224A0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_226F754E8()
{
  result = qword_28139D288;
  if (!qword_28139D288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D288);
  }

  return result;
}

void sub_226F75534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ServerEndpointError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerEndpointError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}