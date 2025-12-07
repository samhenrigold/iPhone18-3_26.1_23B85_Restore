uint64_t sub_2273EC9C8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBE0, &unk_227684EC0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BEBE0, &unk_227684EC0);
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

void sub_2273ECBDC(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBE0, &unk_227684EC0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BEBE0, &unk_227684EC0);
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

uint64_t sub_2273ECE14(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
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
  v11 = sub_227668800();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBE0, &unk_227684EC0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &unk_27D7BEBE0, &unk_227684EC0);
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

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273ED160(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C8, &unk_227684E90);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD8C8, &unk_227684E90);
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

void sub_2273ED374(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C8, &unk_227684E90);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BD8C8, &unk_227684E90);
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

uint64_t sub_2273ED5AC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
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
  v11 = sub_2276684D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C8, &unk_227684E90);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &qword_27D7BD8C8, &unk_227684E90);
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

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273ED8F8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD860, &qword_227684E38);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD860, &qword_227684E38);
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

void sub_2273EDB0C(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD860, &qword_227684E38);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &unk_27D7BD860, &qword_227684E38);
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

uint64_t sub_2273EDD44(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
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
  v11 = sub_227666DB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD860, &qword_227684E38);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &unk_27D7BD860, &qword_227684E38);
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

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2273EE090(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
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
  v11 = sub_2276685B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD800, &qword_227678BD0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_226E93170(v28, v24 - v16, &unk_27D7BD800, &qword_227678BD0);
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

    v22(sub_226E937DC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_2273EE3DC(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
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

    v18(sub_226E937DC, v19);

    (*(v14 + 8))(v16, v13);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

uint64_t sub_2273EE61C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA390, &qword_227678BA0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BA390, &qword_227678BA0);
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

void sub_2273EE830(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA390, &qword_227678BA0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v14);
    sub_226E97D1C(v14, &qword_27D7BA390, &qword_227678BA0);
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

    v20(sub_226E93814, v21);

    (*(v16 + 8))(v18, v15);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273EEA68(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD518, &qword_227684C38);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD510, &unk_227684320);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD518, &qword_227684C38);
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

void sub_2273EEC7C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227665E60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD00, &unk_227684CE0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BBD00, &unk_227684CE0);
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

void sub_2273EEF5C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227666600();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD518, &qword_227684C38);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD518, &qword_227684C38);
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

uint64_t sub_2273EF23C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA400, &unk_227684C10);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BA400, &unk_227684C10);
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

uint64_t sub_2273EF450(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD30, &qword_22767BFC8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5D0, &unk_22767E450);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BBD30, &qword_22767BFC8);
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

uint64_t sub_2273EF664(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C0, &qword_227684C60);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A0, &unk_227685280);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD5C0, &qword_227684C60);
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

uint64_t sub_2273EF878(void *a1, char a2, void (*a3)(void **, double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C0, &qword_227684C60);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A0, &unk_227685280);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v22(v12);
    return sub_226E97D1C(v12, &qword_27D7BD5C0, &qword_227684C60);
  }

  else
  {
    v23 = a1;
    a3(&v23, v15);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273EFA94(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD528, &qword_2276855A0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227663FA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD538, &unk_22768B7F0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD538, &unk_22768B7F0);
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

uint64_t sub_2273EFD74(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A8, &unk_227685610);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A0, &unk_22767E430);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD5A8, &unk_227685610);
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

uint64_t sub_2273EFF88(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD20, &unk_227684BF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB80, &unk_22767BC20);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BBD20, &unk_227684BF0);
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

uint64_t sub_2273F019C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4B0, &unk_227684BC0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC658, &qword_22767E3A8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD4B0, &unk_227684BC0);
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

uint64_t sub_2273F03B0(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3E0, &unk_227684B20);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC650, &qword_22767E3A0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD3E0, &unk_227684B20);
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

uint64_t sub_2273F05C4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v26[1] = a3;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3E0, &unk_227684B20);
  MEMORY[0x28223BE20](v6);
  v8 = (v26 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC650, &qword_22767E3A0);
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4A0, &unk_227684BB0);
  MEMORY[0x28223BE20](v15);
  v17 = (v26 - v16);
  sub_226E93170(a1, v26 - v16, &unk_27D7BD4A0, &unk_227684BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v8 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v8);

    v20 = &unk_27D7BD3E0;
    v21 = &unk_227684B20;
    v22 = v8;
  }

  else
  {
    sub_226E95D18(v17, v14, &qword_27D7B94C0, &unk_2276874A0);
    v27(v14);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_226E937DC, v24);

    (*(v28 + 8))(v11, v9);
    v22 = v14;
    v20 = &qword_27D7B94C0;
    v21 = &unk_2276874A0;
  }

  return sub_226E97D1C(v22, v20, v21);
}

uint64_t sub_2273F08DC(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD568, &unk_2276855D0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC680, &unk_22767E400);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD568, &unk_2276855D0);
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

uint64_t sub_2273F0AF0(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD480, &unk_227684B90);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC640, &qword_22767E390);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD480, &unk_227684B90);
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

uint64_t sub_2273F0D04(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD468, &qword_227684B78);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD460, &unk_22767E380);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BD468, &qword_227684B78);
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

void sub_2273F0F18(void *a1, char a2, void (*a3)(char *, double), uint64_t a4, void (*a5)(void **), uint64_t a6)
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
    v20 = a1 & 1;
    a3(&v20, v13);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EB4544, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_2273F10C4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227668A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD468, &qword_227684B78);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD468, &qword_227684B78);
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

void sub_2273F13A4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227668B50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD480, &unk_227684B90);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD480, &unk_227684B90);
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

void sub_2273F1684(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276668F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3E0, &unk_227684B20);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD3E0, &unk_227684B20);
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

void sub_2273F1964(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227669040();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4B0, &unk_227684BC0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD4B0, &unk_227684BC0);
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

void sub_2273F1C44(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276638D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD20, &unk_227684BF0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BBD20, &unk_227684BF0);
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

void sub_2273F1F24(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227667A70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA400, &unk_227684C10);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BA400, &unk_227684C10);
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

void sub_2273F2204(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD568, &unk_2276855D0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &qword_27D7BD568, &unk_2276855D0);
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
    sub_226E95D18(v16, v13, &unk_27D7BB8C0, &qword_22767F780);
    v22(v13);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_226EB4544, v20);

    (*(v8 + 8))(v10, v7);
    sub_226E97D1C(v13, &unk_27D7BB8C0, &qword_22767F780);
  }
}

void sub_2273F24B4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227665630();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A8, &unk_227685610);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD5A8, &unk_227685610);
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

void sub_2273F2794(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227665E80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C0, &qword_227684C60);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD5C0, &qword_227684C60);
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

void sub_2273F2A74(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227663CA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD30, &qword_22767BFC8);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BBD30, &qword_22767BFC8);
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

uint64_t sub_2273F2D54(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &qword_27D7BBD48, &qword_22767C010);
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

uint64_t sub_2273F2F68(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD428, &qword_227684B48);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD418, &unk_227684B38);
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

    return sub_226E97D1C(v7, &qword_27D7BD428, &qword_227684B48);
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

void sub_2273F32B4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for AssetRequestProvider.CatalogURLs(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD428, &qword_227684B48);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &qword_27D7BD428, &qword_227684B48);
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
    sub_2273F60B0(v16, v13, type metadata accessor for AssetRequestProvider.CatalogURLs);
    v22(v13);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_226E9F880, v20);

    (*(v8 + 8))(v10, v7);
    sub_2273F6118(v13, type metadata accessor for AssetRequestProvider.CatalogURLs);
  }
}

uint64_t sub_2273F3558(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9C0, &qword_227684EF8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_226E97D1C(v12, &unk_27D7BD9C0, &qword_227684EF8);
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

void sub_2273F376C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C8, &qword_22768B560);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_2276668F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3E0, &unk_227684B20);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD3E0, &unk_227684B20);
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

void sub_2273F3A4C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227667670();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &unk_27D7BD450, &qword_227684B70);
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

void sub_2273F3D2C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD428, &qword_227684B48);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD418, &unk_227684B38);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_226E97D1C(v12, &qword_27D7BD428, &qword_227684B48);
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

uint64_t sub_2273F3F6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v5;
  v7[5] = v6;

  sub_226F5E0B4(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);

  return sub_227669270();
}

void sub_2273F4020(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  *&v7 = v8;
  BYTE8(v7) = 0;
  a1(&v7);
  sub_226EB4668(v6, 0, MEMORY[0x277D84FB8]);
}

uint64_t sub_2273F40C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2273F4108(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_226E93080(a1, a2, v2 + v6, *v7, v7[1], &qword_27D7BA1B0, &unk_2276775B0, &unk_283AB7BB0, sub_2273F41F4);
}

unint64_t sub_2273F426C(uint64_t a1, uint64_t a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_227662560();
  v23[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v23];

  if (v8)
  {
    v9 = v23[0];
    sub_22766CC20();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
    if (swift_dynamicCast())
    {
      return v22[1];
    }

    else
    {
      return sub_22714972C(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v11 = v23[0];
    v12 = sub_2276622C0();

    swift_willThrow();
    sub_22766A740();
    v13 = v12;
    v14 = sub_22766B380();
    v15 = sub_22766C890();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = MEMORY[0x22AA995D0](v22[3], v22[4]);
      v20 = sub_226E97AE8(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_226E8E000, v14, v15, "Unable to deserialize remote identifier: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA9A450](v17, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v21 = sub_22714972C(MEMORY[0x277D84F90]);

    return v21;
  }
}

void sub_2273F5F54(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2273F60B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2273F6118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2273F7F54(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_2273F86A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CA8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2273F871C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227665060();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2273F8744(uint64_t a1)
{
  *(a1 + 24) = sub_2273F87AC(&qword_2813A5740, &unk_22767A040);
  result = sub_2273F87AC(&qword_2813A5738, MEMORY[0x277D51338]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2273F87AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2276650A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2273F87F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v21 = a2;
  v22 = sub_22766A170();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669D60();
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
  v12 = sub_2276638D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227670CD0;
  (*(v13 + 16))(v15 + v14, v4, v12);
  v16 = v24;
  sub_22756601C(v15, v11[1], *(v11 + 16), v11[3]);

  if (!v16)
  {
    swift_getObjectType();
    sub_227669D50();
    sub_2276699D0();
    (*(v19 + 8))(v10, v8);
    sub_22766A160();
    v17 = v22;
    sub_2276699D0();
    (*(v20 + 8))(v7, v17);
  }
}

unint64_t sub_2273F8AD4(uint64_t a1)
{
  result = sub_2273F8AFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2273F8AFC()
{
  result = qword_2813A57F0;
  if (!qword_2813A57F0)
  {
    sub_2276638D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A57F0);
  }

  return result;
}

void sub_2273F8B54(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - v5;
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  v15 = [a1 identifier];
  if (!v15)
  {
    goto LABEL_5;
  }

  v37 = v10;
  v16 = v15;
  v36 = sub_22766C000();
  v18 = v17;

  v19 = [a1 type];
  if (!v19 || (v38 = v18, v34 = a2, v35 = v8, v20 = v19, v21 = sub_22766C000(), v23 = v22, v20, v24 = MEMORY[0x22AA922F0](v21, v23), v24 == 3))
  {

LABEL_5:
    v25 = sub_227664DD0();
    sub_2273F973C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
    swift_willThrow();

    return;
  }

  v33[3] = v24;
  v27 = [a1 remoteURL];
  if (v27)
  {
    v28 = v27;
    sub_22766C000();
  }

  v29 = v37;
  sub_227662310();
  v30 = v35;
  if ((*(v35 + 48))(v6, 1, v7) == 1)
  {

    sub_226E97D1C(v6, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_5;
  }

  (*(v30 + 32))(v14, v6, v7);
  v37 = [a1 priority];
  (*(v30 + 16))(v29, v14, v7);
  [a1 requestTime];
  [a1 expirationTime];
  v31 = [a1 bundleIdentifier];
  if (v31)
  {
    v32 = v31;
    sub_22766C000();
  }

  sub_227665FF0();

  (*(v30 + 8))(v14, v7);
}

void *static AssetRequestReference.representativeSamples()()
{
  v33 = sub_2276624A0();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v22 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA30, &qword_227684F88);
  v1 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = v22 - v2;
  v30 = sub_227666070();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766C090();
  v7 = sub_227665FC0();
  v8 = sub_2276622F0();
  sub_226F5D274();
  v9 = sub_22766BE70();
  v10 = sub_22766BE70();
  v11 = sub_22766CB70();
  v52 = v7;
  v53[0] = v6;
  v53[1] = v53;
  v53[2] = &v52;
  v50 = &unk_283A94DB8;
  v51 = v8;
  v53[3] = &v51;
  v53[4] = &v50;
  v48 = v10;
  v49 = v9;
  v53[5] = &v49;
  v53[6] = &v48;
  v47 = v11;
  v53[7] = &v47;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA38, &qword_227684F90);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA40, &qword_227684F98);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v36[0] = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v36[1] = sub_226F5BF60(&qword_27D7BDA48, &qword_27D7BDA38, &qword_227684F90);
  v36[2] = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v36[3] = sub_226F5BF60(&qword_27D7BDA50, &qword_27D7BDA40, &qword_227684F98);
  v37 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v38 = v37;
  v39 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_226F1F4C8(0, v13, 0);
    v15 = 0;
    v16 = v35;
    v24 = v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v23 = (v34 + 16);
    v22[1] = v3 + 32;
    v28 = v1;
    v27 = v3;
    v26 = v12;
    v25 = v13;
    while (v15 < *(v12 + 16))
    {
      v17 = v24 + *(v1 + 72) * v15;
      v34 = v16;
      v18 = v29;
      sub_2273F9674(v17, v29);
      (*v23)(v32, v18 + *(v31 + 64), v33);

      sub_227665FF0();
      v19 = v18;
      v16 = v34;
      sub_226E97D1C(v19, &qword_27D7BDA30, &qword_227684F88);
      v35 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1F4C8((v20 > 1), v21 + 1, 1);
        v16 = v35;
      }

      ++v15;
      *(v16 + 16) = v21 + 1;
      result = (*(v27 + 32))(v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21, v5, v30);
      v1 = v28;
      v12 = v26;
      if (v25 == v15)
      {

        return v16;
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

uint64_t sub_2273F9674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA30, &qword_227684F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273F96E4(uint64_t a1)
{
  result = sub_2273F973C(&qword_28139B6C8, MEMORY[0x277D52038], &protocol conformance descriptor for AssetRequestReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273F973C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2273F9784(void *a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666000();
  v6 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666040();
  sub_227665FE0();
  v7 = sub_22766BFD0();

  [a1 setType_];

  sub_227666060();
  sub_227662390();
  (*(v3 + 8))(v5, v2);
  v8 = sub_22766BFD0();

  [a1 setRemoteURL_];

  v9 = sub_227666050();
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [a1 setPriority_];
  sub_227666010();
  [a1 setRequestTime_];
  sub_227666020();
  [a1 setExpirationTime_];
  sub_227666030();
  if (v10)
  {
    v11 = sub_22766BFD0();
  }

  else
  {
    v11 = 0;
  }

  [a1 setBundleIdentifier_];
}

void sub_2273F99AC(void *a1, uint64_t a2)
{
  v6 = sub_227662190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227666AC0();
  v11 = sub_2275336F0(v10);
  if (!v3)
  {
    sub_227534CF8(a2, v11);
    v71 = 0;
    v13 = v12;
    v65 = v7;
    v66 = a2;

    [a1 setBodyFocusIdentifierss_];

    v14 = sub_227666A70();
    v67 = a1;
    v16 = v15;
    v68 = v14;
    v69 = v15;
    v18 = v17 & 1;
    v70 = v17 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
    sub_227663AD0();
    v19 = sub_22766BFD0();
    v20 = v16;
    v21 = v67;
    sub_226EB2DFC(v14, v20, v18);

    [v21 setContentRating_];

    v22 = sub_227666B00();
    v23 = v71;
    v24 = sub_227533614(v22);
    if (!v23)
    {
      v71 = v2;
      v25 = v66;
      sub_227533AEC(v66, v24);
      v26 = v65;
      v28 = v27;

      [v21 setContributorIdentifierss_];

      sub_227666A60();
      sub_2276620E0();
      (*(v26 + 8))(v9, v6);
      v29 = sub_22766BFD0();

      [v21 setDateReleased_];

      sub_227666B40();
      [v21 setDuration_];
      v30 = sub_227666B30();
      if (v30 >= 0x7FFFFFFF)
      {
        v31 = 0x7FFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      [v21 setEpisode_];
      v32 = sub_227666AD0();
      v33 = sub_227533640(v32);
      sub_227533D80(v25, v33);
      v35 = v34;

      [v21 setEquipmentIdentifierss_];

      sub_227666A50();
      v36 = sub_22766BFD0();

      [v21 setIdentifier_];

      v37 = sub_227666B50();
      v39 = v38;
      v68 = v37;
      v69 = v38;
      v41 = v40 & 1;
      v70 = v40 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438);
      sub_227663AD0();
      v42 = sub_22766BFD0();
      sub_226EB2DFC(v37, v39, v41);

      [v21 setMediaType_];

      sub_227666A90();
      v43 = sub_22766BFD0();

      [v21 setModalityIdentifier_];

      v44 = sub_227666AE0();
      v45 = sub_22753366C(v44);
      sub_2275342A8(v66, v45);
      v47 = v46;

      [v21 setMusicGenreIdentifierss_];

      v48 = sub_227666AF0();
      v49 = sub_22753371C(v48);
      sub_227534F8C(v66, v49);
      v51 = v50;

      [v67 setSkillLevelIdentifierss_];

      v52 = sub_227666A80();
      v53 = sub_227533698(v52);
      sub_22753453C(v66, v53);
      v55 = v54;

      [v67 setThemeIdentifierss_];

      sub_227666B10();
      if (v56)
      {
        v57 = sub_22766BFD0();
      }

      else
      {
        v57 = 0;
      }

      [v67 setTitle_];

      v58 = sub_227666AA0();
      v59 = sub_2275336C4(v58);
      sub_2275347D0(v66, v59);
      v61 = v60;

      [v67 setTrainerIdentifierss_];

      v62 = sub_227666B20();
      sub_2276484A0(v66, v62);
      v64 = v63;

      [v67 setTraits_];
    }
  }
}

void *static CatalogWorkoutReference.representativeSamples()()
{
  v37 = sub_227662190();
  v47 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA58, &qword_227685008);
  v1 = *(v35 - 1);
  MEMORY[0x28223BE20](v35);
  v34 = v25 - v2;
  v33 = sub_227666B60();
  v3 = *(v33 - 8);
  v4 = MEMORY[0x28223BE20](v33);
  v32 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x22AA8E410](v4);
  sub_226F5D274();
  v7 = sub_22766BE70();
  sub_226F5D220();
  v8 = sub_22766CFA0();
  v9 = sub_22766C090();
  v10 = sub_22766C090();
  v11 = sub_22766C090();
  v63 = v7;
  v64[0] = v6;
  v64[1] = v64;
  v64[2] = &v63;
  v61 = v9;
  v62 = v8;
  v64[3] = &v62;
  v64[4] = &v61;
  v59 = v11;
  v60 = v10;
  v64[5] = &v60;
  v64[6] = &v59;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD8, &qword_2276772D8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v57 = v56;
  v58 = v56;
  v49[0] = sub_226F5BF60(&qword_27D7B9FE8, &qword_27D7B9FD8, &qword_2276772D8);
  v49[1] = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v49[2] = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v50 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v51 = v50;
  v52 = v50;
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v48 = MEMORY[0x277D84F90];
    result = sub_226F1F928(0, v13, 0);
    v15 = 0;
    v27 = v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v16 = v48;
    v26 = (v47 + 16);
    v25[1] = v3 + 32;
    v31 = v1;
    v30 = v3;
    v29 = v12;
    v28 = v13;
    v17 = v34;
    while (v15 < *(v12 + 16))
    {
      sub_2273FA734(v27 + *(v1 + 72) * v15, v17);
      v46 = *(v17 + v35[16]);
      v18 = (v17 + v35[20]);
      v20 = *v18;
      v19 = v18[1];
      v45 = v20;
      v39 = v19;
      v43 = *(v17 + v35[24]);
      v40 = *(v17 + v35[28]);
      v42 = sub_22766C090();
      v44 = sub_22766C090();
      v21 = *v26;
      v47 = v16;
      v21(v36, v17, v37);
      v41 = sub_22766C090();
      v38 = sub_22766C090();
      sub_22766C090();
      sub_22766C090();
      sub_22766C090();
      sub_226F50BBC(&unk_283A94E00);
      sub_226E97D1C(&unk_283A94E20, &qword_27D7BEF50, &qword_227671540);

      v22 = v32;
      v16 = v47;
      sub_227666AB0();
      sub_226E97D1C(v17, &qword_27D7BDA58, &qword_227685008);
      v48 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1F928((v23 > 1), v24 + 1, 1);
        v16 = v48;
      }

      ++v15;
      *(v16 + 16) = v24 + 1;
      result = (*(v30 + 32))(v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v22, v33);
      v1 = v31;
      v12 = v29;
      if (v28 == v15)
      {

        return v16;
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

uint64_t sub_2273FA734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA58, &qword_227685008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273FA7A4(uint64_t a1)
{
  result = sub_2273FA7FC(&qword_28139B5C8, MEMORY[0x277D52828], &protocol conformance descriptor for CatalogWorkoutReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273FA7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2273FA844(uint64_t a1)
{
  v41 = sub_227664530();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_227664E40();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v30[1] = v1;
    v46 = MEMORY[0x277D84F90];
    sub_226F1FA48(0, v8, 0);
    v44 = a1 + 56;
    v45 = v46;
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v37 = v5;
    v38 = v3;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v33 = a1;
    v34 = v5 + 32;
    v31 = a1 + 64;
    v32 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v44 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 36);
      v42 = v11;
      v43 = v15;
      v16 = v38;
      v17 = v40;
      v18 = v41;
      (*(v38 + 16))(v40, *(a1 + 48) + *(v38 + 72) * v10, v41);
      sub_227664510();
      sub_2276644F0();
      sub_227664490();
      sub_227664E30();
      (*(v16 + 8))(v17, v18);
      v19 = v45;
      v46 = v45;
      v21 = *(v45 + 16);
      v20 = *(v45 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1FA48((v20 > 1), v21 + 1, 1);
        v19 = v46;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v45 = v19;
      result = (*(v37 + 32))(v19 + v22 + *(v37 + 72) * v21, v7, v39);
      a1 = v33;
      v12 = 1 << *(v33 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v23 = *(v44 + 8 * v14);
      if ((v23 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v43 != *(v33 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v10 & 0x3F));
      if (v24)
      {
        v12 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v32;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v13 = v32;
        v27 = (v31 + 8 * v14);
        while (v26 < (v12 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_226EB526C(v10, v43, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v43, 0);
      }

LABEL_4:
      v11 = v42 + 1;
      v10 = v12;
      if (v42 + 1 == v13)
      {
        return v45;
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

void *sub_2273FAC2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  sub_226F20148(0, v1, 0);
  v2 = v27;
  v3 = a1 + 56;
  result = sub_22766CC90();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v6 + 36);
    sub_226ED978C();
    result = sub_227663B80();
    v11 = v25;
    v13 = *(v27 + 16);
    v12 = *(v27 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_226F20148((v12 > 1), v13 + 1, 1);
      v11 = v25;
    }

    *(v27 + 16) = v13 + 1;
    v14 = v27 + 24 * v13;
    *(v14 + 32) = v11;
    *(v14 + 48) = v26;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v10);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v23;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 64 + 8 * v10);
      v9 = v23;
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_226EB526C(v5, v24, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v5, v24, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
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

uint64_t sub_2273FAE90(uint64_t a1)
{
  v43 = sub_227665CA0();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2276627D0();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_226F20288(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_227665C40();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F20288((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_226EB526C(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
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

uint64_t sub_2273FB254(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22766CD20();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    sub_22766CF30();
    result = sub_22766CCD0();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  sub_22766CF30();
  result = sub_22766CC90();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_2274DD7C8(v26, v27, v28, a1);
    v13 = v12;
    v14 = ACHCodableFromTemplate();

    sub_22766CF00();
    sub_22766CF40();
    sub_22766CF50();
    result = sub_22766CF10();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_22766CCF0())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB50, &qword_227685560);
      v7 = sub_22766C6A0();
      sub_22766CD70();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_226EB526C(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_226EB526C(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_226EB526C(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_2273FB648(uint64_t a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22766CCE0();
    sub_226E99364(0, a3, a4);
    sub_226ECCEB4(a5, a3, a4);
    sub_22766C700();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_226EBB21C(v8);
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22766CD50())
      {
        sub_226E99364(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2273FB844(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v14[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2270AE890(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_2273FB948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v28 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v30 = a2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v7 + 32;
  v27[2] = v7 + 16;
  v27[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v29 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6, v14);
      (*(v7 + 32))(v9, v16, v6);
      v28(v12, v9);
      (*(v7 + 8))(v12, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_2273FBB74(uint64_t a1)
{
  v50 = sub_2276682D0();
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v44 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v51 = a1;
  v14 = *(a1 + 56);
  v13 = a1 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v46 = xmmword_227670CD0;
  v47 = v7;
  while (v17)
  {
LABEL_9:
    v20 = *(v54 + 72);
    v21 = v49;
    sub_226F1B5DC(*(v51 + 48) + v20 * (__clz(__rbit64(v17)) | (v10 << 6)), v49);
    sub_226F4FF14(v21, v7);
    sub_226F1B5DC(v7, v52);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = v20;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v23 = 2;
      }

      else
      {
        sub_22742FDAC(v52, MEMORY[0x277D53468]);
        v23 = 0;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v23 = 1;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_22742FDAC(v52, MEMORY[0x277D53468]);
      v23 = 3;
    }

    else
    {
      sub_22742FDAC(v52, MEMORY[0x277D53468]);
      v23 = 4;
    }

    v25 = sub_226F491D4(v23);
    v26 = v11[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_32;
    }

    v29 = v24;
    if (v11[3] < v28)
    {
      sub_226FE48D4(v28, 1);
      v11 = v55;
      v30 = sub_226F491D4(v23);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_34;
      }

      v25 = v30;
    }

    v17 &= v17 - 1;
    if (v29)
    {
      v32 = v11[7];
      sub_226F4FF14(v7, v48);
      v33 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v33;
      v45 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_2273A5310(0, v33[2] + 1, 1, v33);
        *(v32 + 8 * v25) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = sub_2273A5310((v35 > 1), v36 + 1, 1, v33);
        *(v45 + 8 * v25) = v33;
      }

      v33[2] = v36 + 1;
      sub_226F4FF14(v48, v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v36 * v53);
      v7 = v47;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B0, &qword_227673180);
      v37 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v46;
      v39 = v38 + v37;
      v7 = v47;
      sub_226F4FF14(v47, v39);
      v11[(v25 >> 6) + 8] |= 1 << v25;
      *(v11[6] + 8 * v25) = v23;
      *(v11[7] + 8 * v25) = v38;
      v40 = v11[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_33;
      }

      v11[2] = v42;
    }
  }

  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return v11;
    }

    v17 = *(v13 + 8 * v19);
    ++v10;
    if (v17)
    {
      v10 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_2273FBFDC(uint64_t a1, uint64_t (*a2)(char *))
{
  v48 = a2;
  v3 = sub_2276682D0();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v46 = a1;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v44 = v10;
  v45 = a1 + 64;
  while (1)
  {
    v13 = v11;
    if (!v9)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v11 = v13;
LABEL_10:
      v14 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
      v15 = *(v46 + 56);
      v43 = *(*(v46 + 48) + v14);
      v16 = *(v15 + v14);
      v49 = v12;
      v17 = *(v16 + 16);
      v47 = v16;
      if (v17)
      {
        v18 = v42;
        v19 = v16 + ((*(v42 + 80) + 32) & ~*(v42 + 80));

        v20 = *(v18 + 72);
        v21 = v12;
        do
        {
          sub_226F1B5DC(v19, v5);
          v22 = v48(v5);
          v23 = sub_22742FDAC(v5, MEMORY[0x277D53468]);
          if (v22)
          {
            MEMORY[0x22AA985C0](v23);
            if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22766C360();
            }

            sub_22766C3A0();
            v21 = v49;
          }

          v19 += v20;
          --v17;
        }

        while (v17);
      }

      else
      {

        v21 = v12;
      }

      v24 = v21 >> 62 ? sub_22766CD20() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 &= v9 - 1;
      if (v24)
      {
        break;
      }

      v13 = v11;
      v10 = v44;
      v6 = v45;
      v12 = MEMORY[0x277D84F90];
      if (!v9)
      {
LABEL_7:
        while (1)
        {
          v11 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v11 >= v10)
          {

            return;
          }

          v9 = *(v6 + 8 * v11);
          ++v13;
          if (v9)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v25 = sub_22766C2B0();

    v26 = [objc_opt_self() andPredicateWithSubpredicates_];

    v27 = v41[2];
    v12 = MEMORY[0x277D84F90];
    if (v41[3] <= v27)
    {
      sub_226FE466C(v27 + 1, 1);
    }

    v28 = v50;
    v29 = sub_22766D360();
    v30 = v28 + 64;
    v41 = v28;
    v31 = -1 << *(v28 + 32);
    v32 = v29 & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v28 + 64 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v28 + 64 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v10 = v44;
    v6 = v45;
LABEL_36:
    *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = v41;
    *(v41[6] + 8 * v34) = v43;
    *(v39[7] + 8 * v34) = v26;
    ++v39[2];
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  v10 = v44;
  v6 = v45;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v30 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_36;
    }
  }

LABEL_39:
  __break(1u);
}

unint64_t sub_2273FC414(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result && a3 - a2 < result)
  {
LABEL_9:
    if (a3 >= a2)
    {
      return a2;
    }

    goto LABEL_13;
  }

  v3 = a2 + result;
  if (!__OFADD__(a2, result))
  {
    if (v3 < a2)
    {
      goto LABEL_15;
    }

    v4 = v3 <= a3;
    a3 = a2 + result;
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2273FC470(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_2273FC4D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_22742DEB0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_22742DE4C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_227662550();
    v15 = v14;
    result = sub_226EDC420(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2273FC638(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

void sub_2273FCB68(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = a2(0);
  if (!v4)
  {
    v8 = v7;
    [v7 setResultType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_227670CD0;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v10 = sub_22766C820();
    v11 = [v10 keyPath];

    v12 = sub_22766C000();
    v14 = v13;

    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
    v15 = sub_22766C2B0();

    [v8 setPropertiesToFetch_];

    sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
    sub_22766C9E0();
    v16 = a3();

    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = 0;
        while (v18 < *(v16 + 16))
        {
          v19 = v18 + 1;

          a4(v20);
          v18 = v19;
          if (v17 == v19)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_9:
      }
    }

    else
    {
      v21 = sub_227664DD0();
      sub_22742F224(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51018], v21);
      swift_willThrow();
    }
  }
}

id sub_2273FCE18()
{
  v0 = sub_227665FA0();
  v1 = sub_2273FBB74(v0);
  sub_2273FBFDC(v1, sub_226F19EA8);
  v3 = v2;

  v4 = sub_227665F90();
  v5 = sub_2273FBB74(v4);
  sub_2273FBFDC(v5, sub_226F1A9D0);
  v7 = v6;

  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_226ECC830(*(v3 + 16), 0);
  v10 = sub_2274CF834();
  result = sub_226EBB21C(v16);
  if (v10 == v8)
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      while (1)
      {
        v13 = sub_226ECC830(v12, 0);
        v7 = sub_2274CF834();
        sub_226EBB21C(v16);
        if (v7 == v12)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v9 = MEMORY[0x277D84F90];
        v12 = *(v7 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v13 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v13);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v14 = sub_22766C2B0();

    v15 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2273FCFE0@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v86 = *(v2 - 8);
  v87 = v2;
  v74 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v60 - v5;
  v88 = sub_227662750();
  v78 = *(v88 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v88);
  v75 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v60 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = v82[8];
  MEMORY[0x28223BE20](v14);
  v81 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v79 = sub_227669890();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v23 + 24) = 54;
  *(v23 + 32) = 2;
  *(v23 + 40) = 124;
  *(v23 + 48) = &unk_227685570;
  *(v23 + 56) = v1;
  v84 = sub_227667A70();

  v24 = v20;
  v70 = v20;
  sub_227669270();
  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v71 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v9);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v90 = v25;
  v27 = sub_22766C060();
  v67 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v69 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v66 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder.queryAchievementEnvironmentCache";
  *(v30 + 56) = 65;
  *(v30 + 64) = 2;

  v31 = v85;
  sub_227669270();
  v32 = v82;
  v65 = v82[2];
  v33 = v81;
  v34 = v83;
  v65(v81, v24, v83);
  v64 = *(v32 + 80);
  v35 = v32;
  v61 = ((v64 + 16) & ~v64) + v15;
  v36 = (v64 + 16) & ~v64;
  v63 = v36;
  v37 = swift_allocObject();
  v62 = v35[4];
  v62(v37 + v36, v33, v34);
  v39 = v86;
  v38 = v87;
  v40 = v73;
  (*(v86 + 16))(v73, v31, v87);
  v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v42 = (v74 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v39 + 32))(v43 + v41, v40, v38);
  v44 = (v43 + v42);
  *v44 = sub_227430948;
  v44[1] = v37;
  v45 = v72;
  sub_227669270();
  v46 = v78;
  v47 = v75;
  v48 = v88;
  (*(v78 + 16))(v75, v89, v88);
  v49 = (*(v46 + 80) + 49) & ~*(v46 + 80);
  v50 = (v77 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v66;
  *(v51 + 16) = v67;
  *(v51 + 24) = v52;
  *(v51 + 32) = "RemoteBrowsingEnvironmentBuilder.queryAchievementEnvironmentCache";
  *(v51 + 40) = 65;
  *(v51 + 48) = 2;
  (*(v46 + 32))(v51 + v49, v47, v48);
  *(v51 + v50) = v68;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v53 = v81;
  v54 = v83;
  v65(v81, v45, v83);
  v55 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v62(v56 + v63, v53, v54);
  v57 = (v56 + v55);
  *v57 = sub_227430984;
  v57[1] = v51;

  sub_227669270();
  v58 = v82[1];
  v58(v45, v54);
  (*(v86 + 8))(v85, v87);
  (*(v46 + 8))(v89, v88);
  v58(v70, v54);
  (*(v76 + 8))(v71, v79);
}

uint64_t sub_2273FD8F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  v2[4] = swift_task_alloc();
  v3 = sub_227667A70();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273FD9EC, 0, 0);
}

uint64_t sub_2273FD9EC()
{
  __swift_project_boxed_opaque_existential_0((v0[3] + 56), *(v0[3] + 80));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2273FDA94;
  v2 = v0[7];

  return sub_226ECA330(v2);
}

uint64_t sub_2273FDA94()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2273FDBA8;
  }

  else
  {
    v2 = sub_2273FDC18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273FDBA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273FDC18()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_2271480B4(MEMORY[0x277D84F90]);
  v5 = sub_2276667B0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_227667A60();

  sub_226E97D1C(v3, &qword_27D7B8E40, &unk_227685580);
  (*(v2 + 8))(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2273FDD68@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v86 = *(v2 - 8);
  v87 = v2;
  v74 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v60 - v5;
  v88 = sub_227662750();
  v78 = *(v88 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v88);
  v75 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v60 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4E0, &unk_227684C00);
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = v82[8];
  MEMORY[0x28223BE20](v14);
  v81 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v79 = sub_227669890();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v23 + 24) = 54;
  *(v23 + 32) = 2;
  *(v23 + 40) = 138;
  *(v23 + 48) = &unk_227685550;
  *(v23 + 56) = v1;

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAF8, &qword_227685558);
  v70 = v20;
  sub_227669270();
  sub_2276697A0();
  swift_allocObject();
  v24 = sub_227669770();
  v71 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v9);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v25 = sub_22766A8F0();
  v68 = v25;
  v90 = v24;
  v26 = sub_22766C060();
  v28 = v27;
  v67 = v27;
  sub_227662720();
  v29 = swift_allocObject();
  v69 = v24;
  *(v29 + 16) = v24;
  *(v29 + 24) = v25;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  *(v29 + 48) = "RemoteBrowsingEnvironmentBuilder.queryAchievementTemplates";
  *(v29 + 56) = 58;
  *(v29 + 64) = 2;

  v30 = v85;
  sub_227669270();
  v31 = v82;
  v32 = v82[2];
  v65 = v82 + 2;
  v66 = v32;
  v33 = v81;
  v34 = v20;
  v35 = v83;
  v32(v81, v34, v83);
  v64 = *(v31 + 80);
  v61 = ((v64 + 16) & ~v64) + v15;
  v36 = (v64 + 16) & ~v64;
  v63 = v36;
  v37 = swift_allocObject();
  v62 = v31[4];
  v62(v37 + v36, v33, v35);
  v38 = v86;
  v39 = v87;
  v40 = v73;
  (*(v86 + 16))(v73, v30, v87);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v74 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v41, v40, v39);
  v44 = (v43 + v42);
  *v44 = sub_227430830;
  v44[1] = v37;
  v45 = v72;
  sub_227669270();
  v46 = v78;
  v47 = v75;
  v48 = v88;
  (*(v78 + 16))(v75, v89, v88);
  v49 = (*(v46 + 80) + 49) & ~*(v46 + 80);
  v50 = (v77 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v67;
  *(v51 + 16) = v26;
  *(v51 + 24) = v52;
  *(v51 + 32) = "RemoteBrowsingEnvironmentBuilder.queryAchievementTemplates";
  *(v51 + 40) = 58;
  *(v51 + 48) = 2;
  (*(v46 + 32))(v51 + v49, v47, v48);
  *(v51 + v50) = v68;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v53 = v81;
  v54 = v83;
  v66(v81, v45, v83);
  v55 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v62(v56 + v63, v53, v54);
  v57 = (v56 + v55);
  *v57 = sub_227431B1C;
  v57[1] = v51;

  sub_227669270();
  v58 = v82[1];
  v58(v45, v54);
  (*(v86 + 8))(v85, v87);
  (*(v46 + 8))(v89, v88);
  v58(v70, v54);
  (*(v76 + 8))(v71, v79);
}

uint64_t sub_2273FE67C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2276630F0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273FE73C, 0, 0);
}

uint64_t sub_2273FE73C()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 96), *(*(v0 + 24) + 120));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2273FE7DC;

  return sub_226EB91E0();
}

uint64_t sub_2273FE7DC(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_2273FE8DC, 0, 0);
}

void *sub_2273FE8DC()
{
  v1 = sub_2273FB254(v0[8]);

  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = v1;
      v23 = MEMORY[0x277D84F90];
      result = sub_226F206A8(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        break;
      }

      v5 = 0;
      v1 = v0[5];
      v6 = v23;
      v7 = v3;
      v21 = v3;
      v22 = v3 & 0xC000000000000001;
      v19 = v3 & 0xFFFFFFFFFFFFFF8;
      v20 = v2;
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v22)
        {
          v9 = MEMORY[0x22AA991A0](v5, v7);
        }

        else
        {
          if (v5 >= *(v19 + 16))
          {
            goto LABEL_16;
          }

          v9 = *(v7 + 8 * v5 + 32);
        }

        v10 = v9;
        result = [v9 data];
        if (!result)
        {
          goto LABEL_23;
        }

        v11 = result;
        sub_227662590();

        sub_2276630E0();
        v13 = *(v23 + 16);
        v12 = *(v23 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_226F206A8((v12 > 1), v13 + 1, 1);
        }

        v14 = v0[6];
        v15 = v0[4];
        *(v23 + 16) = v13 + 1;
        (*(v1 + 32))(v23 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v14, v15);
        ++v5;
        v7 = v21;
        if (v8 == v20)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v2 = sub_22766CD20();
      if (!v2)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_18:

    v6 = MEMORY[0x277D84F90];
LABEL_19:
    v16 = v0[2];
    v17 = sub_226F47608(v6);

    *v16 = v17;

    v18 = v0[1];

    return v18();
  }

  return result;
}

uint64_t sub_2273FEB44@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v89 = *(v2 - 8);
  v90 = v2;
  v77 = *(v89 + 64);
  MEMORY[0x28223BE20](v2);
  v76 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = &v62 - v5;
  v91 = sub_227662750();
  v81 = *(v91 - 8);
  v80 = *(v81 + 64);
  MEMORY[0x28223BE20](v91);
  v78 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v86 = &v62 - v8;
  v71 = sub_22766B360();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  MEMORY[0x28223BE20](v12 - 8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v13 = *(v84 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  v88 = &v62 - v19;
  v82 = sub_227669890();
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = __swift_project_boxed_opaque_existential_0((v1 + 760), *(v1 + 784));
  __swift_project_boxed_opaque_existential_0((*v23 + 16), *(*v23 + 40));
  v72 = v17;
  sub_22728B1A0(9, 0, 0, v17);
  sub_2272A6AC0(v17, v20);
  v24 = v13;
  v25 = *(v13 + 8);
  v74 = v13 + 8;
  v75 = v25;
  v26 = v84;
  v25(v17, v84);
  sub_2276697A0();
  swift_allocObject();
  v27 = sub_227669770();
  v73 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v11, v71);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v28 = sub_22766A8F0();
  v71 = v28;
  v92 = v27;
  v29 = sub_22766C060();
  v69 = v29;
  v31 = v30;
  v32 = v86;
  sub_227662720();
  v33 = swift_allocObject();
  v70 = v27;
  *(v33 + 16) = v27;
  *(v33 + 24) = v28;
  *(v33 + 32) = v29;
  *(v33 + 40) = v31;
  v68 = v31;
  *(v33 + 48) = "RemoteBrowsingEnvironmentBuilder.evaluateAllRecommendations";
  *(v33 + 56) = 59;
  *(v33 + 64) = 2;

  v34 = v87;
  sub_227669270();
  v35 = v24;
  v67 = *(v24 + 16);
  v36 = v85;
  v67(v85, v88, v26);
  v37 = *(v35 + 80);
  v63 = ((v37 + 16) & ~v37) + v14;
  v64 = (v37 + 16) & ~v37;
  v38 = swift_allocObject();
  v39 = *(v35 + 32);
  v65 = v35 + 32;
  v66 = v39;
  v39(v38 + ((v37 + 16) & ~v37), v36, v26);
  v40 = v89;
  v41 = v90;
  v42 = v76;
  (*(v89 + 16))(v76, v34, v90);
  v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v44 = (v77 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v40 + 32))(v45 + v43, v42, v41);
  v46 = (v45 + v44);
  *v46 = sub_227430AA4;
  v46[1] = v38;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v47 = v72;
  sub_227669270();
  v48 = v81;
  v49 = v78;
  v50 = v91;
  (*(v81 + 16))(v78, v32, v91);
  v51 = (*(v48 + 80) + 49) & ~*(v48 + 80);
  v52 = (v80 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v68;
  *(v53 + 16) = v69;
  *(v53 + 24) = v54;
  *(v53 + 32) = "RemoteBrowsingEnvironmentBuilder.evaluateAllRecommendations";
  *(v53 + 40) = 59;
  *(v53 + 48) = 2;
  (*(v48 + 32))(v53 + v51, v49, v50);
  *(v53 + v52) = v71;
  *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v55 = v84;
  v56 = v85;
  v67(v85, v47, v84);
  v57 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v66(v58 + v64, v56, v55);
  v59 = (v58 + v57);
  *v59 = sub_227431B1C;
  v59[1] = v53;

  sub_227669270();
  v60 = v75;
  v75(v47, v55);
  (*(v89 + 8))(v87, v90);
  (*(v48 + 8))(v86, v91);
  v60(v88, v55);
  (*(v79 + 8))(v73, v82);
}

uint64_t sub_2273FF45C@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v87 = *(v2 - 8);
  v88 = v2;
  v75 = *(v87 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v61 - v5;
  v89 = sub_227662750();
  v79 = *(v89 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x28223BE20](v89);
  v76 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v61 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5D0, &unk_22767E450);
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = v83[8];
  MEMORY[0x28223BE20](v14);
  v82 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v61 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v80 = sub_227669890();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v23 + 24) = 54;
  *(v23 + 32) = 2;
  *(v23 + 40) = 165;
  *(v23 + 48) = &unk_227685640;
  *(v23 + 56) = v1;
  v85 = sub_227663CA0();

  v24 = v20;
  v71 = v20;
  sub_227669270();
  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v72 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v9);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v69 = v26;
  v91 = v25;
  v27 = sub_22766C060();
  v29 = v28;
  v68 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v70 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder.fetchActivityRings";
  *(v30 + 56) = 51;
  *(v30 + 64) = 2;

  v31 = v86;
  sub_227669270();
  v32 = v83;
  v33 = v83[2];
  v66 = v83 + 2;
  v67 = v33;
  v34 = v82;
  v35 = v24;
  v36 = v84;
  v33(v82, v35, v84);
  v65 = *(v32 + 80);
  v62 = ((v65 + 16) & ~v65) + v15;
  v37 = (v65 + 16) & ~v65;
  v64 = v37;
  v38 = swift_allocObject();
  v63 = v32[4];
  v63(v38 + v37, v34, v36);
  v39 = v87;
  v40 = v88;
  v41 = v74;
  (*(v87 + 16))(v74, v31, v88);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v75 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v41, v40);
  v45 = (v44 + v43);
  *v45 = sub_2274318B0;
  v45[1] = v38;
  v46 = v73;
  sub_227669270();
  v47 = v79;
  v48 = v76;
  v49 = v89;
  (*(v79 + 16))(v76, v90, v89);
  v50 = (*(v47 + 80) + 49) & ~*(v47 + 80);
  v51 = (v78 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v68;
  *(v52 + 16) = v27;
  *(v52 + 24) = v53;
  *(v52 + 32) = "RemoteBrowsingEnvironmentBuilder.fetchActivityRings";
  *(v52 + 40) = 51;
  *(v52 + 48) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  *(v52 + v51) = v69;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v54 = v82;
  v55 = v84;
  v67(v82, v46, v84);
  v56 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v63(v57 + v64, v54, v55);
  v58 = (v57 + v56);
  *v58 = sub_2274318EC;
  v58[1] = v52;

  sub_227669270();
  v59 = v83[1];
  v59(v46, v55);
  (*(v87 + 8))(v86, v88);
  (*(v47 + 8))(v90, v89);
  v59(v71, v55);
  (*(v77 + 8))(v72, v80);
}

uint64_t sub_2273FFD70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2273FFD90, 0, 0);
}

uint64_t sub_2273FFD90()
{
  v1 = v0[3];
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2273556E8;
  v5 = v0[2];
  v6.n128_u64[0] = 1.0;

  return MEMORY[0x2821AF000](v5, v2, v3, v6);
}

uint64_t sub_2273FFE5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v97 = *(v3 - 8);
  v98 = v3;
  v85 = *(v97 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v96 = &v71 - v6;
  v99 = sub_227662750();
  v88 = *(v99 - 8);
  v87 = *(v88 + 64);
  MEMORY[0x28223BE20](v99);
  v86 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v71 - v9;
  v80 = sub_22766B360();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C8, &qword_227684C68);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A0, &unk_227685280);
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = v94[8];
  MEMORY[0x28223BE20](v21);
  v92 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v81 = &v71 - v24;
  MEMORY[0x28223BE20](v25);
  v90 = &v71 - v26;
  v27 = sub_227669890();
  v82 = *(v27 - 8);
  v83 = v27;
  MEMORY[0x28223BE20](v27);
  v91 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v29 = swift_allocObject();
  *(v29 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v29 + 24) = 54;
  *(v29 + 32) = 2;
  *(v29 + 40) = 174;
  *(v29 + 48) = &unk_227685628;
  *(v29 + 56) = v2;

  sub_227669270();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_227400B6C;
  *(v30 + 24) = 0;
  (*(v15 + 16))(v17, v20, v14);
  v31 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v32 = (v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v15 + 32))(v33 + v31, v17, v14);
  v34 = (v33 + v32);
  *v34 = sub_22743172C;
  v34[1] = v30;
  v93 = sub_227665E80();
  v35 = v90;
  sub_227669270();
  (*(v15 + 8))(v20, v14);
  sub_2276697A0();
  swift_allocObject();
  v36 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v79 + 8))(v11, v80);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v37 = sub_22766A8F0();
  v80 = v37;
  v101 = v36;
  v38 = sub_22766C060();
  v79 = v38;
  v40 = v39;
  sub_227662720();
  v41 = swift_allocObject();
  v77 = v36;
  *(v41 + 16) = v36;
  *(v41 + 24) = v37;
  *(v41 + 32) = v38;
  *(v41 + 40) = v40;
  v78 = v40;
  *(v41 + 48) = "RemoteBrowsingEnvironmentBuilder::queryMindfulnessMinutes";
  *(v41 + 56) = 57;
  *(v41 + 64) = 2;

  v42 = v96;
  sub_227669270();
  v43 = v94;
  v76 = v94[2];
  v44 = v92;
  v45 = v35;
  v46 = v95;
  v76(v92, v45, v95);
  v75 = *(v43 + 80);
  v72 = ((v75 + 16) & ~v75) + v22;
  v47 = (v75 + 16) & ~v75;
  v74 = v47;
  v48 = swift_allocObject();
  v73 = v43[4];
  v73(v48 + v47, v44, v46);
  v49 = v97;
  v50 = v98;
  v51 = v84;
  (*(v97 + 16))(v84, v42, v98);
  v52 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v53 = (v85 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v49 + 32))(v54 + v52, v51, v50);
  v55 = (v54 + v53);
  *v55 = sub_22743175C;
  v55[1] = v48;
  v56 = v81;
  sub_227669270();
  v57 = v88;
  v58 = v86;
  v59 = v99;
  (*(v88 + 16))(v86, v100, v99);
  v60 = (*(v57 + 80) + 49) & ~*(v57 + 80);
  v61 = (v87 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v63 = v78;
  *(v62 + 16) = v79;
  *(v62 + 24) = v63;
  *(v62 + 32) = "RemoteBrowsingEnvironmentBuilder::queryMindfulnessMinutes";
  *(v62 + 40) = 57;
  *(v62 + 48) = 2;
  (*(v57 + 32))(v62 + v60, v58, v59);
  *(v62 + v61) = v80;
  *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;
  v64 = v92;
  v65 = v95;
  v76(v92, v56, v95);
  v66 = (v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v73(v67 + v74, v64, v65);
  v68 = (v67 + v66);
  *v68 = sub_227431798;
  v68[1] = v62;

  sub_227669270();
  v69 = v94[1];
  v69(v56, v65);
  (*(v97 + 8))(v96, v98);
  (*(v57 + 8))(v100, v99);
  v69(v90, v65);
  (*(v82 + 8))(v91, v83);
}

uint64_t sub_22740091C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22740093C, 0, 0);
}

uint64_t sub_22740093C()
{
  v1 = *(v0 + 24);
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  v5 = *(v3 + 8);
  *v4 = v0;
  v4[1] = sub_2274009FC;

  return MEMORY[0x2821AED88](v2, v5);
}

uint64_t sub_2274009FC(double a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_227400B48, 0, 0);
  }
}

uint64_t sub_227400BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5B0, &unk_22767E440);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  sub_226ECF5D8(sub_227431508, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryBookmarks";
  *(v30 + 56) = 48;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_227431548;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryBookmarks";
  *(v50 + 40) = 48;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

uint64_t sub_2274014B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC698, &unk_227685270);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
  sub_226ECF5D8(sub_227431464, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllPlaylists";
  *(v30 + 56) = 51;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_2274314A4;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllPlaylists";
  *(v50 + 40) = 51;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

uint64_t sub_227401DB4@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t *a5@<X8>)
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

uint64_t sub_227401FE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226ECF5D8(sub_226F59E0C, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryCompletedMarketingVideoIdentifiers";
  *(v30 + 56) = 73;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_2274309C0;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryCompletedMarketingVideoIdentifiers";
  *(v50 + 40) = 73;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

uint64_t sub_2274028E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC690, &unk_227685260);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB28, &unk_227685600);
  sub_226ECF5D8(sub_227431238, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllBurnBarPreferences";
  *(v30 + 56) = 60;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_227431278;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllBurnBarPreferences";
  *(v50 + 40) = 60;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

uint64_t sub_2274031E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD590, &unk_22767E420);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB20, &unk_2276855F0);
  sub_226ECF5D8(sub_227431194, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllMetricPreferences";
  *(v30 + 56) = 59;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_2274311D4;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllMetricPreferences";
  *(v50 + 40) = 59;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

uint64_t sub_227403AE4@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v82 = *(v2 - 8);
  v83 = v2;
  v71 = *(v82 + 64);
  MEMORY[0x28223BE20](v2);
  v70 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v58 - v5;
  v84 = sub_227662750();
  v75 = *(v84 - 8);
  v74 = *(v75 + 64);
  MEMORY[0x28223BE20](v84);
  v72 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v58 - v8;
  v66 = sub_22766B360();
  v9 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD580, &unk_22767E410);
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = v79[8];
  MEMORY[0x28223BE20](v13);
  v78 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v76 = sub_227669890();
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  __swift_project_boxed_opaque_existential_0((v1 + 680), *(v1 + 704));
  v22 = off_283AB27A8;
  type metadata accessor for PrivacyPreferenceDataSource(0);
  v67 = v19;
  v22();
  sub_2276697A0();
  swift_allocObject();
  v23 = sub_227669770();
  v69 = v21;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v11, v66);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v24 = sub_22766A8F0();
  v66 = v24;
  v86 = v23;
  v25 = sub_22766C060();
  v64 = v25;
  v27 = v26;
  sub_227662720();
  v28 = swift_allocObject();
  v65 = v23;
  *(v28 + 16) = v23;
  *(v28 + 24) = v24;
  *(v28 + 32) = v25;
  *(v28 + 40) = v27;
  v63 = v27;
  *(v28 + 48) = "RemoteBrowsingEnvironmentBuilder::queryDiagnosticsPrivacyPreference";
  *(v28 + 56) = 67;
  *(v28 + 64) = 2;

  v29 = v81;
  sub_227669270();
  v30 = v79;
  v62 = v79[2];
  v31 = v78;
  v32 = v19;
  v33 = v80;
  v62(v78, v32, v80);
  v61 = *(v30 + 80);
  v58 = ((v61 + 16) & ~v61) + v14;
  v34 = (v61 + 16) & ~v61;
  v60 = v34;
  v35 = swift_allocObject();
  v59 = v30[4];
  v59(v35 + v34, v31, v33);
  v36 = v82;
  v37 = v83;
  v38 = v70;
  (*(v82 + 16))(v70, v29, v83);
  v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v40 = (v71 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v36 + 32))(v41 + v39, v38, v37);
  v42 = (v41 + v40);
  *v42 = sub_2274310B0;
  v42[1] = v35;
  v43 = v68;
  sub_227669270();
  v44 = v75;
  v45 = v72;
  v46 = v84;
  (*(v75 + 16))(v72, v85, v84);
  v47 = (*(v44 + 80) + 49) & ~*(v44 + 80);
  v48 = (v74 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v63;
  *(v49 + 16) = v64;
  *(v49 + 24) = v50;
  *(v49 + 32) = "RemoteBrowsingEnvironmentBuilder::queryDiagnosticsPrivacyPreference";
  *(v49 + 40) = 67;
  *(v49 + 48) = 2;
  (*(v44 + 32))(v49 + v47, v45, v46);
  *(v49 + v48) = v66;
  *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
  v51 = v78;
  v52 = v80;
  v62(v78, v43, v80);
  v53 = (v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v59(v54 + v60, v51, v52);
  v55 = (v54 + v53);
  *v55 = sub_22742F2D0;
  v55[1] = v49;

  sub_227669270();
  v56 = v79[1];
  v56(v43, v52);
  (*(v82 + 8))(v81, v83);
  (*(v44 + 8))(v85, v84);
  v56(v67, v52);
  (*(v73 + 8))(v69, v76);
}

uint64_t sub_2274043A4@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v84 = *(v2 - 8);
  v85 = v2;
  v73 = *(v84 + 64);
  MEMORY[0x28223BE20](v2);
  v72 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v60 - v5;
  v86 = sub_227662750();
  v77 = *(v86 - 8);
  v76 = *(v77 + 64);
  MEMORY[0x28223BE20](v86);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v60 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = v81[8];
  MEMORY[0x28223BE20](v14);
  v80 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v78 = sub_227669890();
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  __swift_project_boxed_opaque_existential_0((v1 + 680), *(v1 + 704));
  v69 = v20;
  sub_227360A74(v20);
  sub_2276697A0();
  swift_allocObject();
  v23 = sub_227669770();
  v71 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v9);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v24 = sub_22766A8F0();
  v67 = v24;
  v88 = v23;
  v25 = sub_22766C060();
  v66 = v25;
  v27 = v26;
  sub_227662720();
  v28 = swift_allocObject();
  v68 = v23;
  *(v28 + 16) = v23;
  *(v28 + 24) = v24;
  *(v28 + 32) = v25;
  *(v28 + 40) = v27;
  v65 = v27;
  *(v28 + 48) = "RemoteBrowsingEnvironmentBuilder::queryNoticePreference";
  *(v28 + 56) = 55;
  *(v28 + 64) = 2;

  v29 = v83;
  sub_227669270();
  v30 = v81;
  v64 = v81[2];
  v31 = v80;
  v32 = v20;
  v33 = v82;
  v64(v80, v32, v82);
  v63 = *(v30 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v34 = (v63 + 16) & ~v63;
  v62 = v34;
  v35 = swift_allocObject();
  v61 = v30[4];
  v61(v35 + v34, v31, v33);
  v36 = v84;
  v37 = v72;
  v38 = v29;
  v39 = v85;
  (*(v84 + 16))(v72, v38, v85);
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = (v73 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v36 + 32))(v42 + v40, v37, v39);
  v43 = (v42 + v41);
  *v43 = sub_227431038;
  v43[1] = v35;
  v73 = sub_227666C80();
  v44 = v70;
  sub_227669270();
  v45 = v77;
  v46 = v74;
  v47 = v86;
  (*(v77 + 16))(v74, v87, v86);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v76 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryNoticePreference";
  *(v50 + 40) = 55;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v67;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
  v52 = v80;
  v53 = v44;
  v54 = v82;
  v64(v80, v44, v82);
  v55 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v61(v56 + v62, v52, v54);
  v57 = (v56 + v55);
  *v57 = sub_227431074;
  v57[1] = v50;

  sub_227669270();
  v58 = v81[1];
  v58(v53, v54);
  (*(v84 + 8))(v83, v85);
  (*(v45 + 8))(v87, v86);
  v58(v69, v54);
  (*(v75 + 8))(v71, v78);
}

uint64_t sub_227404C4C@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v84 = *(v2 - 8);
  v85 = v2;
  v73 = *(v84 + 64);
  MEMORY[0x28223BE20](v2);
  v72 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v60 - v5;
  v86 = sub_227662750();
  v77 = *(v86 - 8);
  v76 = *(v77 + 64);
  MEMORY[0x28223BE20](v86);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v60 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = v81[8];
  MEMORY[0x28223BE20](v14);
  v80 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v78 = sub_227669890();
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  __swift_project_boxed_opaque_existential_0((v1 + 680), *(v1 + 704));
  v69 = v20;
  sub_226EDD55C(v20);
  sub_2276697A0();
  swift_allocObject();
  v23 = sub_227669770();
  v71 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v9);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v24 = sub_22766A8F0();
  v67 = v24;
  v88 = v23;
  v25 = sub_22766C060();
  v66 = v25;
  v27 = v26;
  sub_227662720();
  v28 = swift_allocObject();
  v68 = v23;
  *(v28 + 16) = v23;
  *(v28 + 24) = v24;
  *(v28 + 32) = v25;
  *(v28 + 40) = v27;
  v65 = v27;
  *(v28 + 48) = "RemoteBrowsingEnvironmentBuilder::queryOptInPreference";
  *(v28 + 56) = 54;
  *(v28 + 64) = 2;

  v29 = v83;
  sub_227669270();
  v30 = v81;
  v64 = v81[2];
  v31 = v80;
  v32 = v20;
  v33 = v82;
  v64(v80, v32, v82);
  v63 = *(v30 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v34 = (v63 + 16) & ~v63;
  v62 = v34;
  v35 = swift_allocObject();
  v61 = v30[4];
  v61(v35 + v34, v31, v33);
  v36 = v84;
  v37 = v72;
  v38 = v29;
  v39 = v85;
  (*(v84 + 16))(v72, v38, v85);
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = (v73 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v36 + 32))(v42 + v40, v37, v39);
  v43 = (v42 + v41);
  *v43 = sub_227430EBC;
  v43[1] = v35;
  v73 = sub_2276666A0();
  v44 = v70;
  sub_227669270();
  v45 = v77;
  v46 = v74;
  v47 = v86;
  (*(v77 + 16))(v74, v87, v86);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v76 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryOptInPreference";
  *(v50 + 40) = 54;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v67;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
  v52 = v80;
  v53 = v44;
  v54 = v82;
  v64(v80, v44, v82);
  v55 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v61(v56 + v62, v52, v54);
  v57 = (v56 + v55);
  *v57 = sub_227430EF8;
  v57[1] = v50;

  sub_227669270();
  v58 = v81[1];
  v58(v53, v54);
  (*(v84 + 8))(v83, v85);
  (*(v45 + 8))(v87, v86);
  v58(v69, v54);
  (*(v75 + 8))(v71, v78);
}

uint64_t sub_2274054F4@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v86 = *(v2 - 8);
  v87 = v2;
  v74 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v60 - v5;
  v88 = sub_227662750();
  v78 = *(v88 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v88);
  v75 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v60 - v8;
  v70 = sub_22766B360();
  v9 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD550, &unk_22767E3F0);
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = v82[8];
  MEMORY[0x28223BE20](v13);
  v81 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v79 = sub_227669890();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v22 = __swift_project_boxed_opaque_existential_0((v1 + 680), *(v1 + 704));
  v23 = *(*v22 + 56);
  v24 = *(*v22 + 64);
  __swift_project_boxed_opaque_existential_0((*v22 + 32), v23);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB0, &qword_227682F60);
  v69 = v19;
  sub_226ECF5D8(sub_2273622C4, 0, v23, v84, v24, v19);
  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v71 = v21;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v11, v70);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v70 = v26;
  v90 = v25;
  v27 = sub_22766C060();
  v67 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v68 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v66 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryPrivacyAcknowledgements";
  *(v30 + 56) = 62;
  *(v30 + 64) = 2;

  v31 = v85;
  sub_227669270();
  v32 = v82;
  v65 = v82[2];
  v33 = v81;
  v34 = v83;
  v65(v81, v19, v83);
  v35 = v32;
  v64 = *(v32 + 80);
  v61 = ((v64 + 16) & ~v64) + v14;
  v36 = (v64 + 16) & ~v64;
  v63 = v36;
  v37 = swift_allocObject();
  v62 = v35[4];
  v62(v37 + v36, v33, v34);
  v39 = v86;
  v38 = v87;
  v40 = v73;
  (*(v86 + 16))(v73, v31, v87);
  v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v42 = (v74 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v39 + 32))(v43 + v41, v40, v38);
  v44 = (v43 + v42);
  *v44 = sub_227430E58;
  v44[1] = v37;
  v45 = v72;
  sub_227669270();
  v46 = v78;
  v47 = v75;
  v48 = v88;
  (*(v78 + 16))(v75, v89, v88);
  v49 = (*(v46 + 80) + 49) & ~*(v46 + 80);
  v50 = (v77 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v66;
  *(v51 + 16) = v67;
  *(v51 + 24) = v52;
  *(v51 + 32) = "RemoteBrowsingEnvironmentBuilder::queryPrivacyAcknowledgements";
  *(v51 + 40) = 62;
  *(v51 + 48) = 2;
  (*(v46 + 32))(v51 + v49, v47, v48);
  *(v51 + v50) = v70;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
  v53 = v81;
  v54 = v83;
  v65(v81, v45, v83);
  v55 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v62(v56 + v63, v53, v54);
  v57 = (v56 + v55);
  *v57 = sub_227431B1C;
  v57[1] = v51;

  sub_227669270();
  v58 = v82[1];
  v58(v45, v54);
  (*(v86 + 8))(v85, v87);
  (*(v46 + 8))(v89, v88);
  v58(v69, v54);
  (*(v76 + 8))(v71, v79);
}

uint64_t sub_227405DE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC678, &unk_227685240);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB18, &unk_2276855C0);
  sub_226ECF5D8(sub_227430DB4, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllProgressPreferences";
  *(v30 + 56) = 61;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_227430DF4;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllProgressPreferences";
  *(v50 + 40) = 61;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

uint64_t sub_2274066E8@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v87 = *(v2 - 8);
  v88 = v2;
  v75 = *(v87 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v61 - v5;
  v89 = sub_227662750();
  v79 = *(v89 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x28223BE20](v89);
  v76 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v61 - v8;
  v71 = sub_22766B360();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC688, &unk_227685250);
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = v83[8];
  MEMORY[0x28223BE20](v13);
  v82 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v61 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v80 = sub_227669890();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v22 = v1[83];
  v23 = v1[84];
  __swift_project_boxed_opaque_existential_0(v1 + 80, v22);
  sub_226E91B50((v1 + 115), &v91);
  v24 = swift_allocObject();
  sub_226E92AB8(&v91, v24 + 16);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC190, &unk_2276855E0);
  v70 = v19;
  sub_226ECF5D8(sub_227431114, v24, v22, v85, v23, v19);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v72 = v21;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v11, v71);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v71 = v26;
  *&v91 = v25;
  v27 = sub_22766C060();
  v29 = v28;
  v68 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v69 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllWorkoutPlanTemplateMetadata";
  *(v30 + 56) = 69;
  *(v30 + 64) = 2;

  v31 = v86;
  sub_227669270();
  v32 = v83;
  v33 = v83[2];
  v66 = v83 + 2;
  v67 = v33;
  v34 = v82;
  v35 = v84;
  v33(v82, v19, v84);
  v36 = v32;
  v65 = *(v32 + 80);
  v62 = ((v65 + 16) & ~v65) + v14;
  v37 = (v65 + 16) & ~v65;
  v64 = v37;
  v38 = swift_allocObject();
  v63 = v36[4];
  v63(v38 + v37, v34, v35);
  v39 = v87;
  v40 = v88;
  v41 = v74;
  (*(v87 + 16))(v74, v31, v88);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v75 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v41, v40);
  v45 = (v44 + v43);
  *v45 = sub_227431130;
  v45[1] = v38;
  v46 = v73;
  sub_227669270();
  v47 = v79;
  v48 = v76;
  v49 = v89;
  (*(v79 + 16))(v76, v90, v89);
  v50 = (*(v47 + 80) + 49) & ~*(v47 + 80);
  v51 = (v78 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v68;
  *(v52 + 16) = v27;
  *(v52 + 24) = v53;
  *(v52 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllWorkoutPlanTemplateMetadata";
  *(v52 + 40) = 69;
  *(v52 + 48) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  *(v52 + v51) = v71;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v54 = v82;
  v55 = v84;
  v67(v82, v46, v84);
  v56 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v63(v57 + v64, v54, v55);
  v58 = (v57 + v56);
  *v58 = sub_227431B1C;
  v58[1] = v52;

  sub_227669270();
  v59 = v83[1];
  v59(v46, v55);
  (*(v87 + 8))(v86, v88);
  (*(v47 + 8))(v90, v89);
  v59(v70, v55);
  (*(v77 + 8))(v72, v80);
}

void sub_227407030(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_2272382B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v14 = qword_2813B2078;
    v15 = sub_22766A100();
    (*(*(v15 - 8) + 8))(v10 + v14, v15);
    swift_deallocClassInstance();
  }

  else
  {
    v16 = v13;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
    swift_deallocClassInstance();
    v19 = sub_2273FAE90(v16);

    v20 = sub_226F45B58(v19);

    v21 = sub_227281800(v20, a1);

    MEMORY[0x28223BE20](v22);
    v26[2] = a1;
    sub_2275F2440(sub_22720D6AC, v26, v21);
    v24 = v23;

    v25 = sub_226F459BC(v24);

    *a2 = v25;
  }
}

uint64_t sub_227407328@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v96 = *(v3 - 8);
  v97 = v3;
  v85 = *(v96 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v70 - v6;
  v98 = sub_227662750();
  v88 = *(v98 - 8);
  v87 = *(v88 + 64);
  MEMORY[0x28223BE20](v98);
  v86 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v70 - v9;
  v78 = sub_22766B360();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  MEMORY[0x28223BE20](v12 - 8);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD540, &unk_227684C40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD520, &unk_22767E3E0);
  v92 = *(v21 - 8);
  v93 = v21;
  v79 = v92[8];
  MEMORY[0x28223BE20](v21);
  v80 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v81 = &v70 - v24;
  MEMORY[0x28223BE20](v25);
  v90 = &v70 - v26;
  v27 = sub_227669890();
  v82 = *(v27 - 8);
  v83 = v27;
  MEMORY[0x28223BE20](v27);
  v91 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v29 = *(v1 + 664);
  v30 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v29);

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
  sub_226ECF5D8(sub_227430D70, v2, v29, v31, v30, v20);

  (*(v15 + 16))(v17, v20, v14);
  v32 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v33 = swift_allocObject();
  (*(v15 + 32))(v33 + v32, v17, v14);
  v34 = (v33 + ((v16 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_2274081EC;
  v34[1] = 0;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB10, &unk_2276855B0);
  v35 = v90;
  sub_227669270();
  (*(v15 + 8))(v20, v14);
  sub_2276697A0();
  swift_allocObject();
  v36 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v77 + 8))(v11, v78);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v37 = sub_22766A8F0();
  v78 = v37;
  v100 = v36;
  v38 = sub_22766C060();
  v77 = v38;
  v40 = v39;
  sub_227662720();
  v41 = swift_allocObject();
  v75 = v36;
  *(v41 + 16) = v36;
  *(v41 + 24) = v37;
  *(v41 + 32) = v38;
  *(v41 + 40) = v40;
  v76 = v40;
  *(v41 + 48) = "RemoteBrowsingEnvironmentBuilder::queryCompletedWorkoutCounts";
  *(v41 + 56) = 61;
  *(v41 + 64) = 2;

  v42 = v95;
  sub_227669270();
  v43 = v92;
  v44 = v92[2];
  v72 = v92 + 2;
  v74 = v44;
  v45 = v80;
  v46 = v93;
  v44(v80, v35, v93);
  v73 = *(v43 + 80);
  v70 = v79 + ((v73 + 16) & ~v73);
  v47 = (v73 + 16) & ~v73;
  v71 = v47;
  v48 = swift_allocObject();
  v79 = v43[4];
  v79(v48 + v47, v45, v46);
  v50 = v96;
  v49 = v97;
  v51 = v84;
  (*(v96 + 16))(v84, v42, v97);
  v52 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v53 = (v85 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v50 + 32))(v54 + v52, v51, v49);
  v55 = (v54 + v53);
  *v55 = sub_227431B38;
  v55[1] = v48;
  v56 = v81;
  sub_227669270();
  v57 = v88;
  v58 = v86;
  v59 = v98;
  (*(v88 + 16))(v86, v99, v98);
  v60 = (*(v57 + 80) + 49) & ~*(v57 + 80);
  v61 = (v87 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v63 = v76;
  *(v62 + 16) = v77;
  *(v62 + 24) = v63;
  *(v62 + 32) = "RemoteBrowsingEnvironmentBuilder::queryCompletedWorkoutCounts";
  *(v62 + 40) = 61;
  *(v62 + 48) = 2;
  (*(v57 + 32))(v62 + v60, v58, v59);
  *(v62 + v61) = v78;
  *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
  v64 = v93;
  v74(v45, v56, v93);
  v65 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v79(v66 + v71, v45, v64);
  v67 = (v66 + v65);
  *v67 = sub_227431B1C;
  v67[1] = v62;

  sub_227669270();
  v68 = v92[1];
  v68(v56, v64);
  (*(v96 + 8))(v95, v97);
  (*(v57 + 8))(v99, v98);
  v68(v90, v64);
  (*(v82 + 8))(v91, v83);
}

uint64_t sub_227407DD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v6 = sub_227667AA0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227665FB0();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = sub_227663FA0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
  result = sub_226EAF48C(a1, v19);
  if (!v3)
  {
    v33 = v17;
    v34 = v16;
    v32 = 0;
    sub_227663F60();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B0, &qword_227673180);
    v23 = *(sub_2276682D0() - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_227670CD0;
    *(v25 + v24) = v22;
    swift_storeEnumTagMultiPayload();
    sub_226F4F620(v25);
    swift_setDeallocating();
    sub_22742FDAC(v25 + v24, MEMORY[0x277D53468]);
    swift_deallocClassInstance();
    sub_227665F80();
    v26 = v36;
    v27 = v37;
    (*(v37 + 16))(v12, v15, v36);
    sub_227667A90();
    v28 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_22742F870(v8, *v28, v28[1], *(v28 + 16), v28[3]);
    v29 = v32;
    v30 = sub_227232EB8(100);
    if (v29)
    {

      sub_22742FDAC(v8, MEMORY[0x277D530D0]);
      (*(v27 + 8))(v15, v26);
      return (*(v33 + 8))(v19, v34);
    }

    else
    {
      v31 = v30;

      sub_22742FDAC(v8, MEMORY[0x277D530D0]);
      (*(v27 + 8))(v15, v26);
      result = (*(v33 + 8))(v19, v34);
      *v35 = v31;
    }
  }

  return result;
}

void sub_2274081EC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v3 = sub_227664530();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v17 = sub_22714B8A4(MEMORY[0x277D84F90]);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  v16[1] = v4 + 16;
  v12 = (v4 + 8);

  for (i = 0; v10; i = v14)
  {
    v14 = i;
LABEL_8:
    (*(v4 + 16))(v6, *(v7 + 48) + *(v4 + 72) * (__clz(__rbit64(v10)) | (v14 << 6)), v3);
    sub_2274097D0(&v17, v6, MEMORY[0x277D50950], MEMORY[0x277D50958]);
    v10 &= v10 - 1;
    (*v12)(v6, v3);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      v15 = sub_226F35384(v17);
      *(swift_allocObject() + 16) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB10, &unk_2276855B0);
      sub_227669280();
      return;
    }

    v10 = *(v7 + 56 + 8 * v14);
    ++i;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  (*v12)(v6, v3);

  __break(1u);
}

uint64_t sub_227408470@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v107 = *(v3 - 8);
  v108 = v3;
  v96 = *(v107 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v106 = &v81 - v6;
  v109 = sub_227662750();
  v99 = *(v109 - 8);
  v98 = *(v99 + 64);
  MEMORY[0x28223BE20](v109);
  v97 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v110 = &v81 - v9;
  v91 = sub_22766B360();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B340();
  MEMORY[0x28223BE20](v11 - 8);
  v86 = (&v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
  v13 = *(v84 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD528, &qword_2276855A0);
  v18 = *(v85 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v85);
  v103 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD520, &unk_22767E3E0);
  v104 = *(v22 - 8);
  v105 = v22;
  v88 = v104[8];
  MEMORY[0x28223BE20](v22);
  v89 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v92 = &v81 - v25;
  MEMORY[0x28223BE20](v26);
  v101 = &v81 - v27;
  v28 = sub_227669890();
  v93 = *(v28 - 8);
  v94 = v28;
  MEMORY[0x28223BE20](v28);
  v102 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v30 = *(v1 + 664);
  v31 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v30);
  v32 = sub_227663FA0();

  sub_226ECF5D8(sub_227430BBC, v2, v30, v32, v31, v17);

  v33 = v82;
  v34 = v84;
  (*(v13 + 16))(v82, v17, v84);
  v35 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v35, v33, v34);
  v37 = (v36 + ((v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_227430C0C;
  v37[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB08, &qword_2276855A8);
  v38 = v83;
  sub_227669270();
  (*(v13 + 8))(v17, v34);
  v39 = v103;
  v40 = v85;
  (*(v18 + 16))(v103, v38, v85);
  v41 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v42 = swift_allocObject();
  (*(v18 + 32))(v42 + v41, v39, v40);
  v43 = (v42 + ((v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v43 = sub_2274095B8;
  v43[1] = 0;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB10, &unk_2276855B0);
  v44 = v101;
  sub_227669270();
  (*(v18 + 8))(v38, v40);
  sub_2276697A0();
  swift_allocObject();
  v45 = sub_227669770();
  v46 = v87;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v90 + 8))(v46, v91);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v47 = sub_22766A8F0();
  v91 = v47;
  v111 = v45;
  v48 = sub_22766C060();
  v90 = v48;
  v50 = v49;
  sub_227662720();
  v51 = swift_allocObject();
  v85 = v45;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v48;
  *(v51 + 40) = v50;
  v87 = v50;
  *(v51 + 48) = "RemoteBrowsingEnvironmentBuilder::queryCompletedTipCounts";
  *(v51 + 56) = 57;
  *(v51 + 64) = 2;

  v52 = v106;
  sub_227669270();
  v53 = v104;
  v54 = v104[2];
  v83 = (v104 + 2);
  v86 = v54;
  v55 = v89;
  v56 = v44;
  v57 = v105;
  v54(v89, v56, v105);
  v84 = *(v53 + 80);
  v81 = v88 + ((v84 + 16) & ~v84);
  v58 = (v84 + 16) & ~v84;
  v82 = v58;
  v59 = swift_allocObject();
  v88 = v53[4];
  v88(v59 + v58, v55, v57);
  v61 = v107;
  v60 = v108;
  v62 = v95;
  (*(v107 + 16))(v95, v52, v108);
  v63 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v64 = (v96 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v61 + 32))(v65 + v63, v62, v60);
  v66 = (v65 + v64);
  *v66 = sub_227430C64;
  v66[1] = v59;
  v67 = v92;
  sub_227669270();
  v68 = v99;
  v69 = v97;
  v70 = v109;
  (*(v99 + 16))(v97, v110, v109);
  v71 = (*(v68 + 80) + 49) & ~*(v68 + 80);
  v72 = (v98 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v87;
  *(v73 + 16) = v90;
  *(v73 + 24) = v74;
  *(v73 + 32) = "RemoteBrowsingEnvironmentBuilder::queryCompletedTipCounts";
  *(v73 + 40) = 57;
  *(v73 + 48) = 2;
  (*(v68 + 32))(v73 + v71, v69, v70);
  *(v73 + v72) = v91;
  *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v85;
  v75 = v105;
  v86(v55, v67, v105);
  v76 = (v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v88(&v82[v77], v55, v75);
  v78 = (v77 + v76);
  *v78 = sub_227431B1C;
  v78[1] = v73;

  sub_227669270();
  v79 = v104[1];
  v79(v67, v75);
  (*(v107 + 8))(v106, v108);
  (*(v68 + 8))(v110, v109);
  v79(v101, v75);
  (*(v93 + 8))(v102, v94);
}

uint64_t sub_2274090E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = sub_227663FA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a2[83];
  v9 = a2[84];
  __swift_project_boxed_opaque_existential_0(a2 + 80, v8);
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB08, &qword_2276855A8);
  sub_226ECF5D8(sub_227430CC8, v11, v8, v12, v9, v15);
}

uint64_t sub_227409288@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_2276650A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  sub_227663F00();
  v13 = v12;
  result = sub_226F88F0C(a1);
  if (v2)
  {
    return result;
  }

  v37 = v8;
  v38 = 0;
  v39 = a2;
  v15 = 0;
  v16 = result + 56;
  v17 = 1 << *(result + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(result + 56);
  v20 = (v17 + 63) >> 6;
  v36 = (v6 + 32);
  v41 = (v6 + 8);
  v42 = v6 + 16;
  v40 = MEMORY[0x277D84F90];
  v43 = result;
  if (v19)
  {
    while (1)
    {
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = *(v6 + 72);
      (*(v6 + 16))(v11, *(result + 48) + v26 * (v25 | (v15 << 6)), v5);
      sub_227665090();
      if (v27 > 0.0)
      {
        sub_227665040();
        v22 = v21;
        sub_227665090();
        if (v13 > v22 / v23)
        {
          goto LABEL_7;
        }

LABEL_14:
        v35 = *v36;
        v35(v37, v11, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v40;
        v44 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F848(0, *(v40 + 16) + 1, 1);
          v29 = v44;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v40 = v31 + 1;
          v34 = v31;
          sub_226F1F848((v30 > 1), v31 + 1, 1);
          v32 = v40;
          v31 = v34;
          v29 = v44;
        }

        *(v29 + 16) = v32;
        v33 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v40 = v29;
        v35((v29 + v33 + v31 * v26), v37, v5);
        result = v43;
        if (!v19)
        {
          break;
        }
      }

      else
      {
        if (v13 <= 0.0)
        {
          goto LABEL_14;
        }

LABEL_7:
        (*v41)(v11, v5);
        result = v43;
        if (!v19)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v24 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      *v39 = v40;
      return result;
    }

    v19 = *(v16 + 8 * v24);
    ++v15;
    if (v19)
    {
      v15 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_2274095B8(uint64_t *a1)
{
  v2 = sub_2276650A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = sub_22714B8A4(MEMORY[0x277D84F90]);
  v13 = v7;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v3 + 8);
    while (v9 < *(v6 + 16))
    {
      (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
      sub_2274097D0(&v13, v5, MEMORY[0x277D51310], MEMORY[0x277D51318]);
      ++v9;
      (*v10)(v5, v2);
      if (v8 == v9)
      {
        v7 = v13;
        goto LABEL_6;
      }
    }

    __break(1u);

    (*v10)(v5, v2);

    __break(1u);
  }

  else
  {
LABEL_6:
    v11 = sub_226F35384(v7);
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB10, &unk_2276855B0);
    sub_227669280();
  }
}

uint64_t sub_2274097D0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(double), void (*a4)(uint64_t))
{
  v77 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v69 - v8;
  v74 = sub_227662750();
  v78 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v69 - v11;
  MEMORY[0x28223BE20](v12);
  v83 = &v69 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  v17 = sub_227667DE0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v79 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED0, &qword_227682020);
  MEMORY[0x28223BE20](v20 - 8);
  v70 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v69 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v69 - v27;
  v76 = a2;
  v29 = a3(v26);
  v72 = a1;
  v31 = *a1;
  v32 = *(*a1 + 16);
  v81 = v29;
  v82 = v16;
  v33 = v30;
  v84 = v18;
  if (v32)
  {
    v34 = sub_226E92000(v29, v30);
    v36 = v84;
    if (v35)
    {
      (v84[2])(v28, *(v31 + 56) + v84[9] * v34, v17);
      v37 = v36[7];
      v38 = v28;
      v39 = 0;
    }

    else
    {
      v37 = v84[7];
      v38 = v28;
      v39 = 1;
    }

    v80 = v37;
    v37(v38, v39, 1, v17);
  }

  else
  {
    v80 = v18[7];
    v80(v28, 1, 1, v17);
    v36 = v18;
  }

  v40 = v36[6];
  if (v40(v28, 1, v17))
  {
    sub_226E97D1C(v28, &qword_27D7BCED0, &qword_227682020);
    v41 = 0;
  }

  else
  {
    v42 = v36[2];
    v43 = v79;
    v42(v79, v28, v17);
    sub_226E97D1C(v28, &qword_27D7BCED0, &qword_227682020);
    v41 = sub_227667DC0();
    v44 = v43;
    v36 = v84;
    (v84[1])(v44, v17);
  }

  v45 = v74;
  if (*(v31 + 16))
  {
    v46 = sub_226E92000(v81, v33);
    if (v47)
    {
      v36 = v84;
      (v84[2])(v24, *(v31 + 56) + v84[9] * v46, v17);
      v48 = 0;
    }

    else
    {
      v48 = 1;
      v36 = v84;
    }
  }

  else
  {
    v48 = 1;
  }

  v69 = v36 + 7;
  v80(v24, v48, 1, v17);
  v49 = v40(v24, 1, v17);
  v50 = v83;
  if (v49)
  {
    sub_226E97D1C(v24, &qword_27D7BCED0, &qword_227682020);
    v51 = v78;
    v52 = v73;
    (*(v78 + 56))(v73, 1, 1, v45);
    v53 = v82;
    sub_227662660();
    v54 = (*(v51 + 48))(v52, 1, v45);
    v55 = v75;
    if (v54 != 1)
    {
      v54 = sub_226E97D1C(v52, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v56 = v36[2];
    v57 = v36;
    v58 = v79;
    v56(v79, v24, v17);
    sub_226E97D1C(v24, &qword_27D7BCED0, &qword_227682020);
    v59 = v41;
    v60 = v73;
    sub_227667DB0();
    (v57[1])(v58, v17);
    v51 = v78;
    (*(v78 + 56))(v60, 0, 1, v45);
    v41 = v59;
    v53 = v82;
    v54 = (*(v51 + 32))();
    v55 = v75;
  }

  v77(v54);
  sub_22742F224(&qword_28139BDC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22766BF90())
  {
    (*(v51 + 8))(v55, v45);
    result = (*(v51 + 16))(v50, v53, v45);
  }

  else
  {
    result = (*(v51 + 32))(v50, v55, v45);
  }

  if (__OFADD__(v41, 1))
  {
    __break(1u);
  }

  else
  {
    (*(v51 + 16))(v71, v50, v45);

    v62 = v45;
    v63 = v79;
    v64 = v81;
    sub_227667DD0();
    v65 = v17;
    v66 = v84;
    v67 = v70;
    (v84[2])(v70, v63, v65);
    v80(v67, 0, 1, v65);
    sub_227364398(v67, v64, v33);
    (v66[1])(v63, v65);
    v68 = *(v51 + 8);
    v68(v83, v62);
    return (v68)(v82, v62);
  }

  return result;
}

uint64_t sub_227409FA8@<X0>(uint64_t a1@<X8>)
{
  v193 = a1;
  v192 = sub_227662750();
  v190 = *(v192 - 8);
  v189 = *(v190 + 64);
  MEMORY[0x28223BE20](v192);
  v187 = &v168 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v207 = &v168 - v3;
  v186 = sub_22766B360();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B340();
  MEMORY[0x28223BE20](v5 - 8);
  v183 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A0, &unk_22767E430);
  v219 = *(v205 - 8);
  v195 = *(v219 + 64);
  MEMORY[0x28223BE20](v205);
  v204 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v203 = &v168 - v9;
  MEMORY[0x28223BE20](v10);
  v206 = &v168 - v11;
  v191 = sub_227669890();
  v188 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v218 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v182 = *(v196 - 8);
  v181 = v182[8];
  MEMORY[0x28223BE20](v196);
  v180 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v179 = &v168 - v15;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v208 = *(v177 - 8);
  v16 = *(v208 + 64);
  MEMORY[0x28223BE20](v177);
  MEMORY[0x28223BE20](v17);
  v19 = &v168 - v18;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v225 = *(v221 - 8);
  v223 = *(v225 + 64);
  MEMORY[0x28223BE20](v221);
  v202 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v224 = &v168 - v22;
  MEMORY[0x28223BE20](v23);
  v201 = &v168 - v24;
  MEMORY[0x28223BE20](v25);
  v200 = &v168 - v26;
  MEMORY[0x28223BE20](v27);
  v198 = &v168 - v28;
  MEMORY[0x28223BE20](v29);
  v216 = &v168 - v30;
  MEMORY[0x28223BE20](v31);
  v217 = &v168 - v32;
  MEMORY[0x28223BE20](v33);
  v220 = &v168 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA88, &qword_2276852C8);
  v35 = swift_allocBox();
  v37 = v36;
  v38 = sub_2276661C0();
  v39 = *(*(v38 - 8) + 56);
  v39(v37, 1, 1, v38);
  v215 = swift_allocBox();
  v39(v40, 1, 1, v38);
  v41 = swift_allocObject();
  v214 = v41;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  __swift_project_boxed_opaque_existential_0(v197 + 2, *(v197 + 5));
  v42 = v19;
  sub_22766ADE0();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_227431AFC;
  *(v43 + 24) = v35;
  v199 = v35;
  v44 = v208;
  v45 = *(v208 + 16);
  v175 = v208 + 16;
  v176 = v45;
  v46 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v46;
  v47 = v177;
  v45(v46, v19, v177);
  v48 = *(v44 + 80);
  v174 = v48;
  v49 = (v48 + 16) & ~v48;
  v172 = v49;
  v50 = (v16 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v169 = v50;
  v51 = swift_allocObject();
  v171 = *(v44 + 32);
  v173 = v44 + 32;
  v171(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_226FD036C;
  v52[1] = v43;

  v53 = v217;
  sub_227669270();
  v54 = *(v44 + 8);
  v208 = v44 + 8;
  v170 = v54;
  v55 = v47;
  v54(v19, v47);
  v178 = 0x800000022769FE30;
  v56 = swift_allocObject();
  v56[2] = 0xD000000000000036;
  v56[3] = 0x800000022769FE30;
  v56[4] = 373;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_226F33024;
  *(v57 + 24) = v56;
  v58 = v225;
  v59 = *(v225 + 16);
  v194 = v225 + 16;
  v210 = v59;
  v60 = v216;
  v61 = v53;
  v62 = v53;
  v63 = v221;
  v59(v216, v61, v221);
  v64 = *(v58 + 80);
  v213 = v64;
  v65 = (v64 + 16) & ~v64;
  v211 = v65;
  v66 = (v223 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v209 = v66;
  v67 = swift_allocObject();
  v222 = *(v58 + 32);
  v223 = v58 + 32;
  v222(v67 + v65, v60, v63);
  v68 = (v67 + v66);
  *v68 = sub_226F32FE8;
  v68[1] = v57;
  sub_227669270();
  v69 = *(v58 + 8);
  v225 = v58 + 8;
  v212 = v69;
  v69(v62, v63);
  __swift_project_boxed_opaque_existential_0(v197 + 2, *(v197 + 5));
  v70 = v42;
  sub_22766AE00();
  v71 = swift_allocObject();
  v72 = v215;
  *(v71 + 16) = sub_227431304;
  *(v71 + 24) = v72;
  v73 = v168;
  v74 = v55;
  v176(v168, v70, v55);
  v75 = v169;
  v76 = swift_allocObject();
  v171(v76 + v172, v73, v74);
  v77 = (v76 + v75);
  *v77 = sub_227431AC8;
  v77[1] = v71;

  sub_227669270();
  v170(v70, v74);
  v78 = v179;
  sub_22740B804();
  v79 = swift_allocObject();
  v80 = v214;
  *(v79 + 16) = sub_2273BC074;
  *(v79 + 24) = v80;
  v81 = v182;
  v82 = v180;
  v83 = v78;
  v84 = v196;
  (v182[2])(v180, v78, v196);
  v85 = v81;
  v86 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v87 = (v181 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  (v85[4])(v88 + v86, v82, v84);
  v89 = (v88 + v87);
  *v89 = sub_226FCBEE0;
  v89[1] = v79;

  v90 = v198;
  sub_227669270();
  (v85[1])(v83, v84);
  v91 = swift_allocObject();
  v91[2] = 0xD000000000000036;
  v91[3] = v178;
  v91[4] = 381;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_226F33024;
  *(v92 + 24) = v91;
  v93 = v200;
  v94 = v221;
  v95 = v210;
  v210(v200, v90, v221);
  v96 = v209;
  v97 = v213;
  v98 = swift_allocObject();
  v222(v98 + v211, v93, v94);
  v99 = (v98 + v96);
  *v99 = sub_226F32FE8;
  v99[1] = v92;
  v100 = v216;
  sub_227669270();
  v101 = v94;
  v102 = v225;
  v212(v90, v94);
  sub_22766A7E0();
  v95(v90, v220, v94);
  v95(v93, v217, v94);
  v103 = v201;
  v95(v201, v100, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v104 = *(v102 + 64);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_227675BD0;
  v106 = v105 + ((v97 + 32) & ~v97);
  v107 = v222;
  v222(v106, v198, v101);
  v107(v106 + v104, v200, v101);
  v108 = v101;
  v109 = v210;
  v210((v106 + 2 * v104), v103, v101);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v110 = sub_22766C950();
  sub_227669A50();
  v111 = v224;
  sub_227669250();

  v112 = swift_allocObject();
  v113 = v215;
  v114 = v199;
  v112[2] = v214;
  v112[3] = v114;
  v112[4] = v113;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_227431348;
  *(v115 + 24) = v112;
  v116 = v202;
  v109(v202, v111, v108);
  v117 = v209;
  v118 = swift_allocObject();
  v222(v118 + v211, v116, v108);
  v119 = (v118 + v117);
  *v119 = sub_226F09740;
  v119[1] = v115;
  v120 = sub_227665630();

  v121 = v203;
  v180 = v120;
  sub_227669270();
  v212(v224, v108);
  v122 = v219;
  v200 = *(v219 + 16);
  v208 = v219 + 16;
  v123 = v204;
  v124 = v121;
  v125 = v205;
  (v200)(v204, v121, v205);
  v126 = *(v122 + 80);
  v198 = v126;
  v179 = (((v126 + 16) & ~v126) + v195);
  v127 = (v126 + 16) & ~v126;
  v196 = v127;
  v128 = (v179 + 7) & 0xFFFFFFFFFFFFFFF8;
  v181 = v128;
  v129 = swift_allocObject();
  v130 = *(v122 + 32);
  v195 = v122 + 32;
  v197 = v130;
  v130(v129 + v127, v123, v125);
  v131 = (v129 + v128);
  *v131 = sub_22740BBB8;
  v131[1] = 0;
  v132 = v206;
  sub_227669270();
  v133 = *(v122 + 8);
  v219 = v122 + 8;
  v182 = v133;
  (v133)(v124, v125);
  sub_2276697A0();
  swift_allocObject();
  v134 = sub_227669770();
  v135 = v184;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v185 + 8))(v135, v186);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v136 = sub_22766A8F0();
  v186 = v136;
  v226 = v134;
  v137 = sub_22766C060();
  v185 = v137;
  v139 = v138;
  v140 = v207;
  sub_227662720();
  v141 = swift_allocObject();
  *(v141 + 16) = v134;
  *(v141 + 24) = v136;
  *(v141 + 32) = v137;
  *(v141 + 40) = v139;
  v184 = v139;
  *(v141 + 48) = "RemoteBrowsingEnvironmentBuilder::queryRemoteBrowsingUser";
  *(v141 + 56) = 57;
  *(v141 + 64) = 2;

  v142 = v224;
  sub_227669270();
  (v200)(v123, v132, v125);
  v143 = swift_allocObject();
  v197(v143 + v196, v123, v125);
  v144 = v202;
  v145 = v142;
  v146 = v221;
  v210(v202, v145, v221);
  v147 = v209;
  v148 = swift_allocObject();
  v222(v148 + v211, v144, v146);
  v149 = (v148 + v147);
  *v149 = sub_2274313A4;
  v149[1] = v143;
  v150 = v203;
  sub_227669270();
  v151 = v190;
  v152 = v187;
  v153 = v192;
  (*(v190 + 16))(v187, v140, v192);
  v154 = (*(v151 + 80) + 49) & ~*(v151 + 80);
  v155 = (v189 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
  v156 = swift_allocObject();
  v157 = v184;
  *(v156 + 16) = v185;
  *(v156 + 24) = v157;
  *(v156 + 32) = "RemoteBrowsingEnvironmentBuilder::queryRemoteBrowsingUser";
  *(v156 + 40) = 57;
  *(v156 + 48) = 2;
  (*(v151 + 32))(v156 + v154, v152, v153);
  *(v156 + v155) = v186;
  *(v156 + ((v155 + 15) & 0xFFFFFFFFFFFFFFF8)) = v134;
  v158 = v204;
  v159 = v150;
  v160 = v205;
  (v200)(v204, v150, v205);
  v161 = v181;
  v162 = swift_allocObject();
  v197(v162 + v196, v158, v160);
  v163 = (v162 + v161);
  *v163 = sub_2274313B8;
  v163[1] = v156;

  sub_227669270();
  v164 = v182;
  (v182)(v159, v160);
  v165 = v221;
  v166 = v212;
  v212(v224, v221);
  (*(v151 + 8))(v207, v153);
  v164(v206, v160);
  v166(v201, v165);
  (*(v188 + 8))(v218, v191);
  v166(v216, v165);
  v166(v217, v165);
  v166(v220, v165);
}

uint64_t sub_22740B6E4(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA88, &qword_2276852C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = *a1;
  v8 = swift_projectBox();
  v9 = v7;
  result = sub_2276661A0();
  if (!v2)
  {
    v11 = sub_2276661C0();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    swift_beginAccess();
    return sub_226F09BAC(v6, v8, &qword_27D7BDA88, &qword_2276852C8);
  }

  return result;
}

uint64_t sub_22740B804()
{
  __swift_project_boxed_opaque_existential_0(v0 + 37, v0[40]);
  v1 = sub_227669FC0();
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v1;
  v4 = v2;
  sub_226FB2548();
  if (sub_22766CC10())
  {

LABEL_4:
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    return sub_22766AE20();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  return sub_227669280();
}

uint64_t sub_22740B900@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v24 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA88, &qword_2276852C8);
  MEMORY[0x28223BE20](v5 - 8);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = sub_227665630();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = swift_projectBox();
  v18 = swift_projectBox();
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  sub_226E93170(v17, v9, &qword_27D7BDA88, &qword_2276852C8);
  swift_beginAccess();
  sub_226E93170(v18, v23, &qword_27D7BDA88, &qword_2276852C8);

  sub_227665620();
  (*(v11 + 16))(v13, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v19, v13, v10);
  sub_227669280();
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_22740BBB8(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A8, &unk_227685610);
  MEMORY[0x28223BE20](v6);
  v8 = (v19 - v7);
  sub_226E93170(a1, v19 - v7, &qword_27D7BD5A8, &unk_227685610);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_226E97D1C(v8, &qword_27D7BD5A8, &unk_227685610);
  }

  v9 = *v8;
  sub_22766A730();
  v10 = v9;
  v11 = sub_22766B380();
  v12 = sub_22766C890();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = MEMORY[0x22AA995D0](v19[2], v19[3]);
    v17 = sub_226E97AE8(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_226E8E000, v11, v12, "Unable to query remote browsing user: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22740BE40@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v93 = *(v108 - 8);
  v92 = *(v93 + 64);
  MEMORY[0x28223BE20](v108);
  v91 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v106 = &v78 - v4;
  v111 = sub_227662750();
  v107 = *(v111 - 8);
  v95 = *(v107 + 64);
  MEMORY[0x28223BE20](v111);
  v94 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v110 = &v78 - v7;
  v88 = sub_22766B360();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B340();
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD508, &unk_227684C28);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD500, &qword_227684C20);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v109 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v98 = &v78 - v25;
  MEMORY[0x28223BE20](v26);
  v97 = &v78 - v27;
  v90 = sub_227669890();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v100 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  __swift_project_boxed_opaque_existential_0((v1 + 600), *(v1 + 624));
  (*(v107 + 56))(v13, 1, 1, v111);
  sub_2273BA478(v13, v20);
  sub_226E97D1C(v13, &qword_27D7B9690, qword_227670B50);
  (*(v15 + 16))(v17, v20, v14);
  v29 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v30 = swift_allocObject();
  (*(v15 + 32))(v30 + v29, v17, v14);
  v31 = (v30 + ((v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_22740CA18;
  v31[1] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB00, &unk_227685590);
  v33 = v98;
  v99 = v32;
  sub_227669270();
  (*(v15 + 8))(v20, v14);
  v34 = *(v22 + 16);
  v104 = v22 + 16;
  v105 = v34;
  v35 = v109;
  v36 = v33;
  v37 = v21;
  v34(v109, v33, v21);
  v38 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v103 = *(v22 + 80);
  v81 = v38 + v23;
  v39 = v38;
  v102 = v38;
  v40 = (v38 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = v40;
  v41 = swift_allocObject();
  v42 = *(v22 + 32);
  v101 = v22 + 32;
  v42(v41 + v39, v35, v37);
  v79 = v42;
  v43 = (v41 + v40);
  *v43 = sub_22740CAB0;
  v43[1] = 0;
  v44 = v97;
  sub_227669270();
  v45 = *(v22 + 8);
  v84 = v22 + 8;
  v85 = v45;
  v45(v36, v37);
  sub_2276697A0();
  swift_allocObject();
  v46 = sub_227669770();
  v47 = v83;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v87 + 8))(v47, v88);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v48 = sub_22766A8F0();
  v88 = v48;
  v112 = v46;
  v49 = sub_22766C060();
  v87 = v49;
  v51 = v50;
  sub_227662720();
  v52 = swift_allocObject();
  v80 = v46;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v49;
  *(v52 + 40) = v51;
  v86 = v51;
  *(v52 + 48) = "RemoteBrowsingEnvironmentBuilder.queryMetricIdentifiers";
  *(v52 + 56) = 55;
  *(v52 + 64) = 2;

  v53 = v106;
  sub_227669270();
  v54 = v109;
  v78 = v37;
  v105(v109, v44, v37);
  v55 = swift_allocObject();
  v42(v55 + v102, v54, v37);
  v56 = v93;
  v57 = v91;
  v58 = v108;
  (*(v93 + 16))(v91, v53, v108);
  v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v60 = (v92 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v56 + 32))(v61 + v59, v57, v58);
  v62 = (v61 + v60);
  *v62 = sub_227430B58;
  v62[1] = v55;
  v63 = v98;
  sub_227669270();
  v64 = v107;
  v65 = v94;
  v66 = v111;
  (*(v107 + 16))(v94, v110, v111);
  v67 = (*(v64 + 80) + 49) & ~*(v64 + 80);
  v68 = (v95 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v70 = v86;
  *(v69 + 16) = v87;
  *(v69 + 24) = v70;
  *(v69 + 32) = "RemoteBrowsingEnvironmentBuilder.queryMetricIdentifiers";
  *(v69 + 40) = 55;
  *(v69 + 48) = 2;
  (*(v64 + 32))(v69 + v67, v65, v66);
  *(v69 + v68) = v88;
  *(v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) = v80;
  v71 = v109;
  v72 = v78;
  v105(v109, v63, v78);
  v73 = v82;
  v74 = swift_allocObject();
  v79(v74 + v102, v71, v72);
  v75 = (v74 + v73);
  *v75 = sub_227431B1C;
  v75[1] = v69;

  sub_227669270();
  v76 = v85;
  v85(v63, v72);
  (*(v56 + 8))(v106, v108);
  (*(v64 + 8))(v110, v111);
  v76(v97, v72);
  (*(v89 + 8))(v100, v90);
}

uint64_t sub_22740CA18(void *a1)
{

  v2 = sub_226F355E4(v1);
  *(swift_allocObject() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB00, &unk_227685590);

  return sub_227669280();
}

uint64_t sub_22740CAB0(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v6 = a1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](v15[2], v15[3]);
    v13 = sub_226E97AE8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v7, v8, "Unable to fetch metric identifiers: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB00, &unk_227685590);
  return sub_227669280();
}

uint64_t sub_22740CCDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4F0, &unk_22767E3D0);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9198, &qword_227673450);
  sub_226ECF5D8(sub_227430A24, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryResumableSessions";
  *(v30 + 56) = 56;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_227430A40;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryResumableSessions";
  *(v50 + 40) = 56;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

uint64_t sub_22740D5DC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v6 = sub_2276676D0();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227663FA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2 + 47, a2[50]);
  result = sub_226EAF48C(a1, v12);
  if (!v3)
  {
    v17 = v9;
    v18 = v6;
    v19 = v10;
    sub_227663EC0();
    __swift_project_boxed_opaque_existential_0(a2 + 22, a2[25]);
    v14 = sub_22701C560(v8, a1);
    v15 = sub_2273FA844(v14);

    v16 = sub_226F42FB8(v15);

    (*(v21 + 8))(v8, v18);
    result = (*(v19 + 8))(v12, v17);
    *v20 = v16;
  }

  return result;
}

uint64_t sub_22740D834@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  LODWORD(v94) = a1;
  v92 = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v93 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v88 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v4;
  MEMORY[0x28223BE20](v5);
  v100 = v73 - v6;
  v99 = sub_227662750();
  v91 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v90 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v7;
  MEMORY[0x28223BE20](v8);
  v102 = v73 - v9;
  v82 = sub_22766B360();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  MEMORY[0x28223BE20](v12 - 8);
  v80 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v73 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v86 = *(v98 - 8);
  v21 = *(v86 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v83 = v73 - v23;
  MEMORY[0x28223BE20](v24);
  v97 = v73 - v25;
  v85 = sub_227669890();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v96 = v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v27 = *__swift_project_boxed_opaque_existential_0((v3 + 840), *(v3 + 864));
  v28 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v27 + v28, &v105);
  if (v106)
  {
    sub_226E92AB8(&v105, &v104);
    sub_226E91B50(&v104, &v103);
    v29 = swift_allocObject();
    sub_226E92AB8(&v103, v29 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(&v104);
  }

  else
  {
    sub_226F099DC();
    v30 = swift_allocError();
    *v31 = 0;
    *(swift_allocObject() + 16) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v94 & 1;
  (*(v15 + 16))(v17, v20, v14);
  v33 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v34 = swift_allocObject();
  (*(v15 + 32))(v34 + v33, v17, v14);
  v35 = (v34 + ((v16 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_227430760;
  v35[1] = v32;
  v94 = sub_227665AD0();
  v36 = v97;
  sub_227669270();
  (*(v15 + 8))(v20, v14);
  sub_2276697A0();
  swift_allocObject();
  v37 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v81 + 8))(v11, v82);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v38 = sub_22766A8F0();
  v82 = v38;
  *&v105 = v37;
  v39 = sub_22766C060();
  v81 = v39;
  v41 = v40;
  sub_227662720();
  v42 = swift_allocObject();
  v79 = v37;
  *(v42 + 16) = v37;
  *(v42 + 24) = v38;
  *(v42 + 32) = v39;
  *(v42 + 40) = v41;
  v80 = v41;
  *(v42 + 48) = "RemoteBrowsingEnvironmentBuilder.fetchServiceSubscription";
  *(v42 + 56) = 57;
  *(v42 + 64) = 2;

  v43 = v100;
  sub_227669270();
  v44 = v86;
  v45 = *(v86 + 16);
  v73[1] = v86 + 16;
  v78 = v45;
  v46 = v95;
  v47 = v98;
  v45(v95, v36, v98);
  v77 = *(v44 + 80);
  v74 = ((v77 + 16) & ~v77) + v21;
  v48 = (v77 + 16) & ~v77;
  v76 = v48;
  v49 = swift_allocObject();
  v50 = *(v44 + 32);
  v73[0] = v44 + 32;
  v75 = v50;
  v50(v49 + v48, v46, v47);
  v51 = v93;
  v52 = v88;
  v53 = v101;
  (*(v93 + 16))(v88, v43, v101);
  v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v55 = (v87 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v51 + 32))(v56 + v54, v52, v53);
  v57 = (v56 + v55);
  *v57 = sub_226EDA6EC;
  v57[1] = v49;
  v58 = v83;
  sub_227669270();
  v59 = v91;
  v60 = v90;
  v61 = v99;
  (*(v91 + 16))(v90, v102, v99);
  v62 = (*(v59 + 80) + 49) & ~*(v59 + 80);
  v63 = (v89 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v65 = v80;
  *(v64 + 16) = v81;
  *(v64 + 24) = v65;
  *(v64 + 32) = "RemoteBrowsingEnvironmentBuilder.fetchServiceSubscription";
  *(v64 + 40) = 57;
  *(v64 + 48) = 2;
  (*(v59 + 32))(v64 + v62, v60, v61);
  *(v64 + v63) = v82;
  *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
  v66 = v95;
  v67 = v98;
  v78(v95, v58, v98);
  v68 = (v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v75(v69 + v76, v66, v67);
  v70 = (v69 + v68);
  *v70 = sub_227430768;
  v70[1] = v64;

  sub_227669270();
  v71 = *(v44 + 8);
  v71(v58, v67);
  (*(v51 + 8))(v100, v101);
  (*(v59 + 8))(v102, v99);
  v71(v97, v67);
  (*(v84 + 8))(v96, v85);
}

uint64_t sub_22740E494(void *a1, char a2)
{
  v3 = sub_227667900();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22740E5B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC670, &qword_22767E3C8);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
  sub_226ECF5D8(sub_2274306E0, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryUpNextQueue";
  *(v30 + 56) = 50;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_2274306FC;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryUpNextQueue";
  *(v50 + 40) = 50;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

void sub_22740EEB0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EA8, &unk_227678700);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_2272343B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    swift_deallocClassInstance();
    return;
  }

  v15 = v12;
  swift_setDeallocating();

  v16 = qword_2813B2078;
  v17 = sub_22766A100();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  swift_deallocClassInstance();
  v18 = *(v15 + 16);
  if (!v18)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v25 = a2;
  v19 = sub_2274CDA24(v18, 0);
  v20 = *(sub_227664AA0() - 8);
  sub_2274CEE34(&v24, &v19[(*(v20 + 80) + 32) & ~*(v20 + 80)], v18, v15);
  v22 = v21;
  v23 = v24;

  sub_226EBB21C(v23);
  if (v22 == v18)
  {
    a2 = v25;
LABEL_7:
    v24 = v19;
    sub_22742AF3C(&v24);

    *a2 = v24;
    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_22740F1BC@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v87 = *(v2 - 8);
  v88 = v2;
  v75 = *(v87 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v61 - v5;
  v89 = sub_227662750();
  v79 = *(v89 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x28223BE20](v89);
  v76 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v61 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB80, &unk_22767BC20);
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = v83[8];
  MEMORY[0x28223BE20](v14);
  v82 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v61 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v80 = sub_227669890();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v23 + 24) = 54;
  *(v23 + 32) = 2;
  *(v23 + 40) = 481;
  *(v23 + 48) = &unk_227685530;
  *(v23 + 56) = v1;
  v85 = sub_2276638D0();

  v24 = v20;
  v71 = v20;
  sub_227669270();
  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v72 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v9);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v69 = v26;
  v91 = v25;
  v27 = sub_22766C060();
  v29 = v28;
  v68 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v70 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryActiveWorkoutPlan";
  *(v30 + 56) = 56;
  *(v30 + 64) = 2;

  v31 = v86;
  sub_227669270();
  v32 = v83;
  v33 = v83[2];
  v66 = v83 + 2;
  v67 = v33;
  v34 = v82;
  v35 = v24;
  v36 = v84;
  v33(v82, v35, v84);
  v65 = *(v32 + 80);
  v62 = ((v65 + 16) & ~v65) + v15;
  v37 = (v65 + 16) & ~v65;
  v64 = v37;
  v38 = swift_allocObject();
  v63 = v32[4];
  v63(v38 + v37, v34, v36);
  v39 = v87;
  v40 = v88;
  v41 = v74;
  (*(v87 + 16))(v74, v31, v88);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v75 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v41, v40);
  v45 = (v44 + v43);
  *v45 = sub_227430668;
  v45[1] = v38;
  v46 = v73;
  sub_227669270();
  v47 = v79;
  v48 = v76;
  v49 = v89;
  (*(v79 + 16))(v76, v90, v89);
  v50 = (*(v47 + 80) + 49) & ~*(v47 + 80);
  v51 = (v78 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v68;
  *(v52 + 16) = v27;
  *(v52 + 24) = v53;
  *(v52 + 32) = "RemoteBrowsingEnvironmentBuilder::queryActiveWorkoutPlan";
  *(v52 + 40) = 56;
  *(v52 + 48) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  *(v52 + v51) = v69;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v54 = v82;
  v55 = v84;
  v67(v82, v46, v84);
  v56 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v63(v57 + v64, v54, v55);
  v58 = (v57 + v56);
  *v58 = sub_2274306A4;
  v58[1] = v52;

  sub_227669270();
  v59 = v83[1];
  v59(v46, v55);
  (*(v87 + 8))(v86, v88);
  (*(v47 + 8))(v90, v89);
  v59(v71, v55);
  (*(v77 + 8))(v72, v80);
}

uint64_t sub_22740FAD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22740FAF0, 0, 0);
}

uint64_t sub_22740FAF0()
{
  v1 = v0[3];
  v2 = v1[83];
  v3 = v1[84];
  __swift_project_boxed_opaque_existential_0(v1 + 80, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = sub_2276638D0();
  *v5 = v0;
  v5[1] = sub_22710AC00;
  v7 = v0[2];
  v8 = v0[3];

  return (v10)(v7, sub_227431AE4, v8, v6, v2, v3);
}

char *sub_22740FC5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  result = sub_226E9B790(0, 1, a1);
  if (!v2)
  {
    sub_22722AEAC(result, v7);

    v9 = sub_2276638D0();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_226E97D1C(v7, &unk_27D7BB920, &unk_227672480);
      v11 = sub_227664EC0();
      sub_22742F224(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51188], v11);
      return swift_willThrow();
    }

    else
    {
      return (*(v10 + 32))(a2, v7, v9);
    }
  }

  return result;
}

uint64_t sub_22740FE4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v3 - 8);
  v86 = v3;
  v72 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v59 - v6;
  v87 = sub_227662750();
  v76 = *(v87 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v59 - v9;
  v68 = sub_22766B360();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4D0, &unk_227684BE0);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = v80[8];
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v84 = &v59 - v19;
  v77 = sub_227669890();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = *(v1 + 664);
  v24 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v23);

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E0, &qword_22767CEB0);
  sub_226ECF5D8(sub_227430508, v2, v23, v82, v24, v20);

  sub_2276697A0();
  swift_allocObject();
  v25 = sub_227669770();
  v69 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v68);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v26 = sub_22766A8F0();
  v68 = v26;
  v89 = v25;
  v27 = sub_22766C060();
  v66 = v27;
  v29 = v28;
  sub_227662720();
  v30 = swift_allocObject();
  v67 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v65 = v29;
  *(v30 + 48) = "RemoteBrowsingEnvironmentBuilder::queryRecentlyViewedWorkoutPlanSummaries";
  *(v30 + 56) = 73;
  *(v30 + 64) = 2;

  v31 = v83;
  sub_227669270();
  v32 = v80;
  v64 = v80[2];
  v33 = v79;
  v34 = v81;
  v64(v79, v84, v81);
  v63 = *(v32 + 80);
  v60 = ((v63 + 16) & ~v63) + v15;
  v35 = (v63 + 16) & ~v63;
  v62 = v35;
  v36 = swift_allocObject();
  v61 = v32[4];
  v61(v36 + v35, v33, v34);
  v38 = v85;
  v37 = v86;
  v39 = v71;
  (*(v85 + 16))(v71, v31, v86);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_227430550;
  v43[1] = v36;
  v44 = v70;
  sub_227669270();
  v45 = v76;
  v46 = v73;
  v47 = v87;
  (*(v76 + 16))(v73, v88, v87);
  v48 = (*(v45 + 80) + 49) & ~*(v45 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v66;
  *(v50 + 24) = v51;
  *(v50 + 32) = "RemoteBrowsingEnvironmentBuilder::queryRecentlyViewedWorkoutPlanSummaries";
  *(v50 + 40) = 73;
  *(v50 + 48) = 2;
  (*(v45 + 32))(v50 + v48, v46, v47);
  *(v50 + v49) = v68;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v52 = v79;
  v53 = v81;
  v64(v79, v44, v81);
  v54 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v61(v55 + v62, v52, v53);
  v56 = (v55 + v54);
  *v56 = sub_227431B1C;
  v56[1] = v50;

  sub_227669270();
  v57 = v80[1];
  v57(v44, v53);
  (*(v85 + 8))(v83, v86);
  (*(v45 + 8))(v88, v87);
  v57(v84, v53);
  (*(v74 + 8))(v69, v77);
}

uint64_t sub_22741074C@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v86 = *(v2 - 8);
  v87 = v2;
  v74 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v60 - v5;
  v88 = sub_227662750();
  v78 = *(v88 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v88);
  v75 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v60 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC668, &qword_22767E3C0);
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = v82[8];
  MEMORY[0x28223BE20](v14);
  v81 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v79 = sub_227669890();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v23 + 24) = 54;
  *(v23 + 32) = 2;
  *(v23 + 40) = 511;
  *(v23 + 48) = &unk_2276854C8;
  *(v23 + 56) = v1;

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAE0, &qword_2276854D0);
  v70 = v20;
  sub_227669270();
  sub_2276697A0();
  swift_allocObject();
  v24 = sub_227669770();
  v71 = v22;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v12, v9);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v25 = sub_22766A8F0();
  v68 = v25;
  v90 = v24;
  v26 = sub_22766C060();
  v28 = v27;
  v67 = v27;
  sub_227662720();
  v29 = swift_allocObject();
  v69 = v24;
  *(v29 + 16) = v24;
  *(v29 + 24) = v25;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  *(v29 + 48) = "RemoteBrowsingEnvironmentBuilder::queryRecentWorkoutPlanSummaries";
  *(v29 + 56) = 65;
  *(v29 + 64) = 2;

  v30 = v85;
  sub_227669270();
  v31 = v82;
  v32 = v82[2];
  v65 = v82 + 2;
  v66 = v32;
  v33 = v81;
  v34 = v20;
  v35 = v83;
  v32(v81, v34, v83);
  v64 = *(v31 + 80);
  v61 = ((v64 + 16) & ~v64) + v15;
  v36 = (v64 + 16) & ~v64;
  v63 = v36;
  v37 = swift_allocObject();
  v62 = v31[4];
  v62(v37 + v36, v33, v35);
  v38 = v86;
  v39 = v87;
  v40 = v73;
  (*(v86 + 16))(v73, v30, v87);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v74 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v41, v40, v39);
  v44 = (v43 + v42);
  *v44 = sub_2274302DC;
  v44[1] = v37;
  v45 = v72;
  sub_227669270();
  v46 = v78;
  v47 = v75;
  v48 = v88;
  (*(v78 + 16))(v75, v89, v88);
  v49 = (*(v46 + 80) + 49) & ~*(v46 + 80);
  v50 = (v77 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v67;
  *(v51 + 16) = v26;
  *(v51 + 24) = v52;
  *(v51 + 32) = "RemoteBrowsingEnvironmentBuilder::queryRecentWorkoutPlanSummaries";
  *(v51 + 40) = 65;
  *(v51 + 48) = 2;
  (*(v46 + 32))(v51 + v49, v47, v48);
  *(v51 + v50) = v68;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v53 = v81;
  v54 = v83;
  v66(v81, v45, v83);
  v55 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v62(v56 + v63, v53, v54);
  v57 = (v56 + v55);
  *v57 = sub_227431B1C;
  v57[1] = v51;

  sub_227669270();
  v58 = v82[1];
  v58(v45, v54);
  (*(v86 + 8))(v85, v87);
  (*(v46 + 8))(v89, v88);
  v58(v70, v54);
  (*(v76 + 8))(v71, v79);
}

uint64_t sub_227411060(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2271716E4;

  return sub_2274110F4();
}

uint64_t sub_2274110F4()
{
  v1[4] = v0;
  v2 = sub_22766B390();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274111B4, 0, 0);
}

uint64_t sub_2274111B4()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_22766A670();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[83];
  v6 = v4[84];
  __swift_project_boxed_opaque_existential_0(v4 + 80, v5);
  v7 = *(v6 + 24);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  *v8 = v0;
  v8[1] = sub_227411388;
  v10 = v0[4];

  return (v12)(v0 + 2, sub_227430340, v10, v9, v5, v6);
}

uint64_t sub_227411388()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2271E98B8;
  }

  else
  {

    v2 = sub_2274114A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274114A4()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[10] = v2;
  v3 = sub_227665750();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAE0, &qword_2276854D0);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_2274115C4;

  return MEMORY[0x282200740](v0 + 3, v3, v4, 0, 0, &unk_2276854F0, v5, v3);
}

uint64_t sub_2274115C4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_227411754;
  }

  else
  {

    v2 = sub_2274116E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274116E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227411754()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_2274117C8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_227666D70();
  result = sub_22728278C(1, 1, v5, a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22741181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_227665750();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAE8, &qword_2276854F8);
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAF0, &unk_227685500);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = sub_2276638D0();
  v4[25] = v7;
  v8 = *(v7 - 8);
  v4[26] = v8;
  v4[27] = *(v8 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227411A40, 0, 0);
}

uint64_t sub_227411A40()
{
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v36 = *(v0 + 104);
  v37 = *(v0 + 208);

  v14 = 0;
  v34 = v8;
  v35 = v3;
  while (v7)
  {
LABEL_11:
    v18 = *(v0 + 224);
    v19 = *(v0 + 232);
    v20 = *(v0 + 192);
    v21 = *(v0 + 200);
    v40 = *(v0 + 184);
    v38 = v20;
    v39 = *(v0 + 112);
    (*(v37 + 16))(v19, *(v36 + 48) + *(v37 + 72) * (__clz(__rbit64(v7)) | (v14 << 6)), v21);
    v22 = sub_22766C4B0();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v20, 1, 1, v22);
    v24 = *(v37 + 32);
    v24(v18, v19, v21);
    v25 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v26 = swift_allocObject();
    v26[2] = 0;
    v41 = v26 + 2;
    v26[3] = 0;
    v26[4] = v39;
    v24(v26 + v25, v18, v21);
    sub_226E93170(v38, v40, &unk_27D7BC8E0, &qword_2276784C0);
    LODWORD(v25) = (*(v23 + 48))(v40, 1, v22);

    v27 = *(v0 + 184);
    if (v25 == 1)
    {
      sub_226E97D1C(*(v0 + 184), &unk_27D7BC8E0, &qword_2276784C0);
    }

    else
    {
      sub_22766C4A0();
      (*(v23 + 8))(v27, v22);
    }

    if (*v41)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_22766C420();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = **(v0 + 96);

    if (v30 | v28)
    {
      v15 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v28;
      *(v0 + 40) = v30;
    }

    else
    {
      v15 = 0;
    }

    v7 &= v7 - 1;
    v16 = *(v0 + 192);
    *(v0 + 48) = 1;
    *(v0 + 56) = v15;
    *(v0 + 64) = v31;
    swift_task_create();

    v9 = sub_226E97D1C(v16, &unk_27D7BC8E0, &qword_2276784C0);
    v8 = v34;
    v3 = v35;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return MEMORY[0x2822004E8](v9, v10, v11, v12, v13);
    }

    if (v17 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v17);
    ++v14;
    if (v7)
    {
      v14 = v17;
      goto LABEL_11;
    }
  }

  *(v0 + 72) = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766C4C0();
  v32 = swift_task_alloc();
  *(v0 + 240) = v32;
  *v32 = v0;
  v32[1] = sub_227411EA0;
  v9 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = v0 + 80;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x2822004E8](v9, v10, v11, v12, v13);
}

uint64_t sub_227411EA0()
{

  if (v0)
  {

    v1 = sub_2274121B4;
  }

  else
  {
    v1 = sub_227411FB8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_227411FB8()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[11];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v4 = v0[9];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[17];
    v7 = v0[18];
    (*(v3 + 32))(v8, v1, v2);
    sub_2270C00D8(v7, v8);
    (*(v3 + 8))(v7, v2);
    v9 = swift_task_alloc();
    v0[30] = v9;
    *v9 = v0;
    v9[1] = sub_227411EA0;
    v10 = v0[19];
    v11 = v0[20];

    return MEMORY[0x2822004E8](v10, 0, 0, v11, v0 + 10);
  }
}

uint64_t sub_2274121B4()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227412298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_2276627D0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22741235C, 0, 0);
}

uint64_t sub_22741235C()
{
  __swift_project_boxed_opaque_existential_0((v0[3] + 960), *(v0[3] + 984));
  sub_2276637C0();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_227412420;
  v2 = v0[7];
  v3 = v0[2];

  return sub_22714E544(v3, v2);
}

uint64_t sub_227412420()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226FFC220, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}