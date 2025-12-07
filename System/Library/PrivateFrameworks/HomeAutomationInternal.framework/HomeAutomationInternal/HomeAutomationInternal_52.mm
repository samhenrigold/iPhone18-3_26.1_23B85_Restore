uint64_t sub_252D27D40()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0x74616469646E6163;
  *(v4 + 40) = 0xEF73656D614E7365;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000014;
  *(v4 + 88) = 0x8000000252E8A060;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(v1, 1, v6);
  v10 = v0[7];
  if (v9 == 1)
  {

    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    (*(v7 + 32))(boxed_opaque_existential_0, v10, v6);
  }

  v12 = v0[6];
  v13 = v0[4];
  *(v4 + 128) = 0xD000000000000014;
  *(v4 + 136) = 0x8000000252E8A040;
  sub_252938414(v13, v12, &qword_27F540298, &unk_252E3C270);
  v14 = v8(v12, 1, v6);
  v15 = v0[6];
  if (v14 == 1)
  {
    sub_25293847C(v0[6], &qword_27F540298, &unk_252E3C270);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v6;
    v16 = __swift_allocate_boxed_opaque_existential_0((v4 + 144));
    (*(v7 + 32))(v16, v15, v6);
  }

  v19 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_252D28030;

  return v19(0xD000000000000022, 0x8000000252E7D560, v4);
}

uint64_t sub_252D28030(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D28198, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D28198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D28210(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D282BC, 0, 0);
}

uint64_t sub_252D282BC()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x8000000252E8A060;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = v0[6];
  if (v7 == 1)
  {
    sub_25293847C(v0[6], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = v0[5];
  v11 = v0[3];
  *(v3 + 80) = 0xD000000000000014;
  *(v3 + 88) = 0x8000000252E8A040;
  sub_252938414(v11, v10, &qword_27F540298, &unk_252E3C270);
  v12 = v6(v10, 1, v4);
  v13 = v0[5];
  if (v12 == 1)
  {
    sub_25293847C(v0[5], &qword_27F540298, &unk_252E3C270);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    v14 = __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    (*(v5 + 32))(v14, v13, v4);
  }

  v17 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_252D26710;

  return v17(0xD000000000000023, 0x8000000252E952C0, v3);
}

uint64_t sub_252D28554(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 80) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D28604, 0, 0);
}

uint64_t sub_252D28604()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_252E3C280;
  *(v3 + 32) = 0xD00000000000001ELL;
  *(v3 + 40) = 0x8000000252E6DE40;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = *(v0 + 48);
  if (v7 == 1)
  {
    sub_25293847C(*(v0 + 48), &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 24);
  *(v3 + 80) = 0x656D614E656D6F68;
  *(v3 + 88) = 0xE800000000000000;
  sub_252938414(v11, v10, &qword_27F540298, &unk_252E3C270);
  v12 = v6(v10, 1, v4);
  v13 = *(v0 + 40);
  if (v12 == 1)
  {
    sub_25293847C(*(v0 + 40), &qword_27F540298, &unk_252E3C270);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    v14 = __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    (*(v5 + 32))(v14, v13, v4);
  }

  v15 = *(v0 + 80);
  *(v3 + 128) = 0x7571655256547369;
  *(v3 + 136) = 0xEB00000000747365;
  *(v3 + 168) = MEMORY[0x277D839B0];
  *(v3 + 144) = v15;
  v18 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *v16 = v0;
  v16[1] = sub_252D26710;

  return v18(0xD000000000000026, 0x8000000252E6DE60, v3);
}

uint64_t sub_252D288D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252D288F8, 0, 0);
}

uint64_t sub_252D288F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x8000000252E851F0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000016;
  *(v4 + 88) = 0x8000000252E85210;
  *(v4 + 96) = v2;
  *(v4 + 120) = v5;
  *(v4 + 128) = 0xD000000000000015;
  *(v4 + 168) = v5;
  *(v4 + 136) = 0x8000000252E85230;
  *(v4 + 144) = v1;
  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_252D28A9C;

  return v8(0xD000000000000025, 0x8000000252E851C0, v4);
}

uint64_t sub_252D28A9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CDA8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D28BF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F707365526F4ELL;
  v4 = 0xEA00000000006573;
  if (v2 != 1)
  {
    v3 = 0x6574617453;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x797469746E45;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6E6F707365526F4ELL;
  v8 = 0xEA00000000006573;
  if (*a2 != 1)
  {
    v7 = 0x6574617453;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x797469746E45;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D28CF4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D28D94(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D28E20(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252D28EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252D2CCA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252D28EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000006573;
  v5 = 0x6E6F707365526F4ELL;
  if (v2 != 1)
  {
    v5 = 0x6574617453;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x797469746E45;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252D28F48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D28FE4, 0, 0);
}

uint64_t sub_252D28FE4()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_252E3C290;
  *(v3 + 32) = 0x6D614E656E656373;
  *(v3 + 40) = 0xE900000000000065;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_25293847C(v0[4], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v7, v4);
  }

  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_252D291CC;

  return v11(0xD000000000000026, 0x8000000252E665B0, v3);
}

uint64_t sub_252D291CC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CD88, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D29328(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574617453;
  }

  else
  {
    v3 = 0x6D614E656E656353;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574617453;
  }

  else
  {
    v5 = 0x6D614E656E656353;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D293D0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D29454(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D294C4(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D29550(uint64_t *a1@<X8>)
{
  v2 = 0x6D614E656E656353;
  if (*v1)
  {
    v2 = 0x6574617453;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D29590(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D29630, 0, 0);
}

uint64_t sub_252D29630()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0x6D614E656E656373;
  *(v3 + 40) = 0xE900000000000065;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = *(v0 + 32);
  if (v6 == 1)
  {
    sub_25293847C(*(v0 + 32), &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v7, v4);
  }

  v9 = *(v0 + 64);
  *(v3 + 80) = 0x7365636375537369;
  *(v3 + 88) = 0xE900000000000073;
  *(v3 + 120) = MEMORY[0x277D839B0];
  *(v3 + 96) = v9;
  v13 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  v11 = sub_252D2C7B4();
  *v10 = v0;
  v10[1] = sub_252D2985C;

  return v13(0xD000000000000020, 0x8000000252E95290, v3, &type metadata for HomeAutomationCATsSimple.SceneStatusLabelsDialogIds, v11);
}

uint64_t sub_252D2985C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D299B8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D299B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D29A24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6574617453;
  if (v2 != 1)
  {
    v4 = 0x5672656767697254;
    v3 = 0xEC00000065756C61;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C756465686353;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6574617453;
  if (*a2 != 1)
  {
    v8 = 0x5672656767697254;
    v7 = 0xEC00000065756C61;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C756465686353;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D29B30()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D29BDC(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D29C74(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252D29D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252D2CCF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252D29D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE500000000000000;
  v5 = 0x6574617453;
  if (v2 != 1)
  {
    v5 = 0x5672656767697254;
    v4 = 0xEC00000065756C61;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C756465686353;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252D29DB4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D29DDC, 0, 0);
}

uint64_t sub_252D29DDC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x726F727245736168;
  *(v2 + 88) = 0xE900000000000073;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  strcpy((v2 + 128), "intentContext");
  *(v2 + 142) = -4864;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_252D29FAC;

  return v11(0xD00000000000001ELL, 0x8000000252E66590, v2);
}

uint64_t sub_252D29FAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CDAC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D2A104(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D2A12C, 0, 0);
}

uint64_t sub_252D2A12C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x726F727245736168;
  *(v2 + 88) = 0xE900000000000073;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  strcpy((v2 + 128), "intentContext");
  *(v2 + 142) = -4864;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_252D29FAC;

  return v11(0xD000000000000016, 0x8000000252E666A0, v2);
}

uint64_t sub_252D2A2FC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D2A3C4(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D2A478(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252D2A53C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252D2CD3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252D2A56C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D2A594, 0, 0);
}

uint64_t sub_252D2A594()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x726F727245736168;
  *(v2 + 88) = 0xE900000000000073;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  strcpy((v2 + 128), "intentContext");
  *(v2 + 142) = -4864;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v12 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  v10 = sub_252D2C760();
  *v9 = v0;
  v9[1] = sub_252D29FAC;

  return v12(0xD00000000000001ELL, 0x8000000252E95270, v2, &type metadata for HomeAutomationCATsSimple.SetModeUILabelsDialogIds, v10);
}

uint64_t sub_252D2A778(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D2A7A0, 0, 0);
}

uint64_t sub_252D2A7A0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationNumericEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x726F727245736168;
  *(v2 + 88) = 0xE900000000000073;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  strcpy((v2 + 128), "intentContext");
  *(v2 + 142) = -4864;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_252D29FAC;

  return v11(0xD00000000000001ELL, 0x8000000252E66610, v2);
}

uint64_t sub_252D2A970(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2A994, 0, 0);
}

uint64_t sub_252D2A994()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationPolledEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "intentContext");
  *(v2 + 94) = -4864;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v9 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_252D2AB3C;

  return v9(0xD00000000000001DLL, 0x8000000252E8A6B0, v2);
}

uint64_t sub_252D2AB3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2AC94, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D2AC94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D2ACF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574617453;
  }

  else
  {
    v3 = 0x797469746E45;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574617453;
  }

  else
  {
    v5 = 0x797469746E45;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D2AD98()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D2AE14(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D2AE7C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D2AF00(uint64_t *a1@<X8>)
{
  v2 = 0x797469746E45;
  if (*v1)
  {
    v2 = 0x6574617453;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D2AF38(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D2AF60, 0, 0);
}

uint64_t sub_252D2AF60()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0x65736E6F70736572;
  *(v2 + 40) = 0xE900000000000073;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationPolledEntityResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "intentContext");
  *(v2 + 94) = -4864;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v7 = *(v0 + 64);
  *(v2 + 96) = v5;
  *(v2 + 136) = 0x8000000252E95250;
  *(v2 + 168) = MEMORY[0x277D839B0];
  *(v2 + 144) = v7;
  v11 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  *(v2 + 120) = v6;
  *(v2 + 128) = 0xD000000000000012;

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  v9 = sub_252D2C70C();
  *v8 = v0;
  v8[1] = sub_252D29FAC;

  return v11(0xD000000000000025, 0x8000000252E95220, v2, &type metadata for HomeAutomationCATsSimple.SetPolledStateUILabelsDialogIds, v9);
}

uint64_t sub_252D2B14C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2B170, 0, 0);
}

uint64_t sub_252D2B170()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  strcpy((v2 + 32), "getResponses");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationClimateResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "setResponses");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationClimateResponses();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v9 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_252D29FAC;

  return v9(0xD000000000000028, 0x8000000252E666C0, v2);
}

uint64_t sub_252D2B300(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7453746567726154;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x8000000252E68720;
  }

  else
  {
    v4 = 0xEB00000000657461;
  }

  if (*a2)
  {
    v5 = 0x7453746567726154;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657461;
  }

  else
  {
    v6 = 0x8000000252E68720;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D2B3B4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D2B444(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D2B4C0(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D2B558(unint64_t *a1@<X8>)
{
  v2 = 0x8000000252E68720;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x7453746567726154;
    v2 = 0xEB00000000657461;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_252D2B5A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2B5C8, 0, 0);
}

uint64_t sub_252D2B5C8()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  strcpy((v2 + 32), "getResponses");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationClimateResponses();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "setResponses");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationClimateResponses();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v10 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v7 = swift_task_alloc();
  v0[6] = v7;
  v8 = sub_252D2C6B8();
  *v7 = v0;
  v7[1] = sub_252D29FAC;

  return v10(0xD000000000000030, 0x8000000252E951E0, v2, &type metadata for HomeAutomationCATsSimple.SetTemperatureSingleValueUILabelsDialogIds, v8);
}

uint64_t sub_252D2B76C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D2B808, 0, 0);
}

uint64_t sub_252D2B808()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_252E3C290;
  *(v3 + 32) = 0x656D614E656D6F68;
  *(v3 + 40) = 0xE800000000000000;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_25293847C(v0[4], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v7, v4);
  }

  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_252D291CC;

  return v11(0xD00000000000002ELL, 0x8000000252E95410, v3);
}

uint64_t sub_252D2B9EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_252D2BA0C, 0, 0);
}

uint64_t sub_252D2BA0C()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_252E3C290;
  strcpy((v2 + 32), "intentContext");
  *(v2 + 46) = -4864;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v6 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252C0D500;

  return v6(0xD00000000000001FLL, 0x8000000252E88260, v2);
}

uint64_t sub_252D2BB60(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252D2BB88, 0, 0);
}

uint64_t sub_252D2BB88()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_252E3C280;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x8000000252E696E0;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = *(v0 + 57);
  v5 = *(v0 + 56);
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "isSceneRequest");
  *(v2 + 95) = -18;
  v6 = MEMORY[0x277D839B0];
  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  *(v2 + 128) = 0xD000000000000018;
  *(v2 + 136) = 0x8000000252E8A310;
  *(v2 + 168) = v6;
  *(v2 + 144) = v4;
  v9 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_252D26274;

  return v9(0xD000000000000022, 0x8000000252E916A0, v2);
}

uint64_t sub_252D2BD34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2BD58, 0, 0);
}

uint64_t sub_252D2BD58()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  strcpy((v2 + 32), "intentContext");
  *(v2 + 46) = -4864;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationIntentContext(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x65736E6F70736572;
  *(v2 + 88) = 0xE900000000000073;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v9 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_252D29FAC;

  return v9(0xD000000000000028, 0x8000000252E89A80, v2);
}

uint64_t sub_252D2BF00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D2BF24, 0, 0);
}

uint64_t sub_252D2BF24()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD00000000000001ALL;
  *(v3 + 40) = 0x8000000252E8A960;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD00000000000001ALL;
  *(v3 + 120) = v4;
  *(v3 + 88) = 0x8000000252E8A980;
  *(v3 + 96) = v1;
  v7 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_252D29FAC;

  return v7(0xD00000000000001ELL, 0x8000000252E951C0, v3);
}

uint64_t HomeAutomationCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_252938414(a1, v11, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_252E36334();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v12;
}

uint64_t HomeAutomationCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v9 - 8);
  sub_252938414(a1, &v13 - v10, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_252E36334();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v11;
}

uint64_t HomeAutomationCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E363B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_252E36344();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t HomeAutomationCATsSimple.init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E363B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v6 = sub_252E36344();
  (*(v4 + 8))(a2, v3);
  return v6;
}

uint64_t HomeAutomationCATsSimple.__deallocating_deinit()
{
  _s22HomeAutomationInternal0aB10CATsSimpleCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomeAutomationCATsSimple(uint64_t a1)
{
  result = qword_27F545838;
  if (!qword_27F545838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252D2C6B8()
{
  result = qword_27F545848;
  if (!qword_27F545848)
  {
    result = swift_getWitnessTable(asc_252E5CD44, &type metadata for HomeAutomationCATsSimple.SetTemperatureSingleValueUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545848);
  }

  return result;
}

unint64_t sub_252D2C70C()
{
  result = qword_27F545850;
  if (!qword_27F545850)
  {
    result = swift_getWitnessTable(byte_252E5CD0C, &type metadata for HomeAutomationCATsSimple.SetPolledStateUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545850);
  }

  return result;
}

unint64_t sub_252D2C760()
{
  result = qword_27F545858;
  if (!qword_27F545858)
  {
    result = swift_getWitnessTable(byte_252E5CCD4, &type metadata for HomeAutomationCATsSimple.SetModeUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545858);
  }

  return result;
}

unint64_t sub_252D2C7B4()
{
  result = qword_27F545860;
  if (!qword_27F545860)
  {
    result = swift_getWitnessTable(byte_252E5CC9C, &type metadata for HomeAutomationCATsSimple.SceneStatusLabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545860);
  }

  return result;
}

unint64_t sub_252D2C808()
{
  result = qword_27F545868;
  if (!qword_27F545868)
  {
    result = swift_getWitnessTable(asc_252E5CC64, &type metadata for HomeAutomationCATsSimple.CompletionResponseUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545868);
  }

  return result;
}

unint64_t sub_252D2C85C()
{
  result = qword_27F545870;
  if (!qword_27F545870)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for HomeAutomationCATsSimple.AccessoryStatesUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545870);
  }

  return result;
}

unint64_t sub_252D2C944()
{
  result = qword_27F545878;
  if (!qword_27F545878)
  {
    result = swift_getWitnessTable(byte_252E5C81C, &type metadata for HomeAutomationCATsSimple.SetTemperatureSingleValueUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545878);
  }

  return result;
}

unint64_t sub_252D2C99C()
{
  result = qword_27F545880;
  if (!qword_27F545880)
  {
    result = swift_getWitnessTable(aE_13, &type metadata for HomeAutomationCATsSimple.SetPolledStateUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545880);
  }

  return result;
}

unint64_t sub_252D2C9F4()
{
  result = qword_27F545888;
  if (!qword_27F545888)
  {
    result = swift_getWitnessTable(byte_252E5C8EC, &type metadata for HomeAutomationCATsSimple.SetModeUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545888);
  }

  return result;
}

unint64_t sub_252D2CA4C()
{
  result = qword_27F545890;
  if (!qword_27F545890)
  {
    result = swift_getWitnessTable(aU_17, &type metadata for HomeAutomationCATsSimple.SceneStatusLabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545890);
  }

  return result;
}

unint64_t sub_252D2CAA4()
{
  result = qword_27F545898;
  if (!qword_27F545898)
  {
    result = swift_getWitnessTable(asc_252E5C9BC, &type metadata for HomeAutomationCATsSimple.CompletionResponseUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F545898);
  }

  return result;
}

unint64_t sub_252D2CAFC()
{
  result = qword_27F5458A0;
  if (!qword_27F5458A0)
  {
    result = swift_getWitnessTable(byte_252E5CA24, &type metadata for HomeAutomationCATsSimple.AccessoryStatesUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F5458A0);
  }

  return result;
}

unint64_t sub_252D2CB54()
{
  result = qword_27F5458A8;
  if (!qword_27F5458A8)
  {
    result = swift_getWitnessTable(asc_252E5CA8C, &type metadata for HomeAutomationCATsSimple.SchedulerFutureActionUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F5458A8);
  }

  return result;
}

unint64_t sub_252D2CBAC()
{
  result = qword_27F5458B0;
  if (!qword_27F5458B0)
  {
    result = swift_getWitnessTable(byte_252E5CAF4, &type metadata for HomeAutomationCATsSimple.RequestSentUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F5458B0);
  }

  return result;
}

unint64_t sub_252D2CC04()
{
  result = qword_27F5458B8;
  if (!qword_27F5458B8)
  {
    result = swift_getWitnessTable(aM_15, &type metadata for HomeAutomationCATsSimple.ConfirmationLabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F5458B8);
  }

  return result;
}

unint64_t sub_252D2CC58(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252D2CCA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252D2CCF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252D2CD3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252D2CDB4()
{
  v1 = v0;
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D5C128])
  {
    (*(v3 + 8))(v5, v2);
    return 0x65746E4933764C4ELL;
  }

  else if (v6 == *MEMORY[0x277D5C158])
  {
    (*(v3 + 96))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);

    v8 = sub_252E358D4();
    (*(*(v8 - 8) + 8))(v5, v8);
    return 0xD00000000000001ELL;
  }

  else if (v6 == *MEMORY[0x277D5C150])
  {
    (*(v3 + 8))(v5, v2);
    return 0xD000000000000010;
  }

  else if (v6 == *MEMORY[0x277D5C160])
  {
    (*(v3 + 8))(v5, v2);
    return 5198677;
  }

  else if (v6 == *MEMORY[0x277D5C168])
  {
    return 0x7974706D65;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_252D2D064()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_2814B0AF0);
    sub_252CC4050(0xD00000000000007BLL, 0x8000000252E956D0, 0xD000000000000078, 0x8000000252E95750, 0x74696E696564, 0xE600000000000000, 26);
    sub_252D2DCB0();
  }

  return swift_deallocClassInstance();
}

id sub_252D2D190(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 0;
  *(v4 + 56) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;

  sub_252E32E74();
  v12 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v13 = sub_252E32E44();
  v14 = [v12 initWithNSUUID_];

  (*(v9 + 8))(v11, v8);
  *(v4 + 64) = v14;
  *(v4 + 72) = 0;
  result = [objc_allocWithZone(MEMORY[0x277D57500]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v4 + 40) = result;
  result = [objc_allocWithZone(MEMORY[0x277D57500]) init];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = result;

  *(v4 + 48) = v16;
  if ((sub_252D2D3DC() & 1) == 0)
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_2814B0AF0);
    v18 = sub_252E36AC4();
    v19 = sub_252E374D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_252917000, v18, v19, "Couldn't log start event", v20, 2u);
      MEMORY[0x2530AED00](v20, -1, -1);
    }

    return 0;
  }

  return v4;
}

uint64_t sub_252D2D3DC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (!v2)
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_2814B0AF0);
    v3 = sub_252E36AC4();
    v20 = sub_252E374D4();
    if (os_log_type_enabled(v3, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_252917000, v3, v20, "Couldn't initialize start FLOWSchemaFLOWDomainExecutionContext", v21, 2u);
      MEMORY[0x2530AED00](v21, -1, -1);
    }

    goto LABEL_16;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
  if (!v4)
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_2814B0AF0);
    v23 = sub_252E36AC4();
    v24 = sub_252E374D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_252917000, v23, v24, "Couldn't initialize FLOWSchemaFLOWDomainExecutionStarted", v25, 2u);
      MEMORY[0x2530AED00](v25, -1, -1);
    }

LABEL_16:
    return 0;
  }

  v5 = v4;
  [v4 setDomainExecutionType_];
  [v5 setDomainExecutionMetadata_];
  [v3 setStartedOrChanged:v5];
  v6 = *(v0 + 64);
  [v3 setContextId:v6];
  v7 = *(v0 + 40);
  [*(v1 + 40) setFlowDomainExecutionContext_];
  sub_252E33804();

  v8 = v7;
  sub_252E337F4();
  sub_252E336C4();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_252E336D4();
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (qword_2814B0AE8 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_2814B0AF0);

  v10 = sub_252E36AC4();
  v11 = sub_252E374B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v12 = 136315394;
    v15 = sub_252E37624();
    v17 = sub_252BE2CE0(v15, v16, v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v6;
    *v13 = v6;
    v18 = v6;
    _os_log_impl(&dword_252917000, v10, v11, "    Sent FLOWSchemaFLOWDomainExecutionStarted:\n        type: %s\n        contextId: %@", v12, 0x16u);
    sub_252AE65A8(v13);
    MEMORY[0x2530AED00](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530AED00](v14, -1, -1);
    MEMORY[0x2530AED00](v12, -1, -1);
  }

  return 1;
}

void sub_252D2D83C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v26)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D57530]) init];
    if (v4)
    {
      v5 = v4;
      [v26 setEnded:v4];
      v6 = v2[8];
      [v26 setContextId:v6];
      v7 = v2[6];
      [v3[6] setFlowDomainExecutionContext_];
      sub_252E33804();

      v8 = v7;
      sub_252E337F4();
      sub_252E336C4();
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_252E336D4();
      __swift_destroy_boxed_opaque_existential_1(v27);
      *(v3 + 16) = 1;
      if (qword_2814B0AE8 != -1)
      {
        swift_once();
      }

      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_2814B0AF0);

      v10 = sub_252E36AC4();
      v11 = sub_252E374B4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v27[0] = v14;
        *v12 = 136315394;
        v15 = sub_252E37624();
        v17 = sub_252BE2CE0(v15, v16, v27);

        *(v12 + 4) = v17;
        *(v12 + 12) = 2112;
        *(v12 + 14) = v6;
        *v13 = v6;
        v18 = v6;
        _os_log_impl(&dword_252917000, v10, v11, "    Sent FLOWSchemaFLOWDomainExecutionEnded:\n        type: %s\n        contextId: %@", v12, 0x16u);
        sub_252AE65A8(v13);
        MEMORY[0x2530AED00](v13, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x2530AED00](v14, -1, -1);
        MEMORY[0x2530AED00](v12, -1, -1);
      }

      return;
    }

    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_2814B0AF0);
    v23 = sub_252E36AC4();
    v24 = sub_252E374D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_252917000, v23, v24, "Couldn't initialize FLOWSchemaFLOWDomainExecutionEnded", v25, 2u);
      MEMORY[0x2530AED00](v25, -1, -1);
    }
  }

  else
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_2814B0AF0);
    v26 = sub_252E36AC4();
    v20 = sub_252E374D4();
    if (os_log_type_enabled(v26, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_252917000, v26, v20, "Couldn't initialize end FLOWSchemaFLOWDomainExecutionContext", v21, 2u);
      MEMORY[0x2530AED00](v21, -1, -1);
    }
  }
}

void sub_252D2DCB0()
{
  v1 = v0;
  v24 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v24)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D57538]) init];
    if (v2)
    {
      v3 = v2;
      [v24 setFailed:v2];
      v4 = *(v0 + 64);
      [v24 setContextId:v4];
      v5 = *(v0 + 48);
      [*(v1 + 48) setFlowDomainExecutionContext_];
      sub_252E33804();

      v6 = v5;
      sub_252E337F4();
      sub_252E336C4();
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      sub_252E336D4();
      __swift_destroy_boxed_opaque_existential_1(v25);
      if (qword_2814B0AE8 != -1)
      {
        swift_once();
      }

      v7 = sub_252E36AD4();
      __swift_project_value_buffer(v7, qword_2814B0AF0);

      v8 = sub_252E36AC4();
      v9 = sub_252E374D4();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25[0] = v12;
        *v10 = 136315394;
        v13 = sub_252E37624();
        v15 = sub_252BE2CE0(v13, v14, v25);

        *(v10 + 4) = v15;
        *(v10 + 12) = 2112;
        *(v10 + 14) = v4;
        *v11 = v4;
        v16 = v4;
        _os_log_impl(&dword_252917000, v8, v9, "    Sent FLOWSchemaFLOWDomainExecutionFailed\n        type: %s\n        contextId: %@", v10, 0x16u);
        sub_252AE65A8(v11);
        MEMORY[0x2530AED00](v11, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x2530AED00](v12, -1, -1);
        MEMORY[0x2530AED00](v10, -1, -1);
      }

      return;
    }

    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_2814B0AF0);
    v21 = sub_252E36AC4();
    v22 = sub_252E374D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_252917000, v21, v22, "Couldn't initialize FLOWSchemaFLOWDomainExecutionFailed", v23, 2u);
      MEMORY[0x2530AED00](v23, -1, -1);
    }
  }

  else
  {
    if (qword_2814B0AE8 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_2814B0AF0);
    v24 = sub_252E36AC4();
    v18 = sub_252E374D4();
    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_252917000, v24, v18, "Couldn't initialize failed FLOWSchemaFLOWDomainExecutionContext", v19, 2u);
      MEMORY[0x2530AED00](v19, -1, -1);
    }
  }
}

uint64_t sub_252D2E100()
{
  v0 = sub_252CC5E24(qword_2864AF070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A28, &qword_252E50370);
  result = swift_arrayDestroy();
  off_27F5458C0 = v0;
  return result;
}

uint64_t sub_252D2E184(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return (sub_252D2E5CC)(a2);
}

void *sub_252D2E234@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockUnsupportedTasksHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252D2E270(void *a1)
{
  v1 = a1;
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v3 = result;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = type metadata accessor for HomeStore(0);
  v6 = static HomeStore.shared.getter(v5);
  v7 = HomeStore.accessories(matching:supporting:)(v4, 0);
  v9 = v8;

  if (v9)
  {
    v10 = v7;
    v11 = 1;
LABEL_41:
    sub_252929F10(v10, v11);
    return 0;
  }

  v12 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!(v7 >> 62))
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_40:
    v10 = v7;
    v11 = 0;
    goto LABEL_41;
  }

  while (1)
  {
    v13 = sub_252E378C4();
    if (!v13)
    {
      goto LABEL_40;
    }

LABEL_6:
    v36 = v13;
    if (qword_27F53F6E0 != -1)
    {
      swift_once();
    }

    v14 = off_27F5458C0 + 64;
    v15 = 1 << *(off_27F5458C0 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(off_27F5458C0 + 8);
    v18 = (v15 + 63) >> 6;
    v35 = v7;
    v40 = v7 + 32;
    v41 = v7 & 0xC000000000000001;
    v39 = off_27F5458C0;

    v19 = 0;
    v37 = v18;
    v38 = v14;
    if (v17)
    {
      break;
    }

LABEL_12:
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v18)
      {
        sub_252929F10(v35, 0);

        return 0;
      }

      v17 = *&v14[8 * v7];
      ++v19;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  while (1)
  {
    v7 = v19;
LABEL_15:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = (v7 << 9) | (8 * v20);
    v22 = *(v39[6] + v21);
    v23 = *(v39[7] + v21);

    v24 = 0;
LABEL_16:
    if (v41)
    {
      v25 = MEMORY[0x2530ADF00](v24, v35);
      v26 = __OFADD__(v24++, 1);
      if (v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v24 >= *(v12 + 16))
      {
        goto LABEL_38;
      }

      v25 = *(v40 + 8 * v24);

      v26 = __OFADD__(v24++, 1);
      if (v26)
      {
        goto LABEL_37;
      }
    }

    if ((*(*v25 + 256))() == v22)
    {
      break;
    }

LABEL_32:
    v19 = v7;
    v18 = v37;
    v14 = v38;
    if (!v17)
    {
      goto LABEL_12;
    }
  }

  v27 = [v1 userTask];
  if (v27)
  {
    v28 = v12;
    v29 = v1;
    v30 = v27;
    v31 = [v27 attribute];

    v1 = v29;
    v12 = v28;
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v23 + 16);
  v33 = 32;
  do
  {
    if (!v32)
    {

      goto LABEL_32;
    }

    v34 = *(v23 + v33);
    v33 += 8;
    --v32;
  }

  while (v34 != v31);

  if (v24 != v36)
  {
    goto LABEL_16;
  }

  sub_252929F10(v35, 0);
  return 1;
}

uint64_t sub_252D2E5CC()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D2E668, 0, 0);
}

uint64_t sub_252D2E668()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E95810, 0xD000000000000083, 0x8000000252E95840);

  sub_252E362B4();

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_25295A234;
  v3 = *(v0 + 24);

  return sub_25295959C(v3);
}

void sub_252D2E7D4(void *a1, void (*a2)(char *), uint64_t a3)
{
  v140 = sub_252E32E04();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_252E32E84();
  v143 = *(v144 - 1);
  MEMORY[0x28223BE20](v144);
  v142 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E36AB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v136 = v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v141 = v130 - v13;
  v137 = v14;
  MEMORY[0x28223BE20](v12);
  v146 = v130 - v15;
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_2814B09D8);
  aBlock = 0;
  v153 = 0xE000000000000000;
  sub_252E379F4();

  aBlock = 0xD00000000000002ELL;
  v153 = 0x8000000252E95920;
  v17 = [a1 description];
  v18 = sub_252E36F34();
  v20 = v19;

  MEMORY[0x2530AD570](v18, v20);

  sub_252CC4A5C(aBlock, v153, 1, 0xD00000000000008CLL, 0x8000000252E95950);

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v150 = a2;
  v151 = a3;
  v21[4] = a3;
  v22 = qword_27F53F498;

  v23 = a1;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v16, qword_27F544C70);
  v149 = "or AutomateHome Scene intent:\n";
  sub_252CC3D90(0x6574616D6F747541, 0xEE00656E65635320, 0xD00000000000008CLL, 0x8000000252E95950);
  v25 = sub_252D30828(v23);
  if (!v25)
  {
    v37 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
    v38 = OBJC_IVAR___AutomateHomeIntentResponse_code;
    swift_beginAccess();
    *&v37[v38] = 5;
    [v37 setUserActivity_];
    v150(v37);

    return;
  }

  v27 = v25;
  v28 = v26;
  v145 = v16;
  v134 = v9;
  v135 = v8;
  v29 = type metadata accessor for HomeStore(0);
  v30 = static HomeStore.shared.getter(v29);
  v148 = v28;

  v32 = HomeStore.scenes(matching:)(v31);
  v34 = v33;

  if (v34)
  {
    aBlock = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    swift_willThrowTypedImpl();
    sub_252929F10(v32, 1);
    v35 = v148;
    v36 = v149;
LABEL_46:
    v128 = v150;
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v145, qword_27F544CE8);
    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E959E0, 0xD00000000000008CLL, v36 | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E80020, 42);
    sub_252DB7C84(v129);
    sub_252DB649C(0, 0, 1);

    v128(v147[3]);

    return;
  }

  v36 = v149;
  if (!(v32 >> 62))
  {
    v35 = v148;
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_45:
    sub_252929F10(v32, 0);
    goto LABEL_46;
  }

  v127 = sub_252E378C4();
  v35 = v148;
  if (!v127)
  {
    goto LABEL_45;
  }

LABEL_11:
  v131 = v23;
  if ((v32 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2530ADF00](0, v32);
  }

  else
  {
    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_51:
      swift_once();
      goto LABEL_18;
    }

    v16 = *(v32 + 32);
  }

  sub_252929F10(v32, 0);
  v39 = *&v35[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask];
  v40 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v41 = v39;

  v42 = [v40 init];
  [v42 setUserTask_];
  type metadata accessor for HomeFilter();
  v43 = sub_252E37254();

  [v42 setFilters_];

  [v42 setTime_];
  v44 = [v42 filters];
  v45 = MEMORY[0x277D84F90];
  v133 = v27;
  if (v44)
  {
    v46 = v44;
    v47 = sub_252E37264();

    v45 = sub_252DD5A58(v47);
  }

  v48 = v149;
  v49 = sub_252C758E0(v45);

  v27 = sub_252DD6238(v49);

  v50 = v148;
  if (!v27)
  {
    v24 = 0xD00000000000008CLL;
    sub_2529515FC(3, 6, 0xD000000000000018, 0x8000000252E95A10);
    if (qword_27F53F4C0 == -1)
    {
LABEL_28:
      __swift_project_value_buffer(v145, qword_27F544CE8);
      sub_252CC4050(v24 - 93, 0x8000000252E95A30, 0xD00000000000008CLL, v48 | 0x8000000000000000, v24 - 114, 0x8000000252E80020, 49);
      sub_252DB7C84(v74);
      sub_252DB649C(0, 0, 1);

      v150(v147[2]);

      return;
    }

LABEL_55:
    swift_once();
    goto LABEL_28;
  }

  aBlock = 0;
  v153 = 0xE000000000000000;
  sub_252E379F4();

  aBlock = 0xD000000000000029;
  v153 = 0x8000000252E800A0;
  v51 = sub_2529E8734();
  MEMORY[0x2530AD570](v51);

  sub_252CC3D90(aBlock, v153, 0xD00000000000008CLL, v48 | 0x8000000000000000);

  sub_252CC3D90(0xD000000000000012, 0x8000000252E800D0, 0xD00000000000008CLL, v48 | 0x8000000000000000);
  if (qword_27F53F580 != -1)
  {
    goto LABEL_51;
  }

LABEL_18:
  v50 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v132 = sub_252D2D190(205, 0x6E776F6E6B6E75, 0xE700000000000000);
  v52 = OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate;
  v53 = [*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252D30E74(&qword_27F53FBB0, sub_25292A2F8, MEMORY[0x277D85378]);
  v54 = sub_252E373A4();

  v55 = sub_2529A37B0(v54);

  v56 = sub_2529E82CC(v133, v55);

  if (v56 >> 62)
  {
    v57 = sub_252E378C4();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v148;
  v130[1] = v27;
  if (v57)
  {
    v130[0] = v16;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x2530ADF00](0, v56);
      goto LABEL_24;
    }

    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v58 = *(v56 + 32);
LABEL_24:
      v59 = v58;

      aBlock = 0;
      v153 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E80110);
      v60 = [v59 uniqueIdentifier];
      v61 = v142;
      sub_252E32E64();

      sub_252D30E74(&qword_27F5404A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v62 = v144;
      v63 = sub_252E37D94();
      MEMORY[0x2530AD570](v63);

      (v143)[1](v61, v62);
      MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E80150);
      sub_252CC4050(aBlock, v153, 0xD00000000000008CLL, v149 | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E80020, 61);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C130;
      *(inited + 32) = v130[0];

      v65 = sub_252D30330(v59, inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (v132)
      {
        v66 = [v131 verb];
        v67 = sub_252E36F34();
        v69 = v68;

        sub_252D2D83C(v67, v69);
        v48 = v148;
      }

      v70 = sub_252E375C4();
      v71 = v50;
      v72 = v146;
      v73 = sub_252E36A74(v70, &dword_252917000, v71, "HomeKitTriggerConfigurationTime", 31, 2, v146, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
      sub_252DB7C84(v73);
      sub_252DB649C(0, 0, 1);

      v150(v65);

      (*(v134 + 8))(v72, v135);
      return;
    }

    __break(1u);
    goto LABEL_55;
  }

  objc_opt_self();
  v75 = swift_dynamicCastObjCClass();
  v149 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v144 = *(v16 + v52);
  v76 = v134;
  v77 = *(v134 + 16);
  v78 = v137 + 7;
  if (!v75)
  {
    v106 = v136;
    v107 = v135;
    v77(v136, v146, v135);
    v108 = (*(v76 + 80) + 56) & ~*(v76 + 80);
    v109 = (v78 + v108) & 0xFFFFFFFFFFFFFFF8;
    v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    v112 = v151;
    *(v111 + 2) = v150;
    *(v111 + 3) = v112;
    *(v111 + 4) = v147;
    *(v111 + 5) = sub_252B40DF0;
    *(v111 + 6) = v21;
    (*(v76 + 32))(&v111[v108], v106, v107);
    *&v111[v109] = v132;
    v113 = v133;
    *&v111[v110] = v133;
    *&v111[(v110 + 15) & 0xFFFFFFFFFFFFFFF8] = v16;
    v114 = swift_allocObject();

    v115 = v113;

    v116 = sub_252B8DF84(v131);
    *(v114 + 16) = v116;
    v117 = sub_252DB7C84(v116)[5];

    v118 = v138;
    sub_252E32DF4();
    sub_252E32D44();
    v120 = v119;
    (*(v139 + 8))(v118, v140);
    v121 = v120 * 1000.0;
    if (COERCE__INT64(fabs(v120 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v118 = MEMORY[0x277D84F90];
      if (v121 > -9.22337204e18)
      {
        if (v121 < 9.22337204e18)
        {
          *(v117 + 16) = v121;

          if (!(v118 >> 62))
          {
LABEL_43:
            v122 = swift_allocObject();
            v122[2] = v115;
            v122[3] = v114;
            v122[4] = sub_252D30EBC;
            v122[5] = v111;
            v123 = v144;
            v122[6] = v118;
            v122[7] = v123;
            v156 = sub_252B40E60;
            v157 = v122;
            aBlock = MEMORY[0x277D85DD0];
            v153 = 1107296256;
            v154 = sub_2529E0210;
            v155 = &block_descriptor_22;
            v124 = _Block_copy(&aBlock);
            v125 = v115;

            v126 = v123;

            [v149 addTrigger:v125 completionHandler:v124];
            _Block_release(v124);

            (*(v134 + 8))(v146, v135);

            return;
          }

LABEL_63:
          sub_252E378C4();
          goto LABEL_43;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v79 = v75;
  v130[0] = v16;
  v80 = v135;
  v77(v141, v146, v135);
  v81 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v82 = (v78 + v81) & 0xFFFFFFFFFFFFFFF8;
  v143 = v79;
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_252B40DF0;
  *(v86 + 24) = v21;
  v87 = v86 + v81;
  v88 = v130[0];
  (*(v76 + 32))(v87, v141, v80);
  *(v86 + v82) = v132;
  v89 = v147;
  *(v86 + v83) = v147;
  *(v86 + v84) = v143;
  *(v86 + v85) = v88;
  v90 = (v86 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8));
  v91 = v151;
  *v90 = v150;
  v90[1] = v91;
  v92 = swift_allocObject();
  v93 = v143;

  v94 = v133;

  v95 = sub_252B8DF84(v131);
  *(v92 + 16) = v95;
  v96 = sub_252DB7C84(v95)[5];

  v97 = v138;
  sub_252E32DF4();
  sub_252E32D44();
  v99 = v98;
  (*(v139 + 8))(v97, v140);
  v100 = v99 * 1000.0;
  if (COERCE__INT64(fabs(v99 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_57;
  }

  v89 = v148;
  if (v100 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v100 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v96 + 16) = v100;

  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_59:
    sub_252E378C4();
  }

  v101 = qword_27F53F4E8;
  v102 = v94;
  if (v101 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v145, qword_27F544D60);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E801B0, 0xD000000000000071, 0x8000000252E801E0);
  sub_252BF1D38(v93, MEMORY[0x277D84F90], v144);
  v103 = swift_allocObject();
  v103[2] = v93;
  v103[3] = v92;
  v103[4] = sub_252D30F94;
  v103[5] = v86;
  v156 = sub_252B40F60;
  v157 = v103;
  aBlock = MEMORY[0x277D85DD0];
  v153 = 1107296256;
  v154 = sub_252BF09C4;
  v155 = &block_descriptor_20_0;
  v104 = _Block_copy(&aBlock);
  v105 = v102;

  [v149 addEventTriggerFromBuilder:v93 completionHandler:v104];
  _Block_release(v104);

  (*(v134 + 8))(v146, v135);
}

void sub_252D2FE00(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t, void *), int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void (*a10)(void), uint64_t a11)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = a9;

    v16 = sub_252D30330(a8, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    a3(a5, a6, v16);
  }

  else
  {
    if (a2)
    {
      v17 = a7;
      v19 = a2;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544C70);
      sub_252E379F4();

      swift_getErrorValue();
      v21 = sub_252E37E54();
      MEMORY[0x2530AD570](v21);

      sub_252CC4050(0xD00000000000001CLL, 0x8000000252E80290, 0xD00000000000008CLL, 0x8000000252E95950, 0xD00000000000001ALL, 0x8000000252E80020, 77);

      a7 = v17;
    }

    a10(*(a7 + 32));
  }
}

void sub_252D30010(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *), uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (a1)
  {
    v13 = a1;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544C70);
    sub_252E379F4();

    swift_getErrorValue();
    v15 = sub_252E37E54();
    MEMORY[0x2530AD570](v15);

    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E80290, 0xD00000000000008CLL, 0x8000000252E95950, 0xD00000000000001ALL, 0x8000000252E80020, 84);

    sub_252DB7C84(v16);
    sub_252DB649C(0, 0, 1);

    a2(*(a4 + 32));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = a10;

    v21 = sub_252D30330(a9, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    a5(a7, a8, v21);
  }
}

id sub_252D30258(void *a1)
{
  result = [a1 automatableTask];
  if (result)
  {
    v2 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v5 = [v4 attribute];
      return (v5 == 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_252D302F4()
{
  type metadata accessor for AutomateHomeIntentSceneHandleDelegate();
  v0 = swift_allocObject();
  sub_252B3E6EC();
  return v0;
}

id sub_252D30330(void *a1, unint64_t a2)
{
  v33 = a1;
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v10 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v9[v10] = 4;
  v35 = v9;
  [v9 setUserActivity_];
  if (a2 >> 62)
  {
    goto LABEL_18;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v3; v11; i = v3)
  {
    v12 = 0;
    v37 = a2 & 0xFFFFFFFFFFFFFF8;
    v38 = a2 & 0xC000000000000001;
    v36 = v4 + 32;
    v13 = MEMORY[0x277D84F90];
    while (v38)
    {
      v14 = a2;
      v15 = MEMORY[0x2530ADF00](v12, a2);
      a2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      (*(v4 + 16))(v8, v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2529F8324(0, v13[2] + 1, 1, v13);
      }

      v17 = v13[2];
      v16 = v13[3];
      if (v17 >= v16 >> 1)
      {
        v13 = sub_2529F8324((v16 > 1), v17 + 1, 1, v13);
      }

      v13[2] = v17 + 1;
      v18 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17;
      v3 = i;
      (*(v4 + 32))(v18, v8, i);
      ++v12;
      v19 = a2 == v11;
      a2 = v14;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    if (v12 >= *(v37 + 16))
    {
      goto LABEL_17;
    }

    v14 = a2;
    v15 = *(a2 + 8 * v12 + 32);

    a2 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v11 = sub_252E378C4();
  }

  v13 = MEMORY[0x277D84F90];
LABEL_20:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544C70);
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E95A60);
  v21 = v33;
  v22 = [v33 uniqueIdentifier];
  v23 = v34;
  sub_252E32E64();

  sub_252D30E74(&qword_27F5404A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v24 = i;
  v25 = sub_252E37D94();
  MEMORY[0x2530AD570](v25);

  v26 = *(v4 + 8);
  v26(v23, v24);
  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v27 = MEMORY[0x2530AD730](v13, v24);
  MEMORY[0x2530AD570](v27);

  sub_252CC3D90(v40, v41, 0xD000000000000087, 0x8000000252E90DC0);

  v28 = [v21 uniqueIdentifier];
  sub_252E32E64();

  v29 = sub_252E32E44();
  v26(v23, v24);
  v30 = v35;
  [v35 setAutomationIdentifier_];

  v31 = sub_252E37254();

  [v30 setAutomatedEntityIdentifiers_];

  return v30;
}

id sub_252D30828(void *a1)
{
  v2 = [a1 automatableTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  type metadata accessor for ControlAutomateHomeIntent();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_6:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544C70);
    sub_252CC4050(0xD000000000000048, 0x8000000252E90C80, 0xD000000000000087, 0x8000000252E90DC0, 0x5F28706172776E75, 0xEA0000000000293ALL, 62);
    return 0;
  }

  v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v6 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v7 = v5;

  v8 = [v6 init];
  [v8 setUserTask_];
  type metadata accessor for HomeFilter();
  v9 = sub_252E37254();

  [v8 setFilters_];

  [v8 setTime_];
  v10 = [v8 filters];
  if (v10)
  {
    v11 = v10;
    v12 = sub_252E37264();

    v13 = sub_252DD5A58(v12);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = sub_252C758E0(v13);

  v16 = sub_252DD6238(v15);

  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  if (([v17 areAutomationBuildersSupported] & 1) == 0)
  {

LABEL_18:
    v24 = [a1 trigger];
    if (v24)
    {
      v25 = v24;
      v26 = sub_252DEC30C();

      if (v26)
      {
        return v26;
      }
    }

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E90E70);
    [a1 trigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F8, &unk_252E594B8);
    v28 = sub_252E36F94();
    MEMORY[0x2530AD570](v28);

    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E95A90);
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000087, 0x8000000252E90DC0, 0x5F28706172776E75, 0xEA0000000000293ALL, 77);

    goto LABEL_25;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E95AB0);
  [a1 trigger];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F8, &unk_252E594B8);
  v19 = sub_252E36F94();
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000087, 0x8000000252E90DC0);

  v20 = [a1 trigger];
  if (v20)
  {
    v21 = v20;
    v22 = sub_252DEB354(v17);

    if (v22)
    {

      return v22;
    }
  }

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E90E70);
  [a1 trigger];
  v29 = sub_252E36F94();
  MEMORY[0x2530AD570](v29);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E95A90);
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000087, 0x8000000252E90DC0, 0x5F28706172776E75, 0xEA0000000000293ALL, 71);

LABEL_25:

  return 0;
}

uint64_t sub_252D30E74(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_252D30EBC(void *a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_252D30010(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_252D30F94(uint64_t a1, void *a2)
{
  v5 = *(sub_252E36AB4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_252D2FE00(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_252D31084()
{

  sub_252E362B4();
}

BOOL sub_252D31118(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v2) == 113;
}

uint64_t sub_252D3117C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252D311A0, 0, 0);
}

uint64_t sub_252D311A0()
{
  v1 = *(v0 + 24);
  v2 = v1[12];
  v3 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v2);

  sub_252943B8C(sub_252D312D4, v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

void *sub_252D31270@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for InvalidInputForCurrentDeviceStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D31308()
{
  type metadata accessor for BatteryHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252D31338(void *a1, uint64_t a2)
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      type metadata accessor for MutableHomeUserTask();
      swift_initStackObject();
      v9 = v5;
      sub_252D6CA80(v9)[3] = a2;
      type metadata accessor for ControlHomeIntent.Builder();
      swift_allocObject();
      v10 = ControlHomeIntent.Builder.init()();
      v11 = sub_252D6CB58();
      v12 = (*(*v10 + 184))();

      v13 = sub_252B4EEFC(v8);

      v14 = (*(*v12 + 208))(v13);

      v16 = (*(*v14 + 224))(v15);

      return v16;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000074, 0x8000000252E6D740, 0xD000000000000017, 0x8000000252E95C00, 130);
  return 0;
}

void sub_252D31590(void *a1, void (*a2)(char *))
{
  v4 = [a1 filters];
  if (!v4)
  {
LABEL_6:
    if (qword_27F53F498 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [a1 userTask];
  if (!v7)
  {

    goto LABEL_6;
  }

  v55 = v7;
  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = HomeStore.services(matching:supporting:)(v6, 0);
  v12 = v11;

  if (v12)
  {
    sub_252929F10(v10, 1);

    v13 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v14 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v13[v14] = 102;
    [v13 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v15 = sub_252E37254();
    [v13 setEntityResponses_];

    a2(v13);
    return;
  }

  v57 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    v20 = sub_252E378C4();
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_23:
    v24 = MEMORY[0x277D84F90];
LABEL_24:
    sub_252929F10(v10, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_252E3C130;
    v26 = v55;
    *(v25 + 32) = v55;
    v56 = v25;
    v27 = *(v24 + 16);
    v28 = 32;
    do
    {
      if (!v27)
      {
        v39 = v55;
        goto LABEL_36;
      }

      v29 = *(v24 + v28);
      v28 += 8;
      --v27;
    }

    while (v29 != 43);
    v30 = v55;
    v31 = [a1 userTask];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 attribute];

      if (v33 == 43)
      {
        v34 = sub_252D31338(a1, 45);
        if (v34)
        {
          v35 = v34;
          v36 = [v34 userTask];
          if (v36)
          {
            v37 = v36;

            v38 = v37;
            MEMORY[0x2530AD700]();
            if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
              v26 = v55;
            }

            sub_252E372D4();

LABEL_44:
            v25 = v56;
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      sub_252C515AC();
    }

LABEL_36:
    v40 = *(v24 + 16);
    v41 = 32;
    do
    {
      if (!v40)
      {

        goto LABEL_46;
      }

      v42 = *(v24 + v41);
      v41 += 8;
      --v40;
    }

    while (v42 != 43);

    v43 = sub_252D31338(a1, 43);
    if (!v43)
    {
      goto LABEL_46;
    }

    v44 = v43;
    v45 = [v43 userTask];
    if (v45)
    {
      v46 = v45;
      MEMORY[0x2530AD700]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
        v26 = v55;
      }

      sub_252E372D4();

      goto LABEL_44;
    }

LABEL_46:
    v47 = sub_252B4CA9C(v6, v25, 0, 1);
    v49 = v48;

    if (v49)
    {
      v50 = v47;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v51 = sub_252E36AD4();
      __swift_project_value_buffer(v51, qword_27F544C70);
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E95B80, 0xD000000000000021, 0x8000000252E68B10, 54);

      v52 = parse(error:with:)(v47, a1);
      (a2)();

      sub_252927D3C(v47);
      sub_252927D3C(v47);
    }

    else
    {
      v53 = v47;
      sub_252990634();
      a2(v53);

      sub_252927D3C(v47);
      sub_252927D3C(v47);
    }

    return;
  }

  v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_23;
  }

LABEL_10:
  v54 = a2;
  v21 = 0;
  a2 = (v10 & 0xC000000000000001);
  while (a2)
  {
    MEMORY[0x2530ADF00](v21, v10);
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      v24 = v57;
      a2 = v54;
      goto LABEL_24;
    }

LABEL_14:
    v23 = sub_252CD95D8();

    sub_25297A864(v23);
    ++v21;
    if (v22 == v20)
    {
      goto LABEL_19;
    }
  }

  if (v21 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_7:
  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007BLL, 0x8000000252E95B80, 0xD000000000000021, 0x8000000252E68B10, 24);
  v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v18 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v17[v18] = 109;
  [v17 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v19 = sub_252E37254();
  [v17 setEntityResponses_];

  a2(v17);
}

BOOL sub_252D31D1C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_15:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  if ([v2 taskType] == 4)
  {

    goto LABEL_5;
  }

  v4 = [v3 taskType];

  if (v4 == 5)
  {
LABEL_5:
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      if (v7 == 43)
      {
        return 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v8 = [a1 userTask];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 attribute];

      if (v10 == 45)
      {
        return 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v12 = [a1 userTask];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 attribute];

      return v14 == 44;
    }

    goto LABEL_15;
  }

  return 0;
}

unint64_t ControlHomeFlashlightReformationFlow.Scenario.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_252D31EA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "CurrentTemperature";
  }

  else
  {
    v4 = "reformToSettingsLight";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = "reformToSettingsLight";
  }

  else
  {
    v7 = "CurrentTemperature";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252D31F54()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D31FD4(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D32040(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D320C8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "reformToSettingsLight";
  }

  else
  {
    v3 = "CurrentTemperature";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_252D32114@<X0>(char *a4@<X8>)
{
  v5 = sub_252E37B74();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t ControlHomeFlashlightReformationFlow.State.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

uint64_t sub_252D321B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x6C616974696E69;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x8000000252E68790;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x6C616974696E69;
  }

  if (*a2)
  {
    v6 = 0x8000000252E68790;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D32260()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D322E8(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D3235C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D323EC(unint64_t *a1@<X8>)
{
  v2 = 0x8000000252E68790;
  v3 = 0x6C616974696E69;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_252D32430(const void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  v7 = *MEMORY[0x277D5BED0];
  v8 = sub_252E33DE4();
  (*(*(v8 - 8) + 104))(v3 + v6, v7, v8);
  v9 = (v3 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_settingsPluginBundleID);
  *v9 = 0xD000000000000029;
  v9[1] = 0x8000000252E95EB0;
  memcpy((v3 + 16), a1, 0x1F8uLL);
  v10 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse;
  v11 = sub_252E34164();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3 + v10, a2, v11);
  *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_state) = 0;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_252E36F04();
  v16 = [v14 initWithSuiteName_];

  *(inited + 16) = v16;
  LODWORD(inited) = sub_2529AEF14();

  (*(v12 + 8))(a2, v11);
  *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario) = inited != 3;
  return v3;
}

uint64_t sub_252D3260C(uint64_t a1)
{
  v2[416] = v1;
  v2[415] = a1;
  v3 = sub_252E36AB4();
  v2[417] = v3;
  v2[418] = *(v3 - 8);
  v2[419] = swift_task_alloc();
  v4 = sub_252E33DE4();
  v2[420] = v4;
  v2[421] = *(v4 - 8);
  v2[422] = swift_task_alloc();
  v2[423] = swift_task_alloc();
  v5 = sub_252E34284();
  v2[424] = v5;
  v2[425] = *(v5 - 8);
  v2[426] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540320, &qword_252E3C1A0);
  v2[427] = swift_task_alloc();
  v6 = sub_252E34354();
  v2[428] = v6;
  v2[429] = *(v6 - 8);
  v2[430] = swift_task_alloc();
  v2[431] = swift_task_alloc();
  v7 = sub_252E341A4();
  v2[432] = v7;
  v2[433] = *(v7 - 8);
  v2[434] = swift_task_alloc();
  sub_252E34104();
  v2[435] = swift_task_alloc();
  v8 = sub_252E339C4();
  v2[436] = v8;
  v2[437] = *(v8 - 8);
  v2[438] = swift_task_alloc();
  v9 = sub_252E34164();
  v2[439] = v9;
  v2[440] = *(v9 - 8);
  v2[441] = swift_task_alloc();
  v2[442] = swift_task_alloc();
  v2[443] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D3298C, 0, 0);
}

uint64_t sub_252D3298C()
{
  v193 = v0;
  v1 = v0;
  v2 = v0[416];
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario;
  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario))
  {
    v4 = "reformToSettingsLight";
  }

  else
  {
    v4 = "CurrentTemperature";
  }

  v5 = 0x8000000252E68740;
  if ((*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_scenario) & 1) == 0 && (v4 | 0x8000000000000000) == 0x8000000252E68740)
  {

LABEL_8:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = v1[443];
    v8 = v1[442];
    v9 = v1[440];
    v10 = v1[439];
    v189 = v1[437];
    v191 = v1[436];
    v185 = v1[438];
    v11 = v1[416];
    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544DA8);
    sub_252E379F4();

    __dst[0] = 0xD000000000000026;
    __dst[1] = 0x8000000252E95D80;
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = sub_252E36F04();
    v15 = [v13 integerForKey_];

    v1[414] = v15;
    v16 = sub_252E37D94();
    MEMORY[0x2530AD570](v16);

    sub_252CC4050(__dst[0], __dst[1], 0xD00000000000008BLL, 0x8000000252E95C50, 0x2865747563657865, 0xE900000000000029, 71);

    memcpy(v1 + 254, (v11 + 16), 0x1F8uLL);
    v17 = v11;
    memcpy(__dst, (v11 + 16), 0x1F8uLL);
    v18 = *(v9 + 16);
    v18(v8, v17 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse, v10);
    sub_2529353AC((v1 + 254), (v1 + 317));
    sub_25294CF38(__dst, v8, v7);
    v19 = *(v9 + 8);
    v19(v8, v10);
    memcpy(v1 + 191, __dst, 0x1F8uLL);
    sub_252935408((v1 + 191));
    v18(v8, v7, v10);

    sub_252E340F4();
    sub_252E339B4();
    sub_252E33B34();
    (*(v189 + 8))(v185, v191);
    v19(v7, v10);
    goto LABEL_11;
  }

  v6 = sub_252E37DB4();

  if (v6)
  {
    goto LABEL_8;
  }

  if (*(v2 + v3))
  {
    v5 = 0x8000000252E68760;
  }

  if (*(v2 + v3) == 1 && 0x8000000252E68760 == v5)
  {
  }

  else
  {
    v22 = sub_252E37DB4();

    if ((v22 & 1) == 0)
    {
      sub_252E33B24();
      goto LABEL_11;
    }
  }

  v23 = v1[416];
  if ((*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_state) & 1) == 0)
  {
    *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_state) = 1;
    if (qword_27F53F500 != -1)
    {
      goto LABEL_70;
    }

    while (1)
    {
      v29 = v1[441];
      v30 = v1[440];
      v31 = v1[439];
      v32 = v1[416];
      v33 = sub_252E36AD4();
      __swift_project_value_buffer(v33, qword_27F544DA8);
      sub_252E379F4();

      __dst[0] = 0xD000000000000026;
      __dst[1] = 0x8000000252E95D80;
      v34 = [objc_opt_self() standardUserDefaults];
      v35 = sub_252E36F04();
      v36 = [v34 integerForKey_];

      v1[410] = v36;
      v37 = sub_252E37D94();
      MEMORY[0x2530AD570](v37);

      sub_252CC4050(__dst[0], __dst[1], 0xD00000000000008BLL, 0x8000000252E95C50, 0x2865747563657865, 0xE900000000000029, 83);

      (*(v30 + 16))(v29, v32 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse, v31);
      v38 = (*(v30 + 88))(v29, v31);
      v39 = v1[441];
      v40 = v1[440];
      v41 = v1[439];
      if (v38 != *MEMORY[0x277D5C160])
      {
        (*(v40 + 8))(v1[441], v41);
        goto LABEL_53;
      }

      v42 = v1[434];
      v43 = v1[433];
      v44 = v1[432];
      v45 = v1[426];
      v46 = v1[425];
      v47 = v1[424];
      (*(v40 + 96))(v1[441], v41);
      (*(v43 + 32))(v42, v39, v44);
      sub_252E34184();
      v48 = sub_252E34254();
      (*(v46 + 8))(v45, v47);
      v49 = *(v48 + 16);
      if (!v49)
      {
        break;
      }

      v50 = 0;
      v51 = v1[429];
      while (v50 < *(v48 + 16))
      {
        (*(v51 + 16))(v1[430], v48 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50, v1[428]);
        if (sub_252E342C4())
        {
          v105 = v1[429];
          v106 = v1[428];
          v107 = v1[427];
          v108 = v1[430];

          (*(v105 + 32))(v107, v108, v106);
          v52 = 0;
          goto LABEL_51;
        }

        ++v50;
        (*(v51 + 8))(v1[430], v1[428]);
        if (v49 == v50)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_70:
      swift_once();
    }

LABEL_30:

    v52 = 1;
LABEL_51:
    v109 = v1[429];
    v110 = v1[428];
    v111 = v1[427];
    (*(v109 + 56))(v111, v52, 1, v110);
    if ((*(v109 + 48))(v111, 1, v110) == 1)
    {
      v112 = v1[427];
      (*(v1[433] + 8))(v1[434], v1[432]);
      sub_25293847C(v112, &qword_27F540320, &qword_252E3C1A0);
LABEL_53:
      v113 = 1;
    }

    else
    {
      (*(v1[429] + 32))(v1[431], v1[427], v1[428]);
      sub_252E342D4();
      sub_252E34DA4();

      sub_252AEA788((v1 + 395), (v1 + 399));
      if (v1[402])
      {
        sub_252E34F84();
        if (swift_dynamicCast())
        {
          v152 = v1[416];

          v153 = *(v152 + 208);
          v154 = *(v153 + 16);

          v155 = 0;
          while (1)
          {
            v113 = v154 == v155;
            if (v154 == v155)
            {
              goto LABEL_66;
            }

            if (v155 >= *(v153 + 16))
            {
              break;
            }

            LOBYTE(__dst[0]) = *(v153 + v155 + 32);
            if (StateSemantic.rawValue.getter() == 6710895 && v157 == 0xE300000000000000)
            {

LABEL_66:

              v158 = v1[434];
              v159 = v1[433];
              v160 = v1[432];
              v161 = v1[431];
              v162 = v1[429];
              v163 = v1[428];
              sub_25293847C((v1 + 395), &qword_27F541E80, &qword_252E3DFA0);
              (*(v162 + 8))(v161, v163);
              (*(v159 + 8))(v158, v160);
              goto LABEL_54;
            }

            ++v155;
            v156 = sub_252E37DB4();

            if (v156)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_72:
          swift_once();
LABEL_40:
          v74 = sub_252E36AD4();
          __swift_project_value_buffer(v74, qword_27F544DA8);
          sub_252CC4050(0xD00000000000001FLL, 0x8000000252E95D30, 0xD00000000000008BLL, 0x8000000252E95C50, 0x2865747563657865, 0xE900000000000029, 110);
          if (qword_27F53F618 != -1)
          {
            swift_once();
          }

          v177 = v1[442];
          v178 = v1[443];
          v182 = v1[440];
          v176 = v1[439];
          v179 = v1[438];
          v180 = v1[437];
          v181 = v1[436];
          v75 = v1[423];
          v76 = v1[420];
          v77 = v1[419];
          v78 = v1[418];
          v79 = v1[417];
          v80 = v1[416];
          v81 = qword_27F544FA0;
          v82 = sub_252E375E4();
          sub_252E36AA4();
          v83 = v81;
          v1 = v190;
          sub_252E36A74(v82, &dword_252917000, v83, "setFlashlightReformationTrue", 28, 2, v77, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
          (*(v78 + 8))(v77, v79);
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8FEB0);
          v183(v75, v188 + v184, v76);
          sub_252D34BFC(&qword_27F5448F0, MEMORY[0x277D5BEE0], MEMORY[0x277D5BEF0]);
          v84 = sub_252E37D94();
          MEMORY[0x2530AD570](v84);

          v186(v75, v76);
          MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E95D50);
          sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008BLL, 0x8000000252E95C50);

          memcpy(v190 + 65, (v80 + 16), 0x1F8uLL);
          memcpy(__dst, (v80 + 16), 0x1F8uLL);
          v85 = *(v182 + 16);
          v85(v177, v80 + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse, v176);
          sub_2529353AC((v1 + 65), (v1 + 128));
          sub_25294CF38(__dst, v177, v178);
          v86 = *(v182 + 8);
          v86(v177, v176);
          memcpy(v190 + 2, __dst, 0x1F8uLL);
          sub_252935408((v190 + 2));
          v85(v177, v178, v176);

          sub_252E340F4();
          sub_252E339B4();
          sub_252E33B34();
          (*(v180 + 8))(v179, v181);
          v86(v178, v176);
          goto LABEL_11;
        }

        v170 = v1[434];
        v171 = v1[433];
        v172 = v1[432];
        v173 = v1[431];
        v174 = v1[429];
        v175 = v1[428];
        sub_25293847C((v1 + 395), &qword_27F541E80, &qword_252E3DFA0);
        (*(v174 + 8))(v173, v175);
        (*(v171 + 8))(v170, v172);
        v113 = 0;
      }

      else
      {
        v164 = v1[434];
        v165 = v1[433];
        v166 = v1[432];
        v167 = v1[431];
        v168 = v1[429];
        v169 = v1[428];
        sub_25293847C((v1 + 395), &qword_27F541E80, &qword_252E3DFA0);
        (*(v168 + 8))(v167, v169);
        (*(v165 + 8))(v164, v166);
        sub_25293847C((v1 + 399), &qword_27F541E80, &qword_252E3DFA0);
        v113 = 0;
      }
    }

LABEL_54:
    v114 = v1[416];
    type metadata accessor for ControlHomeIntent.Builder();
    swift_allocObject();
    v115 = ControlHomeIntent.Builder.init()();
    v116 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v117 = sub_252E36F04();
    v118 = [v116 initWithIdentifier:0 displayString:v117];

    v119 = v118;
    [v119 setBoolValue_];
    [v119 setType_];

    v120 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v121 = sub_252E36F04();
    v122 = [v120 initWithIdentifier:0 displayString:v121];

    v123 = v122;
    [v123 setTaskType_];
    [v123 setAttribute_];
    [v123 setValue_];

    v124 = (*(*v115 + 184))(v123);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544910, &unk_252E58BE0);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_252E3C290;
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v126.n128_f64[0] = HomeFilter.Builder.init()();
    v128 = (*(*v127 + 624))(1, v126);

    v130 = (*(*v128 + 760))(v129);

    *(v125 + 32) = v130;
    v131 = (*(*v124 + 208))(v125);

    v187 = (*(*v131 + 224))(v132);

    v134 = 0;
    if (*(v114 + 400) != 22)
    {
      LOBYTE(__dst[0]) = *(v114 + 400);
      v133 = sub_252AB54DC();
      v134 = v133;
    }

    v135 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v133);
    swift_beginAccess();
    v136 = *(v135 + 22);

    v138 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v137);
    sub_252929E74((v138 + 136), (v1 + 380));

    v140 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v139) + 29);

    v141 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
    v1[388] = v141;
    v1[389] = &off_2864BA730;
    v1[385] = v140;
    type metadata accessor for ControlHomeReformConfirmationStrategy();
    v142 = swift_allocObject();
    v143 = v1;
    v144 = __swift_mutable_project_boxed_opaque_existential_1((v1 + 385), v141);
    v145 = *(v141 - 8);
    v146 = swift_task_alloc();
    v147 = v144;
    v1 = v143;
    (*(v145 + 16))(v146, v147, v141);
    v148 = *v146;
    v142[12] = v141;
    v142[13] = &off_2864BA730;
    v142[8] = 0;
    v142[9] = v148;
    v142[14] = v134;
    v142[2] = v136;
    sub_252927BEC(v143 + 190, (v142 + 3));
    __swift_destroy_boxed_opaque_existential_1(v143 + 385);

    v149 = v187;

    v151 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v150);
    sub_252929E74((v151 + 96), (v143 + 390));

    v143[411] = v149;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5448F8, &unk_252E58BB0);
    swift_allocObject();
    sub_252D34BFC(&qword_27F544618, type metadata accessor for ControlHomeReformConfirmationStrategy, byte_252E54EE0);
    v143[412] = sub_252E333C4();
    sub_252C8F548();

    sub_252E33AC4();

    goto LABEL_11;
  }

  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v24 = sub_252E36804();
  v26 = v25;

  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_252E3C290;
    *(v27 + 32) = 25705;
    v28 = v27 + 32;
    *(v27 + 72) = MEMORY[0x277D837D0];
    *(v27 + 40) = 0xE200000000000000;
    *(v27 + 48) = v24;
    *(v27 + 56) = v26;
    sub_252CC630C(v27);
    swift_setDeallocating();
    sub_25293847C(v28, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v53 = [objc_opt_self() sharedAnalytics];
  if (v53)
  {
    v54 = v53;

    sub_252CC1408(v55);

    v56 = sub_252E36E24();

    [v54 logEventWithType:6503 context:v56];
  }

  v57 = v1[423];
  v58 = v1[422];
  v59 = v1[421];
  v60 = v1[420];
  v61 = v1[416];
  type metadata accessor for HomeAutomationUserDefaults();
  v190 = v1;
  v62 = swift_allocObject();
  v63 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v64 = sub_252E36F04();
  v65 = [v63 initWithSuiteName_];

  *(v62 + 16) = v65;
  v66 = sub_2529AEF14();

  swift_setDeallocating();
  v1 = v190;
  swift_deallocClassInstance();
  v67 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  swift_beginAccess();
  v188 = v61;
  v184 = v67;
  v183 = *(v59 + 16);
  v183(v57, v61 + v67, v60);
  (*(v59 + 104))(v58, *MEMORY[0x277D5BED8], v60);
  LOBYTE(v67) = sub_252E33DD4();
  v68 = *(v59 + 8);
  v68(v58, v60);
  v186 = v68;
  v68(v57, v60);
  if (v67)
  {
    v69 = swift_allocObject();
    v70 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v71 = sub_252E36F04();
    v72 = [v70 initWithSuiteName_];

    *(v69 + 16) = v72;
    if (v66 == 2)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    sub_2529AF19C(v73);

    swift_setDeallocating();
    swift_deallocClassInstance();
    if (qword_27F53F500 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_72;
  }

  if (qword_27F53F618 != -1)
  {
    swift_once();
  }

  v87 = v190[419];
  v88 = v190[418];
  v89 = v190[417];
  v90 = qword_27F544FA0;
  v91 = sub_252E375E4();
  sub_252E36AA4();
  sub_252E36A74(v91, &dword_252917000, v90, "setFlashlightReformationFalse", 29, 2, v87, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v88 + 8))(v87, v89);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v92 = v190[423];
  v93 = v190[420];
  v94 = sub_252E36AD4();
  __swift_project_value_buffer(v94, qword_27F544DA8);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8FEB0);
  v183(v92, v188 + v184, v93);
  sub_252D34BFC(&qword_27F5448F0, MEMORY[0x277D5BEE0], MEMORY[0x277D5BEF0]);
  v95 = sub_252E37D94();
  MEMORY[0x2530AD570](v95);

  v186(v92, v93);
  MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E95C20);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008BLL, 0x8000000252E95C50);

  sub_252CC4050(0xD000000000000013, 0x8000000252E95CE0, 0xD00000000000008BLL, 0x8000000252E95C50, 0x2865747563657865, 0xE900000000000029, 121);
  v96 = swift_allocObject();
  v97 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v98 = sub_252E36F04();
  v99 = [v97 initWithSuiteName_];

  *(v96 + 16) = v99;
  if (v99)
  {
    v190[409] = -1;
    v100 = sub_252E37E04();
    v101 = sub_252E36F04();
    [v99 setObject:v100 forKey:v101];

    swift_unknownObjectRelease();
  }

  v102 = v190[438];
  v103 = v190[437];
  v104 = v190[436];
  (*(v190[440] + 16))(v190[443], v190[416] + OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse, v190[439]);
  sub_252E340F4();
  sub_252E339B4();
  sub_252E33B34();
  (*(v103 + 8))(v102, v104);
LABEL_11:

  v20 = v1[1];

  return v20();
}

uint64_t sub_252D34524(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_252E33DE4();
  v27 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544908, &unk_252E58BC0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540410, qword_252E54EA0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  (*(v12 + 16))(v14, a1, v11);
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x277D5BC38])
  {
    return (*(v12 + 8))(v14, v11);
  }

  (*(v12 + 96))(v14, v11);
  (*(v16 + 32))(v18, v14, v15);
  sub_252E33D94();
  (*(v16 + 8))(v18, v15);
  v19 = v27;
  if ((*(v27 + 48))(v5, 1, v6) == 1)
  {
    return sub_25293847C(v5, &qword_27F540780, &unk_252E50210);
  }

  v21 = *(v19 + 32);
  v21(v10, v5, v6);
  v22 = v25;
  v21(v25, v10, v6);
  v23 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  v24 = v26;
  swift_beginAccess();
  (*(v19 + 40))(v24 + v23, v22, v6);
  return swift_endAccess();
}

uint64_t ControlHomeFlashlightReformationFlow.deinit()
{
  memcpy(v6, (v0 + 16), 0x1F8uLL);
  sub_252935408(v6);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  v4 = sub_252E33DE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ControlHomeFlashlightReformationFlow.__deallocating_deinit()
{
  memcpy(v6, (v0 + 16), 0x1F8uLL);
  sub_252935408(v6);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal36ControlHomeFlashlightReformationFlow_confirmationState;
  v4 = sub_252E33DE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_252D34AC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252D3260C(a1);
}

uint64_t sub_252D34B60(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ControlHomeFlashlightReformationFlow(0);

  return sub_252E33644();
}

uint64_t sub_252D34B9C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ControlHomeFlashlightReformationFlow(0);
  v6 = swift_allocObject();
  result = sub_252D32430(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_252D34BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252D34C50()
{
  result = qword_27F5458E8;
  if (!qword_27F5458E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlHomeFlashlightReformationFlow.Scenario, &type metadata for ControlHomeFlashlightReformationFlow.Scenario, v0, v1);
    atomic_store(result, &qword_27F5458E8);
  }

  return result;
}

unint64_t sub_252D34CA8()
{
  result = qword_27F5458F0;
  if (!qword_27F5458F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlHomeFlashlightReformationFlow.State, &type metadata for ControlHomeFlashlightReformationFlow.State, v0, v1);
    atomic_store(result, &qword_27F5458F0);
  }

  return result;
}

uint64_t type metadata accessor for ControlHomeFlashlightReformationFlow(uint64_t a1)
{
  result = qword_27F5458F8;
  if (!qword_27F5458F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D34D50(uint64_t a1)
{
  result = sub_252E34164();
  if (v2 <= 0x3F)
  {
    result = sub_252E33DE4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ControlHomeFlashlightReformationFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

BOOL sub_252D34FF8()
{
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v0.n128_f64[0] = HomeFilter.Builder.init()();
  v2 = (*(*v1 + 624))(1, v0);

  v4 = (*(*v2 + 760))(v3);

  v5 = type metadata accessor for HomeStore(0);
  v6 = static HomeStore.shared.getter(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E3C130;
  *(v7 + 32) = v4;
  v8 = v4;
  v9 = HomeStore.accessories(matching:supporting:)(v7, 0);
  LOBYTE(v4) = v10;

  if (v4)
  {
    sub_252929F10(v9, 1);

    return 0;
  }

  else
  {
    if (v9 >> 62)
    {
      v12 = sub_252E378C4();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_252929F10(v9, 0);

    return v12 != 0;
  }
}

uint64_t sub_252D351A0(uint64_t *__src)
{
  v1 = __src + 1;
  v2 = *__src;
  memcpy(__dst, __src + 1, sizeof(__dst));
  __srca[0] = v2;
  memcpy(&__srca[1], v1, 0x1F0uLL);
  if ((sub_252A13FE0() & 1) == 0)
  {
    v12[0] = v2;
    memcpy(&v12[1], v1, 0x1F0uLL);
    if ((sub_252A13BEC() & 1) == 0)
    {
      __srca[0] = v2;
      memcpy(&__srca[1], v1, 0x1F0uLL);
      if ((sub_252A143D4() & 1) == 0)
      {
        v3 = *(v2 + 16);
        if (v3)
        {
          v4 = 0;
          v5 = (v2 + 32);
          while (v4 < *(v2 + 16))
          {
            memcpy(__srca, v5, sizeof(__srca));
            memcpy(v12, v5, sizeof(v12));
            sub_2529353AC(__srca, v11);
            if (sub_252A13FE0() & 1) != 0 || (memcpy(v11, __srca, sizeof(v11)), (sub_252A13BEC()))
            {
              sub_252935408(__srca);
              goto LABEL_14;
            }

            memcpy(v12, __srca, sizeof(v12));
            v6 = sub_252A143D4();
            sub_252935408(__srca);
            if (v6)
            {
              goto LABEL_14;
            }

            ++v4;
            v5 += 504;
            if (v3 == v4)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_11:
          if (qword_27F53F4F8 == -1)
          {
LABEL_12:
            v7 = sub_252E36AD4();
            __swift_project_value_buffer(v7, qword_27F544D90);
            sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E95E80, 0xD00000000000008BLL, 0x8000000252E95C50);
            return 0;
          }
        }

        swift_once();
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544D90);
  __srca[0] = 0;
  __srca[1] = 0xE000000000000000;
  sub_252E379F4();

  v12[0] = 0xD000000000000018;
  v12[1] = 0x8000000252E95E60;
  __srca[0] = v2;
  memcpy(&__srca[1], __dst, 0x1F0uLL);
  v10 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(v12[0], v12[1], 0xD00000000000008BLL, 0x8000000252E95C50);

  return 1;
}

uint64_t sub_252D3548C(uint64_t a1)
{
  v53 = a1;
  v56 = sub_252E34494();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_252E343C4();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_252E34244();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v52 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E34284();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540320, &qword_252E3C1A0);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v39 - v9;
  v10 = sub_252E34354();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v39 - v15;
  v16 = sub_252E341A4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252E34164();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v23, v53, v20);
  if ((*(v21 + 88))(v23, v20) != *MEMORY[0x277D5C160])
  {
    (*(v21 + 8))(v23, v20);
    return 2;
  }

  (*(v21 + 96))(v23, v20);
  v40 = v17;
  v24 = *(v17 + 32);
  v42 = v16;
  v24(v19, v23, v16);
  v41 = v19;
  sub_252E34184();
  v25 = sub_252E34254();
  (*(v50 + 8))(v7, v51);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = 0;
    while (v27 < *(v25 + 16))
    {
      (*(v11 + 16))(v14, v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v27, v10);
      if (sub_252E342C4())
      {

        v29 = v49;
        (*(v11 + 32))(v49, v14, v10);
        v28 = 0;
        goto LABEL_10;
      }

      ++v27;
      (*(v11 + 8))(v14, v10);
      if (v26 == v27)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_7:

  v28 = 1;
  v29 = v49;
LABEL_10:
  (*(v11 + 56))(v29, v28, 1, v10);
  if ((*(v11 + 48))(v29, 1, v10) == 1)
  {
    sub_25293847C(v29, &qword_27F540320, &qword_252E3C1A0);
    v19 = v42;
    v26 = v40;
    v27 = v41;
    if (qword_27F53F4F8 == -1)
    {
LABEL_12:
      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544D90);
      sub_252CC4050(0xD000000000000012, 0x8000000252E870B0, 0xD00000000000008BLL, 0x8000000252E95C50, 0xD000000000000019, 0x8000000252E95E40, 209);
      (*(v26 + 8))(v27, v19);
      return 2;
    }

LABEL_32:
    swift_once();
    goto LABEL_12;
  }

  (*(v11 + 32))(v48, v29, v10);
  v31 = v45;
  sub_252E34314();
  sub_252E34394();
  (*(v46 + 8))(v31, v47);
  sub_252E342D4();
  sub_252E34DA4();

  sub_252AEA788(v59, v57);
  v32 = v42;
  v27 = v41;
  if (v58)
  {
    sub_252E34F84();
    if (swift_dynamicCast())
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_25293847C(v57, &qword_27F541E80, &qword_252E3DFA0);
  }

  sub_252AEA788(v59, v57);
  if (!v58)
  {
    sub_25293847C(v59, &qword_27F541E80, &qword_252E3DFA0);
    (*(v43 + 8))(v52, v44);
    (*(v11 + 8))(v48, v10);
    (*(v40 + 8))(v27, v32);
    sub_25293847C(v57, &qword_27F541E80, &qword_252E3DFA0);
    return 2;
  }

  sub_252E35034();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_25293847C(v59, &qword_27F541E80, &qword_252E3DFA0);
    (*(v43 + 8))(v52, v44);
    (*(v11 + 8))(v48, v10);
    (*(v40 + 8))(v27, v32);
    return 2;
  }

LABEL_19:

  v26 = 0x6C7562746867696CLL;
  v19 = sub_252E34234();
  v33 = 0;
  v53 = *(v19 + 2);
  v34 = (v54 + 8);
  do
  {
    v35 = v33;
    if (v53 == v33)
    {
      break;
    }

    if (v33 >= *(v19 + 2))
    {
      goto LABEL_31;
    }

    (*(v54 + 16))(v55, &v19[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v33], v56);
    if (sub_252E34484() == 0x6C7562746867696CLL && v36 == 0xE900000000000062)
    {

      (*v34)(v55, v56);
      break;
    }

    ++v33;
    v27 = sub_252E37DB4();

    (*v34)(v55, v56);
  }

  while ((v27 & 1) == 0);

  v37 = v53 != v35;
  sub_25293847C(v59, &qword_27F541E80, &qword_252E3DFA0);
  (*(v43 + 8))(v52, v44);
  (*(v11 + 8))(v48, v10);
  (*(v40 + 8))(v41, v42);
  return v37;
}

uint64_t sub_252D35F40(const void *a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_252E32F04();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36AB4();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v54 = v8;
  sub_252E36A84();
  type metadata accessor for HomeAutomationUserDefaults();
  v9 = swift_allocObject();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_252E36F04();
  v12 = [v10 initWithSuiteName_];

  *(v9 + 16) = v12;
  LODWORD(v11) = sub_2529AEF14();

  swift_setDeallocating();
  swift_deallocClassInstance();
  if (!v11)
  {
    v40 = swift_allocObject();
    v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v42 = sub_252E36F04();
    v43 = [v41 initWithSuiteName_];

    *(v40 + 16) = v43;
    if (v43)
    {
      v57[0] = 0;
      v44 = sub_252E37E04();
      v45 = sub_252E36F04();
      [v43 setObject:v44 forKey:v45];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_23;
  }

  v13 = sub_252D34FF8();
  memcpy(v57, a1, 0x1F8uLL);
  v14 = sub_252D351A0(v57);
  v15 = sub_252D3548C(v53);
  if (v15 == 2)
  {
    goto LABEL_23;
  }

  LODWORD(v53) = v15;
  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15);
  sub_252929E74((v16 + 288), v57);

  v17 = v57[3];
  v18 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v19 = (*(v18 + 96))(v17, v18);
  v20 = __swift_destroy_boxed_opaque_existential_1(v57);
  if ((v19 & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v20);
  sub_252929E74((v21 + 288), v57);

  v22 = v57[3];
  v23 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  if ((*(v23 + 104))(v22, v23))
  {
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v57);
    goto LABEL_11;
  }

  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F44();

  v24 = v50;
  sub_252E36034();

  v25 = sub_252E32E94();
  v27 = v26;
  (*(v51 + 8))(v24, v52);
  if (v25 == 0x53552D6E65 && v27 == 0xE500000000000000)
  {

    goto LABEL_10;
  }

  v48 = sub_252E37DB4();

  __swift_destroy_boxed_opaque_existential_1(v57);
  if ((v48 & 1) == 0)
  {
LABEL_23:
    v39 = 0;
    goto LABEL_24;
  }

LABEL_11:
  v28 = type metadata accessor for HomeStore(0);
  v29 = static HomeStore.shared.getter(v28);
  v30 = v29[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];

  if (v30 == 2 || (v30 & 1) == 0)
  {
    goto LABEL_23;
  }

  v32 = static HomeStore.shared.getter(v31);
  v33 = sub_2529D8DC0();

  v34 = v33 >> 62 ? sub_252E378C4() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v34)
  {
    v36 = static HomeStore.shared.getter(v35);
    v37 = sub_2529D9D50();

    v38 = v37 >> 62 ? sub_252E378C4() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v38 != 0 && v13)
    {
      goto LABEL_23;
    }
  }

  v39 = v53 & (v14 ^ 1);
LABEL_24:
  v46 = sub_252E375C4();
  sub_252E36A74(v46, &dword_252917000, v54, "ShouldHandleFlashlightReformationFlow", 37, 2, v7, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v55 + 8))(v7, v56);
  return v39 & 1;
}

void *sub_252D36558()
{
  result = sub_252CC6588(&unk_2864A34B0);
  off_27F545908 = result;
  return result;
}

void *sub_252D36580()
{
  result = sub_252CC6628(&unk_2864A8338);
  off_27F545910 = result;
  return result;
}

void *sub_252D365A8()
{
  result = sub_252CC6650(&unk_2864A8458);
  off_27F545918 = result;
  return result;
}

uint64_t sub_252D36610(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(a1);
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (v6 >> 62)
  {
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v7)
  {
    v10 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v8);
    v11 = a2(a1);

    if (v11)
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_252D366E0(char a1)
{
  if (qword_27F53F6F0 != -1)
  {
LABEL_65:
    swift_once();
  }

  v2 = off_27F545910;
  v3 = off_27F545910 + 64;
  v4 = 1 << *(off_27F545910 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_27F545910 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v11 = 0x646570706F7473;
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v8 << 6);
    v14 = *(v2[6] + 8 * v13);
    v15 = 0xE700000000000000;
    v16 = 0x646570706F7473;
    switch(*(v2[7] + v13))
    {
      case 1:
        v16 = 0x676E696E6E7572;
        break;
      case 2:
        v15 = 0xE600000000000000;
        v16 = 0x646573756170;
        break;
      case 3:
        v15 = 0xE500000000000000;
        v16 = 0x726F727265;
        break;
      case 4:
        v16 = 0x43676E696B656573;
        v15 = 0xEE00726567726168;
        break;
      case 5:
        v15 = 0xE800000000000000;
        v16 = 0x676E696772616863;
        break;
      case 6:
        v15 = 0xE600000000000000;
        v16 = 0x64656B636F64;
        break;
      case 7:
        v15 = 0xE500000000000000;
        v16 = 0x6B63757473;
        break;
      case 8:
        v15 = 0xEA00000000007972;
        v16 = 0x6574746142776F6CLL;
        break;
      case 9:
        v16 = 0x4D6E694274737564;
        v15 = 0xEE00676E69737369;
        break;
      case 0xA:
        v16 = 0x466E694274737564;
        v15 = 0xEB000000006C6C75;
        break;
      case 0xB:
        v16 = 0xD000000000000010;
        v15 = 0x8000000252E64480;
        break;
      case 0xC:
        v16 = 0x6E61547265746177;
        v15 = 0xEE007974706D456BLL;
        break;
      case 0xD:
        v16 = 0xD000000000000010;
        v15 = 0x8000000252E644A0;
        break;
      case 0xE:
        v16 = 0xD000000000000015;
        v15 = 0x8000000252E644C0;
        break;
      case 0xF:
        v16 = 0xD000000000000016;
        v15 = 0x8000000252E67470;
        break;
      default:
        break;
    }

    v17 = 0xE700000000000000;
    switch(a1)
    {
      case 1:
        if (v16 == 0x676E696E6E7572)
        {
          goto LABEL_55;
        }

        goto LABEL_5;
      case 2:
        v17 = 0xE600000000000000;
        v20 = 1937072496;
        goto LABEL_51;
      case 3:
        v17 = 0xE500000000000000;
        if (v16 != 0x726F727265)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 4:
        v18 = 0x43676E696B656573;
        v19 = 0x726567726168;
        goto LABEL_37;
      case 5:
        v17 = 0xE800000000000000;
        if (v16 != 0x676E696772616863)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 6:
        v17 = 0xE600000000000000;
        v20 = 1801678692;
LABEL_51:
        if (v16 != (v20 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 7:
        v17 = 0xE500000000000000;
        if (v16 != 0x6B63757473)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 8:
        v17 = 0xEA00000000007972;
        if (v16 != 0x6574746142776F6CLL)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 9:
        v18 = 0x4D6E694274737564;
        v19 = 0x676E69737369;
        goto LABEL_37;
      case 10:
        v11 = 0x466E694274737564;
        v17 = 0xEB000000006C6C75;
        goto LABEL_54;
      case 11:
        v17 = 0x8000000252E64480;
        if (v16 != 0xD000000000000010)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 12:
        v18 = 0x6E61547265746177;
        v19 = 0x7974706D456BLL;
LABEL_37:
        v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v16 != v18)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 13:
        v17 = 0x8000000252E644A0;
        if (v16 != 0xD000000000000010)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 14:
        v17 = 0x8000000252E644C0;
        if (v16 != 0xD000000000000015)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      case 15:
        v17 = 0x8000000252E67470;
        if (v16 != 0xD000000000000016)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      default:
LABEL_54:
        if (v16 != v11)
        {
          goto LABEL_5;
        }

LABEL_55:
        if (v15 == v17)
        {

          return v14;
        }

LABEL_5:
        v9 = sub_252E37DB4();

        if (v9)
        {

          return v14;
        }

        break;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v10];
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E95F40);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD00000000000001DLL, 0x8000000252E95F80, 73);

  return 0;
}

uint64_t sub_252D36D20(char a1)
{
  if (qword_27F53F6E8 != -1)
  {
LABEL_57:
    swift_once();
  }

  v2 = off_27F545908;
  v3 = off_27F545908 + 64;
  v4 = 1 << *(off_27F545908 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_27F545908 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v11 = 0x6D7575636176;
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v8 << 6);
    v14 = *(v2[6] + 8 * v13);
    v15 = 0xE600000000000000;
    v16 = 0x6D7575636176;
    switch(*(v2[7] + v13))
    {
      case 1:
        v15 = 0xE300000000000000;
        v16 = 7368557;
        break;
      case 2:
        v16 = 0x61656C4370656564;
        v15 = 0xE90000000000006ELL;
        break;
      case 3:
        v15 = 0xE400000000000000;
        v16 = 1869903201;
        break;
      case 4:
        v15 = 0xE500000000000000;
        v16 = 0x7465697571;
        break;
      case 5:
        v15 = 0xE500000000000000;
        v16 = 0x6B63697571;
        break;
      case 6:
        v15 = 0xE800000000000000;
        v16 = 0x6573696F4E776F6CLL;
        break;
      case 7:
        v15 = 0xE900000000000079;
        v16 = 0x6772656E45776F6CLL;
        break;
      case 8:
        v15 = 0xE800000000000000;
        v16 = 0x6E6F697461636176;
        break;
      case 9:
        v15 = 0xE500000000000000;
        v16 = 0x746867696ELL;
        break;
      case 0xA:
        v15 = 0xE300000000000000;
        v16 = 7954788;
        break;
      case 0xB:
        v15 = 0xE300000000000000;
        v16 = 7235949;
        break;
      case 0xC:
        v15 = 0xE300000000000000;
        v16 = 7889261;
        break;
      default:
        break;
    }

    v17 = 0xE600000000000000;
    switch(a1)
    {
      case 1:
        v17 = 0xE300000000000000;
        if (v16 == 7368557)
        {
          goto LABEL_47;
        }

        goto LABEL_5;
      case 2:
        v17 = 0xE90000000000006ELL;
        if (v16 != 0x61656C4370656564)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 3:
        v17 = 0xE400000000000000;
        if (v16 != 1869903201)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 4:
        v17 = 0xE500000000000000;
        v18 = 1701410161;
        goto LABEL_33;
      case 5:
        v17 = 0xE500000000000000;
        if (v16 != 0x6B63697571)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 6:
        v17 = 0xE800000000000000;
        if (v16 != 0x6573696F4E776F6CLL)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 7:
        v17 = 0xE900000000000079;
        if (v16 != 0x6772656E45776F6CLL)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 8:
        v17 = 0xE800000000000000;
        if (v16 != 0x6E6F697461636176)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 9:
        v17 = 0xE500000000000000;
        v18 = 1751607662;
LABEL_33:
        if (v16 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x7400000000))
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 10:
        v17 = 0xE300000000000000;
        v11 = 7954788;
        goto LABEL_46;
      case 11:
        v17 = 0xE300000000000000;
        if (v16 != 7235949)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      case 12:
        v17 = 0xE300000000000000;
        if (v16 != 7889261)
        {
          goto LABEL_5;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v16 != v11)
        {
          goto LABEL_5;
        }

LABEL_47:
        if (v15 == v17)
        {

          return v14;
        }

LABEL_5:
        v9 = sub_252E37DB4();

        if (v9)
        {

          return v14;
        }

        break;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v10];
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E95EE0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD00000000000001CLL, 0x8000000252E95F20, 57);

  return 0;
}

uint64_t sub_252D37230(unsigned __int8 a1)
{
  if (!a1)
  {

    return 3;
  }

  v2 = sub_252E37DB4();

  if (v2)
  {
    return 3;
  }

  if (qword_27F53F6F8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v3 = off_27F545918;
  v4 = off_27F545918 + 64;
  v5 = 1 << *(off_27F545918 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(off_27F545918 + 8);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_13:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    if (*(v3[7] + v12))
    {
      v13 = 0xE600000000000000;
      if (*(v3[7] + v12) == 1)
      {
        v14 = 0x656D75736572;
        v15 = a1;
        if (a1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = 0x6C65636E6163;
        v15 = a1;
        if (a1)
        {
LABEL_18:
          if (v15 == 1)
          {
            v16 = 0x656D75736572;
          }

          else
          {
            v16 = 0x6C65636E6163;
          }

          v17 = 0xE600000000000000;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x6573756170;
      v15 = a1;
      if (a1)
      {
        goto LABEL_18;
      }
    }

    v17 = 0xE500000000000000;
    v16 = 0x6573756170;
LABEL_24:
    v18 = *(v3[6] + 8 * v12);
    if (v14 == v16 && v13 == v17)
    {

      return v18;
    }

    v7 &= v7 - 1;
    v10 = sub_252E37DB4();

    if (v10)
    {

      return v18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *&v4[8 * v11];
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_13;
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E95FA0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD00000000000001DLL, 0x8000000252E95F80, 96);

  return 0;
}

uint64_t sub_252D375A8(uint64_t a1)
{
  if (qword_27F53F6F8 != -1)
  {
    swift_once();
  }

  v1 = off_27F545918;
  if (*(off_27F545918 + 2))
  {
    v2 = sub_252A488EC();
    if (v3)
    {
      return *(v1[7] + v2);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E96050);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000019, 0x8000000252E960A0, 104);

  return 3;
}

uint64_t sub_252D3772C(uint64_t a1)
{
  if (qword_27F53F6F0 != -1)
  {
    swift_once();
  }

  v1 = off_27F545910;
  if (*(off_27F545910 + 2))
  {
    v2 = sub_252A488EC();
    if (v3)
    {
      return *(v1[7] + v2);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E95FF0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000012, 0x8000000252E96030, 81);

  return 16;
}

id sub_252D378B0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      v8 = v2;
      if (*(a1 + 16))
      {
        v9 = -1.0;
      }

      else
      {
        v9 = v3;
      }

      v10 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetArea());

      v11 = sub_252E36F04();
      v12 = [v10 initWithIdentifier:0 displayString:v11];

      v13 = v12;
      v14 = sub_252E36F04();
      sub_252ACBD2C(a1);
      [v13 setName_];

      [v13 setAreaID_];
      [v13 setMapID_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_252E3C130;
      *(v15 + 32) = v13;
      v16 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
      v17 = v13;
      v18 = sub_252E36F04();
      v19 = [v16 initWithIdentifier:0 displayString:v18];

      v20 = v19;
      [v20 setRunState_];
      v21 = sub_252E37254();
      [v20 setCleanModes_];

      v22 = sub_252E37254();

      [v20 setTargetAreas_];

      [v20 setTargetMap_];
      v23 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v24 = sub_252E36F04();
      v25 = [v23 initWithIdentifier:0 displayString:v24];

      v26 = v25;
      [v26 setType_];
      [v26 setCleaningJob_];
    }

    else
    {
      v30 = v2;
      v31 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetMap());
      v32 = sub_252E36F04();
      v33 = [v31 initWithIdentifier:0 displayString:v32];

      v34 = v33;
      v35 = sub_252E36F04();
      [v34 setName_];

      [v34 setMapID_];
      v36 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
      v37 = v34;
      v38 = sub_252E36F04();
      v39 = [v36 initWithIdentifier:0 displayString:v38];

      v40 = v39;
      [v40 setRunState_];
      v41 = sub_252E37254();
      [v40 setCleanModes_];

      type metadata accessor for HomeAttributeTargetArea();
      v42 = sub_252E37254();
      [v40 setTargetAreas_];

      [v40 setTargetMap_];
      v43 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v44 = sub_252E36F04();
      v45 = [v43 initWithIdentifier:0 displayString:v44];

      v26 = v45;
      [v26 setType_];
      [v26 setCleaningJob_];
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      v27 = sub_252D37230(v2);
      if ((v28 & 1) == 0)
      {
        v57 = v27;
        v58 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
        v59 = sub_252E36F04();
        v60 = [v58 initWithIdentifier:0 displayString:v59];

        v61 = v60;
        [v61 setRunState_];
        v62 = sub_252E37254();
        [v61 setCleanModes_];

        type metadata accessor for HomeAttributeTargetArea();
        v63 = sub_252E37254();
        [v61 setTargetAreas_];

        [v61 setTargetMap_];
        v64 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v65 = sub_252E36F04();
        v66 = [v64 initWithIdentifier:0 displayString:v65];

        v26 = v66;
        [v26 setType_];
        [v26 setCleaningJob_];

        return v26;
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v29 = sub_252E36AD4();
      __swift_project_value_buffer(v29, qword_27F544CD0);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E960C0);
      sub_252E37AE4();
      v7 = 124;
      goto LABEL_16;
    }

    v4 = sub_252D366E0(v2);
    if (v5)
    {
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544CD0);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E96120);
      sub_252E37AE4();
      v7 = 112;
LABEL_16:
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000019, 0x8000000252E96100, v7);

      return 0;
    }

    v46 = v4;
    v47 = *(v3 + 16);
    v48 = MEMORY[0x277D84F90];
    if (v47)
    {
      v49 = (v3 + 32);
      v50 = MEMORY[0x277D84F90];
      do
      {
        v51 = *v49++;
        v52 = sub_252D36D20(v51);
        if ((v53 & 1) == 0)
        {
          v54 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_2529F7F9C(0, *(v50 + 2) + 1, 1, v50);
          }

          v56 = *(v50 + 2);
          v55 = *(v50 + 3);
          if (v56 >= v55 >> 1)
          {
            v50 = sub_2529F7F9C((v55 > 1), v56 + 1, 1, v50);
          }

          *(v50 + 2) = v56 + 1;
          *&v50[8 * v56 + 32] = v54;
        }

        --v47;
      }

      while (v47);
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v67 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
    v68 = sub_252E36F04();
    v69 = [v67 initWithIdentifier:0 displayString:v68];

    v70 = v69;
    [v70 setRunState_];
    v71 = *(v50 + 2);
    if (v71)
    {
      sub_2529AA3C0(0, v71, 0);
      v72 = *(v48 + 16);
      v73 = 32;
      do
      {
        v74 = *&v50[v73];
        v75 = *(v48 + 24);
        if (v72 >= v75 >> 1)
        {
          sub_2529AA3C0((v75 > 1), v72 + 1, 1);
        }

        *(v48 + 16) = v72 + 1;
        *(v48 + 8 * v72 + 32) = v74;
        v73 += 8;
        ++v72;
        --v71;
      }

      while (v71);
    }

    v76 = sub_252E37254();

    [v70 setCleanModes_];

    type metadata accessor for HomeAttributeTargetArea();
    v77 = sub_252E37254();
    [v70 setTargetAreas_];

    [v70 setTargetMap_];
    v78 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v79 = sub_252E36F04();
    v80 = [v78 initWithIdentifier:0 displayString:v79];

    v26 = v80;
    [v26 setType_];
    [v26 setCleaningJob_];
  }

  return v26;
}

uint64_t sub_252D38354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_252E34014();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D3843C, 0, 0);
}

uint64_t sub_252D3843C()
{
  v2 = MEMORY[0x277D84F90];
  v80 = *(v0 + 224);
  if (v80)
  {
    v3 = sub_252C285F0();
    v4 = v3;
    v90 = v2;
    if (v3 >> 62)
    {
      v5 = sub_252E378C4();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v2 = v4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x2530ADF00](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_136;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v1 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          type metadata accessor for MutableHomeEntityResponse();
          swift_allocObject();
          v0 = sub_252D6D668(v8);

          MEMORY[0x2530AD700]();
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          ++v6;
          if (v1 == v5)
          {
            v2 = v90;
            v0 = v83;
            goto LABEL_14;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_14:
  }

  v1 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_138:
    v9 = sub_252E378C4();
    goto LABEL_17;
  }

  v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v87 = v2 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  v86 = v9;
  if (v9)
  {
    v11 = 0;
    v88 = MEMORY[0x277D84F90];
    while (2)
    {
      v12 = v11;
      while (1)
      {
        if (v87)
        {
          v13 = MEMORY[0x2530ADF00](v12, v2);
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (v12 >= *(v1 + 16))
          {
            goto LABEL_132;
          }

          v13 = *(v2 + 8 * v12 + 32);

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }
        }

        v14 = *(v13 + 16);

        if (v14)
        {
          v16 = *(v14 + 40);
          v15 = *(v14 + 48);

          if (v15)
          {
            break;
          }
        }

        ++v12;
        if (v11 == v86)
        {
          goto LABEL_37;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = sub_2529F7A80(0, *(v88 + 2) + 1, 1, v88);
      }

      v19 = *(v88 + 2);
      v18 = *(v88 + 3);
      if (v19 >= v18 >> 1)
      {
        v88 = sub_2529F7A80((v18 > 1), v19 + 1, 1, v88);
      }

      *(v88 + 2) = v19 + 1;
      v20 = &v88[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v15;
      if (v11 != v86)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

LABEL_37:
  v81 = v1;
  v82 = v2;
  v21 = type metadata accessor for HomeStore(0);
  v22 = static HomeStore.shared.getter(v21);
  v23 = sub_2529D9D50();
  v24 = sub_2529D70E4(v23);

  v91 = v10;
  if (v24 >> 62)
  {
    v1 = sub_252E378C4();
  }

  else
  {
    v1 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v25 = 0;
  v84 = v0 + 176;
  v2 = v24 & 0xFFFFFFFFFFFFFF8;
  while ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x2530ADF00](v25, v24);
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_51;
    }

LABEL_46:
    v28 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (v28 && (*(v83 + 176) = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier), *(v83 + 184) = v28, v29 = swift_task_alloc(), *(v29 + 16) = v84, v0 = sub_2529ED970(sub_25296A69C, v29, v88), , (v0 & 1) != 0))
    {
      sub_252E37A94();
      v0 = *(v91 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v25;
    if (v27 == v1)
    {
      goto LABEL_52;
    }
  }

  if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_133;
  }

  v26 = *(v24 + 8 * v25 + 32);

  v27 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_46;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v1 = v91;
LABEL_54:

  if (v86)
  {
    if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
    {
      v2 = sub_252E378C4();
    }

    else
    {
      v2 = *(v1 + 16);
    }

    v30 = 0;
    while (1)
    {
      if (v87)
      {
        v31 = MEMORY[0x2530ADF00](v30, v82);
        v32 = __OFADD__(v30, 1);
        v33 = v30 + 1;
        if (v32)
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (v30 >= *(v81 + 16))
        {
          goto LABEL_137;
        }

        v31 = *(v82 + 32 + 8 * v30);

        v32 = __OFADD__(v30, 1);
        v33 = v30 + 1;
        if (v32)
        {
          goto LABEL_134;
        }
      }

      v85 = v33;
      if (!v2)
      {
LABEL_60:

        goto LABEL_61;
      }

      v34 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x2530ADF00](v34, v1);
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_127;
          }
        }

        else
        {
          if (v34 >= *(v1 + 16))
          {
            goto LABEL_128;
          }

          v35 = *(v1 + 8 * v34 + 32);

          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }
        }

        v0 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
        v37 = *(v31 + 16);
        if (!v37)
        {
          if (!v0)
          {
            goto LABEL_90;
          }

          goto LABEL_71;
        }

        v38 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v40 = *(v37 + 40);
        v39 = *(v37 + 48);

        if (v0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_90;
        }

LABEL_71:

        ++v34;
        if (v36 == v2)
        {
          goto LABEL_60;
        }
      }

      if (!v39)
      {
        goto LABEL_71;
      }

      if (v38 != v40 || v0 != v39)
      {
        break;
      }

LABEL_90:
      v42 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);

      v43 = [v42 accessory];
      if (!v43)
      {

        goto LABEL_60;
      }

      v44 = v43;
      type metadata accessor for Accessory(0);
      swift_allocObject();
      v45 = sub_252D4CE7C(v44);

      v47 = *(v45 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v46 = *(v45 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v0 = *(v31 + 16);

      if (v0)
      {
        *(v0 + 16) = v47;
        *(v0 + 24) = v46;
      }

LABEL_61:
      v30 = v85;
      if (v85 == v86)
      {
        goto LABEL_94;
      }
    }

    v0 = sub_252E37DB4();

    if (v0)
    {
      goto LABEL_90;
    }

    goto LABEL_71;
  }

LABEL_94:

  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  v92 = MEMORY[0x277D84F90];
  v2 = v81;
  v1 = v86;
LABEL_95:
  v50 = v49;
  *(v83 + 288) = v49;
  while (v86 != v48)
  {
    if (v87)
    {
      MEMORY[0x2530ADF00](v48, v82);
      v0 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v48 >= *(v81 + 16))
      {
        goto LABEL_130;
      }

      v0 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_129;
      }
    }

    v51 = sub_252D6C15C();
    v52 = sub_252DA124C(0);

    ++v48;
    if (v52)
    {
      MEMORY[0x2530AD700](v53);
      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v49 = v92;
      v48 = v0;
      goto LABEL_95;
    }
  }

  v54 = *(v83 + 216);

  v55 = [v54 userTask];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 attribute];

    v58 = v50;
    if (v57 == 44)
    {
      v59 = *(v83 + 232);
      v60 = swift_allocObject();
      *(v83 + 296) = v60;
      *(v60 + 16) = v59;
      *(v60 + 24) = v50;

      if (v80)
      {
        v61 = *(v59 + 48);
        v62 = *(v83 + 224);
        v63 = *__swift_project_boxed_opaque_existential_1((v59 + 24), v61);
        v89 = sub_252C0E164;

        v64 = swift_task_alloc();
        *(v83 + 304) = v64;
        *v64 = v83;
        v65 = sub_252D390FC;
LABEL_115:
        v64[1] = v65;

        return v89(0, v63, v58);
      }

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v77 = *(v83 + 232);
      v78 = sub_252E36AD4();
      __swift_project_value_buffer(v78, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v72 = *(v77 + 96);
      __swift_project_boxed_opaque_existential_1((v77 + 72), v72);
      sub_252AD7CC4();
      v79 = swift_task_alloc();
      *(v83 + 352) = v79;
      *v79 = v83;
      v79[1] = sub_252D39454;
      v74 = *(v83 + 280);
      v75 = &unk_252E5D298;
      v76 = v83 + 96;
      goto LABEL_124;
    }
  }

  else
  {
    sub_252C515AC();
    v58 = v50;
  }

  v66 = *(v83 + 232);
  v60 = swift_allocObject();
  *(v83 + 392) = v60;
  *(v60 + 16) = v66;
  *(v60 + 24) = v58;

  if (v80)
  {
    v67 = *(v66 + 48);
    v68 = *(v83 + 224);
    v63 = *__swift_project_boxed_opaque_existential_1((v66 + 24), v67);
    v89 = sub_252C0E46C;

    v64 = swift_task_alloc();
    *(v83 + 400) = v64;
    *v64 = v83;
    v65 = sub_252D39CF4;
    goto LABEL_115;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v70 = *(v83 + 232);
  v71 = sub_252E36AD4();
  __swift_project_value_buffer(v71, qword_27F544D18);
  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
  v72 = *(v70 + 96);
  __swift_project_boxed_opaque_existential_1((v70 + 72), v72);
  sub_252AD7CC4();
  v73 = swift_task_alloc();
  *(v83 + 448) = v73;
  *v73 = v83;
  v73[1] = sub_252D3A04C;
  v74 = *(v83 + 264);
  v75 = &unk_252E5D280;
  v76 = v83 + 16;
LABEL_124:

  return sub_252BDB88C(v76, v75, v60, v74, 0, 0, 0, v72);
}

uint64_t sub_252D390FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D393BC, 0, 0);
  }

  else
  {
    v5 = v3[28];
    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[41] = v6;
    *v6 = v4;
    v6[1] = sub_252D392A8;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D392A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_252D39718;
  }

  else
  {
    v4 = sub_252D395BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D393BC()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D39454()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[31] + 8))(v2[35], v2[30]);
  if (v0)
  {
    v3 = sub_252D39C64;
  }

  else
  {
    v3 = sub_252D39B2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D395BC()
{
  v1 = v0[39];
  v0[25] = v1;
  v2 = v0 + 25;
  v3 = v0[42];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[29];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[47] = v11;
  *v11 = v0;
  v11[1] = sub_252D397BC;
  v12 = v0[34];

  return sub_252BDB88C((v0 + 17), &unk_252E3FA50, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D39718()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D397BC()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  (*(v2[31] + 8))(v2[34], v2[30]);
  if (v0)
  {
    v3 = sub_252D39A6C;
  }

  else
  {

    v3 = sub_252D3990C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D3990C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 336);
  v9 = *(v0 + 312);
  v10 = *(v0 + 224);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252D39A6C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D39B2C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 12, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252D39C64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D39CF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D39FB4, 0, 0);
  }

  else
  {
    v5 = v3[28];
    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[53] = v6;
    *v6 = v4;
    v6[1] = sub_252D39EA0;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D39EA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_252D3A310;
  }

  else
  {
    v4 = sub_252D3A1B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D39FB4()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D3A04C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  (*(v2[31] + 8))(v2[33], v2[30]);
  if (v0)
  {
    v3 = sub_252D3A85C;
  }

  else
  {
    v3 = sub_252D3A724;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D3A1B4()
{
  v1 = v0[51];
  v0[24] = v1;
  v2 = v0 + 24;
  v3 = v0[54];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[29];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[58] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[59] = v11;
  *v11 = v0;
  v11[1] = sub_252D3A3B4;
  v12 = v0[32];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D3A310()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D3A3B4()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  if (v0)
  {
    v3 = sub_252D3A664;
  }

  else
  {

    v3 = sub_252D3A504;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D3A504()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 432);
  v9 = *(v0 + 408);
  v10 = *(v0 + 224);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252D3A664()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D3A724()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252D3A85C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D3A8EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D3A90C, 0, 0);
}

uint64_t sub_252D3A90C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25299F248;
  v3 = v0[3];

  return sub_252C0E164(0, v1, v3);
}

uint64_t sub_252D3A9E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D3AA00, 0, 0);
}

uint64_t sub_252D3AA00()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2529CC350;
  v3 = v0[3];

  return sub_252C0E46C(0, v1, v3);
}

uint64_t sub_252D3AAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D38354(a1, a2, a3);
}

void *sub_252D3ABB0@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BatteryResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252D3AC14(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_252C285F0();
  if (v3 >> 62)
  {
    v15 = sub_252E378C4();

    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v4)
    {
      return 0;
    }
  }

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (v7 == 43)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v9 = [a1 userTask];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 attribute];

    if (v11 == 45)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v12 = [a1 userTask];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 attribute];

    return v14 == 44;
  }

  sub_252C515AC();
  return 0;
}

uint64_t sub_252D3AD70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D3A9E0(v2, v3);
}

uint64_t sub_252D3AE08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252D3A8EC(v2, v3);
}

BOOL sub_252D3AEB0(uint64_t a1)
{
  if (*(*(a1 + 128) + 16) && (v1 = *(a1 + 192), *(v1 + 16)))
  {
    return !sub_2529A78B0(1, v1);
  }

  else
  {
    return 1;
  }
}

unint64_t sub_252D3AEFC(uint64_t a1, double a2, double a3, double a4)
{
  v98 = MEMORY[0x277D84F90];
  v94 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
  v7 = [v94 characteristics];
  v8 = sub_252BAC798();
  v9 = sub_252E37264();

  if (v9 >> 62)
  {
LABEL_83:
    v10 = sub_252E378C4();
    if (!v10)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_96:

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v82 = sub_252E36AD4();
      __swift_project_value_buffer(v82, qword_27F544D60);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000004CLL, 0x8000000252E96270);
      v83 = [v94 characteristics];
      v84 = sub_252E37264();

      v85 = MEMORY[0x2530AD730](v84, v8);
      v87 = v86;

      MEMORY[0x2530AD570](v85, v87);

      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000090, 0x8000000252E961D0);

      return 0;
    }
  }

  v93 = v8;
  v8 = 0;
  v11 = v9 & 0xC000000000000001;
  v12 = v9 & 0xFFFFFFFFFFFFFF8;
  while (!v11)
  {
    if (v8 >= *(v12 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v13 = *(v9 + 8 * v8 + 32);
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v15 = v9;
    v96 = v13;
    v16 = [v13 characteristicType];
    v17 = sub_252E36F34();
    v19 = v18;

    if (v17 == sub_252E36F34() && v19 == v20)
    {
      goto LABEL_17;
    }

    v22 = sub_252E37DB4();

    if (v22)
    {
      goto LABEL_18;
    }

    ++v8;
    v9 = v15;
    if (v14 == v10)
    {
LABEL_34:
      v8 = v93;
      goto LABEL_96;
    }
  }

  v13 = MEMORY[0x2530ADF00](v8, v9);
  v14 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:

  v23 = [v94 characteristics];
  v9 = sub_252E37264();

  if (v9 >> 62)
  {
LABEL_87:
    v8 = sub_252E378C4();
    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

  v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_88:
    v8 = v93;
    goto LABEL_95;
  }

LABEL_20:
  v24 = 0;
  v25 = v9 & 0xC000000000000001;
  v26 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v25)
    {
      v27 = MEMORY[0x2530ADF00](v24, v9);
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v24 >= *(v26 + 16))
      {
        goto LABEL_81;
      }

      v27 = *(v9 + 8 * v24 + 32);
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    v29 = v9;
    v95 = v27;
    v30 = [v27 characteristicType];
    v31 = sub_252E36F34();
    v33 = v32;

    if (v31 == sub_252E36F34() && v33 == v34)
    {
      break;
    }

    v36 = sub_252E37DB4();

    if (v36)
    {
      goto LABEL_36;
    }

    ++v24;
    v9 = v29;
    if (v28 == v8)
    {
      goto LABEL_88;
    }
  }

LABEL_36:

  v37 = [v94 characteristics];
  v8 = v93;
  v9 = sub_252E37264();

  if (!(v9 >> 62))
  {
    v38 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v95;
    if (v38)
    {
      goto LABEL_38;
    }

LABEL_94:

LABEL_95:
    goto LABEL_96;
  }

  v38 = sub_252E378C4();
  v39 = v95;
  if (!v38)
  {
    goto LABEL_94;
  }

LABEL_38:
  v40 = 0;
  v91 = v9 & 0xC000000000000001;
  v41 = v9 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v91)
    {
      v42 = MEMORY[0x2530ADF00](v40, v9);
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_51;
      }

LABEL_42:
      v44 = v9;
      v8 = v42;
      v45 = [v42 characteristicType];
      v46 = sub_252E36F34();
      v48 = v47;

      if (v46 == sub_252E36F34() && v48 == v49)
      {
        goto LABEL_52;
      }

      v51 = sub_252E37DB4();

      if (v51)
      {
        goto LABEL_53;
      }

      ++v40;
      v9 = v44;
      if (v43 == v38)
      {
        goto LABEL_93;
      }

      continue;
    }

    break;
  }

  if (v40 >= *(v41 + 16))
  {
    goto LABEL_82;
  }

  v42 = *(v9 + 8 * v40 + 32);
  v43 = v40 + 1;
  if (!__OFADD__(v40, 1))
  {
    goto LABEL_42;
  }

LABEL_51:
  __break(1u);
LABEL_52:

LABEL_53:

  v52 = [v94 characteristics];
  v9 = sub_252E37264();

  if (v9 >> 62)
  {
    v53 = sub_252E378C4();
    if (v53)
    {
      goto LABEL_55;
    }

LABEL_92:

LABEL_93:
    v8 = v93;
    v39 = v95;
    goto LABEL_94;
  }

  v53 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v53)
  {
    goto LABEL_92;
  }

LABEL_55:
  v54 = 0;
  v90 = v9 & 0xFFFFFFFFFFFFFF8;
  v92 = v9 & 0xC000000000000001;
  while (1)
  {
    if (v92)
    {
      v55 = MEMORY[0x2530ADF00](v54, v9);
    }

    else
    {
      if (v54 >= *(v90 + 16))
      {
        goto LABEL_86;
      }

      v55 = *(v9 + 8 * v54 + 32);
    }

    v56 = v55;
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v58 = v9;
    v59 = [v55 characteristicType];
    v60 = sub_252E36F34();
    v62 = v61;

    if (v60 == sub_252E36F34() && v62 == v63)
    {
      break;
    }

    v65 = sub_252E37DB4();

    if (v65)
    {
      goto LABEL_69;
    }

    ++v54;
    v9 = v58;
    if (v57 == v53)
    {
      goto LABEL_92;
    }
  }

LABEL_69:

  v66 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v67 = v96;
  v68 = [v66 initWithBool_];
  [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v67 targetValue:v68];
  v97 = v67;

  MEMORY[0x2530AD700]();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  v69 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v70 = v95;
  v71 = [v69 initWithDouble_];
  [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v70 targetValue:v71];

  MEMORY[0x2530AD700]();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  v72 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v73 = v8;
  v74 = [v72 initWithDouble_];
  [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v73 targetValue:v74];

  MEMORY[0x2530AD700]();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  v75 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v76 = v56;
  v77 = [v75 initWithDouble_];
  [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v76 targetValue:v77];

  MEMORY[0x2530AD700]();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  v78 = v98;
  if (v98 >> 62)
  {
    v88 = sub_252E378C4();
    v78 = v98;
    v79 = v97;
    if (v88)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v79 = v97;
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_79:
      v80 = v78;

      return v80;
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v89 = sub_252E36AD4();
  __swift_project_value_buffer(v89, qword_27F544D60);
  sub_252CC3D90(0xD000000000000031, 0x8000000252E96190, 0xD000000000000090, 0x8000000252E961D0);

  return 0;
}

uint64_t sub_252D3BA48()
{
  type metadata accessor for SetDeltaTemperatureHandleDelegate();

  return swift_allocObject();
}

id sub_252D3BA78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_252B680FC(a1);
  sub_252B66C78(a3, a4, 0, &v43);

  if (!v44)
  {
    sub_25293847C(&v43, &qword_27F541E80, &qword_252E3DFA0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544C70);
    sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E968C0, 0xD00000000000008FLL, 0x8000000252E96390);
    return 0;
  }

  v8 = [a2 userTask];
  if (!v8)
  {
    sub_252C515AC();
LABEL_14:
    v14 = [a2 userTask];
    if (!v14)
    {
      sub_252C515AC();
      goto LABEL_21;
    }

    v15 = v14;
    v16 = [v14 taskType];

    if (v16 == 3)
    {
      v11 = 0xE90000000000004FLL;
      if (v42 <= 2u && v42 > 1u)
      {
      }

      else
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {
          if (v42 == 5)
          {

LABEL_57:
            if (qword_27F53F498 != -1)
            {
              swift_once();
            }

            v34 = sub_252E36AD4();
            __swift_project_value_buffer(v34, qword_27F544C70);
            sub_252CC3D90(0xD000000000000053, 0x8000000252E7A0B0, 0xD00000000000008FLL, 0x8000000252E96390);
            sub_252B680FC(v35);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
            goto LABEL_60;
          }

          v33 = sub_252E37DB4();

          if (v33)
          {
            goto LABEL_57;
          }

          goto LABEL_21;
        }
      }

      if (a1 == 15)
      {
        v20 = 0x5455415F4C4F4F43;
      }

      else
      {
        v20 = 1280266051;
      }

      if (a1 != 15)
      {
        v11 = 0xE400000000000000;
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544C70);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7A060);
      MEMORY[0x2530AD570](v20, v11);
      sub_252CC3D90(v43, *(&v43 + 1), 0xD00000000000008FLL, 0x8000000252E96390);

      sub_252B680FC(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = a3;
      v24 = inited + 32;
      *(inited + 40) = a4;
      v44 = &type metadata for ClimateModes;
      v25 = 6;
      goto LABEL_50;
    }

LABEL_21:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544C70);
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E7A010);
    sub_252E37AE4();
    sub_252CC3D90(v43, *(&v43 + 1), 0xD00000000000008FLL, 0x8000000252E96390);

    return 0;
  }

  v9 = v8;
  v10 = [v8 taskType];

  if (v10 != 2)
  {
    goto LABEL_14;
  }

  v11 = 0xE90000000000004FLL;
  if (v42 <= 2u && v42 > 1u)
  {
  }

  else
  {
    v12 = sub_252E37DB4();

    if ((v12 & 1) == 0)
    {
      if (v42 > 4u && v42 != 5)
      {

LABEL_53:
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v31 = sub_252E36AD4();
        __swift_project_value_buffer(v31, qword_27F544C70);
        sub_252CC3D90(0xD000000000000053, 0x8000000252E7A160, 0xD00000000000008FLL, 0x8000000252E96390);
        sub_252B680FC(v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
LABEL_60:
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_252E3C290;
        *(v36 + 32) = a3;
        *(v36 + 40) = a4;
        v44 = &type metadata for ClimateModes;
        LOBYTE(v43) = 4;

        sub_252B689F8(v36, &v43);
        swift_setDeallocating();
        sub_25293847C(v36 + 32, &unk_27F541300, &qword_252E3C100);

        sub_25293847C(&v43, &qword_27F541E80, &qword_252E3DFA0);
        type metadata accessor for HomeAttributeValue();
        v29 = 1330926913;
        v30 = 0xE400000000000000;
        goto LABEL_61;
      }

      v26 = sub_252E37DB4();

      if (v26)
      {
        goto LABEL_53;
      }

      goto LABEL_21;
    }
  }

  if (a1 == 15)
  {
    v20 = 0x5455415F54414548;
  }

  else
  {
    v20 = 1413563720;
  }

  if (a1 != 15)
  {
    v11 = 0xE400000000000000;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544C70);
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7A110);
  MEMORY[0x2530AD570](v20, v11);
  sub_252CC3D90(v43, *(&v43 + 1), 0xD00000000000008FLL, 0x8000000252E96390);

  sub_252B680FC(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  *(inited + 32) = a3;
  v24 = inited + 32;
  *(inited + 40) = a4;
  v44 = &type metadata for ClimateModes;
  v25 = 5;
LABEL_50:
  LOBYTE(v43) = v25;

  sub_252B689F8(inited, &v43);
  swift_setDeallocating();
  sub_25293847C(v24, &unk_27F541300, &qword_252E3C100);

  sub_25293847C(&v43, &qword_27F541E80, &qword_252E3DFA0);
  type metadata accessor for HomeAttributeValue();
  v29 = v20;
  v30 = v11;
LABEL_61:
  v37 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v29, v30, 0);
  v38 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v39 = sub_252E36F04();
  v40 = [v38 initWithIdentifier:0 displayString:v39];

  v41 = v40;
  [v41 setTaskType_];
  [v41 setAttribute_];
  [v41 setValue_];

  return v41;
}

double sub_252D3C5D8(void *a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E79FE0, 0xD00000000000008FLL, 0x8000000252E96390);
  v3 = [a1 userTask];
  v4 = 1.0;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 value];

    if (v6)
    {
      [v6 doubleValue];
      v4 = v7;

      v8 = [a1 userTask];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 taskType];

        if (v10 == 2)
        {
          return v4;
        }
      }

      else
      {
        sub_252C515AC();
      }

      return -v4;
    }
  }

  return v4;
}

uint64_t sub_252D3C730(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v9 = sub_252B680FC(a1);
  swift_beginAccess();
  v10 = *(v9 + 40);

  v110 = *(v10 + 16);

  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 taskType];

    v114 = v13 == 2;
  }

  else
  {
    v14 = sub_252C515AC();
    v114 = 0;
  }

  v15 = *(sub_252B680FC(v14) + 48);

  if (v15)
  {
    v109 = 1;
  }

  else
  {
    v109 = *(sub_252B680FC(v16) + 49);
  }

  v112 = a4;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v17 = 0x65736C6166;
  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544C70);
  sub_252E379F4();
  v19 = MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E96300);
  v20 = *(sub_252B680FC(v19) + 48);

  if (v20)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v20)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v21, v22);

  v23 = MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E96350);
  v24 = *(sub_252B680FC(v23) + 49);

  if (v24)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v24)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v25, v26);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008FLL, 0x8000000252E96390);

  v27 = sub_252C6E240(a1);
  if (!a2)
  {
    sub_252CC4050(0xD000000000000043, 0x8000000252E96420, 0xD00000000000008FLL, 0x8000000252E96390, 0xD00000000000006ELL, 0x8000000252E90A60, 169);
    return 0;
  }

  v28 = v27;
  v29 = a2;
  [v29 doubleValue];
  if (v114)
  {
    if (v28 == 3)
    {
      v31 = v30 < 15.0;
    }

    else
    {
      v31 = v30 < 60.0;
    }

    v32 = a4;
    if (v28 == 2)
    {
      v33 = 70.0;
      goto LABEL_37;
    }
  }

  else
  {
    if (v28 == 3)
    {
      v31 = v30 > 28.0;
    }

    else
    {
      v31 = v30 > 82.0;
    }

    v32 = a4;
    if (v28 == 2)
    {
      v34 = v110 != 1;
      v35 = a3 == 0;
      v33 = 70.0;
      if (!v112)
      {
        goto LABEL_34;
      }

      goto LABEL_42;
    }
  }

  v33 = 21.0;
LABEL_37:
  v34 = v110 != 1;
  if (a3)
  {
    if (v114)
    {
      v39 = a3;
      v40 = v39;
      v111 = v110 != 1;
      if (v31)
      {
        [v39 doubleValue];
        v42 = v33 - v41 > 1.0;
      }

      else
      {
        v42 = 0;
      }

      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000061, 0x8000000252E966C0);
      if (v42)
      {
        v49 = 1702195828;
      }

      else
      {
        v49 = 0x65736C6166;
      }

      if (v42)
      {
        v50 = 0xE400000000000000;
      }

      else
      {
        v50 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v49, v50);

      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);
      v35 = 0;
LABEL_67:

      v34 = v111;
      if (!(v109 & 1 | !v42) && !v111)
      {
        *(sub_252B680FC(v51) + 49) = 1;

        v52 = "is smaller than cooling: ";
        v53 = 0xD000000000000040;
LABEL_86:
        sub_252CC3D90(v53, v52 | 0x8000000000000000, 0xD00000000000008FLL, 0x8000000252E96390);
        return 0;
      }

      [v29 doubleValue];
      v44 = v54;
      if (v35)
      {
        v37 = 1;
        v32 = v112;
LABEL_75:
        v38 = &off_279711000;
        if (!v32)
        {
          goto LABEL_88;
        }

        goto LABEL_76;
      }

      v32 = v112;
LABEL_73:
      [a3 doubleValue];
      v37 = 0;
      if (v44 < v55 && v114)
      {
        v56 = "yHeatingCooling follow up";
        v57 = 0xD000000000000059;
        v38 = &off_279711000;
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    v35 = 0;
    if (!v32)
    {
LABEL_34:

      [v29 doubleValue];
      if (v35)
      {
        v37 = 1;
        v38 = &off_279711000;
        goto LABEL_88;
      }

      v44 = v36;
      goto LABEL_73;
    }
  }

  else
  {
    v35 = 1;
    if (!v32)
    {
      goto LABEL_34;
    }
  }

LABEL_42:
  if (!v114)
  {
    v45 = v32;
    v40 = v45;
    v111 = v34;
    if (v31)
    {
      [v45 doubleValue];
      v42 = v46 - v33 > 1.0;
    }

    else
    {
      v42 = 0;
    }

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000059, 0x8000000252E96610);
    if (v42)
    {
      v47 = 1702195828;
    }

    else
    {
      v47 = 0x65736C6166;
    }

    if (v42)
    {
      v48 = 0xE400000000000000;
    }

    else
    {
      v48 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v47, v48);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);
    goto LABEL_67;
  }

  [v29 doubleValue];
  v44 = v43;
  if (!v35)
  {
    goto LABEL_73;
  }

  v37 = 1;
  v38 = &off_279711000;
LABEL_76:
  [v32 doubleValue];
  if (v58 >= v44 || v114)
  {
    goto LABEL_88;
  }

  v56 = "erature based on thresholds";
  v57 = 0xD000000000000051;
LABEL_78:
  sub_252CC3D90(v57, v56 | 0x8000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);
  if ((v109 | v34))
  {
    goto LABEL_88;
  }

  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6)
      {
        goto LABEL_88;
      }
    }

    else if (a5 == 4)
    {

LABEL_85:
      *(sub_252B680FC(v59) + 48) = 1;

      v52 = "rrent temperature";
      v53 = 0xD000000000000039;
      goto LABEL_86;
    }
  }

  v60 = sub_252E37DB4();

  if (v60)
  {
    goto LABEL_85;
  }

LABEL_88:
  [v29 doubleValue];
  v63 = v62;
  v64 = sub_252C6E240(a1);
  sub_252D3C5D8(a1);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E79E70);
  sub_252E37374();
  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEF203A74696E7520);
  v65 = sub_252C65640(v64);
  MEMORY[0x2530AD570](v65);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79EA0);
  v66 = [a1 v38[214]];
  if (v66)
  {
    v67 = v66;
    v68 = [v66 taskType];

    if (v68 == 2)
    {
      v69 = 0xE400000000000000;
      v70 = 1702195828;
      goto LABEL_93;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v69 = 0xE500000000000000;
  v70 = 0x65736C6166;
LABEL_93:
  MEMORY[0x2530AD570](v70, v69);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79ED0);
  v71 = [a1 v38[214]];
  v72 = v38;
  if (v71)
  {
    v73 = v71;
    v74 = [v71 taskType];

    if (v74 == 3)
    {
      v75 = v37;
      v76 = 0xE400000000000000;
      v17 = 1702195828;
      goto LABEL_98;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v75 = v37;
  v76 = 0xE500000000000000;
LABEL_98:
  MEMORY[0x2530AD570](v17, v76);

  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008FLL, 0x8000000252E96390);

  v77 = v63 + sub_252D3C5D8(a1);
  v78 = type metadata accessor for HomeAttributeValue();
  v79 = objc_allocWithZone(v78);
  v80 = sub_252E36F04();
  v81 = [v79 initWithIdentifier:0 displayString:v80];

  v82 = v81;
  [v82 setDoubleValue_];
  [v82 setUnit_];
  [v82 setType_];

  LODWORD(v81) = *(sub_252B680FC(v83) + 48);

  if (v81 == 1)
  {
    sub_252CC3D90(0xD00000000000005BLL, 0x8000000252E964B0, 0xD00000000000008FLL, 0x8000000252E96390);
    if ((v75 & 1) == 0)
    {
      [a3 doubleValue];
      v85 = v84;
      v86 = [a1 v72 + 198];
      if (v86)
      {
        v87 = v86;
        v88 = [v86 taskType];

        if (v88 == 2)
        {
LABEL_107:
          v93 = v85 + sub_252D3C5D8(a1);
          v94 = objc_allocWithZone(v78);
          v95 = sub_252E36F04();
          v96 = [v94 initWithIdentifier:0 displayString:v95];

          v97 = v96;
          [v97 setDoubleValue_];
          [v97 setUnit_];
          [v97 setType_];

          v82 = v97;
          goto LABEL_109;
        }
      }

      else
      {
        sub_252C515AC();
      }
    }

    if (v112)
    {
      [v112 doubleValue];
      v85 = v89;
      v90 = [a1 v72 + 198];
      if (!v90)
      {
        sub_252C515AC();
        goto LABEL_109;
      }

      v91 = v90;
      v92 = [v90 taskType];

      if (v92 == 3)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_109:
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E96470);
  v98 = [v82 description];
  v99 = sub_252E36F34();
  v101 = v100;

  MEMORY[0x2530AD570](v99, v101);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008FLL, 0x8000000252E96390);

  v102 = [a1 v72 + 198];
  if (v102)
  {
    v103 = v102;
    v104 = [v102 taskType];

    v105 = v104 == 2;
  }

  else
  {
    sub_252C515AC();
    v105 = 0;
  }

  v106 = sub_252D3D554(a1, a3, v112, a6, v105, v82);

  return v106;
}

id sub_252D3D484(uint64_t a1, char a2, char a3)
{
  v4 = 6;
  if (a3)
  {
    v4 = 17;
  }

  if (a2)
  {
    v5 = 19;
  }

  else
  {
    v5 = v4;
  }

  v6 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setTaskType_];
  [v9 setAttribute_];
  [v9 setValue_];

  return v9;
}

uint64_t sub_252D3D554(void *a1, void *a2, objc_class *a3, uint64_t a4, int a5, void *a6)
{
  v91 = a5;
  v92 = a4;
  v93 = a3;
  v9 = sub_252E36AD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 filters];
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  v89 = a2;
  v90 = a6;
  type metadata accessor for HomeFilter();
  v15 = sub_252E37264();

  v16 = type metadata accessor for HomeStore(0);
  v17 = static HomeStore.shared.getter(v16);
  v18 = HomeStore.accessories(matching:supporting:)(v15, 0);
  v20 = v19;

  if (v20)
  {
    sub_252929F10(v18, 1);
LABEL_4:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v9, qword_27F544C70);
    (*(v10 + 16))(v12, v21, v9);
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E96730);
    v22 = [a1 filters];
    if (v22)
    {
      v23 = v22;
      type metadata accessor for HomeFilter();
      v24 = sub_252E37264();
    }

    else
    {
      v24 = 0;
    }

    v97 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
    v34 = sub_252E36F94();
    MEMORY[0x2530AD570](v34);

    sub_252CC3D90(v95, *(&v95 + 1), 0xD00000000000008ALL, 0x8000000252E8BF70);

    (*(v10 + 8))(v12, v9);
    return MEMORY[0x277D84F90];
  }

  LODWORD(v88) = sub_252C6E3CC(v18);
  v25 = sub_252C6E60C(v18);
  sub_252929F10(v18, 0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F544C70);
  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v95 = 0xD000000000000014;
  *(&v95 + 1) = 0x8000000252E96770;
  if (v25)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v26, v27);

  sub_252CC3D90(v95, *(&v95 + 1), 0xD00000000000008ALL, 0x8000000252E8BF70);

  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v95 = 0xD000000000000014;
  *(&v95 + 1) = 0x8000000252E96790;
  v28 = v88 | v25;
  if (v88)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v88)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v29, v30);

  v87 = "eResponseHandler";
  sub_252CC3D90(v95, *(&v95 + 1), 0xD00000000000008ALL, 0x8000000252E8BF70);

  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_252E3C130;
    v32 = sub_252D3D484(v90, v88 & 1, v25);
    result = v31;
    *(v31 + 32) = v32;
    return result;
  }

  v97 = MEMORY[0x277D84F90];
  v88 = sub_252C6E240(a1);
  sub_252B680FC(v88);
  sub_252B66C78(*(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier), *(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8), 0, &v95);

  if (v96)
  {
    v35 = swift_dynamicCast();
    v36 = v89;
    v37 = v93;
    if (v35)
    {
      v38 = v94;
    }

    else
    {
      v38 = 7;
    }
  }

  else
  {
    sub_25293847C(&v95, &qword_27F541E80, &qword_252E3DFA0);
    v38 = 7;
    v36 = v89;
    v37 = v93;
  }

  v39 = sub_252CD995C();
  v40 = *(v39 + 16);
  v41 = 32;
  do
  {
    v42 = v40;
    if (!v40)
    {
      break;
    }

    v43 = *(v39 + v41);
    v41 += 8;
    --v40;
  }

  while (v43 != 6);

  if (v38 <= 3)
  {
    goto LABEL_40;
  }

  if (v38 <= 5)
  {
    if (v38 == 4)
    {

LABEL_44:
      v46 = 17;
      v47 = 19;
      if (!v36)
      {
        v47 = 6;
      }

      if (!v37)
      {
        v46 = v47;
      }

      v48 = 19;
      v49 = 17;
      if (!v37)
      {
        v49 = 6;
      }

      if (!v36)
      {
        v48 = v49;
      }

      if (v91)
      {
        v45 = v48;
      }

      else
      {
        v45 = v46;
      }

      goto LABEL_55;
    }

    goto LABEL_40;
  }

  if (v38 == 6)
  {
LABEL_40:
    v44 = sub_252E37DB4();

    if (!v42 || (v44 & 1) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (!v42)
  {
    goto LABEL_44;
  }

LABEL_42:
  v45 = 6;
LABEL_55:
  v93 = type metadata accessor for HomeUserTask();
  v50 = objc_allocWithZone(v93);
  v51 = sub_252E36F04();
  v52 = [v50 initWithIdentifier:0 displayString:v51];

  v53 = v52;
  [v53 setTaskType_];
  [v53 setAttribute_];
  [v53 setValue_];

  MEMORY[0x2530AD700]();
  if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  v54 = v97;
  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v95 = 0xD00000000000002DLL;
  *(&v95 + 1) = 0x8000000252E967B0;
  v55 = HomeAttributeType.description.getter(v45);
  MEMORY[0x2530AD570](v55);

  sub_252CC3D90(v95, *(&v95 + 1), 0xD00000000000008ALL, v87 | 0x8000000000000000);

  if (v38 <= 3)
  {
    goto LABEL_62;
  }

  if (v38 > 5)
  {
    if (v38 != 6)
    {
      return v54;
    }

    goto LABEL_62;
  }

  if (v38 != 4)
  {
LABEL_62:
    v56 = sub_252E37DB4();

    if (v56)
    {
      goto LABEL_63;
    }

    return v54;
  }

LABEL_63:
  result = v54;
  if (v45 != 6 && v89 && v37)
  {
    [(objc_class *)v37 doubleValue];
    v58 = v57;
    [v89 doubleValue];
    v60 = v59;
    v61 = v87;
    sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E967E0, 0xD00000000000008ALL, v87 | 0x8000000000000000);
    if (v88 == 2)
    {
      v62 = 5.0;
    }

    else
    {
      v62 = 3.0;
    }

    if (v62 >= v58 - v60)
    {
      v63 = v58 - v60;
    }

    else
    {
      v63 = v62;
    }

    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E96820);
    sub_252E37374();
    sub_252CC3D90(v95, *(&v95 + 1), 0xD00000000000008ALL, v61 | 0x8000000000000000);

    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E96840);
    sub_252E37374();
    sub_252CC3D90(v95, *(&v95 + 1), 0xD00000000000008ALL, v61 | 0x8000000000000000);

    if (v45 == 17)
    {
      v76 = v90;
      [v90 doubleValue];
      result = v54;
      if (v77 - v63 >= v60)
      {
        return result;
      }

      [v76 doubleValue];
      v79 = v78 - v63;
      *&v95 = 0;
      *(&v95 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E96860);
      sub_252E37374();
      sub_252CC3D90(v95, *(&v95 + 1), 0xD00000000000008ALL, v87 | 0x8000000000000000);

      v80 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v81 = sub_252E36F04();
      v82 = [v80 initWithIdentifier:0 displayString:v81];

      v71 = v82;
      [v71 setDoubleValue_];
      [v71 setUnit_];
      [v71 setType_];

      v83 = objc_allocWithZone(v93);
      v84 = sub_252E36F04();
      v85 = [v83 initWithIdentifier:0 displayString:v84];

      v75 = v85;
      [v75 setTaskType_];
      [v75 setAttribute_];
    }

    else
    {
      v64 = v90;
      [v90 doubleValue];
      result = v54;
      if (v58 >= v63 + v65)
      {
        return result;
      }

      [v64 doubleValue];
      v67 = v63 + v66;
      *&v95 = 0;
      *(&v95 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E96890);
      sub_252E37374();
      sub_252CC3D90(v95, *(&v95 + 1), 0xD00000000000008ALL, v87 | 0x8000000000000000);

      v68 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v69 = sub_252E36F04();
      v70 = [v68 initWithIdentifier:0 displayString:v69];

      v71 = v70;
      [v71 setDoubleValue_];
      [v71 setUnit_];
      [v71 setType_];

      v72 = objc_allocWithZone(v93);
      v73 = sub_252E36F04();
      v74 = [v72 initWithIdentifier:0 displayString:v73];

      v75 = v74;
      [v75 setTaskType_];
      [v75 setAttribute_];
    }

    [v75 setValue_];

    MEMORY[0x2530AD700]();
    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    return v97;
  }

  return result;
}