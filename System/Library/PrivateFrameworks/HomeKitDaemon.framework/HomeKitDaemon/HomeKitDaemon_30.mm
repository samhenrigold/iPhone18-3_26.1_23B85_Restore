id sub_229844AA4(void *a1)
{
  result = [a1 homeManager];
  if (result)
  {
    v2 = result;
    v3 = [result capabilitiesController];

    if (v3 && (v4 = [v3 currentResidentCapabilities], v3, v4))
    {
      v5 = [v4 supportsDistributedExecutionOnAppleMediaAccessories];
      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t HMMediaRepeatState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 7105601;
      }

      return 0x746C7561666564;
    }

    return 6647375;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 6710863;
      }

      return 0x746C7561666564;
    }

    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_229844BCC()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 7105601;
      }

      return 0x746C7561666564;
    }

    return 6647375;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 6710863;
      }

      return 0x746C7561666564;
    }

    return 0x6E776F6E6B6E55;
  }
}

uint64_t *PassUpdater.shared.unsafeMutableAddressor()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  return &static PassUpdater.shared;
}

uint64_t sub_229844CA4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return v4();
}

uint64_t sub_229844D8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229844DB0, v2, 0);
}

void sub_229844DB0()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
LABEL_2:
  if (v1 <= 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = v1;
  }

  v4 = &unk_283CDBA00 + 24 * v1++;
  v5 = -v3;
  v6 = v4 + 48;
  do
  {
    if (v5 + v1 == 1)
    {
      __break(1u);
      return;
    }

    v8 = v0[2];
    v7 = v0[3];

    v10 = sub_22985A474(v9, v8, v7);
    if (v11)
    {
      v14 = v11;
      v15 = v10;
      v16 = v12;
      v17 = v13;
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_22958B990(0, v2[2] + 1, 1, v2);
      }

      v20 = v2[2];
      v19 = v2[3];
      if (v20 >= v19 >> 1)
      {
        v24 = sub_22958B990((v19 > 1), v20 + 1, 1, v2);
        v22 = v14;
        v2 = v24;
        v21 = v15;
      }

      else
      {
        v21 = v15;
        v22 = v14;
      }

      v2[2] = v20 + 1;
      v23 = &v2[4 * v20];
      v23[4] = v21;
      v23[5] = v22;
      v23[6] = &unk_22A585FF0;
      v23[7] = v18;
      if (v1 == 5)
      {
        goto LABEL_18;
      }

      goto LABEL_2;
    }

    ++v1;
    v6 += 24;
  }

  while (v1 != 6);
  if (v2[2])
  {
LABEL_18:
    v26 = v2[4];
    v25 = v2[5];
    v0[5] = v25;
    v28 = v2[6];
    v27 = v2[7];

    v29 = swift_allocObject();
    v0[6] = v29;
    *(v29 + 16) = v28;
    *(v29 + 24) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4C0, &qword_22A578658);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22A576180;
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_22A580520;
    *(v31 + 24) = v29;
    *(v30 + 32) = v26;
    *(v30 + 40) = v25;
    *(v30 + 48) = &unk_22A586000;
    *(v30 + 56) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D881B98, &qword_22A586008);
    v32 = swift_allocObject();
    v0[7] = v32;
    *(v32 + 16) = xmmword_22A576180;
    *(v32 + 32) = 0x796D6D7564;
    *(v32 + 40) = 0xE500000000000000;
    *(v32 + 48) = v30;

    v33 = swift_task_alloc();
    v0[8] = v33;
    *v33 = v0;
    v33[1] = sub_229845154;

    runHomeUtilOnDeviceTests(_:)(v32);
    return;
  }

  v34 = v0[1];

  v34(0x6E756F6620746F6ELL, 0xE900000000000064);
}

uint64_t sub_229845154(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = v6[4];
    v8 = sub_229845310;
  }

  else
  {
    v9 = v6[4];

    v6[10] = a2;
    v6[11] = a1;
    v8 = sub_2298452A0;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2298452A0()
{

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_229845310()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_229845388()
{
  v0 = type metadata accessor for PassUpdater();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v2 = sub_22A4DBA1C();
  v3 = MEMORY[0x277D84F98];
  v1[14] = v2;
  v1[15] = v3;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  static PassUpdater.shared = result;
  return result;
}

id PassUpdater.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v2 = sub_22A4DBA1C();
  v3 = MEMORY[0x277D84F98];
  v1[14] = v2;
  v1[15] = v3;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static PassUpdater.shared.getter()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22984555C()
{
  v4 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22984562C;
  v2 = MEMORY[0x277D839B0];

  return v4(v0 + 40, &unk_22A585988, 0, v2);
}

uint64_t sub_22984562C()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_229845774;
  }

  else
  {
    v4 = sub_229845758;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298457B0()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 32) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_22984584C, v1, 0);
}

uint64_t sub_22984584C()
{
  v4 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  *v1 = v0;
  v1[1] = sub_229845930;

  return v4(v0 + 16, &unk_22A586688, 0, v2);
}

uint64_t sub_229845930()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_229845B20;
  }

  else
  {
    v4 = sub_229845A5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229845A80()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[3];

  *v3 = v2 > 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_229845CB0(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_229845D2C, a2, 0);
}

uint64_t sub_229845D2C()
{
  v4 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_229845DFC;
  v2 = MEMORY[0x277D839B0];

  return v4(v0 + 48, &unk_22A585988, 0, v2);
}

uint64_t sub_229845DFC()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_229845FA8;
  }

  else
  {
    v4 = sub_229845F28;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229845F28()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 48), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229845FA8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = sub_22A4DB3DC();

  (*(v2 + 16))(v2, 0, v3);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t PassUpdater.updatePassOnKeychainUpdateFor(homeUUID:flow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_229846070, v3, 0);
}

uint64_t sub_229846070()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = 0;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  *(v4 + 56) = v1;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v5 = v0;
  v5[1] = sub_22984618C;

  return v8(v0 + 2, &unk_22A5859A0, v4, v6);
}

uint64_t sub_22984618C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_2298462EC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2298462B0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298462B0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v4;
  *(v1 + 24) = v3;
  *(v1 + 40) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2298462EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298464E4(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a4;
  v7 = sub_22A4DB7DC();
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[12] = v8;
  v4[13] = _Block_copy(a3);
  sub_22A4DB79C();
  v9 = a2;

  v10 = swift_task_alloc();
  v4[14] = v10;
  *v10 = v4;
  v10[1] = sub_229846630;

  return PassUpdater.updatePassOnKeychainUpdateFor(homeUUID:flow:)((v4 + 2), v8, v9);
}

uint64_t sub_229846630()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v16 = *(*v1 + 16);
  v17 = *(*v1 + 40);
  v15 = *(*v1 + 48);
  v14 = *(*v1 + 56);

  (*(v4 + 8))(v3, v5);

  v8 = *(v2 + 104);
  if (v0)
  {
    v9 = sub_22A4DB3DC();

    (v8)[2](v8, 0, 0, 0, 0, 0, 0, v9);
    _Block_release(v8);
  }

  else
  {
    sub_229562F68(0, &qword_281401930, 0x277D37FE0);
    v10 = sub_22A4DD81C();
    v11 = sub_22A4DD81C();
    (v8)[2](v8, v16, v10, v11, v17, v15, v14, 0);

    _Block_release(v8);
  }

  v12 = *(v7 + 8);

  return v12();
}

uint64_t PassUpdater.updatePassFor(homeUUID:isOnboarding:ignoreCache:flow:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 58) = a4;
  *(v6 + 57) = a3;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  return MEMORY[0x2822009F8](sub_229846980, v5, 0);
}

uint64_t sub_229846980()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 58);
  v4 = *(v0 + 57);
  v5 = *(v0 + 72);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  *(v6 + 49) = v3;
  *(v6 + 56) = v1;
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v7 = v0;
  v7[1] = sub_229846AB0;

  return v10(v0 + 16, &unk_22A5859B8, v6, v8);
}

uint64_t sub_229846AB0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_22985CBFC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_22985CBF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229846D84(uint64_t a1, char a2, char a3, void *a4, const void *a5, uint64_t a6)
{
  v6[8] = a4;
  v6[9] = a6;
  v11 = sub_22A4DB7DC();
  v6[10] = v11;
  v6[11] = *(v11 - 8);
  v12 = swift_task_alloc();
  v6[12] = v12;
  v6[13] = _Block_copy(a5);
  sub_22A4DB79C();
  v13 = a4;

  v14 = swift_task_alloc();
  v6[14] = v14;
  *v14 = v6;
  v14[1] = sub_22985CC0C;

  return PassUpdater.updatePassFor(homeUUID:isOnboarding:ignoreCache:flow:)((v6 + 2), v12, a2, a3, v13);
}

uint64_t PassUpdater.updatePassFor(homeUUID:isOnboarding:optionsRawValue:ignoreCache:flow:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 58) = a5;
  *(v7 + 72) = a2;
  *(v7 + 80) = a4;
  *(v7 + 57) = a3;
  *(v7 + 64) = a1;
  return MEMORY[0x2822009F8](sub_229846F18, v6, 0);
}

uint64_t sub_229846F18()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 58);
  v4 = *(v0 + 57);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = 0;
  *(v7 + 49) = v3;
  *(v7 + 56) = v1;
  v11 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v8 = v0;
  v8[1] = sub_229847048;

  return v11(v0 + 16, &unk_22A5859C8, v7, v9);
}

uint64_t sub_229847048()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_22984716C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_22985CBF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22984716C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229847390(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, const void *a6, uint64_t a7)
{
  v7[8] = a5;
  v7[9] = a7;
  v13 = sub_22A4DB7DC();
  v7[10] = v13;
  v7[11] = *(v13 - 8);
  v14 = swift_task_alloc();
  v7[12] = v14;
  v7[13] = _Block_copy(a6);
  sub_22A4DB79C();
  v15 = a5;

  v16 = swift_task_alloc();
  v7[14] = v16;
  *v16 = v7;
  v16[1] = sub_22985CC0C;

  return PassUpdater.updatePassFor(homeUUID:isOnboarding:optionsRawValue:ignoreCache:flow:)((v7 + 2), v14, a2, a3, a4, v15);
}

uint64_t sub_2298474FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 40) = a5;
  *(v8 + 48) = a8;
  *(v8 + 98) = a7;
  *(v8 + 97) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 96) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_229847530, a8, 0);
}

uint64_t sub_229847530()
{
  v1 = *(v0 + 98);
  v2 = *(v0 + 97);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 96);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v4;
  *(v8 + 40) = v2 & 1;
  *(v8 + 41) = v1;
  *(v8 + 48) = v3;
  v9 = sub_22A4DD5EC();
  v11 = v10;
  *(v0 + 64) = v10;
  v12 = sub_22A4DBCEC();
  v14 = v13;
  *(v0 + 72) = v13;
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v15 = v0;
  v15[1] = sub_229847694;
  v16 = *(v0 + 16);

  return MEMORY[0x2821677F0](v16, v6, v9, v11, v12, v14, &unk_22A585F78, v8);
}

uint64_t sub_229847694()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_2298477E8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2298477E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229847860(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 59) = a6;
  *(v7 + 58) = a5;
  *(v7 + 216) = a4;
  *(v7 + 224) = a7;
  *(v7 + 57) = a2;
  *(v7 + 200) = a1;
  *(v7 + 208) = a3;
  *(v7 + 232) = type metadata accessor for HomePassState(0);
  *(v7 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229847908, a7, 0);
}

uint64_t sub_229847908()
{
  if (*(v0 + 57) == 1)
  {
    v1 = [objc_allocWithZone(type metadata accessor for HMDHomeKeySetupWalletLogEventV2()) init];
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 248) = v1;
  v2 = *(v0 + 58);
  v3 = *(v0 + 216);
  sub_22A4DE1FC();

  sub_22A4DB7DC();
  sub_22985C0F4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v4);

  MEMORY[0x22AAD08C0](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  *(v0 + 128) = v3;
  *(v0 + 136) = v2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B90, &qword_22A585F80);
  v5 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v5);

  sub_22A4DBD0C();

  v6 = [objc_opt_self() driver];
  v7 = [v6 homeManager];
  *(v0 + 256) = v7;

  v8 = [v7 homes];
  if (v8)
  {
    v9 = v8;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v10 = sub_22A4DD83C();
  }

  else
  {
    v10 = 0;
  }

  *(v0 + 152) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();
  v11 = *(v0 + 208);

  v12 = *(v0 + 144);
  v13 = swift_task_alloc();
  *(v13 + 16) = v11;
  v14 = sub_22968FFF0(sub_22985C544, v13, v12);

  *(v0 + 192) = v14;
  v29 = sub_229562F68(0, &qword_2814017B0, off_278666198);
  sub_22A4DBD4C();

  v15 = *(v0 + 184);
  *(v0 + 264) = v15;
  if (([v7 hasFinishedStartingUp] & 1) == 0)
  {
    sub_2297B8424();
    v19 = swift_allocError();
    v20 = xmmword_22A585950;
    goto LABEL_13;
  }

  v16 = *(v0 + 59);
  v17 = *(v0 + 58);
  if (([v7 hasBeenOneMinuteSinceFinishedStartingUp] & 1) == 0 && (v17 & 1) != 0 && (v16 & 1) == 0)
  {
    sub_2297B8424();
    v19 = swift_allocError();
    v20 = xmmword_22A585960;
LABEL_13:
    *v18 = v20;
    swift_willThrow();

    *(v0 + 160) = v19;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    if (swift_dynamicCast())
    {
      sub_22985C530(*(v0 + 112), *(v0 + 120));
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5993B0);
      swift_getErrorValue();
      sub_22A4DE5EC();
      sub_22A4DBD0C();
    }

    else
    {
      v22 = *(v0 + 248);

      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A599350);
      swift_getErrorValue();
      sub_22A4DE5EC();
      sub_22A4DBD3C();

      if (v22)
      {
        v23 = *(v0 + 248);
        sub_22A4DBD0C();
        v24 = [objc_opt_self() sharedLogEventSubmitter];
        v25 = sub_22A4DB3DC();
        [v24 submitLogEvent:v23 error:v25];

        swift_unknownObjectRelease();
      }
    }

    v26 = *(v0 + 248);
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }

  return MEMORY[0x2822009F8](sub_229847F6C, 0, 0);
}

uint64_t sub_229847F6C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 58);
  v3 = *(v0 + 216);
  v4 = *(v0 + 57);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2 & 1;
  *(v5 + 33) = v4;
  v6 = swift_task_alloc();
  *(v0 + 280) = v6;
  *v6 = v0;
  v6[1] = sub_229848074;
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);

  return MEMORY[0x2821677C0](v7, 0xD000000000000022, 0x800000022A5993D0, &unk_22A585F88, v5, v8);
}

uint64_t sub_229848074()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229848384, 0, 0);
  }

  else
  {
    v3 = *(v2 + 264);

    v4 = v3;
    v5 = swift_task_alloc();
    *(v2 + 296) = v5;
    *v5 = v2;
    v5[1] = sub_229848210;
    v6 = *(v2 + 240);
    v7 = *(v2 + 59);

    return sub_229848F10(v2 + 16, v3, v6, v7);
  }
}

uint64_t sub_229848210()
{
  v2 = *v1;
  v3 = *v1;
  v3[38] = v0;
  v3[39] = v2[2];
  v4 = *(v3 + 5);
  *(v3 + 20) = *(v3 + 3);
  *(v3 + 21) = v4;
  *(v3 + 60) = *(v3 + 56);

  v5 = v2[33];
  v6 = v2[28];

  if (v0)
  {
    v7 = sub_229848A50;
  }

  else
  {
    v7 = sub_229848648;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_229848384()
{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_2298483F0, v1, 0);
}

uint64_t sub_2298483F0()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 288);
  *(v0 + 160) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (swift_dynamicCast())
  {
    sub_22985C530(*(v0 + 112), *(v0 + 120));
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5993B0);
    swift_getErrorValue();
    sub_22A4DE5EC();
    sub_22A4DBD0C();
  }

  else
  {
    v4 = *(v0 + 248);

    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A599350);
    swift_getErrorValue();
    sub_22A4DE5EC();
    sub_22A4DBD3C();

    if (v4)
    {
      v5 = *(v0 + 248);
      sub_22A4DBD0C();
      v6 = [objc_opt_self() sharedLogEventSubmitter];
      v7 = sub_22A4DB3DC();
      [v6 submitLogEvent:v5 error:v7];

      swift_unknownObjectRelease();
    }
  }

  v8 = *(v0 + 248);
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_229848648(uint64_t a1)
{
  v2 = v1[31];
  if (v2)
  {
    v2[OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_success] = 1;
    v3 = v2;
    sub_22A4DBD0C();
    [objc_msgSend(objc_opt_self() sharedLogEventSubmitter)];
    swift_unknownObjectRelease();
  }

  v4 = sub_22A4DBCDC();
  v1[44] = v4;
  v5 = sub_22A4DD5EC();
  v7 = v6;
  v1[45] = v6;
  v8 = sub_22A4DBCEC();
  v10 = v9;
  v1[46] = v9;
  v11 = swift_task_alloc();
  v1[47] = v11;
  *v11 = v1;
  v11[1] = sub_2298487E0;
  v12 = v1[28];

  return MEMORY[0x2821677F0](v11, v4, v5, v7, v8, v10, &unk_22A585F90, v12);
}

uint64_t sub_2298487E0()
{
  v2 = *v1;

  v3 = *(v2 + 224);
  if (v0)
  {

    v4 = sub_22985CC10;
  }

  else
  {

    v4 = sub_229848968;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229848968()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 60);
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v9 = *(v0 + 200);
  v12 = *(v0 + 320);

  sub_22985C628(v7, type metadata accessor for HomePassState);
  *v9 = v4;
  *(v9 + 8) = v12;
  *(v9 + 24) = v3;
  *(v9 + 32) = v1;
  *(v9 + 40) = v2;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_229848A50()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);

  sub_22985C628(v2, type metadata accessor for HomePassState);
  v3 = *(v0 + 304);
  *(v0 + 160) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (swift_dynamicCast())
  {
    sub_22985C530(*(v0 + 112), *(v0 + 120));
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5993B0);
    swift_getErrorValue();
    sub_22A4DE5EC();
    sub_22A4DBD0C();
  }

  else
  {
    v5 = *(v0 + 248);

    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A599350);
    swift_getErrorValue();
    sub_22A4DE5EC();
    sub_22A4DBD3C();

    if (v5)
    {
      v6 = *(v0 + 248);
      sub_22A4DBD0C();
      v7 = [objc_opt_self() sharedLogEventSubmitter];
      v8 = sub_22A4DB3DC();
      [v7 submitLogEvent:v6 error:v8];

      swift_unknownObjectRelease();
    }
  }

  v9 = *(v0 + 248);
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_229848CC8(id *a1, uint64_t a2)
{
  v17[1] = a2;
  v4 = &unk_27D87D2A0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  v15 = [*a1 uuid];
  sub_22A4DB79C();

  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_22A4DBD4C();
  sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
  if (!v2)
  {
    LOBYTE(v4) = sub_22A4DB78C();
    (*(v9 + 8))(v14, v8);
  }

  return v4 & 1;
}

uint64_t sub_229848F10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 57) = a4;
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  return MEMORY[0x2822009F8](sub_229848F38, v4, 0);
}

uint64_t sub_229848F38()
{
  v1 = *(v0 + 96);
  v17 = *(v0 + 104);
  v2 = *(v0 + 57);
  v3 = *(v0 + 88);
  v4 = objc_opt_self();
  type metadata accessor for HomePassState(0);
  type metadata accessor for HomePassData(0);
  v5 = sub_22A4DB77C();
  v6 = sub_22A4DB77C();
  v7 = [v4 passSerialNumberWithHomeUUID:v5 userUUID:v6];

  v8 = sub_22A4DD5EC();
  v10 = v9;

  *(v0 + 112) = v10;
  sub_22A4DE1FC();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD00000000000002BLL, 0x800000022A598C70);
  MEMORY[0x22AAD08C0](v8, v10);
  MEMORY[0x22AAD08C0](0x3A6574617473202CLL, 0xE900000000000020);
  sub_22A4DE31C();
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  *(v0 + 120) = v12;
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v1;
  *(v13 + 40) = v3;
  *(v13 + 48) = v17;
  *(v13 + 56) = v2;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v14 = v0;
  v14[1] = sub_229849184;

  return MEMORY[0x2821677C0](v0 + 16, v11, v12, &unk_22A585CD0, v13, v15);
}

uint64_t sub_229849184()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_229849300;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_2298492C4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298492C4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v4;
  *(v1 + 24) = v3;
  *(v1 + 40) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_229849300()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229849378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 483) = a7;
  *(v7 + 3040) = a6;
  *(v7 + 3032) = a5;
  *(v7 + 3024) = a4;
  *(v7 + 3016) = a3;
  *(v7 + 3008) = a2;
  *(v7 + 3000) = a1;
  v9 = sub_22A4DB7DC();
  *(v7 + 3048) = v9;
  *(v7 + 3056) = *(v9 - 8);
  *(v7 + 3064) = swift_task_alloc();
  v10 = type metadata accessor for HomePassState(0);
  *(v7 + 3072) = v10;
  v11 = *(v10 - 8);
  *(v7 + 3080) = v11;
  *(v7 + 3088) = *(v11 + 64);
  *(v7 + 3096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8);
  *(v7 + 3104) = swift_task_alloc();
  v12 = type metadata accessor for HomePassData(0);
  *(v7 + 3112) = v12;
  *(v7 + 3120) = *(v12 - 8);
  *(v7 + 3128) = swift_task_alloc();
  *(v7 + 3136) = swift_task_alloc();
  *(v7 + 3144) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  *(v7 + 3152) = swift_task_alloc();
  *(v7 + 3160) = swift_task_alloc();
  *(v7 + 3168) = swift_task_alloc();
  *(v7 + 3176) = swift_task_alloc();
  *(v7 + 3184) = swift_task_alloc();
  *(v7 + 3192) = swift_task_alloc();
  *(v7 + 3200) = swift_task_alloc();
  *(v7 + 3208) = swift_task_alloc();
  *(v7 + 3216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298495F4, a6, 0);
}

uint64_t sub_2298495F4()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  v0[403] = static PassLibrary.shared;
  if (qword_281402FC0 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  v2 = unk_281405100;
  v0[404] = qword_2814050F8;
  v0[405] = v2;

  return MEMORY[0x2822009F8](sub_2298496DC, v1, 0);
}

uint64_t sub_2298496DC()
{
  v7 = *(v0 + 3232);
  v1 = *(v0 + 3016);
  v2 = *(v0 + 3008);
  v3 = swift_task_alloc();
  *(v0 + 3248) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  *(v0 + 3256) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *(v0 + 3264) = v5;
  *v4 = v0;
  v4[1] = sub_2298497FC;

  return v8(v0 + 2984, &unk_22A57B7C0, v3, v5);
}

uint64_t sub_2298497FC()
{
  v2 = *v1;
  *(*v1 + 3272) = v0;

  if (v0)
  {
    v3 = *(v2 + 3224);
    v4 = sub_229849D9C;
  }

  else
  {
    v5 = *(v2 + 3224);

    v4 = sub_229849924;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229849924()
{
  v1 = v0[380];
  v0[410] = v0[373];
  return MEMORY[0x2822009F8](sub_229849948, v1, 0);
}

id sub_229849948()
{
  v1 = *(*(v0 + 3024) + 9);
  *(v0 + 2414) = v1;
  if (v1 == 2)
  {
LABEL_2:
    v2 = 0;
    goto LABEL_5;
  }

  if (!*(v0 + 3280))
  {
    v23 = *(v0 + 3032);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000046, 0x800000022A598CA0);
    if (v23)
    {
      v24 = [*(v0 + 3032) uuid];
      sub_22A4DB79C();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(*(v0 + 3056) + 56))(*(v0 + 3216), v25, 1, *(v0 + 3048));
    v26 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v26);

    sub_22A4DBD0C();

    if (v23)
    {
      v27 = *(v0 + 3032);
      result = [v27 walletKeyManager];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v28 = result;
      [result removeWalletKeyMigrationSettingsFileFromDisk];
    }

    goto LABEL_2;
  }

  v2 = 1;
LABEL_5:
  *(v0 + 2415) = v2;
  v3 = *(v0 + 3040);
  swift_beginAccess();
  v4 = *(v3 + 120);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 3016);
    v6 = *(v0 + 3008);

    v7 = sub_229543DBC(v6, v5);
    if (v8)
    {
      v9 = *(v0 + 3280);
      v10 = *(v0 + 3136);
      v11 = *(v0 + 3128);
      v12 = *(v0 + 483);
      sub_22985B3BC(*(v4 + 56) + *(*(v0 + 3120) + 72) * v7, v11, type metadata accessor for HomePassData);

      sub_22985B584(v11, v10, type metadata accessor for HomePassData);
      if ((v12 & 1) == 0)
      {
        if (v9)
        {
          v13 = _s13HomeKitDaemon0A8PassDataV23__derived_struct_equalsySbAC_ACtFZ_0((*(v0 + 3024) + *(*(v0 + 3072) + 48)), *(v0 + 3136));
          if (v1 == 2 && (v13 & 1) != 0)
          {
            v14 = *(v0 + 3280);
            v15 = *(v0 + 3136);
            v16 = *(v0 + 3000);
            sub_22A4DBD0C();
            *v16 = 4;

            v17 = MEMORY[0x277D84F90];
            *(v16 + 8) = MEMORY[0x277D84F90];
            *(v16 + 16) = v17;
            *(v16 + 24) = 0;
            sub_22985C628(v15, type metadata accessor for HomePassData);
            *(v16 + 32) = 0;
            *(v16 + 40) = 0;

            v18 = *(v0 + 8);

            return v18();
          }
        }
      }

      sub_22985C628(*(v0 + 3136), type metadata accessor for HomePassData);
    }

    else
    {
    }
  }

  v20 = swift_task_alloc();
  *(v0 + 3288) = v20;
  *v20 = v0;
  v20[1] = sub_229849ED4;
  v21 = *(v0 + 3280);
  v22 = *(v0 + 3024);

  return sub_22984D340(v0 + 2304, v22, v21);
}

uint64_t sub_229849D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229849ED4()
{
  v2 = *v1;
  *(*v1 + 3296) = v0;

  v3 = *(v2 + 3040);
  if (v0)
  {
    v4 = sub_22984D0C8;
  }

  else
  {
    *(v2 + 3304) = *(v2 + 2304);
    *(v2 + 3320) = *(v2 + 2320);
    *(v2 + 3336) = *(v2 + 2336);
    *(v2 + 484) = *(v2 + 2352);
    v4 = sub_22984A018;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22984A018()
{
  sub_22A4DE1FC();
  *(v0 + 2944) = 0;
  *(v0 + 2952) = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD00000000000001ELL, 0x800000022A598CF0);
  v1 = *(v0 + 2320);
  *(v0 + 2360) = *(v0 + 2304);
  *(v0 + 2376) = v1;
  *(v0 + 2392) = *(v0 + 2336);
  *(v0 + 2408) = *(v0 + 2352);
  sub_22A4DE31C();
  sub_22A4DBD0C();

  *(v0 + 3352) = *(v0 + 2304);
  v2 = *(v0 + 2312);
  *(v0 + 3360) = v2;
  v3 = *(v0 + 2320);
  *(v0 + 3368) = v3;
  v4 = *(v0 + 2328);
  *(v0 + 3376) = v4;
  v5 = *(v0 + 2336);
  *(v0 + 2468) = v5;
  *(v0 + 2412) = *(v0 + 2353);
  v6 = *(v0 + 2355);
  *(v0 + 2469) = v6;
  v7 = *(v0 + 3280);
  if (!v2)
  {
    if (v7)
    {
      v15 = *(v0 + 3224);
      v14 = sub_22984A624;
      goto LABEL_21;
    }

    v25 = *(v0 + 3032);
    if (v25)
    {
      v26 = *(v0 + 2415);
      v27 = v25;
      [v27 resetHomeKeyMiscInfo];
      if (v26 == 1)
      {
        v14 = [v27 walletKeyManager];
        if (!v14)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v14, v15, v28);
        }

        v29 = v14;
        v30 = *(v0 + 3280);
        v31 = *(v0 + 3000);
        [v14 removeWalletKeyMigrationSettingsFileFromDisk];

        goto LABEL_27;
      }

      v30 = *(v0 + 3280);
    }

    else
    {
      v30 = 0;
    }

    v31 = *(v0 + 3000);
LABEL_27:
    *v31 = 2;

    v43 = MEMORY[0x277D84F90];
    *(v31 + 8) = MEMORY[0x277D84F90];
    *(v31 + 16) = v43;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0;

    v44 = *(v0 + 8);

    return v44();
  }

  v8 = (v0 + 3336);
  v9 = (v0 + 3320);
  v10 = (v0 + 3304);
  *(v0 + 2928) = *(v0 + 2337);
  if (v7)
  {
    if (v6)
    {
      v11 = *(v0 + 484);
      v12 = *(v0 + 3224);
      *(v0 + 2752) = *v10;
      *(v0 + 2768) = *v9;
      *(v0 + 2784) = *v8;
      *(v0 + 2800) = v11;
      sub_22985B0DC(v0 + 2752, v0 + 2248);
      sub_22A4DBD0C();
      v13 = v7;
      v14 = sub_22984B3F0;
      v15 = v12;
      goto LABEL_21;
    }

    v20 = *(v0 + 484);
    *(v0 + 2640) = *v10;
    *(v0 + 2656) = *v9;
    *(v0 + 2672) = *v8;
    *(v0 + 2688) = v20;
    sub_22985B0DC(v0 + 2640, v0 + 2696);
    v21 = *(v0 + 2468);
    v22 = *(v0 + 3368);
    v57 = *(v0 + 2468);
    v55 = v22;
    if (v57)
    {
      if (v21 == 1)
      {
        v23 = 0;
        v24 = *(v0 + 3368);
        v21 = v24;
LABEL_20:
        *(v0 + 3480) = v23;
        *(v0 + 3472) = v21;
        v52 = *(v0 + 2412);
        v48 = *(v0 + 3360);
        v49 = *(v0 + 3376);
        v47 = *(v0 + 3352);
        v53 = *(v0 + 484);
        v54 = *(v0 + 2469);
        v50 = *(v0 + 3336);
        v51 = *(v0 + 3344);
        v56 = *(v0 + 3224);
        v33 = *(v0 + 3112);
        v34 = *(v0 + 3096);
        v35 = *(v0 + 3088);
        v36 = *(v0 + 3080);
        v37 = *(v0 + 3072);
        v38 = *(v0 + 3024);
        v39 = v24;
        *(v0 + 2300) = *(v37 + 48);
        *(v0 + 2356) = *(v33 + 24);
        v45 = *(v0 + 3320);
        v46 = *v10;
        sub_22985B3BC(v38, v34, type metadata accessor for HomePassState);
        v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
        v41 = swift_allocObject();
        *(v0 + 3488) = v41;
        sub_22985B584(v34, v41 + v40, type metadata accessor for HomePassState);
        v42 = v41 + ((v35 + v40 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v42 = v47;
        *(v42 + 8) = v48;
        *(v42 + 16) = v55;
        *(v42 + 24) = v49;
        *(v42 + 32) = v57;
        *(v42 + 33) = *(v0 + 2928);
        *(v42 + 49) = v52;
        *(v42 + 51) = v54;
        *(v0 + 2544) = v45;
        *(v0 + 2528) = v46;
        *(v0 + 2560) = v50;
        *(v0 + 2568) = v51;
        *(v0 + 2576) = v53;
        sub_22985B0DC(v0 + 2528, v0 + 2584);
        v14 = sub_22984B9B8;
        v15 = v56;
LABEL_21:
        v28 = 0;

        return MEMORY[0x2822009F8](v14, v15, v28);
      }

      v24 = *(v0 + 3376);
      v32 = v22;
      v21 = v24;
    }

    else
    {
      v24 = *(v0 + 3368);
    }

    v23 = v22;
    goto LABEL_20;
  }

  v16 = *(v0 + 484);
  *(v0 + 2416) = *v10;
  *(v0 + 2432) = *v9;
  *(v0 + 2448) = *v8;
  *(v0 + 2464) = v16;
  sub_22985B0DC(v0 + 2416, v0 + 2472);
  v17 = swift_task_alloc();
  *(v0 + 3432) = v17;
  *v17 = v0;
  v17[1] = sub_22984B0C0;
  v18 = *(v0 + 3024);

  return sub_22984E0D0(v18, v3, v4, v5);
}

uint64_t sub_22984A624()
{
  v6 = *(v0 + 3232);
  v1 = *(v0 + 3016);
  v2 = *(v0 + 3008);
  v3 = swift_task_alloc();
  *(v0 + 3384) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  *(v0 + 3392) = v4;
  *v4 = v0;
  v4[1] = sub_22984A72C;

  return v7();
}

uint64_t sub_22984A72C()
{
  v2 = *v1;
  *(*v1 + 3400) = v0;

  if (v0)
  {
    v3 = *(v2 + 3224);
    v4 = sub_22984AB4C;
  }

  else
  {
    v5 = *(v2 + 3224);

    v4 = sub_22984A854;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22984A870()
{
  v1 = v0[403];
  v2 = v0[388];
  v3 = v0[377];
  v4 = v0[376];
  swift_beginAccess();
  sub_2297FD6F8(v4, v3, v2);
  sub_22953EAE4(v2, &qword_27D881B40, &qword_22A585CD8);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22984A93C, v1, 0);
}

uint64_t sub_22984A93C()
{
  v4 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 3408) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  *v1 = v0;
  v1[1] = sub_22984AA20;

  return v4(v0 + 2992, &unk_22A586688, 0, v2);
}

uint64_t sub_22984AA20()
{
  v2 = *v1;
  *(*v1 + 3416) = v0;

  v3 = *(v2 + 3224);
  if (v0)
  {
    v4 = sub_22984AF6C;
  }

  else
  {
    v4 = sub_22984ACF0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22984AB4C()
{
  v1 = *(v0 + 3040);

  return MEMORY[0x2822009F8](sub_22984ABB8, v1, 0);
}

uint64_t sub_22984ABB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22984ACF0()
{
  v1 = v0[380];
  v0[428] = v0[374];
  return MEMORY[0x2822009F8](sub_22984AD14, v1, 0);
}

id sub_22984AD14()
{
  v1 = *(v0 + 3424);
  if (v1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = [objc_opt_self() sharedRecorder];
  v4 = sub_22A4DD5AC();
  [v3 recordRemovedWalletKeyWithSerialNumber:v4 noWalletKeysRemaining:v2 == 0];

  v5 = *(v0 + 3032);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *(v0 + 2415);
  v7 = v5;
  [v7 resetHomeKeyMiscInfo];
  if (v6 != 1)
  {

LABEL_8:
    v10 = *(v0 + 3280);
    v11 = *(v0 + 3000);
    goto LABEL_9;
  }

  result = [v7 walletKeyManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(v0 + 3280);
  v11 = *(v0 + 3000);
  [result removeWalletKeyMigrationSettingsFileFromDisk];

LABEL_9:
  *v11 = 2;

  v12 = MEMORY[0x277D84F90];
  *(v11 + 8) = MEMORY[0x277D84F90];
  *(v11 + 16) = v12;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22984AF88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22984B0C0()
{
  v2 = *v1;
  *(*v1 + 3440) = v0;

  v3 = *(v2 + 3040);
  if (v0)
  {
    v4 = sub_22984D200;
  }

  else
  {
    v4 = sub_22984B1EC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22984B1EC()
{
  v1 = *(v0 + 2468);
  v2 = *(v0 + 3368);
  v28 = *(v0 + 2468);
  if (v28)
  {
    if (v1 == 1)
    {
      v3 = 0;
      v4 = *(v0 + 3368);
      v1 = v4;
      goto LABEL_7;
    }

    v4 = *(v0 + 3376);
    v5 = v2;
    v1 = v4;
  }

  else
  {
    v4 = *(v0 + 3368);
  }

  v3 = v2;
LABEL_7:
  *(v0 + 3480) = v3;
  *(v0 + 3472) = v1;
  v24 = *(v0 + 2412);
  v20 = *(v0 + 3360);
  v21 = *(v0 + 3376);
  v19 = *(v0 + 3352);
  v25 = *(v0 + 484);
  v26 = *(v0 + 2469);
  v22 = *(v0 + 3336);
  v23 = *(v0 + 3344);
  v27 = *(v0 + 3224);
  v6 = *(v0 + 3112);
  v7 = *(v0 + 3096);
  v8 = *(v0 + 3088);
  v9 = *(v0 + 3080);
  v10 = *(v0 + 3072);
  v11 = *(v0 + 3024);
  v12 = v4;
  *(v0 + 2300) = *(v10 + 48);
  *(v0 + 2356) = *(v6 + 24);
  v17 = *(v0 + 3320);
  v18 = *(v0 + 3304);
  sub_22985B3BC(v11, v7, type metadata accessor for HomePassState);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v0 + 3488) = v14;
  sub_22985B584(v7, v14 + v13, type metadata accessor for HomePassState);
  v15 = v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v19;
  *(v15 + 8) = v20;
  *(v15 + 16) = v2;
  *(v15 + 24) = v21;
  *(v15 + 32) = v28;
  *(v15 + 33) = *(v0 + 2928);
  *(v15 + 49) = v24;
  *(v15 + 51) = v26;
  *(v0 + 2544) = v17;
  *(v0 + 2528) = v18;
  *(v0 + 2560) = v22;
  *(v0 + 2568) = v23;
  *(v0 + 2576) = v25;
  sub_22985B0DC(v0 + 2528, v0 + 2584);

  return MEMORY[0x2822009F8](sub_22984B9B8, v27, 0);
}

uint64_t sub_22984B3F0()
{
  v1 = v0[410];
  v2 = swift_task_alloc();
  v0[431] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[432] = v3;
  *v3 = v0;
  v3[1] = sub_22984B4DC;

  return v5();
}

uint64_t sub_22984B4DC()
{
  v2 = *v1;
  *(*v1 + 3464) = v0;

  if (v0)
  {
    v3 = *(v2 + 3224);

    v4 = sub_22984B854;
  }

  else
  {
    v3 = *(v2 + 3224);

    v4 = sub_22984B62C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22984B648()
{
  v1 = *(v0 + 2468);
  v2 = *(v0 + 3368);
  v28 = *(v0 + 2468);
  if (v28)
  {
    if (v1 == 1)
    {
      v3 = 0;
      v4 = *(v0 + 3368);
      v1 = v4;
      goto LABEL_7;
    }

    v4 = *(v0 + 3376);
    v5 = v2;
    v1 = v4;
  }

  else
  {
    v4 = *(v0 + 3368);
  }

  v3 = v2;
LABEL_7:
  *(v0 + 3480) = v3;
  *(v0 + 3472) = v1;
  v24 = *(v0 + 2412);
  v20 = *(v0 + 3360);
  v21 = *(v0 + 3376);
  v19 = *(v0 + 3352);
  v25 = *(v0 + 484);
  v26 = *(v0 + 2469);
  v22 = *(v0 + 3336);
  v23 = *(v0 + 3344);
  v27 = *(v0 + 3224);
  v6 = *(v0 + 3112);
  v7 = *(v0 + 3096);
  v8 = *(v0 + 3088);
  v9 = *(v0 + 3080);
  v10 = *(v0 + 3072);
  v11 = *(v0 + 3024);
  v12 = v4;
  *(v0 + 2300) = *(v10 + 48);
  *(v0 + 2356) = *(v6 + 24);
  v17 = *(v0 + 3320);
  v18 = *(v0 + 3304);
  sub_22985B3BC(v11, v7, type metadata accessor for HomePassState);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v0 + 3488) = v14;
  sub_22985B584(v7, v14 + v13, type metadata accessor for HomePassState);
  v15 = v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v19;
  *(v15 + 8) = v20;
  *(v15 + 16) = v2;
  *(v15 + 24) = v21;
  *(v15 + 32) = v28;
  *(v15 + 33) = *(v0 + 2928);
  *(v15 + 49) = v24;
  *(v15 + 51) = v26;
  *(v0 + 2544) = v17;
  *(v0 + 2528) = v18;
  *(v0 + 2560) = v22;
  *(v0 + 2568) = v23;
  *(v0 + 2576) = v25;
  sub_22985B0DC(v0 + 2528, v0 + 2584);

  return MEMORY[0x2822009F8](sub_22984B9B8, v27, 0);
}

uint64_t sub_22984B870()
{
  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22984B9B8()
{
  v1 = *(v0 + 3488);
  v2 = *(v0 + 3480);
  v3 = *(v0 + 3472);
  v4 = *(v0 + 2412);
  v5 = *(v0 + 3360);
  v6 = *(v0 + 3352);
  v13 = *(v0 + 3232);
  v7 = *(v0 + 3224);
  v8 = *(v0 + 3024) + *(v0 + 2300) + *(v0 + 2356);
  v9 = swift_task_alloc();
  *(v0 + 3496) = v9;
  *(v9 + 16) = v13;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  *(v9 + 64) = v2;
  *(v9 + 72) = v3;
  *(v9 + 80) = &unk_22A585CF8;
  *(v9 + 88) = v1;
  *(v9 + 96) = v4;
  v14 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v10 = swift_task_alloc();
  *(v0 + 3504) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B48, &qword_22A585D08);
  *v10 = v0;
  v10[1] = sub_22984BB30;

  return v14(v0 + 16, &unk_22A585D00, v9, v11);
}

uint64_t sub_22984BB30()
{
  v2 = *v1;
  *(*v1 + 3512) = v0;

  if (v0)
  {
    v3 = *(v2 + 3224);
    v4 = sub_22984BF64;
  }

  else
  {
    v5 = *(v2 + 3224);

    v4 = sub_22984BC58;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22984BC58()
{
  v1 = *(v0 + 3224);

  *(v0 + 3520) = *(v0 + 16);
  *(v0 + 3528) = *(v0 + 24);
  memcpy((v0 + 488), (v0 + 40), 0x1B8uLL);
  *(v0 + 2470) = *(v0 + 480);
  *(v0 + 2471) = *(v0 + 481);
  *(v0 + 2524) = *(v0 + 482);

  return MEMORY[0x2822009F8](sub_22984BD00, v1, 0);
}

uint64_t sub_22984BD00()
{
  v7 = *(v0 + 3232);
  v1 = *(v0 + 3016);
  v2 = *(v0 + 3008);
  v3 = swift_task_alloc();
  *(v0 + 3544) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  *(v0 + 3552) = v4;
  *v4 = v0;
  v4[1] = sub_22984BE08;
  v5 = *(v0 + 3264);

  return v8(v0 + 2976, &unk_22A585D10, v3, v5);
}

uint64_t sub_22984BE08()
{
  v2 = *v1;
  *(*v1 + 3560) = v0;

  if (v0)
  {
    v3 = *(v2 + 3224);

    sub_2296EBFB4(v2 + 488);

    v4 = sub_22984CF54;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 3224);

    v4 = sub_22984C134;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22984BF64()
{
  v1 = *(v0 + 3040);

  return MEMORY[0x2822009F8](sub_22984BFDC, v1, 0);
}

uint64_t sub_22984BFDC()
{
  v1 = *(v0 + 3480);
  v2 = *(v0 + 3472);

  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22984C134()
{
  v1 = v0[380];
  v0[446] = v0[372];
  return MEMORY[0x2822009F8](sub_22984C158, v1, 0);
}

id sub_22984C158()
{
  if (*(v0 + 3568))
  {
    v95 = *(v0 + 3568);
    v1 = *(v0 + 3280);
    v2 = *(v0 + 3120);
    v3 = *(v0 + 3112);
    v4 = *(v0 + 3104);
    v5 = *(v0 + 3016);
    v6 = *(v0 + 3008);
    sub_22985B3BC(*(v0 + 3024) + *(v0 + 2300), v4, type metadata accessor for HomePassData);
    (*(v2 + 56))(v4, 0, 1, v3);
    swift_beginAccess();

    sub_229891770(v4, v6, v5);
    swift_endAccess();
    if (v1)
    {
      v7 = *(v0 + 3280);
      v8 = sub_22A4DBCDC();
      v9 = [objc_allocWithZone(HMDHomeWalletKey) initWithPKPass:v7 flow:v8];
    }

    else
    {
      v9 = 0;
    }

    v15 = *(v0 + 3520);
    v96 = v9;
    if (v15)
    {
      if (v15 != 1)
      {
        v22 = *(v0 + 2470);
        v23 = *(v0 + 3032);
        if (v23)
        {
LABEL_71:
          if (*(v0 + 2415))
          {
            v82 = v23;
            result = [v82 walletKeyManager];
            if (!result)
            {
              __break(1u);
              return result;
            }

            v84 = result;
            sub_2296EBFB4(v0 + 488);
            [v84 removeWalletKeyMigrationSettingsFileFromDisk];
          }

          else
          {
            sub_2296EBFB4(v0 + 488);
          }

          v24 = v15;
          v25 = *(v0 + 2524);
          if (v25 != 2 && (v25 & 1) == 0)
          {
            [v23 updateLocalUWBOnboardingDismissed_];
            LOBYTE(v25) = 0;
          }

          goto LABEL_78;
        }

LABEL_13:
        v24 = v15;
        LOBYTE(v25) = *(v0 + 2524);
        sub_2296EBFB4(v0 + 488);
LABEL_78:
        v85 = *(v0 + 3536);
        v86 = *(v0 + 3528);
        v93 = *(v0 + 3480);
        v94 = *(v0 + 3568);
        v91 = *(v0 + 3280);
        v92 = *(v0 + 3472);
        v87 = *(v0 + 3000);
        if (*(v0 + 2471))
        {
          v88 = v22 & 1 | 2;
        }

        else
        {
          v88 = v22 & 1;
        }

        v89 = v95;
        sub_22A4DE1FC();
        *(v0 + 2960) = 0;
        *(v0 + 2968) = 0xE000000000000000;
        MEMORY[0x22AAD08C0](0xD000000000000016, 0x800000022A598D50);
        *(v0 + 2808) = v24;
        *(v0 + 2816) = v86;
        *(v0 + 2824) = v85;
        *(v0 + 2832) = v89;
        *(v0 + 2840) = v88;
        v90 = v25 & 1;
        *(v0 + 2848) = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B50, &qword_22A585D18);
        sub_22A4DE31C();
        sub_22A4DBD0C();

        sub_22985B114(v0 + 2304);
        sub_22985B114(v0 + 2304);
        *v87 = v24;
        *(v87 + 8) = v86;
        *(v87 + 16) = v85;
        *(v87 + 24) = v94;
        *(v87 + 32) = v88;
        *(v87 + 40) = v90;

        v14 = *(v0 + 8);
        goto LABEL_82;
      }

      v16 = *(v0 + 3032);
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD00000000000001ALL, 0x800000022A598D70);
      if (v16)
      {
        v17 = [*(v0 + 3032) uuid];
        sub_22A4DB79C();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v26 = *(*(v0 + 3056) + 56);
      v26(*(v0 + 3176), v18, 1, *(v0 + 3048));
      v27 = sub_22A4DD64C();
      MEMORY[0x22AAD08C0](v27);

      MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A598D90);
      if (v16)
      {
        v28 = [*(v0 + 3032) clientWalletKeyUUID];
        if (v28)
        {
          v29 = v28;
          sub_22A4DB79C();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        v36 = *(v0 + 3168);
        v37 = *(v0 + 3160);
        v26(v37, v30, 1, *(v0 + 3048));
        sub_229564B0C(v37, v36);
      }

      else
      {
        v26(*(v0 + 3168), 1, 1, *(v0 + 3048));
      }

      v38 = sub_22A4DD64C();
      MEMORY[0x22AAD08C0](v38);

      MEMORY[0x22AAD08C0](0x784573736170202CLL, 0xEE00203A73747369);
      if (v9)
      {
        v39 = 1702195828;
      }

      else
      {
        v39 = 0x65736C6166;
      }

      if (v9)
      {
        v40 = 0xE400000000000000;
      }

      else
      {
        v40 = 0xE500000000000000;
      }

      MEMORY[0x22AAD08C0](v39, v40);

      sub_22A4DBD0C();

      if (v16 && v9)
      {
        v41 = *(v0 + 3032);
        v42 = v9;
        v43 = [v41 clientWalletKeyUUID];
        v44 = *(v0 + 3152);
        if (v43)
        {
          v45 = *(v0 + 3048);
          v46 = v43;
          sub_22A4DB79C();

          v26(v44, 0, 1, v45);
          sub_22953EAE4(v44, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          v69 = *(v0 + 3064);
          v70 = *(v0 + 3056);
          v71 = *(v0 + 3048);
          v26(*(v0 + 3152), 1, 1, v71);
          sub_22953EAE4(v44, &unk_27D87D2A0, &unk_22A578BD0);
          v72 = [v42 uuid];
          sub_22A4DB79C();

          v73 = sub_22A4DB77C();
          (*(v70 + 8))(v69, v71);
          [v41 saveClientWalletKeyUUIDToLocalStore_];
        }
      }

      v61 = [objc_opt_self() sharedRecorder];
      sub_2296EBF7C(v0 + 488, v0 + 928);
      v22 = *(v0 + 2470);
      goto LABEL_69;
    }

    v19 = *(v0 + 3032);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000018, 0x800000022A598DC0);
    if (v19)
    {
      v20 = [*(v0 + 3032) uuid];
      sub_22A4DB79C();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v31 = *(*(v0 + 3056) + 56);
    v31(*(v0 + 3208), v21, 1, *(v0 + 3048));
    v32 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v32);

    MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A598D90);
    if (v19)
    {
      v33 = [*(v0 + 3032) clientWalletKeyUUID];
      if (v33)
      {
        v34 = v33;
        sub_22A4DB79C();

        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v47 = *(v0 + 3200);
      v48 = *(v0 + 3192);
      v31(v48, v35, 1, *(v0 + 3048));
      sub_229564B0C(v48, v47);
    }

    else
    {
      v31(*(v0 + 3200), 1, 1, *(v0 + 3048));
    }

    v49 = *(v0 + 2469);
    v50 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v50);

    MEMORY[0x22AAD08C0](0x784573736170202CLL, 0xEE00203A73747369);
    if (v9)
    {
      v51 = 1702195828;
    }

    else
    {
      v51 = 0x65736C6166;
    }

    if (v9)
    {
      v52 = 0xE400000000000000;
    }

    else
    {
      v52 = 0xE500000000000000;
    }

    MEMORY[0x22AAD08C0](v51, v52);

    MEMORY[0x22AAD08C0](0x646C756F6873202CLL, 0xEE00203A6C6C6F52);
    if (v49)
    {
      v53 = 1702195828;
    }

    else
    {
      v53 = 0x65736C6166;
    }

    if (v49)
    {
      v54 = 0xE400000000000000;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    MEMORY[0x22AAD08C0](v53, v54);

    sub_22A4DBD0C();

    if (v19)
    {
      v55 = *(v0 + 3032);
      v56 = [v55 clientWalletKeyUUID];
      v57 = *(v0 + 2469);
      v58 = *(v0 + 3184);
      v59 = *(v0 + 3048);
      if (v56)
      {
        v60 = v56;
        sub_22A4DB79C();

        v31(v58, 0, 1, v59);
        sub_22953EAE4(v58, &unk_27D87D2A0, &unk_22A578BD0);
        if (v57)
        {
          goto LABEL_63;
        }

LABEL_55:
        v61 = [objc_opt_self() sharedRecorder];
        sub_2296EBF7C(v0 + 488, v0 + 1368);
        v15 = 0;
        v22 = *(v0 + 2470);
        v62 = &selRef_recordAddedWalletKey_;
        goto LABEL_70;
      }

      v31(*(v0 + 3184), 1, 1, *(v0 + 3048));
      sub_22953EAE4(v58, &unk_27D87D2A0, &unk_22A578BD0);
      if (!v9 || (v57 & 1) == 0)
      {
        v74 = *(v0 + 3064);
        v75 = *(v0 + 3056);
        v76 = *(v0 + 3048);
        v77 = *(v0 + 2469);
        sub_22A4DB7CC();
        v78 = sub_22A4DB77C();
        (*(v75 + 8))(v74, v76);
        [v55 saveClientWalletKeyUUIDToLocalStore_];

        if (!v9 && (v77 & 1) != 0)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }

      v63 = *(v0 + 3064);
      v64 = *(v0 + 3056);
      v65 = *(v0 + 3048);
      v66 = v9;
      v67 = [v66 uuid];
      sub_22A4DB79C();

      v68 = sub_22A4DB77C();
      (*(v64 + 8))(v63, v65);
      [v55 saveClientWalletKeyUUIDToLocalStore_];
    }

    else if ((*(v0 + 2469) & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_63:
    v79 = *(v0 + 2414);
    v80 = (*(v0 + 3280) == 0) & *(v0 + 2470);
    if ((v79 & 1) == 0)
    {
      v80 = *(v0 + 2470);
    }

    if (v79 == 2)
    {
      v22 = *(v0 + 2470);
    }

    else
    {
      v22 = v80;
    }

    v61 = [objc_opt_self() sharedRecorder];
    sub_2296EBF7C(v0 + 488, v0 + 1808);
LABEL_69:
    v62 = &selRef_recordUpdatedWalletKey_;
    v15 = 1;
LABEL_70:
    sub_22985A26C((v0 + 488));
    sub_2296EBFB4(v0 + 488);
    v81 = sub_22A4DD5AC();

    [v61 *v62];

    v23 = *(v0 + 3032);
    if (v23)
    {
      goto LABEL_71;
    }

    goto LABEL_13;
  }

  v10 = *(v0 + 3480);
  v11 = *(v0 + 3472);
  v12 = *(v0 + 3280);
  sub_2296EBFB4(v0 + 488);

  sub_22962F2A8();
  swift_allocError();
  *v13 = 0xD00000000000003ELL;
  *(v13 + 8) = 0x800000022A598D10;
  *(v13 + 16) = 0;
  swift_willThrow();

  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);

  v14 = *(v0 + 8);
LABEL_82:

  return v14();
}

uint64_t sub_22984CF70()
{
  v1 = *(v0 + 3480);
  v2 = *(v0 + 3472);

  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22984D0C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22984D200()
{
  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22984D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_22984D364, 0, 0);
}

uint64_t sub_22984D364()
{
  v1 = *(v0 + 80);
  v2 = *(type metadata accessor for HomePassState(0) + 48);
  *(v0 + 136) = v2;
  v3 = v1 + v2;
  if (*(v1 + v2) != 1 || (v4 = type metadata accessor for HomePassData(0), *(v0 + 96) = v4, v5 = *(v3 + v4[17]), *(v0 + 146) = v5, (v5 & 1) == 0) && *(v3 + v4[18]) == 2 || *(v3 + v4[23]) != 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v6 = *(v0 + 88);
  v7 = *(v3 + v4[10]);
  if (!v6)
  {
    if (v7 == 5)
    {
      v18 = *(v1 + 13);
      v19 = 1;
    }

    else
    {
      if (*(v3 + v4[11]) != 1)
      {
        v18 = 0;
        v74 = 0;
        if (*(v1 + 24))
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

      v18 = 0;
      v19 = *(v1 + 12);
    }

    v74 = v19;
    if (*(v1 + 24))
    {
LABEL_27:
      if (v18)
      {
        v36 = 256;
      }

      else
      {
        v36 = 0;
      }

      v72 = v36 | v18;
      goto LABEL_61;
    }

LABEL_33:
    v72 = (*(v1 + 16) << 6) & 0x100 | (*(v1 + 16) >> 1) & 1;
LABEL_61:
    v75 = *(v0 + 146);
    v47 = *(v0 + 96);
    v48 = *(v0 + 80) + *(v0 + 136);
    v49 = objc_allocWithZone(MEMORY[0x277D38320]);
    v50 = sub_22A4DB61C();
    v51 = sub_22A4DB61C();
    v78 = [v49 initWithReaderGroupIdentifier:v50 readerGroupPublicKey:v51];

    v52 = objc_allocWithZone(MEMORY[0x277D37D20]);
    v53 = sub_22A4DB61C();
    v54 = sub_22A4DB61C();
    v55 = [v52 initWithReaderGroupIdentifier:v53 readerGroupPublicKey:v54];

    v56 = *(v48 + *(v47 + 72));
    if (v75 == 1)
    {
      v70 = v55;
      if (v56 == 2)
      {
        v11 = 0;
        v12 = 0;
        v10 = v78;
        v57 = v78;
      }

      else
      {
        v10 = v78;
        v12 = 2;
        v57 = v55;
        v11 = v55;
      }
    }

    else
    {
      if (v56 == 2)
      {
        sub_22962F2A8();
        swift_allocError();
        *v58 = 0xD000000000000047;
        *(v58 + 8) = 0x800000022A598F20;
        *(v58 + 16) = 0;
        swift_willThrow();

        v16 = *(v0 + 8);
        goto LABEL_13;
      }

      v11 = 0;
      v12 = 1;
      v57 = v55;
      v10 = v55;
      v70 = v55;
    }

    v76 = *(v0 + 88);
    v59 = *(v0 + 80);
    if (*(v59 + *(v0 + 136) + *(*(v0 + 96) + 48)))
    {
      v13 = 7;
    }

    else
    {
      v13 = 1;
    }

    v69 = *(v59 + 9);
    v60 = v57;
    v61 = objc_opt_self();
    v62 = sub_22A4DB77C();
    v63 = sub_22A4DB77C();
    v64 = [v61 passSerialNumberWithHomeUUID:v62 userUUID:v63];

    v8 = sub_22A4DD5EC();
    v9 = v65;

    if (v69 == 2 || v76 == 0)
    {
      v67 = 0;
    }

    else
    {
      v67 = 0x1000000;
    }

    v14 = v74 | (v72 << 8) | v67;
LABEL_12:
    v15 = *(v0 + 72);
    *v15 = v8;
    *(v15 + 8) = v9;
    *(v15 + 16) = v10;
    *(v15 + 24) = v11;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    *(v15 + 48) = v14;
    v16 = *(v0 + 8);
LABEL_13:

    return v16();
  }

  if (v7 == 5)
  {
    if (*(v1 + 13))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  *(v0 + 140) = v20;
  v21 = *(v1 + 9);
  if (v21 != 2)
  {
    v35 = v20 | v21 & 1;
LABEL_60:
    v72 = v35;
    v74 = 1;
    goto LABEL_61;
  }

  v73 = v4;
  v22 = v6;
  v23 = [v22 secureElementPass];
  if (!v23)
  {

LABEL_59:
    v35 = 2;
    goto LABEL_60;
  }

  v24 = v23;
  v25 = [v23 paymentApplications];

  if (!v25)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v26, v27, v28);
  }

  sub_229562F68(0, &qword_281401930, 0x277D37FE0);
  sub_2296562D4();
  v29 = sub_22A4DDB6C();

  v71 = v22;
  if ((v29 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v30 = *(v0 + 16);
    v31 = *(v0 + 24);
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
  }

  else
  {
    v37 = -1 << *(v29 + 32);
    v31 = v29 + 56;
    v32 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v34 = v39 & *(v29 + 56);

    v33 = 0;
  }

  v68 = v32;
  v40 = (v32 + 64) >> 6;
  v77 = v30;
  while ((v30 & 0x8000000000000000) == 0)
  {
    v41 = v33;
    v42 = v34;
    if (!v34)
    {
      while (1)
      {
        v33 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v33 >= v40)
        {
          goto LABEL_52;
        }

        v42 = *(v31 + 8 * v33);
        ++v41;
        if (v42)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_79:
      swift_once();
      goto LABEL_55;
    }

LABEL_44:
    v34 = (v42 - 1) & v42;
    v43 = *(*(v30 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v42)))));
    if (!v43)
    {
      goto LABEL_51;
    }

LABEL_48:
    v45 = [v43 supportsUWB];

    v30 = v77;
    if (v45)
    {

      sub_22953EE84(v77);

      goto LABEL_59;
    }
  }

  v44 = sub_22A4DE12C();
  if (v44)
  {
    *(v0 + 64) = v44;
    swift_dynamicCast();
    v43 = *(v0 + 56);
    if (v43)
    {
      goto LABEL_48;
    }
  }

LABEL_51:
  v30 = v77;
LABEL_52:
  sub_22953EE84(v30);

  v46 = *(v3 + v73[18]);
  if (v46 == 2 || (v46 & 1) == 0)
  {

    goto LABEL_59;
  }

  if (qword_281402F18 != -1)
  {
    goto LABEL_79;
  }

LABEL_55:
  v27 = static PassLibrary.shared;
  *(v0 + 104) = static PassLibrary.shared;
  v26 = sub_22984DAB0;
  v28 = 0;

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_22984DAB0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22984DBA4;

  return v6(v0 + 18, &unk_22A585D50, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22984DBA4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_22984E004;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_22984DCC8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22984DCEC()
{
  v33 = *(v0 + 140);
  v34 = *(v0 + 147);

  v36 = *(v0 + 146);
  v1 = *(v0 + 96);
  v2 = *(v0 + 80) + *(v0 + 136);
  v3 = objc_allocWithZone(MEMORY[0x277D38320]);
  v4 = sub_22A4DB61C();
  v5 = sub_22A4DB61C();
  v38 = [v3 initWithReaderGroupIdentifier:v4 readerGroupPublicKey:v5];

  v6 = objc_allocWithZone(MEMORY[0x277D37D20]);
  v7 = sub_22A4DB61C();
  v8 = sub_22A4DB61C();
  v9 = [v6 initWithReaderGroupIdentifier:v7 readerGroupPublicKey:v8];

  v10 = *(v2 + *(v1 + 72));
  if (v36 == 1)
  {
    if (v10 == 2)
    {
      v37 = 0;
      v11 = v38;
      v12 = v38;
      v31 = v38;
      v32 = 0;
    }

    else
    {
      v11 = v38;
      v31 = v38;
      v32 = v9;
      v37 = 2;
      v12 = v9;
    }
  }

  else
  {
    if (v10 == 2)
    {
      sub_22962F2A8();
      swift_allocError();
      *v13 = 0xD000000000000047;
      *(v13 + 8) = 0x800000022A598F20;
      *(v13 + 16) = 0;
      swift_willThrow();

      v14 = *(v0 + 8);
      goto LABEL_17;
    }

    v31 = v9;
    v32 = 0;
    v37 = 1;
    v12 = v9;
    v11 = v38;
  }

  v39 = v33 | v34;
  v15 = *(v0 + 88);
  v16 = *(v0 + 80);
  v17 = 7;
  if (!*(v16 + *(v0 + 136) + *(*(v0 + 96) + 48)))
  {
    v17 = 1;
  }

  v35 = v17;
  v18 = *(v16 + 9);
  v19 = v12;
  v20 = objc_opt_self();
  v21 = sub_22A4DB77C();
  v22 = sub_22A4DB77C();
  v23 = [v20 passSerialNumberWithHomeUUID:v21 userUUID:v22];

  v24 = sub_22A4DD5EC();
  v26 = v25;

  if (v18 == 2 || v15 == 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x1000000;
  }

  v29 = *(v0 + 72);
  *v29 = v24;
  *(v29 + 8) = v26;
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;
  *(v29 + 32) = v37;
  *(v29 + 40) = v35;
  *(v29 + 48) = v28 & 0xFF0000FF | (v39 << 8) | 1;
  v14 = *(v0 + 8);
LABEL_17:

  return v14();
}

uint64_t sub_22984E004()
{

  return MEMORY[0x2822009F8](sub_22984E06C, 0, 0);
}

uint64_t sub_22984E06C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22984E0D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22984E0F8, 0, 0);
}

uint64_t sub_22984E0F8()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = v1 + *(type metadata accessor for HomePassState(0) + 48);
  v4 = type metadata accessor for HomePassData(0);
  v5 = sub_22956F33C(&v3[*(v4 + 20)], v2);
  v6 = *(v0 + 16);
  if ((v5 & 1) != 0 && v6[24] == 1)
  {
    sub_2297B8424();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
LABEL_10:
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }

  if (v6[8] == 1)
  {
    sub_2297B8424();
    swift_allocError();
    *v8 = xmmword_22A578AE0;
    goto LABEL_10;
  }

  if ((v6[10] & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CD06D8] code:8 userInfo:0];
    goto LABEL_10;
  }

  if (v3[*(v4 + 48)] == 1)
  {
    sub_2297B8424();
    swift_allocError();
    *v9 = xmmword_22A585970;
    goto LABEL_10;
  }

  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_22984E338;
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = *(v0 + 56);

  return sub_229866AD0(v14, v13, v15);
}

uint64_t sub_22984E338(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 57) = a2;

  return MEMORY[0x2822009F8](sub_22984E43C, 0, 0);
}

uint64_t sub_22984E43C()
{
  v1 = *(v0 + 48);
  if (*(v0 + 57))
  {
    if (!v1)
    {
      goto LABEL_6;
    }

    sub_22962F2A8();
    swift_allocError();
    *v2 = 0xD000000000000030;
    *(v2 + 8) = 0x800000022A598EE0;
    *(v2 + 16) = 0;
  }

  else
  {
    [objc_opt_self() homekitErrorWithPassLibraryErrorCode_];
  }

  swift_willThrow();
LABEL_6:
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22984E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 456) = a1;
  v10 = swift_task_alloc();
  *(v5 + 464) = v10;
  *v10 = v5;
  v10[1] = sub_22984E5E0;

  return sub_22984ED3C(v5 + 16, a2, a4, a5, a3);
}

uint64_t sub_22984E5E0()
{
  v2 = *v1;
  v3 = *v1;
  v63 = *(*v1 + 16);
  v62 = *(*v1 + 24);
  v61 = *(*v1 + 32);
  v60 = *(*v1 + 40);
  v59 = *(*v1 + 48);
  v58 = *(*v1 + 56);
  v57 = *(*v1 + 64);
  v56 = *(*v1 + 72);
  v55 = *(*v1 + 80);
  v54 = *(*v1 + 88);
  v53 = *(*v1 + 96);
  v51 = *(*v1 + 104);
  v50 = *(*v1 + 112);
  v49 = *(*v1 + 120);
  v48 = *(*v1 + 128);
  v47 = *(*v1 + 136);
  v46 = *(*v1 + 144);
  v45 = *(*v1 + 152);
  v44 = *(*v1 + 160);
  v52 = *(*v1 + 168);
  v41 = *(*v1 + 184);
  v39 = *(*v1 + 192);
  v37 = *(*v1 + 200);
  v35 = *(*v1 + 208);
  v33 = *(*v1 + 216);
  v29 = *(*v1 + 224);
  v27 = *(*v1 + 232);
  v25 = *(*v1 + 240);
  v43 = *(*v1 + 248);
  v42 = *(*v1 + 256);
  v40 = *(*v1 + 264);
  v38 = *(*v1 + 272);
  v36 = *(*v1 + 280);
  v34 = *(*v1 + 288);
  v32 = *(*v1 + 296);
  v30 = *(*v1 + 305);
  v31 = *(*v1 + 304);
  v28 = *(*v1 + 312);
  v26 = *(*v1 + 320);
  v24 = *(*v1 + 328);
  v23 = *(*v1 + 336);
  v22 = *(*v1 + 344);
  v21 = *(*v1 + 352);
  v20 = *(*v1 + 360);
  v19 = *(*v1 + 368);
  v18 = *(*v1 + 376);
  v17 = *(*v1 + 384);
  v4 = *(*v1 + 392);
  v15 = *(*v1 + 401);
  v16 = *(*v1 + 400);
  v14 = *(*v1 + 402);
  v5 = *(*v1 + 408);
  v6 = *(*v1 + 416);
  v7 = *(*v1 + 424);
  v8 = *(*v1 + 432);
  v9 = *(*v1 + 440);
  v10 = *(*v1 + 448);

  if (!v0)
  {
    v11 = *(v2 + 456);
    *v11 = v63;
    *(v11 + 8) = v62;
    *(v11 + 16) = v61;
    *(v11 + 24) = v60;
    *(v11 + 32) = v59;
    *(v11 + 40) = v58;
    *(v11 + 48) = v57;
    *(v11 + 56) = v56;
    *(v11 + 64) = v55;
    *(v11 + 72) = v54;
    *(v11 + 80) = v53;
    *(v11 + 88) = v51;
    *(v11 + 96) = v50;
    *(v11 + 104) = v49;
    *(v11 + 112) = v48;
    *(v11 + 120) = v47;
    *(v11 + 128) = v46;
    *(v11 + 136) = v45;
    *(v11 + 144) = v44;
    *(v11 + 168) = v41;
    *(v11 + 176) = v39;
    *(v11 + 184) = v37;
    *(v11 + 192) = v35;
    *(v11 + 200) = v33;
    *(v11 + 208) = v29;
    *(v11 + 216) = v27;
    *(v11 + 224) = v25;
    *(v11 + 152) = v52;
    *(v11 + 232) = v43;
    *(v11 + 240) = v42;
    *(v11 + 248) = v40;
    *(v11 + 256) = v38;
    *(v11 + 264) = v36;
    *(v11 + 272) = v34;
    *(v11 + 280) = v32;
    *(v11 + 288) = v31;
    *(v11 + 289) = v30;
    *(v11 + 296) = v28;
    *(v11 + 304) = v26;
    *(v11 + 312) = v24;
    *(v11 + 320) = v23;
    *(v11 + 328) = v22;
    *(v11 + 336) = v21;
    *(v11 + 344) = v20;
    *(v11 + 352) = v19;
    *(v11 + 360) = v18;
    *(v11 + 368) = v17;
    *(v11 + 376) = v4;
    *(v11 + 384) = v16;
    *(v11 + 385) = v15;
    *(v11 + 386) = v14;
    *(v11 + 392) = v5;
    *(v11 + 400) = v6;
    *(v11 + 408) = v7;
    *(v11 + 416) = v8;
    *(v11 + 424) = v9;
    *(v11 + 432) = v10;
  }

  v12 = *(v3 + 8);

  return v12();
}

uint64_t sub_22984ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[176] = a5;
  v5[175] = a4;
  v5[174] = a3;
  v5[173] = a2;
  v5[172] = a1;
  v6 = sub_22A4DB49C();
  v5[177] = v6;
  v5[178] = *(v6 - 8);
  v5[179] = swift_task_alloc();
  v7 = sub_22A4DB57C();
  v5[180] = v7;
  v5[181] = *(v7 - 8);
  v5[182] = swift_task_alloc();
  v5[183] = swift_task_alloc();
  v5[184] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22984EE80, 0, 0);
}

uint64_t sub_22984EE80()
{
  static PassFileUtilities.createPassDirectory()(v0[184]);
  v1 = v0[176];
  v2 = v0[175];
  v3 = v0[174];
  sub_22A4DE1FC();

  v0[185] = sub_22985C0F4(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v4 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v4);

  sub_22A4DBD0C();

  sub_2297189F4(v3, v2, v1, (v0 + 2));
  v5 = v0[179];
  v6 = v0[178];
  v0[186] = v0[2];
  *(v0 + 187) = *(v0 + 3);
  v0[189] = v0[5];
  v7 = v0[9];
  v0[192] = v0[8];
  v0[193] = v7;
  v8 = v0[11];
  v0[194] = v0[10];
  v0[195] = v8;
  v0[198] = v0[14];
  *(v0 + 199) = *(v0 + 15);
  v0[201] = v0[17];
  v0[204] = v0[20];
  *(v0 + 205) = *(v0 + 21);
  v9 = v0[24];
  v0[207] = v0[23];
  v0[208] = v9;
  v0[209] = v0[25];
  v0[212] = v0[28];
  *(v0 + 213) = *(v0 + 29);
  *(v0 + 1920) = *(v0 + 248);
  *(v0 + 215) = *(v0 + 16);
  v10 = v0[35];
  v0[217] = v0[34];
  v0[218] = v10;
  v11 = v0[37];
  v0[219] = v0[36];
  v0[220] = v11;
  *(v0 + 1928) = *(v0 + 304);
  *(v0 + 1936) = *(v0 + 305);
  v12 = v0[40];
  v0[221] = v0[39];
  v0[222] = v12;
  v0[223] = v0[41];
  v13 = v0[45];
  v0[226] = v0[44];
  v0[227] = v13;
  v0[228] = v0[46];
  *(v0 + 1944) = *(v0 + 376);
  v14 = v0[49];
  v0[229] = v0[48];
  v0[230] = v14;
  *(v0 + 1952) = *(v0 + 400);
  *(v0 + 1960) = *(v0 + 401);
  *(v0 + 1922) = *(v0 + 402);
  v15 = v0[52];
  v0[231] = v0[51];
  v0[232] = v15;
  v16 = v0[54];
  v0[233] = v0[53];
  v0[234] = v16;
  v17 = v0[56];
  v0[235] = v0[55];
  v18 = v0[177];
  *(v0 + 95) = *(v0 + 3);
  *(v0 + 98) = *(v0 + 6);
  *(v0 + 101) = *(v0 + 9);
  *(v0 + 105) = *(v0 + 13);
  *(v0 + 112) = *(v0 + 21);
  v0[236] = v17;
  sub_22A4DE1FC();
  v0[167] = 0;
  v0[168] = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD000000000000013, 0x800000022A598E80);
  memcpy(v0 + 57, v0 + 2, 0x1B8uLL);
  sub_22A4DE31C();
  sub_22A4DBD0C();

  v0[169] = sub_22A4DD5EC();
  v0[170] = v19;
  (*(v6 + 104))(v5, *MEMORY[0x277CC91D8], v18);
  sub_22962F254();
  sub_22A4DB56C();
  (*(v6 + 8))(v5, v18);

  sub_22A4DB11C();
  swift_allocObject();
  sub_22A4DB10C();
  memcpy(v0 + 112, v0 + 2, 0x1B8uLL);
  sub_22985B640();
  v20 = sub_22A4DB0FC();
  v22 = v21;

  sub_22A4DB64C();
  v23 = v0[184];
  v24 = v0[176];
  v25 = v0[174];
  sub_2295798D4(v20, v22);
  sub_22A4DE1FC();

  v26 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v26);

  sub_22A4DBD0C();

  v0[171] = v24;
  v27 = swift_task_alloc();
  v0[237] = v27;
  *(v27 + 16) = v23;
  *(v27 + 24) = v25;
  v28 = swift_task_alloc();
  v0[238] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B70, &qword_22A585D48);
  v30 = sub_229590C00(&qword_27D881B78, &qword_27D881B70, &qword_22A585D48, MEMORY[0x277D83970]);
  *v28 = v0;
  v28[1] = sub_22984F644;

  return MEMORY[0x282167808](&unk_22A585D40, v27, v29, v30);
}

uint64_t sub_22984F644()
{
  v2 = *v1;
  *(*v1 + 1912) = v0;

  if (v0)
  {
    sub_2296EBFB4(v2 + 16);

    v3 = sub_22984FC90;
  }

  else
  {

    v3 = sub_22984F78C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22984F78C()
{
  v1 = *(v0 + 1912);
  static PassFileUtilities.zipPassDirectory(passDirectoryURL:)(*(v0 + 1456));
  if (v1)
  {
    v2 = *(v0 + 1472);
    v3 = *(v0 + 1440);
    v4 = *(*(v0 + 1448) + 8);
    v4(*(v0 + 1464), v3);
    sub_2296EBFB4(v0 + 16);
    sub_229862908(v2, 1);
    sub_22A4DE1FC();

    v5 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v5);

    sub_22A4DBD0C();

    v4(v2, v3);
  }

  else
  {
    v49 = *(v0 + 1880);
    v50 = *(v0 + 1888);
    v47 = *(v0 + 1848);
    v48 = *(v0 + 1864);
    v45 = *(v0 + 1832);
    v46 = *(v0 + 1840);
    v43 = *(v0 + 1816);
    v44 = *(v0 + 1824);
    v41 = *(v0 + 1784);
    v42 = *(v0 + 1800);
    v40 = *(v0 + 1768);
    v38 = *(v0 + 1752);
    v39 = *(v0 + 1760);
    v36 = *(v0 + 1720);
    v37 = *(v0 + 1736);
    v34 = *(v0 + 1704);
    v35 = *(v0 + 1712);
    v32 = *(v0 + 1672);
    v33 = *(v0 + 1688);
    v31 = *(v0 + 1656);
    v30 = *(v0 + 1632);
    v28 = *(v0 + 1600);
    v29 = *(v0 + 1616);
    v26 = *(v0 + 1568);
    v27 = *(v0 + 1584);
    v24 = *(v0 + 1536);
    v25 = *(v0 + 1552);
    v22 = *(v0 + 1504);
    v23 = *(v0 + 1520);
    v21 = *(v0 + 1488);
    v7 = *(v0 + 1472);
    v8 = *(v0 + 1464);
    v9 = *(v0 + 1456);
    v10 = *(v0 + 1448);
    v11 = *(v0 + 1440);
    v19 = *(v0 + 1384);
    v12 = *(v0 + 1376);
    v20 = *(v0 + 1640);
    sub_22A4DE1FC();

    v13 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v13);

    sub_22A4DBD0C();

    v14 = *(v10 + 8);
    v14(v8, v11);
    (*(v10 + 32))(v19, v9, v11);
    sub_229862908(v7, 1);
    sub_22A4DE1FC();

    v15 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v15);

    sub_22A4DBD0C();

    v14(v7, v11);
    v16 = *(v0 + 1920);
    LOBYTE(v10) = *(v0 + 1928);
    LOBYTE(v11) = *(v0 + 1936);
    LOBYTE(v8) = *(v0 + 1944);
    LOBYTE(v14) = *(v0 + 1952);
    v17 = *(v0 + 1960);
    LOBYTE(v9) = *(v0 + 1922);

    *v12 = v21;
    *(v12 + 16) = v22;
    *(v12 + 32) = v23;
    *(v12 + 48) = v24;
    *(v12 + 64) = v25;
    *(v12 + 80) = v26;
    *(v12 + 96) = v27;
    *(v12 + 112) = v28;
    *(v12 + 128) = v29;
    *(v12 + 144) = v30;
    *(v12 + 152) = v20;
    *(v12 + 168) = v31;
    *(v12 + 184) = v32;
    *(v12 + 200) = v33;
    *(v12 + 216) = v34;
    *(v12 + 224) = v35;
    *(v12 + 232) = v16;
    *(v12 + 240) = v36;
    *(v12 + 256) = v37;
    *(v12 + 272) = v38;
    *(v12 + 280) = v39;
    *(v12 + 288) = v10;
    *(v12 + 289) = v11;
    *(v12 + 296) = v40;
    *(v12 + 312) = v41;
    *(v12 + 328) = v42;
    *(v12 + 344) = v43;
    *(v12 + 352) = v44;
    *(v12 + 360) = v8;
    *(v12 + 368) = v45;
    *(v12 + 376) = v46;
    *(v12 + 384) = v14;
    *(v12 + 385) = v17;
    *(v12 + 386) = v9;
    *(v12 + 392) = v47;
    *(v12 + 408) = v48;
    *(v12 + 424) = v49;
    *(v12 + 432) = v50;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22984FC90()
{
  v1 = v0[184];
  v2 = v0[180];
  v3 = *(v0[181] + 8);
  v3(v0[183], v2);
  sub_229862908(v1, 1);
  sub_22A4DE1FC();

  v4 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v4);

  sub_22A4DBD0C();

  v3(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t PassUpdater.removeOrphanedPassesWith(flow:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22984FE08, v1, 0);
}

uint64_t sub_22984FE08()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22984FEF4;

  return v6();
}

uint64_t sub_22984FEF4()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_229850018;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_22985CC00;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229850018()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22985007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_229850098, a2, 0);
}

uint64_t sub_229850098()
{
  v1 = v0[3];
  v2 = sub_22A4DD5EC();
  v4 = v3;
  v0[4] = v3;
  v5 = sub_22A4DBCEC();
  v7 = v6;
  v0[5] = v6;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_2298501A8;
  v9 = v0[2];

  return MEMORY[0x2821677F0](v8, v1, v2, v4, v5, v7, &unk_22A585F50, v9);
}

uint64_t sub_2298501A8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_2298502D8;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_22985CC00;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298502D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298504D0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x2822009F8](sub_229850560, a3, 0);
}

uint64_t sub_229850560()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22985064C;

  return v6();
}

uint64_t sub_22985064C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_2298507F8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_229850774;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229850774()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2298507F8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  v3 = sub_22A4DB3DC();

  (*(v2 + 16))(v2, v3);
  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2298508C8()
{
  sub_22A4DBD0C();
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 88) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_229850980, v1, 0);
}

uint64_t sub_229850980()
{
  v4 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  *(v0 + 104) = v2;
  *v1 = v0;
  v1[1] = sub_229850A68;

  return v4(v0 + 40, &unk_22A586688, 0, v2);
}

uint64_t sub_229850A68()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_229851048;
  }

  else
  {
    v4 = sub_229850B94;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229850B94()
{
  v1 = v0[10];
  v0[15] = v0[5];
  return MEMORY[0x2822009F8](sub_229850BB8, v1, 0);
}

uint64_t sub_229850BB8()
{
  v31 = v0;
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  v0[16] = v2;

  v3 = [v2 homes];
  if (v3)
  {
    v4 = v3;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v5 = sub_22A4DD83C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[14];
  v0[8] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();
  if (v6)
  {

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000002DLL, 0x800000022A599250);
    swift_getErrorValue();
    sub_22A4DE5EC();
    sub_22A4DBD3C();

    swift_willThrow();
    v7 = v0[1];

    return v7();
  }

  else
  {

    v9 = v0[7];
    if (v9 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v11 = 0;
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x22AAD13F0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(v9 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v28 = v14;
        sub_2298513E8(&v28, &v29);

        v17 = v30;
        if (v30)
        {
          v18 = v29;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_22958A53C(0, *(v12 + 2) + 1, 1, v12);
          }

          v20 = *(v12 + 2);
          v19 = *(v12 + 3);
          if (v20 >= v19 >> 1)
          {
            v12 = sub_22958A53C((v19 > 1), v20 + 1, 1, v12);
          }

          *(v12 + 2) = v20 + 1;
          v13 = &v12[16 * v20];
          *(v13 + 4) = v18;
          *(v13 + 5) = v17;
        }

        ++v11;
        if (v16 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_27:
    v21 = v0[15];
    v22 = v0[10];

    v23 = sub_229672204(v12);
    v0[17] = v23;

    v0[9] = v21;
    v24 = swift_task_alloc();
    v0[18] = v24;
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;
    v25 = swift_task_alloc();
    v0[19] = v25;
    v26 = sub_229590C00(&unk_281401C90, &qword_27D881B58, &qword_22A585D30, MEMORY[0x277D83970]);
    *v25 = v0;
    v25[1] = sub_229851140;
    v27 = v0[13];

    return MEMORY[0x282167808](&unk_22A585F60, v24, v27, v26);
  }
}

uint64_t sub_229851064()
{
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000002DLL, 0x800000022A599250);
  swift_getErrorValue();
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229851140()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_2298512E8;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_229851284;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229851284()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298512E8()
{

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000002DLL, 0x800000022A599250);
  swift_getErrorValue();
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298513E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = *a1;
  v18 = [v17 uuid];
  sub_22A4DB79C();

  (*(v8 + 32))(v6, v14, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_22A4DBD4C();
  result = sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  if (!v2)
  {
    v20 = [v17 currentUser];
    if (v20)
    {
      v21 = v20;
      v33 = objc_opt_self();
      v22 = sub_22A4DB77C();
      v23 = [v21 uuid];
      sub_22A4DB79C();

      v24 = sub_22A4DB77C();
      v25 = *(v8 + 8);
      v25(v11, v7);
      v26 = v22;
      v27 = [v33 passSerialNumberWithHomeUUID:v22 userUUID:v24];

      v28 = sub_22A4DD5EC();
      v30 = v29;

      result = (v25)(v16, v7);
    }

    else
    {
      result = (*(v8 + 8))(v16, v7);
      v28 = 0;
      v30 = 0;
    }

    v31 = v34;
    *v34 = v28;
    v31[1] = v30;
  }

  return result;
}

uint64_t sub_229851738(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8);
  v6 = swift_task_alloc();
  v7 = *a1;
  v3[7] = v6;
  v3[8] = v7;

  return MEMORY[0x2822009F8](sub_2298517E0, a3, 0);
}

uint64_t sub_2298517E0()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 64) serialNumber];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  LOBYTE(v1) = sub_22956EE20(v3, v5, v1);

  if (v1)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 64);
    sub_22A4DE1FC();

    v9 = [v8 description];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    MEMORY[0x22AAD08C0](v10, v12);

    MEMORY[0x22AAD08C0](0xD000000000000010, 0x800000022A5992D0);
    v13 = [v8 serialNumber];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    sub_22A4DBD0C();

    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v17 = static PassLibrary.shared;
    *(v0 + 72) = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229851A18, v17, 0);
  }
}

uint64_t sub_229851A18()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_229851B00;

  return v5();
}

uint64_t sub_229851B00()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_229851D34;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_229851C24;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229851C40()
{
  v1 = *(v0 + 56);
  v2 = [*(v0 + 64) serialNumber];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  swift_beginAccess();
  sub_2297FD6F8(v3, v5, v1);
  sub_22953EAE4(v1, &qword_27D881B40, &qword_22A585CD8);
  swift_endAccess();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_229851D34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PassUpdater.setExpressSettingsFor(passSerialNumber:enableNFCExpress:enableUWB:authData:flow:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 89) = a4;
  *(v8 + 88) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229851DD4, v7, 0);
}

uint64_t sub_229851DD4()
{
  v1 = *(v0 + 48);
  v9 = *(v0 + 32);
  v2 = *(v0 + 89);
  v3 = *(v0 + 88);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 25) = v2;
  *(v6 + 32) = v9;
  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_229851EF4;

  return v10();
}

uint64_t sub_229851EF4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_229566EFC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_229566EE4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229852018(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 105) = a4;
  *(v8 + 104) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229852048, 0, 0);
}

uint64_t sub_229852048()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v16 = *(v0 + 32);
  v3 = *(v0 + 105);
  v4 = *(v0 + 104);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *(v6 + 16) = v4;
  *(v6 + 17) = v3;
  *(v6 + 24) = v16;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  v7 = sub_22A4DD5EC();
  v9 = v8;
  *(v0 + 72) = v8;
  v10 = sub_22A4DBCEC();
  v12 = v11;
  *(v0 + 80) = v11;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_2298521A0;
  v14 = *(v0 + 16);

  return MEMORY[0x2821677F0](v14, v5, v7, v9, v10, v12, &unk_22A585F28, v6);
}

uint64_t sub_2298521A0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2298522F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2298522F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22985236C(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 163) = a3;
  *(v7 + 162) = a2;
  return MEMORY[0x2822009F8](sub_229852398, 0, 0);
}

uint64_t sub_229852398()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 163);
  v4 = *(v0 + 162);
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000002CLL, 0x800000022A5991A0);
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v5, v6);

  MEMORY[0x22AAD08C0](0x656C62616E65202CLL, 0xED0000203A425755);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v7, v8);

  MEMORY[0x22AAD08C0](0x614468747561202CLL, 0xEB000000003A6174);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_2295AEF1C(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3F0, &unk_22A578570);
  v9 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v9);

  sub_22A4DBD0C();

  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v10 = static PassLibrary.shared;
  *(v0 + 72) = static PassLibrary.shared;
  if (qword_281402FC0 != -1)
  {
    v12 = v10;
    swift_once();
    v10 = v12;
  }

  v11 = unk_281405100;
  *(v0 + 80) = qword_2814050F8;
  *(v0 + 88) = v11;

  return MEMORY[0x2822009F8](sub_2298525E8, v10, 0);
}

uint64_t sub_2298525E8()
{
  v7 = *(v0 + 80);
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v4 = v0;
  v4[1] = sub_229852700;

  return v8(v0 + 32, &unk_22A585F38, v3, v5);
}

uint64_t sub_229852700()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_2298529F4;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_229852828;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22985284C()
{
  v1 = v0[15];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[16] = v2;
    if (v2)
    {
      v3 = v0[9];
      v4 = v1;

      return MEMORY[0x2822009F8](sub_229852A58, v3, 0);
    }

    sub_22962F2A8();
    swift_allocError();
    *v8 = 0xD000000000000023;
    *(v8 + 8) = 0x800000022A599200;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v6 = v0[7];
    v5 = v0[8];
    sub_22A4DE1FC();

    MEMORY[0x22AAD08C0](v6, v5);
    sub_22962F2A8();
    swift_allocError();
    *v7 = 0xD000000000000028;
    *(v7 + 8) = 0x800000022A5991D0;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2298529F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229852A58()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 163);
  v6 = *(v0 + 162);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *(v7 + 32) = v6;
  *(v7 + 33) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_229852B74;

  return v10(v0 + 160, &unk_22A585F40, v7, &type metadata for ExpressSettings);
}

uint64_t sub_229852B74()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_229852D20;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_229852C9C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229852CB8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229852D20()
{

  return MEMORY[0x2822009F8](sub_229852D88, 0, 0);
}

uint64_t sub_229852D88()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229852FB0(uint64_t a1, char a2, char a3, void *a4, void *a5, void *aBlock, uint64_t a7)
{
  *(v7 + 16) = a5;
  *(v7 + 24) = a7;
  *(v7 + 97) = a3;
  *(v7 + 96) = a2;
  *(v7 + 32) = _Block_copy(aBlock);
  *(v7 + 40) = sub_22A4DD5EC();
  *(v7 + 48) = v11;
  if (a4)
  {
    v12 = a4;
    v13 = a5;

    a4 = sub_22A4DB62C();
    v15 = v14;
  }

  else
  {
    v16 = a5;

    v15 = 0xF000000000000000;
  }

  *(v7 + 56) = a4;
  *(v7 + 64) = v15;

  return MEMORY[0x2822009F8](sub_229853090, a7, 0);
}

uint64_t sub_229853090()
{
  v9 = *(v0 + 56);
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 97);
  v5 = *(v0 + 96);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 25) = v4;
  *(v6 + 32) = v9;
  *(v6 + 48) = v2;
  *(v6 + 56) = v1;
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_2298531B0;

  return v10();
}

uint64_t sub_2298531B0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_229853380;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2298532E4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298532E4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  sub_229590D18(v1, v2);
  (*(v3 + 16))(v3, 0);
  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_229853380()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  sub_229590D18(v3, v2);

  v6 = sub_22A4DB3DC();

  (*(v4 + 16))(v4, v6);
  _Block_release(*(v0 + 32));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PassUpdater.removeOrphanedHomeKeyMiscInfoIncluding(homeUUID:withFlow:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22985347C, v1, 0);
}

uint64_t sub_22985347C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_229853564;

  return v5();
}

void sub_229853564()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 24);

    MEMORY[0x2822009F8](sub_229580884, v3, 0);
  }
}

uint64_t sub_2298536A0(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = sub_22A4DDE6C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v2[10] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229853800, 0, 0);
}

uint64_t sub_229853800()
{
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  v0[15] = v2;

  v3 = [v2 homes];
  if (v3)
  {
    v4 = v3;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v5 = sub_22A4DD83C();
  }

  else
  {
    v5 = 0;
  }

  v0[3] = v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();

  v6 = v0[2];
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v6 = v19)
  {
    v8 = 0;
    v9 = v0[12];
    v42 = v6 & 0xFFFFFFFFFFFFFF8;
    v43 = v6 & 0xC000000000000001;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v43)
      {
        v11 = v6;
        v6 = MEMORY[0x22AAD13F0](v8);
      }

      else
      {
        if (v8 >= *(v42 + 16))
        {
          goto LABEL_19;
        }

        v11 = v6;
        v6 = *(v6 + 8 * v8 + 32);
      }

      v12 = v6;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = [v6 uuid];
      sub_22A4DB79C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_22958B1F0(0, v10[2] + 1, 1, v10);
      }

      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        v10 = sub_22958B1F0((v15 > 1), v16 + 1, 1, v10);
      }

      v17 = v0[13];
      v18 = v0[11];
      v10[2] = v16 + 1;
      (*(v9 + 32))(v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v17, v18);
      ++v8;
      v6 = v11;
      if (v13 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v19 = v6;
    i = sub_22A4DE0EC();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_22:
  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[6];

  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 newManagedObjectContext];
  v0[16] = v25;

  sub_229564F88(v23, v22, &unk_27D87D2A0, &unk_22A578BD0);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_22953EAE4(v0[10], &unk_27D87D2A0, &unk_22A578BD0);
  }

  else
  {
    (*(v0[12] + 32))(v0[14], v0[10], v0[11]);
    v26 = v25;
    v27 = sub_22A4DB77C();
    HMDWorkingContextNameForHomeUUID(v27);
    v29 = v28;

    if (!v29)
    {
      sub_22A4DD5EC();
      v29 = sub_22A4DD5AC();
    }

    v30 = v0[14];
    v31 = v0[11];
    v32 = v0[12];
    [v26 setName_];

    (*(v32 + 8))(v30, v31);
  }

  v33 = v25;
  v34 = HMDCoreDataTransactionAuthorAsString(6);
  if (!v34)
  {
    sub_22A4DD5EC();
    v34 = sub_22A4DD5AC();
  }

  v36 = v0[8];
  v35 = v0[9];
  v37 = v0[7];
  [v33 setTransactionAuthor_];

  v38 = swift_allocObject();
  v0[17] = v38;
  *(v38 + 16) = v10;
  *(v38 + 24) = v33;
  (*(v36 + 104))(v35, *MEMORY[0x277CBE110], v37);
  v33;
  v39 = swift_task_alloc();
  v0[18] = v39;
  *v39 = v0;
  v39[1] = sub_229853EEC;

  return MEMORY[0x28210EE50]();
}

uint64_t sub_229853EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 152) = v0;

  v4 = (v3 + 8);
  v5 = *(v2 + 72);
  v6 = *(v2 + 56);
  if (v0)
  {
    (*v4)(*(v2 + 72), *(v2 + 56));

    v7 = sub_229854138;
  }

  else
  {

    (*v4)(v5, v6);
    v7 = sub_2298540A4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2298540A4()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229854138()
{
  v1 = *(v0 + 128);

  *(v0 + 32) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v0 + 40);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000048, 0x800000022A599110);
    v4 = [v3 description];
    v5 = sub_22A4DD5EC();
    v7 = v6;

    MEMORY[0x22AAD08C0](v5, v7);

    sub_22A4DBD3C();

    v8 = *(v0 + 8);

    return v8();
  }

  return result;
}

void sub_2298542E8(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22A4DD5AC();
  v6 = [v4 initWithEntityName_];

  sub_229562F68(0, &qword_27D881B80, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22A576180;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D2F8, &unk_22A585F10);
  *(v7 + 64) = sub_229590C00(&qword_27D881B88, &qword_27D87D2F8, &unk_22A585F10, MEMORY[0x277CC9C50]);
  *(v7 + 32) = a1;

  v8 = sub_22A4DDC3C();
  [v6 setPredicate_];

  v9 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  *&v19 = 0;
  v10 = [a2 executeRequest:v9 error:&v19];
  v11 = v19;
  if (!v10)
  {
    v15 = v19;
    sub_22A4DB3EC();

    swift_willThrow();
    return;
  }

  v12 = v10;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v14 = v11;
  if (!v13)
  {

    v19 = 0u;
    v20 = 0u;
LABEL_10:
    sub_22953EAE4(&v19, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_11;
  }

  if ([v13 result])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  swift_dynamicCast();
LABEL_11:
  *&v19 = 0x20646574656C6544;
  *(&v19 + 1) = 0xE800000000000000;
  v16 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v16);

  sub_22A4DBD0C();
}

uint64_t sub_2298547DC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v4[4] = _Block_copy(a3);
  if (a1)
  {
    sub_22A4DB79C();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_22A4DB7DC();
  (*(*(v10 - 8) + 56))(v8, v9, 1, v10);

  return MEMORY[0x2822009F8](sub_229854904, a4, 0);
}

uint64_t sub_229854904()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2298549EC;

  return v5();
}

void sub_2298549EC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 16);

    MEMORY[0x2822009F8](sub_229854B2C, v3, 0);
  }
}

uint64_t sub_229854B2C()
{
  v1 = v0[3];
  v2 = v0[4];

  sub_22953EAE4(v1, &unk_27D87D2A0, &unk_22A578BD0);
  v2[2](v2);
  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t PassUpdater.pass(passTypeIdentifier:withSerialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_229854BEC, v4, 0);
}

uint64_t sub_229854BEC()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v4 = v0;
  v4[1] = sub_229854CF0;

  return v7(v0 + 2, &unk_22A585A28, v3, v5);
}

uint64_t sub_229854CF0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_229854E14;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_229633B28;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229854E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229854E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_229854E9C, 0, 0);
}

uint64_t sub_229854E9C()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  v0[6] = static PassLibrary.shared;
  if (qword_281402FC0 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  v2 = unk_281405100;
  v0[7] = qword_2814050F8;
  v0[8] = v2;

  return MEMORY[0x2822009F8](sub_229854F80, v1, 0);
}

uint64_t sub_229854F80()
{
  v7 = *(v0 + 56);
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v4 = v0;
  v4[1] = sub_229855098;

  return v8(v0 + 16, &unk_22A585F00, v3, v5);
}

uint64_t sub_229855098()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_229855208;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2298551C0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229855208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229855400(int a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_22A4DD5EC();
  v4[6] = v6;

  return MEMORY[0x2822009F8](sub_229855490, a4, 0);
}

uint64_t sub_229855490()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v4 = v0;
  v4[1] = sub_229855594;

  return v7(v0 + 2, &unk_22A585DF0, v3, v5);
}

uint64_t sub_229855594()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_22985574C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2298556C4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298556C4()
{
  v1 = v0[4];

  v2 = v0[2];
  (v1)[2](v1, v2, 0);
  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22985574C()
{
  v1 = v0[9];
  v2 = v0[4];

  v3 = sub_22A4DB3DC();

  (v2)[2](v2, 0, v3);
  _Block_release(v2);
  v4 = v0[1];

  return v4();
}

uint64_t PassUpdater.uniqueIDOfPass(passTypeIdentifier:withSerialNumber:withFlow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2297AF1DC;

  return sub_22985A6EC(a1, a2, a3, a4);
}

uint64_t sub_229855A7C(uint64_t a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v7 = sub_22A4DD5EC();
  v9 = v8;
  v5[5] = v8;
  v10 = sub_22A4DD5EC();
  v12 = v11;
  v5[6] = v11;
  v13 = a3;

  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_229855B9C;

  return sub_22985A6EC(v7, v9, v10, v12);
}

uint64_t sub_229855B9C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v4)
  {
    v8 = sub_22A4DB3DC();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_22A4DD5AC();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v5 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t PassUpdater.passWithExpressConfiguration(serialNumber:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_229855DAC, v2, 0);
}

uint64_t sub_229855DAC()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B30, &qword_22A585A60);
  *v4 = v0;
  v4[1] = sub_229855EB0;

  return v7(v0 + 2, &unk_22A585A58, v3, v5);
}

uint64_t sub_229855EB0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_22973B168;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_229855FD4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229855FD4()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(*(v0 + 16), v1 | *(v0 + 24));
}

uint64_t sub_229856008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22985602C, 0, 0);
}

uint64_t sub_22985602C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v14 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();

  v3 = v0[2];
  v0[7] = v3;
  if (qword_281402FC0 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD5AC();
  v5 = sub_22A4DD5AC();
  v6 = [v3 passWithPassTypeIdentifier:v4 serialNumber:{v5, v14}];
  v0[8] = v6;

  if (v6)
  {
    v7 = qword_281402F18;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = static PassLibrary.shared;
    v0[9] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_2298562E4, v9, 0);
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000003CLL, 0x800000022A598FC0);
    MEMORY[0x22AAD08C0](v11, v10);
    sub_22A4DBD0C();

    *v12 = 0;
    *(v12 + 8) = 0;
    *(v0[4] + 9) = 0;
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2298562E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_2298563D4;

  return v6(v0 + 13, &unk_22A585EF0, v3, &type metadata for ExpressSettings);
}

uint64_t sub_2298563D4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_2298565B8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2298564F8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298564F8()
{
  v0[106] = v0[104];
  v0[107] = v0[105];
  return MEMORY[0x2822009F8](sub_229856524, 0, 0);
}

uint64_t sub_229856524()
{
  v1 = *(v0 + 107);
  v2 = *(v0 + 106);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);

  *v5 = v3;
  *(v5 + 8) = v2;
  *(*(v0 + 32) + 9) = v1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2298565B8()
{

  return MEMORY[0x2822009F8](sub_229856620, 0, 0);
}

uint64_t sub_229856620()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229856818(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[6] = sub_22A4DD5EC();
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2298568A8, a3, 0);
}

uint64_t sub_2298568A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B30, &qword_22A585A60);
  *v4 = v0;
  v4[1] = sub_2298569AC;

  return v7(v0 + 2, &unk_22A585DA8, v3, v5);
}

uint64_t sub_2298569AC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_229856B70;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_229856ADC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229856ADC()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  (v2)[2](v2, v1, *(v0 + 24), *(v0 + 25), 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229856B70()
{
  v1 = v0[10];

  v2 = sub_22A4DB3DC();

  v3 = v0[5];
  (v3)[2](v3, 0, 0, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

id PassUpdater.init()()
{
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v1 = sub_22A4DBA1C();
  v2 = MEMORY[0x277D84F98];
  v0[14] = v1;
  v0[15] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PassUpdater();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_229856C98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_2298474FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_229856D7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_229852018(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_229856E5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_2298536A0(a1, v4);
}

uint64_t sub_229856EFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229854E78(a1, v5, v4);
}

uint64_t PassUpdater.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PassUpdater.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_229857084()
{
  result = sub_22A4DD5EC();
  qword_2814050F8 = result;
  unk_281405100 = v1;
  return result;
}

uint64_t sub_2298570B4(uint64_t a1, uint64_t a2)
{
  v2[33] = a2;
  v4 = sub_22A4DB7DC();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = type metadata accessor for HomePassData(0);
  v2[42] = swift_task_alloc();
  v2[43] = type metadata accessor for HomePassState(0);
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229857208, a2, 0);
}

uint64_t sub_229857208()
{
  v1 = objc_opt_self();
  v2 = [v1 createNIST256KeyPair];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22A4DB62C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *(v0 + 120) = v4;
  *(v0 + 128) = v6;
  v7 = MEMORY[0x277CC9318];
  v60 = MEMORY[0x277CC9318];
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 120), *(v0 + 128));
  v8 = *(v0 + 112);
  *(v0 + 360) = *(v0 + 104);
  *(v0 + 368) = v8;
  v9 = sub_22A4DB61C();
  v10 = [v1 publicKeyExternalRepresentationFromKeyPairExternalRepresentation_];

  if (v10)
  {
    v11 = sub_22A4DB62C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  *(v0 + 152) = v11;
  *(v0 + 160) = v13;
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 152), *(v0 + 160));
  v64 = *(v0 + 136);
  v65 = *(v0 + 144);
  *(v0 + 376) = v64;
  *(v0 + 384) = v65;
  v14 = sub_22A4DB61C();
  v15 = [v1 publicKeyFromKeyPairExternalRepresentation_];

  if (v15)
  {
    v16 = sub_22A4DB62C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  *(v0 + 184) = v16;
  *(v0 + 192) = v18;
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 184), *(v0 + 192));
  v19 = *(v0 + 176);
  *(v0 + 392) = *(v0 + 168);
  *(v0 + 400) = v19;
  v20 = sub_22A4DB61C();
  v21 = [v1 privateKeyFromKeyPairExternalRepresentation_];

  if (v21)
  {
    v22 = sub_22A4DB62C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  *(v0 + 216) = v22;
  *(v0 + 224) = v24;
  sub_22A4DBD4C();
  v61 = *(v0 + 296);
  v62 = *(v0 + 272);
  v63 = *(v0 + 280);
  sub_229590D18(*(v0 + 216), *(v0 + 224));
  v25 = *(v0 + 208);
  *(v0 + 408) = *(v0 + 200);
  *(v0 + 416) = v25;
  v26 = objc_opt_self();
  v27 = sub_22A4DB61C();
  v28 = [v26 identifierForKey_];

  v29 = sub_22A4DB62C();
  v31 = v30;

  *(v0 + 424) = v29;
  *(v0 + 432) = v31;
  v32 = sub_22A4DB61C();
  v33 = [v1 identifier16BytesForKey_];

  v34 = sub_22A4DB62C();
  v36 = v35;

  *(v0 + 440) = v34;
  *(v0 + 448) = v36;
  sub_22A4DB7CC();
  sub_22A4DB7CC();
  sub_22A4DB7CC();
  sub_22956C148(v64, v65);
  sub_22956C148(v29, v31);
  sub_22956C148(v34, v36);
  sub_22A4DB7CC();
  v37 = sub_22A4DB76C();
  v39 = v38;
  v40 = *(v63 + 8);
  *(v0 + 456) = v40;
  *(v0 + 464) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v61, v62);
  v41 = sub_2295ACB54(4, v37, v39);
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = MEMORY[0x22AAD0860](v41, v43, v45, v47);
  v50 = v49;

  *(v0 + 472) = v48;
  *(v0 + 480) = v50;
  *(v0 + 488) = productClass();
  v51 = [objc_opt_self() createGroupResolvingKey];
  if (v51)
  {
    v52 = v51;
    v53 = sub_22A4DB62C();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xF000000000000000;
  }

  *(v0 + 248) = v53;
  *(v0 + 256) = v55;
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 248), *(v0 + 256));
  *(v0 + 496) = *(v0 + 232);
  v56 = [objc_opt_self() systemStore];
  *(v0 + 512) = [v56 getPreferredHH2ControllerKey];

  if (qword_281402D28 != -1)
  {
    swift_once();
  }

  sub_22A4DB7CC();
  v57 = swift_task_alloc();
  *(v0 + 520) = v57;
  *v57 = v0;
  v57[1] = sub_229857A24;
  v58 = *(v0 + 288);

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 64, v58);
}

uint64_t sub_229857A24()
{
  v2 = *v1;
  *(v2 + 528) = v0;
  *(v2 + 536) = *(v2 + 64);

  if (v0)
  {
    v19 = *(v2 + 512);
    v20 = *(v2 + 496);
    v3 = *(v2 + 456);
    v5 = *(v2 + 440);
    v4 = *(v2 + 448);
    v7 = *(v2 + 424);
    v6 = *(v2 + 432);
    v9 = *(v2 + 376);
    v8 = *(v2 + 384);
    v23 = *(v2 + 320);
    v21 = *(v2 + 504);
    v22 = *(v2 + 312);
    v17 = *(v2 + 288);
    v18 = *(v2 + 304);
    v12 = v2 + 264;
    v11 = *(v2 + 264);
    v10 = *(v12 + 8);

    sub_2295798D4(v9, v8);
    sub_2295798D4(v7, v6);
    sub_2295798D4(v5, v4);

    sub_2295798D4(v20, v21);
    v3(v17, v10);
    v3(v18, v10);
    v3(v22, v10);
    v3(v23, v10);
    v13 = sub_2298581B4;
    v14 = v11;
  }

  else
  {
    v15 = *(v2 + 264);
    (*(v2 + 456))(*(v2 + 288), *(v2 + 272));

    v13 = sub_229857C44;
    v14 = v15;
  }

  return MEMORY[0x2822009F8](v13, v14, 0);
}

uint64_t sub_229857C44()
{
  v29 = *(v0 + 544);
  v27 = *(v0 + 512);
  v28 = *(v0 + 536);
  v25 = *(v0 + 496);
  v26 = *(v0 + 504);
  v23 = *(v0 + 480);
  v24 = *(v0 + 488);
  v21 = *(v0 + 448);
  v22 = *(v0 + 472);
  v20 = *(v0 + 440);
  v1 = *(v0 + 352);
  v30 = *(v0 + 344);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 304);
  v19 = *(v0 + 376);
  v18 = *(v0 + 424);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  *v2 = 1;
  v9 = *(v8 + 32);
  v9(&v2[v3[5]], v4, v7);
  v9(&v2[v3[6]], v5, v7);
  v9(&v2[v3[7]], v6, v7);
  v10 = &v2[v3[8]];
  *v10 = v19;
  *(v10 + 1) = v18;
  *(v10 + 4) = v20;
  *(v10 + 5) = v21;
  v11 = &v2[v3[9]];
  *v11 = v22;
  v11[1] = v23;
  *&v2[v3[10]] = v24;
  v2[v3[11]] = 1;
  v2[v3[12]] = 0;
  *&v2[v3[13]] = 0;
  *&v2[v3[14]] = xmmword_22A57B6B0;
  v12 = &v2[v3[15]];
  *v12 = v25;
  v12[1] = v26;
  *&v2[v3[16]] = MEMORY[0x277D84F90];
  v2[v3[17]] = 1;
  v2[v3[18]] = 1;
  v2[v3[19]] = 1;
  *&v2[v3[20]] = v27;
  v13 = &v2[v3[21]];
  *v13 = v28;
  v13[1] = v29;
  v14 = &v2[v3[22]];
  *v14 = 0;
  v14[1] = 0;
  v2[v3[23]] = 1;
  *v1 = MEMORY[0x277D84FA0];
  *(v1 + 8) = 512;
  *(v1 + 10) = 16843009;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  sub_22985B584(v2, v1 + *(v30 + 48), type metadata accessor for HomePassData);
  v15 = swift_task_alloc();
  *(v0 + 552) = v15;
  *v15 = v0;
  v15[1] = sub_229857EE0;
  v16 = *(v0 + 352);

  return sub_229848F10(v0 + 16, 0, v16, 0);
}

uint64_t sub_229857EE0()
{
  v2 = *v1;
  *(*v1 + 560) = v0;
  v3 = *(v2 + 40);

  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_2298582D4;
  }

  else
  {

    v5 = sub_229858068;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229858068()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[53];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[49];
  v7 = v0[50];
  v8 = v0[47];
  v12 = v0[48];
  v13 = v0[54];
  v9 = v0[44];
  sub_2295798D4(v0[45], v0[46]);
  sub_2295798D4(v5, v4);
  sub_2295798D4(v6, v7);
  sub_2295798D4(v2, v1);
  sub_2295798D4(v3, v13);
  sub_2295798D4(v8, v12);
  sub_22985C628(v9, type metadata accessor for HomePassState);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2298581B4()
{
  v1 = v0[55];
  v12 = v0[56];
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[47];
  v9 = v0[48];
  sub_2295798D4(v0[45], v0[46]);
  sub_2295798D4(v5, v4);
  sub_2295798D4(v7, v6);
  sub_2295798D4(v8, v9);
  sub_2295798D4(v3, v2);
  sub_2295798D4(v1, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2298582D4()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[53];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[47];
  v9 = v0[48];
  v12 = v0[54];
  v13 = v0[44];
  sub_2295798D4(v0[45], v0[46]);
  sub_2295798D4(v5, v4);
  sub_2295798D4(v7, v6);
  sub_2295798D4(v1, v2);
  sub_2295798D4(v3, v12);
  sub_2295798D4(v8, v9);
  sub_22985C628(v13, type metadata accessor for HomePassState);

  v10 = v0[1];

  return v10();
}

uint64_t sub_229858430()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 40) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_2298584CC, v1, 0);
}

uint64_t sub_2298584CC()
{
  v4 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  *(v0 + 56) = v2;
  *v1 = v0;
  v1[1] = sub_2298585B4;

  return v4(v0 + 16, &unk_22A586688, 0, v2);
}

uint64_t sub_2298585B4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_229858930;
  }

  else
  {
    v4 = sub_2298586E0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298586E0()
{
  v1 = v0[4];
  v0[9] = v0[2];
  return MEMORY[0x2822009F8](sub_229858704, v1, 0);
}

uint64_t sub_229858704()
{
  v0[3] = v0[9];
  v1 = swift_task_alloc();
  v0[10] = v1;
  v2 = sub_229590C00(&unk_281401C90, &qword_27D881B58, &qword_22A585D30, MEMORY[0x277D83970]);
  *v1 = v0;
  v1[1] = sub_2298587F4;
  v3 = v0[7];
  v4 = v0[4];

  return MEMORY[0x282167808](&unk_22A585FD0, v4, v3, v2);
}

uint64_t sub_2298587F4()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_229858948, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_229858948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298589AC(uint64_t *a1, uint64_t a2)
{
  v2[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x2822009F8](sub_229858A54, a2, 0);
}

uint64_t sub_229858A54()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 64) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_229858AF0, v1, 0);
}

uint64_t sub_229858AF0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_229858BD8;

  return v5();
}

uint64_t sub_229858BD8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_229858E0C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_229858CFC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229858D18()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 56) serialNumber];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  swift_beginAccess();
  sub_2297FD6F8(v3, v5, v1);
  sub_22953EAE4(v1, &qword_27D881B40, &qword_22A585CD8);
  swift_endAccess();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_229858E0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229858E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_229858EA0, a4, 0);
}

uint64_t sub_229858EA0()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 56) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_229858F3C, v1, 0);
}

uint64_t sub_229858F3C()
{
  v4 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  *(v0 + 72) = v2;
  *v1 = v0;
  v1[1] = sub_229859024;

  return v4(v0 + 16, &unk_22A586688, 0, v2);
}

uint64_t sub_229859024()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_2298593D4;
  }

  else
  {
    v4 = sub_229859150;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229859150()
{
  v1 = v0[6];
  v0[11] = v0[2];
  return MEMORY[0x2822009F8](sub_229859174, v1, 0);
}

uint64_t sub_229859174()
{
  v1 = *(v0 + 32);
  *(v0 + 24) = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = sub_229590C00(&unk_281401C90, &qword_27D881B58, &qword_22A585D30, MEMORY[0x277D83970]);
  *v4 = v0;
  v4[1] = sub_22985928C;
  v6 = *(v0 + 72);

  return MEMORY[0x282167808](&unk_22A585FB0, v2, v6, v5);
}

uint64_t sub_22985928C()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_2298593EC, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2298593EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229859458(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8);
  v7 = swift_task_alloc();
  v8 = *a1;
  v4[8] = v7;
  v4[9] = v8;

  return MEMORY[0x2822009F8](sub_229859504, a4, 0);
}

uint64_t sub_229859504()
{
  v1 = v0[9];
  v2 = sub_22A4DD5AC();
  v3 = [v1 fieldForKey_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = [v3 value];

  if (!v7)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  if (v10 == v9 && v12 == v8)
  {

    goto LABEL_12;
  }

  v14 = sub_22A4DE60C();

  if (v14)
  {
LABEL_12:
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v5 = static PassLibrary.shared;
    v0[10] = static PassLibrary.shared;
    v4 = sub_2298596B8;
    v6 = 0;

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2298596B8()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_2298597A0;

  return v5();
}

uint64_t sub_2298597A0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_2298599D4;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_2298598C4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298598E0()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 72) serialNumber];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  swift_beginAccess();
  sub_2297FD6F8(v3, v5, v1);
  sub_22953EAE4(v1, &qword_27D881B40, &qword_22A585CD8);
  swift_endAccess();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2298599D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229859A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a2;
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_229859B00;

  return sub_229848F10((v4 + 2), a3, a4, 0);
}

uint64_t sub_229859B00()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 88) = *(*v1 + 16);
  v4 = *(v2 + 40);
  *(v2 + 96) = *(v2 + 24);
  *(v2 + 112) = v4;
  *(v2 + 57) = *(v2 + 56);

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 72);

    return MEMORY[0x2822009F8](sub_229859C6C, v7, 0);
  }
}

uint64_t sub_229859C6C()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 64);
  v4 = *(v0 + 96);
  v3 = *(v0 + 112);
  *v2 = *(v0 + 88);
  *(v2 + 8) = v4;
  *(v2 + 24) = v3;
  *(v2 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t PassUpdaterOperationResult.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6465646461;
    }

    if (a1 == 1)
    {
      return 0x64657461647075;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6465766F6D6572;
      case 3:
        return 0x726F727265;
      case 4:
        return 1884254062;
    }
  }

  result = sub_22A4DE64C();
  __break(1u);
  return result;
}

unint64_t sub_229859D8C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22985AE94(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_229859DC0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 0x6465646461;
    }

    if (v2 != 1)
    {
LABEL_14:
      result = sub_22A4DE64C();
      __break(1u);
      return result;
    }

    v4 = 0x657461647075;
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return 0x726F727265;
      }

      if (v2 == 4)
      {
        return 1884254062;
      }

      goto LABEL_14;
    }

    v4 = 0x65766F6D6572;
  }

  return v4 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
}

uint64_t sub_229859E88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_229586D38;

  return v6();
}

uint64_t sub_229859F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_229564F88(a3, v23 - v10, &unk_27D87D8F0, &qword_22A578D70);
  v12 = sub_22A4DD9DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22953EAE4(v11, &unk_27D87D8F0, &qword_22A578D70);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22A4DD9CC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_22A4DD8CC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_22A4DD67C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);

    return v21;
  }

LABEL_8:
  sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_22985A26C(const void *a1)
{
  v2 = sub_22A4DD63C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22A4DB0DC();
  MEMORY[0x28223BE20](v3 - 8);
  v12[3] = &type metadata for PassJSON;
  v12[4] = sub_22985B5EC();
  v12[5] = sub_22985B640();
  v12[0] = swift_allocObject();
  memcpy((v12[0] + 16), a1, 0x1B8uLL);
  sub_22A4DB11C();
  swift_allocObject();
  sub_2296EBF7C(a1, &v11);
  sub_22A4DB10C();
  sub_22A4DB0CC();
  sub_22A4DB0EC();
  __swift_project_boxed_opaque_existential_0(v12, &type metadata for PassJSON);
  v4 = sub_22A4DB0FC();
  v6 = v5;
  sub_22A4DD62C();
  v7 = sub_22A4DD60C();
  v9 = v8;
  sub_2295798D4(v4, v6);

  if (!v9)
  {
    v7 = 0xD000000000000016;
  }

  __swift_destroy_boxed_opaque_existential_0(v12);
  return v7;
}

uint64_t sub_22985A474(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = 0;
    v7 = result + 56;
    v8 = MEMORY[0x277D84F90];
    v28 = result + 56;
    do
    {
      v29 = v8;
      v9 = (v7 + 32 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= v3)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_25;
        }

        v30 = v10 + 1;
        v12 = *(v9 - 3);
        v11 = *(v9 - 2);
        v13 = a2;
        v14 = a3;
        v15 = *(v9 - 1);
        v16 = *v9;
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        *(v17 + 24) = v16;
        a3 = v14;
        a2 = v13;
        if (v12 == v13 && v11 == a3)
        {
          break;
        }

        if (sub_22A4DE60C())
        {
          goto LABEL_14;
        }

        ++v10;
        v9 += 4;
        if (v30 == v3)
        {
          v8 = v29;
          goto LABEL_19;
        }
      }

      v12 = v13;
LABEL_14:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_22A586010;
      *(v19 + 24) = v17;
      v20 = v19;

      v8 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22958B990(0, v29[2] + 1, 1, v29);
        v8 = result;
      }

      v6 = v30;
      v22 = v8[2];
      v21 = v8[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_22958B990((v21 > 1), v22 + 1, 1, v8);
        v8 = result;
      }

      v8[2] = v22 + 1;
      v23 = &v8[4 * v22];
      v23[4] = v12;
      v23[5] = v11;
      v23[6] = &unk_22A586018;
      v23[7] = v20;
      v7 = v28;
    }

    while (v30 != v3);
LABEL_19:
    if (!v8[2])
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_22:

      return 0;
    }
  }

  v24 = v8[4];
  v25 = v8[6];
  v26 = v8[7];

  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  return v24;
}

uint64_t sub_22985A6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_22985A714, v4, 0);
}

uint64_t sub_22985A714()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v4 = v0;
  v4[1] = sub_22985A818;

  return v7(v0 + 2, &unk_22A585EF8, v3, v5);
}

uint64_t sub_22985A818()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_2296D73D0;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_22985A93C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22985A93C()
{
  v1 = v0[2];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v1 = v1;
      v4 = [v3 uniqueID];
      if (v4)
      {
        v5 = v4;
        v6 = sub_22A4DD5EC();
        v8 = v7;

        v9 = v0[1];

        return v9(v6, v8);
      }

      v20 = v0[11];
      v19 = v0[12];
      v22 = v0[9];
      v21 = v0[10];

      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD000000000000036, 0x800000022A599090);
      MEMORY[0x22AAD08C0](v22, v21);
      MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599030);
      MEMORY[0x22AAD08C0](v20, v19);
      sub_22A4DBD3C();

      type metadata accessor for HMError(0);
      v0[8] = 2;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_22985C0F4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
    }

    else
    {
      v16 = v0[11];
      v15 = v0[12];
      v18 = v0[9];
      v17 = v0[10];
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD000000000000030, 0x800000022A599050);
      MEMORY[0x22AAD08C0](v18, v17);
      MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599030);
      MEMORY[0x22AAD08C0](v16, v15);
      sub_22A4DBD3C();

      type metadata accessor for HMError(0);
      v0[6] = 48;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_22985C0F4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
    }

    swift_willThrow();
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A599000);
    MEMORY[0x22AAD08C0](v14, v13);
    MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599030);
    MEMORY[0x22AAD08C0](v12, v11);
    sub_22A4DBD3C();

    type metadata accessor for HMError(0);
    v0[4] = 2;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22985C0F4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_22985ADC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229856008(a1, v5, v4);
}

unint64_t sub_22985AE94(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22985AEA8()
{
  result = qword_27D881B38;
  if (!qword_27D881B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881B38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitDaemon25UnexpectedUpdatePassErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22985AF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22985AF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22985AFB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22985AFDC(uint64_t a1)
{
  result = sub_22962F2A8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22985B004(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229849378(a1, v4, v5, v6, v7, v8, v9);
}

void sub_22985B144(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_22985B190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for HomePassState(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_229586D38;

  return sub_22984E520(a1, a2, a3, v3 + v9, v3 + v10);
}

uint64_t sub_22985B2B0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229862D20(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22985B3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22985B424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229867744(a1, v4);
}

uint64_t sub_22985B4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229867944(a1, v4, v5, v7, v6);
}

uint64_t sub_22985B584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22985B5EC()
{
  result = qword_27D881B60;
  if (!qword_27D881B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881B60);
  }

  return result;
}

unint64_t sub_22985B640()
{
  result = qword_27D881B68;
  if (!qword_27D881B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881B68);
  }

  return result;
}

uint64_t sub_22985B694(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22962D780(a1, v5, v4);
}

uint64_t sub_22985B73C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229867C40(a1, v5, v4);
}

uint64_t sub_22985B7E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229856818(v2, v3, v4);
}

uint64_t sub_22985B89C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_22953E774(a1, v4);
}

uint64_t sub_22985B954()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_229569B30;

  return sub_229855A7C(v2, v3, v4, v5, v6);
}

uint64_t sub_22985BA1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_229855400(v2, v3, v5, v4);
}

uint64_t sub_22985BADC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_2298547DC(v2, v3, v5, v4);
}

uint64_t sub_22985BB9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_229586D38;

  return sub_229852FB0(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t objectdestroy_68Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22985BCC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2298504D0(v2, v3, v4);
}

uint64_t sub_22985BD78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_229586D38;

  return sub_229847390(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22985BE5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_229586D38;

  return sub_229846D84(v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_110Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22985BF88()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_2298464E4(v2, v3, v5, v4);
}

uint64_t sub_22985C048()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229845CB0(v2, v3);
}

uint64_t sub_22985C0F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22985C158(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_22985236C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22985C230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*(v1 + 33))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229867CF4(a1, v4, v5, v7 | v6, v9, v8);
}

uint64_t sub_22985C310(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_2298508AC(a1, v1);
}

uint64_t sub_22985C3AC(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229851738(a1, v5, v4);
}

uint64_t sub_22985C454(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229847860(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22985C530(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t sub_22985C564(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2297B4364(a1, v4, v5, v6, v7);
}

uint64_t sub_22985C628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22985C688(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229859458(a1, v4, v5, v6);
}

uint64_t sub_22985C738(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_2298589AC(a1, v1);
}

uint64_t sub_22985C7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_22979D7E4(a1, v4);
}

uint64_t sub_22985C888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22985C8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *sub_22985C938(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22985C990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_22985C9D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22985CA38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 52))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22985CA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_22985CAE8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_22985CB2C(uint64_t a1)
{
  result = sub_2297B8424();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22985CB54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22985CB9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22985CC1C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = sub_22A4DDF9C();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22985CD08(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v5 - 8);
  if (v13 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(v14 + 84);
  v17 = *(v7 + 64);
  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v16 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v14 + 84);
  }

  if (v11)
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = v18 + 8;
  v25 = v19 + v18;
  if (a2 > v22)
  {
    v26 = ((v23 + v20 + ((v25 + ((v24 + ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & ~v18)) & ~v20) + v21;
    v27 = 8 * v26;
    if (v26 <= 3)
    {
      v29 = ((a2 - v22 + ~(-1 << v27)) >> v27) + 1;
      if (HIWORD(v29))
      {
        v28 = *(a1 + v26);
        if (!v28)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v29 > 0xFF)
      {
        v28 = *(a1 + v26);
        if (!*(a1 + v26))
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v29 < 2)
      {
LABEL_39:
        if (v22)
        {
          goto LABEL_40;
        }

        return 0;
      }
    }

    v28 = *(a1 + v26);
    if (!*(a1 + v26))
    {
      goto LABEL_39;
    }

LABEL_26:
    v30 = (v28 - 1) << v27;
    if (v26 > 3)
    {
      v30 = 0;
    }

    if (v26)
    {
      if (v26 <= 3)
      {
        v31 = v26;
      }

      else
      {
        v31 = 4;
      }

      if (v31 > 2)
      {
        if (v31 == 3)
        {
          v32 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v32 = *a1;
        }
      }

      else if (v31 == 1)
      {
        v32 = *a1;
      }

      else
      {
        v32 = *a1;
      }
    }

    else
    {
      v32 = 0;
    }

    return v22 + (v32 | v30) + 1;
  }

LABEL_40:
  if (v8 == v22)
  {
    v33 = *(v7 + 48);
    v34 = a1;
    v35 = v8;
    v36 = v6;
LABEL_42:

    return v33(v34, v35, v36);
  }

  v38 = ~v18;
  v39 = (v24 + ((((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v38;
  if (v11 != v22)
  {
    v41 = (v25 + v39) & v38;
    if (v13 == v22)
    {
      v42 = (*(v10 + 48))(v41);
      if (v42 >= 2)
      {
        return v42 - 1;
      }

      else
      {
        return 0;
      }
    }

    v33 = *(*(v5 - 8) + 48);
    v34 = ((v41 + v20 + v23) & ~v20);
    v35 = v16;
    v36 = v5;
    goto LABEL_42;
  }

  v40 = *(v10 + 48);

  return v40(v39);
}

void sub_22985D098(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v7 = a4[3];
  v9 = *(v8 - 8);
  v43 = v9;
  v10 = *(v9 + 84);
  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v14)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v7 - 8);
  v19 = *(v18 + 84);
  v20 = *(v9 + 64);
  v21 = *(v12 + 80);
  v22 = *(v12 + 64);
  v23 = *(v18 + 80);
  if (v19 <= v17)
  {
    v24 = v17;
  }

  else
  {
    v24 = *(v18 + 84);
  }

  v25 = v21 + 8;
  v26 = v22 + v21;
  v27 = (v22 + v21 + ((v21 + 8 + ((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v21;
  if (!v14)
  {
    ++v22;
  }

  v28 = ((v22 + v23 + v27) & ~v23) + *(*(v7 - 8) + 64);
  if (a3 <= v24)
  {
    goto LABEL_26;
  }

  if (v28 <= 3)
  {
    v29 = ((a3 - v24 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
    if (HIWORD(v29))
    {
      v11 = 4;
      if (v24 >= a2)
      {
        goto LABEL_36;
      }

LABEL_27:
      v31 = ~v24 + a2;
      if (v28 >= 4)
      {
        bzero(a1, v28);
        *a1 = v31;
        v32 = 1;
        if (v11 > 1)
        {
          goto LABEL_62;
        }

        goto LABEL_59;
      }

      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v33 = v31 & ~(-1 << (8 * v28));
        bzero(a1, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v33;
            if (v11 > 1)
            {
LABEL_62:
              if (v11 == 2)
              {
                *&a1[v28] = v32;
              }

              else
              {
                *&a1[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v11 > 1)
            {
              goto LABEL_62;
            }
          }

LABEL_59:
          if (v11)
          {
            a1[v28] = v32;
          }

          return;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v11 > 1)
      {
        goto LABEL_62;
      }

      goto LABEL_59;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    if (v29 >= 2)
    {
      v11 = v30;
    }

    else
    {
      v11 = 0;
    }

LABEL_26:
    if (v24 >= a2)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v11 = 1;
  if (v24 < a2)
  {
    goto LABEL_27;
  }

LABEL_36:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *&a1[v28] = 0;
LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!v11)
  {
    goto LABEL_42;
  }

  a1[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v10 == v24)
  {
    v34 = *(v43 + 56);
    v35 = a1;
    v36 = a2;
    v37 = v10;
    v38 = v8;
LABEL_45:

    v34(v35, v36, v37, v38);
    return;
  }

  v39 = ~v21;
  v40 = (v25 + (((&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v39;
  if (v14 == v24)
  {
    v41 = *(v13 + 56);
    v42 = a2;
  }

  else
  {
    v40 = (v26 + v40) & v39;
    if (v16 != v24)
    {
      v34 = *(v18 + 56);
      v35 = ((v40 + v23 + v22) & ~v23);
      v36 = a2;
      v37 = v19;
      v38 = v7;
      goto LABEL_45;
    }

    v41 = *(v13 + 56);
    v42 = (a2 + 1);
  }

  v41(v40, v42);
}

uint64_t sub_22985D4CC(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for TokenBucket(319, a1[3], a1[5], v3);
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_22A4DDF9C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22985D5BC(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v46 = AssociatedTypeWitness;
  v48 = *(v5 + 84);
  v6 = a3[3];
  v45 = swift_getAssociatedTypeWitness();
  v7 = *(v45 - 8);
  v8 = *(v7 + 84);
  v9 = *(v6 - 8);
  v44 = *(v9 + 84);
  if (v44 <= v8)
  {
    v10 = *(v7 + 84);
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = swift_getAssociatedTypeWitness();
  result = a2;
  v13 = *(v11 - 8);
  if (*(v13 + 84) <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v13 + 84);
  }

  if (v14 <= v48)
  {
    v15 = v48;
  }

  else
  {
    v15 = v14;
  }

  v16 = v8 - 1;
  if (!v8)
  {
    v16 = 0;
  }

  if (v16 > v15)
  {
    v15 = v16;
  }

  v17 = *(v7 + 80);
  v18 = *(v9 + 80);
  v19 = *(v13 + 80);
  v20 = *(v7 + 64);
  v21 = *(v9 + 64);
  if (v8)
  {
    v22 = *(v7 + 64);
  }

  else
  {
    v22 = v20 + 1;
  }

  if (!a2)
  {
    return result;
  }

  v23 = v17 | v18 | v19 | 7;
  v24 = v23 + *(v5 + 64);
  v25 = v21 + v19;
  v26 = ((v21 + v19 + ((v20 + v18 + ((v17 + 16) & ~v17)) & ~v18)) & ~v19) + *(*(v11 - 8) + 64);
  v27 = a1;
  if (a2 > v15)
  {
    v28 = v22 + ((v26 + v17 + (v24 & ~v23)) & ~v17);
    v29 = 8 * v28;
    if (v28 <= 3)
    {
      v31 = ((a2 - v15 + ~(-1 << v29)) >> v29) + 1;
      if (HIWORD(v31))
      {
        v30 = *(a1 + v28);
        if (!v30)
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v31 > 0xFF)
      {
        v30 = *(a1 + v28);
        if (!*(a1 + v28))
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v31 < 2)
      {
LABEL_40:
        if (!v15)
        {
          return 0;
        }

        goto LABEL_41;
      }
    }

    v30 = *(a1 + v28);
    if (!*(a1 + v28))
    {
      goto LABEL_40;
    }

LABEL_27:
    v32 = (v30 - 1) << v29;
    if (v28 > 3)
    {
      v32 = 0;
    }

    if (v28)
    {
      if (v28 <= 3)
      {
        v33 = v28;
      }

      else
      {
        v33 = 4;
      }

      if (v33 > 2)
      {
        if (v33 == 3)
        {
          v34 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v34 = *a1;
        }
      }

      else if (v33 == 1)
      {
        v34 = *a1;
      }

      else
      {
        v34 = *a1;
      }
    }

    else
    {
      v34 = 0;
    }

    return v15 + (v34 | v32) + 1;
  }

LABEL_41:
  if (v48 == v15)
  {
    v35 = v46;
    v36 = *(v5 + 48);
    v37 = v48;
LABEL_43:

    return v36(v27, v37, v35);
  }

  v38 = ~v23;
  v39 = ~v17;
  v40 = (a1 + v24) & v38;
  if (v14 != v15)
  {
    v41 = (*(v7 + 48))((v40 + v17 + v26) & v39, v8, v45);
    if (v41 >= 2)
    {
      return v41 - 1;
    }

    else
    {
      return 0;
    }
  }

  v27 = ((v17 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v39);
  if (v8 == v14)
  {
    v36 = *(v7 + 48);
    v37 = v8;
    v35 = v45;
    goto LABEL_43;
  }

  v27 = ((v27 + v20 + v18) & ~v18);
  if (v44 == v14)
  {
    v36 = *(v9 + 48);
    v37 = v44;
    v35 = v6;
    goto LABEL_43;
  }

  v42 = *(v13 + 48);
  v43 = (v27 + v25) & ~v19;

  return v42(v43);
}

void sub_22985DA5C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  v54 = *(v6 + 84);
  v7 = a4[3];
  v52 = swift_getAssociatedTypeWitness();
  v8 = *(v52 - 8);
  v59 = v8;
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v58 = v10;
  v51 = *(v10 + 84);
  if (v51 <= v9)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v6 + 64);
  v16 = v8;
  if (*(v13 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (v17 <= v54)
  {
    v18 = v54;
  }

  else
  {
    v18 = v17;
  }

  v19 = v9 - 1;
  if (!v9)
  {
    v19 = 0;
  }

  if (v19 <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v8 + 80);
  v22 = *(v10 + 80);
  v23 = *(v13 + 80);
  v24 = v21 | v22 | v23 | 7;
  v25 = v24 + v15;
  v26 = (v24 + v15) & ~v24;
  v27 = *(v8 + 64);
  v28 = *(v10 + 64) + v23;
  v29 = ((v28 + ((v27 + v22 + ((v21 + 16) & ~v21)) & ~v22)) & ~v23) + *(v13 + 64);
  if (v9)
  {
    v30 = *(v16 + 64);
  }

  else
  {
    v30 = v27 + 1;
  }

  v31 = ((v29 + v21 + v26) & ~v21) + v30;
  if (a3 > v20)
  {
    if (v31 <= 3)
    {
      v32 = ((a3 - v20 + ~(-1 << (8 * v31))) >> (8 * v31)) + 1;
      if (HIWORD(v32))
      {
        v12 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v12 = v33;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v20 < a2)
  {
    v34 = ~v20 + a2;
    if (v31 < 4)
    {
      v35 = (v34 >> (8 * v31)) + 1;
      if (v31)
      {
        v37 = v34 & ~(-1 << (8 * v31));
        bzero(a1, v31);
        if (v31 != 3)
        {
          if (v31 == 2)
          {
            *a1 = v37;
            if (v12 > 1)
            {
LABEL_68:
              if (v12 == 2)
              {
                *&a1[v31] = v35;
              }

              else
              {
                *&a1[v31] = v35;
              }

              return;
            }
          }

          else
          {
            *a1 = v34;
            if (v12 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v37;
        a1[2] = BYTE2(v37);
      }

      if (v12 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v31);
      *a1 = v34;
      v35 = 1;
      if (v12 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v12)
    {
      a1[v31] = v35;
    }

    return;
  }

  v36 = a1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *&a1[v31] = 0;
  }

  else if (v12)
  {
    a1[v31] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v54 == v20)
  {
    v38 = v53;
    v39 = *(v6 + 56);
    v40 = a2;
    v41 = v54;
LABEL_76:

    v39(v36, v40, v41, v38);
    return;
  }

  v42 = ~v21;
  v43 = &a1[v25] & ~v24;
  if (v17 == v20)
  {
    v36 = ((v21 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v42);
    if (v9 == v17)
    {
      v39 = *(v59 + 56);
      v40 = a2;
LABEL_75:
      v41 = v9;
      v38 = v52;
      goto LABEL_76;
    }

    v36 = (&v36[v27 + v22] & ~v22);
    if (v51 == v17)
    {
      v39 = *(v58 + 56);
      v40 = a2;
      v41 = v51;
      v38 = v7;
      goto LABEL_76;
    }

    v49 = *(v14 + 56);
    v50 = &v36[v28] & ~v23;

    v49(v50, a2);
  }

  else
  {
    v44 = v43 + v21 + v29;
    v45 = (v44 & v42);
    if (v19 >= a2)
    {
      v39 = *(v59 + 56);
      v40 = a2 + 1;
      v36 = (v44 & v42);
      goto LABEL_75;
    }

    if (v30 <= 3)
    {
      v46 = ~(-1 << (8 * v30));
    }

    else
    {
      v46 = -1;
    }

    if (v30)
    {
      v47 = v46 & (~v19 + a2);
      if (v30 <= 3)
      {
        v48 = v30;
      }

      else
      {
        v48 = 4;
      }

      bzero(v45, v30);
      if (v48 > 2)
      {
        if (v48 == 3)
        {
          *v45 = v47;
          v45[2] = BYTE2(v47);
        }

        else
        {
          *v45 = v47;
        }
      }

      else if (v48 == 1)
      {
        *v45 = v47;
      }

      else
      {
        *v45 = v47;
      }
    }
  }
}

uint64_t sub_22985E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v33 = *(a1 + 24);
  v36 = *(v33 - 8);
  v34 = *(MEMORY[0x28223BE20](a1) + 40);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = AssociatedTypeWitness;
  v32 = sub_22A4DDF9C();
  v7 = *(v32 - 8);
  v8 = MEMORY[0x28223BE20](v32);
  v31 = &v30 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v14 = *(a1 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v11);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 32);
  v19 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v30 - v20;
  (*(v15 + 16))(v17, v3, v14);
  sub_22A4DDAFC();
  v22 = *(v3 + *(a1 + 52));
  v23 = *(v3 + *(a1 + 56));
  (*(v10 + 16))(v13, v3 + *(a1 + 60), v30);
  v24 = v31;
  (*(v7 + 16))(v31, v3 + *(a1 + 64), v32);
  v25 = *(a1 + 68);
  v26 = v35;
  v27 = v3 + v25;
  v28 = v33;
  (*(v36 + 16))(v35, v27, v33);
  return sub_22985E384(v21, v22, v23, v13, v24, v26, v14, v28, v37, v18, v34);
}

uint64_t sub_22985E384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a4;
  v38 = a6;
  v40 = a3;
  v41 = a5;
  v39 = a2;
  v34 = a1;
  v42 = a9;
  v31 = *(a8 - 8);
  v14 = v31;
  v36 = a11;
  MEMORY[0x28223BE20](a1);
  v35 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v31 - v18;
  v33 = swift_getAssociatedTypeWitness();
  v20 = *(v33 - 8);
  v21 = v42;
  (*(v20 + 16))(v42, a1, v33);
  v22 = v37;
  (*(v17 + 16))(v19, v37, AssociatedTypeWitness);
  v23 = *(v14 + 16);
  v24 = v35;
  v25 = v38;
  v23(v35, v38, a8);
  v43[0] = a7;
  v43[1] = a8;
  v43[2] = a10;
  v26 = v36;
  v43[3] = v36;
  v27 = type metadata accessor for AsyncTokenBucketSequence.Iterator(0, v43);
  sub_2297AE5C8(v39, v40, v19, v24, a8, v26, (v21 + *(v27 + 52)));
  (*(v31 + 8))(v25, a8);
  (*(v17 + 8))(v22, v32);
  (*(v20 + 8))(v34, v33);
  v28 = *(v27 + 56);
  v29 = sub_22A4DDF9C();
  return (*(*(v29 - 8) + 32))(v42 + v28, v41, v29);
}

uint64_t sub_22985E67C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 40);
  v3[6] = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v3[8] = *(AssociatedTypeWitness - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22985E764, 0, 0);
}

uint64_t sub_22985E764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TokenBucket(0, v4[6], v4[5], a4);
  if (sub_2297AE858(v5))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = swift_task_alloc();
    v4[12] = v8;
    *v8 = v4;
    v8[1] = sub_22985EB4C;
    v9 = v4[2];

    return MEMORY[0x282200308](v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v11 = v4[3];
    v10 = v4[4];
    sub_2297AEBA8(v5, v4[9]);
    v12 = *(v11 + 56);
    v13 = swift_task_alloc();
    v4[10] = v13;
    *v13 = v4;
    v13[1] = sub_22985E920;
    v14 = v4[9];
    v16 = v4[5];
    v15 = v4[6];

    return MEMORY[0x2822008C8](v14, v10 + v12, v15, v16);
  }
}

uint64_t sub_22985E920()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22985EC64;
  }

  else
  {
    v2 = sub_22985EA34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22985EA34()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22985EB4C;
  v4 = v0[2];

  return MEMORY[0x282200308](v4, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_22985EB4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22985EC64()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22985ECE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_22985E67C(a1, a2);
}

uint64_t sub_22985ED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_22985EE5C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_22985EE5C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_22985EF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22985E010(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

id sub_22985F0CC()
{
  v206 = MEMORY[0x277D84F98];
  v1 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_readWriteEvent);
  sub_229890F4C([v1 thSensorSSIDSame], 0xD000000000000010, 0x800000022A5994C0);
  sub_229890F4C([v1 thSensorIPv4AddressSameAsCachedIP], 0xD000000000000021, 0x800000022A5994E0);
  sub_229890F4C([v1 thSensorIPv4NetworkSignatureSame], 0xD000000000000020, 0x800000022A599510);
  sub_229890F4C([v1 thSensorIPv6AddressSameAsCachedIP], 0xD000000000000021, 0x800000022A599540);
  sub_229890F4C([v1 thSensorIPv6NetworkSignatureSame], 0xD000000000000020, 0x800000022A599570);
  sub_229890F4C([v1 thSensorReachableViaIDS], 0xD000000000000017, 0x800000022A5995A0);
  sub_229890F4C([v1 thSensorReachable], 0xD000000000000011, 0x800000022A5995C0);
  sub_229890F4C([v1 thSensorPrimaryInterfaceType], 0xD00000000000001ALL, 0x800000022A5995E0);
  sub_229890F4C([v1 thSensorPrimaryInterfaceName], 0xD00000000000001ALL, 0x800000022A599600);
  sub_229890F4C([v1 thSensorCachedSourceIPType], 0xD000000000000018, 0x800000022A599620);
  sub_229890F4C([v1 thSensorDurationSecondsSinceLastStatusKitAssertion], 0xD00000000000002ALL, 0x800000022A599640);
  v2 = sub_22A4DD5EC();
  v4 = v3;
  [v1 isCurrentDevicePrimaryResident];
  v5 = sub_22A4DD8AC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v5, v2, v4, isUniquelyReferenced_nonNull_native);

  v7 = sub_22A4DD5EC();
  v9 = v8;
  [v1 isCurrentDeviceAvailableResident];
  v10 = sub_22A4DD8AC();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v10, v7, v9, v11);

  v12 = sub_22A4DD5EC();
  v14 = v13;
  [v1 isPrimaryResidentReachable];
  v15 = sub_22A4DD8AC();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v15, v12, v14, v16);

  v17 = sub_22A4DD5EC();
  v19 = v18;
  [v1 isLocal];
  v20 = sub_22A4DD8AC();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v20, v17, v19, v21);

  v22 = sub_22A4DD5EC();
  v24 = v23;
  [v1 isResidentAvailable];
  v25 = sub_22A4DD8AC();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v25, v22, v24, v26);

  v27 = v206;
  if ([v1 linkLayerType] != 4 && objc_msgSend(v1, sel_linkType) == 1)
  {
    v28 = [v1 expectedTransport];
    v29 = sub_22A4DD5EC();
    v31 = v30;

    if (v29 != sub_22A4DD5EC() || v31 != v32)
    {
      sub_22A4DE60C();
    }
  }

  v33 = sub_22A4DD5EC();
  v35 = v34;
  v36 = sub_22A4DD8AC();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v36, v33, v35, v37);

  v38 = sub_22A4DD5EC();
  v40 = v39;
  [v1 triggerSource];
  v41 = sub_22A4DDFDC();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v41, v38, v40, v42);

  v43 = sub_22A4DD5EC();
  v45 = v44;
  [v1 timeIntervalSinceFirstFailure];
  v46 = sub_22A4DDB3C();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v46, v43, v45, v47);

  v48 = sub_22A4DD5EC();
  v50 = v49;
  [v1 noSessionDuration];
  v51 = sub_22A4DDB3C();
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v51, v48, v50, v52);

  v53 = sub_22A4DD5EC();
  v55 = v54;
  [v1 localDurationInMilliseconds];
  v56 = sub_22A4DDBDC();
  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v56, v53, v55, v57);

  v58 = sub_22A4DD5EC();
  v60 = v59;
  [v1 residentFirstDurationInMilliseconds];
  v61 = sub_22A4DDBDC();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v61, v58, v60, v62);

  v63 = sub_22A4DD5EC();
  v65 = v64;
  [v1 durationMilliseconds];
  v66 = sub_22A4DDBDC();
  v67 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v66, v63, v65, v67);

  v68 = sub_22A4DD5EC();
  v70 = v69;
  [v1 hasSession];
  v71 = sub_22A4DD8AC();
  v72 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v71, v68, v70, v72);

  v73 = sub_22A4DD5EC();
  v75 = v74;
  [v1 isReachable];
  v76 = sub_22A4DD8AC();
  v77 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v76, v73, v75, v77);

  v78 = sub_22A4DD5EC();
  v80 = v79;
  [v1 recentSessionRetries];
  v81 = sub_22A4DDBDC();
  v82 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v81, v78, v80, v82);

  v83 = sub_22A4DD5EC();
  v85 = v84;
  [v1 topSessionFailureErrorCode];
  v86 = sub_22A4DDBDC();
  v87 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v86, v83, v85, v87);

  v88 = sub_22A4DD5EC();
  sub_229890F4C([v1 topSessionFailureErrorDomain], v88, v89);
  if ([v1 residentFirstError])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v90 = sub_22A4DD5EC();
      v92 = v91;
      result = [v205 domain];
      if (!result)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v94 = result;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      sub_2295AAFCC(v94, v90, v92, v95);

      v96 = sub_22A4DD5EC();
      v98 = v97;
      [v205 code];
      v99 = sub_22A4DDBDC();
      v100 = swift_isUniquelyReferenced_nonNull_native();
      sub_2295AAFCC(v99, v96, v98, v100);
    }
  }

  if ([v1 residentFirstUnderlyingError])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v101 = sub_22A4DD5EC();
      v103 = v102;
      result = [v205 domain];
      if (!result)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v104 = result;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      sub_2295AAFCC(v104, v101, v103, v105);

      v106 = sub_22A4DD5EC();
      v108 = v107;
      [v205 code];
      v109 = sub_22A4DDBDC();
      v110 = swift_isUniquelyReferenced_nonNull_native();
      sub_2295AAFCC(v109, v106, v108, v110);
    }
  }

  v111 = sub_22A4DD5EC();
  v113 = v112;
  [v1 isNetworkAvailable];
  v114 = sub_22A4DD8AC();
  v115 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v114, v111, v113, v115);

  v116 = sub_22A4DD5EC();
  v118 = v117;
  [v1 hasSucceededOnce];
  v119 = sub_22A4DD8AC();
  v120 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v119, v116, v118, v120);

  v121 = sub_22A4DD5EC();
  v123 = v122;
  [v1 hasFailedOnce];
  v124 = sub_22A4DD8AC();
  v125 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v124, v121, v123, v125);

  v126 = sub_22A4DD5EC();
  v128 = v127;
  [v1 isSSIDSameAsLastSuccessRequest];
  v129 = sub_22A4DD8AC();
  v130 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v129, v126, v128, v130);

  v131 = sub_22A4DD5EC();
  v133 = v132;
  [v1 isBSSIDSameAsLastSuccessRequest];
  v134 = sub_22A4DD8AC();
  v135 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v134, v131, v133, v135);

  v136 = sub_22A4DD5EC();
  v138 = v137;
  [v1 isPrimaryResidentAvailable];
  v139 = sub_22A4DD8AC();
  v140 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v139, v136, v138, v140);

  v141 = sub_22A4DD5EC();
  sub_229890F4C([v1 wifiAccessPointOUI], v141, v142);
  if (![v1 isCurrentDevicePrimaryResident])
  {
    goto LABEL_23;
  }

  v143 = sub_22A4DD5EC();
  v145 = v144;
  result = [v1 timeIntervalSinceCurrentDeviceAsPrimary];
  if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v146 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v146 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v147 = sub_22A4DDBDC();
  v148 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v147, v143, v145, v148);

  if (isHomePod())
  {
    v149 = sub_22A4DD5EC();
    v151 = v150;
    [v1 mediaSystemConfiguration];
    v152 = sub_22A4DDFDC();
    v153 = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v152, v149, v151, v153);
  }

LABEL_23:
  if ([v1 hasEnabledResidents])
  {
    v154 = sub_22A4DD5EC();
    v156 = v155;
    result = [v1 timeIntervalSincePrimaryChanged];
    if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v157 > -9.22337204e18)
      {
        if (v157 < 9.22337204e18)
        {
          v158 = sub_22A4DDBDC();
          v159 = swift_isUniquelyReferenced_nonNull_native();
          sub_2295AAFCC(v158, v154, v156, v159);

          v160 = sub_22A4DD5EC();
          v162 = v161;
          result = [v1 timeIntervalSincePrimaryLost];
          if ((*&v163 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v163 > -9.22337204e18)
            {
              if (v163 < 9.22337204e18)
              {
                v164 = sub_22A4DDBDC();
                v165 = swift_isUniquelyReferenced_nonNull_native();
                sub_2295AAFCC(v164, v160, v162, v165);

                v166 = sub_22A4DD5EC();
                v168 = v167;
                [v1 percentageOfLocalReachableResidents];
                v169 = sub_22A4DDBDC();
                v170 = swift_isUniquelyReferenced_nonNull_native();
                sub_2295AAFCC(v169, v166, v168, v170);

                v171 = sub_22A4DD5EC();
                v173 = v172;
                [v1 percentageOfIDSReachableResidents];
                v174 = sub_22A4DDBDC();
                v175 = swift_isUniquelyReferenced_nonNull_native();
                sub_2295AAFCC(v174, v171, v173, v175);

                goto LABEL_31;
              }

              goto LABEL_44;
            }

LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_31:
  if ([v1 isCurrentDeviceAvailableResident])
  {
    v176 = sub_22A4DD5EC();
    v178 = v177;
    [v1 isThreadNetworkUpInHome];
    v179 = sub_22A4DD8AC();
    v180 = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v179, v176, v178, v180);

    v181 = sub_22A4DD5EC();
    v183 = v182;
    [v1 threadPreferredNetworkExistsInHome];
    v184 = sub_22A4DD8AC();
    v185 = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v184, v181, v183, v185);
  }

  v186 = sub_22A4DD5EC();
  v188 = v187;
  [v1 threadNetworkConnectionState];
  v189 = sub_22A4DDBDC();
  v190 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v189, v186, v188, v190);

  v191 = sub_22A4DD5EC();
  v193 = v192;
  [v1 threadNetworkNodeType];
  v194 = sub_22A4DDBDC();
  v195 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v194, v191, v193, v195);

  if ([v1 isIPAccessoryServer])
  {
    v196 = sub_22A4DD5EC();
    sub_229890F4C([v1 ipSocketIPType], v196, v197);
    v198 = sub_22A4DD5EC();
    sub_229890F4C([v1 ipSocketUpdateType], v198, v199);
    v200 = sub_22A4DD5EC();
    v202 = v201;
    [v1 isSeenOnBonjour];
    v203 = sub_22A4DD8AC();
    v204 = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v203, v200, v202, v204);

    return v206;
  }

  return v27;
}