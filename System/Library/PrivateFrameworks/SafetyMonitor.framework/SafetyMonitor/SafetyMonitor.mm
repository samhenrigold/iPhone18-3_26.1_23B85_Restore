void RTCommonCalculateDistanceRadius(int a1, double a2, double a3, double a4, double a5)
{
  v7 = (a2 + a4) * 0.0174532925;
  if (a3 < 0.0)
  {
    a3 = a3 + 360.0;
  }

  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  v8 = a5 - a3;
  if (v8 <= 180.0)
  {
    if (v8 < -180.0)
    {
      v8 = v8 + 360.0;
    }
  }

  else
  {
    v8 = v8 + -360.0;
  }

  v9 = v7 * 0.5;
  v10 = (a4 - a2) * 0.0174532925;
  v11 = v8;
  if (v8 < 0)
  {
    v11 = -v11;
  }

  v12 = a4 - a2;
  if (v12 < 0)
  {
    v12 = a2 - a4;
  }

  v13 = v8 * 0.0174532925;
  if (v12 > 2 || v11 > 2)
  {
    if (a1)
    {
      sin(v9);
    }

    v14 = sin(v10 * 0.5);
    v15 = v14 * v14;
    v16 = cos(a2 * 0.0174532925);
    v17 = v16 * cos(a4 * 0.0174532925);
    v18 = sin(v13 * 0.5);
    v19 = v15 + v17 * (v18 * v18);
    v20 = 1.0 - v19;
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    if (v20 < 0.0)
    {
      v20 = 0.0;
    }

    atan2(sqrt(v19), sqrt(v20));
  }

  else
  {
    __sincos_stret(v9);
  }
}

id _rt_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _rt_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

void *sub_26455F670@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26455F68C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_26455F704@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_26455F7CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_26455F82C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26455F864()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26455F8A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26455F8D8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return sub_2645D377C();
}

uint64_t sub_26455F944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2645D378C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26455F9F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2645D378C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26455FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2645D378C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26455FB94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2645D378C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_26455FCA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26455FD3C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26455FD90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26455FDC8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_26455FE74()
{
  result = [objc_allocWithZone(type metadata accessor for SMActivityManager()) init];
  qword_280BCB658 = result;
  return result;
}

id static SMActivityManager.shared.getter()
{
  if (qword_280BCB650 != -1)
  {
    swift_once();
  }

  v1 = qword_280BCB658;

  return v1;
}

uint64_t sub_2645600B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 152) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648);
  *(v7 + 40) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72798, &qword_2645D9530);
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  sub_2645D355C();
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  sub_2645D394C();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72838, &qword_2645D9650);
  *(v7 + 104) = swift_task_alloc();
  v9 = sub_2645D36FC();
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2645602D4, 0, 0);
}

uint64_t sub_2645602D4()
{
  v31 = v0;
  v1 = *(v0 + 16);
  sub_2645D36EC();
  if (([v1 isPromptState] & 1) != 0 || objc_msgSend(*(v0 + 16), sel_isCacheReleasedState))
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    sub_2645D36DC();
    (*(v5 + 8))(v3, v4);
    (*(v5 + 32))(v3, v2, v4);
    if (qword_280BCB618 != -1)
    {
      swift_once();
    }

    v6 = sub_2645D38CC();
    __swift_project_value_buffer(v6, qword_280BCB620);

    v7 = sub_2645D38AC();
    v8 = sub_2645D3AEC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30 = v10;
      *v9 = 136315138;
      v11 = sub_2645D362C();
      v13 = sub_264561058(v11, v12, &v30);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_26455D000, v7, v8, "Alerting with only haptics - (%s)", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26673D4A0](v10, -1, -1);
      MEMORY[0x26673D4A0](v9, -1, -1);
    }
  }

  v14 = *(v0 + 152);
  v15 = *(v0 + 16);
  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC10alertTitle4with11addTimeMode12shortStrings05watchM0SSSo21SMSessionManagerStateCSg_S3btFZ_0(v15, 0, 0, 0);
  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC12alertMessage4with11addTimeMode19isWatchNotification12shortStrings05watchP0SSSo21SMSessionManagerStateCSg_S4btFZ_0(v15, 0, 1, 0, 0);
  if (v14 == 1)
  {
    v26 = *(v0 + 128);
    v16 = *(v0 + 120);
    v27 = *(v0 + 112);
    v28 = *(v0 + 136);
    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D354C();
    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D354C();
    (*(v16 + 16))(v26, v28, v27);
    sub_2645D370C();
    v17 = 0;
  }

  else
  {

    v17 = 1;
  }

  v18 = *(v0 + 104);
  v19 = *(v0 + 40);
  v20 = sub_2645D371C();
  (*(*(v20 - 8) + 56))(v18, v17, 1, v20);
  v21 = sub_2645D35EC();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_2645626C4();
  sub_264562718();
  sub_26456276C();
  sub_2645D36CC();
  v29 = (*MEMORY[0x277CB92A0] + MEMORY[0x277CB92A0]);
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v22[1] = sub_264560764;
  v23 = *(v0 + 104);
  v24 = *(v0 + 64);

  return v29(v24, v23);
}

uint64_t sub_264560764()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2645608BC, 0, 0);
}

uint64_t sub_2645608BC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  sub_2645627C0(v0[13], &qword_27FF72838, &qword_2645D9650);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_264560A50()
{
  v1 = v0;
  v2 = sub_2645D367C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72780, &qword_2645D9520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v9 = sub_2645D361C();
  v10 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  *(v1 + v10) = v9;

  v12 = *(v1 + v10);
  if (v12 >> 62)
  {
    result = sub_2645D3BCC();
    v13 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return result;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v33 = (v3 + 8);
    v34 = v12 & 0xC000000000000001;

    v14 = 0;
    *&v15 = 136315138;
    v29 = v15;
    v31 = v12;
    v32 = v8;
    v30 = v5;
    do
    {
      if (v34)
      {
        MEMORY[0x26673C9D0](v14, v12);
      }

      else
      {
      }

      if (qword_280BCB618 != -1)
      {
        swift_once();
      }

      v17 = sub_2645D38CC();
      __swift_project_value_buffer(v17, qword_280BCB620);

      v18 = sub_2645D38AC();
      v19 = sub_2645D3AEC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = v2;
        v22 = swift_slowAlloc();
        v35 = v22;
        *v20 = v29;
        v23 = sub_2645D362C();
        v25 = v13;
        v26 = sub_264561058(v23, v24, &v35);

        *(v20 + 4) = v26;
        v13 = v25;
        _os_log_impl(&dword_26455D000, v18, v19, "Ending activity -  (%s)", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        v27 = v22;
        v2 = v21;
        v5 = v30;
        v8 = v32;
        MEMORY[0x26673D4A0](v27, -1, -1);
        v28 = v20;
        v12 = v31;
        MEMORY[0x26673D4A0](v28, -1, -1);
      }

      ++v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72798, &qword_2645D9530);
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      sub_2645D366C();
      sub_2645D363C();

      (*v33)(v5, v2);
      sub_2645627C0(v8, &qword_27FF72780, &qword_2645D9520);
    }

    while (v13 != v14);
  }

  return result;
}

BOOL sub_264560E74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v2 = sub_2645D361C();
  v3 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  *(v1 + v3) = v2;

  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_2645D3BCC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

id SMActivityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMActivityManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_264561058(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264561124(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_264562498(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_264561124(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_264561230(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2645D3BAC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_264561230(uint64_t a1, unint64_t a2)
{
  v3 = sub_26456127C(a1, a2);
  sub_2645613AC(&unk_287603B80);
  return v3;
}

void *sub_26456127C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_264561498(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2645D3BAC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2645D39FC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264561498(v10, 0);
        result = sub_2645D3B6C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2645613AC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26456150C(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_264561498(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72820, &qword_2645D9628);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26456150C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72820, &qword_2645D9628);
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

void sub_264561600()
{
  v1 = v0;
  v2 = sub_2645D36BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72798, &qword_2645D9530);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = v44 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v12 = sub_2645D361C();
  v13 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  *(v0 + v13) = v12;

  v14 = *(v0 + v13);
  if (v14 >> 62)
  {
    v15 = sub_2645D3BCC();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    if (qword_280BCB618 != -1)
    {
      swift_once();
    }

    v16 = sub_2645D38CC();
    __swift_project_value_buffer(v16, qword_280BCB620);
    v17 = sub_2645D38AC();
    v18 = sub_2645D3B0C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26455D000, v17, v18, "Unable to start live activity - another activity is already active", v19, 2u);
      MEMORY[0x26673D4A0](v19, -1, -1);
    }
  }

  else
  {
    if (qword_280BCB618 != -1)
    {
      swift_once();
    }

    v45 = v10;
    v46 = v9;
    v47 = v5;
    v48 = v3;
    v49 = v2;
    v20 = sub_2645D38CC();
    v44[0] = __swift_project_value_buffer(v20, qword_280BCB620);
    v21 = sub_2645D38AC();
    v22 = sub_2645D3AEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26455D000, v21, v22, "Starting live activity", v23, 2u);
      MEMORY[0x26673D4A0](v23, -1, -1);
    }

    v24 = sub_2645D398C();
    v44[1] = v25;
    v44[2] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72858, &qword_2645D9658);
    v26 = sub_2645D365C();
    v27 = *(v26 - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2645D9510;
    v31 = (v30 + v29);
    *v31 = sub_2645D398C();
    v31[1] = v32;
    v33 = *MEMORY[0x277CB9338];
    v34 = *(v27 + 104);
    v34(v31, v33, v26);
    v35 = (v31 + v28);
    *v35 = sub_2645D398C();
    v35[1] = v36;
    v34(v35, v33, v26);
    v37 = sub_2645D35EC();
    (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
    sub_2645626C4();
    sub_264562718();
    sub_26456276C();
    v38 = v51;
    sub_2645D36CC();
    sub_2645D368C();
    v39 = v47;
    sub_2645D369C();
    sub_2645D36AC();
    sub_2645D364C();

    swift_beginAccess();

    MEMORY[0x26673C870](v40);
    v42 = v48;
    v41 = v49;
    v43 = v46;
    if (*((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2645D3A6C();
    }

    sub_2645D3A7C();
    swift_endAccess();

    (*(v42 + 8))(v39, v41);
    (*(v45 + 8))(v38, v43);
  }
}

void sub_264561DA0(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v9 = sub_2645D361C();
  v10 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  *&v3[v10] = v9;

  v11 = *&v3[v10];
  if (v11 >> 62)
  {
    if (sub_2645D3BCC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x26673C9D0](0, v11);

LABEL_6:
      if ([a1 sessionState] == 1)
      {
        if (qword_280BCB618 != -1)
        {
          swift_once();
        }

        v13 = sub_2645D38CC();
        __swift_project_value_buffer(v13, qword_280BCB620);
        v14 = sub_2645D38AC();
        v15 = sub_2645D3B0C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_26455D000, v14, v15, "Session is not active - end the activity instead of updating", v16, 2u);
          MEMORY[0x26673D4A0](v16, -1, -1);
        }

        sub_264560A50();
      }

      else
      {
        if (qword_280BCB618 != -1)
        {
          swift_once();
        }

        v17 = sub_2645D38CC();
        __swift_project_value_buffer(v17, qword_280BCB620);

        v18 = sub_2645D38AC();
        v19 = sub_2645D3AEC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v35 = v4;
          v4 = v20;
          v21 = swift_slowAlloc();
          v36 = v21;
          *v4 = 136315138;
          v22 = sub_2645D362C();
          v24 = sub_264561058(v22, v23, &v36);

          *(v4 + 4) = v24;
          _os_log_impl(&dword_26455D000, v18, v19, "Updating live activity - (%s)", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x26673D4A0](v21, -1, -1);
          v25 = v4;
          LOBYTE(v4) = v35;
          MEMORY[0x26673D4A0](v25, -1, -1);
        }

        v26 = sub_2645D3ACC();
        (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
        v27 = swift_allocObject();
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 32) = a1;
        *(v27 + 40) = v3;
        *(v27 + 48) = v12;
        *(v27 + 56) = v4 & 1;
        v28 = a1;
        v29 = v3;
        sub_26456FA4C(0, 0, v8, &unk_2645D9640, v27);
      }

      return;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_280BCB618 != -1)
  {
LABEL_24:
    swift_once();
  }

  v30 = sub_2645D38CC();
  __swift_project_value_buffer(v30, qword_280BCB620);
  v31 = sub_2645D38AC();
  v32 = sub_2645D3B0C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_26455D000, v31, v32, "Unable to update live activity - no activities found", v33, 2u);
    MEMORY[0x26673D4A0](v33, -1, -1);
  }
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_26456244C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_264562498(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2645624F8(uint64_t a1)
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
  v10[1] = sub_2645625D0;

  return sub_2645600B8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2645625D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2645626C4()
{
  result = qword_27FF72840;
  if (!qword_27FF72840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72840);
  }

  return result;
}

unint64_t sub_264562718()
{
  result = qword_27FF72848;
  if (!qword_27FF72848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72848);
  }

  return result;
}

unint64_t sub_26456276C()
{
  result = qword_27FF72850;
  if (!qword_27FF72850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72850);
  }

  return result;
}

uint64_t sub_2645627C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26456295C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729E0, &qword_2645D9680);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v62 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  if (!a1)
  {
    goto LABEL_8;
  }

  v22 = a1[2];
  if (!(v22 | a3))
  {
    if (qword_27FF72658 != -1)
    {
      swift_once();
    }

    v23 = sub_2645D38CC();
    __swift_project_value_buffer(v23, qword_27FF72AD8);
    v24 = sub_2645D38AC();
    v25 = sub_2645D3B0C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26455D000, v24, v25, "Live Activity, deepLinkURL, unable to resolve conversation", v26, 2u);
      MEMORY[0x26673D4A0](v26, -1, -1);
    }

    goto LABEL_8;
  }

  if (v22 < 2)
  {
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_8:
    v27 = sub_2645D359C();
    v28 = *(*(v27 - 8) + 56);

    return v28(a5, 1, 1, v27);
  }

  if (!a3)
  {
LABEL_15:
    v31 = a1[4];
    v30 = a1[5];
    v67 = a2;
    v68 = v31;
    v69 = v30;

    v70 = 0;
    goto LABEL_16;
  }

  v70 = 1;
  v67 = a2;
  v68 = a2;
  v69 = a3;
LABEL_16:
  if (qword_27FF72658 != -1)
  {
    swift_once();
  }

  v32 = sub_2645D38CC();
  __swift_project_value_buffer(v32, qword_27FF72AD8);

  v33 = sub_2645D38AC();
  v34 = sub_2645D3AEC();

  v66 = v34;
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v65 = a5;
    v36 = v35;
    v64 = swift_slowAlloc();
    v73 = v64;
    *v36 = 136315650;
    v71 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729E8, &qword_2645D9688);
    v63 = v33;
    v37 = sub_2645D3B3C();
    v39 = a4;
    v40 = sub_264561058(v37, v38, &v73);

    *(v36 + 4) = v40;
    a4 = v39;
    *(v36 + 12) = 2080;
    v71 = v67;
    v72 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729F0, &unk_2645D9690);
    v41 = sub_2645D3B3C();
    v43 = sub_264561058(v41, v42, &v73);

    *(v36 + 14) = v43;
    *(v36 + 22) = 1024;
    *(v36 + 24) = v39 & 1;
    v33 = v63;
    _os_log_impl(&dword_26455D000, v63, v66, "Live Activity, deepLinkURL, receiverHandles, %s, groupID, %s, isSessionActive, %{BOOL}d", v36, 0x1Cu);
    v44 = v64;
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v44, -1, -1);
    v45 = v36;
    a5 = v65;
    MEMORY[0x26673D4A0](v45, -1, -1);
  }

  v46 = objc_opt_self();
  v47 = sub_2645D397C();

  if (a4)
  {
    if (v70)
    {
      v48 = sub_2645D3A3C();
      v49 = [v46 createURLToDetailViewForGroupID:v47 recipientHandles:v48];

      if (v49)
      {
        sub_2645D358C();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v57 = sub_2645D359C();
      (*(*(v57 - 8) + 56))(v16, v50, 1, v57);
      v58 = v16;
    }

    else
    {
      v53 = [v46 createURLToDetailViewForRecipientHandle_];

      if (v53)
      {
        sub_2645D358C();

        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v60 = sub_2645D359C();
      (*(*(v60 - 8) + 56))(v13, v54, 1, v60);
      v58 = v13;
    }
  }

  else if (v70)
  {
    v51 = [v46 createURLToConversationForGroupID_];

    if (v51)
    {
      sub_2645D358C();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v59 = sub_2645D359C();
    (*(*(v59 - 8) + 56))(v21, v52, 1, v59);
    v58 = v21;
  }

  else
  {
    v55 = [v46 createURLToConversationForRecipientHandle_];

    if (v55)
    {
      sub_2645D358C();

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v61 = sub_2645D359C();
    (*(*(v61 - 8) + 56))(v19, v56, 1, v61);
    v58 = v19;
  }

  return sub_26456A020(v58, a5, &qword_27FF729E0, &qword_2645D9680);
}

id SMInitiatorAlertUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SMInitiatorAlertUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMInitiatorAlertUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SMInitiatorAlertUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SMInitiatorAlertUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_26456314C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26456316C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26456316C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729F8, &unk_2645D96D0);
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

id _s13SafetyMonitor25SMInitiatorAlertUtilitiesC21recipientsDisplayNameySSSgSo14SMConversationCSgFZ_0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = a1;
  v3 = [v2 receiverHandles];
  sub_264569FD8(0, &qword_27FF72D70, off_279B644D0);
  v4 = sub_2645D3A4C();

  if (v4 >> 62)
  {
LABEL_40:
    v5 = sub_2645D3BCC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < 2)
  {
    if (qword_27FF72748 != -1)
    {
      swift_once();
    }

    v18 = v2;
    v19 = sub_26457325C(v1);
    v46 = v18;

    if (v19 >> 62)
    {
      v8 = sub_2645D3BCC();
      if (v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_14:
        v2 = v19;
        v50 = MEMORY[0x277D84F90];
        sub_26456314C(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
          goto LABEL_46;
        }

        v20 = v50;
        v21 = objc_opt_self();
        v22 = 0;
        v23 = v2;
        v48 = v21;
        v49 = v2 & 0xC000000000000001;
        v47 = v2 & 0xFFFFFFFFFFFFFF8;
        v1 = v2;
        do
        {
          v4 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          if (v49)
          {
            v24 = MEMORY[0x26673C9D0](v22, v23);
          }

          else
          {
            if (v22 >= *(v47 + 16))
            {
              goto LABEL_39;
            }

            v24 = v23[v22 + 4];
          }

          v25 = v24;
          result = [v48 componentsForContact_];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v27 = result;
          v28 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];
          v29 = sub_2645D398C();
          v31 = v30;

          v50 = v20;
          v2 = v20[2];
          v32 = v20[3];
          if (v2 >= v32 >> 1)
          {
            sub_26456314C((v32 > 1), v2 + 1, 1);
            v20 = v50;
          }

          v20[2] = v2 + 1;
          v33 = &v20[2 * v2];
          v33[4] = v29;
          v33[5] = v31;
          ++v22;
          v23 = v1;
        }

        while (v4 != v8);

        if (!v20[2])
        {
          goto LABEL_43;
        }

        goto LABEL_26;
      }
    }

    v20 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_26:
    v8 = v20[4];
    v4 = v20[5];

    v34 = qword_27FF72658;

    if (v34 == -1)
    {
LABEL_27:
      v35 = sub_2645D38CC();
      __swift_project_value_buffer(v35, qword_27FF72AD8);

      v36 = sub_2645D38AC();
      v37 = sub_2645D3AEC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v50 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_264561058(0xD000000000000019, 0x80000002645DAC00, &v50);
        *(v38 + 12) = 2080;
        v40 = sub_264561058(v8, v4, &v50);

        *(v38 + 14) = v40;
        _os_log_impl(&dword_26455D000, v36, v37, "%s, got contact name %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26673D4A0](v39, -1, -1);
        MEMORY[0x26673D4A0](v38, -1, -1);

        return v8;
      }

LABEL_36:

      return v8;
    }

LABEL_44:
    swift_once();
    goto LABEL_27;
  }

  v6 = [v2 displayName];
  if (!v6)
  {
    if (qword_27FF72658 == -1)
    {
LABEL_31:
      v41 = sub_2645D38CC();
      __swift_project_value_buffer(v41, qword_27FF72AD8);
      v42 = sub_2645D38AC();
      v43 = sub_2645D3AEC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_264561058(0xD000000000000019, 0x80000002645DAC00, &v50);
        _os_log_impl(&dword_26455D000, v42, v43, "%s, no custom group chat display name found", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x26673D4A0](v45, -1, -1);
        MEMORY[0x26673D4A0](v44, -1, -1);
      }

      return 0;
    }

LABEL_46:
    swift_once();
    goto LABEL_31;
  }

  v7 = v6;
  v8 = sub_2645D398C();
  v10 = v9;

  v11 = qword_27FF72658;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_2645D38CC();
  __swift_project_value_buffer(v12, qword_27FF72AD8);

  v13 = sub_2645D38AC();
  v14 = sub_2645D3AEC();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_36;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v50 = v16;
  *v15 = 136315394;
  *(v15 + 4) = sub_264561058(0xD000000000000019, 0x80000002645DAC00, &v50);
  *(v15 + 12) = 2080;
  v17 = sub_264561058(v8, v10, &v50);

  *(v15 + 14) = v17;
  _os_log_impl(&dword_26455D000, v13, v14, "%s, got group chat display name %s", v15, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x26673D4A0](v16, -1, -1);
  MEMORY[0x26673D4A0](v15, -1, -1);

  return v8;
}

uint64_t _s13SafetyMonitor25SMInitiatorAlertUtilitiesC10alertTitle4with11addTimeMode12shortStrings05watchM0SSSo21SMSessionManagerStateCSg_S3btFZ_0(void *a1, char a2, int a3, int a4)
{
  v105 = a4;
  v106 = a3;
  v6 = sub_2645D394C();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v104 = &v96[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v101 = &v96[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v96[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v96[-v20];
  MEMORY[0x28223BE20](v19);
  v103 = &v96[-v22];
  v23 = sub_2645D360C();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v96[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_2645D396C();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v96[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    return sub_2645D399C();
  }

  v100 = v28;
  if (!a1)
  {
    goto LABEL_8;
  }

  v32 = a1;
  v33 = &off_279B66000;
  v107 = v32;
  v34 = [v32 configuration];
  if (!v34)
  {

LABEL_8:
    if (qword_27FF72658 != -1)
    {
      swift_once();
    }

    v38 = sub_2645D38CC();
    __swift_project_value_buffer(v38, qword_27FF72AD8);
    v39 = sub_2645D38AC();
    v40 = sub_2645D3B0C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v108 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_264561058(0xD000000000000037, 0x80000002645DD400, &v108);
      _os_log_impl(&dword_26455D000, v39, v40, "Invalid Session State in %s!", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x26673D4A0](v42, -1, -1);
      MEMORY[0x26673D4A0](v41, -1, -1);
    }

    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v43 = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    return sub_2645D39AC();
  }

  v98 = v25;
  v99 = v34;
  v35 = [v107 configuration];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 conversation];

    v33 = &off_279B66000;
    v97 = [v37 isGroup];
  }

  else
  {
    v97 = 0;
  }

  v45 = [v107 v33[201]];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 &selRef_appendFormat_ + 2];
  }

  else
  {
    v47 = 0;
  }

  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC21recipientsDisplayNameySSSgSo14SMConversationCSgFZ_0(v47);
  v49 = v48;

  v50 = [v107 sessionState];
  if (v50 > 8)
  {
    switch(v50)
    {
      case 9:

        if ((v106 & 1) == 0 && (v105 & 1) == 0)
        {
          goto LABEL_52;
        }

        break;
      case 12:
        if (v106)
        {
          if ([v107 sessionEndReason] == 9)
          {
            goto LABEL_41;
          }

          if (!v97 || v49)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if ((v105 & 1) == 0)
          {
            if ([v107 sessionEndReason] == 1)
            {
              if (!v97)
              {
                sub_2645D393C();
                sub_2645D392C();
                sub_2645D391C();

                sub_2645D392C();
                sub_2645D395C();
                sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
                v82 = swift_getObjCClassFromMetadata();
                [objc_opt_self() bundleForClass_];
                sub_2645D35FC();
                goto LABEL_90;
              }

              if (!v49)
              {
                goto LABEL_52;
              }
            }

            else
            {
              if ([v107 sessionEndReason] == 9)
              {

                sub_2645D390C();
                sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
                v67 = swift_getObjCClassFromMetadata();
                [objc_opt_self() bundleForClass_];
                sub_2645D35FC();
                goto LABEL_90;
              }

              if (v97)
              {
                if (v49)
                {
                  goto LABEL_37;
                }

                goto LABEL_96;
              }
            }

LABEL_61:
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v63 = swift_getObjCClassFromMetadata();
            v64 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
            goto LABEL_62;
          }

          [v107 sessionEndReason];
        }

        break;
      case 14:

        if (v106 & 1) != 0 || (v105)
        {
          goto LABEL_52;
        }

        break;
      default:
LABEL_33:

        sub_2645D390C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v51 = swift_getObjCClassFromMetadata();
        v52 = [objc_opt_self() bundleForClass_];
LABEL_89:
        v52;
        sub_2645D35FC();
        goto LABEL_90;
    }

LABEL_57:
    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v61 = swift_getObjCClassFromMetadata();
    v62 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    goto LABEL_62;
  }

  if (v50 != 2)
  {
    if (v50 != 4)
    {
      if (v50 == 7)
      {

        if (v106 & 1) != 0 || (v105)
        {
LABEL_52:
          sub_2645D390C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v60 = swift_getObjCClassFromMetadata();
          [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
LABEL_90:
          v65 = sub_2645D39AC();
          goto LABEL_91;
        }

        goto LABEL_57;
      }

      goto LABEL_33;
    }

    if (v106)
    {
      if (v97)
      {
        if (v49)
        {
LABEL_37:
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
LABEL_38:
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v53 = swift_getObjCClassFromMetadata();
          v54 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
LABEL_62:
          v65 = sub_2645D399C();
LABEL_91:
          v75 = v65;
LABEL_92:

LABEL_93:
          return v75;
        }

LABEL_96:
        sub_2645D390C();
        goto LABEL_38;
      }

      goto LABEL_61;
    }

    if (v105)
    {
LABEL_41:

      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v55 = swift_getObjCClassFromMetadata();
      v56 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      goto LABEL_62;
    }

    v66 = v99;
    if ([v99 sessionType] == 1)
    {
      if (v97)
      {
        if (v49)
        {
          goto LABEL_61;
        }

LABEL_88:
        sub_2645D390C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v74 = swift_getObjCClassFromMetadata();
        v52 = [objc_opt_self() bundleForClass_];
        goto LABEL_89;
      }
    }

    else if (v97)
    {
      if (v49)
      {
        goto LABEL_61;
      }

      goto LABEL_88;
    }

    sub_2645D393C();
    v83 = v66;
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v84 = swift_getObjCClassFromMetadata();
    v85 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    v75 = sub_2645D39AC();

    goto LABEL_93;
  }

  if ([v107 estimatedEndDateStatus] == 2 && (v105 & 1) == 0)
  {
    goto LABEL_88;
  }

  if ([v107 estimatedEndDateStatus] != 3 || (v106 & 1) != 0 || (v105 & 1) != 0)
  {
LABEL_83:
    if ([v107 estimatedEndDateStatus] == 3)
    {
      v71 = [v107 configuration];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 sessionType];

        if (v73 == 4 && (v105 & 1) == 0 && (v106 & 1) == 0)
        {
          goto LABEL_52;
        }
      }
    }

    goto LABEL_88;
  }

  v57 = [v107 estimatedEndDate];
  if (v57)
  {
    v58 = v57;
    sub_2645D35CC();

    v59 = sub_2645D35EC();
    (*(*(v59 - 8) + 56))(v21, 0, 1, v59);
  }

  else
  {
    v59 = sub_2645D35EC();
    (*(*(v59 - 8) + 56))(v21, 1, 1, v59);
  }

  v68 = v103;
  sub_26456A020(v21, v103, &qword_27FF72830, &qword_2645D9648);
  sub_2645D35EC();
  v69 = *(v59 - 8);
  v70 = *(v69 + 48);
  if (v70(v68, 1, v59) == 1)
  {
    sub_26456A088(v68);
    goto LABEL_83;
  }

  v76 = sub_2645D35AC();
  v77 = *(v69 + 8);
  v77(v68, v59);
  v78 = [v107 coarseEstimatedEndDate];
  if (v78)
  {
    v79 = v101;
    v80 = v78;
    sub_2645D35CC();

    v81 = 0;
  }

  else
  {
    v81 = 1;
    v79 = v101;
  }

  (*(v69 + 56))(v79, v81, 1, v59);
  v86 = v79;
  v87 = v102;
  sub_26456A020(v86, v102, &qword_27FF72830, &qword_2645D9648);
  if (v70(v87, 1, v59) == 1)
  {
    sub_26456A088(v87);
    sub_2645D393C();
    sub_2645D392C();
    v88 = [v76 absoluteTimeString:0 preposition:0 capitalized:0];
    sub_2645D398C();

    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v89 = swift_getObjCClassFromMetadata();
    v90 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    v75 = sub_2645D39AC();

    goto LABEL_92;
  }

  v91 = sub_2645D35AC();
  v77(v87, v59);
  sub_2645D393C();
  sub_2645D392C();
  v92 = [v91 absoluteTimeString:0 preposition:0 capitalized:0];
  sub_2645D398C();

  sub_2645D391C();

  sub_2645D392C();
  sub_2645D395C();
  sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
  v93 = swift_getObjCClassFromMetadata();
  v94 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  v95 = sub_2645D39AC();

  return v95;
}

id _s13SafetyMonitor25SMInitiatorAlertUtilitiesC12alertMessage4with11addTimeMode19isWatchNotification12shortStrings05watchP0SSSo21SMSessionManagerStateCSg_S4btFZ_0(void *a1, char a2, int a3, int a4, int a5)
{
  v219 = a5;
  LODWORD(v215) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v208 = v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v209 = v195 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v212 = v195 - v14;
  MEMORY[0x28223BE20](v13);
  v213 = v195 - v15;
  v16 = sub_2645D394C();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v205 = v195 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v204 = v195 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v202 = v195 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v203 = v195 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v206 = v195 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v30 = MEMORY[0x28223BE20](v29);
  v207 = v195 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v211 = v195 - v33;
  MEMORY[0x28223BE20](v32);
  v214 = v195 - v34;
  v35 = sub_2645D35EC();
  v217 = *(v35 - 8);
  v218 = v35;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v195 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v210 = v195 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = v195 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v195 - v44;
  v46 = sub_2645D360C();
  MEMORY[0x28223BE20](v46 - 8);
  v48 = v195 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2645D396C();
  MEMORY[0x28223BE20](v49 - 8);
  v51 = v195 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
LABEL_2:
    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    return sub_2645D39AC();
  }

  v200 = a4;
  v201 = v51;
  v216 = v48;
  if (!a1)
  {
LABEL_8:
    if (qword_27FF72658 != -1)
    {
      swift_once();
    }

    v58 = sub_2645D38CC();
    __swift_project_value_buffer(v58, qword_27FF72AD8);
    v59 = sub_2645D38AC();
    v60 = sub_2645D3B0C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v220 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_264561058(0xD00000000000004DLL, 0x80000002645DAC70, &v220);
      _os_log_impl(&dword_26455D000, v59, v60, "Invalid Session State in %s!", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x26673D4A0](v62, -1, -1);
      MEMORY[0x26673D4A0](v61, -1, -1);
    }

    goto LABEL_2;
  }

  v53 = a1;
  v54 = [v53 configuration];
  if (!v54)
  {

    goto LABEL_8;
  }

  v198 = v54;
  v55 = [v53 configuration];
  v199 = v53;
  if (v55)
  {
    v56 = v55;
    v57 = [v55 conversation];

    v196 = [v57 isGroup];
    v53 = v199;
  }

  else
  {
    v196 = 0;
  }

  v65 = [v53 configuration];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 &selRef_appendFormat_ + 2];

    v53 = v199;
  }

  else
  {
    v67 = 0;
  }

  v195[1] = _s13SafetyMonitor25SMInitiatorAlertUtilitiesC21recipientsDisplayNameySSSgSo14SMConversationCSgFZ_0(v67);
  v197 = v68;

  v69 = [v53 sessionState];
  if (v69 > 8)
  {
    if (v69 == 9)
    {
      goto LABEL_25;
    }

    if (v69 != 12)
    {
      if (v69 != 14)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }

    goto LABEL_52;
  }

  if (v69 == 2)
  {
    v82 = [v198 sessionType];
    if (v82 == 4)
    {
      if ((v219 & 1) == 0 && (v200 & 1) == 0)
      {
        v121 = v198;
        if (v196)
        {
          if (v197)
          {
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
          }

          else
          {
            sub_2645D390C();
          }

          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v122 = swift_getObjCClassFromMetadata();
          v123 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
        }

        else
        {
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v158 = swift_getObjCClassFromMetadata();
          v159 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
        }

        v78 = sub_2645D399C();

        goto LABEL_114;
      }

      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v136 = swift_getObjCClassFromMetadata();
      v137 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      v107 = sub_2645D399C();
      goto LABEL_62;
    }

    if (v82 != 2)
    {
      v83 = v218;
      if (v82 != 1)
      {

        if (qword_27FF72658 != -1)
        {
          swift_once();
        }

        v124 = sub_2645D38CC();
        __swift_project_value_buffer(v124, qword_27FF72AD8);
        v94 = v198;
        v95 = sub_2645D38AC();
        v125 = sub_2645D3B0C();
        if (os_log_type_enabled(v95, v125))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v220 = v127;
          *v126 = 136315394;
          *(v126 + 4) = sub_264561058(0xD00000000000004DLL, 0x80000002645DAC70, &v220);
          *(v126 + 12) = 2048;
          *(v126 + 14) = [v94 sessionType];

          _os_log_impl(&dword_26455D000, v95, v125, "Invalid session type in %s: %lu", v126, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v127);
          MEMORY[0x26673D4A0](v127, -1, -1);
          MEMORY[0x26673D4A0](v126, -1, -1);

          goto LABEL_92;
        }

LABEL_91:

        goto LABEL_92;
      }

      v79 = v198;
      v84 = [v198 time];
      if (v84)
      {
        v85 = v84;
        v86 = [v84 timeBound];

        sub_2645D35CC();
        v87 = v217;
        v88 = v210;
        (*(v217 + 32))(v210, v38, v83);
        v89 = sub_2645D35AC();
        v90 = [v89 absoluteTimeString:0 preposition:2 capitalized:0];

        sub_2645D398C();
        if (v200)
        {
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v91 = swift_getObjCClassFromMetadata();
          v92 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v78 = sub_2645D39AC();

          (*(v87 + 8))(v88, v83);
        }

        else
        {
          if (v219)
          {

            v156 = sub_2645D35AC();
            v157 = [v156 absoluteTimeString:0 preposition:0 capitalized:0];

            sub_2645D398C();
            [v53 estimatedEndDateStatus];
          }

          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v178 = swift_getObjCClassFromMetadata();
          [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v78 = sub_2645D39AC();

          (*(v217 + 8))(v88, v83);
        }

        return v78;
      }

      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v152 = swift_getObjCClassFromMetadata();
      v153 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      v110 = sub_2645D39AC();
      goto LABEL_65;
    }

    v115 = [v53 estimatedEndDate];
    v116 = v218;
    if (v115)
    {
      v117 = v212;
      v118 = v115;
      sub_2645D35CC();

      v119 = v217;
      v120 = *(v217 + 56);
      v120(v117, 0, 1, v116);
    }

    else
    {
      v119 = v217;
      v120 = *(v217 + 56);
      v117 = v212;
      v120(v212, 1, 1, v218);
    }

    v139 = v198;
    v140 = v200;
    v141 = v213;
    sub_26456A020(v117, v213, &qword_27FF72830, &qword_2645D9648);
    v142 = *(v119 + 48);
    if (v142(v141, 1, v116) == 1)
    {
      sub_26456A088(v141);
      if (v140)
      {
        v143 = v199;
        if (v196)
        {
          if (v197)
          {
LABEL_98:
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
LABEL_99:
            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v144 = swift_getObjCClassFromMetadata();
            v145 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
LABEL_133:
            v78 = sub_2645D399C();

            return v78;
          }

LABEL_147:
          sub_2645D390C();
          goto LABEL_99;
        }
      }

      else
      {
        v143 = v199;
        if (v196)
        {
          if (v197)
          {
            goto LABEL_98;
          }

          goto LABEL_147;
        }
      }

      sub_2645D393C();
      sub_2645D392C();
      sub_2645D391C();

      sub_2645D392C();
      sub_2645D395C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v170 = swift_getObjCClassFromMetadata();
      v171 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      goto LABEL_133;
    }

    v146 = sub_2645D35AC();
    v147 = *(v217 + 8);
    v147(v141, v116);
    v215 = v146;
    v148 = [v199 coarseEstimatedEndDate];
    if (v148)
    {
      v149 = v208;
      v150 = v148;
      sub_2645D35CC();

      v151 = 0;
    }

    else
    {
      v151 = 1;
      v149 = v208;
    }

    v120(v149, v151, 1, v116);
    v160 = v209;
    sub_26456A020(v149, v209, &qword_27FF72830, &qword_2645D9648);
    if (v142(v160, 1, v116) == 1)
    {
      sub_26456A088(v160);
      v161 = 0;
      v162 = v215;
      v163 = v215;
    }

    else
    {
      v164 = sub_2645D35AC();
      v147(v160, v116);
      v163 = v164;
      v162 = v215;

      v161 = v163;
    }

    v104 = v198;
    v165 = [v163 absoluteTimeString:0 preposition:0 capitalized:0];
    sub_2645D398C();

    if (v140)
    {
      if (!v196)
      {
        sub_2645D393C();
        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D395C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v172 = swift_getObjCClassFromMetadata();
        v173 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v78 = sub_2645D39AC();

        goto LABEL_129;
      }

      if (!v197)
      {
        sub_2645D393C();
        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D395C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v185 = swift_getObjCClassFromMetadata();
        v186 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v168 = sub_2645D39AC();
        goto LABEL_150;
      }

      goto LABEL_122;
    }

    v169 = v199;
    if ([v199 estimatedEndDateStatus] == 1)
    {
      if ((v219 & 1) == 0)
      {

        v184 = [v163 absoluteTimeString:0 preposition:1 capitalized:0];
        sub_2645D398C();

        if (v196)
        {
          v104 = v198;
          if (!v197)
          {
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v193 = swift_getObjCClassFromMetadata();
            v194 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
            goto LABEL_123;
          }

LABEL_122:
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v166 = swift_getObjCClassFromMetadata();
          v167 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
LABEL_123:
          v168 = sub_2645D399C();
LABEL_150:
          v78 = v168;

          goto LABEL_129;
        }

        sub_2645D393C();
        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D391C();

        sub_2645D392C();
        sub_2645D395C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v189 = swift_getObjCClassFromMetadata();
        v190 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v177 = sub_2645D399C();
LABEL_138:
        v78 = v177;

        goto LABEL_30;
      }
    }

    else
    {
      v174 = [v169 estimatedEndDateStatus];
      v175 = v219;
      if (v174 != 3 || (v219 & 1) == 0)
      {

        v179 = [v199 estimatedEndDateStatus];
        v180 = v198;
        if (v179 == 2 && (v175 & 1) != 0)
        {

          sub_2645D390C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v181 = swift_getObjCClassFromMetadata();
          v182 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v183 = sub_2645D39AC();
        }

        else
        {
          if (v196)
          {
            if (v197)
            {
              sub_2645D393C();
              sub_2645D392C();
              sub_2645D391C();

              sub_2645D392C();
              sub_2645D395C();
            }

            else
            {
              sub_2645D390C();
            }

            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v187 = swift_getObjCClassFromMetadata();
            v188 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
          }

          else
          {
            sub_2645D393C();
            sub_2645D392C();
            sub_2645D391C();

            sub_2645D392C();
            sub_2645D395C();
            sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
            v191 = swift_getObjCClassFromMetadata();
            v192 = [objc_opt_self() bundleForClass_];
            sub_2645D35FC();
          }

          v183 = sub_2645D399C();
        }

        v78 = v183;

        goto LABEL_130;
      }
    }

    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v176 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    v177 = sub_2645D39AC();
    goto LABEL_138;
  }

  if (v69 == 4)
  {

    if ((v200 & 1) == 0 && (v219 & 1) == 0)
    {
      v99 = v198;
      if (v215)
      {
        sub_2645D390C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v100 = swift_getObjCClassFromMetadata();
        v101 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v102 = sub_2645D39AC();
      }

      else
      {
        sub_2645D390C();
        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v128 = swift_getObjCClassFromMetadata();
        v129 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        v102 = sub_2645D399C();
      }

      v78 = v102;

      goto LABEL_114;
    }

LABEL_52:
    sub_2645D390C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v103 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    v107 = sub_2645D39AC();
LABEL_62:
    v78 = v107;

LABEL_114:
    return v78;
  }

  if (v69 != 7)
  {
LABEL_43:

    if (qword_27FF72658 != -1)
    {
      swift_once();
    }

    v93 = sub_2645D38CC();
    __swift_project_value_buffer(v93, qword_27FF72AD8);
    v94 = v198;
    v95 = sub_2645D38AC();
    v96 = sub_2645D3B0C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v220 = v98;
      *v97 = 136315394;
      *(v97 + 4) = sub_264561058(0xD00000000000004DLL, 0x80000002645DAC70, &v220);
      *(v97 + 12) = 2048;
      *(v97 + 14) = [v94 sessionType];

      _os_log_impl(&dword_26455D000, v95, v96, "Invalid state in %s: %lu", v97, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x26673D4A0](v98, -1, -1);
      MEMORY[0x26673D4A0](v97, -1, -1);

LABEL_92:
      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v138 = swift_getObjCClassFromMetadata();
      v105 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      v106 = sub_2645D39AC();

      return v106;
    }

    goto LABEL_91;
  }

LABEL_25:
  v70 = [v53 cacheReleaseDate];
  sub_2645D35CC();

  sub_2645D35DC();
  LOBYTE(v70) = sub_2645D35BC();
  v71 = *(v217 + 8);
  v72 = v43;
  v73 = v218;
  v71(v72, v218);
  v71(v45, v73);
  if ((v70 & 1) == 0)
  {
    v79 = v198;
    if (v215)
    {
      if (v196)
      {
        if (v197)
        {
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
        }

        else
        {
          sub_2645D390C();
        }

        sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
        v80 = swift_getObjCClassFromMetadata();
        v81 = [objc_opt_self() bundleForClass_];
        sub_2645D35FC();
        goto LABEL_64;
      }
    }

    else if (v196 && !v197)
    {
      sub_2645D390C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v134 = swift_getObjCClassFromMetadata();
      v135 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
      goto LABEL_64;
    }

    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v108 = swift_getObjCClassFromMetadata();
    v109 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
LABEL_64:
    v110 = sub_2645D399C();
LABEL_65:
    v78 = v110;

    goto LABEL_114;
  }

  result = [v53 cacheReleaseDate];
  if (result)
  {
    v74 = result;
    v75 = [result relativeTimeString];
    sub_2645D398C();

    if (v200)
    {

      sub_2645D393C();
      sub_2645D392C();
      sub_2645D391C();

      sub_2645D392C();
      sub_2645D395C();
      sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
      v76 = swift_getObjCClassFromMetadata();
      v77 = [objc_opt_self() bundleForClass_];
      sub_2645D35FC();
LABEL_29:
      v78 = sub_2645D399C();

LABEL_30:
LABEL_130:

      return v78;
    }

    if (v215)
    {
      if (v196)
      {
        v104 = v198;
        if (v197)
        {
          goto LABEL_86;
        }

        goto LABEL_128;
      }
    }

    else
    {
      if (v219)
      {

        v111 = v199;
        if ([v199 sessionState] == 14)
        {
          sub_2645D390C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v112 = swift_getObjCClassFromMetadata();
          v113 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v114 = sub_2645D39AC();
        }

        else
        {
          sub_2645D390C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v154 = swift_getObjCClassFromMetadata();
          v155 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v114 = sub_2645D399C();
        }

        v78 = v114;

        return v78;
      }

      if (v196)
      {
        v104 = v198;
        if (v197)
        {
LABEL_86:
          sub_2645D393C();
          sub_2645D392C();
          sub_2645D391C();

LABEL_87:
          sub_2645D392C();
          sub_2645D391C();

          sub_2645D392C();
          sub_2645D395C();
          sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
          v132 = swift_getObjCClassFromMetadata();
          v133 = [objc_opt_self() bundleForClass_];
          sub_2645D35FC();
          v78 = sub_2645D399C();

LABEL_129:
          goto LABEL_130;
        }

LABEL_128:
        sub_2645D393C();
        goto LABEL_87;
      }
    }

    sub_2645D393C();
    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D391C();

    sub_2645D392C();
    sub_2645D395C();
    sub_264569FD8(0, &qword_27FF72A00, off_279B64550);
    v130 = swift_getObjCClassFromMetadata();
    v131 = [objc_opt_self() bundleForClass_];
    sub_2645D35FC();
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_264569FD8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26456A020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26456A088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72830, &qword_2645D9648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Logger.subsystem.getter()
{
  swift_beginAccess();
  v0 = qword_27FF72A08;

  return v0;
}

uint64_t static Logger.subsystem.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27FF72A08 = a1;
  off_27FF72A10 = a2;
}

uint64_t sub_26456A1FC()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A18);
  __swift_project_value_buffer(v0, qword_27FF72A18);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A2C8()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A30);
  __swift_project_value_buffer(v0, qword_27FF72A30);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A394()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A48);
  __swift_project_value_buffer(v0, qword_27FF72A48);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A460()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A60);
  __swift_project_value_buffer(v0, qword_27FF72A60);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A52C()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A78);
  __swift_project_value_buffer(v0, qword_27FF72A78);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A5F8()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_280BCB620);
  __swift_project_value_buffer(v0, qword_280BCB620);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A6C4()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72A90);
  __swift_project_value_buffer(v0, qword_27FF72A90);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A790()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72AA8);
  __swift_project_value_buffer(v0, qword_27FF72AA8);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A85C()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72AC0);
  __swift_project_value_buffer(v0, qword_27FF72AC0);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A928()
{
  v0 = sub_2645D38CC();
  __swift_allocate_value_buffer(v0, qword_27FF72AD8);
  __swift_project_value_buffer(v0, qword_27FF72AD8);
  swift_beginAccess();

  return sub_2645D38BC();
}

uint64_t sub_26456A9F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2645D38CC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

uint64_t sub_26456AB08(uint64_t a1)
{
  v2 = sub_26456B094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26456AB44(uint64_t a1)
{
  v2 = sub_26456B094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26456AC3C(uint64_t a1)
{
  v2 = sub_26456B040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26456AC78(uint64_t a1)
{
  v2 = sub_26456B040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26456ACF8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_2645D3C4C();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_26456AEEC()
{
  result = qword_280BCB648;
  if (!qword_280BCB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCB648);
  }

  return result;
}

unint64_t sub_26456AF44()
{
  result = qword_280BCB638;
  if (!qword_280BCB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCB638);
  }

  return result;
}

unint64_t sub_26456AF9C()
{
  result = qword_280BCB640;
  if (!qword_280BCB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCB640);
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

unint64_t sub_26456B040()
{
  result = qword_27FF72AF8;
  if (!qword_27FF72AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72AF8);
  }

  return result;
}

unint64_t sub_26456B094()
{
  result = qword_27FF72B08;
  if (!qword_27FF72B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B08);
  }

  return result;
}

unint64_t sub_26456B0E8()
{
  result = qword_27FF72B10;
  if (!qword_27FF72B10)
  {
    type metadata accessor for SMSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B10);
  }

  return result;
}

unint64_t sub_26456B164()
{
  result = qword_27FF72B18;
  if (!qword_27FF72B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B18);
  }

  return result;
}

unint64_t sub_26456B1BC()
{
  result = qword_27FF72B20;
  if (!qword_27FF72B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B20);
  }

  return result;
}

unint64_t sub_26456B214()
{
  result = qword_27FF72B28;
  if (!qword_27FF72B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B28);
  }

  return result;
}

unint64_t sub_26456B26C()
{
  result = qword_27FF72B30;
  if (!qword_27FF72B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72B30);
  }

  return result;
}

uint64_t sub_26456B358(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

id sub_26456B3DC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = sub_2645D397C();

  return v6;
}

uint64_t static SendValidity.sendValidity(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 1;
  v3 = 7;
  switch(result)
  {
    case 18:
    case 19:
      break;
    case 23:
      v3 = 6;
      break;
    case 25:
      v3 = 0;
      v2 = 0;
      break;
    case 26:
      v2 = 0;
      v3 = 2;
      break;
    case 27:
      v2 = 0;
      v3 = 3;
      break;
    case 28:
      v2 = 0;
      v3 = 4;
      break;
    case 29:
      v2 = 0;
      v3 = 5;
      break;
    case 30:
      v2 = 0;
      v3 = 6;
      break;
    case 31:
      v2 = 0;
      v3 = 7;
      break;
    case 32:
      v2 = 0;
      goto LABEL_15;
    case 33:
      v2 = 0;
      v3 = 9;
      break;
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
      v3 = 1;
      break;
    case 50:
      v2 = 0;
      v3 = 10;
      break;
    case 51:
      v2 = 0;
      v3 = 11;
      break;
    case 52:
      v2 = 0;
      v3 = 12;
      break;
    default:
      v2 = 1;
LABEL_15:
      v3 = 8;
      break;
  }

  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t SendValidity.alertErrorMessage.getter()
{
  v1 = *v0;
  if (*(v0 + 8) != 1)
  {
    if (v1 > 6)
    {
      if (v1 <= 9)
      {
        if (v1 == 7)
        {
          if (qword_27FF72720 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CB8;
          goto LABEL_41;
        }

        if (v1 == 8)
        {
          if (qword_27FF72728 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CC8;
          goto LABEL_41;
        }
      }

      else
      {
        switch(v1)
        {
          case 10:
            if (qword_27FF72730 != -1)
            {
              swift_once();
            }

            v2 = &qword_27FF72CD8;
            goto LABEL_41;
          case 11:
            if (qword_27FF72738 != -1)
            {
              swift_once();
            }

            v2 = &qword_27FF72CE8;
            goto LABEL_41;
          case 12:
            if (qword_27FF72740 != -1)
            {
              swift_once();
            }

            v2 = &qword_27FF72CF8;
            goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (v1 > 4)
    {
      if (v1 == 5)
      {
        if (qword_27FF72710 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72C98;
      }

      else
      {
        if (qword_27FF72718 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72CA8;
      }

      goto LABEL_41;
    }

    if (v1 != 1)
    {
      if (v1 == 4)
      {
        if (qword_27FF72708 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72C88;
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    return 0;
  }

  if (v1 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 == 6)
      {
        if (qword_27FF726D0 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72C18;
      }

      else
      {
        if (qword_27FF726D8 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72C28;
      }

      goto LABEL_41;
    }

    if (v1 == 8)
    {
      goto LABEL_38;
    }

    if (v1 == 9)
    {
      if (qword_27FF726C8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C08;
      goto LABEL_41;
    }

    return 0;
  }

  if (v1 > 2)
  {
LABEL_38:
    if (qword_27FF726E0 != -1)
    {
      swift_once();
    }

    v2 = &qword_27FF72C38;
    goto LABEL_41;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      if (qword_27FF726C0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72BF8;
    }

    else
    {
      if (qword_27FF72668 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72B48;
    }
  }

  else
  {
    if (qword_27FF72660 != -1)
    {
      swift_once();
    }

    v2 = &qword_27FF72B38;
  }

LABEL_41:
  v3 = *v2;

  return v3;
}

id SendValidityUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendValidityUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendValidityUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SendValidityUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SendValidityUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t SendValidity.platterErrorMessage.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8) != 1)
  {
    return sub_26456BD84(v3);
  }

  if (v3 <= 5)
  {
    if (v3 <= 2)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (qword_27FF726C0 != -1)
          {
            swift_once();
          }

          v4 = &qword_27FF72BF8;
        }

        else
        {
          if (qword_27FF72668 != -1)
          {
            swift_once();
          }

          v4 = &qword_27FF72B48;
        }
      }

      else
      {
        if (qword_27FF72660 != -1)
        {
          swift_once();
        }

        v4 = &qword_27FF72B38;
      }

LABEL_19:
      v6 = *v4;

      return v6;
    }

LABEL_16:
    if (qword_27FF726B8 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FF72BE8;
    goto LABEL_19;
  }

  if (v3 <= 7)
  {
    if (v3 == 6)
    {
      if (qword_27FF726D0 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF72C18;
    }

    else
    {
      if (qword_27FF726D8 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF72C28;
    }

    goto LABEL_19;
  }

  if (v3 == 8)
  {
    goto LABEL_16;
  }

  if (v3 == 9)
  {
    if (qword_27FF726C8 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FF72C08;
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_26456BD84(uint64_t a1)
{
  if (a1 > 6)
  {
    if (a1 <= 9)
    {
      if (a1 == 7)
      {
        if (qword_27FF72690 != -1)
        {
          swift_once();
        }

        v1 = &qword_27FF72B98;
        goto LABEL_49;
      }

      if (a1 == 8)
      {
        if (qword_27FF72698 != -1)
        {
          swift_once();
        }

        v1 = &qword_27FF72BA8;
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    switch(a1)
    {
      case 10:
        if (qword_27FF726A0 != -1)
        {
          swift_once();
        }

        v1 = &qword_27FF72BB8;
        goto LABEL_49;
      case 11:
        if (qword_27FF726A8 != -1)
        {
          swift_once();
        }

        v1 = &qword_27FF72BC8;
        goto LABEL_49;
      case 12:
        if (qword_27FF726B0 != -1)
        {
          swift_once();
        }

        v1 = &qword_27FF72BD8;
        goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      if (qword_27FF72678 != -1)
      {
        swift_once();
      }

      v1 = &qword_27FF72B68;
    }

    else if (a1 == 5)
    {
      if (qword_27FF72680 != -1)
      {
        swift_once();
      }

      v1 = &qword_27FF72B78;
    }

    else
    {
      if (qword_27FF72688 != -1)
      {
        swift_once();
      }

      v1 = &qword_27FF72B88;
    }

    goto LABEL_49;
  }

  if (!a1)
  {
LABEL_46:
    if (qword_27FF726B8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF72BE8;
LABEL_49:
    v2 = *v1;

    return v2;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
LABEL_41:
      if (qword_27FF72610 != -1)
      {
        swift_once();
      }

      v4 = sub_2645D38CC();
      __swift_project_value_buffer(v4, qword_27FF72A18);
      v5 = sub_2645D38AC();
      v6 = sub_2645D3B0C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v13 = v8;
        *v7 = 136315650;
        v9 = sub_2645D39BC();
        v11 = sub_264561058(v9, v10, &v13);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2080;
        *(v7 + 14) = sub_264561058(0xD00000000000003CLL, 0x80000002645DF070, &v13);
        *(v7 + 22) = 2048;
        *(v7 + 24) = a1;
        _os_log_impl(&dword_26455D000, v5, v6, "%s, %s: Unknown eligibilityStatus, %ld", v7, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26673D4A0](v8, -1, -1);
        MEMORY[0x26673D4A0](v7, -1, -1);
      }

      goto LABEL_46;
    }

    goto LABEL_46;
  }

  return 0;
}

uint64_t static SendValidity.initiatorEligibilityFailureReasonAlert(eligibilityStatus:onSend:)(uint64_t a1, char a2)
{
  if (a1 > 6)
  {
    if (a1 <= 9)
    {
      if (a1 == 7)
      {
        if (qword_27FF72720 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72CB8;
        goto LABEL_44;
      }

      if (a1 == 8)
      {
        if (qword_27FF72728 != -1)
        {
          swift_once();
        }

        v2 = &qword_27FF72CC8;
        goto LABEL_44;
      }
    }

    else
    {
      switch(a1)
      {
        case 10:
          if (qword_27FF72730 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CD8;
          goto LABEL_44;
        case 11:
          if (qword_27FF72738 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CE8;
          goto LABEL_44;
        case 12:
          if (qword_27FF72740 != -1)
          {
            swift_once();
          }

          v2 = &qword_27FF72CF8;
LABEL_44:
          v3 = *v2;

          return v3;
      }
    }

LABEL_37:
    if (a2)
    {
      if (qword_27FF726E0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C38;
    }

    else
    {
      if (qword_27FF726E8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C48;
    }

    goto LABEL_44;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (qword_27FF72710 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C98;
    }

    else
    {
      if (qword_27FF72718 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72CA8;
    }

    goto LABEL_44;
  }

  if (a1 != 1)
  {
    if (a1 == 4)
    {
      if (qword_27FF72708 != -1)
      {
        swift_once();
      }

      v2 = &qword_27FF72C88;
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  return 0;
}

unint64_t SendValidity.settingsDeepLinkUrl.getter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    return 0;
  }

  else
  {
    return sub_26456C524(*v2);
  }
}

unint64_t sub_26456C524(uint64_t a1)
{
  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return 0xD000000000000020;
    }

    if (a1 == 5)
    {
      return 0xD000000000000022;
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        return 0xD000000000000013;
      case 7:
        return 0xD000000000000030;
      case 8:
        return 0xD000000000000033;
    }
  }

  if (qword_27FF72610 != -1)
  {
    swift_once();
  }

  v3 = sub_2645D38CC();
  __swift_project_value_buffer(v3, qword_27FF72A18);
  v4 = sub_2645D38AC();
  v5 = sub_2645D3B0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315650;
    v8 = sub_2645D39BC();
    v10 = sub_264561058(v8, v9, &v11);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_264561058(0xD000000000000036, 0x80000002645DEFF0, &v11);
    *(v6 + 22) = 2048;
    *(v6 + 24) = a1;
    _os_log_impl(&dword_26455D000, v4, v5, "%s, %s: Unknown eligibilityStatus, %ld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v7, -1, -1);
    MEMORY[0x26673D4A0](v6, -1, -1);
  }

  return 0;
}

uint64_t sub_26456C7A8()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B38 = result;
  qword_27FF72B40 = v5;
  return result;
}

uint64_t sub_26456C914()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B48 = result;
  qword_27FF72B50 = v5;
  return result;
}

uint64_t sub_26456CA80()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B58 = result;
  qword_27FF72B60 = v5;
  return result;
}

uint64_t sub_26456CBEC()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B68 = result;
  qword_27FF72B70 = v5;
  return result;
}

uint64_t sub_26456CD5C()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B78 = result;
  qword_27FF72B80 = v5;
  return result;
}

uint64_t sub_26456CECC()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B88 = result;
  qword_27FF72B90 = v5;
  return result;
}

uint64_t sub_26456D03C()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72B98 = result;
  qword_27FF72BA0 = v5;
  return result;
}

uint64_t sub_26456D1AC()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BA8 = result;
  qword_27FF72BB0 = v5;
  return result;
}

uint64_t sub_26456D31C()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BB8 = result;
  qword_27FF72BC0 = v5;
  return result;
}

uint64_t sub_26456D48C()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BC8 = result;
  qword_27FF72BD0 = v5;
  return result;
}

uint64_t sub_26456D5FC()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BD8 = result;
  qword_27FF72BE0 = v5;
  return result;
}

uint64_t sub_26456D76C()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BE8 = result;
  qword_27FF72BF0 = v5;
  return result;
}

uint64_t sub_26456D8E4()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72BF8 = result;
  qword_27FF72C00 = v5;
  return result;
}

uint64_t sub_26456DA50()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C08 = result;
  qword_27FF72C10 = v5;
  return result;
}

uint64_t sub_26456DBBC()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C18 = result;
  qword_27FF72C20 = v5;
  return result;
}

uint64_t sub_26456DD28()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C28 = result;
  qword_27FF72C30 = v5;
  return result;
}

uint64_t sub_26456DE94()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C38 = result;
  qword_27FF72C40 = v5;
  return result;
}

uint64_t sub_26456E000()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C48 = result;
  qword_27FF72C50 = v5;
  return result;
}

uint64_t sub_26456E1F8()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C58 = result;
  qword_27FF72C60 = v5;
  return result;
}

uint64_t sub_26456E368()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D399C();
  qword_27FF72C68 = result;
  qword_27FF72C70 = v5;
  return result;
}

uint64_t sub_26456E4E8()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C78 = result;
  qword_27FF72C80 = v5;
  return result;
}

uint64_t sub_26456E658()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C88 = result;
  qword_27FF72C90 = v5;
  return result;
}

uint64_t sub_26456E7C8()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72C98 = result;
  qword_27FF72CA0 = v5;
  return result;
}

uint64_t sub_26456E938()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CA8 = result;
  qword_27FF72CB0 = v5;
  return result;
}

uint64_t sub_26456EAA8()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CB8 = result;
  qword_27FF72CC0 = v5;
  return result;
}

uint64_t sub_26456EC18()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CC8 = result;
  qword_27FF72CD0 = v5;
  return result;
}

uint64_t sub_26456ED88()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CD8 = result;
  qword_27FF72CE0 = v5;
  return result;
}

uint64_t sub_26456EEF8()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CE8 = result;
  qword_27FF72CF0 = v5;
  return result;
}

uint64_t sub_26456F068()
{
  v0 = sub_2645D360C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2645D396C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2645D390C();
  sub_26456FA00();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2645D35FC();
  result = sub_2645D39AC();
  qword_27FF72CF8 = result;
  qword_27FF72D00 = v5;
  return result;
}

void SendValidity.type.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    *a1 = byte_2645D9B7E[*v1];
  }

  else
  {
    *a1 = 0;
  }
}

SafetyMonitor::SendValidity::Case_optional __swiftcall SendValidity.Case.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2645D3BDC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SendValidity.Case.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x64696C6176;
    v7 = 0x456C6172656E6567;
    if (v1 != 10)
    {
      v7 = 0xD000000000000017;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0xD000000000000014;
    if (v1 != 7)
    {
      v9 = 0x4564696C61766E69;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7669656365526F6ELL;
    v3 = 0x61684370756F7267;
    v4 = 0x43676E697373696DLL;
    if (v1 != 4)
    {
      v4 = 0x7964616552746F6ELL;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000012;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_26456F42C()
{
  v0 = SendValidity.Case.rawValue.getter();
  v2 = v1;
  if (v0 == SendValidity.Case.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2645D3BEC();
  }

  return v5 & 1;
}

uint64_t sub_26456F4C8()
{
  sub_2645D3C2C();
  SendValidity.Case.rawValue.getter();
  sub_2645D39DC();

  return sub_2645D3C3C();
}

uint64_t sub_26456F530(uint64_t a1)
{
  SendValidity.Case.rawValue.getter();
  sub_2645D39DC();
}

uint64_t sub_26456F594(uint64_t a1)
{
  sub_2645D3C2C();
  SendValidity.Case.rawValue.getter();
  sub_2645D39DC();

  return sub_2645D3C3C();
}

unint64_t sub_26456F604@<X0>(unint64_t *a1@<X8>)
{
  result = SendValidity.Case.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL _s13SafetyMonitor12SendValidityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 4)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (v3 != 3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 4)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 <= 7)
  {
    if (v2 == 5)
    {
      if (v3 != 5)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == 6)
      {
        if (v3 != 6)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 7)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 8)
  {
    if (v3 != 8)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 9)
  {
    if (v3 != 9)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 9)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_26456F78C()
{
  result = qword_27FF72D08;
  if (!qword_27FF72D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72D08);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SendValidity(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SendValidity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26456F848(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26456F864(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendValidity.Case(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SendValidity.Case(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26456FA00()
{
  result = qword_27FF72A00;
  if (!qword_27FF72A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF72A00);
  }

  return result;
}

uint64_t sub_26456FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_264571B8C(a3, v25 - v10, &qword_27FF72828, &qword_2645D9630);
  v12 = sub_2645D3ACC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2645627C0(v11, &qword_27FF72828, &qword_2645D9630);
  }

  else
  {
    sub_2645D3ABC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2645D3A8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2645D39CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2645627C0(a3, &qword_27FF72828, &qword_2645D9630);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2645627C0(a3, &qword_27FF72828, &qword_2645D9630);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id SMCloudKitFunctionSwift.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_containerName];
  *v3 = 0xD000000000000023;
  *(v3 + 1) = 0x80000002645DFAF0;
  v4 = &v2[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName];
  *v4 = a1;
  *(v4 + 1) = a2;
  v5 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v6 = sub_2645D397C();
  v7 = [v5 initWithContainerIdentifier:v6 environment:1];

  v8 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  *&v2[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_container] = v8;
  v9 = v8;

  v10 = sub_2645D397C();

  v11 = [v9 codeServiceWithName:v10 databaseScope:3];

  *&v2[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_client] = v11;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for SMCloudKitFunctionSwift();
  v12 = v11;
  v13 = objc_msgSendSuper2(&v34, sel_init);
  v14 = qword_27FF72640;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_2645D38CC();
  __swift_project_value_buffer(v16, qword_27FF72A90);
  v17 = v15;
  v18 = sub_2645D38AC();
  v19 = sub_2645D3B1C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315650;
    v32 = v12;
    v22 = v17;
    v23 = [v22 description];
    v24 = sub_2645D398C();
    v26 = v25;

    v27 = sub_264561058(v24, v26, &v33);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_264561058(0xD000000000000012, 0x80000002645DFB20, &v33);
    *(v20 + 22) = 2080;
    v28 = *&v22[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName];
    v29 = *&v22[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName + 8];

    v30 = sub_264561058(v28, v29, &v33);

    *(v20 + 24) = v30;
    _os_log_impl(&dword_26455D000, v18, v19, "#SafetyCache,Receiver,%s,%s,initialized with serviceName %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v21, -1, -1);
    MEMORY[0x26673D4A0](v20, -1, -1);
  }

  else
  {
  }

  return v17;
}

uint64_t sub_264570154(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v65 - v13;
  v15 = v6;
  v16 = [v15 description];
  v17 = sub_2645D398C();
  v71 = v18;
  v72 = v17;

  if (!a4)
  {
    if (qword_27FF72640 != -1)
    {
      swift_once();
    }

    v40 = sub_2645D38CC();
    __swift_project_value_buffer(v40, qword_27FF72A90);
    v41 = v15;

    v21 = sub_2645D38AC();
    v42 = sub_2645D3B1C();

    if (os_log_type_enabled(v21, v42))
    {
      v43 = swift_slowAlloc();
      v68 = v14;
      v44 = v43;
      v67 = swift_slowAlloc();
      v74 = v67;
      *v44 = 136315906;
      v69 = a1;
      *(v44 + 4) = sub_264561058(a1, a2, &v74);
      v70 = a6;
      *(v44 + 12) = 2080;
      v45 = v41;
      v46 = [v45 description];
      v47 = a3;
      v48 = sub_2645D398C();
      LODWORD(v66) = v42;
      v50 = v49;

      v51 = v48;
      a3 = v47;
      v52 = sub_264561058(v51, v50, &v74);

      *(v44 + 14) = v52;
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_264561058(0xD000000000000034, 0x80000002645DFB40, &v74);
      *(v44 + 32) = 2080;
      a6 = v70;
      v53 = *&v45[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName];
      v54 = *&v45[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName + 8];

      v55 = sub_264561058(v53, v54, &v74);

      *(v44 + 34) = v55;
      a1 = v69;
      _os_log_impl(&dword_26455D000, v21, v66, "#SafetyCache,Receiver,sessionID:%s,%s,%s,requesting safety cache without token using serviceName %s", v44, 0x2Au);
      v56 = v67;
      swift_arrayDestroy();
      MEMORY[0x26673D4A0](v56, -1, -1);
      v57 = v44;
      v14 = v68;
      MEMORY[0x26673D4A0](v57, -1, -1);
    }

    goto LABEL_10;
  }

  if (qword_27FF72640 != -1)
  {
    swift_once();
  }

  v19 = sub_2645D38CC();
  __swift_project_value_buffer(v19, qword_27FF72A90);

  v20 = v15;

  v21 = sub_2645D38AC();
  v22 = sub_2645D3B1C();

  LODWORD(v67) = v22;
  if (!os_log_type_enabled(v21, v22))
  {
LABEL_10:

    goto LABEL_11;
  }

  v23 = swift_slowAlloc();
  v68 = a3;
  v24 = v23;
  v66 = swift_slowAlloc();
  v74 = v66;
  *v24 = 136316162;
  v69 = a1;
  *(v24 + 4) = sub_264561058(a1, a2, &v74);
  *(v24 + 12) = 2080;
  v25 = v20;
  v26 = [v25 description];
  v27 = sub_2645D398C();
  v70 = a6;
  v28 = v27;
  v65 = v21;
  v29 = v14;
  v31 = v30;

  v32 = sub_264561058(v28, v31, &v74);
  v14 = v29;

  *(v24 + 14) = v32;
  *(v24 + 22) = 2080;
  *(v24 + 24) = sub_264561058(0xD000000000000034, 0x80000002645DFB40, &v74);
  *(v24 + 32) = 2080;

  v33 = sub_264561058(v68, a4, &v74);

  *(v24 + 34) = v33;
  *(v24 + 42) = 2080;
  v34 = *&v25[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName];
  v35 = *&v25[OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_serviceName + 8];

  v36 = sub_264561058(v34, v35, &v74);
  a6 = v70;

  *(v24 + 44) = v36;
  a1 = v69;
  v37 = v65;
  _os_log_impl(&dword_26455D000, v65, v67, "#SafetyCache,Receiver,sessionID:%s,%s,%s,requesting safety cache with token %s using serviceName %s", v24, 0x34u);
  v38 = v66;
  swift_arrayDestroy();
  MEMORY[0x26673D4A0](v38, -1, -1);
  v39 = v24;
  a3 = v68;
  MEMORY[0x26673D4A0](v39, -1, -1);

LABEL_11:
  v58 = sub_2645D3ACC();
  (*(*(v58 - 8) + 56))(v14, 1, 1, v58);
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v59[4] = a1;
  v59[5] = a2;
  v59[6] = a3;
  v59[7] = a4;
  v61 = v71;
  v60 = v72;
  v59[8] = v15;
  v59[9] = v60;
  v62 = v73;
  v59[10] = v61;
  v59[11] = v62;
  v59[12] = a6;

  v63 = v15;

  sub_26456FA4C(0, 0, v14, &unk_2645D9BB0, v59);
}

uint64_t sub_26457075C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  *(v8 + 56) = v12;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
  *(v8 + 88) = swift_task_alloc();
  v9 = sub_2645D375C();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = type metadata accessor for FetchSafetyCacheResponse(0);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = type metadata accessor for FetchSafetyCacheRequest(0);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2645708DC, 0, 0);
}

uint64_t sub_2645708DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v10 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v10;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  sub_264571A70();
  sub_2645D383C();

  v5 = *(v2 + OBJC_IVAR____TtC13SafetyMonitor23SMCloudKitFunctionSwift_client);
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_264570A04;
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);

  return sub_264577A78(v8, v7, v5);
}

uint64_t sub_264570A04()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_264570F5C;
  }

  else
  {
    v2 = sub_264570B18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264570B18()
{
  v35 = v0;
  v1 = *(v0 + 136);
  v2 = *v1;
  if (*v1)
  {
    v3 = 0;
  }

  else
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);
    sub_264571B8C(v1 + *(*(v0 + 120) + 24), v6, &qword_27FF72D30, &qword_2645D9C00);
    v7 = *(v4 + 48);
    if (v7(v6, 1, v5) == 1)
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      sub_2645D374C();
      if (v7(v9, 1, v8) != 1)
      {
        sub_2645627C0(*(v0 + 88), &qword_27FF72D30, &qword_2645D9C00);
      }
    }

    else
    {
      (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
    }

    sub_264571BF4();
    v3 = sub_2645D3B2C();
  }

  if (qword_27FF72640 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = sub_2645D38CC();
  __swift_project_value_buffer(v12, qword_27FF72A90);
  sub_264571AC8(v10, v11);
  v13 = v3;

  v14 = sub_2645D38AC();
  v15 = sub_2645D3B1C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 128);
  if (v16)
  {
    v30 = *(v0 + 56);
    v31 = *(v0 + 64);
    v18 = v3;
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);
    v21 = swift_slowAlloc();
    v33 = v2;
    v22 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v21 = 136316162;
    v23 = v20;
    v3 = v18;
    *(v21 + 4) = sub_264561058(v23, v19, &v34);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_264561058(v30, v31, &v34);
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_264561058(0xD000000000000034, 0x80000002645DFB40, &v34);
    *(v21 + 32) = 2048;
    v24 = *v17;
    sub_264571B2C(*(v0 + 128), type metadata accessor for FetchSafetyCacheResponse);
    *(v21 + 34) = v24;
    *(v21 + 42) = 2112;
    *(v21 + 44) = v13;
    *v22 = v18;
    v25 = v13;
    _os_log_impl(&dword_26455D000, v14, v15, "#SafetyCache,Receiver,sessionID:%s,%s,%s,received response,responseCode,%ld,record,%@", v21, 0x34u);
    sub_2645627C0(v22, &qword_27FF72D40, &qword_2645D9C08);
    v26 = v22;
    v2 = v33;
    MEMORY[0x26673D4A0](v26, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v32, -1, -1);
    MEMORY[0x26673D4A0](v21, -1, -1);
  }

  else
  {
    sub_264571B2C(*(v0 + 128), type metadata accessor for FetchSafetyCacheResponse);
  }

  v27 = *(v0 + 136);
  (*(v0 + 72))(v2, v3, 0);

  sub_264571B2C(v27, type metadata accessor for FetchSafetyCacheResponse);
  sub_264571B2C(*(v0 + 152), type metadata accessor for FetchSafetyCacheRequest);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_264570F5C()
{
  v22 = v0;
  if (qword_27FF72640 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_2645D38CC();
  __swift_project_value_buffer(v2, qword_27FF72A90);

  v3 = v1;
  v4 = sub_2645D38AC();
  v5 = sub_2645D3B0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = v0[7];
    v20 = v0[8];
    v8 = v0[2];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315906;
    *(v10 + 4) = sub_264561058(v8, v9, &v21);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_264561058(v7, v20, &v21);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_264561058(0xD000000000000034, 0x80000002645DFB40, &v21);
    *(v10 + 32) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 34) = v14;
    *v11 = v14;
    _os_log_impl(&dword_26455D000, v4, v5, "#SafetyCache,Receiver,sessionID:%s,%s,%s,returned error %@", v10, 0x2Au);
    sub_2645627C0(v11, &qword_27FF72D40, &qword_2645D9C08);
    MEMORY[0x26673D4A0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v12, -1, -1);
    MEMORY[0x26673D4A0](v10, -1, -1);
  }

  v15 = v0[21];
  v16 = v0[9];
  v17 = v15;
  v16(1, 0, v15);

  sub_264571B2C(v0[19], type metadata accessor for FetchSafetyCacheRequest);

  v18 = v0[1];

  return v18();
}

uint64_t sub_264571250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  *a1 = a2;
  a1[1] = a3;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    a4 = 0;
    v10 = 0xE000000000000000;
  }

  a1[2] = a4;
  a1[3] = v10;
  return result;
}

void sub_2645713C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_2645D352C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

id SMCloudKitFunctionSwift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SMCloudKitFunctionSwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMCloudKitFunctionSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264571584(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26457167C;

  return v6(a1);
}

uint64_t sub_26457167C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264571774(uint64_t a1)
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
  v10[1] = sub_2645625D0;

  return sub_26457075C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2645718E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264571C40;

  return sub_264571584(a1, v4);
}

uint64_t sub_264571998(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2645625D0;

  return sub_264571584(a1, v4);
}

unint64_t sub_264571A70()
{
  result = qword_27FF72D38;
  if (!qword_27FF72D38)
  {
    type metadata accessor for FetchSafetyCacheRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72D38);
  }

  return result;
}

uint64_t sub_264571AC8(uint64_t a1, uint64_t a2)
{
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  (*(*(SafetyCacheResponse - 8) + 16))(a2, a1, SafetyCacheResponse);
  return a2;
}

uint64_t sub_264571B2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264571B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_264571BF4()
{
  result = qword_27FF72D48;
  if (!qword_27FF72D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF72D48);
  }

  return result;
}

id sub_264571C44()
{
  v1 = OBJC_IVAR___SMContactsManagerInternal_store;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v2 = OBJC_IVAR___SMContactsManagerInternal_keystoFetch;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D68, &unk_2645D9C48);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2645D9C10;
  v4 = *MEMORY[0x277CBCFC0];
  v5 = *MEMORY[0x277CBD098];
  *(v3 + 32) = *MEMORY[0x277CBCFC0];
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x277CBD000];
  v7 = *MEMORY[0x277CBCFF8];
  *(v3 + 48) = *MEMORY[0x277CBD000];
  *(v3 + 56) = v7;
  *&v0[v2] = v3;
  v8 = &v0[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for ContactsManager();
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = objc_msgSendSuper2(&v24, sel_init);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 defaultCenter];
  v17 = *MEMORY[0x277CBD140];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v23[4] = sub_2645747DC;
  v23[5] = v18;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_264572030;
  v23[3] = &block_descriptor;
  v19 = _Block_copy(v23);
  v20 = v15;

  v21 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);

  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_264571E6C(uint64_t a1, void *a2)
{
  if (qword_27FF72650 != -1)
  {
    swift_once();
  }

  v3 = sub_2645D38CC();
  __swift_project_value_buffer(v3, qword_27FF72AC0);
  v4 = a2;
  v5 = sub_2645D38AC();
  v6 = sub_2645D3B1C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = v4;
    v10 = [v9 description];
    v11 = sub_2645D398C();
    v13 = v12;

    v14 = sub_264561058(v11, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26455D000, v5, v6, "%s, CNContactStoreDidChange, clearing cached contact", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26673D4A0](v8, -1, -1);
    MEMORY[0x26673D4A0](v7, -1, -1);
  }

  v15 = &v4[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  v16 = *&v4[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
}

uint64_t sub_264572030(uint64_t a1, uint64_t a2)
{
  v3 = sub_2645D349C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2645D348C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id ContactsManager.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277CBD140] object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ContactsManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2645722F4()
{
  result = [objc_allocWithZone(type metadata accessor for ContactsManager()) init];
  qword_27FF72D50 = result;
  return result;
}

id static ContactsManager.shared.getter()
{
  if (qword_27FF72748 != -1)
  {
    swift_once();
  }

  v1 = qword_27FF72D50;

  return v1;
}

void *sub_2645723DC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = sub_2645D397C();
  v5 = [v3 predicateForContactsMatchingEmailAddress_];

  v6 = *(v2 + OBJC_IVAR___SMContactsManagerInternal_store);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
  v7 = sub_2645D3A3C();
  v13[0] = 0;
  v8 = [v6 unifiedContactsMatchingPredicate:v5 keysToFetch:v7 error:v13];

  v9 = v13[0];
  if (v8)
  {
    sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
    v3 = sub_2645D3A4C();
    v10 = v9;
  }

  else
  {
    v11 = v13[0];
    sub_2645D353C();

    swift_willThrow();
  }

  return v3;
}

void *sub_264572564(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v5 = sub_2645D397C();
  v6 = [v4 initWithStringValue_];

  v7 = [v3 predicateForContactsMatchingPhoneNumber_];
  v8 = *(v2 + OBJC_IVAR___SMContactsManagerInternal_store);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
  v9 = sub_2645D3A3C();
  v15[0] = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:v15];

  v11 = v15[0];
  if (v10)
  {
    sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
    v9 = sub_2645D3A4C();
    v12 = v11;
  }

  else
  {
    v13 = v15[0];
    sub_2645D353C();

    swift_willThrow();
  }

  return v9;
}

unint64_t sub_264572718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];
  if (!a2)
  {
    goto LABEL_19;
  }

  v7 = &v2[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  v8 = *&v2[OBJC_IVAR___SMContactsManagerInternal_cachedContact];
  if (v8)
  {
    v9 = *(v7 + 2);
    if (v9)
    {
      v10 = *(v7 + 1) == a1 && v9 == a2;
      if (v10 || (sub_2645D3BEC() & 1) != 0)
      {
        v11 = qword_27FF72650;
        v12 = v8;
        if (v11 != -1)
        {
          swift_once();
        }

        v13 = sub_2645D38CC();
        __swift_project_value_buffer(v13, qword_27FF72AC0);
        v14 = v12;
        v15 = v3;
        v16 = sub_2645D38AC();
        v17 = sub_2645D3AFC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v81[0] = v19;
          *v18 = 136315650;
          v20 = v15;
          v21 = [v20 description];
          v22 = sub_2645D398C();
          v80 = v6;
          v24 = v23;

          v25 = sub_264561058(v22, v24, v81);

          *(v18 + 4) = v25;
          *(v18 + 12) = 2080;
          *(v18 + 14) = sub_264561058(0x28746361746E6F63, 0xEE00293A68746977, v81);
          *(v18 + 22) = 2080;
          v26 = [v14 givenName];
          v27 = sub_2645D398C();
          v29 = v28;

          v30 = sub_264561058(v27, v29, v81);

          *(v18 + 24) = v30;
          _os_log_impl(&dword_26455D000, v16, v17, "%s, %s: returning cached contact %s", v18, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26673D4A0](v19, -1, -1);
          MEMORY[0x26673D4A0](v18, -1, -1);
        }

        else
        {
        }

        return v14;
      }
    }
  }

  v31 = sub_2645D397C();
  v32 = sub_2645D397C();
  [v6 setValue:v31 forKey:v32];

  v81[0] = a1;
  v81[1] = a2;
  sub_264574410();
  if (sub_2645D3B5C())
  {
    result = sub_2645723DC(a1, a2);
    if (result >> 62)
    {
      v58 = result;
      v59 = sub_2645D3BCC();
      result = v58;
      if (v59)
      {
LABEL_16:
        if ((result & 0xC000000000000001) == 0)
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            if (qword_27FF72650 != -1)
            {
              swift_once();
            }

            v34 = sub_2645D38CC();
            __swift_project_value_buffer(v34, qword_27FF72AC0);
            v35 = v3;
            v36 = sub_2645D38AC();
            v37 = sub_2645D3B0C();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v81[0] = v39;
              *v38 = 136315394;
              v40 = v35;
              v41 = [v40 description];
              v42 = sub_2645D398C();
              v44 = v43;

              v45 = sub_264561058(v42, v44, v81);

              *(v38 + 4) = v45;
              *(v38 + 12) = 2080;
              *(v38 + 14) = sub_264561058(0x28746361746E6F63, 0xEE00293A68746977, v81);
              _os_log_impl(&dword_26455D000, v36, v37, "%s, %s: could not resolve contact due to no handle", v38, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26673D4A0](v39, -1, -1);
              MEMORY[0x26673D4A0](v38, -1, -1);
            }

            return v6;
          }

          goto LABEL_30;
        }

LABEL_39:
        v46 = MEMORY[0x26673C9D0](0);
        goto LABEL_31;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_43:

LABEL_44:
    v62 = *v7;
    *v7 = v6;
    *(v7 + 1) = a1;
    *(v7 + 2) = a2;
    v14 = v6;

    if (qword_27FF72650 != -1)
    {
      swift_once();
    }

    v63 = sub_2645D38CC();
    __swift_project_value_buffer(v63, qword_27FF72AC0);
    v64 = v3;
    v65 = sub_2645D38AC();
    v66 = sub_2645D3AEC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v81[0] = v68;
      *v67 = 136315650;
      v69 = v64;
      v70 = [v69 description];
      v71 = sub_2645D398C();
      v73 = v72;

      v74 = sub_264561058(v71, v73, v81);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_264561058(0x28746361746E6F63, 0xEE00293A68746977, v81);
      *(v67 + 22) = 2080;
      v75 = [v14 givenName];
      v76 = sub_2645D398C();
      v78 = v77;

      v79 = sub_264561058(v76, v78, v81);

      *(v67 + 24) = v79;
      _os_log_impl(&dword_26455D000, v65, v66, "%s, %s: setting cached contact %s", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26673D4A0](v68, -1, -1);
      MEMORY[0x26673D4A0](v67, -1, -1);
    }

    return v14;
  }

  result = sub_264572564(a1, a2);
  if (result >> 62)
  {
    v60 = result;
    v61 = sub_2645D3BCC();
    result = v60;
    if (!v61)
    {
      goto LABEL_43;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_39;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    v46 = *(result + 32);
LABEL_31:
    v47 = v46;

    v48 = [v47 givenName];
    v49 = sub_2645D398C();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      goto LABEL_37;
    }

    v53 = [v47 familyName];
    v54 = sub_2645D398C();
    v56 = v55;

    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
LABEL_37:

      v6 = v47;
    }

    else
    {
    }

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_26457325C(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];
  if (a1)
  {
    v5 = a1;
    v6 = [v5 receiverHandles];
    sub_264569FD8(0, &qword_27FF72D70, off_279B644D0);
    v7 = sub_2645D3A4C();

    if (v7 >> 62)
    {
      v8 = sub_2645D3BCC();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 < 1)
    {
      if (qword_27FF72650 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }

    v50 = MEMORY[0x277D84F90];
    v9 = [v5 receiverHandles];
    v10 = sub_2645D3A4C();

    if (v10 >> 62)
    {
      v11 = sub_2645D3BCC();
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_7:
        v49 = v5;
        if (v11 >= 1)
        {
          for (i = 0; i != v11; ++i)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x26673C9D0](i, v10);
            }

            else
            {
              v13 = *(v10 + 8 * i + 32);
            }

            v14 = v13;
            v15 = [v13 primaryHandle];
            v16 = sub_2645D398C();
            v18 = v17;

            sub_264572718(v16, v18);

            MEMORY[0x26673C870](v19);
            if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2645D3A6C();
            }

            sub_2645D3A7C();
          }

          v34 = v50;
          v5 = v49;
          goto LABEL_28;
        }

        __break(1u);
LABEL_31:
        swift_once();
LABEL_22:
        v35 = sub_2645D38CC();
        __swift_project_value_buffer(v35, qword_27FF72AC0);
        v36 = v2;
        v37 = sub_2645D38AC();
        v38 = sub_2645D3B0C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v50 = v40;
          *v39 = 136315394;
          v41 = v36;
          v42 = v5;
          v43 = [v41 description];
          v44 = sub_2645D398C();
          v46 = v45;

          v47 = sub_264561058(v44, v46, &v50);

          *(v39 + 4) = v47;
          *(v39 + 12) = 2080;
          *(v39 + 14) = sub_264561058(0xD000000000000024, 0x80000002645DFC20, &v50);
          _os_log_impl(&dword_26455D000, v37, v38, "%s, %s: could not resolve contact due to no handles", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26673D4A0](v40, -1, -1);
          MEMORY[0x26673D4A0](v39, -1, -1);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D68, &unk_2645D9C48);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_2645D9C20;
          *(v34 + 32) = v4;
        }

        else
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D68, &unk_2645D9C48);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_2645D9C20;
          *(v34 + 32) = v4;
        }

        return v34;
      }
    }

    v34 = MEMORY[0x277D84F90];
LABEL_28:

    return v34;
  }

  if (qword_27FF72650 != -1)
  {
    swift_once();
  }

  v20 = sub_2645D38CC();
  __swift_project_value_buffer(v20, qword_27FF72AC0);
  v21 = v2;
  v22 = sub_2645D38AC();
  v23 = sub_2645D3B0C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v50 = v26;
    *v25 = 136315394;
    v27 = v21;
    v28 = [v27 description];
    v29 = sub_2645D398C();
    v31 = v30;

    v32 = sub_264561058(v29, v31, &v50);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_264561058(0xD000000000000024, 0x80000002645DFC20, &v50);
    _os_log_impl(&dword_26455D000, v22, v23, "%s, %s: could not resolve contact due to no session state or configuration", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26673D4A0](v26, -1, -1);
    v33 = v25;
    v4 = v24;
    MEMORY[0x26673D4A0](v33, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D68, &unk_2645D9C48);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2645D9C20;
  *(v34 + 32) = v4;
  return v34;
}

uint64_t sub_26457392C(uint64_t result, uint64_t a2)
{
  v61[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (!a2)
    {
      return 0;
    }

    v2 = result;
    v61[0] = *&v57[OBJC_IVAR___SMContactsManagerInternal_keystoFetch];

    sub_264574464(v3);
    v4 = v61[0];
    if (v2 >> 62)
    {
LABEL_42:
      v5 = sub_2645D3BCC();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = OBJC_IVAR___SMContactsManagerInternal_store;

    if (!v5)
    {
      v53 = v2;
      goto LABEL_37;
    }

    v6 = 0;
    v53 = v2;
    v56 = v4;
LABEL_7:
    v7 = v6 + 4;
    while (1)
    {
      v8 = v7 - 4;
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26673C9D0](v7 - 4, v2);
      }

      else
      {
        if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v9 = *(v2 + 8 * v7);
      }

      v4 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v59 = v7 - 3;
      v10 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729F8, &unk_2645D96D0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_2645D9C30;
      v12 = v4;
      v13 = [v4 identifier];
      v14 = sub_2645D398C();
      v16 = v15;

      *(v11 + 32) = v14;
      *(v11 + 40) = v16;
      v17 = sub_2645D3A3C();

      v18 = [v10 predicateForContactsWithIdentifiers_];

      v19 = *&v57[v54];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
      v21 = sub_2645D3A3C();
      v61[0] = 0;
      v22 = [v19 unifiedContactsMatchingPredicate:v18 keysToFetch:v21 error:v61];

      v23 = v61[0];
      if (!v22)
      {
        break;
      }

      sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
      v4 = sub_2645D3A4C();
      v24 = v23;

      if (v4 >> 62)
      {
        if (sub_2645D3BCC())
        {
LABEL_19:
          if ((v4 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x26673C9D0](0, v4);
            goto LABEL_22;
          }

          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_44:
            __break(1u);
          }

          v25 = *(v4 + 32);
LABEL_22:
          v26 = v25;

          v27 = v53;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v53 & 0x8000000000000000) != 0 || (v53 & 0x4000000000000000) != 0)
          {
            v27 = sub_2645745BC(v53);
          }

          v53 = v27;
          v28 = v27 & 0xFFFFFFFFFFFFFF8;
          if ((v7 - 4) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v29 = *(v28 + 8 * v7);
          *(v28 + 8 * v7) = v26;

          v6 = v7 - 3;
          v4 = v56;
          if (v59 == v5)
          {
LABEL_37:

            return v53;
          }

          goto LABEL_7;
        }
      }

      else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      ++v7;
      if (v59 == v5)
      {
        goto LABEL_37;
      }
    }

    v30 = v61[0];

    v31 = sub_2645D353C();

    swift_willThrow();
    if (qword_27FF72650 != -1)
    {
      swift_once();
    }

    v32 = sub_2645D38CC();
    __swift_project_value_buffer(v32, qword_27FF72AC0);
    v33 = v57;
    v34 = v12;

    v35 = v31;
    v36 = sub_2645D38AC();
    v37 = sub_2645D3B0C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61[0] = v60;
      *v38 = 136316162;
      v58 = v37;
      v39 = v33;
      v40 = [v39 description];
      v41 = sub_2645D398C();
      v43 = v42;

      v44 = sub_264561058(v41, v43, v61);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_264561058(0xD000000000000025, 0x80000002645DFC50, v61);
      *(v38 + 22) = 2112;
      *(v38 + 24) = v34;
      *v55 = v34;
      *(v38 + 32) = 2080;
      v45 = v34;
      v46 = MEMORY[0x26673C8A0](v56, v20);
      v48 = v47;

      v49 = sub_264561058(v46, v48, v61);

      *(v38 + 34) = v49;
      *(v38 + 42) = 2080;
      swift_getErrorValue();
      v50 = sub_2645D3C1C();
      v52 = sub_264561058(v50, v51, v61);

      *(v38 + 44) = v52;
      _os_log_impl(&dword_26455D000, v36, v58, "%s, %s: Unable to fetch additional keys for contact - %@, keys - %s| Error: %s", v38, 0x34u);
      sub_264574554(v55);
      MEMORY[0x26673D4A0](v55, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x26673D4A0](v60, -1, -1);
      MEMORY[0x26673D4A0](v38, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_2645740DC()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR___SMContactsManagerInternal_store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
  v2 = sub_2645D3A3C();
  v24[0] = 0;
  v3 = [v1 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v4 = v24[0];
  if (!v3)
  {
    v5 = v4;
    v6 = sub_2645D353C();

    swift_willThrow();
    if (qword_27FF72650 != -1)
    {
      swift_once();
    }

    v7 = sub_2645D38CC();
    __swift_project_value_buffer(v7, qword_27FF72AC0);
    v8 = v0;
    v9 = v6;
    v10 = sub_2645D38AC();
    v11 = sub_2645D3B0C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24[0] = v13;
      *v12 = 136315650;
      v14 = v8;
      v15 = [v14 description];
      v16 = sub_2645D398C();
      v18 = v17;

      v19 = sub_264561058(v16, v18, v24);

      *(v12 + 4) = v19;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_264561058(0xD000000000000012, 0x80000002645DFC80, v24);
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v20 = sub_2645D3C1C();
      v22 = sub_264561058(v20, v21, v24);

      *(v12 + 24) = v22;
      _os_log_impl(&dword_26455D000, v10, v11, "%s, %s: Unable to fetch self contact, error: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26673D4A0](v13, -1, -1);
      MEMORY[0x26673D4A0](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v3;
}

unint64_t sub_264574410()
{
  result = qword_27FF72D60;
  if (!qword_27FF72D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72D60);
  }

  return result;
}

uint64_t sub_264574464(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2645D3BCC();
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

  v13 = sub_2645D3BCC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2645747FC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26457489C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_264574554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D40, &qword_2645D9C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2645745BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2645D3BCC();
  }

  return sub_2645D3B9C();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26457471C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264574778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2645747FC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2645D3BCC();
LABEL_9:
  result = sub_2645D3B9C();
  *v2 = result;
  return result;
}

uint64_t sub_26457489C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2645D3BCC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2645D3BCC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_264574AB0();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72DB0, &qword_2645D9CC8);
            v9 = sub_264574A28(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_264574A28(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26673C9D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_264574AA8;
  }

  __break(1u);
  return result;
}

unint64_t sub_264574AB0()
{
  result = qword_27FF72DB8;
  if (!qword_27FF72DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF72DB0, &qword_2645D9CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72DB8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id CNContact.localizedName.getter()
{
  result = [objc_opt_self() componentsForContact_];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];
    v4 = sub_2645D398C();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_264574C18(uint64_t a1@<X8>)
{
  sub_264577A14();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_264574C54(uint64_t a2@<X8>)
{
  sub_264577A14();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_264574C8C(uint64_t a1, uint64_t a2)
{
  sub_2645D3C2C();
  sub_2645D38EC();
  return sub_2645D3C3C();
}

uint64_t sub_264574CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_264577038();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_264574D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2645D3C2C();
  sub_2645D38EC();
  return sub_2645D3C3C();
}

double sub_264574DC8@<D0>(void *a1@<X8>)
{
  *a1 = qword_27FF72DC0;

  return result;
}

uint64_t sub_264574DD8()
{
  v0 = sub_2645D389C();
  __swift_allocate_value_buffer(v0, qword_27FF74F30);
  __swift_project_value_buffer(v0, qword_27FF74F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E50, &qword_2645DA2F8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E58, &unk_2645DA300) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2645D9CE0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_SUCCESS";
  *(v5 + 8) = 40;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2645D387C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_UNKNOWN_ERROR";
  *(v9 + 8) = 46;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_DENIED";
  *(v11 + 1) = 39;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_MISSING_ACCESS_DATA_RECORD";
  *(v13 + 1) = 59;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_MISSING_SAFETY_CACHE_RECORD";
  *(v15 + 1) = 60;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_MISSING_TOKEN";
  *(v17 + 1) = 46;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_MISSING_RELEASE_TIME";
  *(v19 + 1) = 53;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_ZONE_NOT_FOUND";
  *(v21 + 1) = 47;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "FETCH_SAFETY_CACHE_RESPONSE_CODE_RECORD_TRANSPORT_INIT_FAILURE";
  *(v22 + 8) = 62;
  *(v22 + 16) = 2;
  v8();
  return sub_2645D388C();
}

uint64_t sub_264575204(uint64_t a1, uint64_t a2)
{
  v4 = sub_264576B00(&qword_27FF72E60, type metadata accessor for HelloRequest, &unk_2645DA1E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2645752A4(uint64_t a1)
{
  v2 = sub_264576B00(&qword_27FF72E28, type metadata accessor for HelloRequest, &unk_2645DA218);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_264575310(uint64_t a1, uint64_t a2)
{
  sub_264576B00(&qword_27FF72E28, type metadata accessor for HelloRequest, &unk_2645DA218);

  return sub_2645D382C();
}

uint64_t sub_2645753A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2645D389C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E50, &qword_2645DA2F8);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E58, &unk_2645DA300) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2645D9C30;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_2645D387C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_2645D388C();
}

uint64_t sub_264575510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2645D37CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2645D37EC();
    }
  }

  return result;
}

uint64_t sub_264575580(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_2645D385C(), !v5))
  {
    a4(0);
    return sub_2645D376C();
  }

  return result;
}

uint64_t sub_264575674(uint64_t a1, uint64_t a2)
{
  v4 = sub_264576B00(&qword_27FF72E70, type metadata accessor for HelloResponse, &unk_2645DA078);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_264575714(uint64_t a1)
{
  v2 = sub_264576B00(&qword_27FF72E08, type metadata accessor for HelloResponse, &unk_2645DA0B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_264575780(uint64_t a1, uint64_t a2)
{
  sub_264576B00(&qword_27FF72E08, type metadata accessor for HelloResponse, &unk_2645DA0B0);

  return sub_2645D382C();
}

uint64_t sub_2645757FC(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_2645D3BEC() & 1) == 0)
  {
    return 0;
  }

  sub_2645D378C();
  sub_264576B00(&qword_27FF72E68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2645D38FC() & 1;
}

uint64_t sub_2645758B8()
{
  v0 = sub_2645D389C();
  __swift_allocate_value_buffer(v0, qword_27FF74F78);
  __swift_project_value_buffer(v0, qword_27FF74F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E50, &qword_2645DA2F8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E58, &unk_2645DA300) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2645D9510;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zoneName";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2645D387C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_2645D388C();
}

uint64_t sub_264575A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2645D37CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_2645D37EC();
    }
  }

  return result;
}

uint64_t sub_264575B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_2645D385C(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_2645D385C(), !v4))
    {
      type metadata accessor for FetchSafetyCacheRequest(0);
      return sub_2645D376C();
    }
  }

  return result;
}

uint64_t sub_264575BC4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return sub_2645D377C();
}

uint64_t sub_264575C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2645D378C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_264575C80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2645D378C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_264575D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_264576B00(&qword_27FF72E78, type metadata accessor for FetchSafetyCacheRequest, &unk_2645D9F10);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_264575DE8(uint64_t a1)
{
  v2 = sub_264576B00(&qword_27FF72D38, type metadata accessor for FetchSafetyCacheRequest, &unk_2645D9F48);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_264575E54(uint64_t a1, uint64_t a2)
{
  sub_264576B00(&qword_27FF72D38, type metadata accessor for FetchSafetyCacheRequest, &unk_2645D9F48);

  return sub_2645D382C();
}

uint64_t sub_264575ED0(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_2645D3BEC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_2645D3BEC() & 1) == 0)
  {
    return 0;
  }

  sub_2645D378C();
  sub_264576B00(&qword_27FF72E68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2645D38FC() & 1;
}

uint64_t sub_264575FAC()
{
  v0 = sub_2645D389C();
  __swift_allocate_value_buffer(v0, qword_27FF74F90);
  __swift_project_value_buffer(v0, qword_27FF74F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E50, &qword_2645DA2F8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E58, &unk_2645DA300) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2645D9510;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "responseCode";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2645D387C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "safetyCacheRecord";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_2645D388C();
}

uint64_t sub_264576174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2645D37CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_264577038();
        sub_2645D37DC();
      }

      else if (result == 2)
      {
        sub_264576234(a1, v5, a2, a3);
      }

      result = sub_2645D37CC();
    }
  }

  return result;
}

uint64_t sub_264576234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchSafetyCacheResponse(0);
  sub_2645D375C();
  sub_264576B00(&qword_27FF72E90, MEMORY[0x277CFB080], MEMORY[0x277CFB078]);
  return sub_2645D37FC();
}

uint64_t sub_2645762E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_264577038(), result = sub_2645D384C(), !v4))
  {
    result = sub_2645763B4(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for FetchSafetyCacheResponse(0);
      return sub_2645D376C();
    }
  }

  return result;
}

uint64_t sub_2645763B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_2645D375C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  sub_26457708C(a1 + *(SafetyCacheResponse + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2645627C0(v7, &qword_27FF72D30, &qword_2645D9C00);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_264576B00(&qword_27FF72E90, MEMORY[0x277CFB080], MEMORY[0x277CFB078]);
  sub_2645D386C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2645765BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_2645D377C();
  v4 = *(a1 + 24);
  v5 = sub_2645D375C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_264576664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2645D378C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2645766D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2645D378C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26457677C(uint64_t a1, uint64_t a2)
{
  v4 = sub_264576B00(&qword_27FF72E80, type metadata accessor for FetchSafetyCacheResponse, &unk_2645D9DA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26457681C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2645D389C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2645768B8(uint64_t a1)
{
  v2 = sub_264576B00(&qword_27FF72DD0, type metadata accessor for FetchSafetyCacheResponse, &unk_2645D9DE0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_264576924(uint64_t a1, uint64_t a2)
{
  sub_2645D3C2C();
  sub_2645D38EC();
  return sub_2645D3C3C();
}

uint64_t sub_26457697C(uint64_t a1, uint64_t a2)
{
  sub_264576B00(&qword_27FF72DD0, type metadata accessor for FetchSafetyCacheResponse, &unk_2645D9DE0);

  return sub_2645D382C();
}

uint64_t sub_2645769F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2645D3C2C();
  sub_2645D38EC();
  return sub_2645D3C3C();
}

uint64_t sub_264576B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264576EC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_264576FD4()
{
  result = qword_27FF72E40;
  if (!qword_27FF72E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF72E48, qword_2645DA2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72E40);
  }

  return result;
}

unint64_t sub_264577038()
{
  result = qword_27FF72E88;
  if (!qword_27FF72E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72E88);
  }

  return result;
}

uint64_t sub_26457708C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2645770FC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2645D375C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72D30, &qword_2645D9C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72E98, &unk_2645DA350);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 <= 3)
    {
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          if (v14 != 2)
          {
            goto LABEL_15;
          }
        }

        else if (v14 != 3)
        {
          goto LABEL_15;
        }
      }

      else if (v15)
      {
        if (v14 != 1)
        {
          goto LABEL_15;
        }
      }

      else if (v14)
      {
        goto LABEL_15;
      }
    }

    else if (v15 <= 5)
    {
      if (v15 == 4)
      {
        if (v14 != 4)
        {
          goto LABEL_15;
        }
      }

      else if (v14 != 5)
      {
        goto LABEL_15;
      }
    }

    else if (v15 == 6)
    {
      if (v14 != 6)
      {
        goto LABEL_15;
      }
    }

    else if (v15 == 7)
    {
      if (v14 != 7)
      {
        goto LABEL_15;
      }
    }

    else if (v14 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_15;
  }

  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  v16 = *(SafetyCacheResponse + 24);
  v17 = *(v11 + 48);
  sub_26457708C(a1 + v16, v13);
  sub_26457708C(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_2645627C0(v13, &qword_27FF72D30, &qword_2645D9C00);
LABEL_22:
      sub_2645D378C();
      sub_264576B00(&qword_27FF72E68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_2645D38FC();
      return v19 & 1;
    }

    goto LABEL_14;
  }

  sub_26457708C(v13, v10);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_2645627C0(v13, &qword_27FF72E98, &unk_2645DA350);
    goto LABEL_15;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_264576B00(&qword_27FF72EA0, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
  v21 = sub_2645D38FC();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_2645627C0(v13, &qword_27FF72D30, &qword_2645D9C00);
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_15:
  v19 = 0;
  return v19 & 1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2645D378C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2645D378C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2645776D8(uint64_t a1)
{
  result = sub_2645D378C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26457777C(uint64_t a1)
{
  result = sub_2645D378C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_264577820(uint64_t a1)
{
  sub_2645D378C();
  if (v1 <= 0x3F)
  {
    sub_2645778B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2645778B4(uint64_t a1)
{
  if (!qword_27FF72EE8)
  {
    sub_2645D375C();
    v1 = sub_2645D3B4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF72EE8);
    }
  }
}

unint64_t sub_264577910()
{
  result = qword_27FF72EF0;
  if (!qword_27FF72EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72EF0);
  }

  return result;
}

unint64_t sub_264577968()
{
  result = qword_27FF72EF8;
  if (!qword_27FF72EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72EF8);
  }

  return result;
}

unint64_t sub_2645779C0()
{
  result = qword_27FF72F00;
  if (!qword_27FF72F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF72F00);
  }

  return result;
}

uint64_t sub_264577A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F08, &qword_2645DA508);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264577B18, 0, 0);
}

uint64_t sub_264577B18()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_264577ED4(v0[3], v1);
  SafetyCacheRequest = type metadata accessor for FetchSafetyCacheRequest(0);
  (*(*(SafetyCacheRequest - 8) + 56))(v1, 0, 1, SafetyCacheRequest);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F10, &qword_2645DA510));
  v5 = sub_2645D373C();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  *v8 = v0;
  v8[1] = sub_264577CBC;
  v10 = v0[2];

  return MEMORY[0x282200830](v10, &unk_2645DA520, v6, sub_264578540, v7, 0, 0, SafetyCacheResponse);
}

uint64_t sub_264577CBC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_264577E4C;
  }

  else
  {

    v2 = sub_264577DE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264577DE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264577E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264577ED4(uint64_t a1, uint64_t a2)
{
  SafetyCacheRequest = type metadata accessor for FetchSafetyCacheRequest(0);
  (*(*(SafetyCacheRequest - 8) + 16))(a2, a1, SafetyCacheRequest);
  return a2;
}

uint64_t sub_264577F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264577F5C, 0, 0);
}

uint64_t sub_264577F5C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  *v2 = v0;
  v2[1] = sub_264578058;
  v4 = *(v0 + 16);

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002645DFFB0, sub_264578550, v1, SafetyCacheResponse);
}

uint64_t sub_264578058()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264578194, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_264578194()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2645781F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2645625D0;

  return sub_264577F38(a1, v5, v4);
}

uint64_t sub_2645782A4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  (*(v4 + 16))(&v10 - v5, a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v6, v3);
  sub_2645D372C();
  return sub_2645D3ADC();
}

uint64_t sub_2645783F4(uint64_t a1)
{
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  MEMORY[0x28223BE20](SafetyCacheResponse - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F20, &qword_2645DA530);
  MEMORY[0x28223BE20](v5);
  v7 = (v9 - v6);
  sub_2645785D4(a1, v9 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);
    return sub_2645D3A9C();
  }

  else
  {
    sub_264578644(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);
    return sub_2645D3AAC();
  }
}

uint64_t sub_264578558(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F18, &qword_2645DA528);

  return sub_2645783F4(a1);
}

uint64_t sub_2645785D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F20, &qword_2645DA530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264578644(uint64_t a1, uint64_t a2)
{
  SafetyCacheResponse = type metadata accessor for FetchSafetyCacheResponse(0);
  (*(*(SafetyCacheResponse - 8) + 32))(a2, a1, SafetyCacheResponse);
  return a2;
}

void sub_2645786A8()
{
  v0 = sub_2645D397C();
  v1 = MGGetBoolAnswer();

  byte_27FF74FA8 = v1;
}

uint64_t sub_264578700()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF729E0, &qword_2645D9680);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2645787D4, 0, 0);
}

uint64_t sub_2645787D4()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  sub_2645D34DC();
  v2 = sub_2645D359C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[11];
  if (v5 == 1)
  {
    sub_2645627C0(v0[11], &qword_27FF729E0, &qword_2645D9680);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = sub_2645D356C();
    v8 = v9;
    (*(v3 + 8))(v6, v2);
  }

  if (qword_27FF72778 != -1)
  {
    swift_once();
  }

  if (byte_27FF74FA8 != 1)
  {
    if (qword_27FF72648 != -1)
    {
      swift_once();
    }

    v24 = sub_2645D38CC();
    __swift_project_value_buffer(v24, qword_27FF72AA8);

    v25 = sub_2645D38AC();
    v26 = sub_2645D3AEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44[0] = v28;
      *v27 = 67109378;
      *(v27 + 8) = 2080;
      if (v8)
      {
        v29 = v7;
      }

      else
      {
        v29 = 0;
      }

      if (v8)
      {
        v30 = v8;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      v31 = sub_264561058(v29, v30, v44);

      *(v27 + 10) = v31;
      _os_log_impl(&dword_26455D000, v25, v26, "TTR isInternal:%{BOOL}d, radar info:%s", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26673D4A0](v28, -1, -1);
      MEMORY[0x26673D4A0](v27, -1, -1);

      goto LABEL_37;
    }

    goto LABEL_29;
  }

  if (byte_27FF74FA9 == 1)
  {
LABEL_29:

    goto LABEL_37;
  }

  aBlock = v7;
  byte_27FF74FA9 = 1;
  v0[8] = 3;
  v10 = sub_2645D397C();
  v11 = sub_2645D397C();
  v12 = sub_2645D397C();
  v13 = sub_2645D397C();
  v42 = v11;
  v43 = v10;
  v14 = v11;
  v15 = v12;
  v16 = v13;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v10, v14, v15, v13, 0, v0 + 8);
  if (v0[8])
  {
    if (qword_27FF72648 != -1)
    {
      swift_once();
    }

    v17 = sub_2645D38CC();
    __swift_project_value_buffer(v17, qword_27FF72AA8);

    v18 = sub_2645D38AC();
    v19 = sub_2645D3B0C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136315138;
      if (v8)
      {
        v22 = aBlock;
      }

      else
      {
        v22 = 0;
      }

      if (!v8)
      {
        v8 = 0xE000000000000000;
      }

      v23 = sub_264561058(v22, v8, v44);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_26455D000, v18, v19, "TTR Dismissed, radar info: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26673D4A0](v21, -1, -1);
      MEMORY[0x26673D4A0](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v32 = [objc_opt_self() defaultWorkspace];
    if (v32)
    {
      v33 = v32;
      v34 = v0[10];
      sub_2645D34DC();
      if (v4(v34, 1, v2) == 1)
      {
        v35 = 0;
      }

      else
      {
        v36 = v0[10];
        v35 = sub_2645D357C();
        (*(v3 + 8))(v36, v2);
      }

      v37 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
      v0[6] = sub_264578E6C;
      v0[7] = 0;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_264578FD0;
      v0[5] = &block_descriptor_0;
      v38 = _Block_copy(v0 + 2);
      [v33 openURL:v35 configuration:v37 completionHandler:v38];
      _Block_release(v38);
    }
  }

  byte_27FF74FA9 = 0;

LABEL_37:

  v39 = v0[1];

  return v39();
}

void sub_264578E6C(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (qword_27FF72648 != -1)
    {
      swift_once();
    }

    v3 = sub_2645D38CC();
    __swift_project_value_buffer(v3, qword_27FF72AA8);
    v4 = a2;
    oslog = sub_2645D38AC();
    v5 = sub_2645D3B0C();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_26455D000, oslog, v5, "TTR Error filing radar: %@", v6, 0xCu);
      sub_2645627C0(v7, &qword_27FF72D40, &qword_2645D9C08);
      MEMORY[0x26673D4A0](v7, -1, -1);
      MEMORY[0x26673D4A0](v6, -1, -1);
    }
  }
}

uint64_t sub_264578FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2645D38DC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_26457907C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264571C40;

  return sub_26457AB80(a1, a2, a3);
}

uint64_t sub_2645792C8(void *a1, uint64_t a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = sub_2645D398C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  v8 = a1;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_2645793C4;

  return sub_26457AB80(v8, a2, v7);
}

uint64_t sub_2645793C4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_264579520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 2)
  {
    if ((a1 - 3) < 7)
    {
LABEL_3:
      v4 = v3[1];

      return v4();
    }

LABEL_10:
    v6 = a3;
    v7 = a2;
    v8 = swift_task_alloc();
    v3[4] = v8;
    *v8 = v3;
    v9 = sub_26457982C;
    goto LABEL_11;
  }

  if (!a1)
  {
    v6 = a3;
    v7 = a2;
    v12 = swift_task_alloc();
    v3[2] = v12;
    *v12 = v3;
    v12[1] = sub_2645625D0;
    v11 = 0xD00000000000002DLL;
    v10 = 0x80000002645E0000;
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    goto LABEL_3;
  }

  if (a1 != 2)
  {
    goto LABEL_10;
  }

  v6 = a3;
  v7 = a2;
  v8 = swift_task_alloc();
  v3[3] = v8;
  *v8 = v3;
  v9 = sub_264579738;
LABEL_11:
  v8[1] = v9;
  v10 = 0x80000002645DFFD0;
  v11 = 0xD000000000000029;
LABEL_13:

  return sub_26457A460(v11, v10, 0, 0, v7, v6);
}

uint64_t sub_264579738()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26457982C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264579920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_264571C40;

  return sub_26457A460(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_264579BA4(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_2645D398C();
    v9 = v8;
    v4[3] = v8;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    v4[4] = 0;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v4[3] = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  a2 = sub_2645D398C();
  v11 = v10;
  v4[4] = v10;
  if (a3)
  {
LABEL_4:
    a3 = sub_2645D398C();
    v13 = v12;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  v4[5] = v13;
  v14 = swift_task_alloc();
  v4[6] = v14;
  *v14 = v4;
  v14[1] = sub_264579CF0;

  return sub_26457A460(a1, v9, a2, v11, a3, v13);
}

uint64_t sub_264579CF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

id SMTapToRadarManagerInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SMTapToRadarManagerInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMTapToRadarManagerInternal(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264579FA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_264571C40;

  return v6();
}

uint64_t sub_26457A08C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_264571C40;

  return v7();
}

uint64_t sub_26457A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_26457B4FC(a3, v23 - v10);
  v12 = sub_2645D3ACC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2645627C0(v11, &qword_27FF72828, &qword_2645D9630);
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

  sub_2645D3ABC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2645D3A8C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2645D39CC() + 32;
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

    sub_2645627C0(a3, &qword_27FF72828, &qword_2645D9630);

    return v21;
  }

LABEL_8:
  sub_2645627C0(a3, &qword_27FF72828, &qword_2645D9630);
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

uint64_t sub_26457A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_2645D351C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26457A534, 0, 0);
}

uint64_t sub_26457A534()
{
  super_class = v0[6].super_class;
  receiver = v0[5].receiver;
  v10 = v0[6].receiver;
  v8 = v0[5].super_class;
  sub_2645D350C();
  sub_2645D34FC();
  MEMORY[0x26673C330](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F38, &qword_2645DA640);
  sub_2645D34BC();
  *(swift_allocObject() + 16) = xmmword_2645D9CE0;
  sub_2645D34AC();
  sub_2645D34AC();
  sub_2645D34AC();
  sub_2645D34AC();
  sub_2645D34AC();
  sub_2645D34AC();

  sub_2645D34AC();

  sub_2645D34AC();

  sub_2645D34AC();

  sub_2645D34CC();
  v2 = *(v8 + 2);
  v2(v10, super_class, receiver);
  v3 = type metadata accessor for SMTapToRadarManagerInternal(0);
  v4 = objc_allocWithZone(v3);
  v2(&v4[OBJC_IVAR____TtC13SafetyMonitor27SMTapToRadarManagerInternal_urlComponents], v10, receiver);
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v0[7].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v5 = *(v8 + 1);
  v0[7].super_class = v5;
  v0[8].receiver = ((v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  (v5)(v10, receiver);
  v6 = swift_task_alloc();
  v0[8].super_class = v6;
  *v6 = v0;
  *(v6 + 1) = sub_26457A9EC;

  return sub_264578700();
}

uint64_t sub_26457A9EC()
{

  return MEMORY[0x2822009F8](sub_26457AAE8, 0, 0);
}

uint64_t sub_26457AAE8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26457AB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26457ABA4, 0, 0);
}

uint64_t sub_26457ABA4()
{
  v1 = v0[5];
  sub_2645D3B7C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x26673C830](0xD000000000000017, 0x80000002645E0260);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72F40, &qword_2645DA648);
  sub_2645D3BBC();
  v2 = v0[2];
  v3 = v0[3];
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_26457ACEC;
  v5 = v0[6];
  v6 = v0[7];

  return sub_26457A460(v2, v3, 0, 0, v5, v6);
}

uint64_t sub_26457ACEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for SMTapToRadarManagerInternal(uint64_t a1)
{
  result = qword_27FF72F28;
  if (!qword_27FF72F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26457AE50(uint64_t a1, uint64_t a2)
{
  result = sub_2645D351C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of static SMTapToRadarManagerInternal.fileRadar(withError:conversationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 104) + **(v3 + 104));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_264571C40;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of static SMTapToRadarManagerInternal.fileRadar(withValidity:conversationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 112) + **(v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2645625D0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of static SMTapToRadarManagerInternal.fileRadar(withTitle:description:conversationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(v6 + 120) + **(v6 + 120));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_264571C40;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26457B2A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264571C40;

  return sub_264579BA4(v2, v3, v4, v5);
}

uint64_t sub_26457B370()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264571C40;

  return sub_264579FA4(v2, v3, v4);
}

uint64_t sub_26457B430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264571C40;

  return sub_26457A08C(a1, v4, v5, v6);
}

uint64_t sub_26457B4FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26457B56C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264571C40;

  return sub_264571584(a1, v4);
}

uint64_t sub_26457B624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2645625D0;

  return sub_264571584(a1, v4);
}

uint64_t sub_26457B6DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264571C40;

  return sub_2645792C8(v2, v3, v4);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_264580BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2645818E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t IMSharedUtilitiesLibraryCore(uint64_t a1)
{
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    IMSharedUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return IMSharedUtilitiesLibraryCore_frameworkLibrary;
}

uint64_t getIMChatCanonicalIDSIDsForAddressSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMChatCanonicalIDSIDsForAddressSymbolLoc_ptr;
  v6 = getIMChatCanonicalIDSIDsForAddressSymbolLoc_ptr;
  if (!getIMChatCanonicalIDSIDsForAddressSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getIMChatCanonicalIDSIDsForAddressSymbolLoc_block_invoke;
    v2[3] = &unk_279B64B90;
    v2[4] = &v3;
    __getIMChatCanonicalIDSIDsForAddressSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2645836C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IMSharedUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IMSharedUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIMChatCanonicalIDSIDsForAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = IMSharedUtilitiesLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "IMChatCanonicalIDSIDsForAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMChatCanonicalIDSIDsForAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void log_analytics_submission(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  [v5 appendFormat:@"\n=== BEGIN analytics submission for event %@ ===\n", v3];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        [v5 appendFormat:@"%@ : %@\n", v12, v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  [v5 appendFormat:@"=== END analytics submission for event %@ ===\n", v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_26455D000, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }
}

void sub_264583BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264583CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264587F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26459356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264595280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double RTCommonIsCoordinateValid(double a1, double a2)
{
  v2 = fabs(a1);
  v3 = 1.0;
  if (a2 < -180.0)
  {
    v3 = 0.0;
  }

  if (a2 > 180.0 || v2 > 90.0)
  {
    return 0.0;
  }

  else
  {
    return v3;
  }
}

long double RTCommonGetDestinationCoordinate(double *a1, long double *a2, double a3, double a4, double a5, double a6)
{
  v8 = a4 * 0.0174532925;
  v9 = a5 * 0.0174532925;
  v10 = a6 / 6378137.0;
  v11 = __sincos_stret(a3 * 0.0174532925);
  v12 = __sincos_stret(v10);
  v13 = __sincos_stret(v9);
  v14 = asin(v13.__cosval * (v11.__cosval * v12.__sinval) + v11.__sinval * v12.__cosval);
  v15 = sin(v14);
  v16 = atan2(v11.__cosval * (v13.__sinval * v12.__sinval), v12.__cosval - v11.__sinval * v15);
  *a1 = v14 / 0.0174532925;
  result = (v8 + v16) / 0.0174532925;
  *a2 = result;
  return result;
}

void RTCommonCalculateBoundingBox(double *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7)
{
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      v13 = a6 * 0.0174532925;
      v14 = a7 / 6378137.0;
      v15 = __sincos_stret(a5 * 0.0174532925);
      v16 = __sincos_stret(v14);
      v17 = vabdd_f64(asin(v15.__cosval * v16.__sinval + v15.__sinval * v16.__cosval) / 0.0174532925, a5);
      v18 = asin(v15.__cosval * v16.__sinval * 6.123234e-17 + v15.__sinval * v16.__cosval);
      v19 = sin(v18);
      v20 = vabdd_f64((v13 + atan2(v15.__cosval * v16.__sinval, v16.__cosval - v15.__sinval * v19)) / 0.0174532925, a6);
      *a1 = a5 - v17;
      *a3 = v17 + a5;
      *a2 = a6 - v20;
      *a4 = v20 + a6;
    }
  }
}

BOOL RTCommonConvertGeodeticToLocalFrame(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = vabdd_f64(a4, a7);
  if (v9 <= 2.0)
  {
    v16 = (a4 + a7) * 0.5 * 0.0174532925;
    v17 = (a7 - a4) * 0.0174532925;
    v18 = 360.0;
    if (a5 < 0.0)
    {
      a5 = a5 + 360.0;
    }

    v19 = a8 + 360.0;
    if (a8 >= 0.0)
    {
      v19 = a8;
    }

    v20 = v19 - a5;
    if (v20 <= 180.0)
    {
      if (v20 >= -180.0)
      {
LABEL_10:
        v21 = v20 * 0.0174532925;
        v22 = __sincos_stret(v16);
        v23 = sqrt(v22.__sinval * -0.00669437999 * v22.__sinval + 1.0);
        *a1 = v17 * (6335439.33 / (v23 * (v23 * v23)) + a6);
        *a2 = v22.__cosval * (6378137.0 / v23 + a6) * v21;
        *a3 = a9 - a6;
        return v9 <= 2.0;
      }
    }

    else
    {
      v18 = -360.0;
    }

    v20 = v20 + v18;
    goto LABEL_10;
  }

  return v9 <= 2.0;
}

BOOL RTCommonConvertLocalFrameToGeodetic(double *a1, double *a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = fabs(a3);
  if (v7 <= 90.0)
  {
    v15 = __sincos_stret(a3 * 0.0174532925);
    v16 = sqrt(v15.__sinval * -0.00669437999 * v15.__sinval + 1.0);
    v17 = 6335439.33 / (v16 * (v16 * v16)) + a5;
    v18 = v15.__cosval * (6378137.0 / v16 + a5);
    if (v18 < 10.0)
    {
      v18 = 10.0;
    }

    *a1 = a3 + a6 / v17 * 57.2957795;
    *a2 = a4 + a7 / v18 * 57.2957795;
  }

  return v7 <= 90.0;
}

BOOL RTCommonRandomFlip(double a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 < 0.0 || a1 > 1.0)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = a1;
      _os_log_error_impl(&dword_26455D000, v3, OS_LOG_TYPE_ERROR, "RTCommonRandomFlip, invalid probability, %f, probability must be between 0 and 1", &v5, 0xCu);
    }
  }

  return arc4random_uniform(0x7FFFFFFFu) / 2147483650.0 < a1;
}

uint64_t conversationHandlesValid(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [a1 receiverHandles];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if (!v6)
        {
          goto LABEL_12;
        }

        v7 = [*(*(&v11 + 1) + 8 * i) primaryHandle];
        if (!v7)
        {
          goto LABEL_14;
        }

        v8 = [v6 primaryHandle];
        v9 = [SMHandle getSMHandleTypeWithHandle:v8];

        if (!v9)
        {
LABEL_12:
          v7 = 0;
          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_14:

  return v7;
}