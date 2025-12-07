void sub_269373728(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;

  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v34 = v10;
  v31 = v8;
  v32 = v4;
  while (1)
  {
    if (v7)
    {
      v36 = v12;
    }

    else
    {
      do
      {
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_40;
        }

        if (v15 >= v8)
        {

          return;
        }

        v7 = *(v4 + 8 * v15);
        ++v11;
      }

      while (!v7);
      v36 = v12;
      v11 = v15;
    }

    v16 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
    v17 = *(*(v3 + 48) + v16);
    v18 = *(*(v3 + 56) + v16);
    v38 = MEMORY[0x277D84F90];
    v19 = v18 >> 62 ? sub_2693B3C70() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v17;

    v37 = v19;
    if (v19)
    {
      break;
    }

    v13 = MEMORY[0x277D84F90];
    v3 = v34;
LABEL_6:
    v7 &= v7 - 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26939D1C8(v13, v35, isUniquelyReferenced_nonNull_native);

    v12 = v36;
  }

  v33 = v7;
  v20 = 0;
  v21 = v19;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D639EB0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v22 = *(v18 + 32 + 8 * v20);
    }

    v23 = v22;
    if (__OFADD__(v20++, 1))
    {
      break;
    }

    v25 = [v22 state];
    if (v25 > 4)
    {
      v26 = 0;
      if (*(a2 + 16))
      {
LABEL_27:
        sub_2693B3DB0();
        MEMORY[0x26D63A0A0](v26);
        v27 = sub_2693B3DD0();
        v28 = -1 << *(a2 + 32);
        v29 = v27 & ~v28;
        if ((*(v9 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
        {
          v30 = ~v28;
          while (*(*(a2 + 48) + 8 * v29) != v26)
          {
            v29 = (v29 + 1) & v30;
            if (((*(v9 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          sub_2693B3C00();
          sub_2693B3C30();
          sub_2693B3C40();
          sub_2693B3C10();
        }

        else
        {
LABEL_31:
        }

        v21 = v37;
        goto LABEL_18;
      }
    }

    else
    {
      v26 = qword_2693B6230[v25];
      if (*(a2 + 16))
      {
        goto LABEL_27;
      }
    }

LABEL_18:
    if (v20 == v21)
    {
      v13 = v38;
      v7 = v33;
      v3 = v34;
      v8 = v31;
      v4 = v32;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t SiriDismissTimerManager.__allocating_init(endpointUUID:)(uint64_t a1, uint64_t a2)
{

  v2 = swift_allocObject();
  if (qword_28030CE20 != -1)
  {
    swift_once();
  }

  sub_26934489C(&qword_28030D2A0, v2 + 16);
  return v2;
}

uint64_t sub_269373AE0()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D288);
  v1 = __swift_project_value_buffer(v0, qword_28030D288);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_269373BA8()
{
  result = [*v0 timers];
  if (!result)
  {
    sub_2693608D8(0, &qword_28030D2D8, 0x277CBEA60);
    v2 = MEMORY[0x26D639CF0](MEMORY[0x277D84F90]);
    v3 = [objc_opt_self() futureWithResult_];

    return v3;
  }

  return result;
}

id sub_269373C38(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_2693B3740();
  v5 = [v3 dismissTimerWithIdentifier_];

  if (v5)
  {
    return v5;
  }

  v7 = [objc_opt_self() futureWithNoResult];

  return v7;
}

uint64_t sub_269373CC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  result = sub_2693608D8(0, &qword_28030D2F0, 0x277D29740);
  qword_28030D2B8 = result;
  unk_28030D2C0 = &off_2879EE3B0;
  qword_28030D2A0 = v0;
  return result;
}

uint64_t SiriDismissTimerManager.init(endpointUUID:)(uint64_t a1, uint64_t a2)
{

  if (qword_28030CE20 != -1)
  {
    swift_once();
  }

  sub_26934489C(&qword_28030D2A0, v2 + 16);
  return v2;
}

void sub_269373D8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v10 = sub_2693B3620();
  __swift_project_value_buffer(v10, qword_28030D288);

  v11 = sub_2693B3610();
  v12 = sub_2693B39B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_26934CA40(a1, a2, &v24);
    _os_log_impl(&dword_26933F000, v11, v12, "SiriDismissTimerManager: call dismissTimer with Id %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26D63A640](v14, -1, -1);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  sub_26934489C(v5 + 16, &v24);
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(&v24, v27);
  v16 = sub_2693B37A0();
  v17 = v15[2](v16);

  __swift_destroy_boxed_opaque_existential_1(&v24);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v28 = sub_269374F6C;
  v29 = v18;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_269378A84;
  v27 = &block_descriptor_1;
  v19 = _Block_copy(&v24);

  v20 = [v17 addSuccessBlock_];
  _Block_release(v19);

  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v28 = sub_269374FA8;
  v29 = v21;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_269373AD8;
  v27 = &block_descriptor_6;
  v22 = _Block_copy(&v24);

  v23 = [v17 addFailureBlock_];
  _Block_release(v22);
}

void sub_2693740C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_28030D288);
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26933F000, v7, v8, "SiriDismissTimerManager: calling allTimers().", v9, 2u);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  sub_26934489C(v3 + 16, &v19);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(&v19, v22);
  v12 = (*(v11 + 1))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v23 = sub_269376564;
  v24 = v13;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269378A84;
  v22 = &block_descriptor_12;
  v14 = _Block_copy(&v19);

  v15 = [v12 addSuccessBlock_];
  _Block_release(v14);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v23 = sub_26937656C;
  v24 = v16;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269373AD8;
  v22 = &block_descriptor_18;
  v17 = _Block_copy(&v19);

  v18 = [v12 addFailureBlock_];
  _Block_release(v17);
}

uint64_t sub_26937437C(void *a1, void (*a2)(void **), uint64_t a3)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v53 - v9);
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v11 = sub_2693B3620();
  v12 = __swift_project_value_buffer(v11, qword_28030D288);
  v13 = sub_2693B3610();
  v14 = sub_2693B39B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26933F000, v13, v14, "TimersFuture success block called.", v15, 2u);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  v56 = 0;
  v16 = sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
  sub_2693B3810();
  v17 = v56;
  if (!v56)
  {
    goto LABEL_25;
  }

  v18 = sub_2693B3610();
  v19 = sub_2693B39B0();

  if (os_log_type_enabled(v18, v19))
  {
    v11 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v56 = v10;
    *v11 = 136315138;
    v20 = MEMORY[0x26D639B10](v17, v16);
    v12 = v21;
    a1 = sub_26934CA40(v20, v21, &v56);

    *(v11 + 4) = a1;
    _os_log_impl(&dword_26933F000, v18, v19, "TimerManager fetched timers: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D63A640](v10, -1, -1);
    MEMORY[0x26D63A640](v11, -1, -1);
  }

  if (v17 >> 62)
  {
    v8 = sub_2693B3C70();
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_20:

    v23 = MEMORY[0x277D84F90];
LABEL_21:
    v56 = v23;
    LOBYTE(v57) = 0;
    a2(&v56);
    v31 = v56;
    v32 = v57;

    return sub_2693789D8(v31, v32);
  }

  v8 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_10:
  v56 = MEMORY[0x277D84F90];
  sub_26939D4DC(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v53 = a2;
    v22 = 0;
    v23 = v56;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D639EB0](v22, v17);
      }

      else
      {
        v24 = *(v17 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = sub_269374AE4();
      v27 = [v25 isFiring];

      v56 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_26939D4DC((v28 > 1), v29 + 1, 1);
        v23 = v56;
      }

      ++v22;
      *(v23 + 16) = v29 + 1;
      v30 = v23 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
    }

    while (v8 != v22);

    a2 = v53;
    goto LABEL_21;
  }

  __break(1u);
LABEL_25:
  v34 = sub_2693B35D0();
  v58 = v34;
  v59 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
  v36 = *MEMORY[0x277D61888];
  v37 = sub_2693B3560();
  (*(*(v37 - 8) + 104))(boxed_opaque_existential_1, v36, v37);
  (*(*(v34 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v34);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1(&v56);
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_2693B3BA0();
  MEMORY[0x26D639AA0](0xD000000000000048, 0x80000002693B8C30);
  v38 = a1;
  v39 = [v38 description];
  v40 = sub_2693B3750();
  v42 = v41;

  MEMORY[0x26D639AA0](v40, v42);

  v43 = v56;
  v44 = v57;
  v45 = *(v11 - 8);
  (*(v45 + 16))(v10, v12, v11);
  (*(v45 + 56))(v10, 0, 1, v11);
  sub_26936F690(v10, v8);
  LODWORD(v38) = (*(v45 + 48))(v8, 1, v11);

  if (v38 == 1)
  {
    sub_26934B4F0(v8, &qword_28030D200, &qword_2693B6178);
  }

  else
  {

    v46 = sub_2693B3610();
    v47 = sub_2693B39A0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v48 = 136315650;
      v49 = sub_2693B3BB0();
      v51 = sub_26934CA40(v49, v50, &v55);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2048;
      *(v48 + 14) = 128;
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_26934CA40(v43, v44, &v55);
      _os_log_impl(&dword_26933F000, v46, v47, "FatalError at %s:%lu - %s", v48, 0x20u);
      v52 = v54;
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v52, -1, -1);
      MEMORY[0x26D63A640](v48, -1, -1);
    }

    (*(v45 + 8))(v8, v11);
  }

  sub_2693B3330();
  result = sub_2693B3C50();
  __break(1u);
  return result;
}

id sub_269374AE4()
{
  v1 = v0;
  v2 = sub_2693B31C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriTimer();
  v6 = [v1 timerID];
  sub_2693B31A0();

  sub_2693B3180();
  (*(v3 + 8))(v5, v2);
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_2693B3740();

  v9 = sub_2693B3740();
  v10 = [v7 initWithIdentifier:v8 displayString:v9];

  if ([v1 type] == 2 || (v11 = objc_msgSend(v1, sel_sound), v12 = objc_msgSend(v11, sel_isSilent), v11, (v12 & 1) == 0))
  {
    v14 = [v1 type];
    if (v14 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = v14 == 1;
    }
  }

  else
  {
    v13 = 2;
  }

  [v10 setType_];
  v15 = [v1 state];
  if (v15 > 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_2693B64A8[v15];
  }

  [v10 setState_];
  [v1 duration];
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setDuration_];

  [v1 remainingTime];
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setRemainingTime_];

  v21 = [v1 title];
  if (!v21)
  {
    sub_2693B3750();
    goto LABEL_16;
  }

  v22 = v21;
  v23 = sub_2693B3750();
  v25 = v24;

  v26 = sub_2693B3750();
  if (!v25)
  {
LABEL_16:

LABEL_17:
    v28 = [v1 title];
    [v10 setLabel_];

    return v10;
  }

  if (v23 != v26 || v25 != v27)
  {
    v30 = sub_2693B3CE0();

    if (v30)
    {
      return v10;
    }

    goto LABEL_17;
  }

  return v10;
}

uint64_t SiriDismissTimerManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_269374F30()
{
  result = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  qword_28030D2C8 = result;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269374FD0(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = [a1 durationNumber];
  if (v5)
  {
    v6 = v5;
    [v5 doubleValue];
    v8 = v7;

    if (v8 > 0.0)
    {
LABEL_3:

      sub_269375BB8(a2, a3, v8);
      return;
    }
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v8 = v9;
    if (v9 > 0.0)
    {
      goto LABEL_3;
    }
  }

  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v10 = sub_2693B3620();
  __swift_project_value_buffer(v10, qword_28030D288);
  v11 = sub_2693B3610();
  v12 = sub_2693B39A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v8;
    _os_log_impl(&dword_26933F000, v11, v12, "Illegal duration: %f", v13, 0xCu);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  v14 = 1;
  v15 = 1;
  a2(&v14);
}

uint64_t sub_269375184(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = [a1 toDuration];
  if (!v6)
  {
LABEL_11:
    v16 = 7;
    v17 = 1;
    return (a2)(&v16);
  }

  v7 = v6;
  [v6 doubleValue];
  v9 = v8;

  [objc_opt_self() minimumDuration];
  if (v9 <= v10)
  {
    if (qword_28030CE18 != -1)
    {
      swift_once();
    }

    v12 = sub_2693B3620();
    __swift_project_value_buffer(v12, qword_28030D288);
    v13 = sub_2693B3610();
    v14 = sub_2693B39A0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v9;
      _os_log_impl(&dword_26933F000, v13, v14, "Illegal duration: %f", v15, 0xCu);
      MEMORY[0x26D63A640](v15, -1, -1);
    }

    goto LABEL_11;
  }

  sub_2693770B8(v3, a2, a3, v9);
}

void sub_269375344(uint64_t a1, uint64_t (*a2)(void **))
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    v5 = *a1;
    v6 = 1;
    a2(&v5);
  }

  else
  {
    v5 = *a1;
    v6 = 0;
    v4 = v3;
    a2(&v5);
    sub_26937883C(v5, v6);
  }
}

void sub_2693753C0(void *a1, void (*a2)(id *))
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = a1;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_26933F000, v6, v7, "TimerSearchFuture success block called: found timer %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  v17 = sub_269374AE4();
  v18 = 0;
  a2(&v17);
  v15 = v17;
  v16 = v18;

  sub_26937883C(v15, v16);
}

void sub_26937558C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2693755F8(void *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, const char *a4, uint64_t a5)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v9 = sub_2693B3620();
  __swift_project_value_buffer(v9, qword_28030D288);
  v10 = a1;
  v11 = sub_2693B3610();
  v12 = sub_2693B39A0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_2693B30D0();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26933F000, v11, v12, a4, v13, 0xCu);
    sub_26934B4F0(v14, &qword_28030D150, &qword_2693B5F70);
    MEMORY[0x26D63A640](v14, -1, -1);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  v17 = a5;
  v18 = 1;
  return a2(&v17);
}

uint64_t sub_269375784(void *a1, uint64_t (*a2)(_BYTE *), uint64_t a3, const char *a4, char a5, ...)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v9 = sub_2693B3620();
  __swift_project_value_buffer(v9, qword_28030D288);
  v10 = a1;
  v11 = sub_2693B3610();
  v12 = sub_2693B39A0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_2693B30D0();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26933F000, v11, v12, a4, v13, 0xCu);
    sub_26934B4F0(v14, &qword_28030D150, &qword_2693B5F70);
    MEMORY[0x26D63A640](v14, -1, -1);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  v17[0] = a5;
  v17[1] = 1;
  return a2(v17);
}

uint64_t sub_269375924(uint64_t a1, uint64_t (*a2)(__int16 *), uint64_t a3, const char *a4)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_28030D288);
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26933F000, v7, v8, a4, v9, 2u);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  v11 = 0;
  return a2(&v11);
}

void sub_269375A2C(uint64_t a1, void (*a2)(id *))
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v3 = sub_2693B3620();
  __swift_project_value_buffer(v3, qword_28030D288);
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26933F000, v4, v5, "SiriTimerManager: TimerResetFuture success block called.", v6, 2u);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  v9 = sub_269374AE4();
  v10 = 0;
  a2(&v9);
  v7 = v9;
  v8 = v10;

  sub_26937883C(v7, v8);
}

void *sub_269375B58()
{
  v0 = sub_2693768E4();
  v1 = v0;
  if (v0 && [v0 state] != 2 && objc_msgSend(v1, sel_state) != 1)
  {

    return 0;
  }

  return v1;
}

void sub_269375BB8(void (*a1)(uint64_t *), uint64_t a2, double a3)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_28030D288);
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26933F000, v8, v9, "SiriTimerManager: call startCurrentTimer().", v10, 2u);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v11 = [qword_28030D2C8 startCurrentTimerWithDuration_];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = v3;
    v13[3] = a1;
    v13[4] = a2;
    v26 = sub_269378A30;
    v27 = v13;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_269378A84;
    v25 = &block_descriptor_129;
    v14 = _Block_copy(&v22);

    v15 = [v12 addSuccessBlock_];
    _Block_release(v14);

    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v26 = sub_269378A88;
    v27 = v16;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_269373AD8;
    v25 = &block_descriptor_136;
    v17 = _Block_copy(&v22);

    v18 = [v12 addFailureBlock_];
    _Block_release(v17);
  }

  else
  {
    v19 = sub_2693B3610();
    v20 = sub_2693B39A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26933F000, v19, v20, "No startCurrentTimerFuture created", v21, 2u);
      MEMORY[0x26D63A640](v21, -1, -1);
    }

    v22 = 1;
    LOBYTE(v23) = 1;
    a1(&v22);
  }
}

void sub_269375F1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_28030D288);
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26933F000, v7, v8, "startCurrentTimerFuture success block called; fetching CURRENT_TIMER", v9, 2u);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  sub_269376594(a3, a4);
}

uint64_t sub_26937601C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26934518C;

  return sub_269377D80();
}

void sub_2693760BC(uint64_t a1, void *a2)
{
  v15 = a2;
  v18 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v17 = *(v5 + 16);
  v17(&v15 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v16 = *(v5 + 32);
  v16(v9 + v8, v7, v4);
  v23 = sub_269378660;
  v24 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269378A84;
  v22 = &block_descriptor_41_1;
  v10 = _Block_copy(&aBlock);

  v11 = [a2 addSuccessBlock_];
  _Block_release(v10);

  v17(v7, v18, v4);
  v12 = swift_allocObject();
  v16(v12 + v8, v7, v4);
  v23 = sub_269378770;
  v24 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269373AD8;
  v22 = &block_descriptor_47_0;
  v13 = _Block_copy(&aBlock);

  v14 = [v15 addFailureBlock_];
  _Block_release(v13);
}

uint64_t sub_269376374()
{
  sub_269374AE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  return sub_2693B3900();
}

uint64_t sub_26937642C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269378A34;

  return sub_269377D80();
}

uint64_t TimerOperationError.hashValue.getter()
{
  v1 = *v0;
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v1);
  return sub_2693B3DD0();
}

void sub_269376594(void (*a1)(uint64_t *), uint64_t a2)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "SiriTimerManager: call currentTimer().", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v8 = [qword_28030D2C8 currentTimer];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v23 = sub_26937892C;
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269378A84;
    v22 = &block_descriptor_101;
    v11 = _Block_copy(&v19);

    v12 = [v9 addSuccessBlock_];
    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v23 = sub_269378934;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269373AD8;
    v22 = &block_descriptor_107;
    v14 = _Block_copy(&v19);

    v15 = [v9 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "No searchTimer future created", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    v19 = 8;
    LOBYTE(v20) = 1;
    a1(&v19);
  }
}

id sub_2693768E4()
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B3620();
  __swift_project_value_buffer(v0, qword_28030D288);
  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26933F000, v1, v2, "SiriTimerManager: call currentTimerSync().", v3, 2u);
    MEMORY[0x26D63A640](v3, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v4 = [qword_28030D2C8 getCurrentTimerSync];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_269374AE4();

  return v6;
}

void sub_269376A28(void (*a1)(uint64_t *), uint64_t a2)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "SiriTimerManager: call stopCurrentTimer().", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v8 = [qword_28030D2C8 stopCurrentTimer];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v23 = sub_2693788E0;
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269378A84;
    v22 = &block_descriptor_89;
    v11 = _Block_copy(&v19);

    v12 = [v9 addSuccessBlock_];
    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v23 = sub_269378904;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269373AD8;
    v22 = &block_descriptor_95;
    v14 = _Block_copy(&v19);

    v15 = [v9 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "No timerStopFuture future created", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    LOWORD(v19) = 259;
    a1(&v19);
  }
}

void sub_269376D70(void (*a1)(uint64_t *), uint64_t a2)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "SiriTimerManager: call pauseCurrentTimer().", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v8 = [qword_28030D2C8 pauseCurrentTimer];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v23 = sub_269378894;
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269378A84;
    v22 = &block_descriptor_77;
    v11 = _Block_copy(&v19);

    v12 = [v9 addSuccessBlock_];
    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v23 = sub_2693788B8;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269373AD8;
    v22 = &block_descriptor_83;
    v14 = _Block_copy(&v19);

    v15 = [v9 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "No timerPauseFuture created", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    LOWORD(v19) = 260;
    a1(&v19);
  }
}

void sub_2693770B8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = qword_28030CE18;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_2693B3620();
  __swift_project_value_buffer(v10, qword_28030D288);
  v11 = sub_2693B3610();
  v12 = sub_2693B39B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26933F000, v11, v12, "SiriTimerManager: call startCurrentTimer().", v13, 2u);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v14 = [qword_28030D2C8 startCurrentTimerWithDuration_];
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = sub_26937895C;
    v16[4] = v8;
    v29 = sub_269378964;
    v30 = v16;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_269378A84;
    v28 = &block_descriptor_116;
    v17 = _Block_copy(&v25);

    v18 = [v15 addSuccessBlock_];
    _Block_release(v17);

    v19 = swift_allocObject();
    *(v19 + 16) = sub_26937895C;
    *(v19 + 24) = v8;
    v29 = sub_269378970;
    v30 = v19;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_269373AD8;
    v28 = &block_descriptor_122;
    v20 = _Block_copy(&v25);

    v21 = [v15 addFailureBlock_];
    _Block_release(v20);
  }

  else
  {
    v22 = sub_2693B3610();
    v23 = sub_2693B39A0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26933F000, v22, v23, "No startCurrentTimerFuture created", v24, 2u);
      MEMORY[0x26D63A640](v24, -1, -1);
    }

    v25 = 1;
    LOBYTE(v26) = 1;
    a2(&v25);
  }
}

id sub_269377464()
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B3620();
  __swift_project_value_buffer(v0, qword_28030D288);
  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26933F000, v1, v2, "SiriTimerManager: call stopCurrentTimerSync().", v3, 2u);
    MEMORY[0x26D63A640](v3, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  return [qword_28030D2C8 stopCurrentTimerSync];
}

void sub_269377580(void (*a1)(uint64_t *), uint64_t a2)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D288);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "SiriTimerManager: call resumeCurrentTimer().", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v8 = [qword_28030D2C8 resumeCurrentTimer];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v23 = sub_269378848;
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269378A84;
    v22 = &block_descriptor_65;
    v11 = _Block_copy(&v19);

    v12 = [v9 addSuccessBlock_];
    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v23 = sub_26937886C;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_269373AD8;
    v22 = &block_descriptor_71;
    v14 = _Block_copy(&v19);

    v15 = [v9 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "No timerResumeFuture created", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    LOWORD(v19) = 262;
    a1(&v19);
  }
}

void sub_2693778C8(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  if (qword_28030CE18 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_28030D288);
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26933F000, v7, v8, "SiriTimerManager: call resetCurrentTimer().", v9, 2u);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v10 = qword_28030D2C8;
  v11 = [qword_28030D2C8 getCurrentTimerSync];
  if (v11)
  {
    v12 = v11;
    [v11 mutableCopy];

    sub_2693B3AB0();
    swift_unknownObjectRelease();
    sub_2693608D8(0, &qword_28030D220, 0x277D29700);
    if (swift_dynamicCast())
    {
      v13 = v37;
      [v37 setState_];
      v14 = [a1 toTimer];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 duration];

        if (v16)
        {
          [v16 doubleValue];
          v18 = v17;

          [v37 setDuration_];
        }
      }

      [v37 setState_];
      v19 = [v10 updateTimer_];
      if (v19)
      {
        v20 = v19;
        v21 = swift_allocObject();
        v21[2] = a2;
        v21[3] = a3;
        v21[4] = v13;
        v35 = sub_269378808;
        v36 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_269378A84;
        v34 = &block_descriptor_53;
        v22 = _Block_copy(&aBlock);

        v23 = v13;

        v24 = [v20 addSuccessBlock_];
        _Block_release(v22);

        v25 = swift_allocObject();
        *(v25 + 16) = a2;
        *(v25 + 24) = a3;
        v35 = sub_269378814;
        v36 = v25;
        aBlock = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_269373AD8;
        v34 = &block_descriptor_59_0;
        v26 = _Block_copy(&aBlock);

        v27 = [v20 addFailureBlock_];

        _Block_release(v26);
      }

      else
      {
        v28 = sub_2693B3610();
        v29 = sub_2693B39A0();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_26933F000, v28, v29, "SiriTimerManager: No timerResetFuture created", v30, 2u);
          MEMORY[0x26D63A640](v30, -1, -1);
        }

        aBlock = 5;
        LOBYTE(v32) = 1;
        a2(&aBlock);
      }
    }

    else
    {
      aBlock = 5;
      LOBYTE(v32) = 1;
      a2(&aBlock);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269377D9C()
{
  if (qword_28030CE28 != -1)
  {
    swift_once();
  }

  v1 = [qword_28030D2C8 currentTimer];
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[5] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E0, &qword_2693B6490);
    *v4 = v0;
    v4[1] = sub_269377F28;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x54746E6572727563, 0xEE00292872656D69, sub_269378658, v3, v5);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_269377F28()
{

  return MEMORY[0x2822009F8](sub_269378040, 0, 0);
}

uint64_t sub_269378040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_2693780A8()
{
  result = qword_28030D2D0;
  if (!qword_28030D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D2D0);
  }

  return result;
}

uint64_t dispatch thunk of SiriTimerManagerImpl.currentTimer()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26934518C;

  return v4();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_269378470(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2693784B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerOperationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimerOperationError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_269378660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);

  return sub_269376374();
}

uint64_t objectdestroy_37Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269378770()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E8, &unk_2693B6498);
  return sub_2693B3900();
}

void sub_26937883C(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t objectdestroy_112Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2693789D8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void *sub_269378A8C(uint64_t a1)
{
  v2 = sub_2693B3AD0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_269378F2C(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void *sub_269378B08(uint64_t a1)
{
  v2 = sub_2693B3AD0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_269378FB0(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_269378B8C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2693B3AF0();
    v5 = v4;
    v6 = sub_2693B3B40();
    v8 = v7;
    v9 = MEMORY[0x26D639DE0](v3, v5, v6, v7);
    sub_26937904C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_26937904C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2693B3AD0();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_269379058(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_26937904C(v3, v5, v2 != 0);
  return v12;
}

void HALTimerDeviceContext.toDismissTimerIntent.getter()
{
  v0 = sub_2693B3110();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(type metadata accessor for DismissTimerIntent()) init];
  v5 = sub_2693B3530();
  v6 = sub_269378B8C(v5);

  if (v6)
  {
    v7 = [v6 timerURL];

    if (!v7)
    {
      __break(1u);
      return;
    }

    sub_2693B30F0();

    sub_2693B30E0();
    (*(v1 + 8))(v3, v0);
    v6 = sub_2693B3740();
  }

  [v4 setTimerId_];

  sub_2693B3550();
  v8 = sub_2693B34D0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2693B35F0();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = sub_2693B3740();

      [v4 setRemoteDeviceId_];
    }

    else
    {
    }
  }

  sub_2693B3540();
  if (v15)
  {
    v16 = sub_2693B3740();
  }

  else
  {
    v16 = 0;
  }

  [v4 setRemoteExecutionId_];

  sub_2693B34E0();
  v17 = sub_2693B38D0();
  [v4 setSkipConfirmation_];
}

void *sub_269378F2C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    v6 = v5;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_269378FB0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 16 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26937904C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_269379058(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D639E10](a1, a2, v7);
      sub_269379258();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_269379258();
    if (sub_2693B3B10() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2693B3B20();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2693B3A40();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2693B3A50();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_269379258()
{
  result = qword_28030D2F8;
  if (!qword_28030D2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030D2F8);
  }

  return result;
}

uint64_t sub_2693792A4()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D300);
  v1 = __swift_project_value_buffer(v0, qword_28030D300);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693797F0(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343B30, 0, 0);
}

uint64_t sub_2693799E4(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343DC4, 0, 0);
}

void sub_269379AD4(uint64_t *a1, void (*a2)(char *))
{
  if (a1[1])
  {
    if (qword_28030CE30 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_28030D300);
    v4 = sub_2693B3610();
    v5 = sub_2693B39A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26933F000, v4, v5, "create failed", v6, 2u);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
    v8 = OBJC_IVAR___CreateTimerIntentResponse_code;
    swift_beginAccess();
    *&v7[v8] = 5;
    [v7 setUserActivity_];
  }

  else
  {
    v9 = *a1;
    v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
    v11 = OBJC_IVAR___CreateTimerIntentResponse_code;
    swift_beginAccess();
    *&v10[v11] = 4;
    [v10 setUserActivity_];
    [v10 setCreatedTimer_];
    if (qword_28030CE30 != -1)
    {
      swift_once();
    }

    v12 = sub_2693B3620();
    __swift_project_value_buffer(v12, qword_28030D300);
    v7 = v10;
    v13 = sub_2693B3610();
    v14 = sub_2693B39B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v21 = [v7 createdTimer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D2E0, &qword_2693B6490);
      v17 = sub_2693B3A60();
      v19 = v18;

      v20 = sub_26934CA40(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_26933F000, v13, v14, "timer after handled: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x26D63A640](v16, -1, -1);
      MEMORY[0x26D63A640](v15, -1, -1);
    }
  }

  a2(v7);
}

id sub_269379E1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CreateTimerIntentHandlerSingle();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_269379E98(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_28030CE30 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_28030D300);
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26933F000, v8, v9, "Handling create timer intent.", v10, 2u);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  v11 = [a1 durationNumber];
  if (v11)
  {
    v12 = v11;
    [v11 doubleValue];
    v14 = v13;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v14 = v15;
  }

  v16 = objc_opt_self();
  [v16 minimumDuration];
  if (v17 >= v14)
  {
    v22 = sub_2693B3610();
    v23 = sub_2693B39B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26933F000, v22, v23, "failureDurationTooShort", v24, 2u);
      MEMORY[0x26D63A640](v24, -1, -1);
    }

    v25 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
    v26 = OBJC_IVAR___CreateTimerIntentResponse_code;
    swift_beginAccess();
    v27 = 102;
  }

  else
  {
    v18 = [a1 durationNumber];
    if (v18)
    {
      v19 = v18;
      [v18 doubleValue];
      v21 = v20;
    }

    else
    {
      [v16 minimumDuration];
      v21 = v28;
    }

    if (v21 >= 86400.0)
    {
      v41 = sub_2693B3610();
      v42 = sub_2693B39B0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26933F000, v41, v42, "failureDurationTooLong", v43, 2u);
        MEMORY[0x26D63A640](v43, -1, -1);
      }

      v25 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
      v26 = OBJC_IVAR___CreateTimerIntentResponse_code;
      swift_beginAccess();
      v27 = 100;
    }

    else
    {
      v29 = OBJC_IVAR____TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle_siriTimerManager;
      sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle_siriTimerManager, v47);
      v30 = v48;
      v31 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v32 = (*(v31 + 80))(v30, v31);
      if (!v32)
      {
        __swift_destroy_boxed_opaque_existential_1(v47);
        sub_26934489C(a2 + v29, v47);
        v36 = v48;
        v37 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        v38 = swift_allocObject();
        *(v38 + 16) = sub_269344A48;
        *(v38 + 24) = v6;
        v39 = *(v37 + 8);

        v40 = sub_26937A9E0;
        goto LABEL_23;
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
      sub_26934489C(a2 + v29, v47);
      v33 = v48;
      v34 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v35 = (*(v34 + 72))(v33, v34);
      __swift_destroy_boxed_opaque_existential_1(v47);
      if (v35)
      {
        sub_26934489C(a2 + v29, v47);
        v36 = v48;
        v37 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        v38 = swift_allocObject();
        *(v38 + 16) = sub_269344A48;
        *(v38 + 24) = v6;
        v39 = *(v37 + 8);

        v40 = sub_26937A9E8;
LABEL_23:
        v39(a1, v40, v38, v36, v37);

        __swift_destroy_boxed_opaque_existential_1(v47);

        return;
      }

      v44 = sub_2693B3610();
      v45 = sub_2693B39A0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_26933F000, v44, v45, "Failed to stop current timer using siriTimerManager.stopCurrentTimerSync", v46, 2u);
        MEMORY[0x26D63A640](v46, -1, -1);
      }

      v25 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
      v26 = OBJC_IVAR___CreateTimerIntentResponse_code;
      swift_beginAccess();
      v27 = 5;
    }
  }

  *&v25[v26] = v27;
  [v25 setUserActivity_];
  (a3)[2](a3, v25);
}

void sub_26937A4A4(void *a1, uint64_t a2)
{
  if (qword_28030CE30 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_28030D300);
  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26933F000, v5, v6, "resolve duration for iOS", v7, 2u);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v8 = [a1 durationNumber];
  if (v8)
  {
    v9 = v8;
    [v8 doubleValue];
    v11 = v10;

    if (v11 > 0.0)
    {
LABEL_7:
      v12 = [objc_opt_self() successWithResolvedTimeInterval_];
      goto LABEL_10;
    }
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v11 = v13;
    if (v13 > 0.0)
    {
      goto LABEL_7;
    }
  }

  sub_2693608D8(0, &qword_28030D320, 0x277CD4268);
  v12 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_10:
  v14 = v12;
  (*(a2 + 16))(a2, v14);
}

void sub_26937A678(uint64_t a1, uint64_t a2)
{
  sub_26934489C(a1 + OBJC_IVAR____TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle_siriTimerManager, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = (*(v4 + 80))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v6 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
  v7 = OBJC_IVAR___CreateTimerIntentResponse_code;
  if (v5)
  {
    swift_beginAccess();
    *&v6[v7] = 3;
    [v6 setUserActivity_];
    [v6 setCreatedTimer_];
    if (qword_28030CE30 != -1)
    {
      swift_once();
    }

    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030D300);
    v9 = sub_2693B3610();
    v10 = sub_2693B39B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26933F000, v9, v10, "In handler: confirm(), shouldConfirm = true", v11, 2u);
      MEMORY[0x26D63A640](v11, -1, -1);
    }

    (*(a2 + 16))(a2, v6);
  }

  else
  {
    swift_beginAccess();
    *&v6[v7] = 4;
    [v6 setUserActivity_];
    (*(a2 + 16))(a2, v6);
  }
}

uint64_t sub_26937A878()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344B10;

  return sub_2693799E4(v2, v3);
}

uint64_t sub_26937A92C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_2693797F0(v2, v3);
}

uint64_t sub_26937A9EC()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D328);
  v1 = __swift_project_value_buffer(v0, qword_28030D328);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26937AAB4(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B65E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6790;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B65F0, v14);
}

uint64_t sub_26937AC3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26937ACC8, 0, 0);
}

uint64_t sub_26937ACC8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26937AD7C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_26937C628(v4, v3);
}

uint64_t sub_26937AD7C(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_26937AEE4(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B65B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6760;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B65C0, v14);
}

uint64_t sub_26937B06C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26937B0F8, 0, 0);
}

uint64_t sub_26937B0F8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_26937C338(v3);
}

uint64_t sub_26937B1AC(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6598;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5740;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5748, v14);
}

uint64_t sub_26937B334(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26934B604;

  return sub_26937CFAC(v6);
}

uint64_t sub_26937B408(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_26937B428, 0, 0);
}

uint64_t sub_26937B428()
{
  v34 = v0;
  if (qword_28030CE38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_2693B3620();
  *(v0 + 168) = __swift_project_value_buffer(v2, qword_28030D328);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v33);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "SearchTimersIntentHandler.handle(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  if ([*(v0 + 152) type] == 2 || (v15 = objc_msgSend(*(v0 + 152), sel_label)) == 0)
  {
    v18 = 0;
  }

  else
  {
    v16 = v15;
    sub_2693B3750();
    v18 = v17;
  }

  v19 = 2 * ([*(v0 + 152) type] == 2);
  *(v0 + 176) = type metadata accessor for SiriTimer();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_2693B3740();
  v22 = [v20 initWithIdentifier:0 displayString:v21];
  *(v0 + 184) = v22;

  if (v18)
  {
    v23 = sub_2693B3740();
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v0 + 152);
  [v22 setLabel_];

  v25 = [v24 duration];
  if (!v25)
  {
    [objc_opt_self() minimumDuration];
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v27 = v25;
  [v22 setDuration_];

  [v22 setState_];
  [v22 setType_];
  v28 = sub_2693B3610();
  v29 = sub_2693B39B0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26933F000, v28, v29, "handle(intent:completion:) Enter matchTimers", v30, 2u);
    MEMORY[0x26D63A640](v30, -1, -1);
  }

  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *v31 = v0;
  v31[1] = sub_26937B864;

  return sub_26938D0B0(v0 + 16, v22, 1);
}

uint64_t sub_26937B864()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26937BC78;
  }

  else
  {
    v2 = sub_26937B978;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26937B978(uint64_t a1)
{
  v2 = sub_2693B3610();
  v3 = sub_2693B39B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26933F000, v2, v3, "handle(intent:completion:) matchTimers execute", v4, 2u);
    MEMORY[0x26D63A640](v4, -1, -1);
  }

  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[3];
  v1[13] = v5;
  v1[26] = v6;
  v1[27] = v7;
  v8 = swift_task_alloc();
  v1[28] = v8;
  *v8 = v1;
  v8[1] = sub_26937BAA0;
  v9 = v1[19];

  return sub_26937D1F0(v9, v7, v5, v6);
}

uint64_t sub_26937BAA0(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_26937BBA0, 0, 0);
}

uint64_t sub_26937BBA0()
{
  v1 = v0[23];
  v0[14] = v0[2];
  sub_26934B4F0((v0 + 14), &qword_28030CF40, &unk_2693B57D0);

  sub_26934B4F0((v0 + 13), &qword_28030CF48, &qword_2693B6A70);

  v0[15] = v0[6];
  sub_26934B4F0((v0 + 15), &qword_28030CF48, &qword_2693B6A70);

  v2 = v0[29];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_26937BC78()
{
  v27 = v0;
  v1 = *(v0 + 200);
  *(v0 + 128) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 136);
    if (v3 == 6)
    {
      v4 = *(v0 + 184);

      v5 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
      v6 = OBJC_IVAR___SearchTimerIntentResponse_code;
      swift_beginAccess();
      *&v5[v6] = 4;
      [v5 setUserActivity_];
      v7 = sub_2693B3800();
      [v5 setMatchedTimers_];

      v8 = sub_2693B3800();
      [v5 setUnmatchedTimers_];

      v9 = sub_2693B3800();
      [v5 setRemoteTimers_];

      goto LABEL_8;
    }

    sub_26934ADAC(v3);
  }

  v10 = *(v0 + 200);

  v11 = v10;
  v12 = sub_2693B3610();
  v13 = sub_2693B39A0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 200);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    *(v0 + 144) = v14;
    v17 = v14;
    v18 = sub_2693B3760();
    v20 = sub_26934CA40(v18, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26933F000, v12, v13, "Failed to handle search timers due to error %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x26D63A640](v16, -1, -1);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  v21 = *(v0 + 200);
  v22 = *(v0 + 184);
  v5 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
  v23 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v23] = 5;
  [v5 setUserActivity_];

LABEL_8:
  v24 = *(v0 + 8);

  return v24(v5);
}

uint64_t sub_26937BFAC(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6570;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5700;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5530, v14);
}

uint64_t sub_26937C134(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_26937B408(v6);
}

uint64_t type metadata accessor for SearchTimersIntentHandler(uint64_t a1)
{
  result = qword_28030D340;
  if (!qword_28030D340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26937C284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26937C134(v2, v3, v4);
}

uint64_t sub_26937C338(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26937C3F8, 0, 0);
}

uint64_t sub_26937C3F8(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  sub_2693B3410();
  v5 = sub_2693B3400();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    __swift_project_value_buffer(v6, qword_280E262F0);
    v7 = sub_2693B3610();
    v8 = sub_2693B39B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26933F000, v7, v8, "resolveAllTargetableDevices() Resolving all targetable devices", v9, 2u);
      MEMORY[0x26D63A640](v9, -1, -1);
    }

    v10 = swift_task_alloc();
    v1[6] = v10;
    *v10 = v1;
    v10[1] = sub_269349074;

    return sub_269394BC4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];

    v13 = v1[1];

    return v13(v12);
  }
}

uint64_t sub_26937C628(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for SearchTimerIntent();
  v2[6] = &protocol witness table for SearchTimerIntent;
  v2[2] = a1;
  v5 = a1;

  return MEMORY[0x2822009F8](sub_26937C70C, 0, 0);
}

uint64_t sub_26937C70C(uint64_t a1)
{
  v20 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[22];
  sub_2693B3410();
  v5 = sub_2693B3400();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    v1[25] = __swift_project_value_buffer(v6, qword_280E262F0);
    sub_26934489C((v1 + 2), (v1 + 7));
    v7 = sub_2693B3610();
    v8 = sub_2693B39B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      sub_26934489C((v1 + 7), (v1 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v11 = sub_2693B3760();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
      v14 = sub_26934CA40(v11, v13, &v19);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_26933F000, v7, v8, "resolveAssociatedDeviceTarget(for:) %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D63A640](v10, -1, -1);
      MEMORY[0x26D63A640](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
    }

    v18 = swift_task_alloc();
    v1[26] = v18;
    *v18 = v1;
    v18[1] = sub_26937C9E8;

    return sub_269394BC4();
  }

  else
  {
    *(v1[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v16 = v1[1];

    return v16(v15);
  }
}

uint64_t sub_26937C9E8(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_26937CAE8, 0, 0);
}

uint64_t sub_26937CAE8()
{
  v44 = v0;
  v1 = *(v0 + 216);
  if (v1 >> 62)
  {
    if (!sub_2693B3C70())
    {
      goto LABEL_18;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

LABEL_19:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v34 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_20;
  }

  v2 = [*(v0 + 160) targetingInfo];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = v2;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 134218242;
    if (v1 >> 62)
    {
      v8 = sub_2693B3C70();
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v8;

    *(v6 + 12) = 2080;
    v9 = v3;
    v10 = [v9 description];
    v11 = v3;
    v12 = sub_2693B3750();
    v14 = v13;

    v15 = v12;
    v3 = v11;
    v16 = sub_26934CA40(v15, v14, &v43);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_26933F000, v4, v5, "Filtering %ld targets using targeting info: %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  else
  {
  }

  v17 = sub_26939D8E8(v3, *(v0 + 160), *(v0 + 216));

  if (!v17)
  {
    v35 = sub_2693B3610();
    v36 = sub_2693B39B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26933F000, v35, v36, "No valid device target found for target criteria", v37, 2u);
      MEMORY[0x26D63A640](v37, -1, -1);
    }

    v38 = *(v0 + 168);

    *(v38 + qword_280E266B8) = 1;
    goto LABEL_19;
  }

  v18 = v17;
  v19 = sub_2693B3610();
  v20 = sub_2693B39B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v21 = 136315138;
    v42 = v3;
    v22 = v18;
    v23 = v18;
    v24 = [v22 description];
    v25 = sub_2693B3750();
    v27 = v26;

    v18 = v23;
    v3 = v42;
    v28 = sub_26934CA40(v25, v27, &v43);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_26933F000, v19, v20, "Found valid device target: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D63A640](v41, -1, -1);
    MEMORY[0x26D63A640](v21, -1, -1);
  }

  v29 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v32 = *(v31 + 40);
  v33 = v18;
  v32(v17, v30, v31);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v34 = sub_2693B1D2C(v33);

LABEL_20:
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v39 = *(v0 + 8);

  return v39(v34);
}

uint64_t sub_26937CFCC()
{
  v20 = v0;
  if (qword_28030CE38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_28030D328);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "SearchTimersIntentHandler.confirm(intent:completion:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
  v16 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = 4;
  [v15 setUserActivity_];
  v17 = *(v0 + 8);

  return v17(v15);
}

uint64_t sub_26937D1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_26937D214, 0, 0);
}

uint64_t sub_26937D214()
{
  v88 = v0;
  v1 = v0;
  if (qword_28030CE38 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v2 = sub_2693B3620();
    __swift_project_value_buffer(v2, qword_28030D328);
    v3 = sub_2693B3610();
    v4 = sub_2693B39B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26933F000, v3, v4, "SearchTimersIntentHandler.handleTimerResult(intent:matchedTimers:unmatchedTimers:)", v5, 2u);
      MEMORY[0x26D63A640](v5, -1, -1);
    }

    v6 = v1[6];
    v7 = v1[7];

    sub_26938B998(v6);
    v8 = sub_2693995BC(v7);
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
      break;
    }

    v10 = sub_2693995BC(v1[7]);
    v11 = v1[7];
    if (v10 < 2)
    {

LABEL_52:
      if (sub_2693995BC(v11))
      {
        sub_26938B998(v11);
      }

      break;
    }

    v75 = v1;
    v12 = v1[5];
    v13 = [v12 state];
    v82 = [v12 type];
    v14 = sub_26939ECE0(&unk_2879EC988);
    v15 = v14;
    v16 = v11 + 64;
    v17 = -1 << *(v11 + 32);
    if (-v17 < 64)
    {
      v18 = ~(-1 << -v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v79 = (63 - v17) >> 6;
    v1 = (v14 + 56);

    v20 = 0;
    v81 = MEMORY[0x277D84F98];
    v76 = v11;
    v77 = v11 + 64;
    while (v19)
    {
LABEL_17:
      v24 = (v20 << 9) | (8 * __clz(__rbit64(v19)));
      v25 = *(*(v11 + 48) + v24);
      v26 = *(*(v11 + 56) + v24);
      v86 = v9;
      if (v26 >> 62)
      {
        v27 = sub_2693B3C70();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v80 = v25;

      if (v27)
      {
        v29 = 0;
        v84 = v28 & 0xFFFFFFFFFFFFFF8;
        v85 = v28 & 0xC000000000000001;
        v78 = v28;
        v83 = v28 + 32;
        v30 = &property descriptor for SearchTimerIntent.targetingInfo;
        while (1)
        {
          if (v85)
          {
            v31 = MEMORY[0x26D639EB0](v29, v78);
          }

          else
          {
            if (v29 >= *(v84 + 16))
            {
              goto LABEL_61;
            }

            v31 = *(v83 + 8 * v29);
          }

          v32 = v31;
          if (__OFADD__(v29++, 1))
          {
            break;
          }

          if (v13 && ((v34 = [v31 v30[190]], v34 >= 5) ? (v35 = 0) : (v35 = qword_2693B6600[v34]), v35 != v13))
          {
          }

          else
          {
            v36 = v27;
            v37 = v13;
            v38 = [v32 v30[190]];
            if (*(v15 + 16))
            {
              v39 = v38;
              sub_2693B3DB0();
              MEMORY[0x26D63A0A0](v39);
              v40 = sub_2693B3DD0();
              v41 = -1 << *(v15 + 32);
              v42 = v40 & ~v41;
              if (((*(v1 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
              {
                goto LABEL_43;
              }

              v43 = ~v41;
              while (*(*(v15 + 48) + 8 * v42) != v39)
              {
                v42 = (v42 + 1) & v43;
                if (((*(v1 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              v44 = [v32 type];
              v45 = v44 == 1;
              if (v44 == 2)
              {
                v45 = 2;
              }

              if ((v82 & ~v45) != 0)
              {
LABEL_43:
              }

              else
              {
                sub_2693B3C00();
                sub_2693B3C30();
                sub_2693B3C40();
                sub_2693B3C10();
              }

              v30 = &property descriptor for SearchTimerIntent.targetingInfo;
            }

            else
            {
            }

            v13 = v37;
            v27 = v36;
          }

          if (v29 == v27)
          {
            v21 = v86;
            v9 = MEMORY[0x277D84F90];
            v11 = v76;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = v9;
LABEL_11:
      v19 &= v19 - 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87[0] = v81;
      sub_26939D1C8(v21, v80, isUniquelyReferenced_nonNull_native);

      v16 = v77;
    }

    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v79)
      {
        v1 = v75;

        v11 = v81;
        goto LABEL_52;
      }

      v19 = *(v16 + 8 * v23);
      ++v20;
      if (v19)
      {
        v20 = v23;
        goto LABEL_17;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  v46 = v1[8];
  v47 = v1[5];
  v48 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
  v49 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v48[v49] = 4;
  [v48 setUserActivity_];
  type metadata accessor for SiriTimer();
  v50 = sub_2693B3800();

  [v48 setMatchedTimers_];

  v51 = sub_2693B3800();

  [v48 setUnmatchedTimers_];

  sub_26938B998(v46);
  v52 = sub_2693B3800();

  [v48 setRemoteTimers_];

  v53 = v47;
  v54 = v48;
  v55 = sub_2693B3610();
  v56 = sub_2693B39B0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = v1[5];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v87[0] = v59;
    *v58 = 136315394;
    v60 = v57;
    v61 = v1;
    v62 = [v60 description];
    v63 = sub_2693B3750();
    v65 = v64;

    v66 = sub_26934CA40(v63, v65, v87);

    *(v58 + 4) = v66;
    *(v58 + 12) = 2080;
    v67 = v54;
    v68 = [v67 description];
    v69 = sub_2693B3750();
    v71 = v70;

    v1 = v61;
    v72 = sub_26934CA40(v69, v71, v87);

    *(v58 + 14) = v72;
    _os_log_impl(&dword_26933F000, v55, v56, "Successfully handled search timers intent: %s with response %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v59, -1, -1);
    MEMORY[0x26D63A640](v58, -1, -1);
  }

  v73 = v1[1];

  return v73(v54);
}

uint64_t sub_26937D9BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26937B334(v2, v3, v4);
}

uint64_t sub_26937DA70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_26937B06C(v2, v3, v4);
}

uint64_t sub_26937DB24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26937AC3C(v2, v3, v4);
}

uint64_t dispatch thunk of SessionManaging.sessionIDString(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_269352CDC;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_26937DD44(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v37 = v6;
  v34 = v2;
  v35 = result;
  while (v5)
  {
LABEL_10:
    v11 = v5;
    v12 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v13 = v12 >> 62;
    v14 = v12;
    if (v12 >> 62)
    {
      v15 = sub_2693B3C70();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_2693B3C70();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_21:
        sub_2693B3C70();
      }

LABEL_22:
      result = sub_2693B3BE0();
      v38 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_21;
    }

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v38 = v9;
LABEL_23:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = v14;
    if (v13)
    {
      v24 = v19;
      result = sub_2693B3C70();
      v19 = v24;
      v22 = v14;
      v23 = result;
    }

    else
    {
      v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      if (((v21 >> 1) - v20) < v39)
      {
        goto LABEL_42;
      }

      v25 = v19 + 8 * v20 + 32;
      v36 = v19;
      v41 = v22;
      if (v13)
      {
        if (v23 < 1)
        {
          goto LABEL_44;
        }

        sub_26934B1D8();
        v26 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
          v27 = v23;
          v28 = v25;
          v29 = sub_26936F610(v40, v26, v41);
          v31 = *v30;
          (v29)(v40, 0);
          v25 = v28;
          v23 = v27;
          *(v25 + 8 * v26++) = v31;
        }

        while (v27 != v26);
      }

      else
      {
        sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
        swift_arrayInitWithCopy();
      }

      v9 = v38;
      v2 = v34;
      v1 = v35;
      v6 = v37;
      v5 = (v11 - 1) & v11;
      if (v39 >= 1)
      {
        v32 = *(v36 + 16);
        v17 = __OFADD__(v32, v39);
        v33 = v32 + v39;
        if (v17)
        {
          goto LABEL_43;
        }

        *(v36 + 16) = v33;
      }
    }

    else
    {

      v9 = v38;
      v6 = v37;
      v5 = (v11 - 1) & v11;
      if (v39 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_26937E094()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D350);
  v1 = __swift_project_value_buffer(v0, qword_28030D350);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_26937E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for UpdateTimerIntentHandler(0, *((*MEMORY[0x277D85000] & *v4) + 0x160), *((*MEMORY[0x277D85000] & *v4) + 0x168), a4);
  v7.receiver = v4;
  v7.super_class = updated;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_26937E1E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;
}

uint64_t sub_26937E220(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = a5;
  *(v5 + 529) = a3;
  *(v5 + 528) = a2;
  *(v5 + 408) = a1;
  return MEMORY[0x2822009F8](sub_26937E24C, 0, 0);
}

uint64_t sub_26937E24C()
{
  v20 = v0;
  if (qword_28030CE40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_2693B3620();
  *(v0 + 432) = __swift_project_value_buffer(v2, qword_28030D350);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Updating timer matching intentsTimer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 440) = v15;
  *v15 = v0;
  v15[1] = sub_26937E474;
  v16 = *(v0 + 529);
  v17 = *(v0 + 408);

  return sub_26938C30C(v0 + 64, v17, v16);
}

uint64_t sub_26937E474()
{
  v2 = *v1;
  *(v2 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26937E5A8, 0, 0);
  }
}

uint64_t sub_26937E5A8()
{
  v68 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 72);
  *(v0 + 456) = v2;

  if ((v1 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = [*(v0 + 408) shouldMatchAny];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v4 = sub_2693B3A30();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = sub_2693B3A50();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v17 = v2;
    goto LABEL_11;
  }

  v6 = [*(v0 + 408) shouldMatchRemote];
  v4 = sub_2693B3A30();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_2693B3A50();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 88);

  v9 = sub_2693B3610();
  v10 = sub_2693B39B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v67[0] = v12;
    *v11 = 136315138;
    *(v0 + 216) = sub_2693995BC(v8);
    v13 = sub_2693B3CB0();
    v15 = sub_26934CA40(v13, v14, v67);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26933F000, v9, v10, "Appending matched remote timers to list of timers to update: %s timer(s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D63A640](v12, -1, -1);
    MEMORY[0x26D63A640](v11, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67[0] = v2;
  sub_269349ED8(v8, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v67);

  v17 = v67[0];
LABEL_11:
  *(v0 + 464) = v17;
  v18 = sub_2693B3610();
  v19 = sub_2693B39B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;

    v22 = sub_2693995BC(v21);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_26933F000, v18, v19, "Found matching timers in updateTimer pre-filter: %ld", v20, 0xCu);
    MEMORY[0x26D63A640](v20, -1, -1);
  }

  v23 = *(v0 + 416);

  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = *(v0 + 416);

    sub_269373728(v17, v25);
    v27 = v26;
  }

  else
  {
    v27 = v17;
  }

  v28 = sub_2693B3610();
  v29 = sub_2693B39B0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;

    v32 = sub_2693995BC(v31);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_26933F000, v28, v29, "Found matching filtered timers in updateTimer: %ld", v30, 0xCu);
    MEMORY[0x26D63A640](v30, -1, -1);
  }

  v33 = *(v0 + 408);

  v35 = sub_2693A0900(v34, v33);
  v37 = v36;

  *(v0 + 472) = v35;
  *(v0 + 480) = v37;
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2693B54B0;
    *(v39 + 32) = v37;
    *(inited + 40) = v39;
    v40 = v35;
    v41 = v37;
    v42 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v27 = v42;
  }

  *(v0 + 488) = v27;
  if ((*(v0 + 528) & 1) == 0)
  {

    v44 = sub_2693995BC(v43);

    if (v44 > 1)
    {
      v45 = (v0 + 208);
      v66 = (v0 + 376);
      v46 = (v0 + 384);
      v47 = (v0 + 392);
      sub_26934B0F0();
      swift_allocError();
      v49 = 1;
      goto LABEL_29;
    }
  }

  v51 = sub_2693995BC(v50);

  if (!v51)
  {

    v61 = sub_2693995BC(v60);

    if (!v61)
    {

      v64 = sub_2693995BC(v63);

      if (v64)
      {
        v45 = (v0 + 296);
        v47 = (v0 + 304);
        v46 = (v0 + 312);
        v66 = (v0 + 320);
        sub_26934B0F0();
        swift_allocError();
        *v65 = v17;
        swift_willThrow();

        goto LABEL_30;
      }
    }

    v45 = (v0 + 328);
    v47 = (v0 + 336);
    v46 = (v0 + 344);
    v66 = (v0 + 352);
    sub_26934B0F0();
    swift_allocError();
    v49 = 5;
LABEL_29:
    *v48 = v49;
    swift_willThrow();
LABEL_30:
    sub_26934B144(v35, v37);

    *v45 = *(v0 + 64);
    sub_26934B4F0(v45, &qword_28030CF40, &unk_2693B57D0);

    *v47 = *(v0 + 80);
    sub_26934B4F0(v47, &qword_28030CF48, &qword_2693B6A70);
    *v46 = *(v0 + 88);
    sub_26934B4F0(v46, &qword_28030CF48, &qword_2693B6A70);
    *v66 = *(v0 + 96);
    sub_26934B4F0(v66, &qword_28030CF48, &qword_2693B6A70);
    v62 = *(v0 + 8);

    return v62();
  }

  v52 = *(v0 + 424);
  v53 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v52 + v53, v0 + 144);
  v54 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));

  v56 = sub_26937DD44(v55);
  *(v0 + 496) = v56;

  v57 = *v54;
  v58 = swift_task_alloc();
  *(v0 + 504) = v58;
  *v58 = v0;
  v58[1] = sub_26937ED54;

  return sub_269368DE0(v56, v57);
}

uint64_t sub_26937ED54(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = sub_269382180;
  }

  else
  {
    *(v4 + 520) = a1;
    v5 = sub_269382184;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26937EE98(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 416) = a4;
  *(v5 + 424) = a5;
  *(v5 + 529) = a3;
  *(v5 + 528) = a2;
  *(v5 + 408) = a1;
  return MEMORY[0x2822009F8](sub_26937EEC4, 0, 0);
}

uint64_t sub_26937EEC4()
{
  v20 = v0;
  if (qword_28030CE40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_2693B3620();
  *(v0 + 432) = __swift_project_value_buffer(v2, qword_28030D350);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Updating timer matching intentsTimer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 440) = v15;
  *v15 = v0;
  v15[1] = sub_26937F0EC;
  v16 = *(v0 + 529);
  v17 = *(v0 + 408);

  return sub_26938C798(v0 + 64, v17, v16);
}

uint64_t sub_26937F0EC()
{
  v2 = *v1;
  *(v2 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26937F220, 0, 0);
  }
}

uint64_t sub_26937F220()
{
  v68 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 72);
  *(v0 + 456) = v2;

  if ((v1 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = [*(v0 + 408) shouldMatchAny];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v4 = sub_2693B3A30();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = sub_2693B3A50();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v17 = v2;
    goto LABEL_11;
  }

  v6 = [*(v0 + 408) shouldMatchRemote];
  v4 = sub_2693B3A30();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_2693B3A50();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 88);

  v9 = sub_2693B3610();
  v10 = sub_2693B39B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v67[0] = v12;
    *v11 = 136315138;
    *(v0 + 216) = sub_2693995BC(v8);
    v13 = sub_2693B3CB0();
    v15 = sub_26934CA40(v13, v14, v67);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26933F000, v9, v10, "Appending matched remote timers to list of timers to update: %s timer(s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D63A640](v12, -1, -1);
    MEMORY[0x26D63A640](v11, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67[0] = v2;
  sub_269349ED8(v8, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v67);

  v17 = v67[0];
LABEL_11:
  *(v0 + 464) = v17;
  v18 = sub_2693B3610();
  v19 = sub_2693B39B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;

    v22 = sub_2693995BC(v21);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_26933F000, v18, v19, "Found matching timers in updateTimer pre-filter: %ld", v20, 0xCu);
    MEMORY[0x26D63A640](v20, -1, -1);
  }

  v23 = *(v0 + 416);

  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = *(v0 + 416);

    sub_269373728(v17, v25);
    v27 = v26;
  }

  else
  {
    v27 = v17;
  }

  v28 = sub_2693B3610();
  v29 = sub_2693B39B0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;

    v32 = sub_2693995BC(v31);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_26933F000, v28, v29, "Found matching filtered timers in updateTimer: %ld", v30, 0xCu);
    MEMORY[0x26D63A640](v30, -1, -1);
  }

  v33 = *(v0 + 408);

  v35 = sub_2693A0900(v34, v33);
  v37 = v36;

  *(v0 + 472) = v35;
  *(v0 + 480) = v37;
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2693B54B0;
    *(v39 + 32) = v37;
    *(inited + 40) = v39;
    v40 = v35;
    v41 = v37;
    v42 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v27 = v42;
  }

  *(v0 + 488) = v27;
  if ((*(v0 + 528) & 1) == 0)
  {

    v44 = sub_2693995BC(v43);

    if (v44 > 1)
    {
      v45 = (v0 + 208);
      v66 = (v0 + 376);
      v46 = (v0 + 384);
      v47 = (v0 + 392);
      sub_26934B0F0();
      swift_allocError();
      v49 = 1;
      goto LABEL_29;
    }
  }

  v51 = sub_2693995BC(v50);

  if (!v51)
  {

    v61 = sub_2693995BC(v60);

    if (!v61)
    {

      v64 = sub_2693995BC(v63);

      if (v64)
      {
        v45 = (v0 + 296);
        v47 = (v0 + 304);
        v46 = (v0 + 312);
        v66 = (v0 + 320);
        sub_26934B0F0();
        swift_allocError();
        *v65 = v17;
        swift_willThrow();

        goto LABEL_30;
      }
    }

    v45 = (v0 + 328);
    v47 = (v0 + 336);
    v46 = (v0 + 344);
    v66 = (v0 + 352);
    sub_26934B0F0();
    swift_allocError();
    v49 = 5;
LABEL_29:
    *v48 = v49;
    swift_willThrow();
LABEL_30:
    sub_26934B144(v35, v37);

    *v45 = *(v0 + 64);
    sub_26934B4F0(v45, &qword_28030CF40, &unk_2693B57D0);

    *v47 = *(v0 + 80);
    sub_26934B4F0(v47, &qword_28030CF48, &qword_2693B6A70);
    *v46 = *(v0 + 88);
    sub_26934B4F0(v46, &qword_28030CF48, &qword_2693B6A70);
    *v66 = *(v0 + 96);
    sub_26934B4F0(v66, &qword_28030CF48, &qword_2693B6A70);
    v62 = *(v0 + 8);

    return v62();
  }

  v52 = *(v0 + 424);
  v53 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v52 + v53, v0 + 144);
  v54 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));

  v56 = sub_26937DD44(v55);
  *(v0 + 496) = v56;

  v57 = *v54;
  v58 = swift_task_alloc();
  *(v0 + 504) = v58;
  *v58 = v0;
  v58[1] = sub_26937F9CC;

  return sub_269369AC0(v56, v57);
}

uint64_t sub_26937F9CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = sub_26937FC20;
  }

  else
  {
    *(v4 + 520) = a1;
    v5 = sub_26937FB10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26937FB10()
{
  sub_26934B144(*(v0 + 472), *(v0 + 480));
  *(v0 + 264) = *(v0 + 64);
  sub_26934B4F0(v0 + 264, &qword_28030CF40, &unk_2693B57D0);

  *(v0 + 272) = *(v0 + 80);
  sub_26934B4F0(v0 + 272, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 280) = *(v0 + 88);
  sub_26934B4F0(v0 + 280, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 288) = *(v0 + 96);
  sub_26934B4F0(v0 + 288, &qword_28030CF48, &qword_2693B6A70);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  v1 = *(v0 + 8);
  v2 = *(v0 + 520);

  return v1(v2);
}

uint64_t sub_26937FC20()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v1 = sub_2693B35D0();
  v2 = MEMORY[0x277D61908];
  v0[16] = v1;
  v0[17] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 13);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v4 = *MEMORY[0x277D61838];
  v5 = sub_2693B34B0();
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, v4, v5);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v1);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v6 = sub_2693B30D0();
  sub_2693A7BF4(v6, &v14);

  v7 = v14;
  v8 = v0[64];
  v9 = v0[60];
  v10 = v0[59];
  if (v14 == 10)
  {
    swift_willThrow();
    sub_26934B144(v10, v9);

    v0[46] = v0[8];
    sub_26934B4F0((v0 + 46), &qword_28030CF40, &unk_2693B57D0);

    v0[45] = v0[10];
    sub_26934B4F0((v0 + 45), &qword_28030CF48, &qword_2693B6A70);
    v0[50] = v0[11];
    sub_26934B4F0((v0 + 50), &qword_28030CF48, &qword_2693B6A70);
    v0[28] = v0[12];
    sub_26934B4F0((v0 + 28), &qword_28030CF48, &qword_2693B6A70);
  }

  else
  {
    sub_26934B0F0();
    swift_allocError();
    *v11 = v7;
    swift_willThrow();

    sub_26934B144(v10, v9);

    v0[29] = v0[8];
    sub_26934B4F0((v0 + 29), &qword_28030CF40, &unk_2693B57D0);

    v0[30] = v0[10];
    sub_26934B4F0((v0 + 30), &qword_28030CF48, &qword_2693B6A70);
    v0[31] = v0[11];
    sub_26934B4F0((v0 + 31), &qword_28030CF48, &qword_2693B6A70);
    v0[32] = v0[12];
    sub_26934B4F0((v0 + 32), &qword_28030CF48, &qword_2693B6A70);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26937FF18(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  *(v6 + 424) = a5;
  *(v6 + 432) = a6;
  *(v6 + 537) = a3;
  *(v6 + 536) = a2;
  *(v6 + 408) = a1;
  *(v6 + 416) = a4;
  v7 = a6;

  return MEMORY[0x2822009F8](sub_26937FF90, 0, 0);
}

uint64_t sub_26937FF90()
{
  v20 = v0;
  if (qword_28030CE40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_2693B3620();
  *(v0 + 440) = __swift_project_value_buffer(v2, qword_28030D350);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Updating timer matching intentsTimer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 448) = v15;
  *v15 = v0;
  v15[1] = sub_2693801B8;
  v16 = *(v0 + 537);
  v17 = *(v0 + 408);

  return sub_26938CC24(v0 + 64, v17, v16);
}

uint64_t sub_2693801B8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_269380308, 0, 0);
  }
}

uint64_t sub_269380308()
{
  v71 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 72);
  *(v0 + 464) = v2;

  if ((v1 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = [*(v0 + 408) shouldMatchAny];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v4 = sub_2693B3A30();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = sub_2693B3A50();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v17 = v2;
    goto LABEL_11;
  }

  v6 = [*(v0 + 408) shouldMatchRemote];
  v4 = sub_2693B3A30();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_2693B3A50();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 88);

  v9 = sub_2693B3610();
  v10 = sub_2693B39B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v70[0] = v12;
    *v11 = 136315138;
    *(v0 + 216) = sub_2693995BC(v8);
    v13 = sub_2693B3CB0();
    v15 = sub_26934CA40(v13, v14, v70);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26933F000, v9, v10, "Appending matched remote timers to list of timers to update: %s timer(s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D63A640](v12, -1, -1);
    MEMORY[0x26D63A640](v11, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = v2;
  sub_269349ED8(v8, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v70);

  v17 = v70[0];
LABEL_11:
  *(v0 + 472) = v17;
  v18 = sub_2693B3610();
  v19 = sub_2693B39B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;

    v22 = sub_2693995BC(v21);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_26933F000, v18, v19, "Found matching timers in updateTimer pre-filter: %ld", v20, 0xCu);
    MEMORY[0x26D63A640](v20, -1, -1);
  }

  v23 = *(v0 + 416);

  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = *(v0 + 416);

    sub_269373728(v17, v25);
    v27 = v26;
  }

  else
  {
    v27 = v17;
  }

  v28 = sub_2693B3610();
  v29 = sub_2693B39B0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;

    v32 = sub_2693995BC(v31);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_26933F000, v28, v29, "Found matching filtered timers in updateTimer: %ld", v30, 0xCu);
    MEMORY[0x26D63A640](v30, -1, -1);
  }

  v33 = *(v0 + 408);

  v35 = sub_2693A0900(v34, v33);
  v37 = v36;

  *(v0 + 480) = v35;
  *(v0 + 488) = v37;
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2693B54B0;
    *(v39 + 32) = v37;
    *(inited + 40) = v39;
    v40 = v35;
    v41 = v37;
    v42 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v27 = v42;
  }

  *(v0 + 496) = v27;
  if ((*(v0 + 536) & 1) == 0)
  {

    v44 = sub_2693995BC(v43);

    if (v44 > 1)
    {
      v45 = (v0 + 208);
      v69 = (v0 + 376);
      v46 = (v0 + 384);
      v47 = (v0 + 392);
      sub_26934B0F0();
      swift_allocError();
      v49 = 1;
      goto LABEL_29;
    }
  }

  v51 = sub_2693995BC(v50);

  if (!v51)
  {

    v64 = sub_2693995BC(v63);

    if (!v64)
    {

      v67 = sub_2693995BC(v66);

      if (v67)
      {
        v45 = (v0 + 296);
        v47 = (v0 + 304);
        v46 = (v0 + 312);
        v69 = (v0 + 320);
        sub_26934B0F0();
        swift_allocError();
        *v68 = v17;
        swift_willThrow();

        goto LABEL_30;
      }
    }

    v45 = (v0 + 328);
    v47 = (v0 + 336);
    v46 = (v0 + 344);
    v69 = (v0 + 352);
    sub_26934B0F0();
    swift_allocError();
    v49 = 5;
LABEL_29:
    *v48 = v49;
    swift_willThrow();
LABEL_30:
    sub_26934B144(v35, v37);

    *v45 = *(v0 + 64);
    sub_26934B4F0(v45, &qword_28030CF40, &unk_2693B57D0);

    *v47 = *(v0 + 80);
    sub_26934B4F0(v47, &qword_28030CF48, &qword_2693B6A70);
    *v46 = *(v0 + 88);
    sub_26934B4F0(v46, &qword_28030CF48, &qword_2693B6A70);
    *v69 = *(v0 + 96);
    sub_26934B4F0(v69, &qword_28030CF48, &qword_2693B6A70);

    v65 = *(v0 + 8);

    return v65();
  }

  v52 = *(v0 + 424);
  v53 = *(v0 + 432);
  v54 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v52 + v54, v0 + 144);
  v55 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));

  v57 = sub_26937DD44(v56);
  *(v0 + 504) = v57;

  v58 = *v55;
  v59 = v53;
  v60 = swift_task_alloc();
  *(v0 + 512) = v60;
  *v60 = v0;
  v60[1] = sub_269380AC8;
  v61 = *(v0 + 432);

  return sub_26936A930(v57, v58, v61);
}

uint64_t sub_269380AC8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = sub_269380D2C;
  }

  else
  {
    *(v4 + 528) = a1;
    v5 = sub_269380C0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269380C0C()
{
  v1 = *(v0 + 432);
  sub_26934B144(*(v0 + 480), *(v0 + 488));
  *(v0 + 264) = *(v0 + 64);
  sub_26934B4F0(v0 + 264, &qword_28030CF40, &unk_2693B57D0);

  *(v0 + 272) = *(v0 + 80);
  sub_26934B4F0(v0 + 272, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 280) = *(v0 + 88);
  sub_26934B4F0(v0 + 280, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 288) = *(v0 + 96);
  sub_26934B4F0(v0 + 288, &qword_28030CF48, &qword_2693B6A70);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  v2 = *(v0 + 8);
  v3 = *(v0 + 528);

  return v2(v3);
}

uint64_t sub_269380D2C()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v1 = sub_2693B35D0();
  v2 = MEMORY[0x277D61908];
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 104));
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v4 = *MEMORY[0x277D61838];
  v5 = sub_2693B34B0();
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, v4, v5);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v1);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v6 = sub_2693B30D0();
  sub_2693A7BF4(v6, &v14);

  v7 = v14;
  v8 = *(v0 + 520);
  v9 = *(v0 + 488);
  v10 = *(v0 + 480);
  if (v14 == 10)
  {
    swift_willThrow();
    sub_26934B144(v10, v9);

    *(v0 + 368) = *(v0 + 64);
    sub_26934B4F0(v0 + 368, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 360) = *(v0 + 80);
    sub_26934B4F0(v0 + 360, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 400) = *(v0 + 88);
    sub_26934B4F0(v0 + 400, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 224) = *(v0 + 96);
    sub_26934B4F0(v0 + 224, &qword_28030CF48, &qword_2693B6A70);
  }

  else
  {
    sub_26934B0F0();
    swift_allocError();
    *v11 = v7;
    swift_willThrow();

    sub_26934B144(v10, v9);

    *(v0 + 232) = *(v0 + 64);
    sub_26934B4F0(v0 + 232, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 240) = *(v0 + 80);
    sub_26934B4F0(v0 + 240, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 248) = *(v0 + 88);
    sub_26934B4F0(v0 + 248, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 256) = *(v0 + 96);
    sub_26934B4F0(v0 + 256, &qword_28030CF48, &qword_2693B6A70);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26938102C(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  *(v8 + 546) = a8;
  *(v8 + 432) = a6;
  *(v8 + 440) = a7;
  *(v8 + 416) = a4;
  *(v8 + 424) = a5;
  *(v8 + 545) = a3;
  *(v8 + 544) = a2;
  *(v8 + 408) = a1;
  v9 = a6;

  return MEMORY[0x2822009F8](sub_2693810AC, 0, 0);
}

uint64_t sub_2693810AC()
{
  v20 = v0;
  if (qword_28030CE40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_2693B3620();
  *(v0 + 448) = __swift_project_value_buffer(v2, qword_28030D350);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "Updating timer matching intentsTimer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 456) = v15;
  *v15 = v0;
  v15[1] = sub_2693812D4;
  v16 = *(v0 + 545);
  v17 = *(v0 + 408);

  return sub_26938D9C8(v0 + 64, v17, v16);
}

uint64_t sub_2693812D4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_269381424, 0, 0);
  }
}

uint64_t sub_269381424()
{
  v73 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 72);
  *(v0 + 472) = v2;

  if ((v1 & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = [*(v0 + 408) shouldMatchAny];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v4 = sub_2693B3A30();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = sub_2693B3A50();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v17 = v2;
    goto LABEL_11;
  }

  v6 = [*(v0 + 408) shouldMatchRemote];
  v4 = sub_2693B3A30();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_2693B3A50();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(v0 + 88);

  v9 = sub_2693B3610();
  v10 = sub_2693B39B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v72[0] = v12;
    *v11 = 136315138;
    *(v0 + 216) = sub_2693995BC(v8);
    v13 = sub_2693B3CB0();
    v15 = sub_26934CA40(v13, v14, v72);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26933F000, v9, v10, "Appending matched remote timers to list of timers to update: %s timer(s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D63A640](v12, -1, -1);
    MEMORY[0x26D63A640](v11, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72[0] = v2;
  sub_269349ED8(v8, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v72);

  v17 = v72[0];
LABEL_11:
  *(v0 + 480) = v17;
  v18 = sub_2693B3610();
  v19 = sub_2693B39B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;

    v22 = sub_2693995BC(v21);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_26933F000, v18, v19, "Found matching timers in updateTimer pre-filter: %ld", v20, 0xCu);
    MEMORY[0x26D63A640](v20, -1, -1);
  }

  v23 = *(v0 + 416);

  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = *(v0 + 416);

    sub_269373728(v17, v25);
    v27 = v26;
  }

  else
  {
    v27 = v17;
  }

  v28 = sub_2693B3610();
  v29 = sub_2693B39B0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;

    v32 = sub_2693995BC(v31);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_26933F000, v28, v29, "Found matching filtered timers in updateTimer: %ld", v30, 0xCu);
    MEMORY[0x26D63A640](v30, -1, -1);
  }

  v33 = *(v0 + 408);

  v35 = sub_2693A0900(v34, v33);
  v37 = v36;

  *(v0 + 488) = v35;
  *(v0 + 496) = v37;
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2693B54B0;
    *(v39 + 32) = v37;
    *(inited + 40) = v39;
    v40 = v35;
    v41 = v37;
    v42 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v27 = v42;
  }

  *(v0 + 504) = v27;
  if ((*(v0 + 544) & 1) == 0)
  {

    v44 = sub_2693995BC(v43);

    if (v44 > 1)
    {
      v45 = (v0 + 208);
      v71 = (v0 + 376);
      v46 = (v0 + 384);
      v47 = (v0 + 392);
      sub_26934B0F0();
      swift_allocError();
      v49 = 1;
      goto LABEL_29;
    }
  }

  v51 = sub_2693995BC(v50);

  if (!v51)
  {

    v66 = sub_2693995BC(v65);

    if (!v66)
    {

      v69 = sub_2693995BC(v68);

      if (v69)
      {
        v45 = (v0 + 296);
        v47 = (v0 + 304);
        v46 = (v0 + 312);
        v71 = (v0 + 320);
        sub_26934B0F0();
        swift_allocError();
        *v70 = v17;
        swift_willThrow();

        goto LABEL_30;
      }
    }

    v45 = (v0 + 328);
    v47 = (v0 + 336);
    v46 = (v0 + 344);
    v71 = (v0 + 352);
    sub_26934B0F0();
    swift_allocError();
    v49 = 5;
LABEL_29:
    *v48 = v49;
    swift_willThrow();
LABEL_30:
    sub_26934B144(v35, v37);

    *v45 = *(v0 + 64);
    sub_26934B4F0(v45, &qword_28030CF40, &unk_2693B57D0);

    *v47 = *(v0 + 80);
    sub_26934B4F0(v47, &qword_28030CF48, &qword_2693B6A70);
    *v46 = *(v0 + 88);
    sub_26934B4F0(v46, &qword_28030CF48, &qword_2693B6A70);
    *v71 = *(v0 + 96);
    sub_26934B4F0(v71, &qword_28030CF48, &qword_2693B6A70);

    v67 = *(v0 + 8);

    return v67();
  }

  v52 = *(v0 + 546);
  v53 = *(v0 + 424);
  v54 = *(v0 + 432);
  v55 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v53 + v55, v0 + 144);
  v56 = __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));

  v58 = sub_26937DD44(v57);
  *(v0 + 512) = v58;

  v59 = *v56;
  v60 = v54;
  v61 = swift_task_alloc();
  *(v0 + 520) = v61;
  *v61 = v0;
  v61[1] = sub_269381BEC;
  v62 = *(v0 + 432);
  v63 = *(v0 + 440);

  return sub_26936B858(v58, v59, v62, v63, v52 & 1);
}

uint64_t sub_269381BEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 528) = v1;

  if (v1)
  {
    v5 = sub_269381E50;
  }

  else
  {
    *(v4 + 536) = a1;
    v5 = sub_269381D30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269381D30()
{
  v1 = *(v0 + 432);
  sub_26934B144(*(v0 + 488), *(v0 + 496));
  *(v0 + 264) = *(v0 + 64);
  sub_26934B4F0(v0 + 264, &qword_28030CF40, &unk_2693B57D0);

  *(v0 + 272) = *(v0 + 80);
  sub_26934B4F0(v0 + 272, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 280) = *(v0 + 88);
  sub_26934B4F0(v0 + 280, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 288) = *(v0 + 96);
  sub_26934B4F0(v0 + 288, &qword_28030CF48, &qword_2693B6A70);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  v2 = *(v0 + 8);
  v3 = *(v0 + 536);

  return v2(v3);
}

uint64_t sub_269381E50()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v1 = sub_2693B35D0();
  v2 = MEMORY[0x277D61908];
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 104));
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v4 = *MEMORY[0x277D61838];
  v5 = sub_2693B34B0();
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, v4, v5);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v1);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v6 = sub_2693B30D0();
  sub_2693A7BF4(v6, &v14);

  v7 = v14;
  v8 = *(v0 + 528);
  v9 = *(v0 + 496);
  v10 = *(v0 + 488);
  if (v14 == 10)
  {
    swift_willThrow();
    sub_26934B144(v10, v9);

    *(v0 + 368) = *(v0 + 64);
    sub_26934B4F0(v0 + 368, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 360) = *(v0 + 80);
    sub_26934B4F0(v0 + 360, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 400) = *(v0 + 88);
    sub_26934B4F0(v0 + 400, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 224) = *(v0 + 96);
    sub_26934B4F0(v0 + 224, &qword_28030CF48, &qword_2693B6A70);
  }

  else
  {
    sub_26934B0F0();
    swift_allocError();
    *v11 = v7;
    swift_willThrow();

    sub_26934B144(v10, v9);

    *(v0 + 232) = *(v0 + 64);
    sub_26934B4F0(v0 + 232, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 240) = *(v0 + 80);
    sub_26934B4F0(v0 + 240, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 248) = *(v0 + 88);
    sub_26934B4F0(v0 + 248, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 256) = *(v0 + 96);
    sub_26934B4F0(v0 + 256, &qword_28030CF48, &qword_2693B6A70);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_269382188(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = sub_2693B3420();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269382248, 0, 0);
}

uint64_t sub_269382248(uint64_t a1)
{
  v47 = v1;
  v3 = *(v1 + 360);
  v2 = *(v1 + 368);
  v4 = *(v1 + 352);
  sub_2693B3410();
  v5 = sub_2693B3400();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = *(v1 + 336);
  if (!v6)
  {
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    sub_26934B4F0(v1 + 96, &qword_28030D3E8, &unk_2693B67E0);
    goto LABEL_20;
  }

  *(v1 + 328) = v6;
  TimerIntent = type metadata accessor for CreateTimerIntent();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D3F0, &unk_2693B6A00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
LABEL_15:
    v32 = *(v1 + 344);
    sub_26934B4F0(v1 + 96, &qword_28030D3E8, &unk_2693B67E0);
    if ((*(v32 + qword_280E266A8) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (!*(v1 + 120))
  {
    goto LABEL_15;
  }

  sub_2693436F0((v1 + 96), v1 + 56);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v1 + 56), v9);
  v11 = (*(v10 + 8))(v9, v10);
  v12 = [v11 device];

  if (v12)
  {
LABEL_8:
    *(v1 + 376) = v12;
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v15 = sub_2693B3620();
    __swift_project_value_buffer(v15, qword_280E262F0);
    v16 = v12;
    v17 = sub_2693B3610();
    v18 = sub_2693B39B0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136315138;
      v21 = v16;
      v22 = [v21 description];
      v23 = sub_2693B3750();
      v25 = v24;

      v26 = sub_26934CA40(v23, v25, &v46);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_26933F000, v17, v18, "Found targetTimer device from intent to search: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26D63A640](v20, -1, -1);
      MEMORY[0x26D63A640](v19, -1, -1);
    }

    v27 = *(v1 + 344);
    v28 = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v27 + v28, v1 + 216);
    __swift_project_boxed_opaque_existential_1((v1 + 216), *(v1 + 240));
    *(v1 + 384) = sub_26939ECE0(&unk_2879EC748);
    v45 = sub_26936FA6C;
    v29 = v16;
    v30 = swift_task_alloc();
    *(v1 + 392) = v30;
    *v30 = v1;
    v31 = sub_269382884;
LABEL_25:
    v30[1] = v31;

    return v45();
  }

  v13 = (*(v1 + 344) + qword_28030D540);
  swift_beginAccess();
  v14 = *(*__swift_project_boxed_opaque_existential_1(v13, v13[3]) + 24);
  if (v14)
  {
    v12 = v14;
    goto LABEL_8;
  }

  v38 = *(v1 + 344);
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));
  if (*(v38 + qword_280E266A8) != 1)
  {
LABEL_20:
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v39 = sub_2693B3620();
    __swift_project_value_buffer(v39, qword_280E262F0);
    v40 = sub_2693B3610();
    v41 = sub_2693B39B0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26933F000, v40, v41, "Searching all known target destinations for timers", v42, 2u);
      MEMORY[0x26D63A640](v42, -1, -1);
    }

    v43 = *(v1 + 344);

    v44 = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v43 + v44, v1 + 16);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    *(v1 + 424) = sub_26939ECE0(&unk_2879EC788);
    v45 = sub_2693703A4;
    v30 = swift_task_alloc();
    *(v1 + 432) = v30;
    *v30 = v1;
    v31 = sub_269382DE8;
    goto LABEL_25;
  }

LABEL_16:
  *(v1 + 200) = TimerIntent;
  *(v1 + 208) = &protocol witness table for CreateTimerIntent;
  *(v1 + 176) = v8;
  sub_2693436F0((v1 + 176), v1 + 136);
  v33 = *__swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
  v34 = v8;
  v35 = swift_task_alloc();
  *(v1 + 416) = v35;
  *v35 = v1;
  v35[1] = sub_269382B2C;
  v36 = *(v1 + 344);

  return sub_269389A28(v33, v36);
}

uint64_t sub_269382884(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  swift_unknownObjectRelease();
  if (v1)
  {
    v5 = sub_269382AB0;
  }

  else
  {
    *(v4 + 408) = a1;
    v5 = sub_2693829EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2693829EC()
{
  v1 = sub_269378A8C(v0[51]);
  v3 = v2;

  v4 = v0[47];
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 27);

    v3 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_269382AB0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_269382B2C(void *a1)
{

  return MEMORY[0x2822009F8](sub_269382C30, 0, 0);
}

uint64_t sub_269382C30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v1 = sub_2693B3620();
  __swift_project_value_buffer(v1, qword_280E262F0);
  v2 = sub_2693B3610();
  v3 = sub_2693B39B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26933F000, v2, v3, "Searching all known target destinations for timers", v4, 2u);
    MEMORY[0x26D63A640](v4, -1, -1);
  }

  v5 = v0[43];

  v6 = qword_28030D540;
  swift_beginAccess();
  sub_26934489C(v5 + v6, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[53] = sub_26939ECE0(&unk_2879EC788);
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_269382DE8;

  return sub_2693703A4();
}

uint64_t sub_269382DE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = sub_269382FA8;
  }

  else
  {
    *(v4 + 448) = a1;
    v5 = sub_269382F34;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269382F34()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[56];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_269382FA8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_269383014()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E262D0);
  v1 = __swift_project_value_buffer(v0, qword_280E262D0);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693830DC(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6840;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6848;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B6850, v14);
}

uint64_t sub_269383264(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26934B604;

  return sub_26938A5D8(v6);
}

uint64_t sub_269383338(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_269383358, 0, 0);
}

uint64_t sub_269383358()
{
  v22 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.handle(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = v0[2];
  [v15 type];
  sub_2693836E4(v15, &v21);
  if (v21 == 10)
  {
    v16 = swift_task_alloc();
    v0[4] = v16;
    *v16 = v0;
    v16[1] = sub_2693835E8;
    v17 = v0[2];

    return sub_269383964(v17);
  }

  else
  {
    v19 = sub_26938A81C(0, &v21);
    sub_26938A514(v21);
    v20 = v0[1];

    return v20(v19);
  }
}

uint64_t sub_2693835E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id sub_2693836E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_280E262D0);
  v5 = a1;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_2693B3750();
    v14 = v13;

    v15 = sub_26934CA40(v12, v14, &v31);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_26933F000, v6, v7, "CreateTimeIntentHandler.validateDurationForIntent(_:) %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  v16 = [v5 durationNumber];
  if (v16)
  {
    v17 = v16;
    [v16 doubleValue];
    v19 = v18;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v19 = v20;
  }

  v21 = objc_opt_self();
  result = [v21 minimumDuration];
  if (v19 <= v23)
  {
    v28 = 2;
  }

  else
  {
    v24 = [v5 durationNumber];
    if (v24)
    {
      v25 = v24;
      [v24 doubleValue];
      v27 = v26;
    }

    else
    {
      [v21 minimumDuration];
      v27 = v29;
    }

    result = [v21 maximumDuration];
    v28 = 3;
    if (v30 > v27)
    {
      v28 = 10;
    }
  }

  *a2 = v28;
  return result;
}

uint64_t sub_269383964(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_2693B31C0();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269383A30, 0, 0);
}

uint64_t sub_269383A30()
{
  v117 = v0;
  if (qword_280E262C8 != -1)
  {
LABEL_59:
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_2693B3620();
  v0[39] = __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B3990();

  v115 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v116 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v116);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.createTime(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [v0[33] durationNumber];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    v18 = v17;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v18 = v19;
  }

  v20 = v0[33];
  v21 = [objc_allocWithZone(MEMORY[0x277D29700]) initWithState:3 duration:v18];
  v0[40] = v21;
  if ([v20 type] == 2 || (v22 = objc_msgSend(v0[33], sel_label)) == 0)
  {
    v26 = 0;
  }

  else
  {
    v23 = v22;
    v24 = [v22 spokenPhrase];

    sub_2693B3750();
    v26 = v25;
  }

  if ([v0[33] type] == 2)
  {
    v27 = [objc_opt_self() toneSoundWithIdentifier:*MEMORY[0x277D72068] vibrationIdentifer:0 volume:0];
    [v21 setSound_];
  }

  if (v26)
  {
    v28 = sub_2693B3740();
  }

  else
  {
    v28 = 0;
  }

  v29 = v0[33];
  [v21 setTitle_];

  if ([v29 type])
  {
    v30 = [v0[33] type];
  }

  else
  {
    v30 = 1;
  }

  v31 = MEMORY[0x277D84F90];
  v32 = sub_2693A85E0(MEMORY[0x277D84F90]);
  v33 = sub_2693B3750();
  v35 = v34;
  v36 = MEMORY[0x277D83BB8];
  v0[5] = MEMORY[0x277D83B88];
  v0[6] = v36;
  v0[7] = MEMORY[0x277D83B90];
  v0[2] = v30;
  sub_26938AF94(v0 + 1, v0 + 4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116 = v32;
  v38 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  sub_269389478(*v38, v33, v35, isUniquelyReferenced_nonNull_native, &v116);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v39 = v116;
  v0[41] = v116;
  sub_269388FE0(v39);
  v40 = sub_2693B3710();

  [v21 setSiriContext_];

  v41 = v21;
  v42 = sub_2693B3610();
  v43 = sub_2693B39B0();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v116 = v45;
    *v44 = 136315138;
    v46 = v41;
    v47 = [v46 description];
    v48 = sub_2693B3750();
    v50 = v49;

    v31 = MEMORY[0x277D84F90];
    v51 = sub_26934CA40(v48, v50, &v116);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_26933F000, v42, v43, "Creating new timer with proto timer: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x26D63A640](v45, -1, -1);
    MEMORY[0x26D63A640](v44, -1, -1);
  }

  sub_2693B3510();
  sub_2693B3500();
  sub_2693B34F0();

  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v52 = sub_2693B3360();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  if ((v52 & 1) == 0)
  {
    v64 = (v0[34] + qword_28030D540);
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    v65 = swift_task_alloc();
    v0[42] = v65;
    *v65 = v0;
    v65[1] = sub_26938471C;

    return sub_269367778(v41);
  }

  v114 = v31 >> 62;
  if (!(v31 >> 62))
  {
    v53 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_24;
    }

LABEL_62:
    v0 = v115;

    v107 = sub_2693B3610();
    v108 = sub_2693B39B0();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_26933F000, v107, v108, "Failed to create new timer", v109, 2u);
      MEMORY[0x26D63A640](v109, -1, -1);
    }

    v110 = v115[40];

    v116 = 4;
    v93 = sub_26938A81C(0, &v116);

LABEL_65:

    v111 = v0[1];

    return (v111)(v93);
  }

LABEL_61:
  v53 = sub_2693B3C70();
  if (!v53)
  {
    goto LABEL_62;
  }

LABEL_24:
  v54 = 0;
  v112 = (v115[36] + 1);
  v113 = v31 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v114)
    {
      v55 = MEMORY[0x26D639EB0](v54, v31);
    }

    else
    {
      if (v54 >= *(v113 + 16))
      {
        goto LABEL_57;
      }

      v55 = v31[v54 + 4];
    }

    v56 = v55;
    v115[47] = v55;
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v58 = v115[40];
    v60 = v115[37];
    v59 = v115[38];
    v61 = v115[35];
    v62 = [v55 timerID];
    sub_2693B31A0();

    v63 = [v58 timerID];
    sub_2693B31A0();

    LOBYTE(v63) = sub_2693B3190();
    v0 = v112;
    v31 = *v112;
    (*v112)(v60, v61);
    (v31)(v59, v61);
    if (v63)
    {
      break;
    }

    ++v54;
    v31 = MEMORY[0x277D84F90];
    if (v57 == v53)
    {
      goto LABEL_62;
    }
  }

  v67 = MEMORY[0x277D84F90];
  if (v114)
  {
    v68 = sub_2693B3C70();
    v0 = v115;
    if (!v68)
    {
LABEL_48:

      v73 = v0[47];
      v74 = sub_2693B3610();
      v75 = sub_2693B39B0();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = v0[47];
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v116 = v78;
        *v77 = 136315138;
        v79 = v76;
        v80 = [v79 description];
        v81 = sub_2693B3750();
        v83 = v82;

        v84 = sub_26934CA40(v81, v83, &v116);
        v0 = v115;

        *(v77 + 4) = v84;
        _os_log_impl(&dword_26933F000, v74, v75, "Successfully created new timer: %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x26D63A640](v78, -1, -1);
        MEMORY[0x26D63A640](v77, -1, -1);
      }

      v85 = v0[47];
      v86 = v0[40];
      v87 = v0[34];
      type metadata accessor for SiriTimer();
      v88 = (v87 + qword_28030D540);
      swift_beginAccess();
      v89 = *(*__swift_project_boxed_opaque_existential_1(v88, v88[3]) + 24);
      v90 = v89;
      v91 = v85;
      v92 = sub_26935CB88(v91, v89);
      v116 = 10;
      v93 = sub_26938A81C(v92, &v116);

      goto LABEL_65;
    }
  }

  else
  {
    v68 = *(v113 + 16);
    v0 = v115;
    if (!v68)
    {
      goto LABEL_48;
    }
  }

  v69 = 0;
  while (1)
  {
    if (v114)
    {
      v70 = MEMORY[0x26D639EB0](v69, v67);
    }

    else
    {
      if (v69 >= *(v113 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      v70 = *(v67 + 8 * v69 + 32);
    }

    v71 = v70;
    v0[48] = v70;
    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_58;
    }

    if (sub_269388940(v56))
    {
      break;
    }

    ++v69;
    if (v72 == v68)
    {
      goto LABEL_48;
    }
  }

  v94 = v71;
  v95 = sub_2693B3610();
  v96 = sub_2693B39B0();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v116 = v98;
    *v97 = 136315138;
    v99 = v94;
    v100 = [v99 description];
    v101 = sub_2693B3750();
    v103 = v102;

    v0 = v115;
    v104 = sub_26934CA40(v101, v103, &v116);

    *(v97 + 4) = v104;
    _os_log_impl(&dword_26933F000, v95, v96, "Attempting to remove conflicting timer: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v98);
    MEMORY[0x26D63A640](v98, -1, -1);
    MEMORY[0x26D63A640](v97, -1, -1);
  }

  v105 = (v0[34] + qword_28030D540);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v105, v105[3]);
  v106 = swift_task_alloc();
  v0[49] = v106;
  *v106 = v0;
  v106[1] = sub_26938538C;

  return sub_26936D0F4(v94);
}

uint64_t sub_26938471C()
{
  v2 = *v1;
  v2[43] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2693849D4, 0, 0);
  }

  else
  {
    v3 = v2[33];
    v4 = swift_task_alloc();
    v2[44] = v4;
    *v4 = v2;
    v4[1] = sub_2693848B8;

    return sub_269382188(v3);
  }
}

uint64_t sub_2693848B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {

    v4 = sub_269385BAC;
  }

  else
  {
    v4 = sub_269384BC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2693849D4()
{
  v17 = v0;
  v1 = v0[43];
  v2 = v1;
  v3 = sub_2693B3610();
  v4 = sub_2693B39A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v0[31] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v8 = sub_2693B3760();
    v10 = sub_26934CA40(v8, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_26933F000, v3, v4, "Error creating timer: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D63A640](v6, -1, -1);
    MEMORY[0x26D63A640](v5, -1, -1);
  }

  v11 = v0[40];
  v12 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
  v13 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v12[v13] = 5;
  [v12 setUserActivity_];

  v14 = v0[1];

  return v14(v12);
}

uint64_t sub_269384BC4()
{
  v76 = v0;

  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 360);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v75 = v6;
    *v5 = 136315138;
    v7 = sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
    v8 = MEMORY[0x26D639B10](v4, v7);
    v10 = v9;

    v11 = sub_26934CA40(v8, v10, &v75);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_26933F000, v1, v2, "Fetched all timers: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D63A640](v6, -1, -1);
    MEMORY[0x26D63A640](v5, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 360);
  v69 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2693B3C70())
  {
    v14 = 0;
    v72 = v12 & 0xFFFFFFFFFFFFFF8;
    v73 = v12 & 0xC000000000000001;
    v70 = (*(v0 + 288) + 8);
    v71 = v0;
    while (1)
    {
      if (v73)
      {
        v15 = MEMORY[0x26D639EB0](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      *(v0 + 376) = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v18 = *(v0 + 320);
      v20 = *(v0 + 296);
      v19 = *(v0 + 304);
      v74 = *(v0 + 280);
      v21 = [v15 timerID];
      sub_2693B31A0();

      v22 = [v18 timerID];
      sub_2693B31A0();

      LOBYTE(v22) = sub_2693B3190();
      v23 = *v70;
      (*v70)(v20, v74);
      v23(v19, v74);
      if (v22)
      {
        break;
      }

      ++v14;
      v0 = v71;
      if (v17 == i)
      {
        goto LABEL_40;
      }
    }

    if (v69)
    {
      v25 = v12;
      v24 = sub_2693B3C70();
      v0 = v71;
      if (!v24)
      {
LABEL_27:

        v29 = *(v0 + 376);
        v30 = sub_2693B3610();
        v31 = sub_2693B39B0();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = *(v0 + 376);
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v75 = v34;
          *v33 = 136315138;
          v35 = v32;
          v36 = [v35 description];
          v37 = sub_2693B3750();
          v39 = v38;

          v40 = sub_26934CA40(v37, v39, &v75);

          *(v33 + 4) = v40;
          _os_log_impl(&dword_26933F000, v30, v31, "Successfully created new timer: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x26D63A640](v34, -1, -1);
          MEMORY[0x26D63A640](v33, -1, -1);
        }

        v41 = *(v0 + 376);
        v42 = *(v0 + 320);
        v43 = *(v0 + 272);
        type metadata accessor for SiriTimer();
        v44 = (v43 + qword_28030D540);
        swift_beginAccess();
        v45 = *(*__swift_project_boxed_opaque_existential_1(v44, v44[3]) + 24);
        v46 = v45;
        v47 = v41;
        v48 = sub_26935CB88(v47, v45);
        v75 = 10;
        v49 = sub_26938A81C(v48, &v75);

        goto LABEL_43;
      }
    }

    else
    {
      v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v12;
      v0 = v71;
      if (!v24)
      {
        goto LABEL_27;
      }
    }

    v26 = 0;
    while (1)
    {
      if (v73)
      {
        v27 = MEMORY[0x26D639EB0](v26, v25);
      }

      else
      {
        if (v26 >= *(v72 + 16))
        {
          goto LABEL_38;
        }

        v27 = *(v25 + 8 * v26 + 32);
      }

      v28 = v27;
      *(v0 + 384) = v27;
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (sub_269388940(v16))
      {

        v50 = v28;
        v51 = sub_2693B3610();
        v52 = sub_2693B39B0();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v75 = v54;
          *v53 = 136315138;
          v55 = v50;
          v56 = [v55 description];
          v57 = sub_2693B3750();
          v59 = v58;

          v60 = sub_26934CA40(v57, v59, &v75);
          v0 = v71;

          *(v53 + 4) = v60;
          _os_log_impl(&dword_26933F000, v51, v52, "Attempting to remove conflicting timer: %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x26D63A640](v54, -1, -1);
          MEMORY[0x26D63A640](v53, -1, -1);
        }

        v61 = (*(v0 + 272) + qword_28030D540);
        swift_beginAccess();
        __swift_project_boxed_opaque_existential_1(v61, v61[3]);
        v62 = swift_task_alloc();
        *(v0 + 392) = v62;
        *v62 = v0;
        v62[1] = sub_26938538C;

        return sub_26936D0F4(v50);
      }

      ++v26;
      if (v12 == v24)
      {
        goto LABEL_27;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:

  v64 = sub_2693B3610();
  v65 = sub_2693B39B0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_26933F000, v64, v65, "Failed to create new timer", v66, 2u);
    MEMORY[0x26D63A640](v66, -1, -1);
  }

  v67 = *(v0 + 320);

  v75 = 4;
  v49 = sub_26938A81C(0, &v75);

LABEL_43:

  v68 = *(v0 + 8);

  return v68(v49);
}

uint64_t sub_26938538C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_2693857E0;
  }

  else
  {
    v2 = sub_2693854A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2693854A0()
{
  v38 = v0;
  v1 = *(v0 + 384);
  v2 = sub_2693B3610();
  v3 = sub_2693B39B0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 384);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_2693B3750();
    v12 = v11;

    v13 = sub_26934CA40(v10, v12, &v37);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_26933F000, v2, v3, "Successfully removed conflicting timer: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 376);
  v15 = sub_2693B3610();
  v16 = sub_2693B39B0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 376);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315138;
    v20 = v17;
    v21 = [v20 &off_279C564F8];
    v22 = sub_2693B3750();
    v24 = v23;

    v25 = sub_26934CA40(v22, v24, &v37);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_26933F000, v15, v16, "Successfully created new timer: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x26D63A640](v19, -1, -1);
    MEMORY[0x26D63A640](v18, -1, -1);
  }

  v26 = *(v0 + 376);
  v27 = *(v0 + 320);
  v28 = *(v0 + 272);
  type metadata accessor for SiriTimer();
  v29 = (v28 + qword_28030D540);
  swift_beginAccess();
  v30 = *(*__swift_project_boxed_opaque_existential_1(v29, v29[3]) + 24);
  v31 = v30;
  v32 = v26;
  v33 = sub_26935CB88(v32, v30);
  v37 = 10;
  v34 = sub_26938A81C(v33, &v37);

  v35 = *(v0 + 8);

  return v35(v34);
}

uint64_t sub_2693857E0()
{
  v47 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39A0();

  v6 = &property descriptor for SearchTimerIntent.targetingInfo;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 400);
    v8 = *(v0 + 384);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136315394;
    v11 = v8;
    v12 = [v11 description];
    v13 = sub_2693B3750();
    v15 = v14;

    v16 = sub_26934CA40(v13, v15, &v46);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v0 + 256) = v7;
    v17 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v18 = sub_2693B3760();
    v20 = sub_26934CA40(v18, v19, &v46);
    v6 = &property descriptor for SearchTimerIntent.targetingInfo;

    *(v9 + 14) = v20;
    _os_log_impl(&dword_26933F000, v4, v5, "Failed to remove conflicting timer: %s with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v10, -1, -1);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  else
  {
    v21 = *(v0 + 400);
    v22 = *(v0 + 384);
  }

  v23 = *(v0 + 376);
  v24 = sub_2693B3610();
  v25 = sub_2693B39B0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 376);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    v29 = v26;
    v30 = [v29 v6[213]];
    v31 = sub_2693B3750();
    v33 = v32;

    v34 = sub_26934CA40(v31, v33, &v46);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_26933F000, v24, v25, "Successfully created new timer: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x26D63A640](v28, -1, -1);
    MEMORY[0x26D63A640](v27, -1, -1);
  }

  v35 = *(v0 + 376);
  v36 = *(v0 + 320);
  v37 = *(v0 + 272);
  type metadata accessor for SiriTimer();
  v38 = (v37 + qword_28030D540);
  swift_beginAccess();
  v39 = *(*__swift_project_boxed_opaque_existential_1(v38, v38[3]) + 24);
  v40 = v39;
  v41 = v35;
  v42 = sub_26935CB88(v41, v39);
  v46 = 10;
  v43 = sub_26938A81C(v42, &v46);

  v44 = *(v0 + 8);

  return v44(v43);
}

uint64_t sub_269385BAC()
{
  v17 = v0;
  v1 = v0[46];
  v2 = v1;
  v3 = sub_2693B3610();
  v4 = sub_2693B39A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v0[31] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v8 = sub_2693B3760();
    v10 = sub_26934CA40(v8, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_26933F000, v3, v4, "Error creating timer: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D63A640](v6, -1, -1);
    MEMORY[0x26D63A640](v5, -1, -1);
  }

  v11 = v0[40];
  v12 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
  v13 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v12[v13] = 5;
  [v12 setUserActivity_];

  v14 = v0[1];

  return v14(v12);
}

uint64_t sub_269385D9C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B67F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6800;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B6808, v14);
}

uint64_t sub_269385F24(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269383338(v6);
}

uint64_t sub_269385FE8(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_269386008, 0, 0);
}

uint64_t sub_269386008()
{
  v32 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v31);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.resolveLabel(for:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [*(v0 + 48) durationNumber];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    v18 = v17;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v18 = v19;
  }

  v20 = *(v0 + 48);
  v21 = [objc_allocWithZone(MEMORY[0x277D29700]) initWithState:3 duration:v18];
  *(v0 + 64) = v21;
  if ([v20 type] == 2 || (v22 = objc_msgSend(*(v0 + 48), sel_label)) == 0)
  {
    v24 = 0;
  }

  else
  {
    v23 = v22;
    v24 = [v22 spokenPhrase];

    if (!v24)
    {
      sub_2693B3750();
      v24 = sub_2693B3740();
    }
  }

  v25 = *(v0 + 48);
  [v21 setTitle_];

  v26 = [v25 type];
  v27 = swift_task_alloc();
  *(v0 + 72) = v27;
  *v27 = v0;
  if (v26 == 2)
  {
    v28 = sub_269386358;
  }

  else
  {
    v28 = sub_2693864C0;
  }

  v27[1] = v28;
  v29 = *(v0 + 48);

  return sub_269386628(v29, v21);
}

uint64_t sub_269386358(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x2822009F8](sub_269386458, 0, 0);
}

uint64_t sub_269386458()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2693864C0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2693865C0, 0, 0);
}

uint64_t sub_2693865C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269386628(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_2693866D8;

  return sub_269382188(a1);
}

uint64_t sub_2693866D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_269386CC4;
  }

  else
  {
    v4 = sub_2693867EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2693867EC()
{
  v45 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = sub_2693B3620();
  __swift_project_value_buffer(v1, qword_280E262D0);
  v2 = sub_2693B3610();
  v3 = sub_2693B39B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26933F000, v2, v3, "MTCreateTimerIntentHandler: fetchFuture success block called", v4, 2u);
    MEMORY[0x26D63A640](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  v6 = [v5 label];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 spokenPhrase];
    v9 = sub_2693B3750();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = sub_26938AE08(*(v0 + 32), *(v0 + 48));

      if (v13 && ([*(v0 + 32) type] == 2 || (v14 = objc_msgSend(*(v0 + 32), sel_sound), v15 = objc_msgSend(v14, sel_isSilent), v14, (v15 & 1) == 0)) && objc_msgSend(*(v0 + 32), sel_type) == 1)
      {
        v16 = [objc_opt_self() confirmationRequiredWithStringToConfirm_];
      }

      else
      {
        v16 = [objc_opt_self() successWithResolvedString_];
      }

      v17 = v16;

      goto LABEL_24;
    }
  }

  v18 = sub_26938AE08(*(v0 + 32), *(v0 + 48));

  if (v18 && ([*(v0 + 32) type] == 2 || (v19 = objc_msgSend(*(v0 + 32), sel_sound), v20 = objc_msgSend(v19, sel_isSilent), v19, (v20 & 1) == 0)) && objc_msgSend(*(v0 + 32), sel_type) == 1)
  {
    v21 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    sub_2693608D8(0, &qword_280E261C8, 0x277CD4190);
    v21 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v17 = v21;
LABEL_24:
  v22 = *(v0 + 24);
  v23 = v17;
  v24 = v22;
  v25 = sub_2693B3610();
  v26 = sub_2693B39B0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 24);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315394;
    v30 = v27;
    v31 = [v30 description];
    v32 = sub_2693B3750();
    v34 = v33;

    v35 = sub_26934CA40(v32, v34, &v44);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2080;
    v36 = v23;
    v37 = [v36 description];
    v38 = sub_2693B3750();
    v40 = v39;

    v41 = sub_26934CA40(v38, v40, &v44);

    *(v28 + 14) = v41;
    _os_log_impl(&dword_26933F000, v25, v26, "Handled resolve label for intent: %s with result: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v29, -1, -1);
    MEMORY[0x26D63A640](v28, -1, -1);
  }

  else
  {
  }

  v42 = *(v0 + 8);

  return v42(v23);
}

uint64_t sub_269386CC4()
{
  v27 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_2693B3620();
  __swift_project_value_buffer(v3, qword_280E262D0);
  v4 = v2;
  v5 = v1;
  v6 = sub_2693B3610();
  v7 = sub_2693B39A0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[7];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = sub_2693B3750();
    v16 = v15;

    v17 = sub_26934CA40(v14, v16, &v26);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v0[2] = v8;
    v18 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v19 = sub_2693B3760();
    v21 = sub_26934CA40(v19, v20, &v26);

    *(v10 + 14) = v21;
    _os_log_impl(&dword_26933F000, v6, v7, "Failed to fetch timers for intent: %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v11, -1, -1);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  v22 = v0[7];
  sub_2693608D8(0, &qword_280E261C8, 0x277CD4190);
  v23 = [swift_getObjCClassFromMetadata() unsupported];

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_269386F48(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B67B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B67B8;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B67C0, v14);
}

uint64_t sub_2693870D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269385FE8(v6);
}

uint64_t sub_269387194(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2693871B4, 0, 0);
}

uint64_t sub_2693871B4()
{
  v27 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.resolveDurationNumber(for:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  sub_2693836E4(*(v0 + 16), &v26);
  v15 = v26;
  if (v26 == 3)
  {
    v20 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (v26 != 10)
    {
      sub_2693608D8(0, &qword_28030D320, 0x277CD4268);
      v21 = [swift_getObjCClassFromMetadata() needsValue];
      sub_26938A514(v15);
      v22 = v21;
      goto LABEL_14;
    }

    v16 = [*(v0 + 16) durationNumber];
    if (v16)
    {
      v17 = v16;
      [v16 doubleValue];
      v19 = v18;
    }

    else
    {
      [objc_opt_self() minimumDuration];
      v19 = v23;
    }

    v20 = [objc_opt_self() successWithResolvedTimeInterval_];
  }

  v22 = v20;
LABEL_14:
  v24 = *(v0 + 8);

  return v24(v22);
}

uint64_t sub_26938747C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6788;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6790;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B65F0, v14);
}

uint64_t sub_269387604(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269387194(v6);
}

uint64_t sub_2693876C8(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_2693876E8, 0, 0);
}

uint64_t sub_2693876E8()
{
  v51 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_2693B3620();
  v0[24] = __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v50);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "CreateTimeIntentHandler.resolveType(for:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = v0[22];
  v0[25] = type metadata accessor for SiriTimerTypeResolutionResult();
  v16 = sub_2693B0080([v15 type]);
  v0[26] = v16;
  v17 = [v15 type];
  v18 = v0[22];
  if (v17 != 2)
  {
    v28 = v18;
    v29 = v16;
    v30 = sub_2693B3610();
    v31 = sub_2693B39A0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[22];
      v33 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v33 = 136315394;
      v34 = v32;
      v35 = [v34 description];
      v36 = sub_2693B3750();
      v38 = v37;

      v39 = sub_26934CA40(v36, v38, &v50);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      v40 = v29;
      v41 = [v40 description];
      v42 = sub_2693B3750();
      v44 = v43;

      v45 = sub_26934CA40(v42, v44, &v50);

      *(v33 + 14) = v45;
      _os_log_impl(&dword_26933F000, v30, v31, "Handled resolve type for intent: %s with result: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v49, -1, -1);
      MEMORY[0x26D63A640](v33, -1, -1);
    }

    goto LABEL_11;
  }

  type metadata accessor for SiriTimer();
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2693B3740();
  v21 = [v19 initWithIdentifier:0 displayString:v20];
  v0[27] = v21;

  v22 = objc_opt_self();
  [v22 defaultDuration];
  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v21 setDuration_];

  [v22 defaultDuration];
  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v21 setRemainingTime_];

  [v21 setState_];
  [v21 setType_];
  sub_2693B3510();
  sub_2693B3500();
  sub_2693B34F0();

  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v27 = sub_2693B3360();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v27)
  {

LABEL_11:
    v46 = v0[1];

    return v46(v16);
  }

  v48 = swift_task_alloc();
  v0[28] = v48;
  *v48 = v0;
  v48[1] = sub_269387C9C;

  return sub_26938D53C((v0 + 2), v21, 1);
}

uint64_t sub_269387C9C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_269387FB4;
  }

  else
  {
    v2 = sub_269387DB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_269387DB0()
{

  v2 = sub_2693995BC(v1);

  if (v2)
  {
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    *(v0 + 168) = [*(v0 + 176) type];
    v5 = sub_2693B3D20();
    v6 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
    swift_unknownObjectRelease();

    *(v0 + 96) = *(v0 + 16);
    sub_26934B4F0(v0 + 96, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 104) = *(v0 + 32);
    sub_26934B4F0(v0 + 104, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 112) = *(v0 + 40);
    sub_26934B4F0(v0 + 112, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 120) = *(v0 + 48);
    sub_26934B4F0(v0 + 120, &qword_28030CF48, &qword_2693B6A70);
  }

  else
  {
    v7 = *(v0 + 216);
    *(v0 + 128) = *(v0 + 16);
    sub_26934B4F0(v0 + 128, &qword_28030CF40, &unk_2693B57D0);

    *(v0 + 136) = *(v0 + 32);
    sub_26934B4F0(v0 + 136, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 144) = *(v0 + 40);
    sub_26934B4F0(v0 + 144, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 152) = *(v0 + 48);
    sub_26934B4F0(v0 + 152, &qword_28030CF48, &qword_2693B6A70);

    v6 = *(v0 + 208);
  }

  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_269387FB4()
{
  v19 = v0;
  v1 = v0[29];
  v2 = v1;
  v3 = sub_2693B3610();
  v4 = sub_2693B39B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[20] = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v10 = sub_2693B3760();
    v12 = sub_26934CA40(v10, v11, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26933F000, v3, v4, "Response from matchTimers in resolveType(for:) in CreateTimerIntent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  else
  {
    v13 = v0[29];
    v14 = v0[27];
  }

  v15 = v0[26];
  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_269388164(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6758;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6760;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B65C0, v14);
}

uint64_t sub_2693882EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_2693876C8(v6);
}

uint64_t sub_2693883B0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6728;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6730;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B6E40, v14);
}

uint64_t sub_269388538(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2693885C4, 0, 0);
}

uint64_t sub_2693885C4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26937AD7C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_269389A28(v4, v3);
}

uint64_t sub_269388678(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6708;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5700;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5530, v14);
}

uint64_t sub_269388800(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26938888C, 0, 0);
}

uint64_t sub_26938888C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_269389684(v3);
}

uint64_t sub_269388940(void *a1)
{
  v3 = sub_2693B35B0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v62 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = v57 - v7;
  v8 = sub_2693B30A0();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2693B31C0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v57 - v16;
  if ([v1 state] != 3)
  {
    goto LABEL_36;
  }

  v59 = v4;
  v60 = v3;
  v18 = [a1 timerID];
  sub_2693B31A0();

  v19 = [v1 timerID];
  sub_2693B31A0();

  LOBYTE(v19) = sub_2693B3190();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v20(v17, v11);
  if (v19)
  {
    goto LABEL_36;
  }

  if (([a1 type] == 2 || (v21 = objc_msgSend(a1, sel_sound), v22 = objc_msgSend(v21, sel_isSilent), v21, (v22 & 1) == 0)) && objc_msgSend(a1, sel_type) != 2 || (objc_msgSend(v1, sel_type) == 2 || (v23 = objc_msgSend(v1, sel_sound), v24 = objc_msgSend(v23, sel_isSilent), v23, (v24 & 1) == 0)) && objc_msgSend(v1, sel_type) != 2)
  {
    if ([a1 type] == 2 || (v26 = objc_msgSend(a1, sel_sound), v27 = objc_msgSend(v26, sel_isSilent), v26, (v27 & 1) == 0))
    {
      v28 = [a1 type];
    }

    else
    {
      v28 = 2;
    }

    if ([v1 type] == 2 || (v29 = objc_msgSend(v1, sel_sound), v30 = objc_msgSend(v29, sel_isSilent), v29, (v30 & 1) == 0))
    {
      if (v28 != [v1 type])
      {
        goto LABEL_36;
      }
    }

    else if (v28 != 2)
    {
      goto LABEL_36;
    }

    v31 = [a1 title];
    if (v31)
    {
      v32 = v31;
      v33 = sub_2693B3750();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = [v1 title];
    if (v36)
    {
      v37 = v36;
      v38 = sub_2693B3750();
      v40 = v39;

      if (v35)
      {
        if (v40)
        {
          v57[1] = v33;
          v64 = v33;
          v65 = v35;

          sub_2693B3090();
          sub_26934CFE8();
          v58 = sub_2693B3A80();
          v42 = v41;
          v43 = *(v63 + 8);
          v43(v10, v8);

          v63 = v38;
          v64 = v38;
          v65 = v40;
          sub_2693B3090();
          v44 = sub_2693B3A80();
          v46 = v45;
          v43(v10, v8);

          if ((v42 & 0x2000000000000000) != 0)
          {
            v47 = HIBYTE(v42) & 0xF;
          }

          else
          {
            v47 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (v47)
          {
            v48 = HIBYTE(v46) & 0xF;
            if ((v46 & 0x2000000000000000) == 0)
            {
              v48 = v44 & 0xFFFFFFFFFFFFLL;
            }

            if (v48)
            {
              v49 = v61;
              sub_2693B3580();
              v50 = *MEMORY[0x277D618A8];
              v51 = sub_2693B3590();
              v52 = v62;
              (*(*(v51 - 8) + 104))(v62, v50, v51);
              v54 = v59;
              v53 = v60;
              (*(v59 + 104))(v52, *MEMORY[0x277D618C8], v60);
              v25 = sub_2693B35A0();

              v55 = *(v54 + 8);
              v55(v52, v53);
              v55(v49, v53);
              return v25 & 1;
            }
          }
        }
      }
    }

LABEL_36:
    v25 = 0;
    return v25 & 1;
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t sub_269388FE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D400, &qword_2693B6828);
    v2 = sub_2693B3CA0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26938AFAC(*(a1 + 56) + 48 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    *&v32[5] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v33[2] = v35[2];
    v24[3] = v34;

    swift_dynamicCast();
    sub_26938AF94(v33, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_28030D408, &qword_2693B6830);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26938B010(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26938B010(v32, v24);
    result = sub_2693B3B50();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_26938B010(v24, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CreateTimerIntentHandler(uint64_t a1)
{
  result = qword_280E26850;
  if (!qword_280E26850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693893C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269388800(v2, v3, v4);
}

_OWORD *sub_269389478(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v25 = MEMORY[0x277D83BB8];
  v26 = MEMORY[0x277D83B90];
  v9 = *a5;
  v11 = sub_26939C1CC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_26938AF94(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_26939D020();
    goto LABEL_7;
  }

  sub_26939CA80(v14, a4 & 1);
  v20 = sub_26939C1CC(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2693B3D40();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D83B88]);
  sub_2693895E8(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

_OWORD *sub_2693895E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  v13 = MEMORY[0x277D83BB8];
  v14 = MEMORY[0x277D83B90];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26938AF94(&v11, (a5[7] + 48 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_269389684(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269389744, 0, 0);
}

uint64_t sub_269389744(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  sub_2693B3410();
  v5 = sub_2693B3400();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    __swift_project_value_buffer(v6, qword_280E262F0);
    v7 = sub_2693B3610();
    v8 = sub_2693B39B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26933F000, v7, v8, "resolveAllTargetableDevices() Resolving all targetable devices", v9, 2u);
      MEMORY[0x26D63A640](v9, -1, -1);
    }

    v10 = swift_task_alloc();
    v1[6] = v10;
    *v10 = v1;
    v10[1] = sub_269349074;

    return sub_269394DF0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];

    v13 = v1[1];

    return v13(v12);
  }
}

uint64_t sub_269389974()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269388538(v2, v3, v4);
}

uint64_t sub_269389A28(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for CreateTimerIntent();
  v2[6] = &protocol witness table for CreateTimerIntent;
  v2[2] = a1;
  v5 = a1;

  return MEMORY[0x2822009F8](sub_269389B0C, 0, 0);
}

uint64_t sub_269389B0C(uint64_t a1)
{
  v20 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[22];
  sub_2693B3410();
  v5 = sub_2693B3400();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    v1[25] = __swift_project_value_buffer(v6, qword_280E262F0);
    sub_26934489C((v1 + 2), (v1 + 7));
    v7 = sub_2693B3610();
    v8 = sub_2693B39B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      sub_26934489C((v1 + 7), (v1 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v11 = sub_2693B3760();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
      v14 = sub_26934CA40(v11, v13, &v19);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_26933F000, v7, v8, "resolveAssociatedDeviceTarget(for:) %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D63A640](v10, -1, -1);
      MEMORY[0x26D63A640](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
    }

    v18 = swift_task_alloc();
    v1[26] = v18;
    *v18 = v1;
    v18[1] = sub_269389DE8;

    return sub_269394DF0();
  }

  else
  {
    *(v1[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v16 = v1[1];

    return v16(v15);
  }
}

uint64_t sub_269389DE8(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_269389EE8, 0, 0);
}

uint64_t sub_269389EE8()
{
  v44 = v0;
  v1 = *(v0 + 216);
  if (v1 >> 62)
  {
    if (!sub_2693B3C70())
    {
      goto LABEL_18;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

LABEL_19:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v34 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_20;
  }

  v2 = [*(v0 + 160) targetingInfo];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = v2;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 134218242;
    if (v1 >> 62)
    {
      v8 = sub_2693B3C70();
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v8;

    *(v6 + 12) = 2080;
    v9 = v3;
    v10 = [v9 description];
    v11 = v3;
    v12 = sub_2693B3750();
    v14 = v13;

    v15 = v12;
    v3 = v11;
    v16 = sub_26934CA40(v15, v14, &v43);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_26933F000, v4, v5, "Filtering %ld targets using targeting info: %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  else
  {
  }

  v17 = sub_26939D91C(v3, *(v0 + 160), *(v0 + 216));

  if (!v17)
  {
    v35 = sub_2693B3610();
    v36 = sub_2693B39B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26933F000, v35, v36, "No valid device target found for target criteria", v37, 2u);
      MEMORY[0x26D63A640](v37, -1, -1);
    }

    v38 = *(v0 + 168);

    *(v38 + qword_280E266B8) = 1;
    goto LABEL_19;
  }

  v18 = v17;
  v19 = sub_2693B3610();
  v20 = sub_2693B39B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v21 = 136315138;
    v42 = v3;
    v22 = v18;
    v23 = v18;
    v24 = [v22 description];
    v25 = sub_2693B3750();
    v27 = v26;

    v18 = v23;
    v3 = v42;
    v28 = sub_26934CA40(v25, v27, &v43);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_26933F000, v19, v20, "Found valid device target: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D63A640](v41, -1, -1);
    MEMORY[0x26D63A640](v21, -1, -1);
  }

  v29 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v32 = *(v31 + 40);
  v33 = v18;
  v32(v17, v30, v31);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v34 = sub_2693B1D2C(v33);

LABEL_20:
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v39 = *(v0 + 8);

  return v39(v34);
}

uint64_t sub_26938A3AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_2693882EC(v2, v3, v4);
}

uint64_t sub_26938A460()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269387604(v2, v3, v4);
}

unint64_t sub_26938A514(unint64_t result)
{
  if (result != 10)
  {
    return sub_26934ADAC(result);
  }

  return result;
}

uint64_t sub_26938A524()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693870D0(v2, v3, v4);
}

uint64_t sub_26938A5F8()
{
  v20 = v0;
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E262D0);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "confirm(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
  v16 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = 4;
  [v15 setUserActivity_];
  v17 = *(v0 + 8);

  return v17(v15);
}

char *sub_26938A81C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!a1)
  {
    if (*a2 > 8)
    {
      if (v2 != 9)
      {
        if (v2 == 10)
        {
          v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
          v22 = OBJC_IVAR___CreateTimerIntentResponse_code;
          swift_beginAccess();
          *&v10[v22] = 5;
          [v10 setUserActivity_];
          if (qword_280E262C8 != -1)
          {
            swift_once();
          }

          v23 = sub_2693B3620();
          __swift_project_value_buffer(v23, qword_280E262D0);
          v24 = sub_2693B3610();
          v25 = sub_2693B39A0();
          if (!os_log_type_enabled(v24, v25))
          {
            goto LABEL_25;
          }

          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 136315138;
          v40 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D3F8, &qword_2693B6820);
          v28 = sub_2693B3760();
          v30 = sub_26934CA40(v28, v29, &v40);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_26933F000, v24, v25, "Failed to handle create timer intent with unknown error: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x26D63A640](v27, -1, -1);
          v31 = v26;
          goto LABEL_24;
        }

        goto LABEL_18;
      }

LABEL_19:
      v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
      v20 = OBJC_IVAR___CreateTimerIntentResponse_code;
      swift_beginAccess();
      v21 = 101;
      goto LABEL_20;
    }

LABEL_10:
    if (v2 == 3)
    {
      v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
      v20 = OBJC_IVAR___CreateTimerIntentResponse_code;
      swift_beginAccess();
      v21 = 100;
LABEL_20:
      *&v10[v20] = v21;
      [v10 setUserActivity_];
      if (qword_280E262C8 != -1)
      {
        swift_once();
      }

      v32 = sub_2693B3620();
      __swift_project_value_buffer(v32, qword_280E262D0);
      sub_26934AD9C(v2);
      v24 = sub_2693B3610();
      v33 = sub_2693B39A0();
      sub_26938A514(v2);
      if (!os_log_type_enabled(v24, v33))
      {
        goto LABEL_25;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      sub_26934AD9C(v2);
      v36 = sub_2693B3760();
      v38 = sub_26934CA40(v36, v37, &v40);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_26933F000, v24, v33, "Failed to handle create timer intent with error response: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D63A640](v35, -1, -1);
      v31 = v34;
LABEL_24:
      MEMORY[0x26D63A640](v31, -1, -1);
LABEL_25:

      return v10;
    }

LABEL_18:
    v10 = [objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse()) init];
    v20 = OBJC_IVAR___CreateTimerIntentResponse_code;
    swift_beginAccess();
    v21 = 5;
    goto LABEL_20;
  }

  if (*a2 <= 8)
  {
    goto LABEL_10;
  }

  if (v2 == 9)
  {
    goto LABEL_19;
  }

  if (v2 != 10)
  {
    goto LABEL_18;
  }

  v4 = objc_allocWithZone(type metadata accessor for CreateTimerIntentResponse());
  v5 = a1;
  v6 = [v4 init];
  v7 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v6[v7] = 4;
  [v6 setUserActivity_];
  v8 = v6;
  [v8 setCreatedTimer_];
  if (qword_280E262C8 != -1)
  {
    swift_once();
  }

  v9 = sub_2693B3620();
  __swift_project_value_buffer(v9, qword_280E262D0);
  v10 = v8;
  v11 = sub_2693B3610();
  v12 = sub_2693B39B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    v15 = [v10 description];
    v16 = sub_2693B3750();
    v18 = v17;

    v19 = sub_26934CA40(v16, v18, &v40);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_26933F000, v11, v12, "Successfully handled create timer intent with response %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26D63A640](v14, -1, -1);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  else
  {
  }

  return v10;
}

BOOL sub_26938AE08(void *a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v5 = sub_2693B3C70();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D639EB0](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = sub_269388940(a1);

    v6 = v7 + 1;
  }

  while ((v10 & 1) == 0);
  return v5 != v7;
}

uint64_t sub_26938AEE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269385F24(v2, v3, v4);
}

_OWORD *sub_26938AF94(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_26938AFAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_26938B010(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26938B020()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269383264(v2, v3, v4);
}

uint64_t sub_26938B0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26938B148(char a1)
{
  sub_2693B3DB0();
  sub_2693B31E0();
  return sub_2693B3DD0();
}

uint64_t sub_26938B1E4(uint64_t a1)
{
  sub_2693B3DB0();
  sub_26938B140(v3, *v1);
  return sub_2693B3DD0();
}

uint64_t sub_26938B268(void *a1, void *a2)
{
  v4 = sub_2693B3170();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v59 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D490, &unk_2693B6970);
  MEMORY[0x28223BE20](v63);
  v64 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D498, &unk_2693B7D80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = [a1 state];
  if (v17 == 3)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = 3;
  if (v17 == 1)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = [a2 state];
  if (v21 == 3)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (v21 != 1)
  {
    v19 = v22;
  }

  if ([a2 type] == 2 || (v23 = objc_msgSend(a2, sel_sound), v24 = objc_msgSend(v23, sel_isSilent), v23, (v24 & 1) == 0))
  {
    if ([a2 type] != 2)
    {
      if (v19 < v20)
      {
        return -1;
      }

      goto LABEL_22;
    }
  }

  if ([a1 type] != 2)
  {
    v25 = [a1 sound];
    v26 = [v25 isSilent];

    if (v26)
    {
      v27 = -1;
      goto LABEL_19;
    }
  }

  v27 = -1;
  if ([a1 type] == 2)
  {
LABEL_19:
    if (v19 < v20)
    {
      return v27;
    }

LABEL_22:
    if (v20 < v19)
    {
      return 1;
    }

    if ([a1 state] != 3)
    {
      v32 = [a1 lastModifiedDate];
      if (v32)
      {
        v33 = v32;
        sub_2693B3150();

        v34 = v65;
        v35 = *(v65 + 56);
        v36 = v16;
        v37 = 0;
      }

      else
      {
        v34 = v65;
        v35 = *(v65 + 56);
        v36 = v16;
        v37 = 1;
      }

      v47 = v66;
      v35(v36, v37, 1, v66);
      v48 = [a2 lastModifiedDate];
      if (v48)
      {
        v49 = v48;
        sub_2693B3150();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v35(v14, v50, 1, v47);
      v51 = v64;
      v52 = *(v63 + 48);
      sub_26938B8B8(v16, v64);
      sub_26938B8B8(v14, v51 + v52);
      v53 = *(v34 + 48);
      if (v53(v51, 1, v47) == 1)
      {
        if (v53(v51 + v52, 1, v47) != 1)
        {
          sub_26934B4F0(v51 + v52, &qword_28030D498, &unk_2693B7D80);
          sub_26934B4F0(v51, &qword_28030D498, &unk_2693B7D80);
          return 1;
        }

        sub_26934B4F0(v51, &qword_28030D490, &unk_2693B6970);
      }

      else
      {
        v54 = v62;
        sub_26938B928(v51, v62);
        if (v53(v51 + v52, 1, v47) == 1)
        {
          (*(v34 + 8))(v54, v47);
          sub_26934B4F0(v51, &qword_28030D498, &unk_2693B7D80);
          return -1;
        }

        v55 = *(v34 + 32);
        v56 = v60;
        v55(v60, v54, v47);
        v57 = v61;
        v55(v61, v51 + v52, v47);
        v27 = sub_2693B3160();
        v58 = *(v34 + 8);
        v58(v57, v47);
        v58(v56, v47);
        sub_26934B4F0(v51, &qword_28030D498, &unk_2693B7D80);
        if (v27)
        {
          return v27;
        }
      }
    }

    [a1 remainingTime];
    v29 = v28;
    [a2 remainingTime];
    if (v29 >= v30)
    {
      [a1 remainingTime];
      v39 = v38;
      [a2 remainingTime];
      if (v40 < v39)
      {
        return 1;
      }

      [a1 duration];
      v42 = v41;
      [a2 duration];
      if (v42 >= v43)
      {
        [a1 duration];
        v45 = v44;
        [a2 duration];
        return v46 < v45;
      }
    }

    return -1;
  }

  return v27;
}

uint64_t sub_26938B8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D498, &unk_2693B7D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26938B928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D498, &unk_2693B7D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26938B998(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v35 = v1;
  v36 = result;
  v38 = v5;
  while (1)
  {
    v9 = v8;
    if (!v4)
    {
      break;
    }

LABEL_10:
    v11 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = result;
    v13 = *(*(result + 56) + v11);
    v14 = *(*(result + 48) + v11);

    v15 = sub_26939939C(v14, v13);

    v16 = v15 >> 62;
    v43 = v15;
    if (v15 >> 62)
    {
      v17 = sub_2693B3C70();
    }

    else
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_2693B3C70();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v17;
    v19 = __OFADD__(result, v17);
    v20 = result + v17;
    if (v19)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v18)
      {
        v21 = v9;
        v22 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (!v18)
    {
      goto LABEL_22;
    }

    sub_2693B3C70();
LABEL_22:
    result = sub_2693B3BE0();
    v21 = result;
    v22 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    v40 = v21;
    if (v16)
    {
      v26 = v22;
      result = sub_2693B3C70();
      v22 = v26;
      v25 = result;
    }

    else
    {
      v25 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v25)
    {
      if (((v24 >> 1) - v23) < v41)
      {
        goto LABEL_42;
      }

      v27 = v22 + 8 * v23 + 32;
      v39 = v4;
      v37 = v22;
      if (v16)
      {
        if (v25 < 1)
        {
          goto LABEL_44;
        }

        sub_269353B24(&qword_28030D4F0, &qword_28030D4E8, &qword_2693B6A88, MEMORY[0x277D83988]);
        v28 = 0;
        v29 = v43;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4E8, &qword_2693B6A88);
          v30 = sub_26936F748(v42, v28, v29);
          v32 = *v31;
          (v30)(v42, 0);
          *(v27 + 8 * v28++) = v32;
        }

        while (v25 != v28);
      }

      else
      {
        type metadata accessor for SiriTimer();
        swift_arrayInitWithCopy();
      }

      v8 = v40;
      v1 = v35;
      result = v36;
      v5 = v38;
      v4 = v39;
      if (v41 >= 1)
      {
        v33 = *(v37 + 16);
        v19 = __OFADD__(v33, v41);
        v34 = v33 + v41;
        if (v19)
        {
          goto LABEL_43;
        }

        *(v37 + 16) = v34;
      }
    }

    else
    {

      v8 = v40;
      v5 = v38;
      result = v12;
      if (v41 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v10);
    ++v7;
    if (v4)
    {
      v7 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_26938BD44(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = sub_2693B3420();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26938BE0C, 0, 0);
}

uint64_t sub_26938BE0C(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  sub_2693B3410();
  v5 = sub_2693B3400();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = swift_task_alloc();
    v1[24] = v6;
    *v6 = v1;
    v6[1] = sub_26938BFCC;

    return sub_269394214();
  }

  else
  {
    v8 = v1[20];
    v9 = qword_28030D540;
    v1[25] = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v8 + v9, (v1 + 7));
    __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
    v10 = sub_26939F3A4(&unk_2879EC558, &qword_28030D4F8, &qword_2693B6A90);
    v1[26] = v10;
    v11 = swift_task_alloc();
    v1[27] = v11;
    *v11 = v1;
    v11[1] = sub_26938C1D0;

    return sub_269366980(v10);
  }
}