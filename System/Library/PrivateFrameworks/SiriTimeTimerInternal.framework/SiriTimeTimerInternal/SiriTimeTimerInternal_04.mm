uint64_t sub_26939FF84(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_2693A0084, 0, 0);
}

uint64_t sub_2693A0084()
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

  v17 = sub_26939D950(v3, *(v0 + 160), *(v0 + 216), type metadata accessor for SetTimerAttributeIntent, &protocol witness table for SetTimerAttributeIntent, sub_2693A0578);

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

uint64_t sub_2693A0594()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26939B6FC(v2, v3, v4);
}

uint64_t sub_2693A0648()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_26939B4B0(v2, v3, v4);
}

unint64_t sub_2693A06FC()
{
  result = qword_28030D4D8;
  if (!qword_28030D4D8)
  {
    type metadata accessor for MTTimerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D4D8);
  }

  return result;
}

uint64_t sub_2693A0754()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26939AA3C(v2, v3, v4);
}

uint64_t sub_2693A0808()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_269399908(v2, v3);
}

uint64_t sub_2693A0924()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D520);
  v1 = __swift_project_value_buffer(v0, qword_28030D520);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693A0C30(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269353E40, 0, 0);
}

uint64_t sub_2693A0E3C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343B30, 0, 0);
}

uint64_t sub_2693A1030(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343DC4, 0, 0);
}

void sub_2693A109C(uint64_t a1, void *a2, void (*a3)(char *))
{
  if (*(a1 + 1))
  {
    if (qword_28030CE50 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_28030D520);
    v5 = sub_2693B3610();
    v6 = sub_2693B39A0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "resume failed", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v9 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    *&v8[v9] = 5;
    [v8 setUserActivity_];
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v11 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    *&v8[v11] = 4;
    [v8 setUserActivity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    *(v12 + 32) = a2;
    type metadata accessor for SiriTimer();
    v13 = a2;
    v14 = sub_2693B3800();

    [v8 setResumedTimers_];

    if (qword_28030CE50 != -1)
    {
      swift_once();
    }

    v15 = sub_2693B3620();
    __swift_project_value_buffer(v15, qword_28030D520);
    v16 = sub_2693B3610();
    v17 = sub_2693B39B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "timer resume completion", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }
  }

  a3(v8);
}

void sub_2693A13A0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_2693A1434(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ResumeTimerIntentHandlerSingle();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2693A149C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal30ResumeTimerIntentHandlerSingle_siriTimerManager, v22);
  v5 = v23;
  v6 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v7 = (*(v6 + 64))(v5, v6);
  if (v7)
  {
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v22);
    if ([v8 state])
    {
      v9 = [a1 targetTimer];
      v10 = SiriTimer.matches(targetTimer:ignoreRemainingTime:)(v9, 1);

      if (v10)
      {
        type metadata accessor for SiriTimerResolutionResult();
        v11 = sub_2693B1178(v8);
        (*(a3 + 16))(a3, v11);
      }

      else
      {
        if (qword_28030CE50 != -1)
        {
          swift_once();
        }

        v17 = sub_2693B3620();
        __swift_project_value_buffer(v17, qword_28030D520);
        v18 = sub_2693B3610();
        v19 = sub_2693B39B0();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_26933F000, v18, v19, "Timer on the device doesn't match the timer in user request: returning needsConfirmation", v20, 2u);
          MEMORY[0x26D63A640](v20, -1, -1);
        }

        type metadata accessor for SiriTimerResolutionResult();
        v21 = v8;
        v11 = sub_2693B13DC(v8);

        (*(a3 + 16))(a3, v11);
      }

      goto LABEL_17;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  if (qword_28030CE50 != -1)
  {
    swift_once();
  }

  v12 = sub_2693B3620();
  __swift_project_value_buffer(v12, qword_28030D520);
  v13 = sub_2693B3610();
  v14 = sub_2693B39A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26933F000, v13, v14, "Timer is not found on device. Skipping Confirm step and will fail the request in Handle step.", v15, 2u);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  type metadata accessor for SiriTimerResolutionResult();
  v16 = _s21SiriTimeTimerInternal0aC0C07invalidC0ACvgZ_0();
  v11 = sub_2693B1178(v16);

  (*(a3 + 16))(a3, v11);
LABEL_17:
}

void sub_2693A1798(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_28030CE50 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_28030D520);
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26933F000, v8, v9, "Handling resume timer intent.", v10, 2u);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC21SiriTimeTimerInternal30ResumeTimerIntentHandlerSingle_siriTimerManager;
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal30ResumeTimerIntentHandlerSingle_siriTimerManager, v36);
  v12 = v37;
  v13 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v14 = (*(v13 + 64))(v12, v13);
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    v23 = sub_2693B3610();
    v24 = sub_2693B39A0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26933F000, v23, v24, "siriTimerManager.currentTimerSync get nil result: returning with .failureNoTimers", v25, 2u);
      MEMORY[0x26D63A640](v25, -1, -1);
    }

    v19 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v26 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    *&v19[v26] = 101;
    [v19 setUserActivity_];
    (a3)[2](a3, v19);

    goto LABEL_18;
  }

  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (![v15 state])
  {
    v27 = sub_2693B3610();
    v28 = sub_2693B39B0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26933F000, v27, v28, "Timer has an unknown state (meaning there's no timer set on phone): returning with .failureNoTimers.", v29, 2u);
      MEMORY[0x26D63A640](v29, -1, -1);
    }

    v19 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v30 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    *&v19[v30] = 101;
    [v19 setUserActivity_];
    goto LABEL_17;
  }

  if ([v15 state] == 1)
  {
    v16 = sub_2693B3610();
    v17 = sub_2693B39B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "Attempting to resume a running timer: returning .failureTimerAlreadyRunning", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    v19 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v20 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    *&v19[v20] = 102;
    [v19 setUserActivity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2693B54B0;
    *(v21 + 32) = v15;
    type metadata accessor for SiriTimer();
    v15 = v15;
    v22 = sub_2693B3800();

    [v19 setResumedTimers_];

LABEL_17:
    (a3)[2](a3, v19);

LABEL_18:
    return;
  }

  sub_26934489C(a2 + v11, v36);
  v31 = v37;
  v32 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v33 = swift_allocObject();
  v33[2] = v15;
  v33[3] = sub_269344A48;
  v33[4] = v6;
  v34 = *(v32 + 32);
  v35 = v15;

  v34(a1, sub_2693A1D18, v33, v31, v32);

  __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_2693A1D24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344B10;

  return sub_2693A1030(v2, v3);
}

uint64_t sub_2693A1DD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_2693A0E3C(v2, v3);
}

uint64_t sub_2693A1E8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_2693A0C30(v2, v3);
}

uint64_t sub_2693A1F40(uint64_t a1)
{
  result = sub_2693B3480();
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

uint64_t sub_2693A1FEC()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E262F0);
  v1 = __swift_project_value_buffer(v0, qword_280E262F0);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2693A20B4(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v53 = a4;
  v51 = a3;
  v6 = sub_2693B31C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = *a1;
  type metadata accessor for SiriDevice();
  v13 = v12;
  v14 = sub_269371C94(v13);
  v15 = [v13 uniqueIdentifier];
  sub_2693B31A0();

  v16 = sub_2693B3180();
  v18 = v17;
  v54 = *(v7 + 8);
  v54(v11, v6);
  if (a2 && (v19 = sub_2693B3600(), v20))
  {
    if (v16 != v19 || v20 != v18)
    {
      sub_2693B3CE0();
    }
  }

  else
  {
  }

  v22 = v52;
  v23 = sub_2693B38B0();
  [v14 setIsRespondingDevice_];

  v24 = [v13 room];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 uniqueIdentifier];

    sub_2693B31A0();
    v27 = sub_2693B3180();
    v29 = v28;
    v54(v22, v6);
    v30 = v51;
    if (!v51)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v30 = v51;
    if (!v51)
    {
      goto LABEL_19;
    }
  }

  v31 = [v30 room];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 uniqueIdentifier];

    sub_2693B31A0();
    v34 = sub_2693B3180();
    v36 = v35;
    v54(v22, v6);
    if (v29)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_19:
  v34 = 0;
  v36 = 0;
  if (v29)
  {
LABEL_20:
    if (v36)
    {
      if (v27 == v34 && v29 == v36)
      {
      }

      else
      {
        sub_2693B3CE0();
      }
    }

    goto LABEL_26;
  }

LABEL_17:
  if (v36)
  {
LABEL_26:
  }

  v37 = sub_2693B38B0();
  [v14 setIsInRespondingRoom_];

  if (qword_280E262E8 != -1)
  {
    swift_once();
  }

  v38 = sub_2693B3620();
  __swift_project_value_buffer(v38, qword_280E262F0);
  v39 = v14;
  v40 = sub_2693B3610();
  v41 = sub_2693B3990();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v55 = v43;
    *v42 = 136315138;
    v44 = v39;
    v45 = [v44 description];
    v46 = sub_2693B3750();
    v48 = v47;

    v49 = sub_26934CA40(v46, v48, &v55);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_26933F000, v40, v41, "Converted device: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x26D63A640](v43, -1, -1);
    MEMORY[0x26D63A640](v42, -1, -1);
  }

  *v53 = v39;
}

id sub_2693A25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TimerIntentHandler(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2693A2660(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_28030D540));
  v2 = qword_280E26A48;
  v3 = sub_2693B3480();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_2693A26F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  v7 = sub_2693B3420();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[26] = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_2693A280C, 0, 0);
}

uint64_t sub_2693A280C(uint64_t a1)
{
  v20 = v1;
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
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
    v1[27] = __swift_project_value_buffer(v6, qword_280E262F0);
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
    v1[28] = v18;
    *v18 = v1;
    v18[1] = sub_2693A2AE8;

    return sub_269394214();
  }

  else
  {
    *(v1[20] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v16 = v1[1];

    return v16(v15);
  }
}

uint64_t sub_2693A2AE8(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_2693A41B0, 0, 0);
}

uint64_t sub_2693A2BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  v7 = sub_2693B3420();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[26] = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_2693A2D00, 0, 0);
}

uint64_t sub_2693A2D00(uint64_t a1)
{
  v20 = v1;
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
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
    v1[27] = __swift_project_value_buffer(v6, qword_280E262F0);
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
    v1[28] = v18;
    *v18 = v1;
    v18[1] = sub_2693A2AE8;

    return sub_269394540();
  }

  else
  {
    *(v1[20] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v16 = v1[1];

    return v16(v15);
  }
}

uint64_t sub_2693A2FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  v7 = sub_2693B3420();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[26] = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_2693A30F4, 0, 0);
}

uint64_t sub_2693A30F4(uint64_t a1)
{
  v20 = v1;
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
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
    v1[27] = __swift_project_value_buffer(v6, qword_280E262F0);
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
    v1[28] = v18;
    *v18 = v1;
    v18[1] = sub_2693A2AE8;

    return sub_26939476C();
  }

  else
  {
    *(v1[20] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v16 = v1[1];

    return v16(v15);
  }
}

uint64_t sub_2693A33D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  v7 = sub_2693B3420();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[26] = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_2693A34E8, 0, 0);
}

uint64_t sub_2693A34E8(uint64_t a1)
{
  v20 = v1;
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
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
    v1[27] = __swift_project_value_buffer(v6, qword_280E262F0);
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
    v1[28] = v18;
    *v18 = v1;
    v18[1] = sub_2693A2AE8;

    return sub_269394998();
  }

  else
  {
    *(v1[20] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v16 = v1[1];

    return v16(v15);
  }
}

uint64_t sub_2693A37C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  v7 = sub_2693B3420();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[26] = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_2693A38DC, 0, 0);
}

uint64_t sub_2693A38DC(uint64_t a1)
{
  v20 = v1;
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
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
    v1[27] = __swift_project_value_buffer(v6, qword_280E262F0);
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
    v1[28] = v18;
    *v18 = v1;
    v18[1] = sub_2693A3BB8;

    return sub_26939501C();
  }

  else
  {
    *(v1[20] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v16 = v1[1];

    return v16(v15);
  }
}

uint64_t sub_2693A3BB8(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_2693A3CB8, 0, 0);
}

uint64_t sub_2693A3CB8()
{
  v44 = v0;
  v1 = v0[29];
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
    *(v0[20] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v34 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_20;
  }

  v2 = (*(v0[22] + 24))(v0[21]);
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

  v17 = sub_2693724F4(v3, v0[26], v0[29], v0[21], v0[22]);

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

    v38 = v0[20];

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

  v29 = v0[20] + qword_28030D540;
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
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v39 = v0[1];

  return v39(v34);
}

uint64_t sub_2693A41B4()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D548);
  v1 = __swift_project_value_buffer(v0, qword_28030D548);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693A44C0(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269399974, 0, 0);
}

void sub_2693A455C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_2693A4800(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343B30, 0, 0);
}

uint64_t sub_2693A49F4(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343DC4, 0, 0);
}

void sub_2693A4A60(uint64_t *a1, void (*a2)(char *))
{
  if (a1[1])
  {
    if (qword_28030CE58 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_28030D548);
    v4 = sub_2693B3610();
    v5 = sub_2693B39A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26933F000, v4, v5, "set timer attribute failed", v6, 2u);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
    v8 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
    swift_beginAccess();
    *&v7[v8] = 5;
    [v7 setUserActivity_];
  }

  else
  {
    v9 = *a1;
    v10 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
    v11 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
    swift_beginAccess();
    *&v10[v11] = 4;
    [v10 setUserActivity_];
    [v10 setUpdatedTimer_];
    if (qword_28030CE58 != -1)
    {
      swift_once();
    }

    v12 = sub_2693B3620();
    __swift_project_value_buffer(v12, qword_28030D548);
    v7 = v10;
    v13 = sub_2693B3610();
    v14 = sub_2693B39B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v21 = [v7 updatedTimer];
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

id sub_2693A4DA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetTimerAttributeIntentHandlerSingle();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2693A4E24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344B10;

  return sub_2693A49F4(v2, v3);
}

uint64_t sub_2693A4ED8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_2693A4800(v2, v3);
}

void sub_2693A4F8C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_28030CE58 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_28030D548);
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26933F000, v8, v9, "Handling SetTimerAttributeIntent intent.", v10, 2u);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC21SiriTimeTimerInternal36SetTimerAttributeIntentHandlerSingle_siriTimerManager;
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal36SetTimerAttributeIntentHandlerSingle_siriTimerManager, v45);
  v12 = v46;
  v13 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v14 = (*(v13 + 64))(v12, v13);
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    v26 = sub_2693B3610();
    v27 = sub_2693B39A0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26933F000, v26, v27, "siriTimerManager.currentTimerSync get nil result: returning with .failureNoTimers", v28, 2u);
      MEMORY[0x26D63A640](v28, -1, -1);
    }

    v23 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
    v29 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
    swift_beginAccess();
    *&v23[v29] = 101;
    [v23 setUserActivity_];
    (a3)[2](a3, v23);

    goto LABEL_19;
  }

  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(v45);
  if (![v15 state])
  {
    v30 = sub_2693B3610();
    v31 = sub_2693B39B0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26933F000, v30, v31, "Timer has an unknown state (meaning there's no timer set on phone): returning with .failureNoTimers.", v32, 2u);
      MEMORY[0x26D63A640](v32, -1, -1);
    }

    v23 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
    v24 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
    swift_beginAccess();
    v25 = 101;
    goto LABEL_18;
  }

  v16 = [a1 toDuration];
  if (!v16 || (v17 = v16, [v16 doubleValue], v19 = v18, v17, v19 > 86400.0))
  {
    v20 = sub_2693B3610();
    v21 = sub_2693B39B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26933F000, v20, v21, "Attempting to change timer to more than 24-hour duration: returning .failureNotSupported.", v22, 2u);
      MEMORY[0x26D63A640](v22, -1, -1);
    }

    v23 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
    v24 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
    swift_beginAccess();
    v25 = 102;
LABEL_18:
    *&v23[v24] = v25;
    [v23 setUserActivity_];
    (a3)[2](a3, v23);

LABEL_19:
    return;
  }

  sub_26934489C(a2 + v11, v45);
  v33 = v46;
  v34 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v35 = (*(v34 + 72))(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v45);
  if (v35)
  {
    sub_26934489C(a2 + v11, v45);
    v36 = v46;
    v37 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_269344A48;
    *(v38 + 24) = v6;
    v39 = *(v37 + 48);

    v39(a1, sub_2693A5C94, v38, v36, v37);

    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    v40 = sub_2693B3610();
    v41 = sub_2693B39A0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26933F000, v40, v41, "Failed to stop current timer using siriTimerManager.stopCurrentTimerSync", v42, 2u);
      MEMORY[0x26D63A640](v42, -1, -1);
    }

    v43 = [objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentResponse()) init];
    v44 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
    swift_beginAccess();
    *&v43[v44] = 5;
    [v43 setUserActivity_];
    (a3)[2](a3, v43);
  }
}

void sub_2693A55E8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal36SetTimerAttributeIntentHandlerSingle_siriTimerManager, v22);
  v5 = v23;
  v6 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v7 = (*(v6 + 64))(v5, v6);
  if (v7)
  {
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v22);
    if ([v8 state])
    {
      v9 = [a1 targetTimer];
      v10 = SiriTimer.matches(targetTimer:ignoreRemainingTime:)(v9, 1);

      if (v10)
      {
        type metadata accessor for SiriTimerResolutionResult();
        v11 = sub_2693B1178(v8);
        (*(a3 + 16))(a3, v11);
      }

      else
      {
        if (qword_28030CE58 != -1)
        {
          swift_once();
        }

        v17 = sub_2693B3620();
        __swift_project_value_buffer(v17, qword_28030D548);
        v18 = sub_2693B3610();
        v19 = sub_2693B39B0();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_26933F000, v18, v19, "Timer on the device doesn't match the timer in user request: returning needsConfirmation", v20, 2u);
          MEMORY[0x26D63A640](v20, -1, -1);
        }

        type metadata accessor for SiriTimerResolutionResult();
        v21 = v8;
        v11 = sub_2693B13DC(v8);

        (*(a3 + 16))(a3, v11);
      }

      goto LABEL_17;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  if (qword_28030CE58 != -1)
  {
    swift_once();
  }

  v12 = sub_2693B3620();
  __swift_project_value_buffer(v12, qword_28030D548);
  v13 = sub_2693B3610();
  v14 = sub_2693B39A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26933F000, v13, v14, "Timer is not found on device. Skipping Confirm step and will fail the request in Handle step.", v15, 2u);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  type metadata accessor for SiriTimerResolutionResult();
  v16 = _s21SiriTimeTimerInternal0aC0C07invalidC0ACvgZ_0();
  v11 = sub_2693B1178(v16);

  (*(a3 + 16))(a3, v11);
LABEL_17:
}

void sub_2693A58E4(void *a1, uint64_t a2)
{
  v3 = [a1 toDuration];
  if (!v3)
  {
    if (qword_28030CE58 != -1)
    {
      swift_once();
    }

    v17 = sub_2693B3620();
    __swift_project_value_buffer(v17, qword_28030D548);
    v9 = sub_2693B3610();
    v18 = sub_2693B39A0();
    if (!os_log_type_enabled(v9, v18))
    {
      goto LABEL_12;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26933F000, v9, v18, "resolveToDuration(for:with:) toDuration missing from intent)", v19, 2u);
    v16 = v19;
    goto LABEL_11;
  }

  v4 = v3;
  [v3 doubleValue];
  v6 = v5;

  [objc_opt_self() minimumDuration];
  if (v6 < v7)
  {
    if (qword_28030CE58 != -1)
    {
      swift_once();
    }

    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030D548);
    v9 = sub_2693B3610();
    v10 = sub_2693B39B0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v13 = sub_2693B3950();
    v15 = sub_26934CA40(v13, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26933F000, v9, v10, "resolveToDuration(for:with:) toDuration < allowed minimum: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D63A640](v12, -1, -1);
    v16 = v11;
LABEL_11:
    MEMORY[0x26D63A640](v16, -1, -1);
LABEL_12:

    sub_2693A5C48();
    v20 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_18;
  }

  if (qword_28030CE58 != -1)
  {
    swift_once();
  }

  v21 = sub_2693B3620();
  __swift_project_value_buffer(v21, qword_28030D548);
  v22 = sub_2693B3610();
  v23 = sub_2693B39B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26933F000, v22, v23, "resolveToDuration(for:with:) success", v24, 2u);
    MEMORY[0x26D63A640](v24, -1, -1);
  }

  v20 = [objc_opt_self() successWithResolvedTimeInterval_];
LABEL_18:
  v25 = v20;
  (*(a2 + 16))(a2, v25);
}

unint64_t sub_2693A5C48()
{
  result = qword_28030D320;
  if (!qword_28030D320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030D320);
  }

  return result;
}

uint64_t sub_2693A5C9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_2693A44C0(v2, v3);
}

uint64_t sub_2693A5D50()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D568);
  v1 = __swift_project_value_buffer(v0, qword_28030D568);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693A605C(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_26936381C, 0, 0);
}

uint64_t sub_2693A6268(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343B30, 0, 0);
}

uint64_t sub_2693A645C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343DC4, 0, 0);
}

void sub_2693A64C8(uint64_t a1, void (*a2)(void))
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    if (qword_28030CE60 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_28030D568);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31[0] = v8;
      *v7 = 136315138;
      v9 = sub_2693B3760();
      v11 = sub_26934CA40(v9, v10, v31);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26933F000, v5, v6, "Failure resetting timer: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D63A640](v8, -1, -1);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v12 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
    v13 = OBJC_IVAR___ResetTimerIntentResponse_code;
    swift_beginAccess();
    *&v12[v13] = 5;
    [v12 setUserActivity_];
  }

  else
  {
    if (qword_28030CE60 != -1)
    {
      swift_once();
    }

    v14 = sub_2693B3620();
    __swift_project_value_buffer(v14, qword_28030D568);
    v15 = v3;
    v16 = sub_2693B3610();
    v17 = sub_2693B39B0();
    sub_26937883C(v3, 0);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = a2;
      v20 = swift_slowAlloc();
      v31[0] = v20;
      *v18 = 136315138;
      v21 = [v15 description];
      v22 = sub_2693B3750();
      v24 = v23;

      sub_26937883C(v3, 0);
      v25 = sub_26934CA40(v22, v24, v31);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_26933F000, v16, v17, "Success resetting timer: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v26 = v20;
      a2 = v19;
      MEMORY[0x26D63A640](v26, -1, -1);
      MEMORY[0x26D63A640](v18, -1, -1);
    }

    v12 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
    v27 = OBJC_IVAR___ResetTimerIntentResponse_code;
    swift_beginAccess();
    *&v12[v27] = 4;
    [v12 setUserActivity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2693B54B0;
    *(v28 + 32) = v15;
    type metadata accessor for SiriTimer();
    v29 = v15;
    v30 = sub_2693B3800();

    [v12 setResetTimers_];
  }

  a2(v12);
}

void sub_2693A68E4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_2693A6978(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ResetTimerIntentHandlerSingle();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2693A69F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_269344F9C;

  return v6();
}

uint64_t sub_2693A6ADC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_269344B10;

  return v7();
}

uint64_t sub_2693A6BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2693A7844(a3, v23 - v10);
  v12 = sub_2693B3920();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2693A78B4(v11);
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

  sub_2693B3910();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2693B38E0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2693B3780() + 32;
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

    sub_2693A78B4(a3);

    return v21;
  }

LABEL_8:
  sub_2693A78B4(a3);
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

uint64_t sub_2693A6E80(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2693A6F78;

  return v6(a1);
}

uint64_t sub_2693A6F78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2693A7070(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal29ResetTimerIntentHandlerSingle_siriTimerManager, v22);
  v5 = v23;
  v6 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v7 = (*(v6 + 64))(v5, v6);
  if (v7)
  {
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v22);
    if ([v8 state])
    {
      v9 = [a1 targetTimer];
      v10 = SiriTimer.matches(targetTimer:ignoreRemainingTime:)(v9, 1);

      if (v10)
      {
        type metadata accessor for SiriTimerResolutionResult();
        v11 = sub_2693B1178(v8);
        (*(a3 + 16))(a3, v11);
      }

      else
      {
        if (qword_28030CE60 != -1)
        {
          swift_once();
        }

        v17 = sub_2693B3620();
        __swift_project_value_buffer(v17, qword_28030D568);
        v18 = sub_2693B3610();
        v19 = sub_2693B39B0();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_26933F000, v18, v19, "Timer on the device doesn't match the timer in user request: returning needsConfirmation", v20, 2u);
          MEMORY[0x26D63A640](v20, -1, -1);
        }

        type metadata accessor for SiriTimerResolutionResult();
        v21 = v8;
        v11 = sub_2693B13DC(v8);

        (*(a3 + 16))(a3, v11);
      }

      goto LABEL_17;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  if (qword_28030CE60 != -1)
  {
    swift_once();
  }

  v12 = sub_2693B3620();
  __swift_project_value_buffer(v12, qword_28030D568);
  v13 = sub_2693B3610();
  v14 = sub_2693B39A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26933F000, v13, v14, "Timer is not found on device. Skipping Confirm step and will fail the request in Handle step.", v15, 2u);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  type metadata accessor for SiriTimerResolutionResult();
  v16 = _s21SiriTimeTimerInternal0aC0C07invalidC0ACvgZ_0();
  v11 = sub_2693B1178(v16);

  (*(a3 + 16))(a3, v11);
LABEL_17:
}

void sub_2693A736C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_28030CE60 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_28030D568);
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26933F000, v8, v9, "Handling reset timer intent.", v10, 2u);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC21SiriTimeTimerInternal29ResetTimerIntentHandlerSingle_siriTimerManager;
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal29ResetTimerIntentHandlerSingle_siriTimerManager, v29);
  v12 = v30;
  v13 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v14 = (*(v13 + 64))(v12, v13);
  if (v14)
  {
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v29);
    if ([v15 state])
    {
      sub_26934489C(a2 + v11, v29);
      v16 = v30;
      v17 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v18 = swift_allocObject();
      *(v18 + 16) = sub_269344A48;
      *(v18 + 24) = v6;
      v19 = *(v17 + 40);

      v19(a1, sub_2693A7788, v18, v16, v17);

      __swift_destroy_boxed_opaque_existential_1(v29);

      return;
    }

    v25 = sub_2693B3610();
    v26 = sub_2693B39B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26933F000, v25, v26, "Timer has an unknown state (meaning there's no timer set on phone): returning with .failureNoTimers.", v27, 2u);
      MEMORY[0x26D63A640](v27, -1, -1);
    }

    v23 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
    v28 = OBJC_IVAR___ResetTimerIntentResponse_code;
    swift_beginAccess();
    *&v23[v28] = 101;
    [v23 setUserActivity_];
    (a3)[2](a3, v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = sub_2693B3610();
    v21 = sub_2693B39A0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26933F000, v20, v21, "siriTimerManager.currentTimerSync get nil result: returning with .failureNoTimers", v22, 2u);
      MEMORY[0x26D63A640](v22, -1, -1);
    }

    v23 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
    v24 = OBJC_IVAR___ResetTimerIntentResponse_code;
    swift_beginAccess();
    *&v23[v24] = 101;
    [v23 setUserActivity_];
    (a3)[2](a3, v23);
  }
}

uint64_t sub_2693A7790()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344B10;

  return sub_2693A645C(v2, v3);
}

uint64_t sub_2693A7844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693A78B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693A791C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269344F9C;

  return sub_2693A6E80(a1, v4);
}

uint64_t sub_2693A79D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269344B10;

  return sub_2693A6E80(a1, v4);
}

uint64_t sub_2693A7A8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_2693A6268(v2, v3);
}

uint64_t sub_2693A7B40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_2693A605C(v2, v3);
}

uint64_t sub_2693A7BF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_2693B3750();
  v7 = v6;

  if (v5 == sub_2693B3750() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_2693B3CE0();

    if ((v10 & 1) == 0)
    {
LABEL_6:
      result = 10;
      goto LABEL_10;
    }
  }

  result = [a1 code];
  if (result <= 5)
  {
    if (result < 6)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (result > 7)
  {
    switch(result)
    {
      case 8:
        result = 7;
        goto LABEL_10;
      case 9:
        result = 8;
        goto LABEL_10;
      case 10:
        result = 9;
        goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (result == 6)
  {
    result = sub_2693A83E8(MEMORY[0x277D84F90]);
  }

  else
  {
    result = 6;
  }

LABEL_10:
  *a2 = result;
  return result;
}

uint64_t TimerHandlerError.unsupportedCode.getter()
{
  if (*v0 > 9uLL)
  {
    return 6;
  }

  else
  {
    return qword_2693B6FB0[*v0];
  }
}

uint64_t static TimerHandlerError.from(unsupportedReason:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result <= 5)
  {
    if (result < 6)
    {
      *a2 = result;
      return result;
    }

LABEL_14:
    result = 10;
    *a2 = 10;
    return result;
  }

  if (result > 7)
  {
    switch(result)
    {
      case 8:
        result = 7;
        *a2 = 7;
        return result;
      case 9:
        result = 8;
        *a2 = 8;
        return result;
      case 10:
        result = 9;
        *a2 = 9;
        return result;
    }

    goto LABEL_14;
  }

  if (result == 6)
  {
    result = sub_2693A83E8(MEMORY[0x277D84F90]);
    *a2 = result;
  }

  else
  {
    result = 6;
    *a2 = 6;
  }

  return result;
}

uint64_t sub_2693A7E1C(uint64_t a1)
{
  v2 = sub_2693A876C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2693A7E58(uint64_t a1)
{
  v2 = sub_2693A876C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t == infix(_:_:)(int64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 4)
  {
    if (v2 <= 6)
    {
      if (v2 == 5)
      {
        if (v3 == 5)
        {
          v4 = 1;
          v2 = 5;
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v2 == 6)
      {
        if (v3 == 6)
        {
          v4 = 1;
          v2 = 6;
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else
    {
      switch(v2)
      {
        case 7:
          if (v3 == 7)
          {
            v4 = 1;
            v2 = 7;
            goto LABEL_36;
          }

          goto LABEL_35;
        case 8:
          if (v3 == 8)
          {
            v4 = 1;
            v2 = 8;
            goto LABEL_36;
          }

          goto LABEL_35;
        case 9:
          if (v3 == 9)
          {
            v4 = 1;
            v2 = 9;
            goto LABEL_36;
          }

LABEL_35:
          sub_26934AD9C(*a2);
          sub_26934AD9C(v2);
          v4 = 0;
          goto LABEL_36;
      }
    }

LABEL_34:
    if (v3 >= 0xA)
    {
      sub_26934AD9C(*a2);
      sub_26934AD9C(v2);
      v4 = sub_2693A804C(v2, v3);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (!v3)
      {
        v2 = 0;
        v4 = 1;
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v2 = 1;
        v4 = 1;
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v4 = 1;
      v2 = 2;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v2 == 3)
  {
    if (v3 == 3)
    {
      v4 = 1;
      v2 = 3;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v2 != 4)
  {
    goto LABEL_34;
  }

  if (v3 != 4)
  {
    goto LABEL_35;
  }

  v4 = 1;
  v2 = 4;
LABEL_36:
  sub_26934ADAC(v2);
  sub_26934ADAC(v3);
  return v4 & 1;
}

uint64_t sub_2693A804C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    v13 = *(*(v2 + 48) + 8 * v11);

    sub_26939C188(v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_2693A81A8(v16, v12);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2693A81A8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_26934B18C();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D639EB0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26D639EB0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2693B3A50();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_2693B3A50();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_2693B3C70();
  }

  result = sub_2693B3C70();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_2693A83E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D4E0, &qword_2693B6A80);
    v3 = sub_2693B3CA0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_26939C188(v6);
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

uint64_t get_enum_tag_for_layout_string_21SiriTimeTimerInternal0C12HandlerErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2693A8508(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 8))
  {
    return (*a1 + 2147483638);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2693A8560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

void *sub_2693A85B0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_2693A85E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D500, &qword_2693B6FA0);
    v3 = sub_2693B3CA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2693A86FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26939C1CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26938AF94(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

uint64_t sub_2693A86FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D588, &qword_2693B6FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2693A876C()
{
  result = qword_28030D590;
  if (!qword_28030D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D590);
  }

  return result;
}

char *DismissTimerIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

void sub_2693A8858(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2693B3750();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2693A88BC(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_2693B3740();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id DismissTimerIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DismissTimerIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DismissTimerIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissTimerIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DismissTimerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2693B3740();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DismissTimerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2693B3740();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DismissTimerIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id DismissTimerIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id DismissTimerIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DismissTimerIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_2693A8EF0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2693A95F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2693A8F6C()
{
  v1 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DismissTimerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DismissTimerIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DismissTimerIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___DismissTimerIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DismissTimerIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DismissTimerIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DismissTimerIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DismissTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DismissTimerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DismissTimerIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DismissTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693A9394(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DismissTimerIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DismissTimerIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DismissTimerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DismissTimerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DismissTimerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2693A95B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2693A95F0(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2693A9628()
{
  result = qword_28030D5A0;
  if (!qword_28030D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D5A0);
  }

  return result;
}

char *SearchTimerIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id sub_2693A97A4()
{
  v1 = [*v0 associatedDeviceTarget];

  return v1;
}

uint64_t sub_2693A97DC()
{
  v1 = [*v0 allAvailableTargets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SiriDevice();
  v3 = sub_2693B3820();

  return v3;
}

id sub_2693A9840()
{
  v1 = [*v0 targetingInfo];

  return v1;
}

void sub_2693A9878(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 label];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2693B3750();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2693A98E0(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_2693B3740();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLabel_];
}

id SearchTimerIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchTimerIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SearchTimerIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchTimerIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SearchTimerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2693B3740();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SearchTimerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2693B3740();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SearchTimerIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id SearchTimerIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id SearchTimerIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SearchTimerIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

void sub_2693A9F14(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_2693B3820();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_2693A9F88(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_2693B3800();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

uint64_t sub_2693AA054()
{
  v1 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SearchTimerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SearchTimerIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchTimerIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SearchTimerIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchTimerIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SearchTimerIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SearchTimerIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SearchTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SearchTimerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SearchTimerIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___SearchTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AA47C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___SearchTimerIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SearchTimerIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id SearchTimerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SearchTimerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SearchTimerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AA6A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2693AA700()
{
  result = qword_28030D5B0;
  if (!qword_28030D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D5B0);
  }

  return result;
}

char *CreateTimerIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

void sub_2693AA8D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 allAvailableTargets];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SiriDevice();
    v5 = sub_2693B3820();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_2693AA940(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriDevice();
    v3 = sub_2693B3800();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAllAvailableTargets_];
}

id CreateTimerIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CreateTimerIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CreateTimerIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateTimerIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CreateTimerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2693B3740();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id CreateTimerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2693B3740();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for CreateTimerIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id CreateTimerIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id CreateTimerIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for CreateTimerIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_2693AAF7C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2693AB67C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2693AAFF8()
{
  v1 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *CreateTimerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id CreateTimerIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CreateTimerIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___CreateTimerIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CreateTimerIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CreateTimerIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CreateTimerIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___CreateTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CreateTimerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id CreateTimerIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___CreateTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AB420(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___CreateTimerIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CreateTimerIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id CreateTimerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id CreateTimerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CreateTimerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AB644(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2693AB67C(unint64_t result)
{
  if (result - 100 >= 6)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2693AB6C8()
{
  result = qword_28030D5C0;
  if (!qword_28030D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D5C0);
  }

  return result;
}

char *DeleteTimerIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id sub_2693AB82C()
{
  v1 = [*v0 targetTimer];

  return v1;
}

id DeleteTimerIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeleteTimerIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DeleteTimerIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteTimerIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeleteTimerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2693B3740();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DeleteTimerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2693B3740();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DeleteTimerIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id DeleteTimerIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id DeleteTimerIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DeleteTimerIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_2693ABE28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2693AC620(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_2693ABE5C(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_2693B3820();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_2693ABED0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_2693B3800();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

uint64_t sub_2693ABF9C()
{
  v1 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DeleteTimerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DeleteTimerIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeleteTimerIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___DeleteTimerIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeleteTimerIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DeleteTimerIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeleteTimerIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DeleteTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeleteTimerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DeleteTimerIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DeleteTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AC3C4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DeleteTimerIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DeleteTimerIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DeleteTimerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DeleteTimerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DeleteTimerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AC5E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2693AC620(unint64_t result)
{
  if (result - 100 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2693AC66C()
{
  result = qword_28030D5D0;
  if (!qword_28030D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D5D0);
  }

  return result;
}

char *SetTimerAttributeIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetTimerAttributeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetTimerAttributeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetTimerAttributeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetTimerAttributeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetTimerAttributeIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetTimerAttributeIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SetTimerAttributeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2693B3740();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetTimerAttributeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2693B3740();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SetTimerAttributeIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id SetTimerAttributeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id SetTimerAttributeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SetTimerAttributeIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_2693ACE0C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2693AD494(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2693ACE88()
{
  v1 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SetTimerAttributeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetTimerAttributeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetTimerAttributeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetTimerAttributeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetTimerAttributeIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SetTimerAttributeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetTimerAttributeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SetTimerAttributeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetTimerAttributeIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___SetTimerAttributeIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetTimerAttributeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AD238(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___SetTimerAttributeIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SetTimerAttributeIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id SetTimerAttributeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetTimerAttributeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetTimerAttributeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetTimerAttributeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AD45C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2693AD494(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2693AD4E0()
{
  result = qword_28030D5E0;
  if (!qword_28030D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D5E0);
  }

  return result;
}

char *ResetTimerIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ResetTimerIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ResetTimerIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ResetTimerIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResetTimerIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ResetTimerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2693B3740();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ResetTimerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2693B3740();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ResetTimerIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ResetTimerIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ResetTimerIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ResetTimerIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2693ADC5C()
{
  v1 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ResetTimerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ResetTimerIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResetTimerIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ResetTimerIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ResetTimerIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ResetTimerIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ResetTimerIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ResetTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResetTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ResetTimerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ResetTimerIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ResetTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResetTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AE084(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ResetTimerIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ResetTimerIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ResetTimerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ResetTimerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ResetTimerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResetTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AE2A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2693AE308()
{
  result = qword_28030D5F0;
  if (!qword_28030D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D5F0);
  }

  return result;
}

char *PauseTimerIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id PauseTimerIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PauseTimerIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PauseTimerIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PauseTimerIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PauseTimerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2693B3740();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id PauseTimerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2693B3740();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PauseTimerIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id PauseTimerIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id PauseTimerIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for PauseTimerIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_2693AEA30@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2693AF130(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2693AEAAC()
{
  v1 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *PauseTimerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id PauseTimerIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PauseTimerIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___PauseTimerIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PauseTimerIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PauseTimerIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PauseTimerIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___PauseTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PauseTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PauseTimerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id PauseTimerIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___PauseTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PauseTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AEED4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___PauseTimerIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for PauseTimerIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id PauseTimerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id PauseTimerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PauseTimerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for PauseTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AF0F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2693AF130(unint64_t result)
{
  if (result - 100 >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2693AF17C()
{
  result = qword_28030D600;
  if (!qword_28030D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D600);
  }

  return result;
}

char *ResumeTimerIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ResumeTimerIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ResumeTimerIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ResumeTimerIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResumeTimerIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ResumeTimerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2693B3740();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ResumeTimerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2693B3740();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ResumeTimerIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ResumeTimerIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ResumeTimerIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2693B3740();

  v8 = sub_2693B3740();

  if (a5)
  {
    v9 = sub_2693B3710();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ResumeTimerIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2693AF8E0()
{
  v1 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ResumeTimerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ResumeTimerIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResumeTimerIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ResumeTimerIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ResumeTimerIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ResumeTimerIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ResumeTimerIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ResumeTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResumeTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ResumeTimerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ResumeTimerIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ResumeTimerIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResumeTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AFD08(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ResumeTimerIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ResumeTimerIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ResumeTimerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ResumeTimerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ResumeTimerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2693B3710();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResumeTimerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2693AFF2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2693AFF8C()
{
  result = qword_28030D610;
  if (!qword_28030D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D610);
  }

  return result;
}

unint64_t SiriTimerState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_2693B0064@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_2693B0080(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id sub_2693B010C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id SiriTimerStateResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2693B3710();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SiriTimerStateResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2693B3710();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriTimerStateResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id SiriTimerStateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriTimerStateResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2693B0404()
{
  result = qword_28030D618;
  if (!qword_28030D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D618);
  }

  return result;
}

unint64_t SiriTimerType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id SiriTimerTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2693B3710();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SiriTimerTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2693B3710();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriTimerTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id SiriTimerTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriTimerTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2693B07A8()
{
  result = qword_28030D620;
  if (!qword_28030D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D620);
  }

  return result;
}

unint64_t SiriTargetMatchType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id SiriTargetMatchTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2693B3710();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SiriTargetMatchTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2693B3710();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriTargetMatchTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id SiriTargetMatchTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriTargetMatchTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2693B0B4C()
{
  result = qword_28030D628;
  if (!qword_28030D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D628);
  }

  return result;
}

uint64_t sub_2693B0BF0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 fireDate];
  if (v3)
  {
    v4 = v3;
    sub_2693B3150();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2693B3170();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2693B0C94(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D498, &unk_2693B7D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_26938B928(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_2693B3170();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_2693B3140();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setFireDate_];
}

id SiriTimer.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2693B3740();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2693B3740();

  if (a6)
  {
    v10 = sub_2693B3740();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id SiriTimer.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2693B3740();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2693B3740();

  if (a6)
  {
    v10 = sub_2693B3740();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for SiriTimer();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id SiriTimer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriTimer.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriTimer();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693B1178(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriTimerResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2693B122C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2693B1324();

    sub_2693B3C60();
  }

  else
  {

    sub_2693B3CF0();
    sub_2693B1324();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2693B1324();
  v2 = sub_2693B3800();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SiriTimerResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_2693B1324()
{
  result = qword_28030D630;
  if (!qword_28030D630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030D630);
  }

  return result;
}

id sub_2693B13DC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriTimerResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id SiriTimerResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2693B3710();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SiriTimerResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2693B3710();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriTimerResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2693B17CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2693B1894(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mementoData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2693B3130();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2693B18FC(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2693B3120();
  }

  v4 = v3;
  [v2 setMementoData_];
}

id SiriDevice.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2693B3740();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2693B3740();

  if (a6)
  {
    v10 = sub_2693B3740();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id SiriDevice.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2693B3740();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2693B3740();

  if (a6)
  {
    v10 = sub_2693B3740();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for SiriDevice();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id SiriDevice.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriDevice.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriDevice();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693B1D2C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriDeviceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2693B1DE0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2693B1324();

    sub_2693B3C60();
  }

  else
  {

    sub_2693B3CF0();
    sub_2693B1324();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2693B1324();
  v2 = sub_2693B3800();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SiriDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_2693B1F44(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriDeviceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id SiriDeviceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2693B3710();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SiriDeviceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2693B3710();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriDeviceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2693B2334(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2693B2444(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 deviceType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2693B3750();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2693B24AC(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_2693B3740();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDeviceType_];
}

void sub_2693B251C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2693B3820();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void sub_2693B2580(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*a1)
  {
    v7 = sub_2693B3800();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id SiriRemoteTimerTarget.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2693B3740();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2693B3740();

  if (a6)
  {
    v10 = sub_2693B3740();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id SiriRemoteTimerTarget.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2693B3740();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2693B3740();

  if (a6)
  {
    v10 = sub_2693B3740();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for SiriRemoteTimerTarget();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id SiriRemoteTimerTarget.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriRemoteTimerTarget.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriRemoteTimerTarget();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2693B29A8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriRemoteTimerTargetResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2693B2A5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2693B1324();

    sub_2693B3C60();
  }

  else
  {

    sub_2693B3CF0();
    sub_2693B1324();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2693B1324();
  v2 = sub_2693B3800();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SiriRemoteTimerTargetResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_2693B2BC0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriRemoteTimerTargetResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id SiriRemoteTimerTargetResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2693B3710();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SiriRemoteTimerTargetResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2693B3710();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriRemoteTimerTargetResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2693B2FB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}