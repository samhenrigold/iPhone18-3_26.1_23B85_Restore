Swift::Void __swiftcall DMCBackgroundTaskWrapper.setCompleted()()
{
  v1 = [v0 task];
  [v1 setTaskCompleted];

  [v0 setCompleted_];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DMCBackgroundTaskWrapper.extend(forInterval:)(Swift::Double forInterval)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [v1 task];
  v16[0] = 0;
  v4 = [v3 setTaskExpiredWithRetryAfter:v16 error:forInterval];

  if (v4)
  {
    v5 = v16[0];
  }

  else
  {
    v6 = v16[0];
    v7 = sub_247F23C9C();

    swift_willThrow();
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v8 = sub_247F23E1C();
    __swift_project_value_buffer(v8, qword_27EE7F098);
    v9 = v7;
    v10 = sub_247F23DFC();
    v11 = sub_247F2409C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_247F03000, v10, v11, "DMCBackgroundTask failed to extend task with error: %{public}@", v12, 0xCu);
      sub_247F08114(v13);
      MEMORY[0x24C1BF4F0](v13, -1, -1);
      MEMORY[0x24C1BF4F0](v12, -1, -1);
    }

    swift_willThrow();
  }
}

id sub_247F0471C()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR___DMCBackgroundTaskWrapper_completed) & 1) == 0)
  {
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v2 = sub_247F23E1C();
    __swift_project_value_buffer(v2, qword_27EE7F098);
    v3 = v0;
    v4 = sub_247F23DFC();
    v5 = sub_247F2409C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446210;
      v8 = [*&v3[OBJC_IVAR___DMCBackgroundTaskWrapper_task] identifier];
      v9 = sub_247F23F3C();
      v11 = v10;

      v12 = sub_247F082C8(v9, v11, &v14);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_247F03000, v4, v5, "DMCBackgroundTaskWrapper deinit called with an incomplete task: %{public}s!", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1BF4F0](v7, -1, -1);
      MEMORY[0x24C1BF4F0](v6, -1, -1);
    }

    [v3 setCompleted];
  }

  v15.receiver = v1;
  v15.super_class = DMCBackgroundTaskWrapper;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

id DMCBackgroundTask.init(name:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_247F23EFC();

  v6 = [v4 initWithName:v5 queue:a3];

  return v6;
}

{
  v5 = sub_247F23EFC();

  v6 = [v3 initWithName:v5 queue:a3 launchHandler:0];

  return v6;
}

id DMCBackgroundTask.init(name:queue:launchHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_247F23EFC();

  if (a4)
  {
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_247F08E84;
    v12[3] = &block_descriptor;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v8 queue:a3 launchHandler:v9];
  _Block_release(v9);

  return v10;
}

id DMCBackgroundTask.init(name:queue:launchHandler:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = &v5[OBJC_IVAR___DMCBackgroundTask_targetDateString];
  *v9 = 0;
  v9[1] = 0;
  v5[OBJC_IVAR___DMCBackgroundTask_firstActionAfterInit] = 1;
  v10 = &v5[OBJC_IVAR___DMCBackgroundTask_completion];
  *v10 = 0;
  v10[1] = 0;
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v11 = sub_247F23E1C();
  __swift_project_value_buffer(v11, qword_27EE7F098);

  v12 = sub_247F23DFC();
  v13 = sub_247F240AC();

  v40 = a1;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = a4;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_247F082C8(v40, a2, aBlock);
    _os_log_impl(&dword_247F03000, v12, v13, "DMCBackgroundTask initialized task: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1BF4F0](v16, -1, -1);
    v17 = v15;
    a4 = v14;
    a1 = v40;
    MEMORY[0x24C1BF4F0](v17, -1, -1);
  }

  v18 = &v5[OBJC_IVAR___DMCBackgroundTask_name];
  *v18 = a1;
  v18[1] = a2;
  v5[OBJC_IVAR___DMCBackgroundTask_active] = 0;
  *v9 = 0;
  v9[1] = 0;

  v19 = *v10;
  v20 = v10[1];
  *v10 = a4;
  v10[1] = a5;
  sub_247F081DC(a4, a5);
  sub_247F081EC(v19, v20);
  v42.receiver = v5;
  v42.super_class = DMCBackgroundTask;
  v21 = objc_msgSendSuper2(&v42, sel_init);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 sharedScheduler];
  v25 = sub_247F23EFC();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = v26;
  aBlock[4] = sub_247F08238;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247F08E84;
  aBlock[3] = &block_descriptor_7;
  v28 = _Block_copy(aBlock);
  v29 = a4;

  v30 = [v24 registerForTaskWithIdentifier:v25 usingQueue:a3 launchHandler:v28];
  _Block_release(v28);

  if (v30)
  {

    sub_247F081EC(v29, a5);
  }

  else
  {
    v31 = v29;

    v32 = sub_247F23DFC();
    v33 = sub_247F2409C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136446210;
      v36 = sub_247F082C8(v40, a2, aBlock);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_247F03000, v32, v33, "DMCBackgroundTask failed to register task: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C1BF4F0](v35, -1, -1);
      MEMORY[0x24C1BF4F0](v34, -1, -1);

      sub_247F081EC(v31, a5);
    }

    else
    {

      sub_247F081EC(v29, a5);
    }
  }

  return v23;
}

uint64_t sub_247F052F0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v7 = sub_247F23E1C();
  __swift_project_value_buffer(v7, qword_27EE7F098);

  v8 = sub_247F23DFC();
  v9 = sub_247F240AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_247F082C8(a2, a3, aBlock);
    _os_log_impl(&dword_247F03000, v8, v9, "DMCBackgroundTask launch handler called for task: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1BF4F0](v11, -1, -1);
    MEMORY[0x24C1BF4F0](v10, -1, -1);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v12;
  aBlock[4] = sub_247F08B88;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247F23968;
  aBlock[3] = &block_descriptor_37;
  v14 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v14);
  swift_beginAccess();
  if (*(v12 + 16))
  {

    v15 = sub_247F23DFC();
    v16 = sub_247F240AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_247F082C8(a2, a3, v37);
      _os_log_impl(&dword_247F03000, v15, v16, "DMCBackgroundTask expired immediately after running task: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1BF4F0](v18, -1, -1);
      MEMORY[0x24C1BF4F0](v17, -1, -1);
    }

    v37[0] = 0;
    if ([a1 setTaskExpiredWithRetryAfter:v37 error:0.0])
    {
      v19 = v37[0];
    }

    else
    {
      v26 = v37[0];
      v27 = sub_247F23C9C();

      swift_willThrow();

      v28 = v27;
      v29 = sub_247F23DFC();
      v30 = sub_247F2409C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v37[0] = v33;
        *v31 = 136446466;
        *(v31 + 4) = sub_247F082C8(a2, a3, v37);
        *(v31 + 12) = 2114;
        v34 = v27;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v35;
        *v32 = v35;
        _os_log_impl(&dword_247F03000, v29, v30, "DMCBackgroundTask failed to expire task: %{public}s with error: %{public}@", v31, 0x16u);
        sub_247F08114(v32);
        MEMORY[0x24C1BF4F0](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x24C1BF4F0](v33, -1, -1);
        MEMORY[0x24C1BF4F0](v31, -1, -1);
      }

      [a1 setTaskCompleted];
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      [Strong setTargetDateString_];
    }

    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22 && (v23 = v22, v24 = [v22 completion], v23, v24))
    {
      v25 = [objc_allocWithZone(DMCBackgroundTaskWrapper) initWithTask_];
      v24[2](v24, v25);

      _Block_release(v24);
    }

    else
    {
      [a1 setTaskCompleted];
    }
  }
}

uint64_t sub_247F05890(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v6 = sub_247F23E1C();
  __swift_project_value_buffer(v6, qword_27EE7F098);

  v7 = sub_247F23DFC();
  v8 = sub_247F240AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_247F082C8(a1, a2, v12);
    _os_log_impl(&dword_247F03000, v7, v8, "DMCBackgroundTask expiration handler called for task: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1BF4F0](v10, -1, -1);
    MEMORY[0x24C1BF4F0](v9, -1, -1);
  }

  result = swift_beginAccess();
  *(a3 + 16) = 1;
  return result;
}

void sub_247F05A04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_247F05B18()
{
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v1 = sub_247F23E1C();
  __swift_project_value_buffer(v1, qword_27EE7F098);
  v2 = v0;
  v3 = sub_247F23DFC();
  v4 = sub_247F240AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = *&v2[OBJC_IVAR___DMCBackgroundTask_name];
    v8 = *&v2[OBJC_IVAR___DMCBackgroundTask_name + 8];

    v9 = sub_247F082C8(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_247F03000, v3, v4, "DMCBackgroundTask deallocated task: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1BF4F0](v6, -1, -1);
    MEMORY[0x24C1BF4F0](v5, -1, -1);
  }

  v10 = [objc_opt_self() sharedScheduler];

  v11 = sub_247F23EFC();

  [v10 deregisterTaskWithIdentifier_];

  v14.receiver = v2;
  v14.super_class = DMCBackgroundTask;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

uint64_t DMCBackgroundTask.targetDate()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 targetDateString];
  if (v3)
  {
    v4 = v3;
    sub_247F23F3C();

    String.DMCDate.getter(a1);
  }

  else
  {
    v6 = sub_247F23DEC();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

void DMCBackgroundTask.submitRequest(withInterval:tolerance:requirements:completion:)(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v6 = v5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  [v6 setActive_];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247F08E84;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);

  [v6 setCompletion_];
  _Block_release(v12);
  v13 = objc_opt_self();
  v14 = [v13 sharedScheduler];
  v15 = [v6 name];
  v16 = [v14 taskRequestForIdentifier_];

  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      if (![v6 firstActionAfterInit])
      {
        [v6 updateExistingRequest:v18 interval:a1 tolerance:a4 requirements:a5];

        return;
      }

      if (qword_27EE7EC00 != -1)
      {
        swift_once();
      }

      v19 = sub_247F23E1C();
      __swift_project_value_buffer(v19, qword_27EE7F098);
      v20 = v6;
      v21 = sub_247F23DFC();
      v22 = sub_247F2409C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v23 = 136315138;
        v24 = [v20 name];
        v25 = v20;
        v26 = sub_247F23F3C();
        v51 = a1;
        v28 = v27;

        v29 = v26;
        v20 = v25;
        v30 = sub_247F082C8(v29, v28, aBlock);
        a1 = v51;

        *(v23 + 4) = v30;
        _os_log_impl(&dword_247F03000, v21, v22, "DMCBackgroundTask task with name %s exists, attempting to cancel before submitting again", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x24C1BF4F0](v50, -1, -1);
        MEMORY[0x24C1BF4F0](v23, -1, -1);
      }

      v31 = [v13 sharedScheduler];
      v32 = [v20 name];
      aBlock[0] = 0;
      v33 = v20;
      v34 = [v31 cancelTaskRequestWithIdentifier:v32 error:aBlock];

      if (!v34)
      {
        v36 = aBlock[0];
        v37 = sub_247F23C9C();

        swift_willThrow();
        v38 = v33;
        v39 = sub_247F23DFC();
        v40 = sub_247F2409C();

        if (os_log_type_enabled(v39, v40))
        {
          v52 = v37;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v41 = 136315138;
          v43 = [v38 0x278EEDBF8];
          v44 = sub_247F23F3C();
          v45 = a1;
          v47 = v46;

          v48 = sub_247F082C8(v44, v47, aBlock);
          a1 = v45;

          *(v41 + 4) = v48;
          _os_log_impl(&dword_247F03000, v39, v40, "DMCBackgroundTask failed to cancel task task: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x24C1BF4F0](v42, -1, -1);
          MEMORY[0x24C1BF4F0](v41, -1, -1);

          v49 = v52;
        }

        else
        {

          v49 = v37;
        }

        goto LABEL_16;
      }

      v35 = aBlock[0];
    }
  }

LABEL_16:
  [v6 setFirstActionAfterInit_];
  [v6 submitNewRequestWithInterval:a1 tolerance:a4 requirements:a5];
}

Swift::Void __swiftcall DMCBackgroundTask.cancel()()
{
  v45[1] = *MEMORY[0x277D85DE8];
  if ([v0 active])
  {
    v1 = [objc_opt_self() sharedScheduler];
    v2 = [v0 name];
    v45[0] = 0;
    v3 = [v1 cancelTaskRequestWithIdentifier:v2 error:v45];

    if (v3)
    {
      v4 = qword_27EE7EC00;
      v5 = v45[0];
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_247F23E1C();
      __swift_project_value_buffer(v6, qword_27EE7F098);
      v7 = v0;
      v8 = sub_247F23DFC();
      v9 = sub_247F240AC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v45[0] = v11;
        *v10 = 136446210;
        v12 = [v7 name];
        v13 = sub_247F23F3C();
        v15 = v14;

        v16 = sub_247F082C8(v13, v15, v45);

        *(v10 + 4) = v16;
        _os_log_impl(&dword_247F03000, v8, v9, "DMCBackgroundTask canceled task: %{public}s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x24C1BF4F0](v11, -1, -1);
        MEMORY[0x24C1BF4F0](v10, -1, -1);
      }

      [v7 setActive_];
      [v7 setTargetDateString_];
      [v7 setFirstActionAfterInit_];
    }

    else
    {
      v27 = v45[0];
      v28 = sub_247F23C9C();

      swift_willThrow();
      if (qword_27EE7EC00 != -1)
      {
        swift_once();
      }

      v29 = sub_247F23E1C();
      __swift_project_value_buffer(v29, qword_27EE7F098);
      v30 = v0;
      v31 = v28;
      v32 = sub_247F23DFC();
      v33 = sub_247F2409C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v45[0] = v36;
        *v34 = 136446466;
        v37 = [v30 name];
        v38 = sub_247F23F3C();
        v40 = v39;

        v41 = sub_247F082C8(v38, v40, v45);

        *(v34 + 4) = v41;
        *(v34 + 12) = 2114;
        v42 = v28;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v43;
        *v35 = v43;
        _os_log_impl(&dword_247F03000, v32, v33, "DMCBackgroundTask failed to cancel task '%{public}s' with error: %{public}@", v34, 0x16u);
        sub_247F08114(v35);
        MEMORY[0x24C1BF4F0](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x24C1BF4F0](v36, -1, -1);
        MEMORY[0x24C1BF4F0](v34, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v17 = sub_247F23E1C();
    __swift_project_value_buffer(v17, qword_27EE7F098);
    v18 = v0;
    oslog = sub_247F23DFC();
    v19 = sub_247F240AC();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45[0] = v21;
      *v20 = 136446210;
      v22 = [v18 name];
      v23 = sub_247F23F3C();
      v25 = v24;

      v26 = sub_247F082C8(v23, v25, v45);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_247F03000, oslog, v19, "DMCBackgroundTask ignoring cancellation for inactive task: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1BF4F0](v21, -1, -1);
      MEMORY[0x24C1BF4F0](v20, -1, -1);
    }

    else
    {
    }
  }
}

void sub_247F06C3C(uint64_t a1, double a2, double a3)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v7 = sub_247F23DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v59 - v13;
  v15 = [v3 name];
  v16 = [objc_allocWithZone(MEMORY[0x277CF07C8]) initWithIdentifier_];

  [v3 infuseRequest:v16 interval:a1 tolerance:a2 requirements:a3];
  v17 = [objc_opt_self() sharedScheduler];
  v62[0] = 0;
  LODWORD(v15) = [v17 submitTaskRequest:v16 error:v62];

  if (v15)
  {
    v18 = qword_27EE7EC00;
    v19 = v62[0];
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_247F23E1C();
    __swift_project_value_buffer(v20, qword_27EE7F098);
    v21 = v3;
    v22 = sub_247F23DFC();
    v23 = sub_247F240AC();

    v24 = os_log_type_enabled(v22, v23);
    v61 = v21;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v59 = v7;
      v26 = v25;
      v27 = swift_slowAlloc();
      v60 = v16;
      v28 = v27;
      v62[0] = v27;
      *v26 = 136446722;
      v29 = [v21 name];
      v30 = sub_247F23F3C();
      v32 = v31;

      v33 = sub_247F082C8(v30, v32, v62);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2050;
      *(v26 + 14) = a2;
      *(v26 + 22) = 2050;
      *(v26 + 24) = a3;
      _os_log_impl(&dword_247F03000, v22, v23, "DMCBackgroundTask submitted task '%{public}s' to run in %{public}f (+%%%{public}f) seconds", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v34 = v28;
      v16 = v60;
      MEMORY[0x24C1BF4F0](v34, -1, -1);
      v35 = v26;
      v7 = v59;
      MEMORY[0x24C1BF4F0](v35, -1, -1);
    }

    sub_247F23DDC();
    sub_247F23D7C();
    v36 = *(v8 + 8);
    v36(v10, v7);
    v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v38 = sub_247F23EFC();
    [v37 setDateFormat_];

    v39 = sub_247F23D8C();
    v40 = [v37 stringFromDate_];

    if (!v40)
    {
      sub_247F23F3C();
      v40 = sub_247F23EFC();
    }

    v36(v14, v7);
    [v61 setTargetDateString_];
  }

  else
  {
    v41 = v62[0];
    v42 = sub_247F23C9C();

    swift_willThrow();
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v43 = sub_247F23E1C();
    __swift_project_value_buffer(v43, qword_27EE7F098);
    v44 = v3;
    v45 = v42;
    v46 = sub_247F23DFC();
    v47 = sub_247F2409C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v62[0] = v50;
      *v48 = 136446466;
      v51 = [v44 name];
      v52 = sub_247F23F3C();
      v53 = v16;
      v55 = v54;

      v56 = sub_247F082C8(v52, v55, v62);

      *(v48 + 4) = v56;
      *(v48 + 12) = 2114;
      v57 = v42;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 14) = v58;
      *v49 = v58;
      _os_log_impl(&dword_247F03000, v46, v47, "DMCBackgroundTask failed to submit task '%{public}s' with error: %{public}@", v48, 0x16u);
      sub_247F08114(v49);
      MEMORY[0x24C1BF4F0](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C1BF4F0](v50, -1, -1);
      MEMORY[0x24C1BF4F0](v48, -1, -1);
    }

    else
    {
    }
  }
}

void sub_247F072C4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v9 = sub_247F23DEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  [v4 infuseRequest:a1 interval:a2 tolerance:a3 requirements:a4];
  v16 = [objc_opt_self() sharedScheduler];
  v58[0] = 0;
  v17 = [v16 updateTaskRequest:a1 error:v58];

  if (v17)
  {
    v18 = qword_27EE7EC00;
    v19 = v58[0];
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_247F23E1C();
    __swift_project_value_buffer(v20, qword_27EE7F098);
    v21 = v4;
    v22 = sub_247F23DFC();
    v23 = sub_247F240AC();

    v24 = os_log_type_enabled(v22, v23);
    v57 = v21;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v56 = v9;
      v27 = v26;
      v58[0] = v26;
      *v25 = 136446722;
      v28 = [v21 name];
      v29 = sub_247F23F3C();
      v31 = v30;

      v32 = sub_247F082C8(v29, v31, v58);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2050;
      *(v25 + 14) = a3;
      *(v25 + 22) = 2050;
      *(v25 + 24) = a4;
      _os_log_impl(&dword_247F03000, v22, v23, "DMCBackgroundTask updated task '%{public}s' to run in %{public}f (+%{public}f seconds", v25, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v33 = v27;
      v9 = v56;
      MEMORY[0x24C1BF4F0](v33, -1, -1);
      MEMORY[0x24C1BF4F0](v25, -1, -1);
    }

    sub_247F23DDC();
    sub_247F23D7C();
    v34 = *(v10 + 8);
    v34(v12, v9);
    v35 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v36 = sub_247F23EFC();
    [v35 setDateFormat_];

    v37 = sub_247F23D8C();
    v38 = [v35 stringFromDate_];

    if (!v38)
    {
      sub_247F23F3C();
      v38 = sub_247F23EFC();
    }

    v34(v15, v9);
    [v57 setTargetDateString_];
    goto LABEL_13;
  }

  v39 = v58[0];
  v40 = sub_247F23C9C();

  swift_willThrow();
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v41 = sub_247F23E1C();
  __swift_project_value_buffer(v41, qword_27EE7F098);
  v42 = v4;
  v43 = v40;
  v38 = sub_247F23DFC();
  v44 = sub_247F2409C();

  if (os_log_type_enabled(v38, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v58[0] = v47;
    *v45 = 136446466;
    v48 = [v42 name];
    v49 = sub_247F23F3C();
    v51 = v50;

    v52 = sub_247F082C8(v49, v51, v58);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2114;
    v53 = v40;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v54;
    *v46 = v54;
    _os_log_impl(&dword_247F03000, v38, v44, "DMCBackgroundTask failed to update task '%{public}s' with error: %{public}@", v45, 0x16u);
    sub_247F08114(v46);
    MEMORY[0x24C1BF4F0](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C1BF4F0](v47, -1, -1);
    MEMORY[0x24C1BF4F0](v45, -1, -1);

LABEL_13:
    return;
  }
}

id _sSo10DMCNextNagC8DMCToolsEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_247F07A94(uint64_t a1, id *a2)
{
  result = sub_247F23F1C();
  *a2 = 0;
  return result;
}

uint64_t sub_247F07B0C(uint64_t a1, id *a2)
{
  v3 = sub_247F23F2C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_247F07B8C@<X0>(uint64_t *a3@<X8>)
{
  sub_247F23F3C();
  v4 = sub_247F23EFC();

  *a3 = v4;
  return result;
}

void *sub_247F07BD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_247F07C00(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_247F07C5C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_247F23F3C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_247F07C88(uint64_t a1)
{
  v2 = sub_247F08CC0(&qword_27EE7ECD8, type metadata accessor for URLResourceKey, &unk_247F253FC);
  v3 = sub_247F08CC0(&qword_27EE7ECE0, type metadata accessor for URLResourceKey, &unk_247F2539C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_247F07D44@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_247F23EFC();

  *a2 = v3;
  return result;
}

uint64_t sub_247F07D8C(uint64_t a1)
{
  v2 = sub_247F08CC0(&qword_27EE7ECC8, type metadata accessor for FLNotificationOptions, "\tJ1:l+");
  v3 = sub_247F08CC0(&qword_27EE7ECD0, type metadata accessor for FLNotificationOptions, &unk_247F25504);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_247F07E4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_247F23F3C();
  v3 = MEMORY[0x24C1BEAE0](v2);

  return v3;
}

uint64_t sub_247F07E8C(uint64_t a1, uint64_t a2)
{
  sub_247F23F3C();
  sub_247F23F6C();
}

uint64_t sub_247F07EE4(uint64_t a1, uint64_t a2)
{
  sub_247F23F3C();
  sub_247F243AC();
  sub_247F23F6C();
  v2 = sub_247F243CC();

  return v2;
}

uint64_t sub_247F07F5C(void *a1, uint64_t *a2)
{
  v2 = sub_247F23F3C();
  v4 = v3;
  if (v2 == sub_247F23F3C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_247F2430C();
  }

  return v7 & 1;
}

uint64_t sub_247F07FE4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_247F08030(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_247F08090(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_247F080A0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_247F08114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC10, &qword_247F251F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247F081DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247F081EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247F081FC()
{
  MEMORY[0x24C1BF540](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247F0826C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_247F082C8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_247F082C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247F08464(v11, 0, 0, 1, a1, a2);
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
    sub_247F08AD8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

uint64_t sub_247F08408(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_247F08464(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247F08570(a5, a6);
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
    result = sub_247F2421C();
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

void *sub_247F08570(uint64_t a1, unint64_t a2)
{
  v3 = sub_247F085BC(a1, a2);
  sub_247F086EC(&unk_285A0EEF8);
  return v3;
}

void *sub_247F085BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_247F087D8(v5, 0);
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

  result = sub_247F2421C();
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
        v10 = sub_247F23FBC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247F087D8(v10, 0);
        result = sub_247F241DC();
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

uint64_t sub_247F086EC(uint64_t result)
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

  result = sub_247F0884C(result, v11, 1, v3);
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

void *sub_247F087D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC70, &qword_247F25260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_247F0884C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC70, &qword_247F25260);
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

void sub_247F08968(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_247F089A0(void *a1, char a2, double a3, double a4)
{
  [a1 setScheduleAfter_];
  [a1 setTrySchedulingBefore_];
  [a1 setPriority_];
  if ((a2 & 2) != 0)
  {
    v9 = 1;
  }

  else
  {
    if ((a2 & 0x10) == 0)
    {
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    v9 = 5;
  }

  [a1 setRequiresProtectionClass_];
  if ((a2 & 4) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  [a1 setRequiresNetworkConnectivity_];
  if ((a2 & 8) != 0)
  {
LABEL_5:
    [a1 setRequiresUserInactivity_];
  }

LABEL_6:

  return [a1 setRequiresExternalPower_];
}

uint64_t sub_247F08A8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247F08AD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_247F08BE4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_247F08CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t String.DMCDate.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_247F23EFC();
  [v4 setDateFormat_];

  v6 = sub_247F23EFC();
  v7 = [v4 dateFromString_];

  if (v7)
  {
    sub_247F23DCC();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_247F23DEC();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, v8, 1, v9);
}

uint64_t Date.DMCString.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_247F23EFC();
  [v0 setDateFormat_];

  v2 = sub_247F23D8C();
  v3 = [v0 stringFromDate_];

  v4 = sub_247F23F3C();
  return v4;
}

id static Date.DMCDateFormatter.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_247F23EFC();
  [v0 setDateFormat_];

  return v0;
}

Swift::Bool __swiftcall Date.isWithin24Hours()()
{
  v0 = sub_247F23DEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_247F23DDC();
  sub_247F23D7C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_247F09234();
  LOBYTE(v3) = sub_247F23EEC();
  v7(v6, v0);
  return (v3 & 1) == 0;
}

unint64_t sub_247F09234()
{
  result = qword_27EE7ECE8;
  if (!qword_27EE7ECE8)
  {
    sub_247F23DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7ECE8);
  }

  return result;
}

void *String.DMCNagSchedule.getter(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = v88 - v9;
  v10 = sub_247F23DEC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v101 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = v88 - v14;
  v106[0] = 32;
  v106[1] = 0xE100000000000000;
  v103 = v106;

  v15 = a1;
  v16 = 0;
  v18 = sub_247F0AF0C(0x7FFFFFFFFFFFFFFFLL, 1, sub_247F0C41C, v102, v15, a2, v17);
  v19 = v18;
  v20 = *(v18 + 16);
  v96 = v20 - 1;
  if (v20 > 1)
  {
    v94 = v7;
    v21 = 0;
    v22 = v18 + 32;
    v92 = (v11 + 56);
    v93 = "TB,N,VfirstActionAfterInit";
    v98 = (v11 + 32);
    v90 = (v11 + 16);
    v91 = (v11 + 48);
    v88[2] = v11 + 8;
    v88[1] = v11 + 40;
    v60 = MEMORY[0x277D84F98];
    v89 = v18 + 32;
    v95 = v18;
    while (1)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      if (!__OFADD__(v21, 2))
      {
        v23 = v21 + 2;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        swift_once();
LABEL_26:
        v61 = sub_247F23E1C();
        __swift_project_value_buffer(v61, qword_27EE7F098);

        v62 = sub_247F23DFC();
        v63 = sub_247F2409C();

        if (!os_log_type_enabled(v62, v63))
        {
          goto LABEL_62;
        }

        LODWORD(v101) = v63;
        v64 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v106[0] = v100;
        *v64 = 136315394;
        v65 = sub_247F082C8(v16, v2, v106);

        *(v64 + 4) = v65;
        *(v64 + 12) = 2080;
        v105 = MEMORY[0x277D84F90];
        sub_247F0C3FC(0, 11, 0);
        v66 = 0x6E694D3031;
        v67 = 0x20u;
        v68 = v105;
        do
        {
          v87 = *(&unk_285A0EF20 + v67);
          if (v87 <= 4)
          {
            if (v87 <= 1)
            {
              if (v87)
              {
                if (v87 != 1)
                {
                  goto LABEL_71;
                }

                v70 = 0x6867696E74726F46;
                v69 = 0xEB00000000796C74;
              }

              else
              {
                v69 = 0xE700000000000000;
                v70 = 0x796C68746E6F4DLL;
              }
            }

            else if (v87 == 2)
            {
              v69 = 0xE600000000000000;
              v70 = 0x796C6B656557;
            }

            else if (v87 == 3)
            {
              v69 = 0xE500000000000000;
              v70 = 0x796C696144;
            }

            else
            {
              v69 = 0xE600000000000000;
              v70 = 0x796C72756F48;
            }
          }

          else if (v87 > 7)
          {
            switch(v87)
            {
              case 8:
                v70 = 1852394805;
                v69 = 0xE400000000000000;
                break;
              case 9:
                v70 = 1852394802;
                v69 = 0xE400000000000000;
                break;
              case 10:
                v69 = 0xE400000000000000;
                v70 = 1852394801;
                break;
              default:
                goto LABEL_71;
            }
          }

          else if (v87 == 5)
          {
            v70 = v66 + 2;
            v69 = 0xE500000000000000;
          }

          else if (v87 == 6)
          {
            v69 = 0xE500000000000000;
            v70 = v66;
          }

          else
          {
            v70 = 1852394808;
            v69 = 0xE400000000000000;
          }

          v105 = v68;
          v72 = *(v68 + 16);
          v71 = *(v68 + 24);
          if (v72 >= v71 >> 1)
          {
            v74 = v66;
            sub_247F0C3FC((v71 > 1), v72 + 1, 1);
            v66 = v74;
            v68 = v105;
          }

          *(v68 + 16) = v72 + 1;
          v73 = v68 + 16 * v72;
          *(v73 + 32) = v70;
          *(v73 + 40) = v69;
          v67 += 8;
        }

        while (v67 != 120);
        v105 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ECF0, &qword_247F25608);
        sub_247F0C474();
        v80 = sub_247F23EDC();
        v82 = v81;

        v83 = sub_247F082C8(v80, v82, v106);

        *(v64 + 14) = v83;
        _os_log_impl(&dword_247F03000, v62, v101, "Invalid nag interval: %s. Expected values: [%s]", v64, 0x16u);
        v84 = v100;
        swift_arrayDestroy();
        MEMORY[0x24C1BF4F0](v84, -1, -1);
        v85 = v64;
LABEL_61:
        MEMORY[0x24C1BF4F0](v85, -1, -1);
LABEL_63:

        return 0;
      }

      if (v21 >= *(v19 + 16))
      {
        goto LABEL_66;
      }

      v99 = v23;
      v24 = (v22 + 32 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];

      v16 = MEMORY[0x24C1BEA70](v25, v26, v27, v28);
      v2 = v29;

      if (v21 + 1 >= *(v19 + 16))
      {
        goto LABEL_67;
      }

      v30 = v11;
      v31 = (v22 + 32 * (v21 + 1));
      v32 = *v31;
      v33 = v31[1];
      v35 = v31[2];
      v34 = v31[3];

      v36 = MEMORY[0x24C1BEA70](v32, v33, v35, v34);
      v38 = v37;

      sub_247F10E98();
      if (v39)
      {

        if (qword_27EE7EC00 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_70;
      }

      v40 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v41 = sub_247F23EFC();
      [v40 setDateFormat_];

      v42 = sub_247F23EFC();
      v43 = [v40 dateFromString_];

      if (v43)
      {
        v44 = v94;
        sub_247F23DCC();

        v45 = 0;
      }

      else
      {
        v45 = 1;
        v44 = v94;
      }

      (*v92)(v44, v45, 1, v10);
      v46 = v97;
      sub_247F0C638(v44, v97, &qword_27EE7EC68, &unk_247F25BC0);
      if ((*v91)(v46, 1, v10) == 1)
      {

        sub_247F0C720(v46, &qword_27EE7EC68, &unk_247F25BC0);
        if (qword_27EE7EC00 != -1)
        {
          swift_once();
        }

        v75 = sub_247F23E1C();
        __swift_project_value_buffer(v75, qword_27EE7F098);

        v62 = sub_247F23DFC();
        v76 = sub_247F2409C();

        if (os_log_type_enabled(v62, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v106[0] = v78;
          *v77 = 136315138;
          v79 = sub_247F082C8(v36, v38, v106);

          *(v77 + 4) = v79;
          _os_log_impl(&dword_247F03000, v62, v76, "Invalid expiry date: %s. Date string must match format 'yyyy-MM-dd'T'HH:mm:ssZ'", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x24C1BF4F0](v78, -1, -1);
          v85 = v77;
          goto LABEL_61;
        }

LABEL_62:

        goto LABEL_63;
      }

      v47 = *v98;
      v48 = v100;
      (*v98)(v100, v46, v10);
      v2 = sub_247F0C520();
      v16 = sub_247F2413C();
      (*v90)(v101, v48, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106[0] = v60;
      v50 = sub_247F0B2CC(v16);
      v52 = v60[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_68;
      }

      v56 = v51;
      if (v60[3] >= v55)
      {
        v22 = v89;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = v50;
          sub_247F0BFEC();
          v50 = v2;
        }
      }

      else
      {
        sub_247F0B3CC(v55, isUniquelyReferenced_nonNull_native);
        v50 = sub_247F0B2CC(v16);
        v22 = v89;
        if ((v56 & 1) != (v57 & 1))
        {
          sub_247F2435C();
          __break(1u);
LABEL_71:
          v104 = v87;
          result = sub_247F2433C();
          __break(1u);
          return result;
        }
      }

      v11 = v30;
      v60 = v106[0];
      v19 = v95;
      if (v56)
      {
        (*(v11 + 40))(*(v106[0] + 56) + *(v11 + 72) * v50, v101, v10);

        (*(v11 + 8))(v100, v10);
      }

      else
      {
        *(v106[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
        *(v60[6] + 8 * v50) = v16;
        v47((v60[7] + *(v11 + 72) * v50), v101, v10);
        (*(v11 + 8))(v100, v10);
        v58 = v60[2];
        v54 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v54)
        {
          goto LABEL_69;
        }

        v60[2] = v59;
      }

      v21 = v99;
      if (v99 >= v96)
      {

        return v60;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t Dictionary<>.DMCNagScheduleString.getter(uint64_t a1)
{
  v2 = sub_247F23DEC();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED08, &qword_247F25610);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v78 = (&v68 - v11);
  v13 = a1 + 64;
  v12 = *(a1 + 64);
  v14 = 1 << *(a1 + 32);
  v84 = 32;
  v85 = 0xE100000000000000;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v12;
  v69 = (v14 + 63) >> 6;
  v70 = v3 + 16;
  v80 = (v3 + 32);
  v75 = "TB,N,VfirstActionAfterInit";
  v72 = v3;
  v73 = a1;
  v77 = (v3 + 8);

  v17 = 0;
  v18 = &qword_247F25618;
  v76 = v2;
  for (i = a1 + 64; ; v13 = i)
  {
    if (!v16)
    {
      if (v69 <= v17 + 1)
      {
        v30 = v17 + 1;
      }

      else
      {
        v30 = v69;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v29 >= v69)
        {
          v41 = v2;
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED10, &qword_247F25618);
          v39 = v79;
          (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
          v16 = 0;
          v17 = v31;
          goto LABEL_18;
        }

        v16 = *(v13 + 8 * v29);
        ++v17;
        if (v16)
        {
          v28 = v5;
          v17 = v29;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v28 = v5;
    v29 = v17;
LABEL_17:
    v32 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v72;
    v35 = *(*(v73 + 48) + 8 * v33);
    v36 = v71;
    (*(v72 + 16))(v71, *(v73 + 56) + *(v72 + 72) * v33, v2);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED10, &qword_247F25618);
    v38 = *(v37 + 48);
    v39 = v79;
    *v79 = v35;
    v40 = *(v34 + 32);
    v41 = v2;
    v40(v39 + v38, v36, v2);
    (*(*(v37 - 8) + 56))(v39, 0, 1, v37);
    v42 = v35;
    v5 = v28;
LABEL_18:
    v43 = v78;
    sub_247F0C638(v39, v78, &qword_27EE7ED08, &qword_247F25610);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED10, &qword_247F25618);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {

      v49 = sub_247F0C56C(1, v84, v85);
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v56 = MEMORY[0x24C1BEA70](v49, v51, v53, v55);
      v58 = v57;

      v59 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v59 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (v59)
      {
        return v56;
      }

      return 0;
    }

    v2 = *v43;
    v18 = v41;
    (*v80)(v5, v43 + *(v44 + 48), v41);
    v45 = sub_247F1152C([v2 integerValue]);
    if (v46)
    {

      if (qword_27EE7EC00 == -1)
      {
LABEL_49:
        v61 = sub_247F23E1C();
        __swift_project_value_buffer(v61, qword_27EE7F098);
        v62 = v2;
        v63 = sub_247F23DFC();
        v64 = sub_247F2409C();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v65 = 138412290;
          *(v65 + 4) = v62;
          *v66 = v62;
          v67 = v62;
          _os_log_impl(&dword_247F03000, v63, v64, "Invalid nag interval raw value: %@", v65, 0xCu);
          sub_247F0C720(v66, &qword_27EE7EC10, &qword_247F251F0);
          v18 = v76;
          MEMORY[0x24C1BF4F0](v66, -1, -1);
          MEMORY[0x24C1BF4F0](v65, -1, -1);
        }

        else
        {
          v67 = v63;
          v63 = v62;
        }

        (*v77)(v5, v18);
        return 0;
      }

LABEL_56:
      swift_once();
      goto LABEL_49;
    }

    v82 = 0;
    v83 = 0xE000000000000000;
    if (v45 > 4)
    {
      break;
    }

    if (v45 <= 1)
    {
      if (v45)
      {
        if (v45 != 1)
        {
          goto LABEL_57;
        }

        v19 = 0x6867696E74726F46;
        v20 = 0xEB00000000796C74;
      }

      else
      {
        v20 = 0xE700000000000000;
        v19 = 0x796C68746E6F4DLL;
      }
    }

    else
    {
      if (v45 == 2)
      {
        v20 = 0xE600000000000000;
        v48 = 1801807191;
      }

      else
      {
        if (v45 == 3)
        {
          v20 = 0xE500000000000000;
          v19 = 0x796C696144;
          goto LABEL_6;
        }

        v20 = 0xE600000000000000;
        v48 = 1920298824;
      }

      v19 = v48 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
    }

LABEL_6:
    MEMORY[0x24C1BEAC0](v19, v20);

    MEMORY[0x24C1BEAC0](32, 0xE100000000000000);
    v21 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v22 = sub_247F23EFC();
    [v21 setDateFormat_];

    v23 = sub_247F23D8C();
    v24 = [v21 stringFromDate_];

    v25 = sub_247F23F3C();
    v27 = v26;

    MEMORY[0x24C1BEAC0](v25, v27);

    MEMORY[0x24C1BEAC0](32, 0xE100000000000000);
    MEMORY[0x24C1BEAC0](v82, v83);

    v2 = v76;
    (*v77)(v5, v76);
    v18 = &qword_247F25618;
  }

  if (v45 <= 7)
  {
    if (v45 == 5)
    {
      v19 = 0x6E694D3033;
      v20 = 0xE500000000000000;
    }

    else if (v45 == 6)
    {
      v20 = 0xE500000000000000;
      v19 = 0x6E694D3031;
    }

    else
    {
      v19 = 1852394808;
      v20 = 0xE400000000000000;
    }

    goto LABEL_6;
  }

  switch(v45)
  {
    case 8:
      v19 = 1852394805;
      v20 = 0xE400000000000000;
      goto LABEL_6;
    case 9:
      v19 = 1852394802;
      v20 = 0xE400000000000000;
      goto LABEL_6;
    case 10:
      v20 = 0xE400000000000000;
      v19 = 1852394801;
      goto LABEL_6;
  }

LABEL_57:
  v81 = v45;
  result = sub_247F2433C();
  __break(1u);
  return result;
}

uint64_t Dictionary<>.DMCNagScheduleDeadline.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED10, &qword_247F25618);
  MEMORY[0x28223BE20](v82);
  v80 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v79 = (&v67 - v6);
  MEMORY[0x28223BE20](v7);
  v78 = &v67 - v8;
  MEMORY[0x28223BE20](v9);
  v85 = &v67 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v67 - v18);
  v20 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  if (v23)
  {
    v84 = v13;
    v68 = (&v67 - v18);
    v69 = a2;
    v24 = 0;
    v25 = __clz(__rbit64(v23));
    v26 = (v23 - 1) & v23;
    v27 = (v21 + 63) >> 6;
LABEL_9:
    v30 = *(a1 + 56);
    v31 = *(*(a1 + 48) + 8 * v25);
    v32 = sub_247F23DEC();
    v33 = *(v32 - 8);
    v74 = *(v33 + 72);
    v34 = v30 + v74 * v25;
    v35 = *(v33 + 16);
    v36 = v84;
    v37 = v84 + *(v82 + 48);
    v81 = v32;
    v72 = v35;
    v73 = v33 + 16;
    (v35)(v37, v34);
    *v36 = v31;
    v38 = &qword_27EE7ED10;
    sub_247F0C638(v36, v16, &qword_27EE7ED10, &qword_247F25618);
    v67 = v33;
    v71 = (v33 + 8);
    v39 = v31;

    v75 = v27;
    v76 = a1 + 64;
    v77 = a1;
    v70 = v16;
    while (v26)
    {
      v41 = v24;
LABEL_17:
      v42 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v43 = v42 | (v41 << 6);
      v44 = *(*(a1 + 48) + 8 * v43);
      v45 = *(a1 + 56) + v43 * v74;
      v46 = v81;
      v47 = v82;
      v48 = v78;
      v72(&v78[*(v82 + 48)], v45, v81);
      *v48 = v44;
      v49 = v85;
      sub_247F0C638(v48, v85, v38, &qword_247F25618);
      v50 = v16;
      v51 = v79;
      sub_247F0C6A0(v50, v79);
      v52 = *v51;
      v84 = *(v47 + 48);
      v53 = v44;
      v83 = [v52 integerValue];

      v54 = v38;
      v55 = v80;
      sub_247F0C6A0(v49, v80);
      v56 = *v55;
      v57 = *(v47 + 48);
      v58 = [*v55 integerValue];

      v59 = *v71;
      (*v71)(v55 + v57, v46);
      v59(v84 + v51, v46);
      if (v83 >= v58)
      {
        result = sub_247F0C720(v85, v54, &qword_247F25618);
        v24 = v41;
        a1 = v77;
        v16 = v70;
      }

      else
      {
        v16 = v70;
        sub_247F0C720(v70, v54, &qword_247F25618);
        result = sub_247F0C638(v85, v16, v54, &qword_247F25618);
        v24 = v41;
        a1 = v77;
      }

      v27 = v75;
      v20 = v76;
      v38 = v54;
    }

    while (1)
    {
      v41 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v41 >= v27)
      {

        v60 = v68;
        sub_247F0C638(v16, v68, &qword_27EE7ED10, &qword_247F25618);

        v61 = v81;
        v62 = v67;
        v63 = v60 + *(v82 + 48);
        v64 = v69;
        (*(v67 + 32))(v69, v63, v81);
        return (*(v62 + 56))(v64, 0, 1, v61);
      }

      v26 = *(v20 + 8 * v41);
      ++v24;
      if (v26)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = 0;
    v27 = (v21 + 63) >> 6;
    while (v27 - 1 != v28)
    {
      v24 = v28 + 1;
      v29 = *(a1 + 72 + 8 * v28);
      v23 -= 64;
      ++v28;
      if (v29)
      {
        v84 = v13;
        v68 = v19;
        v69 = a2;
        v26 = (v29 - 1) & v29;
        v25 = __clz(__rbit64(v29)) - v23;
        goto LABEL_9;
      }
    }

    v65 = sub_247F23DEC();
    v66 = *(*(v65 - 8) + 56);

    return v66(a2, 1, 1, v65);
  }

  return result;
}

uint64_t Dictionary<>.DMCDictionaryString(separator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v34 = MEMORY[0x277D84F90];
    sub_247F0C3FC(0, v3, 0);
    v4 = v34;
    v6 = a3 + 64;
    result = sub_247F2417C();
    v8 = result;
    v9 = 0;
    v29 = *(a3 + 36);
    v10 = *(a3 + 32);
    v28 = v3;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << v10)
    {
      v13 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_20;
      }

      v14 = (*(a3 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      sub_247F08AD8(*(a3 + 56) + 32 * v8, v33);
      v30[0] = v15;
      v30[1] = v16;
      sub_247F0C710(v33, &v31);

      MEMORY[0x24C1BEAC0](v15, v16);
      MEMORY[0x24C1BEAC0](8250, 0xE200000000000000);
      sub_247F2422C();
      result = sub_247F0C720(v30, &qword_27EE7ED18, &qword_247F25620);
      v34 = v4;
      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_247F0C3FC((v17 > 1), v18 + 1, 1);
        v4 = v34;
      }

      *(v4 + 16) = v18 + 1;
      v19 = v4 + 16 * v18;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0xE000000000000000;
      v10 = *(a3 + 32);
      v11 = 1 << v10;
      if (v8 >= 1 << v10)
      {
        goto LABEL_21;
      }

      v6 = a3 + 64;
      v20 = *(a3 + 64 + 8 * v13);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      if (v29 != *(a3 + 36))
      {
        goto LABEL_23;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v11 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v12 = v28;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v12 = v28;
        v24 = (a3 + 72 + 8 * v13);
        while (v23 < (v11 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            v11 = __clz(__rbit64(v25)) + v22;
            break;
          }
        }
      }

      ++v9;
      v8 = v11;
      if (v9 == v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_18:
    v32 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ECF0, &qword_247F25608);
    sub_247F0C474();
    v27 = sub_247F23EDC();

    return v27;
  }

  return result;
}

unint64_t sub_247F0AF0C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_247F23FEC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_247F18694(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_247F18694((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_247F23FDC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_247F23F8C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_247F23F8C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_247F23FEC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_247F18694(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_247F23FEC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_247F18694(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_247F18694((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_247F23F8C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_247F0B2CC(uint64_t a1)
{
  v2 = sub_247F2414C();

  return sub_247F0BDA8(a1, v2);
}

unint64_t sub_247F0B310(uint64_t a1)
{
  v2 = sub_247F2419C();

  return sub_247F0BE6C(a1, v2);
}

unint64_t sub_247F0B354(uint64_t a1, uint64_t a2)
{
  sub_247F243AC();
  sub_247F23F6C();
  v4 = sub_247F243CC();

  return sub_247F0BF34(a1, a2, v4);
}

uint64_t sub_247F0B3CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_247F23DEC();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED28, &unk_247F25CF0);
  v38 = v4;
  result = sub_247F2425C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        v26 = v23;
      }

      result = sub_247F2414C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_247F0B718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED20, &qword_247F25D00);
  v33 = v4;
  result = sub_247F2425C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_247F0C710(v24, v34);
      }

      else
      {
        sub_247F08AD8(v24, v34);
      }

      sub_247F243AC();
      sub_247F23F6C();
      result = sub_247F243CC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_247F0C710(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

id sub_247F0B9D0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_247F0B2CC(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_247F0BFEC();
      goto LABEL_7;
    }

    sub_247F0B3CC(v12, a3 & 1);
    v23 = sub_247F0B2CC(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_247F0C520();
    result = sub_247F2435C();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_247F23DEC();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_247F0BC90(v9, a2, a1, v15);

  return a2;
}

_OWORD *sub_247F0BB40(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_247F0B354(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_247F0C258();
      v11 = v19;
      goto LABEL_8;
    }

    sub_247F0B718(v16, a4 & 1);
    v11 = sub_247F0B354(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_247F2435C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_247F0C710(a1, v22);
  }

  else
  {
    sub_247F0BD3C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_247F0BC90(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_247F23DEC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_247F0BD3C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_247F0C710(a4, (a5[7] + 32 * a1));
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

unint64_t sub_247F0BDA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_247F0C520();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_247F2415C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_247F0BE6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_247F0C780(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1BECC0](v9, a1);
      sub_247F0C7DC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_247F0BF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_247F2430C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_247F0BFEC()
{
  v1 = v0;
  v29 = sub_247F23DEC();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED28, &unk_247F25CF0);
  v3 = *v0;
  v4 = sub_247F2424C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v31;
      v22 = *(v31 + 72) * v18;
      v24 = v28;
      v23 = v29;
      (*(v31 + 16))(v28, v19 + v22, v29);
      v25 = v30;
      *(*(v30 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      result = v20;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26[0];
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_247F0C258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED20, &qword_247F25D00);
  v2 = *v0;
  v3 = sub_247F2424C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_247F08AD8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_247F0C710(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_247F0C3FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_247F18CDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_247F0C41C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_247F2430C() & 1;
  }
}

unint64_t sub_247F0C474()
{
  result = qword_27EE7ECF8;
  if (!qword_27EE7ECF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE7ECF0, &qword_247F25608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7ECF8);
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

unint64_t sub_247F0C520()
{
  result = qword_27EE7ED00;
  if (!qword_27EE7ED00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE7ED00);
  }

  return result;
}

uint64_t sub_247F0C56C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_247F23F7C();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_247F23F9C();

  return sub_247F23FEC();
}

uint64_t sub_247F0C638(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_247F0C6A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED10, &qword_247F25618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_247F0C710(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_247F0C720(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_247F0C864()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = sub_247F23D3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23CEC();
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_247F23CDC();
  v11[0] = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v11];

  if (v6)
  {
    v7 = *(v1 + 8);
    v8 = v11[0];
    return v7(v3, v0);
  }

  else
  {
    v10 = v11[0];
    sub_247F23C9C();

    swift_willThrow();
    return (*(v1 + 8))(v3, v0);
  }
}

void sub_247F0CA18(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = sub_247F23D3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  sub_247F23D0C();
  v8 = sub_247F23EFC();

  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
    v10 = [v6 defaultManager];
    sub_247F23D0C();
    v11 = sub_247F23EFC();

    v25[0] = 0;
    v12 = [v10 removeItemAtPath:v11 error:v25];

    if (v12)
    {
      v13 = v25[0];
    }

    else
    {
      v23 = v25[0];
      sub_247F23C9C();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v14 = sub_247F23E1C();
    __swift_project_value_buffer(v14, qword_27EE7F098);
    (*(v3 + 16))(v5, a1, v2);
    v15 = sub_247F23DFC();
    v16 = sub_247F240AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315138;
      v19 = sub_247F23D0C();
      v21 = v20;
      (*(v3 + 8))(v5, v2);
      v22 = sub_247F082C8(v19, v21, v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_247F03000, v15, v16, "DMCFileManager no file exists to delete at path: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1BF4F0](v18, -1, -1);
      MEMORY[0x24C1BF4F0](v17, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_247F0CD94()
{
  sub_247F243AC();
  MEMORY[0x24C1BEED0](0);
  return sub_247F243CC();
}

uint64_t sub_247F0CE00(uint64_t a1)
{
  sub_247F243AC();
  MEMORY[0x24C1BEED0](0);
  return sub_247F243CC();
}

uint64_t sub_247F0CE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_247F100BC();
  v5 = sub_247F10110();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

id sub_247F0CFA8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_247F23EFC();

  return v3;
}

id sub_247F0D01C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_247F23EFC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DMCFollowUp.init(style:identifier:clientID:userInfo:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v35 = sub_247F23EFC();

  v34 = sub_247F23EFC();

  v33 = sub_247F23E9C();

  v32 = sub_247F23EFC();

  v31 = sub_247F23EFC();

  if (a12)
  {
    v20 = sub_247F23EFC();

    v21 = a19;
    v22 = a20;
    if (a14)
    {
LABEL_3:
      v23 = sub_247F23EFC();

      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    v21 = a19;
    v22 = a20;
    if (a14)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_6:
  v24 = sub_247F23EFC();

  v25 = sub_247F23CDC();
  if (v21)
  {
    v26 = sub_247F23EFC();
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_247F23D3C();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v22, 1, v27) != 1)
  {
    v29 = sub_247F23CDC();
    (*(v28 + 8))(v22, v27);
  }

  v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStyle:a1 identifier:v35 clientID:v34 userInfo:v33 title:v32 message:v31 notificationTitle:v20 notificationMessage:v23 actionTitle:v24 actionURL:v25 dismissTitle:v26 dismissURL:v29];

  (*(v28 + 8))(a17, v27);
  return v37;
}

void DMCFollowUp.init(style:identifier:clientID:userInfo:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v63 = a7;
  v64 = a8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v28 - 8);
  v65 = &v55 - v29;
  *&v21[OBJC_IVAR___DMCFollowUp_style] = a1;
  v30 = &v21[OBJC_IVAR___DMCFollowUp_identifier];
  *v30 = a2;
  v30[1] = a3;
  v31 = &v21[OBJC_IVAR___DMCFollowUp_clientID];
  *v31 = a4;
  v31[1] = a5;
  *&v21[OBJC_IVAR___DMCFollowUp_userInfo] = a6;
  v32 = objc_allocWithZone(MEMORY[0x277CFE500]);

  v62 = a6;

  v33 = sub_247F23EFC();
  v34 = [v32 initWithClientIdentifier_];

  if (v34)
  {
    v60 = a18;
    v61 = a19;
    v59 = a16;
    v57 = a17;
    v58 = a15;
    v56 = a14;

    *&v21[OBJC_IVAR___DMCFollowUp_controller] = v34;
    v35 = &v21[OBJC_IVAR___DMCFollowUp_title];
    v36 = v64;
    *v35 = v63;
    v35[1] = v36;
    v37 = &v21[OBJC_IVAR___DMCFollowUp_message];
    *v37 = a9;
    v37[1] = a10;
    v38 = &v21[OBJC_IVAR___DMCFollowUp_notificationTitle];
    *v38 = a11;
    v38[1] = a12;
    v39 = &v21[OBJC_IVAR___DMCFollowUp_notificationMessage];
    *v39 = a13;
    v40 = v57;
    v39[1] = v56;
    v41 = &v21[OBJC_IVAR___DMCFollowUp_actionTitle];
    v42 = v59;
    *v41 = v58;
    v41[1] = v42;
    v43 = sub_247F23CBC();
    v44 = &v21[OBJC_IVAR___DMCFollowUp_actionURLString];
    *v44 = v43;
    v44[1] = v45;
    v46 = &v21[OBJC_IVAR___DMCFollowUp_dismissTitle];
    v47 = v61;
    *v46 = v60;
    v46[1] = v47;
    v48 = v65;
    sub_247F0D6E0(a20, v65);
    v49 = sub_247F23D3C();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v48, 1, v49) == 1)
    {
      sub_247F0D750(v48);
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v51 = sub_247F23CBC();
      v52 = v53;
      (*(v50 + 8))(v48, v49);
    }

    v54 = &v21[OBJC_IVAR___DMCFollowUp_dismissURLString];
    *v54 = v51;
    v54[1] = v52;
    v21[OBJC_IVAR___DMCFollowUp_force] = 0;
    v66.receiver = v21;
    v66.super_class = DMCFollowUp;
    objc_msgSendSuper2(&v66, sel_init);
    sub_247F0D750(a20);
    (*(v50 + 8))(v40, v49);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_247F0D6E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247F0D750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DMCFollowUp.present()()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  if ([v0 clearAndReturnError_])
  {
    v1 = v9[0];
  }

  else
  {
    v2 = v9[0];
    v3 = sub_247F23C9C();

    swift_willThrow();
  }

  v4 = [v0 controller];
  v5 = sub_247F0DB84();
  v9[0] = 0;
  v6 = [v4 postFollowUpItem:v5 error:v9];

  if (v6)
  {
    v7 = v9[0];
  }

  else
  {
    v8 = v9[0];
    sub_247F23C9C();

    swift_willThrow();
  }
}

id sub_247F0DB84()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CFE508]) init];
  v3 = [v0 title];
  if (!v3)
  {
    sub_247F23F3C();
    v3 = sub_247F23EFC();
  }

  [v2 setTitle_];

  v4 = [v1 message];
  if (!v4)
  {
    sub_247F23F3C();
    v4 = sub_247F23EFC();
  }

  [v2 setInformativeText_];

  [v2 setGroupIdentifier_];
  v5 = [v1 identifier];
  if (!v5)
  {
    sub_247F23F3C();
    v5 = sub_247F23EFC();
  }

  [v2 setUniqueIdentifier_];

  [v2 setDisplayStyle_];
  v6 = sub_247F0E344();
  v7 = v6;
  v9 = v8;
  v25 = MEMORY[0x277D84F90];
  if (v6)
  {
    v10 = v6;
    MEMORY[0x24C1BEB30]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_247F2404C();
    }

    sub_247F2406C();
  }

  if (v9)
  {
    v11 = v9;
    MEMORY[0x24C1BEB30]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_247F2404C();
    }

    sub_247F2406C();
  }

  sub_247F08408(0, &qword_27EE7EDD8, 0x277CFE4F8);
  v12 = sub_247F2402C();
  [v2 setActions_];

  v13 = [v1 notificationMessage];
  if (!v13)
  {

    goto LABEL_25;
  }

  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277CFE510]) init];
  v16 = [v1 notificationTitle];
  if (!v16)
  {
    v16 = [v1 title];
  }

  v17 = v16;
  sub_247F23F3C();

  v18 = sub_247F23EFC();

  [v15 setTitle_];

  [v15 setInformativeText_];
  if (v7)
  {
    [v15 setActivateAction_];
  }

  if (v9)
  {
    [v15 setClearAction_];
  }

  result = [v15 options];
  if (result)
  {
    v20 = result;
    type metadata accessor for FLNotificationOptions(0);
    sub_247F101B8();
    v21 = sub_247F2408C();

    v22 = sub_247F0E93C();
    sub_247F0EA48(v22, v21);
    v23 = sub_247F2407C();

    [v15 setOptions_];

    v24 = v15;
    [v2 setNotification_];

LABEL_25:
    return v2;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DMCFollowUp.clear()()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 controller];
  v4[0] = 0;
  if ([v1 clearPendingFollowUpItems_])
  {
    v2 = v4[0];
  }

  else
  {
    v3 = v4[0];
    sub_247F23C9C();

    swift_willThrow();
  }
}

id sub_247F0E344()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = sub_247F23D3C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v39 - v18;
  v20 = [v1 actionURLString];
  sub_247F23F3C();

  v21 = v14;
  sub_247F23D1C();

  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    sub_247F0D750(v12);
    v23 = 0;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v39 = v1;
    v24 = [v1 actionTitle];
    sub_247F23F3C();

    (*(v14 + 16))(v9, v19, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    v25 = sub_247F23EFC();

    v40 = v22;
    if (v22(v9, 1, v13) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_247F23CDC();
      (*(v14 + 8))(v9, v13);
    }

    v23 = [objc_opt_self() actionWithLabel:v25 url:v26];

    (*(v14 + 8))(v19, v13);
    v21 = v14;
    v1 = v39;
    if (v23)
    {
      v27 = [v39 userInfo];
      v28 = sub_247F23EAC();

      sub_247F20600(v28);

      v29 = sub_247F23E9C();

      [v23 setUserInfo_];
    }

    v22 = v40;
  }

  v30 = [v1 dismissURLString];
  if (v30)
  {
    v31 = v30;
    sub_247F23F3C();

    sub_247F23D1C();

    if (v22(v6, 1, v13) == 1)
    {
      sub_247F0D750(v6);
    }

    else
    {
      v32 = v41;
      (*(v21 + 32))(v41, v6, v13);
      v33 = [v1 dismissTitle];
      if (!v33)
      {
        v33 = [v1 title];
      }

      v34 = v33;
      sub_247F23F3C();

      v35 = v42;
      (*(v21 + 16))(v42, v32, v13);
      (*(v21 + 56))(v35, 0, 1, v13);
      v36 = sub_247F23EFC();

      if (v22(v35, 1, v13) == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = sub_247F23CDC();
        (*(v21 + 8))(v35, v13);
      }

      [objc_opt_self() actionWithLabel:v36 url:v37];

      (*(v21 + 8))(v32, v13);
    }
  }

  return v23;
}

uint64_t sub_247F0E93C()
{
  v4 = MEMORY[0x277D84FA0];
  if ([v0 style] == 1)
  {
    sub_247F0EF88(&v3, *MEMORY[0x277CFE498]);

    sub_247F0EF88(&v3, *MEMORY[0x277CFE490]);
    [v0 force];
    sub_247F0EF88(&v3, *MEMORY[0x277CFE4A8]);

    v1 = MEMORY[0x277CFE488];
  }

  else
  {
    v1 = MEMORY[0x277CFE470];
  }

  sub_247F0EF88(&v3, *v1);

  return v4;
}

void sub_247F0EA48(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
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
    sub_247F0EF88(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
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

id DMCFollowUp.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t DMCFollowUpStyle.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247F243DC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_247F2431C();
    __swift_destroy_boxed_opaque_existential_0(v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t DMCFollowUpStyle.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247F243FC();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_247F2432C();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_247F0EE34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247F243DC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_247F2431C();
  __swift_destroy_boxed_opaque_existential_0(v7);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_247F0EEF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247F243FC();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_247F2432C();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_247F0EF88(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_247F23F3C();
  sub_247F243AC();
  sub_247F23F6C();
  v7 = sub_247F243CC();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_247F23F3C();
      v13 = v12;
      if (v11 == sub_247F23F3C() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_247F2430C();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_247F0F3B0(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_247F0F134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EDE0, &qword_247F257C0);
  result = sub_247F241CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_247F23F3C();
      sub_247F243AC();
      sub_247F23F6C();
      v18 = sub_247F243CC();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_247F0F3B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_247F0F134(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_247F0F598();
      goto LABEL_16;
    }

    sub_247F0F6E8(v7 + 1);
  }

  v9 = *v3;
  sub_247F23F3C();
  sub_247F243AC();
  sub_247F23F6C();
  v10 = sub_247F243CC();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for FLNotificationOptions(0);
    do
    {
      v13 = sub_247F23F3C();
      v15 = v14;
      if (v13 == sub_247F23F3C() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_247F2430C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_247F2434C();
  __break(1u);
  return result;
}

id sub_247F0F598()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EDE0, &qword_247F257C0);
  v2 = *v0;
  v3 = sub_247F241BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_247F0F6E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EDE0, &qword_247F257C0);
  result = sub_247F241CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_247F23F3C();
      sub_247F243AC();
      v18 = v17;
      sub_247F23F6C();
      v19 = sub_247F243CC();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

id sub_247F0F93C(void *a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if ([a1 clearPendingFollowUpItems_])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_247F23C9C();

  return swift_willThrow();
}

void sub_247F0F9E0(uint64_t a1, unint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277CFE500]);
  v5 = sub_247F23EFC();
  v6 = [v4 initWithClientIdentifier_];

  if (v6)
  {
    v14[0] = 0;
    if ([v6 clearPendingFollowUpItems_])
    {
      v7 = v14[0];
    }

    else
    {
      v13 = v14[0];
      sub_247F23C9C();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v8 = sub_247F23E1C();
    __swift_project_value_buffer(v8, qword_27EE7F098);

    v9 = sub_247F23DFC();
    v10 = sub_247F2409C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_247F082C8(a1, a2, v14);
      _os_log_impl(&dword_247F03000, v9, v10, "DMCFollowUp failed to clear nag with clientID '%s' because FLFollowUpController init failed", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1BF4F0](v12, -1, -1);
      MEMORY[0x24C1BF4F0](v11, -1, -1);
    }

    sub_247F10164();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_247F0FC14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = objc_allocWithZone(MEMORY[0x277CFE500]);
  v9 = sub_247F23EFC();
  v10 = [v8 initWithClientIdentifier_];

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EDD0, &qword_247F257B8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_247F25650;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;

    v12 = sub_247F2402C();

    v21[0] = 0;
    v13 = [v10 clearPendingFollowUpItemsWithUniqueIdentifiers:v12 error:v21];

    if (v13)
    {
      v14 = v21[0];
    }

    else
    {
      v20 = v21[0];
      sub_247F23C9C();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v15 = sub_247F23E1C();
    __swift_project_value_buffer(v15, qword_27EE7F098);

    v16 = sub_247F23DFC();
    v17 = sub_247F2409C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_247F082C8(a3, a4, v21);
      _os_log_impl(&dword_247F03000, v16, v17, "DMCFollowUp failed to clear nag with clientID '%s' because FLFollowUpController init failed", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1BF4F0](v19, -1, -1);
      MEMORY[0x24C1BF4F0](v18, -1, -1);
    }

    sub_247F10164();
    swift_allocError();
    swift_willThrow();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_247F0FF64()
{
  result = qword_27EE7EDA8;
  if (!qword_27EE7EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EDA8);
  }

  return result;
}

uint64_t _s13FollowUpErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s13FollowUpErrorOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_247F100BC()
{
  result = qword_27EE7EDB8;
  if (!qword_27EE7EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EDB8);
  }

  return result;
}

unint64_t sub_247F10110()
{
  result = qword_27EE7EDC0;
  if (!qword_27EE7EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EDC0);
  }

  return result;
}

unint64_t sub_247F10164()
{
  result = qword_27EE7EDC8;
  if (!qword_27EE7EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EDC8);
  }

  return result;
}

unint64_t sub_247F101B8()
{
  result = qword_27EE7ECC8;
  if (!qword_27EE7ECC8)
  {
    type metadata accessor for FLNotificationOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7ECC8);
  }

  return result;
}

uint64_t DMCNagInterval.string.getter(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0x6E694D3033;
      }

      if (a1 == 6)
      {
        return 0x6E694D3031;
      }

      return 1852394808;
    }

    switch(a1)
    {
      case 8:
        return 1852394805;
      case 9:
        return 1852394802;
      case 10:
        return 1852394801;
    }

LABEL_24:
    result = sub_247F2433C();
    __break(1u);
    return result;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x796C68746E6F4DLL;
    }

    if (a1 == 1)
    {
      return 0x6867696E74726F46;
    }

    goto LABEL_24;
  }

  if (a1 == 2)
  {
    return 0x796C6B656557;
  }

  if (a1 == 3)
  {
    return 0x796C696144;
  }

  return 0x796C72756F48;
}

Swift::String __swiftcall DMCNagError.stringValue()()
{
  v1 = v0;
  v2 = 0xD000000000000010;
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 0xD000000000000013;
        v3 = 0x8000000247F275D0;
        goto LABEL_15;
      case 4:
        v2 = 0xD000000000000015;
        v3 = 0x8000000247F275B0;
        goto LABEL_15;
      case 5:
        v2 = 0xD000000000000019;
        v3 = 0x8000000247F27590;
        goto LABEL_15;
    }

LABEL_14:
    v2 = sub_247F2433C();
    __break(1u);
    goto LABEL_15;
  }

  if (!v1)
  {
    v3 = 0x8000000247F27630;
    goto LABEL_15;
  }

  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v2 = 0xD000000000000012;
      v3 = 0x8000000247F275F0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v2 = 0xD000000000000011;
  v3 = 0x8000000247F27610;
LABEL_15:
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t DMCNagError.errorDescription.getter(uint64_t a1)
{
  v2 = 0xD000000000000010;
  sub_247F241EC();

  strcpy(v6, "DMCNagError: ");
  HIWORD(v6[1]) = -4864;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v3 = "invalidScheduleString";
        v2 = 0xD000000000000013;
        goto LABEL_14;
      case 4:
        v3 = "invalidScheduleDictionary";
        v2 = 0xD000000000000015;
        goto LABEL_14;
      case 5:
        v3 = "ntroller";
        v2 = 0xD000000000000019;
        goto LABEL_14;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v3 = "invalidDismissURL";
        goto LABEL_14;
      case 1:
        v3 = "invalidDeadlineURL";
        v2 = 0xD000000000000011;
LABEL_14:
        MEMORY[0x24C1BEAC0](v2, v3 | 0x8000000000000000);

        MEMORY[0x24C1BEAC0](10272, 0xE200000000000000);
        v4 = sub_247F242FC();
        MEMORY[0x24C1BEAC0](v4);

        MEMORY[0x24C1BEAC0](41, 0xE100000000000000);
        return v6[0];
      case 2:
        v3 = "invalidDirectoryURL";
        v2 = 0xD000000000000012;
        goto LABEL_14;
    }
  }

  result = sub_247F2433C();
  __break(1u);
  return result;
}

uint64_t sub_247F106D8(uint64_t a1, uint64_t a2)
{
  sub_247F243AC();
  sub_247F23ECC();
  return sub_247F243CC();
}

uint64_t sub_247F1073C(uint64_t a1, uint64_t a2)
{
  v4 = sub_247F11818();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_247F10788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_247F243AC();
  sub_247F23ECC();
  return sub_247F243CC();
}

unint64_t sub_247F107E8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_247F1153C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_247F1081C(uint64_t a1)
{
  v2 = sub_247F11818();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_247F10858(uint64_t a1)
{
  v2 = sub_247F11818();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_247F108C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_247F11818();

  return MEMORY[0x28211C008](a1, a2, v4);
}

id DMCNagInterval.nsNumber.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

uint64_t DMCNagInterval.allStrings()()
{
  v8 = MEMORY[0x277D84F90];
  sub_247F0C3FC(0, 11, 0);
  v0 = 0x20u;
  result = v8;
  while (1)
  {
    v2 = *(&unk_285A0EF20 + v0);
    if (v2 > 4)
    {
      break;
    }

    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_29;
        }

        v4 = 0x6867696E74726F46;
        v3 = 0xEB00000000796C74;
      }

      else
      {
        v3 = 0xE700000000000000;
        v4 = 0x796C68746E6F4DLL;
      }
    }

    else if (v2 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x796C6B656557;
    }

    else if (v2 == 3)
    {
      v3 = 0xE500000000000000;
      v4 = 0x796C696144;
    }

    else
    {
      v3 = 0xE600000000000000;
      v4 = 0x796C72756F48;
    }

LABEL_25:
    v9 = result;
    v6 = *(result + 16);
    v5 = *(result + 24);
    if (v6 >= v5 >> 1)
    {
      sub_247F0C3FC((v5 > 1), v6 + 1, 1);
      result = v9;
    }

    *(result + 16) = v6 + 1;
    v7 = result + 16 * v6;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;
    v0 += 8;
    if (v0 == 120)
    {
      return result;
    }
  }

  if (v2 <= 7)
  {
    if (v2 == 5)
    {
      v4 = 0x6E694D3033;
      v3 = 0xE500000000000000;
    }

    else if (v2 == 6)
    {
      v3 = 0xE500000000000000;
      v4 = 0x6E694D3031;
    }

    else
    {
      v4 = 1852394808;
      v3 = 0xE400000000000000;
    }

    goto LABEL_25;
  }

  switch(v2)
  {
    case 8:
      v4 = 1852394805;
      v3 = 0xE400000000000000;
      goto LABEL_25;
    case 9:
      v4 = 1852394802;
      v3 = 0xE400000000000000;
      goto LABEL_25;
    case 10:
      v3 = 0xE400000000000000;
      v4 = 1852394801;
      goto LABEL_25;
  }

LABEL_29:
  result = sub_247F2433C();
  __break(1u);
  return result;
}

unint64_t DMCNagInterval.seconds.getter(unint64_t result)
{
  if (result >= 0xB)
  {
    result = sub_247F2433C();
    __break(1u);
  }

  return result;
}

unint64_t DMCNagInterval.tolerance.getter(unint64_t result)
{
  if (result >= 0xB)
  {
    result = sub_247F2433C();
    __break(1u);
  }

  return result;
}

uint64_t sub_247F10C9C()
{
  v1 = *v0;
  sub_247F243AC();
  MEMORY[0x24C1BEED0](v1);
  return sub_247F243CC();
}

uint64_t sub_247F10D10(uint64_t a1)
{
  v2 = *v1;
  sub_247F243AC();
  MEMORY[0x24C1BEED0](v2);
  return sub_247F243CC();
}

unint64_t sub_247F10D54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_247F1152C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_247F10E98()
{
  v1 = sub_247F23F4C();
  v2 = v0;
  if (v1 == 0x796C68746E6F6DLL && v0 == 0xE700000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6867696E74726F66 && v2 == 0xEB00000000796C74 || (sub_247F2430C() & 1) != 0)
  {

    return 1;
  }

  else if (v1 == 0x796C6B656577 && v2 == 0xE600000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 2;
  }

  else if (v1 == 0x796C696164 && v2 == 0xE500000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 3;
  }

  else if (v1 == 0x796C72756F68 && v2 == 0xE600000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 4;
  }

  else if (v1 == 0x6E696D3033 && v2 == 0xE500000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 5;
  }

  else if (v1 == 0x6E696D3031 && v2 == 0xE500000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 6;
  }

  else if (v1 == 1852403000 && v2 == 0xE400000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 7;
  }

  else if (v1 == 1852402997 && v2 == 0xE400000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 8;
  }

  else if (v1 == 1852402994 && v2 == 0xE400000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 9;
  }

  else if (v1 == 1852402993 && v2 == 0xE400000000000000)
  {

    return 10;
  }

  else
  {
    v4 = sub_247F2430C();

    if (v4)
    {
      return 10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _s8DMCTools14DMCNagIntervalO10allStringsSSyFZ_0()
{
  v12 = MEMORY[0x277D84F90];
  sub_247F0C3FC(0, 11, 0);
  v0 = 0x20u;
  v1 = v12;
  v2 = 0xEB00000000796C74;
  while (1)
  {
    v3 = *(&unk_285A0EF20 + v0);
    if (v3 > 4)
    {
      break;
    }

    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          goto LABEL_29;
        }

        v5 = 0x6867696E74726F46;
        v4 = v2;
      }

      else
      {
        v4 = 0xE700000000000000;
        v5 = 0x796C68746E6F4DLL;
      }
    }

    else if (v3 == 2)
    {
      v4 = 0xE600000000000000;
      v5 = 0x796C6B656557;
    }

    else if (v3 == 3)
    {
      v4 = 0xE500000000000000;
      v5 = 0x796C696144;
    }

    else
    {
      v4 = 0xE600000000000000;
      v5 = 0x796C72756F48;
    }

LABEL_25:
    v13 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      v9 = v2;
      sub_247F0C3FC((v6 > 1), v7 + 1, 1);
      v2 = v9;
      v1 = v13;
    }

    *(v1 + 16) = v7 + 1;
    v8 = v1 + 16 * v7;
    *(v8 + 32) = v5;
    *(v8 + 40) = v4;
    v0 += 8;
    if (v0 == 120)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ECF0, &qword_247F25608);
      sub_247F1186C(&qword_27EE7ECF8, &qword_27EE7ECF0, &qword_247F25608, MEMORY[0x277D83958]);
      v10 = sub_247F23EDC();

      return v10;
    }
  }

  if (v3 <= 7)
  {
    if (v3 == 5)
    {
      v5 = 0x6E694D3033;
      v4 = 0xE500000000000000;
    }

    else if (v3 == 6)
    {
      v4 = 0xE500000000000000;
      v5 = 0x6E694D3031;
    }

    else
    {
      v5 = 1852394808;
      v4 = 0xE400000000000000;
    }

    goto LABEL_25;
  }

  switch(v3)
  {
    case 8:
      v5 = 1852394805;
      v4 = 0xE400000000000000;
      goto LABEL_25;
    case 9:
      v5 = 1852394802;
      v4 = 0xE400000000000000;
      goto LABEL_25;
    case 10:
      v4 = 0xE400000000000000;
      v5 = 1852394801;
      goto LABEL_25;
  }

LABEL_29:
  result = sub_247F2433C();
  __break(1u);
  return result;
}

unint64_t sub_247F1152C(unint64_t result)
{
  if (result > 0xA)
  {
    return 0;
  }

  return result;
}

unint64_t sub_247F1153C(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_247F11550()
{
  result = qword_27EE7EDE8;
  if (!qword_27EE7EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EDE8);
  }

  return result;
}

unint64_t sub_247F115A4()
{
  result = qword_27EE7EDF0;
  if (!qword_27EE7EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EDF0);
  }

  return result;
}

unint64_t sub_247F115FC()
{
  result = qword_27EE7EDF8;
  if (!qword_27EE7EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EDF8);
  }

  return result;
}

unint64_t sub_247F11654()
{
  result = qword_27EE7EE00;
  if (!qword_27EE7EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EE00);
  }

  return result;
}

unint64_t sub_247F116AC()
{
  result = qword_27EE7EE08;
  if (!qword_27EE7EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EE08);
  }

  return result;
}

unint64_t sub_247F1170C()
{
  result = qword_27EE7EE10;
  if (!qword_27EE7EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EE10);
  }

  return result;
}

unint64_t sub_247F117C4()
{
  result = qword_27EE7EE28;
  if (!qword_27EE7EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EE28);
  }

  return result;
}

unint64_t sub_247F11818()
{
  result = qword_27EE7EE30;
  if (!qword_27EE7EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EE30);
  }

  return result;
}

uint64_t sub_247F1186C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t DMCNagItem.identifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DMCNagItem_identifier);

  return v3;
}

uint64_t DMCNagItem.clientID.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DMCNagItem_clientID);

  return v3;
}

uint64_t DMCNagItem.deadlineURLString.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DMCNagItem_deadlineURLString);

  return v3;
}

uint64_t sub_247F11C98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v16 - v5;
  v7 = [v1 shortestInterval];
  v8 = [v1 schedule];
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  v9 = sub_247F23DEC();
  sub_247F12BF4();
  v10 = sub_247F23EAC();

  if (*(v10 + 16) && (v11 = sub_247F0B2CC(v7), (v12 & 1) != 0))
  {
    v13 = *(v9 - 8);
    (*(v13 + 16))(v6, *(v10 + 56) + *(v13 + 72) * v11, v9);

    (*(v13 + 56))(v6, 0, 1, v9);
    return (*(v13 + 32))(a1, v6, v9);
  }

  else
  {

    v15 = *(v9 - 8);
    (*(v15 + 56))(v6, 1, 1, v9);
    sub_247F23DDC();
    result = (*(v15 + 48))(v6, 1, v9);
    if (result != 1)
    {
      return sub_247F0C720(v6, &qword_27EE7EC68, &unk_247F25BC0);
    }
  }

  return result;
}

void sub_247F11F6C()
{
  v1 = [v0 schedule];
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  v2 = sub_247F23EAC();

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = *(*(v2 + 48) + 8 * v7);

    while (1)
    {
      v13 = v6;
      if (!v8)
      {
        break;
      }

LABEL_14:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * v14)));
      v16 = [v12 integerValue];
      if (v16 < [v15 integerValue])
      {

        v12 = v15;
      }

      else
      {
      }
    }

    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v9)
      {

        return;
      }

      v8 = *(v2 + 64 + 8 * v6);
      ++v13;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (v9 - 1 != v5)
    {
      v6 = v5 + 1;
      v11 = *(v2 + 8 * v5 + 72);
      v10 -= 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) - v10;
        goto LABEL_9;
      }
    }

    sub_247F2413C();
  }
}

uint64_t DMCNagItem.description.getter()
{
  v1 = v0;
  v2 = sub_247F23DEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_247F241EC();

  v36 = 39;
  v37 = 0xE100000000000000;
  v6 = [v0 title];
  v7 = sub_247F23F3C();
  v9 = v8;

  MEMORY[0x24C1BEAC0](v7, v9);

  MEMORY[0x24C1BEAC0](0x27202D2027, 0xE500000000000000);
  v10 = [v1 message];
  v11 = sub_247F23F3C();
  v13 = v12;

  MEMORY[0x24C1BEAC0](v11, v13);

  v14 = 0xE300000000000000;
  MEMORY[0x24C1BEAC0](2629671, 0xE300000000000000);
  v15 = [v1 clientID];
  v16 = sub_247F23F3C();
  v18 = v17;

  MEMORY[0x24C1BEAC0](v16, v18);

  MEMORY[0x24C1BEAC0](47, 0xE100000000000000);
  v19 = [v1 identifier];
  v20 = sub_247F23F3C();
  v22 = v21;

  MEMORY[0x24C1BEAC0](v20, v22);

  MEMORY[0x24C1BEAC0](541073449, 0xE400000000000000);
  v23 = [v1 lastNagString];
  if (v23)
  {
    v24 = v23;
    v25 = sub_247F23F3C();
    v14 = v26;
  }

  else
  {
    v25 = 7104878;
  }

  MEMORY[0x24C1BEAC0](v25, v14);

  MEMORY[0x24C1BEAC0](0x209286E220, 0xA500000000000000);
  v27 = [v1 deadline];
  sub_247F23DCC();

  v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v29 = sub_247F23EFC();
  [v28 setDateFormat_];

  v30 = sub_247F23D8C();
  v31 = [v28 stringFromDate_];

  v32 = sub_247F23F3C();
  v34 = v33;

  (*(v3 + 8))(v5, v2);
  MEMORY[0x24C1BEAC0](v32, v34);

  return v36;
}

unint64_t DMCNagItem.properties.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EE50, &qword_247F25B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247F25B60;
  *(inited + 32) = 0x656C797453;
  *(inited + 40) = 0xE500000000000000;
  v3 = [v1 style];
  type metadata accessor for DMCFollowUpStyle(0);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x696669746E656449;
  *(inited + 88) = 0xEA00000000007265;
  v5 = [v1 identifier];
  v6 = sub_247F23F3C();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(inited + 96) = v6;
  *(inited + 104) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x4449746E65696C43;
  *(inited + 136) = 0xE800000000000000;
  v10 = [v1 clientID];
  v11 = sub_247F23F3C();
  v13 = v12;

  *(inited + 144) = v11;
  *(inited + 152) = v13;
  *(inited + 168) = v9;
  *(inited + 176) = 0x656C756465686353;
  *(inited + 184) = 0xE800000000000000;
  v14 = [v1 schedule];
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  v15 = sub_247F23EAC();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EE60, &qword_247F25B98);
  *(inited + 192) = v15;
  *(inited + 216) = v16;
  *(inited + 224) = 0x656C746954;
  *(inited + 232) = 0xE500000000000000;
  v17 = [v1 title];
  v18 = sub_247F23F3C();
  v20 = v19;

  *(inited + 240) = v18;
  *(inited + 248) = v20;
  *(inited + 264) = v9;
  *(inited + 272) = 0x6567617373654DLL;
  *(inited + 280) = 0xE700000000000000;
  v21 = [v1 message];
  v22 = sub_247F23F3C();
  v24 = v23;

  *(inited + 288) = v22;
  *(inited + 296) = v24;
  *(inited + 312) = v9;
  *(inited + 320) = 0xD000000000000011;
  *(inited + 328) = 0x8000000247F27670;
  v25 = [v1 notificationTitle];
  if (v25)
  {
    v26 = v25;
    v27 = sub_247F23F3C();
    v29 = v28;

    v30 = (inited + 336);
    *(inited + 360) = v9;
    if (v29)
    {
      *v30 = v27;
      goto LABEL_6;
    }
  }

  else
  {
    v30 = (inited + 336);
    *(inited + 360) = v9;
  }

  *v30 = 7104878;
  v29 = 0xE300000000000000;
LABEL_6:
  *(inited + 344) = v29;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000247F27690;
  v31 = [v1 notificationMessage];
  if (v31)
  {
    v32 = v31;
    v33 = sub_247F23F3C();
    v35 = v34;

    v36 = (inited + 384);
    *(inited + 408) = v9;
    if (v35)
    {
      *v36 = v33;
      goto LABEL_11;
    }
  }

  else
  {
    v36 = (inited + 384);
    *(inited + 408) = v9;
  }

  *v36 = 7104878;
  v35 = 0xE300000000000000;
LABEL_11:
  *(inited + 392) = v35;
  *(inited + 416) = 0x69546E6F69746341;
  *(inited + 424) = 0xEB00000000656C74;
  v37 = [v1 actionTitle];
  v38 = sub_247F23F3C();
  v40 = v39;

  *(inited + 432) = v38;
  *(inited + 440) = v40;
  *(inited + 456) = v9;
  *(inited + 464) = 0x52556E6F69746341;
  *(inited + 472) = 0xEF676E697274534CLL;
  v41 = [v1 actionURLString];
  v42 = sub_247F23F3C();
  v44 = v43;

  *(inited + 480) = v42;
  *(inited + 488) = v44;
  *(inited + 504) = v9;
  strcpy((inited + 512), "DismissTitle");
  *(inited + 525) = 0;
  *(inited + 526) = -5120;
  v45 = [v1 dismissTitle];
  if (v45)
  {
    v46 = v45;
    v47 = sub_247F23F3C();
    v49 = v48;

    v50 = (inited + 528);
    *(inited + 552) = v9;
    if (v49)
    {
      *v50 = v47;
      goto LABEL_16;
    }
  }

  else
  {
    v50 = (inited + 528);
    *(inited + 552) = v9;
  }

  *v50 = 7104878;
  v49 = 0xE300000000000000;
LABEL_16:
  *(inited + 536) = v49;
  *(inited + 560) = 0xD000000000000010;
  *(inited + 568) = 0x8000000247F276B0;
  v51 = [v1 dismissURLString];
  if (v51)
  {
    v52 = v51;
    v53 = sub_247F23F3C();
    v55 = v54;

    v56 = (inited + 576);
    *(inited + 600) = v9;
    if (v55)
    {
      *v56 = v53;
      goto LABEL_21;
    }
  }

  else
  {
    v56 = (inited + 576);
    *(inited + 600) = v9;
  }

  *v56 = 7104878;
  v55 = 0xE300000000000000;
LABEL_21:
  *(inited + 584) = v55;
  *(inited + 608) = 0xD000000000000011;
  *(inited + 616) = 0x8000000247F276D0;
  v57 = [v1 deadlineURLString];
  v58 = sub_247F23F3C();
  v60 = v59;

  *(inited + 648) = v9;
  *(inited + 624) = v58;
  *(inited + 632) = v60;
  strcpy((inited + 656), "LastNagString");
  *(inited + 670) = -4864;
  v61 = [v1 lastNagString];
  if (!v61)
  {
    v66 = (inited + 672);
    *(inited + 696) = v9;
    goto LABEL_25;
  }

  v62 = v61;
  v63 = sub_247F23F3C();
  v65 = v64;

  v66 = (inited + 672);
  *(inited + 696) = v9;
  if (!v65)
  {
LABEL_25:
    *v66 = 7104878;
    v65 = 0xE300000000000000;
    goto LABEL_26;
  }

  *v66 = v63;
LABEL_26:
  *(inited + 680) = v65;
  v67 = sub_247F19F58(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EE68, &unk_247F25BA0);
  swift_arrayDestroy();
  return v67;
}

unint64_t sub_247F12BF4()
{
  result = qword_27EE7EE58;
  if (!qword_27EE7EE58)
  {
    sub_247F08408(255, &qword_27EE7ED00, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EE58);
  }

  return result;
}

id DMCNagItem.init(style:identifier:clientID:schedule:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismiss:deadlineURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v38 = sub_247F23EFC();

  v37 = sub_247F23EFC();

  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  v36 = sub_247F23E9C();

  v35 = sub_247F23EFC();

  v34 = sub_247F23EFC();

  if (a12)
  {
    v33 = sub_247F23EFC();

    v21 = a19;
    v22 = a20;
    if (a14)
    {
LABEL_3:
      v23 = sub_247F23EFC();

      goto LABEL_6;
    }
  }

  else
  {
    v33 = 0;
    v21 = a19;
    v22 = a20;
    if (a14)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_6:
  v24 = sub_247F23EFC();

  v25 = sub_247F23CDC();
  if (v21)
  {
    v26 = sub_247F23EFC();
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_247F23D3C();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v22, 1, v27) != 1)
  {
    v29 = sub_247F23CDC();
    (*(v28 + 8))(v22, v27);
  }

  v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v41 = sub_247F23CDC();
  v40 = [v30 initWithStyle:a1 identifier:v38 clientID:v37 schedule:v36 title:v35 message:v34 notificationTitle:v33 notificationMessage:v23 actionTitle:v24 actionURL:v25 dismissTitle:v26 dismissURL:v29 deadlineURL:v41];

  v31 = *(v28 + 8);
  v31(a21, v27);
  v31(a17, v27);
  return v40;
}

{
  v22 = v21;
  v68 = a7;
  v69 = a8;
  v64 = a5;
  v65 = a6;
  v73 = a19;
  v74 = a21;
  v71 = a16;
  v72 = a18;
  v70 = a15;
  v66 = a13;
  v67 = a14;
  v62 = a11;
  v63 = a12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v62 - v28;
  v30 = &v21[OBJC_IVAR___DMCNagItem_lastNagString];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v21[OBJC_IVAR___DMCNagItem_style] = a1;
  v31 = &v21[OBJC_IVAR___DMCNagItem_identifier];
  *v31 = a2;
  *(v31 + 1) = a3;
  v32 = &v21[OBJC_IVAR___DMCNagItem_clientID];
  v34 = v64;
  v33 = v65;
  *v32 = a4;
  *(v32 + 1) = v34;
  *&v21[OBJC_IVAR___DMCNagItem_schedule] = v33;
  v35 = &v21[OBJC_IVAR___DMCNagItem_title];
  v36 = v69;
  *v35 = v68;
  v35[1] = v36;
  v37 = &v21[OBJC_IVAR___DMCNagItem_message];
  *v37 = a9;
  *(v37 + 1) = a10;
  v38 = &v21[OBJC_IVAR___DMCNagItem_notificationTitle];
  v39 = v63;
  *v38 = v62;
  v38[1] = v39;
  v40 = &v21[OBJC_IVAR___DMCNagItem_notificationMessage];
  v41 = v67;
  *v40 = v66;
  v40[1] = v41;
  v42 = &v21[OBJC_IVAR___DMCNagItem_actionTitle];
  v43 = v71;
  *v42 = v70;
  v42[1] = v43;
  v44 = sub_247F23CBC();
  v45 = &v21[OBJC_IVAR___DMCNagItem_actionURLString];
  *v45 = v44;
  v45[1] = v46;
  v47 = &v21[OBJC_IVAR___DMCNagItem_dismissTitle];
  v48 = v73;
  *v47 = v72;
  v47[1] = v48;
  sub_247F1A89C(a20, v29, &qword_27EE7ED30, &qword_247F25660);
  v49 = sub_247F23D3C();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v29, 1, v49) == 1)
  {
    sub_247F0C720(v29, &qword_27EE7ED30, &qword_247F25660);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = sub_247F23CBC();
    v52 = v53;
    (*(v50 + 8))(v29, v49);
  }

  v54 = &v22[OBJC_IVAR___DMCNagItem_dismissURLString];
  *v54 = v51;
  v54[1] = v52;
  v55 = v74;
  v56 = sub_247F23CBC();
  v57 = &v22[OBJC_IVAR___DMCNagItem_deadlineURLString];
  *v57 = v56;
  v57[1] = v58;
  v75.receiver = v22;
  v75.super_class = DMCNagItem;
  v59 = objc_msgSendSuper2(&v75, sel_init);
  v60 = *(v50 + 8);
  v60(v55, v49);
  sub_247F0C720(a20, &qword_27EE7ED30, &qword_247F25660);
  v60(a17, v49);
  return v59;
}

uint64_t DMCNagItem.isMigrationNag.getter()
{
  v1 = [v0 identifier];
  v2 = sub_247F23F3C();
  v4 = v3;

  v5 = objc_opt_self();
  v6 = [v5 migrationNagItemID];
  v7 = sub_247F23F3C();
  v9 = v8;

  if (v2 == v7 && v4 == v9)
  {
  }

  else
  {
    v11 = sub_247F2430C();

    v12 = 0;
    if ((v11 & 1) == 0)
    {
      return v12 & 1;
    }
  }

  v13 = [v0 clientID];
  v14 = sub_247F23F3C();
  v16 = v15;

  v17 = [v5 migrationNagClientID];
  v18 = sub_247F23F3C();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_247F2430C();
  }

  return v12 & 1;
}

id static DMCNagItem.migrationNagItem(withDeadline:actionURL:deadlineURL:)(uint64_t a1, void *a2, uint64_t a3)
{
  v72 = a3;
  v74 = a2;
  v4 = sub_247F23D3C();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v69 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EEC8, &qword_247F25BB0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EED0, &qword_247F25BB8);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_247F25B70;
  *(v11 + v10) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_247F23D7C();
  *(v11 + v10 + v9) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_247F23D7C();
  *(v11 + v10 + 2 * v9) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_247F23D7C();
  v12 = (v11 + v10 + 3 * v9);
  v13 = *(v8 + 48);
  *v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v14 = sub_247F23DEC();
  (*(*(v14 - 8) + 16))(&v12[v13], a1, v14);
  sub_247F1A088(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_247F23EFC();
  v17 = [v15 stringForKey_];

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = sub_247F23F3C();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_12:
    v23 = v75;
    goto LABEL_13;
  }

  v22 = String.DMCNagSchedule.getter(v18, v20);
  v23 = v75;
  if (v22)
  {

    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v24 = sub_247F23E1C();
    __swift_project_value_buffer(v24, qword_27EE7F098);

    v25 = sub_247F23DFC();
    v26 = sub_247F240AC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v78 = v28;
      *v27 = 136446210;
      sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
      sub_247F12BF4();
      v29 = sub_247F23EBC();
      v31 = sub_247F082C8(v29, v30, &v78);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_247F03000, v25, v26, "DMCNagItem using DMCNagMigrationScheduleOverride: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1BF4F0](v28, -1, -1);
      MEMORY[0x24C1BF4F0](v27, -1, -1);
    }
  }

  else
  {
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v58 = sub_247F23E1C();
    __swift_project_value_buffer(v58, qword_27EE7F098);

    v59 = sub_247F23DFC();
    v60 = sub_247F2409C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v78 = v62;
      *v61 = 136446210;
      v63 = sub_247F082C8(v18, v20, &v78);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_247F03000, v59, v60, "DMCNagItem ignoring invalid DMCNagMigrationScheduleOverride: %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x24C1BF4F0](v62, -1, -1);
      MEMORY[0x24C1BF4F0](v61, -1, -1);
    }

    else
    {
    }
  }

LABEL_13:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [ObjCClassFromMetadata migrationNagItemID];
  if (!v33)
  {
    sub_247F23F3C();
    v34 = sub_247F23EFC();

    v33 = v34;
  }

  v75 = v33;
  v35 = [ObjCClassFromMetadata migrationNagClientID];
  if (!v35)
  {
    sub_247F23F3C();
    v35 = sub_247F23EFC();
  }

  v36 = v73;
  v37 = v76;
  v23[7](v73, 1, 1, v76);
  (v23[2])(v77, v72, v37);
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F12BF4();
  v38 = v36;
  v72 = sub_247F23E9C();

  v71 = sub_247F23EFC();
  v70 = sub_247F23EFC();
  v39 = v37;
  v40 = sub_247F23EFC();
  v41 = sub_247F23EFC();
  v42 = sub_247F23EFC();
  v43 = sub_247F23CDC();
  v44 = 0;
  if ((v23[6])(v38, 1, v39) != 1)
  {
    v44 = sub_247F23CDC();
    (v23[1])(v38, v39);
  }

  v73 = v44;
  v45 = objc_allocWithZone(DMCNagItem);
  v46 = sub_247F23CDC();
  v68 = v44;
  v67 = v43;
  v65 = v41;
  v66 = v42;
  v64 = v40;
  v47 = v45;
  v48 = v75;
  v49 = v35;
  v50 = v41;
  v51 = v35;
  v52 = v72;
  v53 = v40;
  v54 = v71;
  v69 = v43;
  v55 = v42;
  v56 = v70;
  v74 = [v47 initWithStyle:1 identifier:v75 clientID:v49 schedule:v72 title:v71 message:v70 notificationTitle:v64 notificationMessage:v65 actionTitle:v66 actionURL:v67 dismissTitle:0 dismissURL:v68 deadlineURL:v46];

  (v23[1])(v77, v76);
  return v74;
}

char *DMCNagItem.followUp()()
{
  v1 = v0;
  v2 = sub_247F23DEC();
  v108 = *(v2 - 8);
  v109 = v2;
  MEMORY[0x28223BE20](v2);
  v104 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v107 = &v89 - v5;
  MEMORY[0x28223BE20](v6);
  v106 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v8 - 8);
  v103 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v89 - v11;
  MEMORY[0x28223BE20](v13);
  v111 = &v89 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v89 - v16;
  v18 = sub_247F23D3C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v113 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v89 - v23;
  v25 = [v1 actionURLString];
  sub_247F23F3C();

  sub_247F23D1C();

  v26 = (v19 + 48);
  v27 = *(v19 + 48);
  if (v27(v17, 1, v18) == 1)
  {
    sub_247F0C720(v17, &qword_27EE7ED30, &qword_247F25660);
    sub_247F115A4();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return v12;
  }

  v112 = v19;
  v102 = *(v19 + 32);
  v102(v24, v17, v18);
  v29 = [v1 dismissURLString];
  v105 = v24;
  if (v29)
  {
    v30 = v29;
    sub_247F23F3C();

    v26 = (v19 + 48);
    sub_247F23D1C();
    v31 = v27(v12, 1, v18);
    v32 = v111;
    if (v31 == 1)
    {
      sub_247F0C720(v12, &qword_27EE7ED30, &qword_247F25660);
      sub_247F115A4();
      swift_allocError();
      *v33 = 1;
      swift_willThrow();

      (*(v112 + 8))(v105, v18);
      return v12;
    }

    v102(v32, v12, v18);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v32 = v111;
  }

  v35 = *(v112 + 56);
  v110 = v18;
  v35(v32, v34, 1, v18);
  v36 = v1;
  v94 = sub_247F14D48();
  v95 = v37;
  v91 = v38;
  v97 = v39;
  v100 = [v1 style];
  v40 = [v1 identifier];
  if (!v40)
  {
    sub_247F23F3C();
    v41 = sub_247F23EFC();

    v40 = v41;
  }

  v99 = v40;
  v101 = v27;
  v102 = v26;
  v42 = [v1 clientID];
  v43 = v103;
  if (!v42)
  {
    sub_247F23F3C();
    v44 = sub_247F23EFC();

    v42 = v44;
  }

  v98 = v42;
  sub_247F19F58(MEMORY[0x277D84F90]);
  v45 = [v1 title];
  v96 = [v1 localized_];

  v46 = [v1 notificationTitle];
  v47 = [v1 localizedOptional_];

  if (v47)
  {
    v90 = sub_247F23F3C();
    v49 = v48;
  }

  else
  {
    v90 = 0;
    v49 = 0;
  }

  v50 = [v1 actionTitle];
  v93 = [v1 localized_];

  (*(v112 + 16))(v113, v105, v110);
  v51 = [v1 dismissTitle];
  v52 = [v1 localizedOptional_];

  if (v52)
  {
    sub_247F23F3C();
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  sub_247F1A89C(v32, v43, &qword_27EE7ED30, &qword_247F25660);
  v55 = sub_247F23E9C();

  v94 = sub_247F23EFC();

  if (!v49)
  {
    v56 = 0;
    if (v97)
    {
      goto LABEL_20;
    }

LABEL_22:
    v57 = 0;
    goto LABEL_23;
  }

  v56 = sub_247F23EFC();

  if (!v97)
  {
    goto LABEL_22;
  }

LABEL_20:
  v57 = sub_247F23EFC();

LABEL_23:
  v58 = sub_247F23CDC();
  if (v54)
  {
    v59 = sub_247F23EFC();
  }

  else
  {
    v59 = 0;
  }

  v60 = v110;
  v61 = v101(v43, 1, v110);
  v92 = v36;
  if (v61 == 1)
  {
    v62 = 0;
  }

  else
  {
    v62 = sub_247F23CDC();
    (*(v112 + 8))(v43, v60);
  }

  v101 = v62;
  v63 = objc_allocWithZone(DMCFollowUp);
  v87 = v59;
  v88 = v62;
  v86 = v58;
  v102 = v59;
  v64 = v93;
  v85 = v57;
  v84 = v56;
  v65 = v56;
  v66 = v99;
  v67 = v58;
  v68 = v57;
  v69 = v98;
  v70 = v55;
  v71 = v55;
  v72 = v96;
  v73 = v94;
  v103 = [v63 initWithStyle:v100 identifier:v99 clientID:v98 userInfo:v70 title:v96 message:v94 notificationTitle:v84 notificationMessage:v85 actionTitle:v93 actionURL:v86 dismissTitle:v87 dismissURL:v88];

  v74 = *(v112 + 8);
  v74(v113, v110);
  v75 = [v92 deadline];
  v76 = v106;
  sub_247F23DCC();

  v77 = v104;
  sub_247F23DDC();
  v78 = v107;
  sub_247F23D7C();
  v79 = *(v108 + 8);
  v80 = v77;
  v81 = v109;
  v79(v80, v109);
  sub_247F1A270(&qword_27EE7ECE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  LOBYTE(v75) = sub_247F23EEC();
  v79(v78, v81);
  v82 = v81;
  v12 = v103;
  v79(v76, v82);
  if ((v75 & 1) == 0)
  {
    [v12 setForce_];
  }

  sub_247F0C720(v111, &qword_27EE7ED30, &qword_247F25660);
  v74(v105, v110);
  return v12;
}

uint64_t sub_247F14D48()
{
  v1 = v0;
  v2 = sub_247F23DEC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 style] == 1)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v7 setDateStyle_];
    [v7 setTimeStyle_];
    v8 = [v1 message];
    v9 = [v1 deadline];
    sub_247F23DCC();

    v10 = sub_247F23D8C();
    (*(v3 + 8))(v6, v2);
    v11 = [v7 stringFromDate_];

    if (!v11)
    {
      sub_247F23F3C();
      v11 = sub_247F23EFC();
    }

    v12 = [v1 localizedFormat:v8 :v11];

    v13 = sub_247F23F3C();
  }

  else
  {
    v14 = [v1 message];
    v15 = [v1 localized_];

    v13 = sub_247F23F3C();
    v16 = [v1 notificationMessage];
    v17 = [v1 localizedOptional_];

    if (v17)
    {
      sub_247F23F3C();
    }
  }

  return v13;
}

void sub_247F150BC()
{
  v1 = v0;
  v2 = sub_247F23DEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23DDC();
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v7 = sub_247F23EFC();
  [v6 setDateFormat_];

  v8 = sub_247F23D8C();
  v9 = [v6 stringFromDate_];

  if (!v9)
  {
    sub_247F23F3C();
    v9 = sub_247F23EFC();
  }

  (*(v3 + 8))(v5, v2);
  [v1 setLastNagString_];

  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v10 = sub_247F23E1C();
  __swift_project_value_buffer(v10, qword_27EE7F098);
  v11 = v1;
  v12 = sub_247F23DFC();
  v13 = sub_247F240AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_247F03000, v12, v13, "DMCNagItem successfully did nag: %{public}@", v14, 0xCu);
    sub_247F0C720(v15, &qword_27EE7EC10, &qword_247F251F0);
    MEMORY[0x24C1BF4F0](v15, -1, -1);
    MEMORY[0x24C1BF4F0](v14, -1, -1);
  }
}

uint64_t sub_247F153A0@<X0>(char *a1@<X8>)
{
  v65 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v62 - v3;
  v4 = sub_247F23DEC();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v62 - v7;
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - v9;
  MEMORY[0x28223BE20](v10);
  v70 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v72 = &v62 - v13;
  sub_247F23DDC();
  v14 = 0x278EED000uLL;
  v75 = v1;
  v15 = [v1 schedule];
  v16 = sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  v71 = sub_247F12BF4();
  v17 = sub_247F23EAC();

  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = ((v18 + 63) >> 6);

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  if (!v20)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = [*(*(v17 + 48) + ((v22 << 9) | (8 * v24))) integerValue];
      if (v25 < 0xB)
      {
        break;
      }

      if (!v20)
      {
        goto LABEL_6;
      }
    }

    v74 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_247F188A4(0, *(v23 + 2) + 1, 1, v23);
    }

    v28 = *(v23 + 2);
    v27 = *(v23 + 3);
    v29 = v28 + 1;
    v30 = v74;
    if (v28 >= v27 >> 1)
    {
      v68 = v28 + 1;
      v31 = v23;
      v32 = v28;
      v33 = sub_247F188A4((v27 > 1), v28 + 1, 1, v31);
      v29 = v68;
      v28 = v32;
      v23 = v33;
      v30 = v74;
    }

    *(v23 + 2) = v29;
    *&v23[8 * v28 + 32] = v30;
  }

  while (v20);
  while (1)
  {
LABEL_6:
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v26 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v26);
    ++v22;
    if (v20)
    {
      v22 = v26;
      goto LABEL_4;
    }
  }

  v76 = v23;

  v34 = 0;
  sub_247F18EEC(&v76);

  v35 = v76;
  v74 = *(v76 + 2);
  if (!v74)
  {
LABEL_25:

    v47 = v73;
    (*(v73 + 8))(v72, v4);
    return (*(v47 + 56))(v65, 1, 1, v4);
  }

  v36 = 0;
  v67 = v73 + 16;
  v68 = v73 + 32;
  v66 = (v73 + 8);
  while (1)
  {
    if (v36 >= *(v35 + 2))
    {
      __break(1u);

      __break(1u);
      goto LABEL_41;
    }

    v34 = *&v35[8 * v36 + 32];
    v37 = sub_247F2413C();
    v38 = [v75 *(v14 + 2144)];
    v39 = sub_247F23EAC();

    if (*(v39 + 16))
    {
      v40 = sub_247F0B2CC(v37);
      if (v41)
      {
        break;
      }
    }

LABEL_19:
    if (v74 == ++v36)
    {
      goto LABEL_25;
    }
  }

  v42 = v16;
  v43 = v14;
  v44 = v73;
  v45 = v69;
  (*(v73 + 16))(v69, *(v39 + 56) + *(v73 + 72) * v40, v4);

  v21 = *(v44 + 32);
  v46 = v70;
  v21(v70, v45, v4);
  if ((sub_247F23DAC() & 1) == 0)
  {
    (*v66)(v46, v4);
    v14 = v43;
    v16 = v42;
    goto LABEL_19;
  }

  v49 = [v75 lastNagString];
  if (!v49)
  {
    v52 = v73;
    (*(v73 + 8))(v70, v4);
    v51 = v64;
    (*(v52 + 56))(v64, 1, 1, v4);
    v54 = v72;
LABEL_30:
    sub_247F0C720(v51, &qword_27EE7EC68, &unk_247F25BC0);
LABEL_31:
    v55 = v65;
    v21(v65, v54, v4);
    return (*(v52 + 56))(v55, 0, 1, v4);
  }

  v50 = v49;
  sub_247F23F3C();

  v51 = v64;
  String.DMCDate.getter(v64);

  v52 = v73;
  v53 = (*(v73 + 48))(v51, 1, v4);
  v54 = v72;
  v14 = v70;
  if (v53 == 1)
  {
    (*v66)(v70, v4);
    goto LABEL_30;
  }

  v56 = v62;
  v21(v62, v51, v4);
  if (v34 >= 0xB)
  {
LABEL_41:
    v76 = v34;
    result = sub_247F2433C();
    __break(1u);
    return result;
  }

  v22 = v63;
  sub_247F23D7C();
  if (sub_247F23D9C())
  {
    v57 = *(v52 + 8);
    v57(v22, v4);
    v57(v56, v4);
    v57(v14, v4);
    goto LABEL_31;
  }

  v58 = sub_247F23D9C();
  v20 = *(v52 + 8);
  (v20)(v56, v4);
  (v20)(v54, v4);
  v17 = v52 + 56;
  if (v58)
  {
    (v20)(v22, v4);
    v59 = v65;
    v60 = v65;
    v61 = v14;
    goto LABEL_39;
  }

LABEL_38:
  (v20)(v14, v4);
  v59 = v65;
  v60 = v65;
  v61 = v22;
LABEL_39:
  v21(v60, v61, v4);
  return (*v17)(v59, 0, 1, v4);
}

void DMCNagItem.setDeadline(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247F23DEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v37 - v11;
  v13 = [v2 shortestInterval];
  v14 = [v2 schedule];
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F12BF4();
  v15 = sub_247F23EAC();

  v40 = a1;
  sub_247F19774(sub_247F1A2B8, v39, v15);

  v16 = sub_247F23E9C();

  [v2 setSchedule_];

  (*(v5 + 16))(v12, a1, v4);
  (*(v5 + 56))(v12, 0, 1, v4);
  v17 = v13;
  v18 = [v2 schedule];
  v19 = sub_247F23EAC();

  v42 = v19;
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_247F0C720(v12, &qword_27EE7EC68, &unk_247F25BC0);
    v20 = v37;
    sub_247F189A8(v17, v37);

    sub_247F0C720(v20, &qword_27EE7EC68, &unk_247F25BC0);
  }

  else
  {
    v21 = v38;
    (*(v5 + 32))(v38, v12, v4);
    v22 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v22;
    sub_247F0B9D0(v21, v17, isUniquelyReferenced_nonNull_native);

    v42 = v41;
  }

  v38 = v17;
  v24 = sub_247F23E9C();

  [v2 setSchedule_];

  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v25 = sub_247F23E1C();
  __swift_project_value_buffer(v25, qword_27EE7F098);
  v26 = v2;
  v27 = sub_247F23DFC();
  v28 = sub_247F240AC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v29 = 138543618;
    *(v29 + 4) = v26;
    *v30 = v26;
    *(v29 + 12) = 2082;
    v32 = [v26 schedule];
    sub_247F23EAC();

    v33 = sub_247F23EBC();
    v35 = v34;

    v36 = sub_247F082C8(v33, v35, &v42);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_247F03000, v27, v28, "DMCNagItem set new deadline: %{public}@\n\nSchedule: %{public}s", v29, 0x16u);
    sub_247F0C720(v30, &qword_27EE7EC10, &qword_247F251F0);
    MEMORY[0x24C1BF4F0](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C1BF4F0](v31, -1, -1);
    MEMORY[0x24C1BF4F0](v29, -1, -1);
  }
}

BOOL sub_247F16218(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED10, &qword_247F25618);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = *a1;
  *(v15 - v6) = *a1;
  v10 = *(v9 + 56);
  v11 = sub_247F23DEC();
  (*(*(v11 - 8) + 16))(&v7[v10], a2, v11);
  sub_247F1A270(&qword_27EE7ECE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v12 = v8;
  v13 = sub_247F23EEC();
  sub_247F0C720(v7, &qword_27EE7ED10, &qword_247F25618);
  return (v13 & 1) == 0;
}

uint64_t sub_247F16464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v9 = sub_247F23CAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247F23D3C();
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v28 - v17;
  v19 = DMCNagItemsDirectory();
  if (v19)
  {
    v31 = a1;
    v20 = v19;
    sub_247F23F3C();
    v32 = a5;
    v29 = v13;

    sub_247F23CCC();

    v35 = a3;
    v36 = v33;
    LODWORD(v33) = *MEMORY[0x277CC91D8];
    v21 = v9;
    v30 = *(v10 + 104);
    v30(v12);
    v28[1] = sub_247F1A364();
    sub_247F23D2C();
    v22 = *(v10 + 8);
    v22(v12, v9);
    v28[0] = *(v34 + 8);
    v23 = v15;
    v24 = v29;
    (v28[0])(v23, v29);
    v35 = v31;
    v36 = a2;

    MEMORY[0x24C1BEAC0](0x7473696C702ELL, 0xE600000000000000);
    (v30)(v12, v33, v9);
    v25 = v32;
    sub_247F23D2C();
    v22(v12, v21);

    (v28[0])(v18, v24);
    return (*(v34 + 56))(v25, 0, 1, v24);
  }

  else
  {
    v27 = *(v34 + 56);

    return v27(a5, 1, 1, v13);
  }
}

id DMCNagItem.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_247F16E8C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v74 - v5;
  MEMORY[0x28223BE20](v7);
  v93 = v74 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v74 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v74 - v13;
  v15 = sub_247F23D3C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v95 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v94 = v74 - v19;
  MEMORY[0x28223BE20](v20);
  v97 = v74 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v74 - v23;
  if (!String.DMCNagSchedule.getter(v0[7], v0[8]))
  {
    sub_247F115A4();
    swift_allocError();
    *v27 = 4;
    goto LABEL_5;
  }

  v91 = v6;
  v96 = v24;
  sub_247F23D1C();
  v25 = *(v16 + 48);
  if (v25(v14, 1, v15) == 1)
  {

    sub_247F0C720(v14, &qword_27EE7ED30, &qword_247F25660);
    sub_247F115A4();
    swift_allocError();
    *v26 = 0;
LABEL_5:
    swift_willThrow();
    return v0;
  }

  v89 = v1;
  v29 = *(v16 + 32);
  v30 = v14;
  v31 = v15;
  v29(v96, v30, v15);
  sub_247F23D1C();
  if (v25(v11, 1, v15) == 1)
  {

    sub_247F0C720(v11, &qword_27EE7ED30, &qword_247F25660);
    sub_247F115A4();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
    (*(v16 + 8))(v96, v15);
  }

  else
  {
    v88 = v16;
    v29(v97, v11, v15);
    if (v0[24])
    {
      v33 = v91;
      sub_247F23D1C();
      if (v25(v33, 1, v31) == 1)
      {

        sub_247F0C720(v33, &qword_27EE7ED30, &qword_247F25660);
        sub_247F115A4();
        swift_allocError();
        *v34 = 1;
        swift_willThrow();
        v35 = v88[1];
        v35(v97, v31);
        v35(v96, v31);
        return v0;
      }

      v86 = v25;
      v37 = v93;
      v29(v93, v33, v31);
      v36 = 0;
    }

    else
    {
      v86 = v25;
      v36 = 1;
      v37 = v93;
    }

    v38 = v88;
    (v88[7])(v37, v36, 1, v31);
    v85 = v0[2];
    v39 = v0[5];
    v82 = v0[6];
    v83 = v39;
    v40 = v0[10];
    v81 = v0[9];
    v74[4] = v40;
    v41 = v0[12];
    v91 = v0[11];
    v80 = v41;
    v42 = v0[14];
    v74[1] = v0[13];
    v75 = v42;
    v43 = v0[16];
    v74[2] = v0[15];
    v44 = v0[18];
    v78 = v0[17];
    v76 = v43;
    v77 = v44;
    v45 = v38[2];
    v45(v94, v96, v31);
    v46 = v0[22];
    v74[3] = v0[21];
    v79 = v46;
    sub_247F1A89C(v37, v92, &qword_27EE7ED30, &qword_247F25660);
    v90 = v31;
    v45(v95, v97, v31);
    v84 = sub_247F23EFC();
    v83 = sub_247F23EFC();
    sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
    sub_247F23DEC();
    sub_247F12BF4();
    v82 = sub_247F23E9C();

    v81 = sub_247F23EFC();
    v80 = sub_247F23EFC();
    if (v75)
    {
      v91 = sub_247F23EFC();
    }

    else
    {
      v91 = 0;
    }

    v47 = v92;
    v48 = v86;
    v87 = v0;
    if (v76)
    {
      v49 = sub_247F23EFC();
    }

    else
    {
      v49 = 0;
    }

    v50 = sub_247F23EFC();
    v89 = sub_247F23CDC();
    if (v79)
    {
      v51 = sub_247F23EFC();
    }

    else
    {
      v51 = 0;
    }

    v52 = v90;
    if (v48(v47, 1, v90) == 1)
    {
      v53 = 0;
      v54 = v88;
    }

    else
    {
      v53 = sub_247F23CDC();
      v54 = v88;
      (v88[1])(v47, v52);
    }

    v88 = v53;
    v55 = objc_allocWithZone(DMCNagItem);
    v92 = sub_247F23CDC();
    v73 = v53;
    v79 = v51;
    v72 = v51;
    v56 = v89;
    v71 = v50;
    v70 = v49;
    v57 = v55;
    v59 = v84;
    v58 = v85;
    v60 = v83;
    v85 = v49;
    v86 = v50;
    v61 = v81;
    v62 = v82;
    v63 = v80;
    v0 = [v57 initWithStyle:v58 identifier:v84 clientID:v83 schedule:v82 title:v81 message:v80 notificationTitle:v91 notificationMessage:v70 actionTitle:v71 actionURL:v89 dismissTitle:v72 dismissURL:v73 deadlineURL:v92];

    v64 = v54[1];
    v65 = v90;
    v64(v95, v90);
    v64(v94, v65);
    if (v87[28])
    {
      v66 = sub_247F23EFC();
    }

    else
    {
      v66 = 0;
    }

    v67 = v96;
    v68 = v93;
    [v0 setLastNagString_];

    sub_247F0C720(v68, &qword_27EE7ED30, &qword_247F25660);
    v69 = v90;
    v64(v97, v90);
    v64(v67, v69);
  }

  return v0;
}

unint64_t sub_247F17710(char a1)
{
  result = 0x656C797473;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x4449746E65696C63;
      break;
    case 3:
      result = 0x656C756465686373;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = 0x6567617373656DLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x69546E6F69746361;
      break;
    case 9:
      result = 0x52556E6F69746361;
      break;
    case 10:
      result = 0x547373696D736964;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x5367614E7473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_247F1790C()
{
  v1 = *v0;
  sub_247F243AC();
  MEMORY[0x24C1BEED0](v1);
  return sub_247F243CC();
}

uint64_t sub_247F17980(uint64_t a1)
{
  v2 = *v1;
  sub_247F243AC();
  MEMORY[0x24C1BEED0](v2);
  return sub_247F243CC();
}

uint64_t sub_247F179CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_247F1AB78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_247F17A0C(uint64_t a1)
{
  v2 = sub_247F1A310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247F17A48(uint64_t a1)
{
  v2 = sub_247F1A310();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_247F17A84()
{

  return v0;
}

uint64_t sub_247F17B04()
{
  sub_247F17A84();

  return swift_deallocClassInstance();
}

uint64_t sub_247F17B38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EF00, &qword_247F25CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247F1A310();
  sub_247F2440C();
  v11 = *(v3 + 16);
  v10[7] = 0;
  type metadata accessor for DMCFollowUpStyle(0);
  sub_247F1A270(&qword_27EE7EF08, type metadata accessor for DMCFollowUpStyle, &protocol conformance descriptor for DMCFollowUpStyle);
  sub_247F242DC();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_247F242CC();
    LOBYTE(v11) = 2;
    sub_247F242CC();
    LOBYTE(v11) = 3;
    sub_247F242CC();
    LOBYTE(v11) = 4;
    sub_247F242CC();
    LOBYTE(v11) = 5;
    sub_247F242CC();
    LOBYTE(v11) = 6;
    sub_247F242BC();
    LOBYTE(v11) = 7;
    sub_247F242BC();
    LOBYTE(v11) = 8;
    sub_247F242CC();
    LOBYTE(v11) = 9;
    sub_247F242CC();
    LOBYTE(v11) = 10;
    sub_247F242BC();
    LOBYTE(v11) = 11;
    sub_247F242BC();
    LOBYTE(v11) = 12;
    sub_247F242CC();
    LOBYTE(v11) = 13;
    sub_247F242BC();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_247F17EA8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EEE0, &qword_247F25CC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247F1A310();
  sub_247F243EC();
  if (v2)
  {
    type metadata accessor for DMCCodableNagItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DMCFollowUpStyle(0);
    v26 = 0;
    sub_247F1A270(&qword_27EE7EEF0, type metadata accessor for DMCFollowUpStyle, &protocol conformance descriptor for DMCFollowUpStyle);
    sub_247F242AC();
    v1[2] = v27;
    LOBYTE(v27) = 1;
    v1[3] = sub_247F2429C();
    v1[4] = v10;
    LOBYTE(v27) = 2;
    v1[5] = sub_247F2429C();
    v1[6] = v11;
    LOBYTE(v27) = 3;
    v1[7] = sub_247F2429C();
    v1[8] = v12;
    LOBYTE(v27) = 4;
    v25 = 0;
    v1[9] = sub_247F2429C();
    v1[10] = v13;
    LOBYTE(v27) = 5;
    v1[11] = sub_247F2429C();
    v1[12] = v14;
    LOBYTE(v27) = 6;
    v1[13] = sub_247F2428C();
    v1[14] = v15;
    LOBYTE(v27) = 7;
    v1[15] = sub_247F2428C();
    v1[16] = v16;
    LOBYTE(v27) = 8;
    v1[17] = sub_247F2429C();
    v1[18] = v17;
    LOBYTE(v27) = 9;
    v1[19] = sub_247F2429C();
    v1[20] = v18;
    LOBYTE(v27) = 10;
    v1[21] = sub_247F2428C();
    v1[22] = v19;
    LOBYTE(v27) = 11;
    v1[23] = sub_247F2428C();
    v1[24] = v20;
    LOBYTE(v27) = 12;
    v1[25] = sub_247F2429C();
    v1[26] = v21;
    LOBYTE(v27) = 13;
    v22 = sub_247F2428C();
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    v3[27] = v22;
    v3[28] = v24;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

void *sub_247F18618@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DMCCodableNagItem();
  v5 = swift_allocObject();
  result = sub_247F17EA8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

char *sub_247F18694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EF40, &qword_247F25D10);
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

char *sub_247F187A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EF28, &qword_247F25CE0);
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

char *sub_247F188A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EF30, &qword_247F25CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_247F189A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_247F0B2CC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247F0BFEC();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_247F23DEC();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_247F18B14(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_247F23DEC();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

void sub_247F18B14(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247F2418C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_247F2414C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_247F23DEC() - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

char *sub_247F18CDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EF38, &qword_247F25D08);
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

char *sub_247F18DE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EF30, &qword_247F25CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_247F18EEC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_247F19F44(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_247F242EC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_247F2405C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_247F19020(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_247F19020(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_247F19760(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_247F1956C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247F187A0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_247F187A0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_247F1956C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_247F1956C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_247F19774(uint64_t (*a1)(void **, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_247F19B68(v10, v7, a3, v5);
      MEMORY[0x24C1BF4F0](v10, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_247F198F4(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_247F198F4(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void **, char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_247F23DEC();
  v6 = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v33 = v5 + 16;
  v34 = v5;
  v31 = 0;
  v32 = (v5 + 8);
  while (v14)
  {
    v39 = (v14 - 1) & v14;
    v16 = __clz(__rbit64(v14)) | (v8 << 6);
    v18 = v37;
    v17 = v38;
LABEL_11:
    v21 = v36[7];
    v41 = *(v36[6] + 8 * v16);
    v22 = v41;
    v23 = v16;
    (*(v34 + 16))(v18, v21 + *(v34 + 72) * v16, v17, v6);
    v24 = v22;
    v25 = v40;
    v26 = v35(&v41, v18);
    v40 = v25;
    if (v25)
    {
      (*v32)(v18, v17);

      return;
    }

    v27 = v26;
    (*v32)(v18, v17);

    v14 = v39;
    if (v27)
    {
      *(v30 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        sub_247F19BF8(v30, v29, v31, v36);
        return;
      }
    }
  }

  v19 = v8;
  v18 = v37;
  v17 = v38;
  while (1)
  {
    v8 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v20 = v10[v8];
    ++v19;
    if (v20)
    {
      v39 = (v20 - 1) & v20;
      v16 = __clz(__rbit64(v20)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_247F19B68(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void **, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_247F198F4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_247F19BF8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_247F23DEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v38 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED28, &unk_247F25CF0);
  result = sub_247F2426C();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v40 = v9 + 32;
  v41 = v9 + 16;
  v17 = result + 64;
  v39 = a4;
  v42 = v9;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v9;
    v46 = *(v9 + 72);
    v25 = v22 + v46 * v21;
    v26 = *(v9 + 16);
    v27 = v43;
    v26(v43, v25, v8);
    v45 = *(v24 + 32);
    v45(v47, v27, v8);
    v28 = v23;
    result = sub_247F2414C();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v9 = v42;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v9 = v42;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v14 + 48) + 8 * v32) = v28;
    result = (v45)(*(v14 + 56) + v32 * v46, v47, v8);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}