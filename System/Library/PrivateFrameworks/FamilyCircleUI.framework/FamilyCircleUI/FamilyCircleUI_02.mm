unint64_t sub_21BBB63EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D8, &qword_21BE329E8);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_21BBB3230(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_21BBB650C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

unint64_t sub_21BBB6600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E8, &qword_21BE32A80);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
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

unint64_t sub_21BBB6718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5908, &qword_21BE32AB8);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
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

unint64_t sub_21BBB686C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58C8, &qword_21BE329C0);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21BBB6984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58B8, &qword_21BE329B0);
    v3 = sub_21BE297DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21BBB31A4(v6);
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

unint64_t sub_21BBB6A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5878, &unk_21BE32970);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
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

unint64_t sub_21BBB6B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58C0, &qword_21BE329B8);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BBB3120(v5, v6, sub_21BBB349C);
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

unint64_t sub_21BBB6CBC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_21BE297DC();
    v10 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_21BBB340C(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_21BB414D0(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

void _s14FamilyCircleUI32FAFamilySettingsViewControllerV2C23didTapAddRemoteGuardian3forySo0D6MemberC_tF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "Attempting to Remote family guardian", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_21BE28D7C();
  v14 = v1;
  v15 = v12;
  v16 = sub_21BE28D6C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  v17[5] = v15;
  sub_21BBA962C(0, 0, v4, &unk_21BE32AC8, v17);
}

uint64_t sub_21BBB728C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBB44B0(a1, v4);
}

uint64_t sub_21BBB7344()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BBB2B4C();
}

uint64_t sub_21BBB73F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBB2020(v2, v3, v5, v4);
}

uint64_t sub_21BBB74B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BDC4DC0(v2, v3, v4);
}

uint64_t sub_21BBB7570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BDC4EA8(a1, v4, v5, v6);
}

uint64_t sub_21BBB763C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBAED34(v2, v3, v4, v5, v6);
}

uint64_t sub_21BBB7704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBAD5A4(v2, v3, v4);
}

uint64_t objectdestroy_86Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BBB77F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BBA8948();
}

uint64_t sub_21BBB78D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBB41B4(a1, v4);
}

uint64_t sub_21BBB798C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BBB22FC(a1, v4, v5, v7, v6);
}

uint64_t sub_21BBB7A4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBB43BC(a1, v4);
}

void sub_21BBB7B10()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21BBB1A34(v0 + v2, v3);
}

void sub_21BBB7BA8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_21BBB1AF8(a1, v1 + v4, v6, v7);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BBB7CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBB2C4C(a1, v4, v5, v6);
}

uint64_t sub_21BBB7D84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21BBB7DEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BBA7464(a1, v1);
}

uint64_t sub_21BBB7ED0(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_21BE26A4C();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BBB7F94, 0, 0);
}

uint64_t sub_21BBB7F94()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[36] = v3;
  v4 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[37] = v4;
  v0[22] = sub_21BBB8754;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BB42A18;
  v0[21] = &block_descriptor_0;
  v5 = _Block_copy(v0 + 18);
  [v4 setPresentationHandler_];
  _Block_release(v5);
  v6 = [*(v1 + 16) me];
  v0[38] = v6;
  [v4 setPresentationType_];
  [v4 setModalPresentationStyle_];
  v7 = sub_21BBB6068(MEMORY[0x277D84F90]);
  v0[27] = v7;
  v8 = v0 + 27;
  if (v6)
  {
    v9 = v6;
    v10 = [v9 dsid];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 stringValue];

      v13 = sub_21BE28A0C();
      v15 = v14;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_21BC7F9A8(v13, v15, 0x64497265626D656DLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      *v8 = v7;
    }

    v17 = [v9 altDSID];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21BE28A0C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    sub_21BD400D8(v19, v21, 0x44495344746C61, 0xE700000000000000);

    v7 = *v8;
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_21BC7F9A8(0x6843796C696D6146, 0xEF7473696C6B6365, 0x6574736575716572, 0xE900000000000072, v22);
  sub_21BCA2A64(v7);

  v23 = sub_21BE288EC();

  [v3 setAdditionalParameters_];

  v24 = sub_21BE25B2C();
  [v3 setUrlForContext_];

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_21BBB83CC;
  v25 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_4;
  v0[14] = v25;
  [v4 performWithContext:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BBB83CC()
{

  return MEMORY[0x2822009F8](sub_21BBB84AC, 0, 0);
}

uint64_t sub_21BBB84AC()
{
  v29 = v0;
  v1 = *(v0 + 224);
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    sub_21BE2614C();
    v4 = v3;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 296);
    v9 = *(v0 + 280);
    v10 = *(v0 + 288);
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);
    if (v7)
    {
      v27 = *(v0 + 304);
      v26 = *(v0 + 288);
      v13 = swift_slowAlloc();
      v25 = v8;
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_21BE29A5C();
      v24 = v11;
      v17 = sub_21BB3D81C(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_21BB35000, v5, v6, "Error loading stateController for family shared services: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);

      (*(v12 + 8))(v9, v24);
    }

    else
    {

      (*(v12 + 8))(v9, v11);
    }
  }

  else
  {
    v18 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4E90 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);
    [v18 postNotificationName:qword_27CDB7E40 object:0];
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21BBB8754()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "iCloud Plus Presented", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21BBB8888()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21BBB8910(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8A28;

  return v7(a1, a2);
}

uint64_t sub_21BBB8A28(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21BBB8B24(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8C3C;

  return v7(a1, a2);
}

uint64_t sub_21BBB8C3C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t getEnumTagSinglePayload for SidebarItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SidebarItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21BBB8E90()
{
  result = qword_27CDB59A0;
  if (!qword_27CDB59A0)
  {
    result = swift_getWitnessTable(byte_21BE32CB0, &type metadata for SidebarItem, v0, v1);
    atomic_store(result, &qword_27CDB59A0);
  }

  return result;
}

uint64_t _s14FamilyCircleUI20AgeRangeSettingsViewO9hashValueSivg_0()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BBB8F2C(uint64_t a1)
{
  v2 = *v1;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v2);
  return sub_21BE29B0C();
}

uint64_t sub_21BBB8F70()
{
  if (*v0)
  {
    return 1701669236;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21BBB8F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_21BE2995C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21BBB9078(uint64_t a1)
{
  v2 = sub_21BBBEB98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BBB90B4(uint64_t a1)
{
  v2 = sub_21BBBEB98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BBB90F0(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A18, &qword_21BE32F80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BBBEB98();
  sub_21BE29B6C();
  v11[15] = 0;
  sub_21BE298DC();
  if (!v4)
  {
    v11[14] = 1;
    sub_21BE298EC();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_21BBB928C(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v6 = sub_21BBBE120(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 2) = v6;
  }
}

uint64_t sub_21BBB9320(const char *a1, ...)
{
  v3 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v3 synchronize];
  sub_21BE261BC();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_21BB35000, v9, v10, a1, v11, 8u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21BBB9480()
{
  v1 = [*v0 dictionaryRepresentation];
  v2 = sub_21BE2890C();

  return v2;
}

double sub_21BBB9518@<D0>(_OWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = sub_21BE289CC();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_21BE294BC();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_21BBB95B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BBBEBEC(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_21BE2994C();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_21BE289CC();
  [v3 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

uint64_t sub_21BBB9710()
{
  sub_21BBBB4C4(v3);
  sub_21BB3A35C(v3, v2);
  type metadata accessor for ChecklistUserPreferences(0);
  v0 = swift_allocObject();
  sub_21BBBAF18(v2);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v3);
  off_27CDB59A8 = v0;
  return result;
}

uint64_t static ChecklistUserPreferences.shared.getter()
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ChecklistUserPreferences.shared.setter(void *a1)
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27CDB59A8 = a1;
}

uint64_t (*static ChecklistUserPreferences.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21BBB98F8@<X0>(void *a1@<X8>)
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_27CDB59A8;
}

uint64_t sub_21BBB9978(void **a1)
{
  v1 = *a1;
  v2 = qword_27CDB4E20;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27CDB59A8 = v1;
}

uint64_t sub_21BBB9A00()
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
}

uint64_t sub_21BBB9A88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_21BBB9B18(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F0C();
}

uint64_t sub_21BBB9BB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

uint64_t sub_21BBB9C1C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  return sub_21BB3A35C(v1 + 56, a1);
}

uint64_t sub_21BBB9CAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  return sub_21BB3A35C(v3 + 56, a2);
}

uint64_t sub_21BBB9D3C(uint64_t a1, uint64_t *a2)
{
  sub_21BB3A35C(a1, v3);
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F0C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_21BBB9DEC(uint64_t a1, uint64_t a2)
{
  sub_21BB3A35C(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + 56));
  sub_21BB3D104(v4, a1 + 56);
  return swift_endAccess();
}

uint64_t sub_21BBB9E5C()
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  return *(v0 + 96);
}

uint64_t sub_21BBB9ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_21BBB9F6C(uint64_t result)
{
  if (*(v1 + 96) == (result & 1))
  {
    *(v1 + 96) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBBC1D0();
    sub_21BE25F0C();
  }

  return result;
}

char *ChecklistUserPreferences.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v2 = OBJC_IVAR____TtC14FamilyCircleUI24ChecklistUserPreferences___observationRegistrar;
  v3 = sub_21BE25F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t ChecklistUserPreferences.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v2 = OBJC_IVAR____TtC14FamilyCircleUI24ChecklistUserPreferences___observationRegistrar;
  v3 = sub_21BE25F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_21BBBA200()
{
  v78 = sub_21BE26A4C();
  v1 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v81 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v88 = v0;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C(v0 + 56, &v88);
  v3 = *(&v89 + 1);
  v4 = v90;
  __swift_project_boxed_opaque_existential_1Tm(&v88, *(&v89 + 1));
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(&v88);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v77 = "handleChange(notification:)";
  v76 = (v1 + 8);

  v11 = 0;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  *(&v14 + 1) = 2;
  v75 = xmmword_21BE32770;
  *&v14 = 136315138;
  v74 = v14;
  for (i = v9; v8; v12 = v84)
  {
    v83 = v13;
LABEL_9:
    v16 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v5 + 16);

    v84 = v12;
    if (v19 && (v20 = sub_21BBB3108(v18, v17), (v21 & 1) != 0) && (sub_21BB3DCD4(*(v5 + 56) + 32 * v20, &v88), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800), (swift_dynamicCast() & 1) != 0))
    {
      *&v88 = v86;
      sub_21BBBF03C();
      v22 = sub_21BE2897C();
      v24 = v23;

      *&v88 = v18;
      *(&v88 + 1) = v17;
      MEMORY[0x21CF03CA0](1528839456, 0xE400000000000000);
      MEMORY[0x21CF03CA0](v22, v24);

      MEMORY[0x21CF03CA0](93, 0xE100000000000000);
    }

    else
    {
      if (!*(v5 + 16) || (v25 = sub_21BBB3108(v18, v17), (v26 & 1) == 0) || (sub_21BB3DCD4(*(v5 + 56) + 32 * v25, &v88), (swift_dynamicCast() & 1) == 0))
      {
        if (*(v5 + 16))
        {
          v32 = sub_21BBB3108(v18, v17);
          if (v33)
          {
            sub_21BB3DCD4(*(v5 + 56) + 32 * v32, &v88);
            if (swift_dynamicCast())
            {
              v34 = v86;
              v35 = v87;
              sub_21BE2578C();
              swift_allocObject();
              sub_21BBBEE74(v34, v35);
              sub_21BE2577C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA8, &qword_21BE33020);
              sub_21BBBEE74(v34, v35);
              sub_21BBBEEC8(&qword_27CDB5AC8, sub_21BBBEF40, MEMORY[0x277D83978]);
              v79 = v35;
              v80 = v34;
              v36 = v84;
              sub_21BE2576C();
              v84 = v36;
              if (v36)
              {

                sub_21BBBEF94(v80, v79);
                sub_21BE261BC();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
                v37 = swift_allocObject();
                *(v37 + 16) = v75;
                swift_getErrorValue();
                v73 = v85;
                v38 = v36;
                v39 = v36;
                v40 = sub_21BE29A5C();
                v42 = v41;
                *(v37 + 56) = MEMORY[0x277D837D0];
                *(v37 + 64) = sub_21BBBEFE8();
                *(v37 + 32) = v40;
                *(v37 + 40) = v42;
                v43 = sub_21BE28A2C();
                v45 = v44;
                v46 = sub_21BE26A2C();
                v47 = sub_21BE28FDC();
                if (os_log_type_enabled(v46, v47))
                {
                  v48 = swift_slowAlloc();
                  v73 = v46;
                  v49 = v45;
                  v50 = v48;
                  v51 = swift_slowAlloc();
                  v52 = v43;
                  v53 = v51;
                  *&v88 = v51;
                  *v50 = v74;
                  v72 = sub_21BB3D81C(v52, v49, &v88);

                  *(v50 + 4) = v72;
                  v54 = v73;
                  _os_log_impl(&dword_21BB35000, v73, v47, "%s", v50, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v53);
                  MEMORY[0x21CF05C50](v53, -1, -1);
                  MEMORY[0x21CF05C50](v50, -1, -1);

                  v55 = v84;
                }

                else
                {

                  v55 = v84;
                }

                sub_21BBBEF94(v80, v79);
                (*v76)(v81, v78);
                v84 = 0;
                v66 = MEMORY[0x277D84F90];
              }

              else
              {

                v64 = v79;
                v65 = v80;
                sub_21BBBEF94(v80, v79);
                sub_21BBBEF94(v65, v64);
                v66 = v88;
              }

              *&v88 = v18;
              *(&v88 + 1) = v17;
              MEMORY[0x21CF03CA0](2112800, 0xE300000000000000);
              v67 = MEMORY[0x21CF03DF0](v66, &type metadata for DismissedChecklistItem);
              v69 = v68;

              MEMORY[0x21CF03CA0](v67, v69);

              v31 = *(&v88 + 1);
              v30 = v88;
              v13 = v83;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v13 = sub_21BBBC990(0, *(v13 + 2) + 1, 1, v13);
              }

              v9 = i;
              v61 = *(v13 + 2);
              v70 = *(v13 + 3);
              v62 = v61 + 1;
              if (v61 >= v70 >> 1)
              {
                v13 = sub_21BBBC990((v70 > 1), v61 + 1, 1, v13);
              }

              result = sub_21BBBEF94(v80, v79);
              goto LABEL_41;
            }
          }
        }

        v86 = v18;
        v87 = v17;

        MEMORY[0x21CF03CA0](2112800, 0xE300000000000000);
        if (*(v5 + 16))
        {
          v56 = sub_21BBB3108(v18, v17);
          v58 = v57;

          if (v58)
          {
            sub_21BB3DCD4(*(v5 + 56) + 32 * v56, &v88);
            goto LABEL_37;
          }
        }

        else
        {
        }

        v88 = 0u;
        v89 = 0u;
LABEL_37:
        v9 = i;
        v13 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5940, &unk_21BE32B10);
        v59 = sub_21BE28A5C();
        MEMORY[0x21CF03CA0](v59);

        v30 = v86;
        v31 = v87;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21BBBC990(0, *(v13 + 2) + 1, 1, v13);
          v13 = result;
        }

        goto LABEL_39;
      }

      v27 = v86;
      *&v88 = v18;
      *(&v88 + 1) = v17;
      MEMORY[0x21CF03CA0](2112800, 0xE300000000000000);
      if (v27)
      {
        v28 = 1702195828;
      }

      else
      {
        v28 = 0x65736C6166;
      }

      if (v27)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      MEMORY[0x21CF03CA0](v28, v29);
    }

    v31 = *(&v88 + 1);
    v30 = v88;
    v13 = v83;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21BBBC990(0, *(v13 + 2) + 1, 1, v13);
      v13 = result;
    }

    v9 = i;
LABEL_39:
    v61 = *(v13 + 2);
    v60 = *(v13 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      result = sub_21BBBC990((v60 > 1), v61 + 1, 1, v13);
      v13 = result;
    }

LABEL_41:
    v8 &= v8 - 1;
    *(v13 + 2) = v62;
    v63 = &v13[16 * v61];
    *(v63 + 4) = v30;
    *(v63 + 5) = v31;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v9)
    {

      *&v88 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
      sub_21BBBF03C();
      v71 = sub_21BE2897C();

      return v71;
    }

    v8 = *(v5 + 64 + 8 * v15);
    ++v11;
    if (v8)
    {
      v83 = v13;
      v11 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BBBABA0()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v16[0] = v0;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C(v0 + 56, v16);
  v5 = v17;
  v6 = v18;
  __swift_project_boxed_opaque_existential_1Tm(v16, v17);
  (*(v6 + 24))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  sub_21BBBBD44();
  sub_21BE261BC();

  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FCC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_21BB3D81C(0xD00000000000001BLL, 0x800000021BE566B0, v16);
    *(v9 + 12) = 2080;
    v11 = sub_21BBBA200();
    v13 = sub_21BB3D81C(v11, v12, v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_21BB35000, v7, v8, "%s KeyStore on handleChange: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void *sub_21BBBAF18(void *a1)
{
  v2 = v1;
  v4 = 5789784;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 96) = 0;
  sub_21BE25F4C();
  sub_21BB3A35C(a1, v1 + 56);
  v5 = [objc_opt_self() defaultStore];
  if (v5 && (v6 = v5, v7 = [v5 aa_primaryAppleAccount], v6, v7) && (v8 = objc_msgSend(v7, sel_aa_altDSID), v7, v8))
  {
    v4 = sub_21BE28A0C();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  v37 = a1;
  if ((*(v12 + 16))(v11, v12))
  {

    v4 = 0;
    v10 = 0xE000000000000000;
  }

  v39[1] = 0x800000021BE56700;
  MEMORY[0x21CF03CA0](v4, v10);

  v2[2] = 0xD00000000000001DLL;
  v2[3] = 0x800000021BE56700;
  v2[4] = 0xD000000000000028;
  v2[5] = 0x800000021BE56720;
  swift_getKeyPath();
  v39[0] = v2;
  sub_21BBBC1D0();

  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C((v2 + 7), v39);
  v13 = v40;
  v14 = v41;
  __swift_project_boxed_opaque_existential_1Tm(v39, v40);
  v15 = (*(v14 + 16))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  if (v15)
  {

    v16 = [objc_opt_self() defaultCenter];
    v17 = *MEMORY[0x277CCA7C0];
    swift_getKeyPath();
    v39[0] = v2;

    sub_21BE25F1C();

    sub_21BB3A35C((v2 + 7), v39);
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v18 = sub_21BE2994C();
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    [v16 addObserver:v2 selector:sel_handleChangeWithNotification_ name:v17 object:v18];

    swift_unknownObjectRelease();
LABEL_27:
    swift_getKeyPath();
    v39[0] = v2;
    sub_21BE25F1C();

    sub_21BB3A35C((v2 + 7), v39);
    v35 = v40;
    v36 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    (*(v36 + 24))(v35, v36);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    sub_21BBBBD44();
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    return v2;
  }

  else
  {
    swift_getKeyPath();
    v39[0] = v2;
    sub_21BE25F1C();

    sub_21BB3A35C((v2 + 7), v39);
    v19 = v40;
    v20 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    result = (*(v20 + 8))(v19, v20);
    v22 = 0;
    v23 = result + 8;
    v38 = result;
    v24 = 1 << *(result + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & result[8];
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
LABEL_19:
      v29 = (*(v38 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v26)))));
      v31 = *v29;
      v30 = v29[1];
      sub_21BBBF0E4();
      sub_21BBBF138();

      if (sub_21BE2896C())
      {
        v32 = v31 == 0xD00000000000001DLL && v30 == 0x800000021BE56700;
        if (!v32 && (sub_21BE2995C() & 1) == 0)
        {
          v33 = v40;
          v34 = v41;
          __swift_project_boxed_opaque_existential_1Tm(v39, v40);
          (*(v34 + 56))(v31, v30, v33, v34);
        }
      }

      v26 &= v26 - 1;
    }

    while (1)
    {
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        goto LABEL_27;
      }

      v26 = v23[v28];
      ++v22;
      if (v26)
      {
        v22 = v28;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_21BBBB4C4@<X0>(void *a1@<X8>)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  sub_21BE25F9C();
  v9 = sub_21BE263AC();

  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    result = sub_21BB3A2A4(0, &qword_280BD8A28, 0x277CBEBD0);
    v12 = &off_282D88250;
LABEL_7:
    a1[3] = result;
    a1[4] = v12;
    goto LABEL_8;
  }

  v13 = [objc_opt_self() keyStoreForChecklist];
  if (v13)
  {
    v10 = v13;
    sub_21BBB9320("NSUbiquitousKeyValueStore syncWithStore (keystore) %{BOOL}d");
    sub_21BE261BC();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v14, v15, "ClientPreferencesProvider created", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    result = sub_21BB3A2A4(0, &qword_27CDB5B00, 0x277CCAD80);
    v12 = &off_282D88210;
    goto LABEL_7;
  }

  sub_21BE261BC();
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FDC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21BB35000, v17, v18, "Failed to create synchronizing store! Fallback to UserDefaults", v19, 2u);
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  if (qword_280BD8A50 != -1)
  {
    swift_once();
  }

  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_21BE289CC();
  v10 = [v20 initWithSuiteName_];

  result = sub_21BB3A2A4(0, &qword_280BD8A28, 0x277CBEBD0);
  a1[3] = result;
  a1[4] = &off_282D88250;
  if (!v10)
  {
    result = [objc_opt_self() standardUserDefaults];
    v10 = result;
  }

LABEL_8:
  *a1 = v10;
  return result;
}

uint64_t sub_21BBBB83C()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30[0] = v0;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C(v0 + 56, v30);
  v4 = v31;
  v5 = v32;
  v24[1] = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  swift_getKeyPath();
  v28[0] = v0;
  sub_21BE25F1C();

  swift_beginAccess();
  v6 = *(v0 + 48);
  sub_21BE257BC();
  swift_allocObject();

  sub_21BE257AC();
  v28[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA8, &qword_21BE33020);
  sub_21BBBEEC8(&qword_27CDB5AB0, sub_21BBBEE20, MEMORY[0x277D83948]);
  v7 = sub_21BE2579C();
  v9 = v8;

  v29 = MEMORY[0x277CC9318];
  v28[0] = v7;
  v28[1] = v9;
  (*(v5 + 48))(v28, v1[2], v1[3], v4, v5);
  sub_21BBBC274(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  swift_getKeyPath();
  v30[0] = v0;
  sub_21BE25F1C();

  sub_21BB3A35C(v0 + 56, v30);
  v10 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  swift_getKeyPath();
  v28[0] = v0;
  sub_21BE25F1C();

  v12 = *(v0 + 96);
  v29 = MEMORY[0x277D839B0];
  LOBYTE(v28[0]) = v12;
  (*(v11 + 48))(v28, v1[4], v1[5], v10, v11);
  sub_21BBBC274(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  swift_getKeyPath();
  v30[0] = v0;
  sub_21BE25F1C();

  sub_21BB3A35C(v0 + 56, v30);
  v13 = v31;
  v14 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  (*(v14 + 24))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v15 = v25;
  sub_21BE261BC();

  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FCC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_21BB3D81C(0x74536F5465766173, 0xED0000292865726FLL, v30);
    *(v18 + 12) = 2080;
    v20 = sub_21BBBA200();
    v22 = sub_21BB3D81C(v20, v21, v30);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_21BB35000, v16, v17, "%s KeyStore updated: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v19, -1, -1);
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  return (*(v26 + 8))(v15, v27);
}

uint64_t sub_21BBBBD44()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v32[0] = v0;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BB3A35C(v0 + 56, v29);
  v5 = v30;
  v6 = v31;
  __swift_project_boxed_opaque_existential_1Tm(v29, v30);
  (*(v6 + 32))(v32, *(v1 + 16), *(v1 + 24), v5, v6);
  if (v32[3])
  {
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v27;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v28;
    }

    else
    {
      v9 = 0xF000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    sub_21BBBC274(v32);
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = sub_21BBBE2FC(v8, v9);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v24 - 2) = v1;
  *(&v24 - 1) = v10;
  v29[0] = v1;
  sub_21BE25F0C();

  swift_getKeyPath();
  v29[0] = v1;
  sub_21BE25F1C();

  sub_21BB3A35C(v1 + 56, v29);
  v12 = v30;
  v13 = v31;
  __swift_project_boxed_opaque_existential_1Tm(v29, v30);
  v14 = (*(v13 + 40))(*(v1 + 32), *(v1 + 40), v12, v13) & 1;
  if (v14 == *(v1 + 96))
  {
    *(v1 + 96) = v14;
  }

  else
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    *(&v24 - 2) = v1;
    *(&v24 - 8) = v14;
    v32[0] = v1;
    sub_21BE25F0C();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  sub_21BE261BC();

  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FCC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE565F0, v29);
    *(v18 + 12) = 2080;
    v20 = sub_21BBBA200();
    v22 = sub_21BB3D81C(v20, v21, v29);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_21BB35000, v16, v17, "%s KeyStore refreshed: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v19, -1, -1);
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  return (*(v25 + 8))(v4, v26);
}

unint64_t sub_21BBBC1D0()
{
  result = qword_27CDB59B8;
  if (!qword_27CDB59B8)
  {
    v3 = type metadata accessor for ChecklistUserPreferences(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ChecklistUserPreferences, v3, v0, v1);
    atomic_store(result, &qword_27CDB59B8);
  }

  return result;
}

uint64_t type metadata accessor for ChecklistUserPreferences(uint64_t a1)
{
  result = qword_27CDB59C0;
  if (!qword_27CDB59C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BBBC274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5940, &unk_21BE32B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BBBC2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21BE25D0C();
  sub_21BE25C2C();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  v19 = v3;
  sub_21BBBC1D0();
  sub_21BE25F1C();

  v19 = v3;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  v12 = *(v3 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 48) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_21BBBCA9C(0, *(v12 + 2) + 1, 1, v12);
    *(v3 + 48) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_21BBBCA9C((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[24 * v15];
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  *(v16 + 6) = v11;
  *(v3 + 48) = v12;
  swift_endAccess();
  v19 = v3;
  swift_getKeyPath();
  sub_21BE25F2C();

  return sub_21BBBB83C();
}

uint64_t sub_21BBBC518(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21BBBC1D0();

  sub_21BE25F1C();

  v8 = v2;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  v5 = sub_21BBBE5E4((v2 + 48), a1, a2);

  v7 = *(*(v8 + 48) + 16);
  if (v7 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_21BBBED48(v5, v7, sub_21BBBCA9C, sub_21BBBE788);
    swift_endAccess();
    swift_getKeyPath();
    sub_21BE25F2C();

    return sub_21BBBB83C();
  }

  return result;
}

BOOL sub_21BBBC694(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v6 += 3;
  }

  while ((sub_21BE2995C() & 1) == 0);
  return v7 != 0;
}

uint64_t sub_21BBBC76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_21BBBC1D0();
  sub_21BE25F1C();

  swift_beginAccess();
  v7 = *(v3 + 48);
  v8 = v7 + 48;
  v9 = *(v7 + 16) + 1;
  while (--v9)
  {
    if (*(v8 - 16) != a1 || *(v8 - 8) != a2)
    {
      v8 += 24;
      if ((sub_21BE2995C() & 1) == 0)
      {
        continue;
      }
    }

    sub_21BE25C1C();
    v11 = 0;
    goto LABEL_10;
  }

  v11 = 1;
LABEL_10:
  v12 = sub_21BE25D1C();
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

uint64_t sub_21BBBC8A4(char a1)
{
  if (*(v1 + 96) == (a1 & 1))
  {
    *(v1 + 96) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBBC1D0();
    sub_21BE25F0C();
  }

  return sub_21BBBB83C();
}

char *sub_21BBBC990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
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

char *sub_21BBBCA9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AC0, &qword_21BE33028);
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

char *sub_21BBBCBFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59D8, &qword_21BE32F48);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21BBBCD50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_21BBBCE60(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_21BBBCF94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F0, &qword_21BE32F60);
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

char *sub_21BBBD0A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA0, &qword_21BE33018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD1F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A58, &qword_21BE32FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD32C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21BBBD448(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E0, &unk_21BE32F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD590(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A48, &qword_21BE390A0);
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

char *sub_21BBBD6B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A40, &unk_21BE32FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD7F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A98, &qword_21BE33010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BBBD93C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59D0, &qword_21BE32F38);
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

char *sub_21BBBDA48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A38, &unk_21BE32FA0);
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

char *sub_21BBBDB64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A30, &qword_21BE32F98);
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

char *sub_21BBBDC70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A28, &qword_21BE32F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21BBBDDBC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21BBBDFC0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_21BB3D81C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_21BBBE01C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AE8, &qword_21BE33040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_21BBBE110(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

double sub_21BBBE120(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A08, &qword_21BE32F78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BBBEB98();
  sub_21BE29B4C();
  if (!v1)
  {
    v12 = 0;
    sub_21BE2986C();
    v11 = 1;
    sub_21BE2988C();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

uint64_t sub_21BBBE2FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_21BE26A4C();
  MEMORY[0x28223BE20](v4);
  sub_21BE2578C();
  swift_allocObject();
  sub_21BE2577C();
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA8, &qword_21BE33020);
  sub_21BBBF0A0(a1, a2);
  sub_21BBBEEC8(&qword_27CDB5AC8, sub_21BBBEF40, MEMORY[0x277D83978]);
  sub_21BE2576C();

  sub_21BBBF0B4(a1, a2);
  sub_21BBBEF94(v5, v6);
  return v8;
}

uint64_t sub_21BBBE544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 3)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_21BE2995C() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_21BBBE5E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_21BBBE544(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 24 * result;
    while (v10 < v11)
    {
      v14 = *(v6 + v12 + 56);
      v15 = *(v6 + v12 + 64);
      if (v14 != a2 || v15 != a3)
      {
        result = sub_21BE2995C();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v17 = (v6 + 32 + 24 * v9);
            v18 = v17[1];
            v22 = *v17;
            v19 = v17[2];
            v20 = *(v6 + v12 + 72);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21BD93808(v6);
            }

            v21 = (v6 + 24 * v9);
            v21[4] = v14;
            v21[5] = v15;
            v21[6] = v20;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = (v6 + v12);
            v13[7] = v22;
            v13[8] = v18;
            v13[9] = v19;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 24;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21BBBE788(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBBE920(uint64_t a1)
{
  result = sub_21BE25F5C();
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

uint64_t sub_21BBBEB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21BBBEB48(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21BBBEB98()
{
  result = qword_27CDB5A10;
  if (!qword_27CDB5A10)
  {
    result = swift_getWitnessTable(byte_21BE3310C, &type metadata for DismissedChecklistItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB5A10);
  }

  return result;
}

uint64_t sub_21BBBEBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5940, &unk_21BE32B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBBEC5C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBBED48(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_21BBBEE20()
{
  result = qword_27CDB5AB8;
  if (!qword_27CDB5AB8)
  {
    result = swift_getWitnessTable(byte_21BE32EE8, &type metadata for DismissedChecklistItem, v0, v1);
    atomic_store(result, &qword_27CDB5AB8);
  }

  return result;
}

uint64_t sub_21BBBEE74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21BBBEEC8(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5AA8, &qword_21BE33020);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BBBEF40()
{
  result = qword_27CDB5AD0;
  if (!qword_27CDB5AD0)
  {
    result = swift_getWitnessTable(byte_21BE32F10, &type metadata for DismissedChecklistItem, v0, v1);
    atomic_store(result, &qword_27CDB5AD0);
  }

  return result;
}

uint64_t sub_21BBBEF94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_21BBBEFE8()
{
  result = qword_280BD69C8;
  if (!qword_280BD69C8)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9C00], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_280BD69C8);
  }

  return result;
}

unint64_t sub_21BBBF03C()
{
  result = qword_27CDB5AE0;
  if (!qword_27CDB5AE0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6EF0, &unk_21BE33800);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_27CDB5AE0);
  }

  return result;
}

uint64_t sub_21BBBF0A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21BBBEE74(result, a2);
  }

  return result;
}

uint64_t sub_21BBBF0B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21BBBEF94(result, a2);
  }

  return result;
}

unint64_t sub_21BBBF0E4()
{
  result = qword_27CDB5AF0;
  if (!qword_27CDB5AF0)
  {
    result = swift_getWitnessTable(MEMORY[0x277D837E8], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27CDB5AF0);
  }

  return result;
}

unint64_t sub_21BBBF138()
{
  result = qword_27CDB5AF8;
  if (!qword_27CDB5AF8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D85438], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27CDB5AF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DismissedChecklistItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DismissedChecklistItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21BBBF2E0()
{
  result = qword_27CDB5B08;
  if (!qword_27CDB5B08)
  {
    result = swift_getWitnessTable(byte_21BE330E4, &type metadata for DismissedChecklistItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB5B08);
  }

  return result;
}

unint64_t sub_21BBBF338()
{
  result = qword_27CDB5B10;
  if (!qword_27CDB5B10)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for DismissedChecklistItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB5B10);
  }

  return result;
}

unint64_t sub_21BBBF390()
{
  result = qword_27CDB5B18;
  if (!qword_27CDB5B18)
  {
    result = swift_getWitnessTable(aF_8, &type metadata for DismissedChecklistItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB5B18);
  }

  return result;
}

unint64_t sub_21BBBF3E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_21BBBF50C(uint64_t a1)
{
  sub_21BE28CBC();
  result = sub_21BE26CCC();
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

uint64_t sub_21BBBF5B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BBBF678(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

void sub_21BBBF738()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  sub_21BE28CBC();
  v3 = sub_21BE26CCC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[*((*v1 & *v0) + 0x100)];
}

id sub_21BBBF808()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  [*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x100)) removeAccountChangeObserver_];
  v4 = type metadata accessor for ICloudDependentChecklistItemProvider(0, *((v2 & v1) + 0xE8), *((v2 & v1) + 0xF0), v3);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_21BBBF8D8(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0xF8);
  sub_21BE28CBC();
  v4 = sub_21BE26CCC();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((*v2 & *a1) + 0x100)];
}

uint64_t sub_21BBBF9AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_21BE28DAC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_21BE28D7C();
  v5 = v0;
  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_21BBA932C(0, 0, v3, &unk_21BE33200, v7);
}

uint64_t sub_21BBBFAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *MEMORY[0x277D85000];
  v4[2] = sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v7 = swift_task_alloc();
  v4[4] = v7;
  v9 = type metadata accessor for ICloudDependentChecklistItemProvider(0, *((v6 & v5) + 0xE8), *((v6 & v5) + 0xF0), v8);
  WitnessTable = swift_getWitnessTable(aI_8, v9);
  *v7 = v4;
  v7[1] = sub_21BBAFDA8;

  return sub_21BBE6BBC(v9, WitnessTable);
}

void sub_21BBBFBF0(void *a1)
{
  v1 = a1;
  sub_21BBBF9AC();
}

uint64_t sub_21BBBFC58(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable(byte_21BE34830);
  result = swift_getWitnessTable(byte_21BE34878, a2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBBFCB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BBBFAD0(a1, v4, v5, v6);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BBBFD8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BBBFDD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BBBFE50()
{
  v0 = sub_21BE278CC();
  __swift_allocate_value_buffer(v0, qword_27CDB5BA8);
  __swift_project_value_buffer(v0, qword_27CDB5BA8);
  return sub_21BE278AC();
}

uint64_t sub_21BBBFE9C()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v10, &qword_27CDB5C50, &qword_21BE33490);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21BBBFFF8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = swift_allocBox();
  sub_21BBBFE9C();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE2864C();
  v4 = *(v1 + 9);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  if ((v4 & 0x100) != 0)
  {
    v23 = sub_21BE2599C();
    v25 = v24;

    v26 = [v6 bundleForClass_];
    v27 = sub_21BE2599C();
    v29 = v28;

    *&v57 = v27;
    *(&v57 + 1) = v29;
    v30 = sub_21BE28B8C();
    v32 = v31;
    v33 = sub_21BBC77E8();
    v54 = &type metadata for FamilyMessageItemDataItem;
    v55 = sub_21BBC7914();
    v56 = 0;
    v53 = v4;
    v43 = v23;
    v44 = v25;
    v45 = 0;
    v46 = 0;
    v47 = v30;
    v48 = v32;
    v49 = v33;
    v50 = sub_21BBC78E4;
    v51 = v3;
    v52 = 0;
    sub_21BBC7A18(&v43, v41);
    v42 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();

    sub_21BE2784C();
    sub_21BBC7A74(&v43);
  }

  else
  {
    v8 = sub_21BE2599C();
    v39 = v9;
    v40 = v8;

    v10 = [v6 &selRef:ObjCClassFromMetadata :0x800000021BE567E0 launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    v11 = sub_21BE2599C();
    v13 = v12;

    *&v57 = v11;
    *(&v57 + 1) = v13;
    v14 = sub_21BE28B8C();
    v16 = v15;
    v17 = sub_21BBC77E8();
    v18 = v3;

    v19 = [v6 bundleForClass_];
    v20 = sub_21BE2599C();
    v22 = v21;

    v54 = &type metadata for FamilyMessageItemDataItem;
    v55 = sub_21BBC7914();
    v56 = 0;
    v53 = v4;
    v43 = v40;
    v44 = v39;
    v45 = v14;
    v46 = v16;
    v47 = v17;
    v48 = sub_21BBC78E4;
    v49 = v18;
    v50 = v20;
    v51 = v22;
    v52 = 0;
    sub_21BBC7968(&v43, v41);
    v42 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    sub_21BBC79C4(&v43);
  }

  v34 = v64;
  *(a1 + 96) = v63;
  *(a1 + 112) = v34;
  *(a1 + 128) = v65;
  v35 = v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v35;
  v36 = v62;
  *(a1 + 64) = v61;
  *(a1 + 80) = v36;
  v37 = v58;
  *a1 = v57;
  *(a1 + 16) = v37;
}

uint64_t sub_21BBC04C8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_21BE2862C();
  (*(v3 + 8))(v5, v2);
  v7 = v10[3];
  swift_beginAccess();
  if (*(v7 + 26) == 1)
  {
    *(v7 + 26) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v7;
    LOBYTE(v10[-1]) = 1;
    v10[2] = v7;
    sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BBC06C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC8, &qword_21BE33388);
  MEMORY[0x28223BE20](v37);
  v36[0] = v36 - v10;
  v11 = swift_allocBox();
  v13 = v12;
  sub_21BBBFE9C();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE2864C();
  sub_21BBBFFF8(v40);
  (*(v4 + 16))(v7, v13, v3);
  sub_21BE2863C();
  v14 = *(v4 + 8);
  v14(v7, v3);
  swift_getKeyPath();
  sub_21BE2865C();

  v14(v9, v3);
  v15 = swift_allocObject();
  v16 = v1[1];
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  v17 = v1[3];
  *(v15 + 48) = v1[2];
  *(v15 + 64) = v17;
  *(v15 + 80) = v11;
  sub_21BBC2410(v1, v39);
  v36[1] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BD0, &qword_21BE3E310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BD8, &qword_21BE333C0);
  sub_21BBC2448();
  sub_21BB3B038(&qword_27CDB5BF8, &qword_27CDB5BD8, &qword_21BE333C0, MEMORY[0x277CDDA18]);
  v18 = v36[0];
  sub_21BE2812C();

  sub_21BB3A4CC(v40, &qword_27CDB5BD0, &qword_21BE3E310);
  v19 = swift_allocObject();
  v20 = v1[1];
  *(v19 + 1) = *v1;
  *(v19 + 2) = v20;
  v21 = v1[3];
  *(v19 + 3) = v1[2];
  *(v19 + 4) = v21;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C00, &qword_21BE333C8) + 36);
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_21BBC2410(v1, v40);
  v24 = [ObjCClassFromMetadata defaultCenter];
  if (qword_280BD7030 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v25 = type metadata accessor for ActiveStateChange(0);
  v26 = (v18 + v22 + *(v25 + 20));
  *v26 = sub_21BBC257C;
  v26[1] = v19;
  v27 = (v18 + v22 + *(v25 + 24));
  *v27 = 0xD000000000000030;
  v27[1] = 0x800000021BE56780;
  v28 = swift_allocObject();
  v29 = v2[1];
  *(v28 + 1) = *v2;
  *(v28 + 2) = v29;
  v30 = v2[3];
  *(v28 + 3) = v2[2];
  *(v28 + 4) = v30;
  v31 = (v18 + *(v37 + 36));
  *v31 = sub_21BBC7100;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  v39[0] = v2[3];
  sub_21BBC2410(v2, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  LOBYTE(v39[0]) = v40[0];
  v32 = swift_allocObject();
  v33 = v2[1];
  v32[1] = *v2;
  v32[2] = v33;
  v34 = v2[3];
  v32[3] = v2[2];
  v32[4] = v34;
  sub_21BBC2410(v2, v40);
  sub_21BBC7140();
  sub_21BE281BC();

  sub_21BB3A4CC(v18, &qword_27CDB5BC8, &qword_21BE33388);
}

uint64_t sub_21BBC0CAC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C20, &qword_21BE33458);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5C28, &unk_21BE33460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BBC75DC();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21BE271BC();
}

uint64_t sub_21BBC0E28@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a3;
  v19[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C28, &unk_21BE33460);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v23 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v8 = v20;
  v9 = v21;
  v10 = v22;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyCircleStore(0);
  sub_21BBC7324(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);

  *&v23 = sub_21BE270CC();
  *(&v23 + 1) = v11;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v12 = swift_allocObject();
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v14 = a1[3];
  v12[3] = a1[2];
  v12[4] = v14;
  sub_21BBC2410(a1, &v20);
  v15 = sub_21BBC75DC();
  sub_21BE27F1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6650, &qword_21BE34EA0);
  v20 = &type metadata for ListOfMembers;
  v21 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  v17 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  v20 = v16;
  v21 = v17;
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21BBC1148(uint64_t a1)
{
  v1[5] = a1;
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_21BBC11E0, v3, v2);
}

uint64_t sub_21BBC11E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = *(v0 + 32);
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_21BBC134C;

    return MEMORY[0x28215E528](1);
  }

  else
  {

    *(v0 + 16) = *(*(v0 + 40) + 48);
    *(v0 + 88) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_21BBC134C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBC148C, v4, v3);
}

uint64_t sub_21BBC148C()
{

  *(v0 + 16) = *(*(v0 + 40) + 48);
  *(v0 + 88) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBC1528(uint64_t a1)
{
  v1 = sub_21BE278CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6660, &qword_21BE33470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  if (qword_27CDB4E28 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_27CDB5BA8);
  (*(v2 + 16))(v4, v9, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  sub_21BE26EDC();
  v10 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF02AD0](v8, v5, v10);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21BBC1794(uint64_t a1)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();

  return sub_21BE2845C();
}

uint64_t sub_21BBC1898(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 26))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 0;
    v9[2] = v6;
    sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 26) = 0;
  }
}

uint64_t sub_21BBC1A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_21BE28D7C();
  v4[5] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_21BBC1B30, v6, v5);
}

uint64_t sub_21BBC1B30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_21BBC1C74;

    return MEMORY[0x28215E528](0);
  }

  else
  {

    **(v0 + 24) = *(v0 + 64) == 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_21BBC1C74()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21BBC83AC, v4, v3);
}

uint64_t sub_21BBC1DB4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  v8 = sub_21BE28DAC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21BE28D7C();
  sub_21BBC2410(a1, v15);
  v9 = sub_21BE28D6C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = a1[3];
  *(v10 + 64) = a1[2];
  *(v10 + 80) = v13;
  sub_21BBA9018(0, 0, v7, a3, v10);
}

uint64_t sub_21BBC1EE8(unsigned __int8 *a1, unsigned __int8 *a2, _OWORD *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16[-v8];
  if (*a1 != *a2)
  {
    v10 = sub_21BE28DAC();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_21BE28D7C();
    sub_21BBC2410(a3, v16);
    v11 = sub_21BE28D6C();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    v14 = a3[1];
    *(v12 + 32) = *a3;
    *(v12 + 48) = v14;
    v15 = a3[3];
    *(v12 + 64) = a3[2];
    *(v12 + 80) = v15;
    sub_21BBA9018(0, 0, v9, &unk_21BE333E8, v12);
  }

  return result;
}

uint64_t sub_21BBC2038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_21BE28D7C();
  v4[5] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_21BBC20D0, v6, v5);
}

uint64_t sub_21BBC20D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_21BBC2214;

    return MEMORY[0x28215E528](0);
  }

  else
  {

    **(v0 + 24) = *(v0 + 64) == 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_21BBC2214()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21BBC2354, v4, v3);
}

uint64_t sub_21BBC2354()
{

  **(v0 + 24) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21BBC2448()
{
  result = qword_27CDB5BE0;
  if (!qword_27CDB5BE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BD0, &qword_21BE3E310);
    v4[0] = sub_21BBC24D4();
    v4[1] = sub_21BBC2528();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB5BE0);
  }

  return result;
}

unint64_t sub_21BBC24D4()
{
  result = qword_27CDB5BE8;
  if (!qword_27CDB5BE8)
  {
    result = swift_getWitnessTable(byte_21BE4E310, &type metadata for ChecklistAlreadySetupButtonCell, v0, v1);
    atomic_store(result, &qword_27CDB5BE8);
  }

  return result;
}

unint64_t sub_21BBC2528()
{
  result = qword_27CDB5BF0;
  if (!qword_27CDB5BF0)
  {
    result = swift_getWitnessTable(byte_21BE4E2C0, &type metadata for ChecklistNotSetupButtonCell, v0, v1);
    atomic_store(result, &qword_27CDB5BF0);
  }

  return result;
}

uint64_t sub_21BBC25B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C70, &unk_21BE3E470);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C78, &qword_21BE33540);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C80, &qword_21BE33548);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C88, &qword_21BE33550);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v58 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  *v14 = sub_21BE2770C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C90, &qword_21BE33558);
  sub_21BBC2C28(&v14[*(v20 + 44)]);
  sub_21BB3B038(&qword_27CDB5C98, &qword_27CDB5C80, &qword_21BE33548, MEMORY[0x277CE1198]);
  v54 = v19;
  sub_21BE285EC();
  v67 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CA0, &qword_21BE33560);
  sub_21BBC7BA4();
  sub_21BE2860C();
  String.rebrand.getter(0xD000000000000020, 0x800000021BE568C0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_21BE2599C();
  v25 = v24;

  v68 = v23;
  v69 = v25;
  sub_21BB41FA4();
  v26 = sub_21BE27DBC();
  v28 = v27;
  LOBYTE(v22) = v29;
  sub_21BE27CCC();
  v30 = sub_21BE27D9C();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_21BBC7C7C(v26, v28, v22 & 1);

  v68 = v30;
  v69 = v32;
  v70 = v34 & 1;
  v71 = v36;
  v37 = v62;
  sub_21BE2861C();
  v38 = v58;
  v39 = *(v59 + 16);
  v40 = v60;
  v39(v58, v19, v60);
  v53 = *(v63 + 16);
  v41 = v61;
  v53(v61, v57, v64);
  v42 = *(v66 + 16);
  v43 = v55;
  v42(v55, v37, v65);
  v44 = v56;
  v39(v56, v38, v40);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CB8, &unk_21BE33568);
  v46 = v64;
  v53(&v44[*(v45 + 48)], v41, v64);
  v47 = v65;
  v42(&v44[*(v45 + 64)], v43, v65);
  v48 = *(v66 + 8);
  v48(v62, v47);
  v49 = *(v63 + 8);
  v49(v57, v46);
  v50 = v60;
  v51 = *(v59 + 8);
  v51(v54, v60);
  v48(v43, v47);
  v49(v61, v46);
  return (v51)(v58, v50);
}

uint64_t sub_21BBC2C28@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0);
  v1 = MEMORY[0x28223BE20](v98);
  v100 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v99 = &v85 - v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CF0, &qword_21BE335B0);
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v85 = &v85 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CF8, &qword_21BE335B8);
  MEMORY[0x28223BE20](v87);
  v6 = &v85 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D00, &qword_21BE335C0);
  MEMORY[0x28223BE20](v86);
  v8 = &v85 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D08, &qword_21BE335C8);
  MEMORY[0x28223BE20](v94);
  v10 = &v85 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D10, &qword_21BE335D0);
  MEMORY[0x28223BE20](v89);
  v96 = &v85 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D18, &qword_21BE335D8);
  v12 = MEMORY[0x28223BE20](v95);
  v97 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v14);
  v102 = &v85 - v17;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = objc_opt_self();
  v92 = ObjCClassFromMetadata;
  v19 = [v88 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  *&v105 = v20;
  *(&v105 + 1) = v22;
  v90 = sub_21BB41FA4();
  v23 = sub_21BE27DBC();
  v25 = v24;
  LOBYTE(v22) = v26;
  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = sub_21BE27C0C();
  v31 = swift_getKeyPath();
  v32 = v22 & 1;
  v33 = v85;
  LOBYTE(v103) = v32;
  *&v105 = v23;
  *(&v105 + 1) = v25;
  LOBYTE(v106) = v32;
  *(&v106 + 1) = v28;
  *&v107 = KeyPath;
  BYTE8(v107) = 1;
  *&v108 = v31;
  *(&v108 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D20, &qword_21BE33640);
  sub_21BBC7CF0();
  sub_21BE280BC();
  v112[0] = v105;
  v112[1] = v106;
  v112[2] = v107;
  v112[3] = v108;
  sub_21BB3A4CC(v112, &qword_27CDB5D20, &qword_21BE33640);
  LOBYTE(v25) = sub_21BE27B8C();
  v34 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v25)
  {
    v34 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  (*(v91 + 32))(v6, v33, v93);
  v43 = &v6[*(v87 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = &v8[*(v86 + 36)];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
  v45 = *(v93 + 28);
  v46 = sub_21BE27D7C();
  v47 = *(v46 - 8);
  v87 = *(v47 + 56);
  v91 = v47 + 56;
  (v87)(v44 + v45, 1, 1, v46);
  *v44 = swift_getKeyPath();
  sub_21BBB7D84(v6, v8, &qword_27CDB5CF8, &qword_21BE335B8);
  v48 = sub_21BE2832C();
  v49 = swift_getKeyPath();
  sub_21BBB7D84(v8, v10, &qword_27CDB5D00, &qword_21BE335C0);
  v50 = &v10[*(v94 + 36)];
  *v50 = v49;
  v50[1] = v48;
  v51 = v96;
  sub_21BBB7D84(v10, v96, &qword_27CDB5D08, &qword_21BE335C8);
  *(v51 + *(v89 + 36)) = 256;
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BBB7D84(v51, v16, &qword_27CDB5D10, &qword_21BE335D0);
  v52 = &v16[*(v95 + 36)];
  v53 = v110;
  *(v52 + 4) = v109;
  *(v52 + 5) = v53;
  *(v52 + 6) = v111;
  v54 = v106;
  *v52 = v105;
  *(v52 + 1) = v54;
  v55 = v108;
  *(v52 + 2) = v107;
  *(v52 + 3) = v55;
  sub_21BBB7D84(v16, v102, &qword_27CDB5D18, &qword_21BE335D8);
  v56 = [v88 bundleForClass_];
  v57 = sub_21BE2599C();
  v59 = v58;

  v103 = v57;
  v104 = v59;
  v60 = sub_21BE27DBC();
  v62 = v61;
  LOBYTE(v59) = v63;
  sub_21BE27CCC();
  v64 = sub_21BE27D9C();
  v66 = v65;
  LOBYTE(v51) = v67;

  sub_21BBC7C7C(v60, v62, v59 & 1);

  sub_21BE2832C();
  v68 = sub_21BE27D4C();
  v70 = v69;
  v72 = v71;
  v74 = v73;

  sub_21BBC7C7C(v64, v66, v51 & 1);

  v75 = v99;
  v76 = &v99[*(v98 + 36)];
  (v87)(v76 + *(v93 + 28), 1, 1, v46);
  *v76 = swift_getKeyPath();
  *v75 = v68;
  *(v75 + 8) = v70;
  *(v75 + 16) = v72 & 1;
  *(v75 + 24) = v74;
  v77 = v102;
  v78 = v97;
  sub_21BBA3854(v102, v97, &qword_27CDB5D18, &qword_21BE335D8);
  v79 = v100;
  sub_21BBA3854(v75, v100, &qword_27CDB5CE8, &unk_21BE363C0);
  v80 = v101;
  sub_21BBA3854(v78, v101, &qword_27CDB5D18, &qword_21BE335D8);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D58, &qword_21BE336C8);
  v82 = v80 + v81[12];
  *v82 = 0;
  *(v82 + 8) = 1;
  sub_21BBA3854(v79, v80 + v81[16], &qword_27CDB5CE8, &unk_21BE363C0);
  v83 = v80 + v81[20];
  *v83 = 0;
  *(v83 + 8) = 1;
  sub_21BB3A4CC(v75, &qword_27CDB5CE8, &unk_21BE363C0);
  sub_21BB3A4CC(v77, &qword_27CDB5D18, &qword_21BE335D8);
  sub_21BB3A4CC(v79, &qword_27CDB5CE8, &unk_21BE363C0);
  return sub_21BB3A4CC(v78, &qword_27CDB5D18, &qword_21BE335D8);
}

uint64_t sub_21BBC36D0(__int128 *a1)
{
  v9 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v7[0])
  {
    v2 = [v7[0] members];

    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v3 = sub_21BE28C3C();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v7[2] = v3;
  swift_getKeyPath();
  v8 = *(a1 + 2);
  v4 = swift_allocObject();
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  sub_21BBA3854(&v9, v7, &qword_27CDB5CC0, &unk_21BE33590);
  sub_21BBC7C94(&v8, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190, MEMORY[0x277D83980]);
  sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268, MEMORY[0x277D85378]);
  sub_21BBC7C28();
  return sub_21BE285BC();
}

__n128 sub_21BBC38F4@<Q0>(void **a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a2[1];
  LOBYTE(v10) = a2[2].n128_u8[0];
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v5 = sub_21BE291BC();
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  sub_21BE283EC();
  sub_21BE283EC();
  sub_21BE283EC();
  type metadata accessor for FamilyPictureStore(0);
  sub_21BBC7324(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore, protocol conformance descriptor for AsyncStore<A>);
  v6 = sub_21BE270CC();
  *a3 = v4;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 25) = v5 & 1;
  *(a3 + 26) = v14;
  *(a3 + 30) = v15;
  *(a3 + 32) = v9.n128_u8[0];
  *(a3 + 33) = v9.n128_u32[0];
  *(a3 + 36) = *(v9.n128_u32 + 3);
  *(a3 + 40) = v9.n128_u64[1];
  *(a3 + 48) = v9.n128_u8[0];
  *(a3 + 52) = 0;
  *(a3 + 49) = 0;
  *(a3 + 56) = v9.n128_u64[1];
  result = v9;
  *(a3 + 64) = v9;
  *(a3 + 80) = v10;
  *(a3 + 88) = v6;
  *(a3 + 96) = v8;
  return result;
}

void sub_21BBC3AF8()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_27CDB4F00 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_27CDB7EA8 object:0 userInfo:0 deliverImmediately:1];
}

uint64_t sub_21BBC3BA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C58, &qword_21BE33528);
  sub_21BB3B038(&qword_27CDB5C60, &qword_27CDB5C58, &qword_21BE33528, MEMORY[0x277CE14C0]);
  sub_21BE27D1C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C68, &unk_21BE33530);
  v3 = (a1 + *(result + 36));
  *v3 = 0;
  v3[1] = 0;
  v3[2] = sub_21BBC3AF8;
  v3[3] = 0;
  return result;
}

uint64_t sub_21BBC3C8C()
{
  v1 = *v0;
  v2 = sub_21BE291CC();
  if (v2)
  {
    if (*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
      sub_21BB3B038(&qword_27CDB5AE0, &qword_27CDB6EF0, &unk_21BE33800, MEMORY[0x277D83958]);
      v3 = sub_21BE2897C();
      v5 = v4;

      if (sub_21BE291BC())
      {
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v7 = [objc_opt_self() bundleForClass_];
        sub_21BE2599C();
      }

      else
      {
        String.rebrand.getter(0xD00000000000002CLL, 0x800000021BE569A0);
        type metadata accessor for ConfirmChildAgeViewModel();
        v14 = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        sub_21BE2599C();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_21BE32770;
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_21BBBEFE8();
      *(v8 + 32) = v3;
      *(v8 + 40) = v5;
      v9 = sub_21BE28A2C();

      return v9;
    }
  }

  if ([v1 isMe] && (sub_21BE2919C() & 1) == 0)
  {
    String.rebrand.getter(0xD00000000000001DLL, 0x800000021BE56980);
    type metadata accessor for ConfirmChildAgeViewModel();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v18 = sub_21BE2599C();

    return v18;
  }

  else
  {
    sub_21BE2919C();
    type metadata accessor for ConfirmChildAgeViewModel();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_21BE2599C();

    return v12;
  }
}

uint64_t sub_21BBC40CC()
{
  v1 = [*v0 appleID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE28A0C();
  }

  else
  {
    String.rebrand.getter(0xD000000000000020, 0x800000021BE56AD0);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_21BE2599C();
  }

  return v3;
}

uint64_t sub_21BBC41C8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  v2 = *v0;
  v3 = [v2 contact];
  if (v3)
  {
    v4 = 1000;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
    v6 = [v2 firstName];
    [v5 setFirstName_];

    v7 = [v2 lastName];
    [v5 setLastName_];

    v3 = v5;
    v4 = 0;
  }

  v8 = v3;
  [v1 setStyle_];
  v9 = [v1 stringFromContact_];

  if (v9)
  {
    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = sub_21BB41E7C(v10, v12);
  v15 = v14;

  if (v15)
  {
  }

  else
  {
    v16 = [v2 appleID];
    if (v16)
    {
      v17 = v16;
      v13 = sub_21BE28A0C();
    }

    else
    {

      return 0;
    }
  }

  return v13;
}

uint64_t sub_21BBC43A4()
{
  v1 = *v0;
  v2 = [v1 shortName];
  if (v2 || (v2 = [v1 firstName]) != 0)
  {
    v3 = v2;
    v4 = sub_21BE28A0C();
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_21BE2599C();
  }

  v6 = v4;
  v7 = v5;

  if (sub_21BE291BC())
  {
    String.rebrand.getter(0xD00000000000002ALL, 0x800000021BE56BA0);
    type metadata accessor for ConfirmChildAgeViewModel();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21BE32770;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21BBBEFE8();
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
  }

  else
  {
    sub_21BE2919C();
    type metadata accessor for ConfirmChildAgeViewModel();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21BE33260;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_21BBBEFE8();
    *(v13 + 64) = v15;
    *(v13 + 32) = v6;
    *(v13 + 40) = v7;
    v16 = sub_21BBC40CC();
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 72) = v16;
    *(v13 + 80) = v17;
  }

  v18 = sub_21BE28A2C();

  return v18;
}

uint64_t sub_21BBC46D8()
{
  v1[5] = v0;
  v2 = sub_21BE26A4C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21BBC47D8, v4, v3);
}

uint64_t sub_21BBC47D8(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Signin started", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[5];

  v9 = *(v7 + 8);
  v1[13] = v9;
  v9(v5, v6);
  v1[14] = *v8;
  v10 = swift_task_alloc();
  v1[15] = v10;
  *v10 = v1;
  v10[1] = sub_21BBC4920;

  return MEMORY[0x28215E5C8]();
}

uint64_t sub_21BBC4920()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_21BBC4BC4;
  }

  else
  {
    v5 = sub_21BBC4A5C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BBC4A5C()
{

  sub_21BE2614C();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21BB35000, v1, v2, "Signin complete", v3, 2u);
    MEMORY[0x21CF05C50](v3, -1, -1);
  }

  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);

  v4(v5, v6);
  if (sub_21BE291BC())
  {
    v7 = *(v0 + 40);
    v8 = *(v7 + 24);
    *(v0 + 16) = *(v7 + 8);
    *(v0 + 32) = v8;
    *(v0 + 33) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BBC4BC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_21BBC4C3C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D78, &qword_21BE337A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D80, &qword_21BE337A8);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v58 = (&v49 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D88, &qword_21BE337B0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v64 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D90, &qword_21BE337B8);
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D98, &qword_21BE337C0);
  v65 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v61 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v49 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DA0, &qword_21BE337C8);
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  if (*(v2 + 25))
  {
    v23 = sub_21BE2771C();
    v78 = 1;
    sub_21BBC56B0(v2, &v69);
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v82 = v72;
    v87[0] = v69;
    v87[1] = v70;
    v87[2] = v71;
    v87[3] = v72;
    v87[4] = v73;
    v87[5] = v74;
    v87[6] = v75;
    v88 = v76;
    sub_21BBA3854(&v79, &v68, &qword_27CDB5DD8, &qword_21BE337E8);
    sub_21BB3A4CC(v87, &qword_27CDB5DD8, &qword_21BE337E8);
    *(&v77[4] + 7) = v83;
    *(&v77[5] + 7) = v84;
    *(&v77[6] + 7) = v85;
    *(&v77[7] + 7) = v86;
    *(v77 + 7) = v79;
    *(&v77[1] + 7) = v80;
    *(&v77[2] + 7) = v81;
    *(&v77[3] + 7) = v82;
    v24 = v77[5];
    *(v22 + 81) = v77[4];
    *(v22 + 97) = v24;
    *(v22 + 113) = v77[6];
    *(v22 + 8) = *(&v77[6] + 15);
    v25 = v77[1];
    *(v22 + 17) = v77[0];
    *(v22 + 33) = v25;
    v26 = v77[3];
    *(v22 + 49) = v77[2];
    v27 = v78;
    *v22 = v23;
    *(v22 + 1) = 0;
    v22[16] = v27;
    *(v22 + 65) = v26;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DA8, &qword_21BE337D0);
    sub_21BB3B038(&qword_27CDB5DB0, &qword_27CDB5DA8, &qword_21BE337D0, MEMORY[0x277CE1198]);
    sub_21BB3B038(&qword_27CDB5DC8, &qword_27CDB5D78, &qword_21BE337A0, MEMORY[0x277CE14C0]);
    return sub_21BE2784C();
  }

  else
  {
    v53 = v16;
    v54 = v20;
    v55 = v6;
    v56 = v4;
    v57 = a1;
    v29 = swift_allocObject();
    v50 = &v49;
    *(v29 + 112) = *(v2 + 96);
    v30 = *(v2 + 80);
    *(v29 + 80) = *(v2 + 64);
    *(v29 + 96) = v30;
    v31 = *(v2 + 16);
    *(v29 + 16) = *v2;
    *(v29 + 32) = v31;
    v32 = *(v2 + 48);
    *(v29 + 48) = *(v2 + 32);
    *(v29 + 64) = v32;
    MEMORY[0x28223BE20](v29);
    *(&v49 - 2) = v2;
    sub_21BBC8070(v2, v87);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DA8, &qword_21BE337D0);
    v51 = sub_21BB3B038(&qword_27CDB5DB0, &qword_27CDB5DA8, &qword_21BE337D0, MEMORY[0x277CE1198]);
    v52 = v33;
    sub_21BE2843C();
    v79 = *(v2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    v34 = sub_21BE2841C();
    v50 = &v49;
    MEMORY[0x28223BE20](v34);
    *(&v49 - 2) = v2;
    sub_21BB3B038(&qword_27CDB5DB8, &qword_27CDB5D90, &qword_21BE337B8, MEMORY[0x277CDF028]);
    v35 = v60;
    sub_21BE280DC();

    (*(v59 + 8))(v15, v35);
    v87[0] = *(v2 + 32);
    sub_21BE283FC();
    v36 = 1;
    if (v79 == 1)
    {
      v37 = sub_21BE275DC();
      v38 = v58;
      *v58 = v37;
      *(v38 + 8) = 0;
      *(v38 + 16) = 1;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DD0, &qword_21BE337E0);
      sub_21BBC5C04((v38 + *(v39 + 44)));
      sub_21BBC80B0(v38, v66);
      v36 = 0;
    }

    v40 = v66;
    (*(v62 + 56))(v66, v36, 1, v63);
    v41 = v65;
    v42 = *(v65 + 16);
    v43 = v61;
    v44 = v53;
    v42(v61, v67, v53);
    v45 = v64;
    sub_21BBA3854(v40, v64, &qword_27CDB5D88, &qword_21BE337B0);
    v46 = v55;
    v42(v55, v43, v44);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DC0, &qword_21BE337D8);
    sub_21BBA3854(v45, v46 + *(v47 + 48), &qword_27CDB5D88, &qword_21BE337B0);
    sub_21BB3A4CC(v45, &qword_27CDB5D88, &qword_21BE337B0);
    v48 = *(v41 + 8);
    v48(v43, v44);
    sub_21BBA3854(v46, v22, &qword_27CDB5D78, &qword_21BE337A0);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDB5DC8, &qword_27CDB5D78, &qword_21BE337A0, MEMORY[0x277CE14C0]);
    sub_21BE2784C();
    sub_21BB3A4CC(v46, &qword_27CDB5D78, &qword_21BE337A0);
    sub_21BB3A4CC(v40, &qword_27CDB5D88, &qword_21BE337B0);
    return (v48)(v67, v44);
  }
}

double sub_21BBC554C@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2771C();
  v20 = 1;
  sub_21BBC56B0(a1, &v11);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v29[6] = v17;
  v30 = v18;
  sub_21BBA3854(&v21, &v10, &qword_27CDB5DD8, &qword_21BE337E8);
  sub_21BB3A4CC(v29, &qword_27CDB5DD8, &qword_21BE337E8);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27;
  *(&v19[7] + 7) = v28;
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a2 + 81) = v19[4];
  *(a2 + 97) = v5;
  *(a2 + 113) = v19[6];
  *(a2 + 128) = *(&v19[6] + 15);
  v6 = v19[1];
  *(a2 + 17) = v19[0];
  *(a2 + 33) = v6;
  result = *&v19[2];
  v8 = v19[3];
  *(a2 + 49) = v19[2];
  v9 = v20;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 65) = v8;
  return result;
}

uint64_t sub_21BBC56B0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v26 = sub_21BE275DC();
  sub_21BBC5948(a1, &v35);
  v28 = v35;
  v29 = *v36;
  v30 = *&v36[16];
  v31 = *&v36[32];
  v32[0] = v35;
  v32[1] = *v36;
  v32[2] = *&v36[16];
  v32[3] = *&v36[32];
  sub_21BBA3854(&v28, &v33, &qword_27CDB5DE0, &qword_21BE337F0);
  sub_21BB3A4CC(v32, &qword_27CDB5DE0, &qword_21BE337F0);
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v35 = sub_21BBC3C8C();
  *(&v35 + 1) = v4;
  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  v9 = v8;
  sub_21BE2833C();
  v10 = sub_21BE27D4C();
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v5, v7, v9 & 1);

  sub_21BE27CBC();
  v15 = sub_21BE27D9C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_21BBC7C7C(v10, v12, v14 & 1);

  v33 = v26;
  v34[0] = 0;
  *&v34[1] = *v27;
  *&v34[49] = *&v27[48];
  *&v34[33] = *&v27[32];
  *&v34[17] = *&v27[16];
  *&v34[64] = *&v27[63];
  v22 = *v34;
  *a2 = v26;
  *(a2 + 16) = v22;
  v23 = *&v34[16];
  v24 = *&v34[48];
  *(a2 + 48) = *&v34[32];
  *(a2 + 64) = v24;
  *(a2 + 32) = v23;
  *(a2 + 80) = *&v27[63];
  *(a2 + 88) = v15;
  *(a2 + 96) = v17;
  *(a2 + 104) = v19 & 1;
  *(a2 + 112) = v21;
  sub_21BBA3854(&v33, &v35, &qword_27CDB5DE8, &qword_21BE337F8);
  sub_21BBA4A38(v15, v17, v19 & 1);

  sub_21BBC7C7C(v15, v17, v19 & 1);

  v35 = v26;
  v36[0] = 0;
  *&v36[17] = *&v27[16];
  *&v36[33] = *&v27[32];
  *v37 = *&v27[48];
  *&v37[15] = *&v27[63];
  *&v36[1] = *v27;
  return sub_21BB3A4CC(&v35, &qword_27CDB5DE8, &qword_21BE337F8);
}

uint64_t sub_21BBC5948@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CDB4E58 != -1)
  {
    swift_once();
  }

  if (byte_27CDD41B0)
  {
    v4 = 48.0;
  }

  else
  {
    v4 = 46.0;
  }

  v5 = *a1;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v24 = v5;
  v22 = sub_21BE2727C();
  v23 = v6;
  sub_21BBC41C8();
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  v11 = v10;
  sub_21BE2832C();
  v12 = sub_21BE27D4C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_21BBC7C7C(v7, v9, v11 & 1);

  *a2 = v4;
  *(a2 + 8) = v24;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 & 1;
  *(a2 + 56) = v18;
  v19 = v22;
  v20 = v24;
  sub_21BBA4A38(v12, v14, v16 & 1);

  sub_21BBC7C7C(v12, v14, v16 & 1);
}

uint64_t sub_21BBC5B44@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E10, &qword_21BE33868);
  sub_21BE283FC();
  sub_21BB41E7C(v7, v8);
  v5 = v4;

  if (v5)
  {

    return sub_21BBC6AA0(a2);
  }

  else if ([*a1 isMe])
  {
    return sub_21BBC6010(a2);
  }

  else
  {
    return sub_21BBC6DB8(a2);
  }
}

uint64_t sub_21BBC5C04@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810) - 8;
  v1 = MEMORY[0x28223BE20](v38);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v37 - v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  *&v41 = v7;
  *(&v41 + 1) = v9;
  sub_21BB41FA4();
  v10 = sub_21BE27DBC();
  v12 = v11;
  LOBYTE(v9) = v13;
  sub_21BE2833C();
  v14 = sub_21BE27D4C();
  v16 = v15;
  v18 = v17;

  sub_21BBC7C7C(v10, v12, v9 & 1);

  sub_21BE27CBC();
  v19 = sub_21BE27D9C();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v14, v16, v18 & 1);

  sub_21BE26EEC();
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
  v26 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v28 = *MEMORY[0x277CDF438];
  v29 = sub_21BE26E7C();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  sub_21BE286BC();
  sub_21BE26F2C();
  v30 = v39;
  v31 = &v4[*(v38 + 44)];
  v32 = v42;
  *v31 = v41;
  *(v31 + 1) = v32;
  *(v31 + 2) = v43;
  sub_21BBA3854(v4, v30, &qword_27CDB5DF0, &unk_21BE33810);
  v33 = v40;
  *v40 = v19;
  v33[1] = v21;
  *(v33 + 16) = v23 & 1;
  v33[3] = v25;
  v33[4] = 0;
  *(v33 + 40) = 1;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E08, &qword_21BE33860);
  sub_21BBA3854(v30, v34 + *(v35 + 64), &qword_27CDB5DF0, &unk_21BE33810);
  sub_21BBA4A38(v19, v21, v23 & 1);

  sub_21BB3A4CC(v4, &qword_27CDB5DF0, &unk_21BE33810);
  sub_21BB3A4CC(v30, &qword_27CDB5DF0, &unk_21BE33810);
  sub_21BBC7C7C(v19, v21, v23 & 1);
}

uint64_t sub_21BBC6010@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_21BE2825C();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v55 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v50[4] = v50 - v5;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_21BE2599C();
  v11 = v10;

  v57 = v9;
  v58 = v11;
  sub_21BB41FA4();
  v12 = MEMORY[0x277D837D0];
  v13 = sub_21BE27DBC();
  v53 = v14;
  v54 = v13;
  v51 = v15;
  v52 = v16;
  v17 = ObjCClassFromMetadata;
  v18 = [v7 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21BE32770;
  v20 = sub_21BBC40CC();
  v22 = v21;
  *(v19 + 56) = v12;
  *(v19 + 64) = sub_21BBBEFE8();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = sub_21BE28A2C();
  v25 = v24;

  v57 = v23;
  v58 = v25;
  v50[3] = sub_21BE27DBC();
  v50[2] = v26;
  v50[1] = v27;
  v50[0] = v28 & 1;
  String.rebrand.getter(0xD00000000000001CLL, 0x800000021BE56AB0);
  v29 = [v7 bundleForClass_];
  v30 = sub_21BE2599C();
  v32 = v31;

  v57 = v30;
  v58 = v32;
  v33 = sub_21BE27DBC();
  v35 = v34;
  LOBYTE(v30) = v36;
  v37 = swift_allocObject();
  v38 = *(v1 + 80);
  *(v37 + 80) = *(v1 + 64);
  *(v37 + 96) = v38;
  *(v37 + 112) = *(v1 + 96);
  v39 = *(v1 + 16);
  *(v37 + 16) = *v1;
  *(v37 + 32) = v39;
  v40 = *(v1 + 48);
  *(v37 + 48) = *(v1 + 32);
  *(v37 + 64) = v40;
  sub_21BBC8070(v1, &v57);
  sub_21BE2824C();

  sub_21BBC7C7C(v33, v35, v30 & 1);

  v41 = [v7 bundleForClass_];
  v42 = sub_21BE2599C();
  v44 = v43;

  v57 = v42;
  v58 = v44;
  v45 = sub_21BE27DBC();
  v47 = v46;
  LOBYTE(v42) = v48;
  sub_21BE2823C();
  sub_21BBC7C7C(v45, v47, v42 & 1);

  return sub_21BE2822C();
}

uint64_t sub_21BBC64F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v13[0] = *(a1 + 32);
  v14 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  sub_21BBC8070(a1, v13);
  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 80);
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = v9;
  *(v7 + 128) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  v11 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v11;
  sub_21BBA932C(0, 0, v4, &unk_21BE33888, v7);
}

uint64_t sub_21BBC6674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v4[20] = sub_21BE28D7C();
  v4[21] = sub_21BE28D6C();
  v5 = swift_task_alloc();
  v4[22] = v5;
  *v5 = v4;
  v5[1] = sub_21BBC6724;

  return sub_21BBC46D8();
}

uint64_t sub_21BBC6724()
{
  *(*v1 + 184) = v0;

  v3 = sub_21BE28D0C();
  if (v0)
  {
    v4 = sub_21BBC6918;
  }

  else
  {
    v4 = sub_21BBC6880;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BBC6880()
{

  *(v0 + 112) = *(*(v0 + 152) + 32);
  *(v0 + 193) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBC6918()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);

  swift_getErrorValue();
  v3 = sub_21BE29A5C();
  v4 = *(v2 + 80);
  *(v0 + 40) = *(v2 + 64);
  *(v0 + 56) = v4;
  *(v0 + 80) = v3;
  *(v0 + 88) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E10, &qword_21BE33868);
  sub_21BE2840C();
  *(v0 + 64) = *(v2 + 48);
  *(v0 + 96) = *(v2 + 48);
  *(v0 + 192) = 1;
  *(v0 + 128) = *(v0 + 72);
  sub_21BBA3854(v0 + 128, v0 + 144, &qword_27CDB5E28, &qword_21BE33898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();

  sub_21BB3A4CC(v0 + 64, &qword_27CDBBB50, &unk_21BE333D0);
  *(v0 + 112) = *(*(v0 + 152) + 32);
  *(v0 + 193) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BBC6AA0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  sub_21BE2767C();
  v5 = sub_21BE27DAC();
  v26 = v6;
  v27 = v5;
  v24 = v7;
  v25 = v8;
  v32 = *(v1 + 64);
  v9 = *(v1 + 80);
  v34[0] = v32;
  v33 = v9;
  v30 = *(v1 + 64);
  v31 = v9;
  sub_21BBC8120(v34, &v29);
  sub_21BBA3854(&v33, &v29, &qword_27CDB5E20, &qword_21BE33878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E10, &qword_21BE33868);
  sub_21BE283FC();
  v30 = v29;
  sub_21BB41FA4();
  v23[2] = sub_21BE27DBC();
  v23[1] = v10;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_21BE2599C();
  v15 = v14;

  *&v30 = v13;
  *(&v30 + 1) = v15;
  v16 = sub_21BE27DBC();
  v18 = v17;
  v20 = v19;
  sub_21BE2824C();
  sub_21BBC7C7C(v16, v18, v20 & 1);

  v21 = sub_21BE2825C();
  (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
  sub_21BE2821C();
  v30 = v32;
  v31 = v9;
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_21BE2840C();
  sub_21BB3A250(v34);
  return sub_21BB3A4CC(&v33, &qword_27CDB5E20, &qword_21BE33878);
}

uint64_t sub_21BBC6DB8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v25 - v2;
  v4 = sub_21BE2766C();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  v30 = v8;
  v31 = v10;
  sub_21BB41FA4();
  v11 = sub_21BE27DBC();
  v27 = v12;
  v28 = v11;
  v25[3] = v13;
  v26 = v14;
  sub_21BE2765C();
  sub_21BE2764C();
  sub_21BBC43A4();
  sub_21BE2763C();

  sub_21BE2764C();
  sub_21BE2768C();
  sub_21BE27DAC();
  v15 = [v6 bundleForClass_];
  v16 = sub_21BE2599C();
  v18 = v17;

  v30 = v16;
  v31 = v18;
  v19 = sub_21BE27DBC();
  v21 = v20;
  LOBYTE(v18) = v22;
  sub_21BE2824C();
  sub_21BBC7C7C(v19, v21, v18 & 1);

  v23 = sub_21BE2825C();
  (*(*(v23 - 8) + 56))(v3, 0, 1, v23);
  return sub_21BE2821C();
}

unint64_t sub_21BBC7140()
{
  result = qword_27CDB5C08;
  if (!qword_27CDB5C08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BC8, &qword_21BE33388);
    v4[0] = sub_21BBC71CC();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB5C08);
  }

  return result;
}

unint64_t sub_21BBC71CC()
{
  result = qword_27CDB5C10;
  if (!qword_27CDB5C10)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5C00, &qword_21BE333C8);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BD0, &qword_21BE3E310);
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BD8, &qword_21BE333C0);
    v4[4] = sub_21BBC2448();
    v4[5] = sub_21BB3B038(&qword_27CDB5BF8, &qword_27CDB5BD8, &qword_21BE333C0, MEMORY[0x277CDDA18]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BBC7324(&qword_27CDB5C18, type metadata accessor for ActiveStateChange, byte_21BE49A18);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB5C10);
  }

  return result;
}

uint64_t sub_21BBC7324(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BBC736C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBC2038(a1, v4, v5, v1 + 32);
}

uint64_t sub_21BBC741C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBC1A98(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BBC7524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBC1A98(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BBC75DC()
{
  result = qword_27CDB5C30;
  if (!qword_27CDB5C30)
  {
    result = swift_getWitnessTable(byte_21BE334D8, &type metadata for ListOfMembers, v0, v1);
    atomic_store(result, &qword_27CDB5C30);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21BBC7680()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBB7EB8;

  return sub_21BBC1148(v0 + 16);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_21BBC77E8()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

unint64_t sub_21BBC7914()
{
  result = qword_27CDB5C48;
  if (!qword_27CDB5C48)
  {
    result = swift_getWitnessTable(byte_21BE3462C, &type metadata for FamilyMessageItemDataItem, v0, v1);
    atomic_store(result, &qword_27CDB5C48);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BBC7ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21BBC7B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BBC7BA4()
{
  result = qword_27CDB5CA8;
  if (!qword_27CDB5CA8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5CA0, &qword_21BE33560);
    v4[0] = sub_21BBC7C28();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27CDB5CA8);
  }

  return result;
}

unint64_t sub_21BBC7C28()
{
  result = qword_27CDB5CB0;
  if (!qword_27CDB5CB0)
  {
    result = swift_getWitnessTable(aI_9, &type metadata for FamilyMemberMessageCell, v0, v1);
    atomic_store(result, &qword_27CDB5CB0);
  }

  return result;
}

uint64_t sub_21BBC7C7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21BBC7CF0()
{
  result = qword_27CDB5D28;
  if (!qword_27CDB5D28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D20, &qword_21BE33640);
    v4[0] = sub_21BBC7DA8();
    v4[1] = sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB5D28);
  }

  return result;
}

unint64_t sub_21BBC7DA8()
{
  result = qword_27CDB5D30;
  if (!qword_27CDB5D30)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D38, &qword_21BE33648);
    v4 = sub_21BB3B038(&qword_27CDB5D40, &qword_27CDB5D48, &unk_21BE33650, MEMORY[0x277CE0868]);
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDB5D30);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21BBC7E8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_21BBC7ED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BBC7F3C()
{
  result = qword_27CDB5D60;
  if (!qword_27CDB5D60)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5C68, &unk_21BE33530);
    v4[0] = sub_21BB3B038(&qword_27CDB5D68, &qword_27CDB5D70, &qword_21BE33748, MEMORY[0x277CDE5A0]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB5D60);
  }

  return result;
}

uint64_t sub_21BBC80B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D80, &qword_21BE337A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_77Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21BBC81F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BBC6674(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BBC82A4()
{
  result = qword_27CDB5E30;
  if (!qword_27CDB5E30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5E38, qword_21BE338A0);
    v4[0] = sub_21BB3B038(&qword_27CDB5DB0, &qword_27CDB5DA8, &qword_21BE337D0, MEMORY[0x277CE1198]);
    v4[1] = sub_21BB3B038(&qword_27CDB5DC8, &qword_27CDB5D78, &qword_21BE337A0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB5E30);
  }

  return result;
}

void *sub_21BBC83B0()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BBC9024(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void sub_21BBC8500(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    v8 = sub_21BBC83B0();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277CECA10]) initWithAccountManager_];
      v11 = type metadata accessor for RecoveryContactNotSetupCell(0);
      [v10 setDelegate_];
      [v10 start];
      v12 = [v10 navigationController];
      [v7 presentViewController:v12 animated:1 completion:0];

      v13 = (v1 + *(v11 + 32));
      v15 = v13[1];
      v23[0] = *v13;
      v14 = v23[0];
      v23[1] = v15;
      v22[1] = v10;

      v16 = v10;
      v17 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E90, &qword_21BE33968);
      sub_21BE2840C();

      return;
    }
  }

  sub_21BE261BC();
  v18 = sub_21BE26A2C();
  v19 = sub_21BE28FDC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_21BB3D81C(0xD000000000000037, 0x800000021BE56CA0, v23);
    _os_log_impl(&dword_21BB35000, v18, v19, "%s unable to start flow because navigation controller or accountManager is nil", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x21CF05C50](v21, -1, -1);
    MEMORY[0x21CF05C50](v20, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

void *sub_21BBC87B8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RecoveryContactNotSetupCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BBC91F4(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecoveryContactNotSetupCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BBC9030(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BBC9094;
  a1[3] = v7;
  return result;
}

uint64_t sub_21BBC8920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v5 = type metadata accessor for RecoveryContactNotSetupCell(0);
  v6 = v5 - 8;
  v37 = *(v5 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_21BE2599C();
  v38 = v13;
  v39 = v12;

  v14 = [v10 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  v15 = sub_21BE2599C();
  v17 = v16;

  v41 = v15;
  v42 = v17;
  v18 = sub_21BE28B8C();
  v35 = v19;
  v36 = v18;
  v20 = *(v40 + 16);
  sub_21BBC91F4(v40, v8, type metadata accessor for RecoveryContactNotSetupCell);
  v21 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_21BBC9030(v8, v23 + v21);
  *(v23 + v22) = a1;
  v24 = a1;
  v25 = v20;
  v26 = [v10 bundleForClass_];
  v27 = sub_21BE2599C();
  v29 = v28;

  v30 = *(v6 + 32);
  a3[13] = type metadata accessor for RecoveryContactDataItem(0);
  a3[14] = sub_21BBC919C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 10);
  result = sub_21BBC91F4(v40 + v30, boxed_opaque_existential_1, type metadata accessor for RecoveryContactDataItem);
  v33 = v38;
  *a3 = v39;
  a3[1] = v33;
  v34 = v35;
  a3[2] = v36;
  a3[3] = v34;
  a3[4] = v25;
  a3[5] = sub_21BBC9114;
  a3[6] = v23;
  a3[7] = v27;
  a3[8] = v29;
  a3[9] = 0;
  a3[15] = 0;
  return result;
}

id sub_21BBC8D74(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CustodianSetupFlowDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for RecoveryContactNotSetupCell(uint64_t a1)
{
  result = qword_27CDB5E40;
  if (!qword_27CDB5E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBC8E40(uint64_t a1)
{
  sub_21BBC8FA4(319, &qword_27CDB5E50, &qword_27CDB5E58, &qword_21BE33900, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21BBC8F58();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RecoveryContactDataItem(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CustodianSetupFlowDelegate();
        sub_21BBC8FA4(319, &qword_27CDB5E68, &unk_27CDB5E70, &qword_21BE33908, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21BBC8F58()
{
  result = qword_27CDB5E60;
  if (!qword_27CDB5E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB5E60);
  }

  return result;
}

void sub_21BBC8FA4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21BBC9024(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_21BBC9030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoveryContactNotSetupCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBC9094@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for RecoveryContactNotSetupCell(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BBC8920(a1, v6, a2);
}

unint64_t sub_21BBC919C()
{
  result = qword_27CDB5E88;
  if (!qword_27CDB5E88)
  {
    v3 = type metadata accessor for RecoveryContactDataItem(255);
    result = swift_getWitnessTable(byte_21BE50CF8, v3, v0, v1);
    atomic_store(result, &qword_27CDB5E88);
  }

  return result;
}

uint64_t sub_21BBC91F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BBC925C()
{
  result = qword_27CDB5E98;
  if (!qword_27CDB5E98)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB5EA0, &unk_21BE33970);
    result = swift_getWitnessTable(byte_21BE477F8, v3, v0, v1);
    atomic_store(result, &qword_27CDB5E98);
  }

  return result;
}

uint64_t type metadata accessor for FindMyButton(uint64_t a1)
{
  result = qword_27CDB5EB8;
  if (!qword_27CDB5EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBC9334(uint64_t a1)
{
  sub_21BBC9430(319, &qword_27CDB5EC8, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21BE25B9C();
    if (v2 <= 0x3F)
    {
      sub_21BBC9430(319, &qword_27CDB5ED0, sub_21BBC9494, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BBC9430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_21BBC9494()
{
  result = qword_27CDB5ED8;
  if (!qword_27CDB5ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB5ED8);
  }

  return result;
}

uint64_t sub_21BBC94FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  MyButton = type metadata accessor for FindMyButton(0);
  v5 = *(MyButton - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](MyButton);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *(v2 + *(MyButton + 24));
  if (v11)
  {
    v23 = v8;
    v12 = v11;
    if (sub_21BDE4F40())
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = v5;
      v14 = [objc_opt_self() bundleForClass_];
      v15 = sub_21BE2599C();
      v17 = v16;

      v24 = v15;
      v25 = v17;
      sub_21BBC99D4(v2, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v18 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v19 = swift_allocObject();
      sub_21BBC9A38(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
      sub_21BB41FA4();
      sub_21BE2845C();

      (*(v23 + 32))(a1, v10, v7);
      return (*(v23 + 56))(a1, 0, 1, v7);
    }

    v8 = v23;
  }

  v21 = *(v8 + 56);

  return v21(a1, 1, 1, v7);
}

uint64_t sub_21BBC9804(uint64_t a1)
{
  v1 = sub_21BE26FEC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BD20368(v4);
  type metadata accessor for FindMyButton(0);
  sub_21BE26FBC();
  (*(v2 + 8))(v4, v1);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v9 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000021BE56CE0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v6 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v9, v6);
}

uint64_t sub_21BBC99D4(uint64_t a1, uint64_t a2)
{
  MyButton = type metadata accessor for FindMyButton(0);
  (*(*(MyButton - 8) + 16))(a2, a1, MyButton);
  return a2;
}

uint64_t sub_21BBC9A38(uint64_t a1, uint64_t a2)
{
  MyButton = type metadata accessor for FindMyButton(0);
  (*(*(MyButton - 8) + 32))(a2, a1, MyButton);
  return a2;
}

uint64_t sub_21BBC9A9C()
{
  v1 = *(type metadata accessor for FindMyButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BBC9804(v2);
}

uint64_t sub_21BBC9AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BBC9B64()
{
  result = qword_27CDB5EE0;
  if (!qword_27CDB5EE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5EE8, &qword_21BE339E8);
    v4[0] = sub_21BBC9BE8();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB5EE0);
  }

  return result;
}

unint64_t sub_21BBC9BE8()
{
  result = qword_27CDB5598;
  if (!qword_27CDB5598)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
    result = swift_getWitnessTable(MEMORY[0x277CDF028], v3, v0, v1);
    atomic_store(result, &qword_27CDB5598);
  }

  return result;
}

uint64_t sub_21BBC9C4C()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBC9D40, v4, v3);
}

uint64_t sub_21BBC9D40(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBCF144(1);
}

uint64_t sub_21BBC9EF4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBDACB8, v3, v2);
}

uint64_t sub_21BBCA014()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCA108, v4, v3);
}

uint64_t sub_21BBCA108(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBCFA88(1);
}

uint64_t sub_21BBCA2BC()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCA3B0, v4, v3);
}

uint64_t sub_21BBCA3B0(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD038C(1);
}

uint64_t sub_21BBCA564()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCA658, v4, v3);
}

uint64_t sub_21BBCA658(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD0C90(1);
}

uint64_t sub_21BBCA80C()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCA900, v4, v3);
}

uint64_t sub_21BBCA900(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD1594(1);
}

uint64_t sub_21BBCAAB4()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCABA8, v4, v3);
}

uint64_t sub_21BBCABA8(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD1E98(1);
}

uint64_t sub_21BBCAD5C()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCAE50, v4, v3);
}

uint64_t sub_21BBCAE50(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD27DC(1);
}

uint64_t sub_21BBCB004()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCB0F8, v4, v3);
}

uint64_t sub_21BBCB0F8(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD3B08(1);
}

uint64_t sub_21BBCB2AC()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCB3A0, v4, v3);
}

uint64_t sub_21BBCB3A0(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD440C(1);
}

uint64_t sub_21BBCB554()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCB648, v4, v3);
}

uint64_t sub_21BBCB648(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD4D10(1);
}

uint64_t sub_21BBCB7FC()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCB8F0, v4, v3);
}

uint64_t sub_21BBCB8F0(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD5614(1);
}

uint64_t sub_21BBCBAA4()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCBB98, v4, v3);
}

uint64_t sub_21BBCBB98(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD5F18(1);
}

uint64_t sub_21BBCBD4C()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCBE40, v4, v3);
}

uint64_t sub_21BBCBE40(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD681C(1);
}

uint64_t sub_21BBCBFF4()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCC0E8, v4, v3);
}

uint64_t sub_21BBCC0E8(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD7120(1);
}

uint64_t sub_21BBCC29C()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCC390, v4, v3);
}

uint64_t sub_21BBCC390(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD7A24(1);
}

uint64_t sub_21BBCC544()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCC638, v4, v3);
}

uint64_t sub_21BBCC638(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD8328(1);
}

uint64_t sub_21BBCC7EC()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCC8E0, v4, v3);
}

uint64_t sub_21BBCC8E0(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBC9EF4;

  return sub_21BBD8C2C(1);
}

uint64_t sub_21BBCCA94()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCCB88, v4, v3);
}

uint64_t sub_21BBCCB88(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v15);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_21BBCCD3C;

  return sub_21BBD9530(1);
}

uint64_t sub_21BBCCD3C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBCCE5C, v3, v2);
}

uint64_t sub_21BBCCE5C()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_21BBCCEC4()
{
  v1 = *(v0 + 8);
  if (v1 >> 62)
  {
    v2 = sub_21BE2951C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

uint64_t sub_21BBCCF10()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BDB08A0();
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBCCF9C(uint64_t a1)
{
  v2 = *v1;
  sub_21BDB08A0();
  sub_21BE28ABC();

  sub_21BC5C62C(v2);
  sub_21BE28ABC();
}

uint64_t sub_21BBCD024(uint64_t a1)
{
  v2 = *v1;
  sub_21BE29ACC();
  sub_21BDB08A0();
  sub_21BE28ABC();

  sub_21BC5C62C(v2);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBCD0AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21BDB08A0();
  v6 = v5;
  if (v4 == sub_21BDB08A0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_21BE2995C();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = sub_21BC5C62C(v2);
  v13 = v12;
  if (v11 == sub_21BC5C62C(v3) && v13 == v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

unint64_t sub_21BBCD1B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BBDA874(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_21BBCD1E0@<X0>(uint64_t a1@<X8>)
{
  v14 = *v1;
  v3 = *(v1 + 1);
  v15 = *(v1 + 3);
  v5 = v1[32];
  v18 = *(v1 + 2);
  v4 = v18;
  v19 = v3;
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBA3854(&v19, &v16, &qword_27CDB5F20, &unk_21BE33BA0);
  sub_21BBA3854(&v18, &v16, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BBDABBC(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v6 = sub_21BE26E9C();
  v8 = v7;
  v21[0] = 0;
  sub_21BE283EC();
  v9 = v16;
  v10 = v17;
  v21[0] = 0;
  sub_21BE283EC();
  v11 = v16;
  v12 = v17;
  result = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  *a1 = v6;
  *(a1 + 8) = v8 & 1;
  *(a1 + 9) = v16;
  *(a1 + 12) = *(&v16 + 3);
  *(a1 + 16) = v14;
  *(a1 + 17) = v19;
  *(a1 + 20) = *(&v19 + 3);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v15;
  *(a1 + 48) = v5 & 1;
  *(a1 + 49) = v18;
  *(a1 + 52) = *(&v18 + 3);
  *(a1 + 56) = v9;
  *(a1 + 57) = *v21;
  *(a1 + 60) = *&v21[3];
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 73) = *v20;
  *(a1 + 76) = *&v20[3];
  *(a1 + 80) = v12;
  *(a1 + 88) = result;
  return result;
}

double sub_21BBCD3BC@<D0>(_OWORD *a1@<X8>)
{
  sub_21BBCD1E0(v6);
  v2 = v6[3];
  a1[2] = v6[2];
  a1[3] = v2;
  v3 = v6[5];
  a1[4] = v6[4];
  a1[5] = v3;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

id sub_21BBCD428()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21BE25DAC();
  v6[0] = 0;
  v2 = [v0 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21BE25A8C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_21BBCD56C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8);
  v3 = sub_21BE28C1C();
  v9[0] = 0;
  v4 = [v1 sharedGroceryListForFamilyChecklistWithCommonParticipants:v3 error:v9];

  v5 = v9[0];
  if (v4)
  {
    sub_21BB3A2A4(0, &qword_27CDB60E8, 0x277D44628);
    v2 = sub_21BE28C3C();
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    sub_21BE25A8C();

    swift_willThrow();
  }

  return v2;
}

id sub_21BBCD6B8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SharedFamilyGroceryItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BBCD730(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for SharedFamilyGroceryItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t type metadata accessor for SharedFamilyGroceryItemProvider(uint64_t a1)
{
  result = qword_27CDB5EF0;
  if (!qword_27CDB5EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BBCD88C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BBCDED0();
}

uint64_t sub_21BBCD93C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_21BE28D0C();
    v7 = v6;
    v8 = sub_21BBCDB2C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_21BE28D0C();
    v7 = v9;
    v8 = sub_21BBCDABC;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_21BBCDABC()
{
  v1 = v0[7];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBCDB2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBCDB90(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCDC28, v4, v3);
}

uint64_t sub_21BBCDC28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCA014();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BBCDD2C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBCDE6C, v4, v3);
}

uint64_t sub_21BBCDE6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BBCDED0()
{
  v1[3] = v0;
  v2 = sub_21BE26A4C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[10] = swift_task_alloc();
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_21BBCE020, v4, v3);
}

uint64_t sub_21BBCE020()
{
  v1 = v0[10];
  v2 = v0[3];
  v3 = *&v2[qword_27CDB63F0];
  v4 = *&v2[qword_27CDB63F0 + 8];
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[14] = sub_21BC84D18(v3, v4, "computeItems", 12, 2u);
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = v2;
  v8 = sub_21BC363F4(0, 0, v1, &unk_21BE33DE0, v6);
  v0[15] = v8;
  sub_21BB3A4CC(v1, &qword_27CDB5790, &qword_21BE32800);
  v9 = swift_task_alloc();
  v0[16] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60D8, &qword_21BE390D0);
  *v9 = v0;
  v9[1] = sub_21BBCE1F0;

  return MEMORY[0x282200460](v0 + 2, v8, v10);
}

uint64_t sub_21BBCE1F0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21BBCE334, v3, v2);
}

uint64_t sub_21BBCE334()
{

  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = (v0[3] + qword_27CDD4120);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = *(v4 + 8);
  v6 = v1;
  v7 = v5(v3, v4);
  if (v7)
  {
    v8 = v7;
    v9 = sub_21BE2905C();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if ([v6 isEligible])
  {
    sub_21BE261BC();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "Family Grocery checklist item is eligible to be displayed", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    v13 = v0[9];
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[3];

    (*(v14 + 8))(v13, v15);
    v17 = *(v16 + qword_27CDD4128 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v16 + qword_27CDD4128), *(v16 + qword_27CDD4128 + 24));
    sub_21BBCECA4();
    v28 = (*(v17 + 16))();

    v29 = sub_21BBBCBBC(0, 1, 1, MEMORY[0x277D84F90]);
    v25 = v29;
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v25 = sub_21BBBCBBC((v30 > 1), v31 + 1, 1, v29);
    }

    *(v25 + 2) = v31 + 1;
    v32 = &v25[40 * v31];
    v32[32] = 13;
    *(v32 + 5) = v28;
    *(v32 + 6) = v9;
    *(v32 + 7) = 0;
    v32[64] = 1;
    goto LABEL_17;
  }

  if (([v6 ineligibilityReasons] & 0x10) != 0)
  {

    sub_21BE261BC();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FFC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[8];
    v22 = v0[4];
    v23 = v0[5];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21BB35000, v18, v19, "Family grocery list cannot be shown because of unsupported locale", v24, 2u);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
    goto LABEL_16;
  }

  if (([v6 ineligibilityReasons] & 0x100) != 0)
  {
    sub_21BE261BC();
    v33 = sub_21BE26A2C();
    v34 = sub_21BE28FFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21BB35000, v33, v34, "Showing grocery list item, but account needs to be updated", v35, 2u);
      MEMORY[0x21CF05C50](v35, -1, -1);
    }

    v36 = v0[7];
  }

  else
  {
    if (([v6 ineligibilityReasons] & 4) == 0)
    {

LABEL_16:
      v25 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    sub_21BE261BC();
    v33 = sub_21BE26A2C();
    v37 = sub_21BE28FFC();
    if (os_log_type_enabled(v33, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21BB35000, v33, v37, "Showing grocery list item, but ICloud is disabled for reminders", v38, 2u);
      MEMORY[0x21CF05C50](v38, -1, -1);
    }

    v36 = v0[6];
  }

  v39 = v0[4];
  v40 = v0[5];

  (*(v40 + 8))(v36, v39);
  v41 = [v6 ineligibilityReasons];
  v42 = MEMORY[0x277D84F90];
  v25 = sub_21BBBCBBC(0, 1, 1, MEMORY[0x277D84F90]);
  v44 = *(v25 + 2);
  v43 = *(v25 + 3);
  if (v44 >= v43 >> 1)
  {
    v25 = sub_21BBBCBBC((v43 > 1), v44 + 1, 1, v25);
  }

  *(v25 + 2) = v44 + 1;
  v45 = &v25[40 * v44];
  v45[32] = 13;
  *(v45 + 5) = v42;
  *(v45 + 6) = v9;
  *(v45 + 7) = v41;
  v45[64] = 0;
LABEL_17:
  sub_21BC852D8();

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_21BBCE924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_21BE26A4C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_21BE25DFC();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BBCEA40, 0, 0);
}

uint64_t sub_21BBCEA40()
{
  *(v0 + 80) = qword_27CDD4128;
  sub_21BE28D7C();
  *(v0 + 88) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBCEAE0, v2, v1);
}

uint64_t sub_21BBCEAE0()
{

  return MEMORY[0x2822009F8](sub_21BBCEB48, 0, 0);
}

uint64_t sub_21BBCEB48()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = (*(v0 + 24) + *(v0 + 80));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  sub_21BE25DBC();
  v7 = (*(v6 + 8))(v1, v5, v6);
  (*(v3 + 8))(v1, v2);
  **(v0 + 16) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21BBCECA4()
{
  v1 = *(v0 + qword_27CDD4120 + 24);
  v2 = *(v0 + qword_27CDD4120 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + qword_27CDD4120), v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    v6 = sub_21BE2905C();

    v28 = v4;
    if (v6 >> 62)
    {
LABEL_28:
      v27 = v6 & 0xFFFFFFFFFFFFFF8;
      v7 = sub_21BE2951C();
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v27 = v6 & 0xFFFFFFFFFFFFFF8;
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    v8 = 0;
    while (1)
    {
      v26 = v4;
      v9 = v8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x21CF047C0](v9, v6);
        }

        else
        {
          if (v9 >= *(v27 + 16))
          {
            goto LABEL_27;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v12 = [v10 appleID];
        if (v12)
        {
          break;
        }

LABEL_7:
        ++v9;
        if (v8 == v7)
        {
          v4 = v26;
          goto LABEL_24;
        }
      }

      v13 = v12;
      v14 = sub_21BE28A0C();
      v16 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21BE32770;
      *(v17 + 32) = v14;
      *(v17 + 40) = v16;
      v18 = [v11 appleIDAliases];
      if (v18)
      {
        v19 = v18;
        v20 = sub_21BE28C3C();
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      sub_21BDE57E8(v20);
      v4 = v17;
      sub_21BE291DC();
      v21 = objc_allocWithZone(MEMORY[0x277D445D8]);
      v22 = sub_21BE28C1C();

      v23 = sub_21BE28C1C();

      v24 = [v21 initWithPhones:v22 emails:v23];

      if (!v24)
      {
        goto LABEL_7;
      }

      MEMORY[0x21CF03DB0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21BE28C5C();
      }

      sub_21BE28C8C();
      v4 = v28;
      if (v8 == v7)
      {
LABEL_24:

        return v4;
      }
    }
  }

  return v4;
}

unint64_t sub_21BBCEFC0()
{
  result = qword_27CDB5F00;
  if (!qword_27CDB5F00)
  {
    result = swift_getWitnessTable(byte_21BE33B00, &type metadata for SharedFamilyGroceryItem, v0, v1);
    atomic_store(result, &qword_27CDB5F00);
  }

  return result;
}

unint64_t sub_21BBCF014(uint64_t a1)
{
  *(a1 + 8) = sub_21BBCF044();
  result = sub_21BBCF098();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BBCF044()
{
  result = qword_27CDB5F08;
  if (!qword_27CDB5F08)
  {
    result = swift_getWitnessTable(byte_21BE33B28, &type metadata for SharedFamilyGroceryItem, v0, v1);
    atomic_store(result, &qword_27CDB5F08);
  }

  return result;
}