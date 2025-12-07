unint64_t sub_22B75A66C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_8;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    __break(1u);
LABEL_8:
    result = sub_22B75A704(result, a2, a3, a4, a5);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B7C1670(result, a4, a5) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B75A704(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = sub_22B7C1398(result, a4, a5);
    a2 = v6;
    a3 = v7;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    __break(1u);
  }

  return result;
}

void *sub_22B75A780()
{
  if (qword_28141F5D8 != -1)
  {
    swift_once();
  }

  v0 = qword_281422728;
  v1 = *(qword_281422728 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_22B759CB4(*(qword_281422728 + 16), 0);
  v3 = sub_22B75A414(&v6, v2 + 4, v1, v0);
  v4 = v6;

  sub_22B705E3C(v4);
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22B75A870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of IntentProcessing.processIncomingRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22B6F0D94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of IncomingIntentClientConnectionListener.processIncomingRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B6F12E8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IncomingIntentClientConnectionListener.proxyForIntentRequest()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B6FAF68;

  return v5();
}

void sub_22B75ADE0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 136);
  if (*(v10 + 16))
  {
    v11 = sub_22B7235C8(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_getAtKeyPath();
      if (v80)
      {
        if (a4)
        {
          v21 = sub_22B747A64(v80, a4);
          v80, v22, v23, v24, v25, v26, v27, v28, v69, v71;
          if ((v21 & 1) == 0)
          {
            goto LABEL_10;
          }

LABEL_8:

          return;
        }

        v80, v14, v15, v16, v17, v18, v19, v20, v69, v71;
      }

      else if (!a4)
      {
        goto LABEL_8;
      }

LABEL_10:
      swift_beginAccess();
      v29 = *(v5 + 120);
      if (*(v29 + 16) && (v30 = sub_22B7235C8(a1, a2), (v31 & 1) != 0))
      {
        v32 = *(*(v29 + 56) + 8 * v30);
      }

      else
      {
        [v13 copy];
        sub_22B7DC118();
        swift_unknownObjectRelease();
        sub_22B4D01A0(0, &qword_28141F008, 0x277D1AB38);
        swift_dynamicCast();
        swift_beginAccess();
        v32 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v5 + 120);
        *(v5 + 120) = 0x8000000000000000;
        sub_22B76888C(v32, a1, a2, isUniquelyReferenced_nonNull_native);
        *(v5 + 120) = v77;
        swift_endAccess();
      }

      sub_22B6F0AD4(&unk_27D8CEC70, &qword_22B7FB6A8);
      swift_getKeyPath();
      v34 = sub_22B7DB658();

      if ((v34 & 1) == 0)
      {
        goto LABEL_30;
      }

      v35 = [v13 taskReports];
      if (!v35)
      {
        goto LABEL_30;
      }

      v36 = v35;
      v75 = v32;
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v37 = sub_22B7DB918();

      if (v37 >> 62)
      {
        v45 = sub_22B7DC1C8();
        if (v45)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v45 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45)
        {
LABEL_18:
          v73 = v13;
          v74 = a1;
          v79 = MEMORY[0x277D84F90];
          sub_22B7AB8C4(0, v45 & ~(v45 >> 63), 0);
          if (v45 < 0)
          {
            __break(1u);
            return;
          }

          v46 = 0;
          v47 = v79;
          do
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x231895C80](v46, v37);
            }

            else
            {
              v48 = *(v37 + 8 * v46 + 32);
            }

            v49 = v48;
            v50 = [v48 count];

            v59 = *(v79 + 16);
            v58 = *(v79 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_22B7AB8C4((v58 > 1), v59 + 1, 1);
            }

            ++v46;
            *(v79 + 16) = v59 + 1;
            *(v79 + 8 * v59 + 32) = v50;
          }

          while (v45 != v46);
          v37, v51, v52, v53, v54, v55, v56, v57, v69, a3;
          a1 = v74;
          v13 = v73;
          goto LABEL_29;
        }
      }

      v37, v38, v39, v40, v41, v42, v43, v44, v69, v71;
      v47 = MEMORY[0x277D84F90];
LABEL_29:
      v47, v60, v61, v62, v63, v64, v65, v66, v70, v72;
      v32 = v75;
LABEL_30:

      v67 = v32;
      swift_setAtReferenceWritableKeyPath();

      swift_beginAccess();
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v5 + 136);
      *(v5 + 136) = 0x8000000000000000;
      sub_22B76888C(v67, a1, a2, v68);
      *(v5 + 136) = v78;
      swift_endAccess();
      sub_22B718694();
    }
  }
}

void sub_22B75B228(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(v4 + 136);
  if (*(v9 + 16))
  {
    v10 = sub_22B7235C8(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_getAtKeyPath();
      if (v64 == a4)
      {
LABEL_25:

        return;
      }

      swift_beginAccess();
      v13 = *(v5 + 120);
      if (*(v13 + 16) && (v14 = sub_22B7235C8(a1, a2), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
      }

      else
      {
        [v12 copy];
        sub_22B7DC118();
        swift_unknownObjectRelease();
        sub_22B4D01A0(0, &qword_28141F008, 0x277D1AB38);
        swift_dynamicCast();
        swift_beginAccess();
        v16 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = *(v5 + 120);
        *(v5 + 120) = 0x8000000000000000;
        sub_22B76888C(v16, a1, a2, isUniquelyReferenced_nonNull_native);
        *(v5 + 120) = v61;
        swift_endAccess();
      }

      sub_22B6F0AD4(&unk_27D8CEC70, &qword_22B7FB6A8);
      swift_getKeyPath();
      v18 = sub_22B7DB658();

      if ((v18 & 1) == 0 || (v19 = [v12 taskReports]) == 0)
      {
LABEL_24:
        v51 = v16;
        swift_setAtReferenceWritableKeyPath();

        swift_beginAccess();
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v5 + 136);
        *(v5 + 136) = 0x8000000000000000;
        sub_22B76888C(v51, a1, a2, v52);
        *(v5 + 136) = v62;
        swift_endAccess();
        sub_22B718694();

        v12 = v51;
        goto LABEL_25;
      }

      v20 = v19;
      v59 = v16;
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v21 = sub_22B7DB918();

      if (v21 >> 62)
      {
        v29 = sub_22B7DC1C8();
        if (v29)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
LABEL_12:
          v56 = a4;
          v58 = a1;
          v63 = MEMORY[0x277D84F90];
          sub_22B7AB8C4(0, v29 & ~(v29 >> 63), 0);
          if (v29 < 0)
          {
            __break(1u);
            return;
          }

          v30 = 0;
          v31 = v63;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x231895C80](v30, v21);
            }

            else
            {
              v32 = *(v21 + 8 * v30 + 32);
            }

            v33 = v32;
            v34 = [v32 count];

            v43 = *(v63 + 16);
            v42 = *(v63 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_22B7AB8C4((v42 > 1), v43 + 1, 1);
            }

            ++v30;
            *(v63 + 16) = v43 + 1;
            *(v63 + 8 * v43 + 32) = v34;
          }

          while (v29 != v30);
          v21, v35, v36, v37, v38, v39, v40, v41, v53, v56;
          a1 = v58;
          goto LABEL_23;
        }
      }

      v21, v22, v23, v24, v25, v26, v27, v28, v53, v55;
      v31 = MEMORY[0x277D84F90];
LABEL_23:
      v31, v44, v45, v46, v47, v48, v49, v50, v54, v57;
      v16 = v59;
      goto LABEL_24;
    }
  }
}

void sub_22B75B640(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 taskReports];
  if (v3)
  {
    v4 = v3;
    sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
    v5 = sub_22B7DB918();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_22B75B6C0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
    v3 = sub_22B7DB8F8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTaskReports_];
}

uint64_t sub_22B75B748(uint64_t a1)
{
  type metadata accessor for BackgroundProcessingActor();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_281422748 = v1;
  return result;
}

uint64_t sub_22B75B784()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

double sub_22B75B7B4()
{
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_22B75B810(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BackgroundProcessingActor();

  return MEMORY[0x2822005F8](v3, a2);
}

char *sub_22B75B848()
{
  v3 = v0;
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v4 - 8);
  v117 = &v117 - v5;
  v6 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
  *&v0[v6] = sub_22B71E700(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates] = 0;
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter] = 0;
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_ptasksUpdatedDarwinNotifySubscription] = -1;
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_storageTimerFiredNotificationObserver] = 0;
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_throttleMonitor] = 0;
  v7 = [objc_opt_self() sharedFeatureFlags];
  v8 = [v7 isBGSTMessageProcessingEnabled];

  if (!v8)
  {
    goto LABEL_46;
  }

  type metadata accessor for IMDSystemTaskWorkloadReporter();
  swift_allocObject();
  *&v3[OBJC_IVAR___IMDBackgroundMessageProcessingController_workloadReporter] = sub_22B76AB48();
  v126.receiver = v3;
  v126.super_class = IMDBackgroundMessageProcessingController;
  v9 = objc_msgSendSuper2(&v126, sel_init);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = objc_allocWithZone(MEMORY[0x277D18F08]);
  v124 = sub_22B7653A4;
  v125 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v2 = 1107296256;
  v121 = 1107296256;
  v122 = sub_22B763558;
  v123 = &unk_283F1E220;
  v12 = _Block_copy(&aBlock);
  v1 = v125;
  v13 = v9;

  v14 = [v11 initWithChangeHandler_];
  _Block_release(v12);
  v15 = *&v13[OBJC_IVAR___IMDBackgroundMessageProcessingController_throttleMonitor];
  *&v13[OBJC_IVAR___IMDBackgroundMessageProcessingController_throttleMonitor] = v14;

  type metadata accessor for IMDPersistentTaskCriticalLimiter.Defaults();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22B6EFF14;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = sub_22B6F0098;
  *(v7 + 56) = 1;
  *(v7 + 64) = 0;
  *(v7 + 72) = 1;
  *(v7 + 80) = 0;
  *(v7 + 88) = 256;
  type metadata accessor for IMDPersistentTaskCriticalLimiter();
  v16 = swift_allocObject();
  v17 = v13;
  v18 = sub_22B765C24(v17, v7, v16);

  v119 = v17;
  *&v17[OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter] = v18;

  sub_22B718320(v19);
  v21 = v20;
  v29 = sub_22B71E700(MEMORY[0x277D84F90]);
  v30 = *v21->messageStore;
  if (!v30)
  {
LABEL_17:
    v21, v22, v23, v24, v25, v26, v27, v28, v117, v118;
    v7 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
    v47 = v119;
    swift_beginAccess();
    v48 = *&v47[v7];
    *&v47[v7] = v29;
    v48, v49, v50, v51, v52, v53, v54, v55, v117, v118;
    sub_22B718320(v56);
    v58 = v57;
    v66 = sub_22B71E0C8(MEMORY[0x277D84F90]);
    v118 = *v58->messageStore;
    if (!v118)
    {
LABEL_38:
      v58, v59, v60, v61, v62, v63, v64, v65, v117, v118;
      type metadata accessor for IMDPersistentTaskExecutorStateManager();
      v95 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v95 + 112) = 0;
      v96 = MEMORY[0x277D84F90];
      *(v95 + 120) = sub_22B71E0C8(MEMORY[0x277D84F90]);
      v97 = sub_22B71E1E0(v96);
      *(v95 + 144) = 0;
      *(v95 + 128) = v97;
      *(v95 + 136) = v66;
      v98 = v119;
      *&v119[OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates] = v95;

      v99 = sub_22B7DBA58();
      v1 = v117;
      (*(*(v99 - 8) + 56))(v117, 1, 1, v99);
      v100 = qword_281420630;
      v7 = v98;
      if (v100 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    v67 = 0;
    membershipObserver = v58->membershipObserver;
    while (1)
    {
      if (v67 >= *v58->messageStore)
      {
        goto LABEL_42;
      }

      v71 = *(membershipObserver - 1);
      v72 = *membershipObserver;
      sub_22B7DBF38();
      v74 = v73;
      v75 = objc_allocWithZone(MEMORY[0x277D1AB38]);
      v7 = sub_22B7DB678();
      v74, v76, v77, v78, v79, v80, v81, v82, v117, v118;
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v1 = sub_22B7DB8F8();
      v83 = [v75 initWithGroupName:v7 lane:v72 runResult:0 status:0 taskReports:v1];

      if (!v83)
      {
        v89 = sub_22B7235C8(v71, v72);
        if (v59)
        {
          v7 = v89;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v66;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22B7A3FBC();
            v66 = aBlock;
          }

          sub_22B787E60(v7, v66, v91);
        }

        goto LABEL_20;
      }

      v84 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v66;
      v7 = sub_22B7235C8(v71, v72);
      v85 = v66[2];
      v86 = (v59 & 1) == 0;
      v87 = v85 + v86;
      if (__OFADD__(v85, v86))
      {
        goto LABEL_43;
      }

      v1 = v59;
      if (v66[3] >= v87)
      {
        if (v84)
        {
          v66 = aBlock;
          if (v59)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_22B7A3FBC();
          v66 = aBlock;
          if (v1)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_22B7A1F14(v87, v84);
        v88 = sub_22B7235C8(v71, v72);
        if ((v1 & 1) != (v59 & 1))
        {
          goto LABEL_48;
        }

        v7 = v88;
        v66 = aBlock;
        if (v1)
        {
LABEL_19:
          v69 = v66[7];
          v70 = *(v69 + 8 * v7);
          *(v69 + 8 * v7) = v83;

          goto LABEL_20;
        }
      }

      v66[(v7 >> 6) + 8] |= 1 << v7;
      v92 = (v66[6] + 16 * v7);
      *v92 = v71;
      v92[1] = v72;
      *(v66[7] + 8 * v7) = v83;
      v93 = v66[2];
      v41 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (v41)
      {
        goto LABEL_45;
      }

      v66[2] = v94;
LABEL_20:
      ++v67;
      membershipObserver += 2;
      if (v118 == v67)
      {
        goto LABEL_38;
      }
    }
  }

  v118 = objc_opt_self();
  v31 = 0;
  v1 = v21->membershipObserver;
  while (v31 < *v21->messageStore)
  {
    v32 = *(v1 - 8);
    v33 = *v1;
    v34 = [v118 sharedScheduler];
    type metadata accessor for IMDPersistentTaskExecutor();
    v35 = swift_allocObject();
    v36 = v119;
    v37 = sub_22B765DC0(v34, v36, v33, v32, v35);

    v7 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v29;
    v38 = sub_22B7235C8(v32, v33);
    v39 = v29[2];
    v40 = (v22 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_41;
    }

    v43 = v22;
    if (v29[3] < v42)
    {
      sub_22B7A2C2C(v42, v7);
      v38 = sub_22B7235C8(v32, v33);
      if ((v43 & 1) != (v22 & 1))
      {
LABEL_48:
        result = sub_22B7DC578();
        __break(1u);
        return result;
      }

LABEL_12:
      v29 = aBlock;
      if (v43)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (v7)
    {
      goto LABEL_12;
    }

    v7 = v38;
    sub_22B7A46E0();
    v38 = v7;
    v29 = aBlock;
    if (v43)
    {
LABEL_4:
      *(v29[7] + 8 * v38) = v37;

      goto LABEL_5;
    }

LABEL_13:
    v29[(v38 >> 6) + 8] |= 1 << v38;
    v44 = (v29[6] + 16 * v38);
    *v44 = v32;
    v44[1] = v33;
    *(v29[7] + 8 * v38) = v37;
    v45 = v29[2];
    v41 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v41)
    {
      goto LABEL_44;
    }

    v29[2] = v46;
LABEL_5:
    ++v31;
    v1 += 16;
    if (v30 == v31)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_39:
  v102 = qword_281422748;
  v103 = sub_22B765354(&qword_281420620, v101, type metadata accessor for BackgroundProcessingActor, &unk_22B7FB59C);
  v104 = swift_allocObject();
  v104[2] = v102;
  v104[3] = v103;
  v104[4] = v7;
  v105 = v7;

  sub_22B77E3D4(0, 0, v1, &unk_22B7FB6D0, v104);

  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v106 = sub_22B7DBD58();
  v107 = swift_allocObject();
  *(v107 + 16) = v105;
  v124 = sub_22B7661B8;
  v125 = v107;
  aBlock = MEMORY[0x277D85DD0];
  v121 = v2;
  v122 = sub_22B75CE68;
  v123 = &unk_283F1E298;
  v108 = _Block_copy(&aBlock);

  LODWORD(v104) = IMDispatchForNotify();
  _Block_release(v108);

  *&v105[OBJC_IVAR___IMDBackgroundMessageProcessingController_ptasksUpdatedDarwinNotifySubscription] = v104;
  v109 = [objc_opt_self() defaultCenter];
  v110 = *MEMORY[0x277D19F60];
  v111 = [objc_opt_self() mainQueue];
  v112 = swift_allocObject();
  *(v112 + 16) = v105;
  v124 = sub_22B7661C0;
  v125 = v112;
  aBlock = MEMORY[0x277D85DD0];
  v121 = v2;
  v122 = sub_22B7C8328;
  v123 = &unk_283F1E2E8;
  v113 = _Block_copy(&aBlock);
  v114 = v105;

  v115 = [v109 addObserverForName:v110 object:0 queue:v111 usingBlock:v113];
  _Block_release(v113);

  *&v114[OBJC_IVAR___IMDBackgroundMessageProcessingController_storageTimerFiredNotificationObserver] = v115;
  swift_unknownObjectRelease();
  sub_22B7DAE68();
  sub_22B7DAE58();
  *(swift_allocObject() + 16) = v114;
  sub_22B7DAE48();

  sub_22B4DA138(&aBlock);

  sub_22B76A0AC();

  return v114;
}

uint64_t sub_22B75C390(char a1)
{
  v2 = v1;
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v7 = sub_22B7DB2B8();
  sub_22B4CFA74(v7, qword_281422680);
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_22B4CC000, v8, v9, "Index throttle state changed to %{BOOL}d", v10, 8u);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  if (qword_281420390 != -1)
  {
    swift_once();
  }

  if (qword_281422740)
  {
    v11 = *(qword_281422740 + 112);
    if (v11)
    {

      v12 = sub_22B7DB678();
      v13 = sub_22B7DB678();
      [v11 postNotificationWithTitle:v12 body:v13];
    }
  }

  v14 = sub_22B7DBA58();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = qword_281420630;
  v17 = v2;
  if (v15 != -1)
  {
    swift_once();
  }

  v18 = qword_281422748;
  v19 = sub_22B765354(&qword_281420620, v16, type metadata accessor for BackgroundProcessingActor, &unk_22B7FB59C);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v17;

  sub_22B77E3D4(0, 0, v6, &unk_22B7FB720, v20);
}

uint64_t sub_22B75C6C4()
{
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(1);
}

uint64_t IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v3 = qword_281422748;

  return MEMORY[0x2822009F8](sub_22B75C824, v3, 0);
}

uint64_t sub_22B75C824(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 24) = v4;
  if (v4)
  {

    a1 = sub_22B75C8AC;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B75C8AC()
{
  v1 = *(v0 + 24);
  if (*(v1 + 112) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v3 = sub_22B75C99C;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v3 = sub_22B75CAAC;
  }

  v2[1] = v3;
  v4 = *(v0 + 16);
  v5 = *(v0 + 48);

  return sub_22B75EBE4(v1, v5, v4);
}

uint64_t sub_22B75C99C()
{
  v1 = *v0;

  v2 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_22B70C7DC, v2, 0);
}

uint64_t sub_22B75CAAC()
{
  v1 = *v0;

  v2 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_22B75CBBC, v2, 0);
}

uint64_t sub_22B75CBBC()
{
  *(*(v0 + 24) + 112) = 0;
  sub_22B718694();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B75CC28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v7 = sub_22B7DB2B8();
  sub_22B4CFA74(v7, qword_281422680);
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B4CC000, v8, v9, "Notified that PTasks updated, ensuring BGST tasks are submitted", v10, 2u);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  v11 = sub_22B7DBA58();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = qword_281420630;
  v14 = a3;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = qword_281422748;
  v16 = sub_22B765354(&qword_281420620, v13, type metadata accessor for BackgroundProcessingActor, &unk_22B7FB59C);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v14;

  sub_22B77E3D4(0, 0, v6, &unk_22B7FB700, v17);
}

uint64_t sub_22B75CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_22B75CEC8(uint64_t a1, void *a2)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_281422680);
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBCB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, v7, v8, "Storage timer fired, ensuring BGST tasks are submitted", v9, 2u);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  v10 = sub_22B7DBA58();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = qword_281420630;
  v13 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  v14 = qword_281422748;
  v15 = sub_22B765354(&qword_281420620, v12, type metadata accessor for BackgroundProcessingActor, &unk_22B7FB59C);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v13;

  sub_22B77E3D4(0, 0, v5, &unk_22B7FB6F0, v16);
}

uint64_t sub_22B75D108()
{
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(0);
}

uint64_t sub_22B75D1CC(uint64_t a1, void *a2)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_281422680);
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBCB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, v7, v8, "Notified that low power mode status updated, ensuring BGST tasks are updated", v9, 2u);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  v10 = sub_22B7DBA58();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = qword_281420630;
  v13 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  v14 = qword_281422748;
  v15 = sub_22B765354(&qword_281420620, v12, type metadata accessor for BackgroundProcessingActor, &unk_22B7FB59C);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v13;

  sub_22B77E3D4(0, 0, v5, &unk_22B7FB6E0, v16);
}

uint64_t sub_22B75D430()
{
  *(v1 + 56) = v0;
  sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600);
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B75D4CC, 0, 0);
}

uint64_t sub_22B75D4CC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[7];
  v5 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates;
  v3[9] = OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates;
  v6 = *(v4 + v5);
  v3[10] = v6;
  if (v6)
  {

    a1 = sub_22B75D558;
    a2 = v6;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B75D558()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 88) = *(*(v1 + 128) + 16);

  return MEMORY[0x2822009F8](sub_22B75D5E4, 0, 0);
}

uint64_t sub_22B75D5E4()
{
  v1 = sub_22B71E81C(MEMORY[0x277D84F90]);
  v2 = sub_22B7DBF58();
  v0[12] = v2;
  v10 = *v2->messageStore;
  v11 = OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter;
  v0[13] = v10;
  v0[14] = v11;
  v0[15] = v1;
  v0[16] = 0;
  if (!v10)
  {
    v18 = v0[9];
    v19 = v0[7];
    v2, v3, v4, v5, v6, v7, v8, v9, v21, v22;
    v20 = *(v19 + v18);
    v0[25] = v20;
    if (v20)
    {

      v2 = sub_22B75E004;
      v3 = v20;
      v4 = 0;

      return MEMORY[0x2822009F8](v2, v3, v4);
    }

LABEL_13:
    __break(1u);
    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v0[17] = 0;
  if (!*v2->messageStore)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = v0[7];
  v13 = *v2->queue;
  v0[18] = v13;
  v14 = *(v12 + v11);
  v0[19] = v14;
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_22B75D754;
  v16 = v0[8];

  return sub_22B6F66B4(v16, v13);
}

uint64_t sub_22B75D754()
{
  v1 = *v0;

  v2 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_22B75D864, v2, 0);
}

uint64_t sub_22B75D864()
{
  v1 = *(v0 + 64);

  v2 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  v3 = 1;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v4 = *(v0 + 64);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_22B765218(v4);
  }

LABEL_7:
  *(v0 + 320) = v3;

  return MEMORY[0x2822009F8](sub_22B75D954, 0, 0);
}

uint64_t sub_22B75D954()
{
  v1 = v0[18];
  v2 = v0[11] != 0;
  sub_22B7DBED8();
  KeyPath = swift_getKeyPath();
  v0[21] = KeyPath;
  v4 = swift_allocObject();
  v0[22] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[23] = v5;
  v6 = sub_22B6F0AD4(&qword_27D8CEC58, qword_22B7FB660);
  *v5 = v0;
  v5[1] = sub_22B75DA84;

  return MEMORY[0x282172F38](v0 + 5, KeyPath, &unk_22B7FB658, v4, v6);
}

uint64_t sub_22B75DA84()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_22B75E688;
  }

  else
  {

    v2 = sub_22B75DBA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B75DBA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 40);
  if (v9 >> 62)
  {
LABEL_39:
    v53 = v9;
    v10 = sub_22B7DC1C8();
    v9 = v53;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_40:
    v9, v9, a3, a4, a5, a6, a7, a8, v61, v63;
    v48 = *(v8 + 136) + 1;
    if (v48 == *(v8 + 104))
    {
      goto LABEL_28;
    }

LABEL_41:
    *(v8 + 136) = v48;
    v54 = *(v8 + 96);
    if (v48 < *(v54 + 16))
    {
      v55 = *(v8 + 112);
      v56 = *(v8 + 56);
      v57 = *(v54 + 8 * v48 + 32);
      *(v8 + 144) = v57;
      v58 = *(v56 + v55);
      *(v8 + 152) = v58;
      if (v58)
      {

        v59 = swift_task_alloc();
        *(v8 + 160) = v59;
        *v59 = v8;
        v59[1] = sub_22B75D754;
        v60 = *(v8 + 64);

        return sub_22B6F66B4(v60, v57);
      }

LABEL_48:
      __break(1u);
      return MEMORY[0x2822009F8](v40, v41, v42);
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_40;
  }

LABEL_3:
  v11 = 0;
  v66 = v9;
  v67 = v9 & 0xC000000000000001;
  v63 = (v9 & 0xFFFFFFFFFFFFFF8);
  v65 = v10;
  v13 = *(v8 + 120);
  v12 = *(v8 + 128);
  do
  {
    if (v67)
    {
      v14 = MEMORY[0x231895C80](v11);
    }

    else
    {
      if (v11 >= v63[2])
      {
        goto LABEL_38;
      }

      v14 = *&v9->queue[8 * v11];
    }

    v15 = v14;
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v17 = *(v8 + 320);
    v18 = [v14 lane];
    if ((v17 & 1) != 0 || v18 != 3)
    {
      v19 = [v15 lane];
    }

    else
    {
      v19 = 2;
    }

    [v15 flag];
    v20 = sub_22B7DBE68();
    sub_22B4DDE5C(v12, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 48) = v13;
    v22 = sub_22B7235C8(v20, v19);
    v23 = v13[2];
    v24 = (v9 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_36;
    }

    v27 = v9;
    if (v13[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v22;
        sub_22B7A4840();
        v22 = v39;
        v13 = *(v8 + 48);
        if (v27)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_22B7A2ECC(v26, isUniquelyReferenced_nonNull_native);
      v22 = sub_22B7235C8(v20, v19);
      if ((v27 & 1) != (v9 & 1))
      {

        return sub_22B7DC578();
      }
    }

    v13 = *(v8 + 48);
    if (v27)
    {
      goto LABEL_21;
    }

LABEL_19:
    v13[(v22 >> 6) + 8] |= 1 << v22;
    v28 = (v13[6] + 16 * v22);
    *v28 = v20;
    v28[1] = v19;
    *(v13[7] + 8 * v22) = MEMORY[0x277D84F90];
    v29 = v13[2];
    v25 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v25)
    {
      goto LABEL_37;
    }

    v13[2] = v30;
LABEL_21:
    v31 = (v13[7] + 8 * v22);
    v32 = v15;
    MEMORY[0x231895260]();
    if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B7DB938();
    }

    sub_22B7DB968();

    ++v11;
    v12 = sub_22B75EBD4;
    v9 = v66;
  }

  while (v16 != v65);
  v66, v66, v33, v34, v35, v36, v37, v38, v61, v63;
  v48 = *(v8 + 136) + 1;
  *(v8 + 120) = v13;
  *(v8 + 128) = sub_22B75EBD4;
  if (v48 != *(v8 + 104))
  {
    goto LABEL_41;
  }

LABEL_28:
  v49 = *(v8 + 72);
  v50 = *(v8 + 56);
  *(v8 + 96), v41, v42, v43, v44, v45, v46, v47, v62, v64;
  v51 = *(v50 + v49);
  *(v8 + 200) = v51;
  if (!v51)
  {
    goto LABEL_47;
  }

  v40 = sub_22B75E004;
  v41 = v51;
  v42 = 0;

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_22B75E004()
{
  v1 = *(v0 + 200);
  if (*(v1 + 112) == 1)
  {
    v2 = sub_22B75E048;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = sub_22B75E328;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B75E048(uint64_t a1)
{
  sub_22B718320(a1);
  v1[26] = v2;
  v10 = *v2->messageStore;
  v1[27] = v10;
  if (v10)
  {
    v11 = v1[15];
    v1[28] = 0;
    v12 = *v2->queue;
    v1[29] = v12;
    v13 = *v2->membershipObserver;
    v1[30] = v13;
    if (*(v11 + 16) && (sub_22B7235C8(v12, v13), (v14 & 1) != 0))
    {
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v1[31] = v15;
    v1[32] = swift_getKeyPath();
    v16 = v1[25];
    v17 = sub_22B75E1AC;
  }

  else
  {
    v2, v3, v4, v5, v6, v7, v8, v9, v19, v1;
    v16 = v1[25];
    v17 = sub_22B75E130;
  }

  return MEMORY[0x2822009F8](v17, v16, 0);
}

uint64_t sub_22B75E130()
{
  *(*(v0 + 200) + 144) = *(v0 + 88) != 0;

  return MEMORY[0x2822009F8](sub_22B75E610, 0, 0);
}

uint64_t sub_22B75E1AC()
{
  v1 = *(v0 + 248);
  sub_22B75ADE0(*(v0 + 232), *(v0 + 240), *(v0 + 256), v1);

  v1, v2, v3, v4, v5, v6, v7, v8, v10, v11;

  return MEMORY[0x2822009F8](sub_22B75E23C, 0, 0);
}

uint64_t sub_22B75E23C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 224) + 1;
  if (v9 == *(v8 + 216))
  {
    *(v8 + 208), a2, a3, a4, a5, a6, a7, a8, v19, v8;
    v10 = *(v8 + 200);
    v11 = sub_22B75E130;
  }

  else
  {
    *(v8 + 224) = v9;
    v12 = *(v8 + 120);
    v13 = *(v8 + 208) + 16 * v9;
    v14 = *(v13 + 32);
    *(v8 + 232) = v14;
    v15 = *(v13 + 40);
    *(v8 + 240) = v15;
    if (*(v12 + 16) && (sub_22B7235C8(v14, v15), (v16 & 1) != 0))
    {
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    *(v8 + 248) = v17;
    *(v8 + 256) = swift_getKeyPath();
    v10 = *(v8 + 200);
    v11 = sub_22B75E1AC;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22B75E328(uint64_t a1)
{
  sub_22B718320(a1);
  v1[33] = v2;
  v10 = *v2->messageStore;
  v1[34] = v10;
  if (v10)
  {
    v11 = v1[15];
    v1[35] = 0;
    v12 = *v2->queue;
    v1[36] = v12;
    v13 = *v2->membershipObserver;
    v1[37] = v13;
    if (*(v11 + 16) && (sub_22B7235C8(v12, v13), (v14 & 1) != 0))
    {
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v1[38] = v15;
    v1[39] = swift_getKeyPath();
    v16 = v1[25];
    v17 = sub_22B75E494;
  }

  else
  {
    v2, v3, v4, v5, v6, v7, v8, v9, v19, v1;
    v16 = v1[25];
    v17 = sub_22B75E410;
  }

  return MEMORY[0x2822009F8](v17, v16, 0);
}

uint64_t sub_22B75E410()
{
  v1 = *(v0 + 200);
  *(v1 + 144) = *(v0 + 88) != 0;
  *(v1 + 112) = 0;
  sub_22B718694();

  return MEMORY[0x2822009F8](sub_22B75E610, 0, 0);
}

uint64_t sub_22B75E494()
{
  v1 = *(v0 + 304);
  sub_22B75ADE0(*(v0 + 288), *(v0 + 296), *(v0 + 312), v1);

  v1, v2, v3, v4, v5, v6, v7, v8, v10, v11;

  return MEMORY[0x2822009F8](sub_22B75E524, 0, 0);
}

uint64_t sub_22B75E524(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 280) + 1;
  if (v9 == *(v8 + 272))
  {
    *(v8 + 264), a2, a3, a4, a5, a6, a7, a8, v19, v8;
    v10 = *(v8 + 200);
    v11 = sub_22B75E410;
  }

  else
  {
    *(v8 + 280) = v9;
    v12 = *(v8 + 120);
    v13 = *(v8 + 264) + 16 * v9;
    v14 = *(v13 + 32);
    *(v8 + 288) = v14;
    v15 = *(v13 + 40);
    *(v8 + 296) = v15;
    if (*(v12 + 16) && (sub_22B7235C8(v14, v15), (v16 & 1) != 0))
    {
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    *(v8 + 304) = v17;
    *(v8 + 312) = swift_getKeyPath();
    v10 = *(v8 + 200);
    v11 = sub_22B75E494;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22B75E610(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 128);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8, v12, v8;
  sub_22B4DDE5C(v9, 0);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_22B75E688()
{

  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422680);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134349314;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Failed to load task reports for group %{public}lu: %@", v9, 0x16u);
    sub_22B4D0D64(v10, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 136) + 1;
  if (v21 == *(v0 + 104))
  {
    v22 = *(v0 + 72);
    v23 = *(v0 + 56);
    *(v0 + 96), v14, v15, v16, v17, v18, v19, v20, v33, v34;
    v24 = *(v23 + v22);
    *(v0 + 200) = v24;
    if (v24)
    {

      v13 = sub_22B75E004;
      v14 = v24;
      v15 = 0;

      return MEMORY[0x2822009F8](v13, v14, v15);
    }

    goto LABEL_17;
  }

  *(v0 + 136) = v21;
  v25 = *(v0 + 96);
  if (v21 >= *(v25 + 16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = *(v0 + 112);
  v27 = *(v0 + 56);
  v28 = *(v25 + 8 * v21 + 32);
  *(v0 + 144) = v28;
  v29 = *(v27 + v26);
  *(v0 + 152) = v29;
  if (!v29)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  v30 = swift_task_alloc();
  *(v0 + 160) = v30;
  *v30 = v0;
  v30[1] = sub_22B75D754;
  v31 = *(v0 + 64);

  return sub_22B6F66B4(v31, v28);
}

uint64_t sub_22B75E958(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  *(v4 + 64) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_22B75E984, 0, 0);
}

uint64_t sub_22B75E984()
{
  ObjectType = swift_getObjectType();
  sub_22B6F0AD4(&qword_27D8CE5F8, &qword_22B7FB6B0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_22B7F93B0;
  sub_22B7DBF48();
  v3 = sub_22B7DBE58();

  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22B75EA90;
  v5 = *(v0 + 64);

  return MEMORY[0x282172F50](v2, 0, v5, ObjectType);
}

uint64_t sub_22B75EA90(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v12 = *v1;
  *(*v1 + 56) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9, v11, v12;

  return MEMORY[0x2822009F8](sub_22B75EBB0, 0, 0);
}

uint64_t sub_22B75EBE4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 168) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v4 = qword_281422748;
  *(v3 + 80) = qword_281422748;

  return MEMORY[0x2822009F8](sub_22B75EC84, v4, 0);
}

uint64_t sub_22B75EC84()
{
  if (*(v0 + 168) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_22B75EE8C;

    return sub_22B75D430();
  }

  else
  {
    v3 = *(v0 + 72);
    v4 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
    swift_beginAccess();
    v5 = *(v3 + v4);
    *(v0 + 96) = v5;
    v6 = *(v5 + 32);
    *(v0 + 169) = v6;
    v7 = 1 << v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v5 + 64);

    swift_beginAccess();
    if (v9)
    {
      v10 = 0;
      v11 = *(v0 + 96);
LABEL_13:
      *(v0 + 104) = v9;
      *(v0 + 112) = v10;
      v13 = *(v0 + 64);
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v11 + 48) + 16 * v14);
      *(v0 + 120) = *v15;
      *(v0 + 128) = v15[1];
      *(v0 + 136) = *(*(v11 + 56) + 8 * v14);

      return MEMORY[0x2822009F8](sub_22B75F12C, v13, 0);
    }

    else
    {
      v12 = 0;
      v11 = *(v0 + 96);
      while (1)
      {
        v10 = v12 + 1;
        if (v12 + 1 >= ((1 << *(v0 + 169)) + 63) >> 6)
        {
          break;
        }

        v9 = *(v11 + 8 * v12++ + 72);
        if (v9)
        {
          goto LABEL_13;
        }
      }

      v16 = *(v0 + 8);

      return v16();
    }
  }
}

uint64_t sub_22B75EE8C()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22B75EF9C, v1, 0);
}

uint64_t sub_22B75EF9C()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 96) = v3;
  v4 = *(v3 + 32);
  *(v0 + 169) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  swift_beginAccess();
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 96);
LABEL_9:
    *(v0 + 104) = v7;
    *(v0 + 112) = v8;
    v11 = *(v0 + 64);
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    v13 = (*(v9 + 48) + 16 * v12);
    *(v0 + 120) = *v13;
    *(v0 + 128) = v13[1];
    *(v0 + 136) = *(*(v9 + 56) + 8 * v12);

    return MEMORY[0x2822009F8](sub_22B75F12C, v11, 0);
  }

  else
  {
    v10 = 0;
    v9 = *(v0 + 96);
    while (1)
    {
      v8 = v10 + 1;
      if (v10 + 1 >= ((1 << *(v0 + 169)) + 63) >> 6)
      {
        break;
      }

      v7 = *(v9 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_9;
      }
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22B75F12C()
{
  v1 = v0[10];
  v0[18] = *(v0[8] + 136);

  return MEMORY[0x2822009F8](sub_22B75F1A4, v1, 0);
}

uint64_t sub_22B75F1A4(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = v8[18];
  if (*(v9 + 16) && (v10 = sub_22B7235C8(v8[15], v8[16]), v9 = v8[18], (a2 & 1) != 0))
  {
    v11 = *(*(v9 + 56) + 8 * v10);
    v9, v12, v13, v14, v15, v16, v17, v18, v23, v24;
    v19 = [v11 taskReports];

    if (v19)
    {
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v20 = sub_22B7DB918();

      goto LABEL_7;
    }
  }

  else
  {
    v9, a2, a3, a4, a5, a6, a7, a8, v23, v24;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_7:
  v8[19] = v20;
  v21 = swift_task_alloc();
  v8[20] = v21;
  *v21 = v8;
  v21[1] = sub_22B75F2DC;

  return sub_22B73D7CC(v20);
}

uint64_t sub_22B75F2DC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 80);
  v12 = *v0;

  v1, v3, v4, v5, v6, v7, v8, v9, v11, v12;

  return MEMORY[0x2822009F8](sub_22B75F408, v2, 0);
}

uint64_t sub_22B75F408()
{

  v4 = *(v0 + 112);
  v5 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v5)
  {
    v1 = *(v0 + 96);
LABEL_7:
    *(v0 + 104) = v5;
    *(v0 + 112) = v4;
    v7 = *(v0 + 64);
    v8 = __clz(__rbit64(v5)) | (v4 << 6);
    v9 = (*(v1 + 48) + 16 * v8);
    *(v0 + 120) = *v9;
    *(v0 + 128) = v9[1];
    *(v0 + 136) = *(*(v1 + 56) + 8 * v8);

    v1 = sub_22B75F12C;
    v2 = v7;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v1, v2, v3);
      }

      v1 = *(v0 + 96);
      if (v6 >= (((1 << *(v0 + 169)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v1 + 8 * v6 + 64);
      ++v4;
      if (v5)
      {
        v4 = v6;
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_22B75F538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v15 = sub_22B7DBF28();
  if (*(v15 + 16) && (v16 = sub_22B723648(a1, a2), (v8 & 1) != 0))
  {
    v17 = *(*(v15 + 56) + 8 * v16);
    v15, v8, v9, v10, v11, v12, v13, v14, v24, v25;
    v18 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
    swift_beginAccess();
    v19 = *(v4 + v18);
    if (*(v19 + 16) && (v20 = sub_22B7235C8(v17, a3), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
    }

    else
    {
      v22 = 0;
    }

    swift_endAccess();
    return v22;
  }

  else
  {
    v15, v8, v9, v10, v11, v12, v13, v14, v24, v25;
    return 0;
  }
}

uint64_t sub_22B75F6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_22B75F6E4, a6, 0);
}

uint64_t sub_22B75F6E4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = sub_22B765354(&qword_27D8CEC80, 255, type metadata accessor for IMDPersistentTaskExecutor, &unk_22B7FE414);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  type metadata accessor for IMPersistentTaskRunResult(0);
  *v5 = v0;
  v5[1] = sub_22B75F824;

  return MEMORY[0x2822007B8](v0 + 2, v1, v3, 0xD00000000000001ELL, 0x800000022B8101F0, sub_22B76539C, v4, v6);
}

uint64_t sub_22B75F824()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22B75F950, v1, 0);
}

uint64_t sub_22B75F950()
{
  v1 = v0[5];
  v0[9] = v0[2];
  *(v1 + 208) = 0;

  return MEMORY[0x2822009F8](sub_22B75F9C8, 0, 0);
}

uint64_t sub_22B75F9C8()
{
  (*(v0 + 24))(*(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B75FC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](sub_22B75FC7C, 0, 0);
}

uint64_t sub_22B75FC7C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 64) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 96) = v4;
  if (v4)
  {

    a1 = sub_22B75FD04;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B75FD04()
{
  v25 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  swift_beginAccess();

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = *(v2 + 128);
  *(v2 + 128) = 0x8000000000000000;
  sub_22B7689F0(v4, v3, v1, isUniquelyReferenced_nonNull_native);
  v1, v6, v7, v8, v9, v10, v11, v12, v24[0], v24[1];
  *(v2 + 128) = v24[0];
  swift_endAccess();
  if ((*(v2 + 144) & 1) == 0)
  {
LABEL_5:
    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_22B75FF54;

    return sub_22B75D430();
  }

  v13 = v0[12];
  swift_beginAccess();
  v14 = *(v13 + 136);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_22B75ADDC();
    v17 = sub_22B759F48(v24, (v16 + 32), v15, v14);
    v18 = v24[0];

    sub_22B705E3C(v18);
    if (v17 != v15)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  v21 = v0[9];
  sub_22B4D01A0(0, &qword_28141F008, 0x277D1AB38);
  v22 = sub_22B7DB8F8();

  [v21 allExecutorStatusReportsUpdated_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22B75FF54()
{
  v1 = *v0;

  v2 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_22B760064, v2, 0);
}

uint64_t sub_22B760064()
{
  v12 = v0;
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_22B75ADDC();
    v5 = sub_22B759F48(&v11, (v4 + 32), v3, v2);
    v6 = v11;

    sub_22B705E3C(v6);
    if (v5 != v3)
    {
      __break(1u);
    }
  }

  v7 = v0[9];
  sub_22B4D01A0(0, &qword_28141F008, 0x277D1AB38);
  v8 = sub_22B7DB8F8();

  [v7 allExecutorStatusReportsUpdated_];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22B7602F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22B760318, 0, 0);
}

uint64_t sub_22B760318(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 40) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 64) = v4;
  if (v4)
  {

    a1 = sub_22B7603A0;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B7603A0()
{
  v1 = v0[7];
  v2 = v0[6];
  swift_beginAccess();

  sub_22B786A74(0, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B7605FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7606A4, 0, 0);
}

void sub_22B7606A4()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[6] = v2;
  if (v2 == 2)
  {
    v7 = *(v0[3] + OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter);
    v0[9] = v7;
    if (v7)
    {
      v4 = *(v1 + 120);

      v8 = swift_task_alloc();
      v0[10] = v8;
      *v8 = v0;
      v8[1] = sub_22B760B5C;
      v6 = v0[4];
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return;
  }

  if (v2 == 3)
  {
    v3 = *(v0[3] + OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter);
    v0[7] = v3;
    if (v3)
    {
      v4 = *(v1 + 120);

      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      v5[1] = sub_22B760880;
      v6 = v0[5];
LABEL_7:

      sub_22B6F66B4(v6, v4);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_22B6F0AD4(&unk_27D8CEC90, &qword_22B7FB7C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22B7F93B0;
  *(v9 + 32) = v2;

  v10 = v0[1];

  v10(v9);
}

uint64_t sub_22B760880()
{
  v1 = *v0;

  v2 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B760990, v2, 0);
}

uint64_t sub_22B760990()
{
  v1 = *(v0 + 40);

  v2 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
LABEL_5:

    return MEMORY[0x2822009F8](sub_22B760AB8, 0, 0);
  }

  v3 = *(v0 + 40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22B765218(v3);
    }

    goto LABEL_5;
  }

  sub_22B765218(v3);

  v5 = *(v0 + 8);
  v6 = MEMORY[0x277D84F90];

  return v5(v6);
}

uint64_t sub_22B760AB8()
{
  v1 = *(v0 + 48);
  sub_22B6F0AD4(&unk_27D8CEC90, &qword_22B7FB7C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22B7F93B0;
  *(v2 + 32) = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22B760B5C()
{
  v1 = *v0;

  v2 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_22B760C6C, v2, 0);
}

uint64_t sub_22B760C6C()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
LABEL_5:

    return MEMORY[0x2822009F8](sub_22B76662C, 0, 0);
  }

  v3 = *(v0 + 32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22B765218(v3);
    }

    goto LABEL_5;
  }

  sub_22B765218(v3);

  v5 = *(v0 + 8);

  return v5(&unk_283F1B8F8);
}

uint64_t sub_22B760D94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 265) = a5;
  *(v6 + 168) = a4;
  *(v6 + 176) = v5;
  *(v6 + 264) = a3;
  *(v6 + 152) = a1;
  *(v6 + 160) = a2;
  sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B760E3C, 0, 0);
}

uint64_t sub_22B760E3C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 152);
  if (*(v4 + 112) != 3 || (*(v3 + 264) & 1) != 0)
  {
    goto LABEL_8;
  }

  v5 = *(v3 + 160);
  if (v5 <= 5)
  {
    if (((1 << v5) & 0x2C) != 0)
    {
      v6 = *(*(v3 + 176) + OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter);
      *(v3 + 192) = v6;
      if (v6)
      {
        *(v3 + 200) = *(v4 + 120);
        v7 = sub_22B760FB4;
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    if (((1 << v5) & 0x11) == 0)
    {
      v6 = *(*(v3 + 176) + OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter);
      *(v3 + 216) = v6;
      if (!v6)
      {
LABEL_20:
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      *(v3 + 224) = *(v4 + 120);
      v7 = sub_22B761334;
      goto LABEL_10;
    }

LABEL_8:
    v6 = *(*(v3 + 176) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
    *(v3 + 240) = v6;
    if (!v6)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = sub_22B761628;
LABEL_10:
    v8 = v7;

    a1 = v8;
    a2 = v6;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  type metadata accessor for IMPersistentTaskExecutorStatus(0);
  *(v3 + 144) = v5;

  return sub_22B7DC548();
}

uint64_t sub_22B760FB4()
{
  v1 = *(v0 + 200);
  v2 = sub_22B6F64D4(v0 + 80);
  v3 = sub_22B6F8810((v0 + 112), v1);
  v5 = v4;
  v6 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_22B6F4628(1);
  }

  (v3)(v0 + 112, 0);
  (v2)(v0 + 80, 0);
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_22B761100;
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  return sub_22B6F66B4(v9, v8);
}

uint64_t sub_22B761100()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  sub_22B4D0D64(v2, &qword_27D8CEC50, qword_22B7FB600);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_22B761244, v3, 0);
}

uint64_t sub_22B761244()
{

  return MEMORY[0x2822009F8](sub_22B7612AC, 0, 0);
}

uint64_t sub_22B7612AC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 176) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 240) = v4;
  if (v4)
  {

    a1 = sub_22B761628;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B761334()
{
  v1 = *(v0 + 224);
  v2 = sub_22B6F64D4(v0 + 16);
  v3 = sub_22B6F8810((v0 + 48), v1);
  v5 = v4;
  v6 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_22B6F5CDC();
  }

  (v3)(v0 + 48, 0);
  (v2)(v0 + 16, 0);
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_22B76147C;
  v8 = *(v0 + 224);
  v9 = *(v0 + 184);

  return sub_22B6F66B4(v9, v8);
}

uint64_t sub_22B76147C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  sub_22B4D0D64(v2, &qword_27D8CEC50, qword_22B7FB600);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_22B7615C0, v3, 0);
}

uint64_t sub_22B7615C0()
{

  return MEMORY[0x2822009F8](sub_22B766630, 0, 0);
}

uint64_t sub_22B761628()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 265);
  v3 = *(v0 + 264);
  if (*(v1 + 112) == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v5 = sub_22B761730;
  }

  else
  {
    *(v1 + 112) = 1;
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v5 = sub_22B7618AC;
  }

  v4[1] = v5;
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);

  return sub_22B761A34(v1, v6, v3 & 1, v8, v7, v2 & 1);
}

uint64_t sub_22B761730()
{
  v1 = *v0;

  v2 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_22B761840, v2, 0);
}

uint64_t sub_22B761840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B7618AC()
{
  v1 = *v0;

  v2 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_22B7619BC, v2, 0);
}

uint64_t sub_22B7619BC()
{
  *(*(v0 + 240) + 112) = 0;
  sub_22B718694();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B761A34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (a3)
  {
    if (a6)
    {
      return (*(v6 + 8))();
    }

    v8 = sub_22B761BE0;
  }

  else
  {
    v8 = sub_22B761A88;
  }

  return MEMORY[0x2822009F8](v8, a4, 0);
}

uint64_t sub_22B761A88()
{
  v1 = v0[4];
  v0[6] = *(v1 + 120);
  v0[7] = *(v1 + 112);
  return MEMORY[0x2822009F8](sub_22B761AB8, 0, 0);
}

uint64_t sub_22B761AB8()
{
  v1 = *(v0 + 16);
  *(v0 + 64) = swift_getKeyPath();

  return MEMORY[0x2822009F8](sub_22B761B2C, v1, 0);
}

uint64_t sub_22B761B2C()
{
  sub_22B75B228(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 24));

  if (*(v0 + 96))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 32);

    return MEMORY[0x2822009F8](sub_22B761BE0, v3, 0);
  }
}

uint64_t sub_22B761BE0()
{
  v1 = v0[4];
  v0[9] = *(v1 + 120);
  v0[10] = *(v1 + 112);
  return MEMORY[0x2822009F8](sub_22B761C10, 0, 0);
}

uint64_t sub_22B761C10()
{
  v1 = *(v0 + 16);
  *(v0 + 88) = swift_getKeyPath();

  return MEMORY[0x2822009F8](sub_22B761C84, v1, 0);
}

uint64_t sub_22B761C84()
{
  sub_22B75B228(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B761CFC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B761D24, 0, 0);
}

uint64_t sub_22B761D24()
{
  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  *(v0 + 40) = qword_281422740;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B761E44, v1, 0);
  }

  else
  {
    v2 = *(v0 + 56);
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_22B766618;
    v4 = *(v0 + 16);

    return sub_22B760D94(v4, 2, 0, v2 + 3, 0);
  }
}

uint64_t sub_22B761E44()
{
  sub_22B7AAB3C(*(v0 + 16), *(v0 + 56), *(v0 + 24));
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_22B766618;
  v3 = *(v0 + 16);

  return sub_22B760D94(v3, 2, 0, v1 + 3, 0);
}

uint64_t sub_22B761F00(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22B761F24, 0, 0);
}

uint64_t sub_22B761F24(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 64) = v4;
  if (v4)
  {

    a1 = sub_22B761FAC;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B761FAC()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 72) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B762038, 0, 0);
}

uint64_t sub_22B762038(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = v8[9];
  if (*(v9 + 16) && (v10 = sub_22B7235C8(v8[5], v8[6]), v9 = v8[9], (a2 & 1) != 0))
  {
    v11 = *(*(v9 + 56) + 8 * v10);
    v9, v12, v13, v14, v15, v16, v17, v18, v24, v8;
    v19 = [v11 taskReports];

    if (v19)
    {
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v20 = sub_22B7DB918();

      v21 = v20;
      goto LABEL_7;
    }
  }

  else
  {
    v9, a2, a3, a4, a5, a6, a7, a8, v24, v8;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_7:
  v22 = v8[1];

  return v22(v21);
}

uint64_t sub_22B76214C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_22B762200;

  return sub_22B7644FC(v3, v2);
}

uint64_t sub_22B762200(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B7622FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B766620;

  return sub_22B7605FC(a1);
}

id sub_22B762390(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return 0;
  }

  result = *(v1 + OBJC_IVAR___IMDBackgroundMessageProcessingController_throttleMonitor);
  if (result)
  {
    return [result isThrottled];
  }

  return result;
}

uint64_t sub_22B7623D4(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B6F12E8;

  return sub_22B761CFC(a1, a2, a3);
}

uint64_t sub_22B762480(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_22B7624A4, 0, 0);
}

uint64_t sub_22B7624A4()
{
  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  v0[4] = qword_281422740;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B7625BC, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_22B76661C;
    v3 = v0[2];

    return sub_22B760D94(v3, 3, 0, 0, 0);
  }
}

uint64_t sub_22B7625BC()
{
  sub_22B7AAC44(*(v0 + 16), *(v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22B76661C;
  v2 = *(v0 + 16);

  return sub_22B760D94(v2, 3, 0, 0, 0);
}

uint64_t sub_22B762670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_22B762694, 0, 0);
}

uint64_t sub_22B762694()
{
  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  v0[5] = qword_281422740;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B7627B0, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_22B762864;
    v3 = v0[2];

    return sub_22B760D94(v3, 4, 0, 0, 0);
  }
}

uint64_t sub_22B7627B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  sub_22B7AAFE0(v8[2], v8[3], a3, a4, a5, a6, a7, a8, v12, v8);
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_22B762864;
  v10 = v8[2];

  return sub_22B760D94(v10, 4, 0, 0, 0);
}

uint64_t sub_22B762864()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B762958(uint64_t a1, char a2, char a3)
{
  *(v4 + 49) = a3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22B762980, 0, 0);
}

uint64_t sub_22B762980()
{
  if (*(v0 + 49))
  {
    goto LABEL_8;
  }

  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  *(v0 + 32) = qword_281422740;
  if (!v1)
  {
LABEL_8:
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_22B76661C;
    v3 = *(v0 + 16);

    return sub_22B760D94(v3, 4, 0, 0, 0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B762AA0, v1, 0);
  }
}

uint64_t sub_22B762AA0()
{
  sub_22B7AAD68(*(v0 + 16), *(v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22B76661C;
  v2 = *(v0 + 16);

  return sub_22B760D94(v2, 4, 0, 0, 0);
}

uint64_t sub_22B762B54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return sub_22B7653C8(a1, a2);
}

uint64_t sub_22B762C0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B762C2C, 0, 0);
}

uint64_t sub_22B762C2C()
{
  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  v0[4] = qword_281422740;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B762D44, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_22B762DF4;
    v3 = v0[2];

    return sub_22B760D94(v3, 1, 0, 0, 0);
  }
}

uint64_t sub_22B762D44()
{
  sub_22B7AAE8C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22B762DF4;
  v2 = *(v0 + 16);

  return sub_22B760D94(v2, 1, 0, 0, 0);
}

uint64_t sub_22B762DF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B762EE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6FAF68;

  return sub_22B761F00(a1, a2);
}

uint64_t IMDBackgroundMessageProcessingController.limiter(_:deferredGroup:until:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B6F12E8;

  return sub_22B76482C(a2, a3);
}

uint64_t IMDBackgroundMessageProcessingController.limiter(_:finishedDeferringGroup:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B6F12E8;

  return sub_22B764C74(a2);
}

uint64_t IMDBackgroundMessageProcessingController.limiter(_:requestTTRForGroup:ranges:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B6F12E8;

  return sub_22B7635AC(a2, a3);
}

void sub_22B7631A8(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_22B7DC2E8();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10, v42, v46;
  v47 = [v3 count];
  v11 = sub_22B7DC4E8();
  v13 = v12;
  MEMORY[0x231895140](v11);
  v13, v14, v15, v16, v17, v18, v19, v20, v43, v47;
  MEMORY[0x231895140](32, 0xE100000000000000);
  [v3 flag];
  v21 = sub_22B7DBE48();
  v23 = v22;
  MEMORY[0x231895140](v21);
  v23, v24, v25, v26, v27, v28, v29, v30, v44, v48;
  MEMORY[0x231895140](0xD000000000000012, 0x800000022B810450);
  v31 = [objc_opt_self() nameForReason:objc_msgSend(v3 inFlag:{sel_reason), objc_msgSend(v3, sel_flag)}];
  v32 = sub_22B7DB6A8();
  v34 = v33;

  MEMORY[0x231895140](v32, v34);
  v34, v35, v36, v37, v38, v39, v40, v41, v45, v49;
  *a2 = 8237;
  a2[1] = 0xE200000000000000;
}

uint64_t sub_22B763330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B6F0D94;

  return sub_22B76482C(a2, a3);
}

uint64_t sub_22B7633EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B6F12E8;

  return sub_22B764C74(a2);
}

uint64_t sub_22B76349C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B6F0D94;

  return sub_22B7635AC(a2, a3);
}

uint64_t sub_22B763558(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_22B7635AC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22B7DAD88();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_22B7DAD38();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_22B7DAD48();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = sub_22B7DAD28();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v9 = sub_22B7DAD98();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B763848, 0, 0);
}

uint64_t sub_22B763848()
{
  v24 = v0;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422680);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBCB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136446210;
    v6 = sub_22B7DBF38();
    v8 = v7;
    v9 = sub_22B4CFAAC(v6, v7, &v23);
    v8, v10, v11, v12, v13, v14, v15, v16, v22, v23;
    *(v4 + 4) = v9;
    _os_log_impl(&dword_22B4CC000, v2, v3, "TTR requested for %{public}s", v4, 0xCu);
    sub_22B4CFB78(v5);
    MEMORY[0x231898D60](v5, -1, -1);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v20 = *(*(v0 + 72) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v0 + 224) = v20;
  if (v20)
  {

    v17 = sub_22B7639F8;
    v18 = v20;
    v19 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22B7639F8()
{
  v1 = *(v0 + 224);
  swift_beginAccess();
  *(v0 + 232) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B763A84, 0, 0);
}

uint64_t sub_22B763A84(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v222 = v8;
  v9 = v8;
  v10 = v8[29];
  if (*(v10 + 16) && (v11 = sub_22B7235C8(v8[7], 3), v10 = v8[29], (a2 & 1) != 0))
  {
    v12 = *(*(v10 + 56) + 8 * v11);
    v10, v13, v14, v15, v16, v17, v18, v19, v175, v187;
    v20 = [v12 taskReports];

    if (v20)
    {
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v28 = sub_22B7DB918();

      if (v28 >> 62)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v10, a2, a3, a4, a5, a6, a7, a8, v175, v187;
  }

  v28 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_5:
    v29 = sub_22B7DC1C8();
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

LABEL_9:
  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_6:
    v28, v21, v22, v23, v24, v25, v26, v27, v176, v188;
    v30 = MEMORY[0x277D84F90];
LABEL_21:
    v48 = v9[8];
    v9[5] = v30;
    sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
    sub_22B7665AC();
    v207 = sub_22B7DB5F8();
    v50 = v49;
    v30, v49, v51, v52, v53, v54, v55, v56, v177, v189;
    v220 = 0;
    v221 = 0xE000000000000000;
    sub_22B7DC2E8();
    v221, v57, v58, v59, v60, v61, v62, v63, v178, v190;
    v220 = 0x205D545347425BLL;
    v221 = 0xE700000000000000;
    v64 = sub_22B7DBF38();
    v66 = v65;
    MEMORY[0x231895140](v64);
    v66, v67, v68, v69, v70, v71, v72, v73, v179, v191;
    MEMORY[0x231895140](0xD000000000000022, 0x800000022B810340);
    v209 = v221;
    v220 = 0;
    v221 = 0xE000000000000000;
    sub_22B7DC2E8();
    v217 = v220;
    v218 = v221;
    v74 = sub_22B7DBF38();
    v76 = v75;
    MEMORY[0x231895140](v74);
    v76, v77, v78, v79, v80, v81, v82, v83, v180, v192;
    MEMORY[0x231895140](0xD0000000000000B9, 0x800000022B810370);
    v84 = *(v48 + 16);
    v85 = MEMORY[0x277D84F90];
    if (v84)
    {
      v213 = v50;
      v86 = v9[11];
      v87 = v9[8];
      v219 = MEMORY[0x277D84F90];
      sub_22B7AB6B4(0, v84, 0);
      v85 = v219;
      v88 = v87 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
      v89 = *(v86 + 72);
      do
      {
        v90 = v9;
        v91 = v9[12];
        sub_22B74BD44(v88, v91);
        v220 = 8237;
        v221 = 0xE200000000000000;
        v92 = sub_22B7DA878();
        v94 = v93;
        MEMORY[0x231895140](v92);
        v94, v95, v96, v97, v98, v99, v100, v101, v181, v193;
        MEMORY[0x231895140](0x202E2E2E20, 0xE500000000000000);
        v102 = sub_22B7DA878();
        v104 = v103;
        MEMORY[0x231895140](v102);
        v104, v105, v106, v107, v108, v109, v110, v111, v182, v194;
        v113 = v220;
        v112 = v221;
        sub_22B4D0D64(v91, &unk_27D8CEEC0, &qword_22B7FA060);
        v219 = v85;
        v115 = *v85->messageStore;
        v114 = *v85->chatRegistry;
        if (v115 >= v114 >> 1)
        {
          sub_22B7AB6B4((v114 > 1), v115 + 1, 1);
          v85 = v219;
        }

        *v85->messageStore = v115 + 1;
        v116 = v85 + 16 * v115;
        *(v116 + 4) = v113;
        *(v116 + 5) = v112;
        v88 += v89;
        --v84;
        v9 = v90;
      }

      while (v84);
      v50 = v213;
    }

    v117 = v9[23];
    v118 = v9[22];
    v201 = v118;
    v202 = v117;
    v120 = v9[19];
    v119 = v9[20];
    v199 = v9[21];
    v200 = v9[18];
    v211 = v9[24];
    v214 = v9[17];
    v216 = v9[16];
    v203 = v9[15];
    v204 = v9[14];
    v205 = v9[13];
    v9[6] = v85;
    v121 = sub_22B7DB5F8();
    v123 = v122;
    v85, v122, v124, v125, v126, v127, v128, v129, v181, v193;
    MEMORY[0x231895140](v121, v123);
    v123, v130, v131, v132, v133, v134, v135, v136, v183, v195;
    MEMORY[0x231895140](0xD00000000000001CLL, 0x800000022B810430);
    MEMORY[0x231895140](v207, v50);
    v50, v137, v138, v139, v140, v141, v142, v143, v184, v196;
    v206 = v218;
    (*(v117 + 104))(v211, *MEMORY[0x277D195B8], v118);
    (*(v119 + 104))(v199, *MEMORY[0x277D195D0], v120);
    (*(v214 + 104))(v200, *MEMORY[0x277D195C0], v216);
    sub_22B6F0AD4(&unk_27D8CECA0, &unk_22B7FB7D0);
    v144 = sub_22B7DAD18();
    v145 = *(v144 - 8);
    v146 = *(v145 + 72);
    v147 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_22B7F93A0;
    v149 = v148 + v147;
    v150 = v9;
    v151 = *(v145 + 104);
    v151(v149, *MEMORY[0x277D195A0], v144);
    v151(v149 + v146, *MEMORY[0x277D19598], v144);
    sub_22B7DAD78();
    sub_22B7DAD08();
    v148, v152, v153, v154, v155, v156, v157, v158, v199, &unk_283F1B5D0;
    v206, v159, v160, v161, v162, v163, v164, v165, v185, v197;
    v209, v166, v167, v168, v169, v170, v171, v172, v186, v198;
    (*(v204 + 8))(v203, v205);
    (*(v214 + 8))(v200, v216);
    (*(v119 + 8))(v199, v120);
    (*(v202 + 8))(v211, v201);
    v173 = swift_task_alloc();
    v150[30] = v173;
    *v173 = v150;
    v173[1] = sub_22B764254;

    return MEMORY[0x282173A08]();
  }

LABEL_10:
  v219 = MEMORY[0x277D84F90];
  sub_22B7AB6B4(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v208 = v9;
    v31 = 0;
    v30 = v219;
    v32 = v28;
    v215 = v28 & 0xC000000000000001;
    v210 = v28 & 0xFFFFFFFFFFFFFF8;
    v212 = v28;
    v33 = v29;
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v215)
      {
        v35 = MEMORY[0x231895C80](v31, v32);
      }

      else
      {
        if (v31 >= *(v210 + 16))
        {
          goto LABEL_31;
        }

        v35 = *(v32 + 8 * v31 + 32);
      }

      v36 = v35;
      v217 = v35;
      sub_22B7631A8(&v217, &v220);

      v44 = v220;
      v43 = v221;
      v219 = v30;
      v46 = *v30->messageStore;
      v45 = *v30->chatRegistry;
      if (v46 >= v45 >> 1)
      {
        sub_22B7AB6B4((v45 > 1), v46 + 1, 1);
        v30 = v219;
      }

      *v30->messageStore = v46 + 1;
      v47 = v30 + 16 * v46;
      *(v47 + 4) = v44;
      *(v47 + 5) = v43;
      ++v31;
      v32 = v212;
      if (v34 == v33)
      {
        v212, v212, v37, v38, v39, v40, v41, v42, v176, v188;
        v9 = v208;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return MEMORY[0x282173A08]();
}

uint64_t sub_22B764254()
{
  v2 = *v1;
  v3 = *v1;
  v2[31] = v0;

  v4 = v2[26];
  if (v0)
  {
    (*(v4 + 8))(v2[27], v2[25]);

    return MEMORY[0x2822009F8](sub_22B76444C, 0, 0);
  }

  else
  {
    (*(v4 + 8))();

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22B76444C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B7644FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_22B7DBA18();
  v2[4] = sub_22B7DBA08();
  v4 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B764594, v4, v3);
}

id sub_22B764594()
{
  v17 = v0;
  v1 = v0[2];
  v15 = MEMORY[0x277D84FA0];
  if (v1 == 2)
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;

    v9 = [v8 isSyncing];

    if (v9)
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v10 = sub_22B7DB2B8();
      sub_22B4CFA74(v10, qword_281422680);
      v11 = sub_22B7DB298();
      v12 = sub_22B7DBCB8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B4CC000, v11, v12, "MiC sync in progress, not allowing any reparenting tasks.", v13, 2u);
        MEMORY[0x231898D60](v13, -1, -1);
      }

      sub_22B7C8CCC(&v16, 100001);
    }
  }

  else if (v1)
  {
  }

  else
  {
    v2 = v0[3];

    if (v2 == 3 && [objc_opt_self() anyStorageControllerIsAwaitingStorageTimer])
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v3 = sub_22B7DB2B8();
      sub_22B4CFA74(v3, qword_281422680);
      v4 = sub_22B7DB298();
      v5 = sub_22B7DBCB8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v4, v5, "Storage timer is pending, not allowing messages from storage to be indexed", v6, 2u);
        MEMORY[0x231898D60](v6, -1, -1);
      }

      sub_22B7C8CCC(&v16, 1012);
    }
  }

  v14 = v0[1];

  return v14(v15);
}

uint64_t sub_22B76482C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22B7DA968();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7648F0, 0, 0);
}

uint64_t sub_22B7648F0()
{
  v40 = v0;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422680);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_22B7DB298();
  v7 = sub_22B7DBC98();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136446466;
    v14 = sub_22B7DBF38();
    v16 = v15;
    v17 = sub_22B4CFAAC(v14, v15, &v38);
    v16, v18, v19, v20, v21, v22, v23, v24, v38, v39;
    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v25 = sub_22B7DA878();
    v27 = v26;
    (*(v10 + 8))(v9, v11);
    v28 = sub_22B4CFAAC(v25, v27, &v38);
    v27, v29, v30, v31, v32, v33, v34, v35, v38, v39;
    *(v12 + 14) = v28;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Critical lane for %{public}s has exhausted allotted time, and will be deferred until %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v36 = swift_task_alloc();
  v0[8] = v36;
  *v36 = v0;
  v36[1] = sub_22B764B64;

  return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(1);
}

uint64_t sub_22B764B64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B764C74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B764C94, 0, 0);
}

uint64_t sub_22B764C94()
{
  v21 = v0;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422680);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBCB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    v6 = sub_22B7DBF38();
    v8 = v7;
    v9 = sub_22B4CFAAC(v6, v7, &v20);
    v8, v10, v11, v12, v13, v14, v15, v16, v19, v20;
    *(v4 + 4) = v9;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Critical lane for %{public}s has finished deferral", v4, 0xCu);
    sub_22B4CFB78(v5);
    MEMORY[0x231898D60](v5, -1, -1);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v17 = swift_task_alloc();
  *(v0 + 32) = v17;
  *v17 = v0;
  v17[1] = sub_22B764E50;

  return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(1);
}

uint64_t sub_22B764E50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B764FC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B6F12E8;

  return sub_22B7602F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B76508C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B6F12E8;

  return sub_22B75FC58(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22B765160(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B6F0D94;

  return sub_22B75E958(a1, a2, v6, v7);
}

uint64_t sub_22B765218(uint64_t a1)
{
  v2 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B765280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B6F12E8;

  return sub_22B75F6C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22B765354(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B7653C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B7653EC, 0, 0);
}

uint64_t sub_22B7653EC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (qword_281420390 != -1)
  {
    a1 = swift_once();
  }

  v4 = qword_281422740;
  v3[5] = qword_281422740;
  if (v4)
  {
    a1 = sub_22B7654C8;
  }

  else
  {
    v5 = *(v3[4] + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
    v3[6] = v5;
    if (!v5)
    {
      __break(1u);
      return MEMORY[0x2822009F8](a1, v4, a3);
    }

    a1 = sub_22B7655BC;
    v4 = v5;
  }

  a3 = 0;

  return MEMORY[0x2822009F8](a1, v4, a3);
}

uint64_t sub_22B7654C8()
{
  sub_22B7AB20C();

  return MEMORY[0x2822009F8](sub_22B765534, 0, 0);
}

uint64_t sub_22B765534(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 32) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 48) = v4;
  if (v4)
  {

    a1 = sub_22B7655BC;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B7655BC()
{
  v1 = v0[6];
  if (*(v1 + 112) == 1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v3 = sub_22B7656B8;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v3 = sub_22B765968;
  }

  v2[1] = v3;
  v4 = v0[3];
  v5 = v0[2];

  return sub_22B760D94(v5, 5, 0, v4, 0);
}

uint64_t sub_22B7656B8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_22B7657F8;

  return sub_22B75D430();
}

uint64_t sub_22B7657F8()
{
  v1 = *v0;

  v2 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_22B765908, v2, 0);
}

uint64_t sub_22B765908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B765968()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_22B765AA8;

  return sub_22B75D430();
}

uint64_t sub_22B765AA8()
{
  v1 = *v0;

  v2 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_22B765BB8, v2, 0);
}

uint64_t sub_22B765BB8()
{
  *(*(v0 + 48) + 112) = 0;
  sub_22B718694();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_22B765C24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (v26 - v8);
  v27[3] = type metadata accessor for IMDBackgroundMessageProcessingController(v7);
  v27[4] = &protocol witness table for IMDBackgroundMessageProcessingController;
  v27[0] = a1;
  swift_defaultActor_initialize();
  v10 = MEMORY[0x277D84F90];
  a3[20] = sub_22B71DBD4(MEMORY[0x277D84F90]);
  a3[21] = sub_22B71DDAC(v10);
  sub_22B4D0DE8(v27, (a3 + 14));
  a3[19] = a2;

  v11 = sub_22B7DBF58();
  v19 = v11;
  v20 = *(v11 + 16);
  if (v20)
  {
    v21 = (v11 + 32);
    do
    {
      v22 = *v21++;

      sub_22B6F3B64(v23, v22, v9);
      v24 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
      (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
      swift_beginAccess();
      sub_22B7865A4(v9, v22);
      swift_endAccess();
      --v20;
    }

    while (v20);
  }

  v19, v12, v13, v14, v15, v16, v17, v18, v26[0], v26[1];
  sub_22B4CFB78(v27);
  return a3;
}

uint64_t sub_22B765DC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v51[3] = sub_22B4D01A0(0, &qword_28141F180, 0x277CF0810);
  v51[4] = &off_283F20C18;
  v51[0] = a1;
  swift_defaultActor_initialize();
  *(a5 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 192) = 0;
  *(a5 + 200) = 0;
  *(a5 + 216) = 0;
  *(a5 + 208) = 0;
  *(a5 + 224) = 0;
  *(a5 + 232) = 0;
  *(a5 + 240) = -1;
  sub_22B4D0DE8(v51, a5 + 136);
  *(a5 + 184) = &off_283F1E0B8;
  swift_unknownObjectWeakAssign();
  v12 = 0;
  *(a5 + 112) = a3;
  *(a5 + 120) = a4;
  if (a3 <= 3)
  {
    v12 = qword_22B7FB7E0[a3];
  }

  *(a5 + 248) = sub_22B7C71B0(a4, a3);
  *(a5 + 256) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v15 = sub_22B7DB678();
  v16 = [v14 initWithIdentifier_];

  v17 = v16;
  [v17 setPriority_];
  if (a3 == 3)
  {
    [v17 setPreventsDeviceSleep_];
    v18 = v17;
  }

  else
  {
    [v17 setGroupConcurrencyLimit_];
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_22B7DC2E8();
    v50, v19, v20, v21, v22, v23, v24, v25, v48, v49;
    v49 = 0xD000000000000026;
    v50 = 0x800000022B810290;
    v26 = sub_22B7DBF38();
    v28 = v27;
    MEMORY[0x231895140](v26);
    v28, v29, v30, v31, v32, v33, v34, v35, v48, v49;
    v36 = v50;
    v18 = sub_22B7DB678();
    v36, v37, v38, v39, v40, v41, v42, v43, v48, v49;
    [v17 setGroupName_];
  }

  sub_22B7DBF98();
  sub_22B7DBF48();
  sub_22B7DBF68();

  *(a5 + 128) = v17;
  v44 = v17;
  sub_22B7DBA38();
  v45 = sub_22B7DBA58();
  (*(*(v45 - 8) + 56))(v11, 0, 1, v45);
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = a5;

  sub_22B77E3D4(0, 0, v11, &unk_22B7FB708, v46);

  sub_22B4CFB78(v51);
  return a5;
}

uint64_t sub_22B766104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return sub_22B75C6C4();
}

uint64_t sub_22B7661D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return sub_22B75D108();
}

uint64_t sub_22B766284()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return sub_22B75D108();
}

uint64_t sub_22B766338()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return sub_22B75C6C4();
}

uint64_t sub_22B7663EC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22B6F0D94;

  return sub_22B7C6EFC();
}

uint64_t sub_22B7664A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B7664E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return sub_22B75D108();
}

unint64_t sub_22B7665AC()
{
  result = qword_28141F2C8;
  if (!qword_28141F2C8)
  {
    sub_22B6FB8C4(&unk_27D8CE9E0, &qword_22B7F99B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2C8);
  }

  return result;
}

void sub_22B766634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v10 = *(a1 + 32);
  sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
  v11 = sub_22B7DB918();

  v10(v11);

  v11, v12, v13, v14, v15, v16, v17, v18, a9, a10;
}

uint64_t sub_22B7666B8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_22B7DB788();
  return sub_22B7DB878();
}

uint64_t sub_22B766738()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F590);
  sub_22B4CFA74(v0, qword_28141F590);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

id sub_22B7667A4()
{
  result = [objc_allocWithZone(IMDPlainTextTapbackInterpreter) init];
  qword_28141F0B8 = result;
  return result;
}

BOOL IMDPlainTextTapbackInterpreter.parseString(_:emoji:infix:type:)(void *a1, unint64_t a2, void *a3, void *a4, void *a5)
{

  sub_22B78D49C(a1, a2, &v50);

  v10 = v52;
  if (v52)
  {
    v11 = v53;
    v12 = v51;
    if (v51)
    {

      v13 = sub_22B7DB678();
      v12, v14, v15, v16, v17, v18, v19, v20, v47, v50;
    }

    else
    {
      v13 = 0;
    }

    v21 = v13;
    *a3 = v13;

    v22 = v13;
    v23 = sub_22B7DB678();
    v10, v24, v25, v26, v27, v28, v29, v30, v47, v50;
    v31 = v23;
    *a4 = v23;
    v12, v32, v33, v34, v35, v36, v37, v38, v48, v50;
    v10, v39, v40, v41, v42, v43, v44, v45, v49, v50;
    *a5 = v11;
  }

  return v10 != 0;
}

void IMDPlainTextTapbackInterpreter.interpretMessageItem(_:in:)(void *a1, void *a2)
{
  v335 = a1;
  v3 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v319 - v4;
  v6 = sub_22B7DA968();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v319 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v319 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v319 - v14;
  sub_22B7DA938();
  v16 = [v335 plainBody];
  v334 = v6;
  if (!v16)
  {
    v17 = [v335 body];
    if (!v17)
    {
      if (qword_28141F588 != -1)
      {
        swift_once();
      }

      v103 = sub_22B7DB2B8();
      sub_22B4CFA74(v103, qword_28141F590);
      v335 = v335;
      v40 = sub_22B7DB298();
      v41 = sub_22B7DBC78();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v15;
        v43 = v7;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v344 = v45;
        *v44 = 136315138;
        v104 = [v335 guid];

        if (!v104)
        {
LABEL_67:
          __break(1u);
          return;
        }

        v105 = sub_22B7DB6A8();
        v107 = v106;

        v108 = sub_22B4CFAAC(v105, v107, &v344);
        v107, v109, v110, v111, v112, v113, v114, v115, v319, v320;
        *(v44 + 4) = v108;
        v58 = "No plain body found for message %s";
LABEL_22:
        _os_log_impl(&dword_22B4CC000, v40, v41, v58, v44, 0xCu);
        sub_22B4CFB78(v45);
        MEMORY[0x231898D60](v45, -1, -1);
        MEMORY[0x231898D60](v44, -1, -1);

        (*(v43 + 8))(v42, v334);
        goto LABEL_62;
      }

LABEL_23:

      (*(v7 + 8))(v15, v6);
      goto LABEL_62;
    }

    v18 = v17;
    v16 = [v17 string];
  }

  v328 = v10;
  v332 = v13;
  v19 = sub_22B7DB6A8();
  v21 = v20;

  sub_22B78D49C(v19, v21, v341);

  v21, v22, v23, v24, v25, v26, v27, v28, v319, v320;
  v29 = v342;
  if (!v342)
  {
    if (qword_28141F588 != -1)
    {
      swift_once();
    }

    v39 = sub_22B7DB2B8();
    sub_22B4CFA74(v39, qword_28141F590);
    v335 = v335;
    v40 = sub_22B7DB298();
    v41 = sub_22B7DBC78();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v15;
      v43 = v7;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v344 = v45;
      *v44 = 136315138;
      v46 = [v335 guid];

      if (!v46)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v47 = sub_22B7DB6A8();
      v49 = v48;

      v50 = sub_22B4CFAAC(v47, v49, &v344);
      v49, v51, v52, v53, v54, v55, v56, v57, v319, v320;
      *(v44 + 4) = v50;
      v58 = "No plain text tapback found for message %s";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v331 = v15;
  v30 = v341[0];
  v333 = v341[1];
  v329 = v343;
  sub_22B767A68(v341[2], v342, a2, &v344);
  v31 = v345;
  if (v345)
  {
    v323 = v344;
    v325 = v346;
    v324 = v347;
    v32 = v348;
    v33 = [v335 messageSummaryInfo];
    if (v33)
    {
      v34 = v33;
      v35 = sub_22B7DB588();

      *&v338 = sub_22B7DB6A8();
      *(&v338 + 1) = v36;
      sub_22B7DC248();
      v339 = sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
      *&v338 = v32;
      sub_22B4D7F04(&v338, v337);
      v37 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v336 = v35;
      sub_22B769028(v337, v340, isUniquelyReferenced_nonNull_native);
      sub_22B4DA138(v340);
      v326 = v336;
    }

    else
    {
      v326 = 0;
    }

    v322 = v32;
    v116 = [v335 sender];
    if (v116)
    {
      v117 = v116;
      sub_22B7DB6A8();
      v119 = v118;
    }

    else
    {
      v119 = 0;
    }

    v120 = [v335 time];
    if (v120)
    {
      v121 = v120;
      sub_22B7DA928();

      v122 = 0;
    }

    else
    {
      v122 = 1;
    }

    v319 = v30;
    v330 = v7;
    (*(v7 + 56))(v5, v122, 1, v334);
    v321 = [v335 body];
    v123 = sub_22B4D7D1C(MEMORY[0x277D84F90]);
    v320 = [v335 flags];
    v124 = [v335 guid];
    if (v124)
    {
      v125 = v124;
      sub_22B7DB6A8();
      v127 = v126;
    }

    else
    {
      v127 = 0;
    }

    v327 = v31;

    if (v119)
    {
      v128 = sub_22B7DB678();
      v119, v129, v130, v131, v132, v133, v134, v135, v319, v320;
    }

    else
    {
      v128 = 0;
    }

    v136 = v330;
    v137 = v334;
    if ((*(v330 + 48))(v5, 1, v334) == 1)
    {
      v138 = 0;
    }

    else
    {
      v138 = sub_22B7DA8B8();
      (*(v136 + 8))(v5, v137);
    }

    v139 = v333;
    v140 = sub_22B7DB568();
    v123, v141, v142, v143, v144, v145, v146, v147, v319, v320;
    v148 = v327;
    if (v127)
    {
      v149 = sub_22B7DB678();
      v127, v150, v151, v152, v153, v154, v155, v156, v319, v320;
    }

    else
    {
      v149 = 0;
    }

    v157 = sub_22B7DB678();
    v148, v158, v159, v160, v161, v162, v163, v164, v319, v320;
    if (v139)
    {
      v165 = sub_22B7DB678();
      v139, v166, v167, v168, v169, v170, v171, v172, v319, v320;
    }

    else
    {
      v165 = 0;
    }

    if (v326)
    {
      v173 = sub_22B7DB568();
    }

    else
    {
      v173 = 0;
    }

    v174 = objc_allocWithZone(MEMORY[0x277D1A8A8]);
    v175 = v321;
    v176 = [v174 initWithSender:v128 time:v138 body:v321 attributes:v140 fileTransferGUIDs:0 flags:v320 error:0 guid:v149 associatedMessageGUID:v157 associatedMessageType:v329 associatedMessageRange:v325 associatedMessageEmoji:v324 messageSummaryInfo:v165 threadIdentifier:{v173, 0}];

    if (v176)
    {
      v177 = v176;
      v178 = [v335 fallbackHash];
      [v177 setFallbackHash_];
    }

    v321 = v176;
    v179 = v330;
    v180 = v332;
    if (qword_28141F588 != -1)
    {
      swift_once();
    }

    v181 = sub_22B7DB2B8();
    sub_22B4CFA74(v181, qword_28141F590);
    v182 = v331;
    v183 = v334;
    (*(v179 + 16))(v180, v331, v334);
    v184 = v333;

    v185 = v322;

    v335 = v335;
    v186 = v327;
    swift_bridgeObjectRetain_n();
    v187 = v179;
    v188 = v185;
    v189 = v180;
    v190 = sub_22B7DB298();
    v191 = sub_22B7DBC78();
    v29, v192, v193, v194, v195, v196, v197, v198, v319, v320;
    v184, v199, v200, v201, v202, v203, v204, v205, v319, v320;
    if (!os_log_type_enabled(v190, v191))
    {
      v29, v206, v207, v208, v209, v210, v211, v212, v319, v320;
      v184, v294, v295, v296, v297, v298, v299, v300, v319, v320;
      v238 = v335;

      swift_bridgeObjectRelease_n();
      v301 = *(v187 + 8);
      v301(v189, v183);
      v301(v182, v183);
      goto LABEL_57;
    }

    v213 = swift_slowAlloc();
    v322 = swift_slowAlloc();
    v340[0] = v322;
    *v213 = 136316162;
    *&v338 = v329;
    type metadata accessor for IMAssociatedMessageType(0);
    v214 = sub_22B7DB6E8();
    v216 = v215;
    v29, v215, v217, v218, v219, v220, v221, v222, v319, v320;
    v184, v223, v224, v225, v226, v227, v228, v229, v319, v320;
    v230 = sub_22B4CFAAC(v214, v216, v340);
    v216, v231, v232, v233, v234, v235, v236, v237, v319, v320;
    *(v213 + 4) = v230;
    *(v213 + 12) = 2080;
    v238 = v335;
    v239 = [v335 guid];

    swift_bridgeObjectRelease_n();
    if (v239)
    {
      v240 = v186;
      v241 = sub_22B7DB6A8();
      v243 = v242;

      v244 = sub_22B4CFAAC(v241, v243, v340);
      v243, v245, v246, v247, v248, v249, v250, v251, v319, v320;
      *(v213 + 14) = v244;
      *(v213 + 22) = 2080;

      v252 = sub_22B4CFAAC(v323, v240, v340);
      v240, v253, v254, v255, v256, v257, v258, v259, v319, v320;
      *(v213 + 24) = v252;
      *(v213 + 32) = 2080;
      v260 = sub_22B7DBFF8();
      v262 = v261;
      v263 = sub_22B4CFAAC(v260, v261, v340);
      v262, v264, v265, v266, v267, v268, v269, v270, v319, v320;
      *(v213 + 34) = v263;
      *(v213 + 42) = 2048;
      v271 = v240;
      v272 = v328;
      sub_22B7DA938();
      v273 = v332;
      sub_22B7DA898();
      v275 = v274;
      v276 = *(v330 + 8);
      v277 = v272;
      v278 = v334;
      v276(v277, v334);
      v276(v273, v278);
      *(v213 + 44) = v275;
      _os_log_impl(&dword_22B4CC000, v190, v191, "Interpreted plain text tapback %s for %s, attaching to %s with range %s, took %fs", v213, 0x34u);
      v279 = v322;
      swift_arrayDestroy();
      MEMORY[0x231898D60](v279, -1, -1);
      MEMORY[0x231898D60](v213, -1, -1);

      v271, v280, v281, v282, v283, v284, v285, v286, v319, v320;
      v276(v331, v278);
LABEL_57:
      v302 = v326;
      if (!v321)
      {
        v238;
      }

      v302, v287, v288, v289, v290, v291, v292, v293, v319, v320;
      return;
    }

    __break(1u);
    goto LABEL_66;
  }

  if (qword_28141F588 != -1)
  {
    swift_once();
  }

  v59 = sub_22B7DB2B8();
  sub_22B4CFA74(v59, qword_28141F590);
  v60 = v333;

  v61 = sub_22B7DB298();
  v62 = sub_22B7DBC78();
  v29, v63, v64, v65, v66, v67, v68, v69, v319, v320;
  v60, v70, v71, v72, v73, v74, v75, v76, v319, v320;
  if (os_log_type_enabled(v61, v62))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v340[0] = v78;
    *v77 = 136315138;
    *&v338 = v329;
    type metadata accessor for IMAssociatedMessageType(0);
    v79 = sub_22B7DB6E8();
    v81 = v80;
    v29, v80, v82, v83, v84, v85, v86, v87, v319, v320;
    v60, v88, v89, v90, v91, v92, v93, v94, v319, v320;
    v95 = sub_22B4CFAAC(v79, v81, v340);
    v81, v96, v97, v98, v99, v100, v101, v102, v319, v320;
    *(v77 + 4) = v95;
    _os_log_impl(&dword_22B4CC000, v61, v62, "Interpreted plain text tapback %s but could not find original message using infix string", v77, 0xCu);
    sub_22B4CFB78(v78);
    MEMORY[0x231898D60](v78, -1, -1);
    MEMORY[0x231898D60](v77, -1, -1);
  }

  else
  {

    v29, v303, v304, v305, v306, v307, v308, v309, v319, v320;
    v60, v310, v311, v312, v313, v314, v315, v316, v319, v320;
  }

  (*(v7 + 8))(v331, v334);
LABEL_62:
  v317 = v335;

  v318 = v317;
}

id sub_22B767A68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  v8[6] = 0;
  sub_22B7DB6A8();
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_22B7DB678();
  v10, v13, v14, v15, v16, v17, v18, v19, v8 + 2, a2;
  v20 = [v11 initWithKey:v12 ascending:0];

  v21 = [objc_opt_self() synchronousDatabase];
  result = [a3 guid];
  if (result)
  {
    v23 = result;
    sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22B7F9620;
    *(v24 + 32) = v20;
    sub_22B4D01A0(0, &qword_27D8CD670, 0x277CCAC98);
    v25 = v20;
    v26 = sub_22B7DB8F8();
    v24, v27, v28, v29, v30, v31, v32, v33, v42, v44;
    v34 = swift_allocObject();
    v34[2] = v8;
    v34[3] = v4;
    v34[4] = a1;
    v34[5] = v45;
    aBlock[4] = sub_22B76986C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B766634;
    aBlock[3] = &unk_283F1E450;
    v35 = _Block_copy(aBlock);

    v36 = v4;

    [v21 fetchMessageRecordsForChatRecordWithGUID:v23 filteredUsingPredicate:0 sortedUsingDescriptors:v26 limit:50 completionHandler:v35];

    _Block_release(v35);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v37 = v8[2];
    v38 = v8[3];
    v39 = v8[4];
    v40 = v8[5];
    v41 = v8[6];
    sub_22B769878(v37, v38, v39, v40, v41);

    *a4 = v37;
    a4[1] = v38;
    a4[2] = v39;
    a4[3] = v40;
    a4[4] = v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22B767DAC(unint64_t a1, void *a2, uint64_t a3, void *a4, IMDScheduledMessageCoordinator *a5)
{
  v64 = a2;
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v69 = a4;
      v71 = a5;
      v7 = 0;
      v72 = v6;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x231895C80](v7, a1, a3);
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 itemType] || (objc_msgSend(v9, sel_isAssociatedMessage) & 1) != 0)
        {
        }

        else
        {
          sub_22B7DC358();
          sub_22B7DC398();
          sub_22B7DC3A8();
          sub_22B7DC368();
          v6 = v72;
        }

        ++v7;
        if (v10 == v6)
        {
          v11 = aBlock[0];
          a4 = v69;
          a5 = v71;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v12 = a5;
      v13 = a4;
      v14 = sub_22B7DC1C8();
      a4 = v13;
      a5 = v12;
      v6 = v14;
    }

    while (v14);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_19:
  v68 = sub_22B768280(a4, a5);
  v70 = v15;
  v16 = sub_22B7666B8(v68, v15);
  if (v17)
  {
    if (v16 == 10911970 && v17 == 0xA300000000000000)
    {
      LOBYTE(v24) = 1;
    }

    else
    {
      v24 = v17;
      v25 = sub_22B7DC518();
      v17 = v24;
      LOBYTE(v24) = v25;
    }

    v17, v17, v18, v19, v20, v21, v22, v23, v64, v66;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    goto LABEL_44;
  }

  for (i = *(v11 + 16); i; i = sub_22B7DC1C8())
  {
    v27 = 0;
    v67 = v24 & 1;
    v66 = v75;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x231895C80](v27, v11);
      }

      else
      {
        if (v27 >= *(v11 + 16))
        {
          goto LABEL_43;
        }

        v36 = *(v11 + 8 * v27 + 32);
      }

      v24 = v36;
      v37 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v38 = [(IMDScheduledMessageCoordinator *)v36 attributedBodyText];
      if (v38)
      {
        v28 = v38;
        v73 = v24;
        v39 = i;
        v40 = swift_allocObject();
        *(v40 + 24) = 0;
        *(v40 + 16) = 0;
        *(v40 + 32) = 1;
        v41 = swift_allocObject();
        *(v41 + 16) = 1;
        *(v41 + 24) = v68;
        *(v41 + 32) = v70;
        *(v41 + 40) = v67;
        *(v41 + 48) = v40;
        v75[2] = sub_22B769900;
        v75[3] = v41;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v75[0] = sub_22B768524;
        v75[1] = &unk_283F1E4C8;
        v42 = _Block_copy(aBlock);

        [v28 __im_visitMessageParts_];
        _Block_release(v42);
        swift_beginAccess();
        v43 = *(v40 + 16);
        v24 = *(v40 + 24);
        v44 = *(v40 + 32);

        if ((v44 & 1) == 0)
        {
          v70, v45, v46, v47, v48, v49, v50, v51, v64, v75;

          v53 = [v28 attributedSubstringFromRange_];
          v54 = [v73 guid];
          v52 = sub_22B7DB6A8();
          i = v55;

          goto LABEL_47;
        }

        i = v39;
      }

      else
      {
        v28 = v24;
      }

      ++v27;
      if (v37 == i)
      {
        v70, v29, v30, v31, v32, v33, v34, v35, v64, v75;

        v52 = 0;
        i = 0;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v70, v17, v18, v19, v20, v21, v22, v23, v64, v66;

  v52 = 0;
LABEL_46:
  v43 = 0;
  v24 = 0;
  v53 = 0;
LABEL_47:
  swift_beginAccess();
  v56 = v65[2];
  v57 = v65[3];
  v58 = v65[4];
  v59 = v65[5];
  v60 = v65[6];
  v65[2] = v52;
  v65[3] = i;
  v65[4] = v43;
  v65[5] = v24;
  v65[6] = v53;
  sub_22B7698BC(v56, v57, v58, v59, v60, v61, v62, v63);
}

uint64_t sub_22B768280(void *a1, IMDScheduledMessageCoordinator *a2)
{
  v21 = a1;
  v22 = a2;

  v2 = sub_22B7DB7D8();
  if (v3)
  {
    v10 = v2;
    v11 = v3;
    do
    {
      if ((sub_22B7DB5C8() & 1) == 0)
      {
        MEMORY[0x231895130](v10, v11);
      }

      v11, v13, v14, v15, v16, v17, v18, v19, v21, v22;
      v10 = sub_22B7DB7D8();
      v11 = v12;
    }

    while (v12);
  }

  v22, 0, v4, v5, v6, v7, v8, v9, v21, v22;
  return 0;
}

void sub_22B768358(void *a1, uint64_t a2, _BYTE *a3, char a4, void *a5, IMDScheduledMessageCoordinator *a6, char a7, uint64_t a8)
{
  v64 = a3;
  v14 = [a1 messagePartBody];
  v15 = [v14 string];

  v16 = sub_22B7DB6A8();
  v18 = v17;

  if (a4)
  {
    v16 = sub_22B768280(v16, v18);
    v27 = v26;
    v18, v26, v28, v29, v30, v31, v32, v33, v62, v64;
    v18 = v27;
  }

  if (a7 & 1) != 0 && (, sub_22B769914(1, a5, a6), v35 = v34, a6, v36, v37, v34, v38, v39, v40, v41, v62, v64, sub_22B74BBFC(), sub_22B7699E0(), v42 = sub_22B7DB5D8(), v35, v43, v44, v45, v46, v47, v48, v49, v63, v65, (v42) || (v16 == a5 ? (v50 = v18 == a6) : (v50 = 0), v50))
  {
    v18, v19, v20, v21, v22, v23, v24, v25, v62, v64;
    goto LABEL_12;
  }

  v51 = sub_22B7DC518();
  v18, v52, v53, v54, v55, v56, v57, v58, v62, v64;
  if (v51)
  {
LABEL_12:
    v59 = [a1 messagePartRange];
    v61 = v60;
    swift_beginAccess();
    *(a8 + 16) = v59;
    *(a8 + 24) = v61;
    *(a8 + 32) = 0;
    *v66 = 1;
  }
}

void sub_22B768524(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22B7685A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22B725570();
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
        return sub_22B769A34(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      }

      return sub_22B76961C(v10, a2, a1, v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22B7A3D04();
      goto LABEL_7;
    }

    sub_22B7A1B64(v13, a3 & 1);
    v20 = sub_22B725570();
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_22B76961C(v10, a2, a1, v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    }
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_22B7DC578();
  __break(1u);
  return result;
}

uint64_t sub_22B768704(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22B725570();
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer(0);
        return sub_22B769A34(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      }

      return sub_22B76961C(v10, a2, a1, v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22B7A3D40();
      goto LABEL_7;
    }

    sub_22B7A1BA0(v13, a3 & 1);
    v20 = sub_22B725570();
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_22B76961C(v10, a2, a1, v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    }
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_22B7DC578();
  __break(1u);
  return result;
}

unint64_t sub_22B76888C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B7235C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_22B7A3FBC();
    result = v19;
    goto LABEL_8;
  }

  sub_22B7A1F14(v16, a4 & 1);
  result = sub_22B7235C8(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22B7DC578();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

void sub_22B7689F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B723648(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B7A21AC(v16, a4 & 1);
      v11 = sub_22B723648(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22B7DC578();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22B7A411C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_22B768B6C(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v11 = v10;
  v15 = *v10;
  v16 = sub_22B7237AC(a3);
  v24 = *(v15 + 16);
  v25 = (v17 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    __break(1u);
    goto LABEL_17;
  }

  v28 = v17;
  v29 = *(v15 + 24);
  if (v29 < v27 || (a4 & 1) == 0)
  {
    if (v29 < v27 || (a4 & 1) != 0)
    {
      sub_22B7A2454(v27, a4 & 1);
      v16 = sub_22B7237AC(a3);
      if ((v28 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
        sub_22B7DC578();
        __break(1u);
        return;
      }
    }

    else
    {
      v30 = v16;
      sub_22B7A428C();
      v16 = v30;
    }
  }

  v31 = *v11;
  if (v28)
  {
    v32 = (v31[7] + 16 * v16);
    v33 = v32[1];
    *v32 = a1;
    v32[1] = a2;

    v33, v17, v18, v19, v20, v21, v22, v23, a9, a10;
    return;
  }

  v31[(v16 >> 6) + 8] |= 1 << v16;
  *(v31[6] + 8 * v16) = a3;
  v34 = (v31[7] + 16 * v16);
  *v34 = a1;
  v34[1] = a2;
  v35 = v31[2];
  v26 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31[2] = v36;

  v37 = a3;
}

unint64_t sub_22B768CF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22B725570();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_22B7A43FC();
    result = v17;
    goto LABEL_8;
  }

  sub_22B7A26D8(v14, a3 & 1);
  result = sub_22B725570();
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for IMPersistentTaskFlag(0);
  sub_22B7DC578();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

void sub_22B768E64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v13 = v10;
  v18 = *v10;
  v19 = sub_22B723648(a2, a3);
  v27 = *(v18 + 16);
  v28 = (v20 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    __break(1u);
    goto LABEL_17;
  }

  v31 = v20;
  v32 = *(v18 + 24);
  if (v32 < v30 || (a4 & 1) == 0)
  {
    if (v32 < v30 || (a4 & 1) != 0)
    {
      a6(v30, a4 & 1);
      v19 = sub_22B723648(a2, a3);
      if ((v31 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22B7DC578();
        __break(1u);
        return;
      }
    }

    else
    {
      v33 = v19;
      a5();
      v19 = v33;
    }
  }

  v34 = *v13;
  if (v31)
  {
    v35 = v34[7];
    v36 = *(v35 + 8 * v19);
    *(v35 + 8 * v19) = a1;

    v36, v20, v21, v22, v23, v24, v25, v26, a9, a10;
    return;
  }

  v34[(v19 >> 6) + 8] |= 1 << v19;
  v37 = (v34[6] + 16 * v19);
  *v37 = a2;
  v37[1] = a3;
  *(v34[7] + 8 * v19) = a1;
  v38 = v34[2];
  v29 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34[2] = v39;
}

_OWORD *sub_22B769028(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22B4D7EC0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22B7A49A0();
      goto LABEL_7;
    }

    sub_22B7A316C(v13, a3 & 1);
    v19 = sub_22B4D7EC0(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22B4DA0DC(a2, v21);
      return sub_22B7696C4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_22B7DC578();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_22B4CFB78(v17);

  return sub_22B4D7F04(a1, v17);
}

void sub_22B769174(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B723648(a2, a3);
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
      sub_22B7A4B44();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B7A3424(v16, a4 & 1);
    v11 = sub_22B723648(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22B7DC578();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_22B4CFB78(v22);

    sub_22B4D7F04(a1, v22);
  }

  else
  {
    sub_22B769740(v11, a2, a3, a1, v21);
  }
}

void sub_22B7692C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22B723648(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
      sub_22B769A34(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22B7A4CE8();
    goto LABEL_7;
  }

  sub_22B7A36DC(v15, a4 & 1);
  v21 = sub_22B723648(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_22B7DC578();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22B7697AC(v12, a2, a3, a1, v18);
}

void sub_22B76945C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_22B723648(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_22B723648(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_22B7DC578();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    goto _objc_release_x1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_22B76961C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_22B769A9C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_22B7696C4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_22B4D7F04(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_22B769740(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22B4D7F04(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22B7697AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  result = sub_22B769A9C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_22B769878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    v5 = a5;
  }
}

void sub_22B7698BC(uint64_t a1, IMDScheduledMessageCoordinator *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8, v8, a5;
  }
}

uint64_t sub_22B769914(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_22B7DB768();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22B7DB798();

  return sub_22B7DB898();
}

unint64_t sub_22B7699E0()
{
  result = qword_28141F2F0;
  if (!qword_28141F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2F0);
  }

  return result;
}

uint64_t sub_22B769A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B769A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B769B0C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422698);
  sub_22B4CFA74(v0, qword_281422698);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769B78()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422668);
  sub_22B4CFA74(v0, qword_281422668);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769BE4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814226E0);
  sub_22B4CFA74(v0, qword_2814226E0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769C50()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814226F8);
  sub_22B4CFA74(v0, qword_2814226F8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769CDC()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D4888);
  sub_22B4CFA74(v0, qword_27D8D4888);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769D48()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422638);
  sub_22B4CFA74(v0, qword_281422638);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769DB4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D48A0);
  sub_22B4CFA74(v0, qword_27D8D48A0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769E20()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422650);
  sub_22B4CFA74(v0, qword_281422650);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769EA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22B7DB2B8();
  sub_22B6F24F4(v3, a2);
  sub_22B4CFA74(v3, a2);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769F0C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422680);
  sub_22B4CFA74(v0, qword_281422680);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769F78()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D48B8);
  sub_22B4CFA74(v0, qword_27D8D48B8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769FE4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F490);
  v1 = sub_22B4CFA74(v0, qword_28141F490);
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v2 = sub_22B4CFA74(v0, qword_281422680);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_22B76A0AC()
{
  v1 = sub_22B7DB348();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B7DB398();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 16);
  aBlock[4] = sub_22B76CBB0;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1E630;
  v8 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v12 = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_22B76A34C()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_22B7DB678();
  v3 = *(v0 + 16);
  v5[4] = sub_22B76AA80;
  v6 = v0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22B74C9E0;
  v5[3] = &unk_283F1E4F0;
  v4 = _Block_copy(v5);

  [v1 registerForMessagesDeletionAwareTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v4];
  _Block_release(v4);
}

uint64_t sub_22B76A46C(void *a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  if (qword_28141F488 != -1)
  {
    swift_once();
  }

  v7 = sub_22B7DB2B8();
  sub_22B4CFA74(v7, qword_28141F490);
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B4CC000, v8, v9, "DAS invoked system workload reporting activity", v10, 2u);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  v11 = sub_22B7DBA58();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;

  v13 = a1;
  sub_22B77E3D4(0, 0, v6, &unk_22B7FB850, v12);
}

uint64_t sub_22B76A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B6F0D94;

  return sub_22B76BDFC(a5);
}

void sub_22B76A6D0(void *a1)
{
  [a1 setTaskCompleted];
  if (qword_28141F488 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_28141F490);
  oslog = sub_22B7DB298();
  v2 = sub_22B7DBCB8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, oslog, v2, "Finished system workload reporting task", v3, 2u);
    MEMORY[0x231898D60](v3, -1, -1);
  }
}

uint64_t sub_22B76A7C4(uint64_t a1, uint64_t a2)
{
  v3 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void sub_22B76A820(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (qword_28141F488 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F490);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Reporting message count of %lld to DAS", v5, 0xCu);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = objc_opt_self();
  if (a1 < 0)
  {
    __break(1u);
  }

  v12[0] = 0;
  if ([v6 reportSystemWorkload:a1 ofCategory:20 error:v12])
  {
    v7 = v12[0];
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBC88();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = a1;
      _os_log_impl(&dword_22B4CC000, v8, v9, "Finished reporting message count of %lld to DAS", v10, 0xCu);
      MEMORY[0x231898D60](v10, -1, -1);
    }
  }

  else
  {
    v11 = v12[0];
    sub_22B7DA6F8();

    swift_willThrow();
  }
}

uint64_t sub_22B76AA24()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B76AA88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B76A63C(a1, v4, v5, v7, v6);
}

uint64_t sub_22B76AB48()
{
  v9 = sub_22B7DBD48();
  v0 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22B7DB398();
  MEMORY[0x28223BE20](v4 - 8);
  v8 = sub_22B74D6EC();
  sub_22B7DB378();
  v11 = MEMORY[0x277D84F90];
  sub_22B76CBD8(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v9);
  v5 = sub_22B7DBD88();
  v6 = v10;
  *(v10 + 16) = v5;
  return v6;
}

uint64_t sub_22B76ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v5 = sub_22B7DB348();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DB398();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_22B74D6EC();
  v16 = sub_22B7DBD98();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  aBlock[4] = sub_22B76CB14;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1E608;
  v21 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v28 = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v10, v7, v21);
  _Block_release(v21);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
}

uint64_t sub_22B76B160(uint64_t a1, void (*a2)(void))
{
  a2();
  sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  return sub_22B7DB9E8();
}

id sub_22B76B1F0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v1 = sub_22B7DB678();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setRequiresProtectionClass_];
  [v3 setExpectedDuration_];
  v4 = sub_22B7DB8F8();
  [v3 setInvolvedProcesses_];

  [v3 setRequiresBuddyComplete_];
  [v3 setInterval_];
  [v3 interval];
  [v3 setMinDurationBetweenInstances_];
  [v3 setResourceIntensive_];
  [v3 setRequiresUserInactivity_];

  return v3;
}

void sub_22B76B354()
{
  v27[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 sharedScheduler];
  v2 = sub_22B7DB678();
  v3 = [v1 taskRequestForIdentifier_];

  if (v3)
  {

    if (qword_28141F488 != -1)
    {
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_28141F490);
    oslog = sub_22B7DB298();
    v5 = sub_22B7DBCB8();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, oslog, v5, "Task request for workload reporting is already submitted", v6, 2u);
      MEMORY[0x231898D60](v6, -1, -1);
    }
  }

  else
  {
    v7 = [v0 sharedScheduler];
    v8 = sub_22B76B1F0();
    v27[0] = 0;
    v9 = [v7 submitTaskRequest:v8 error:v27];

    if (v9)
    {
      v10 = qword_28141F488;
      v11 = v27[0];
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_22B7DB2B8();
      sub_22B4CFA74(v12, qword_28141F490);
      v13 = sub_22B7DB298();
      v14 = sub_22B7DBCB8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_22B4CC000, v13, v14, "Submitted task request for workload reporting", v15, 2u);
        MEMORY[0x231898D60](v15, -1, -1);
      }
    }

    else
    {
      v16 = v27[0];
      v17 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F488 != -1)
      {
        swift_once();
      }

      v18 = sub_22B7DB2B8();
      sub_22B4CFA74(v18, qword_28141F490);
      v19 = v17;
      v20 = sub_22B7DB298();
      v21 = sub_22B7DBCA8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v17;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_22B4CC000, v20, v21, "Failed to submit task request for workload reporting: %@", v22, 0xCu);
        sub_22B708A24(v23);
        MEMORY[0x231898D60](v23, -1, -1);
        MEMORY[0x231898D60](v22, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_22B76B770()
{
  v1 = sub_22B7DB368();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B76B82C, 0, 0);
}

uint64_t sub_22B76B82C()
{
  v1 = [objc_opt_self() database];
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22B76B970;
  v2 = swift_continuation_init();
  v0[17] = sub_22B6F0AD4(&qword_27D8CECC0, &unk_22B7FB870);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B76A7C4;
  v0[13] = &unk_283F1E590;
  v0[14] = v2;
  [v1 fetchCountOfRecordType:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B76B970()
{

  return MEMORY[0x2822009F8](sub_22B76BA50, 0, 0);
}

uint64_t sub_22B76BA50()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  v0[23] = v5;
  *(v5 + 16) = v4;
  (*(v3 + 104))(v1, *MEMORY[0x277D851B8], v2);
  v6 = swift_task_alloc();
  v0[24] = v6;
  v6[2] = v1;
  v6[3] = sub_22B76CAEC;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_22B76BBB0;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B76CB08, v6, v8);
}

uint64_t sub_22B76BBB0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_22B76BD60;
  }

  else
  {
    v5 = v2[20];
    v4 = v2[21];
    v6 = v2[19];

    (*(v5 + 8))(v4, v6);
    v3 = sub_22B76BCFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B76BCFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B76BD60()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B76BDFC(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_22B7DB368();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_22B76BF28;

  return sub_22B76B770();
}

uint64_t sub_22B76BF28()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22B76C440;
  }

  else
  {
    v2 = sub_22B76C068;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B76C068()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = v4;
  v7 = swift_task_alloc();
  v0[10] = v7;
  v7[2] = v1;
  v7[3] = sub_22B76CACC;
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_22B76C1F0;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DC18, v7, v9);
}

uint64_t sub_22B76C1F0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22B76C3B4, 0, 0);
}

uint64_t sub_22B76C3B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B76C440()
{
  if (qword_28141F488 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F490);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBCA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Failed to report system workload: %@", v7, 0xCu);
    sub_22B708A24(v8);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v11 = v0[3];

  v0[2] = 0;
  v12 = [v11 setTaskExpiredWithRetryAfter:v0 + 2 error:1800.0];
  v13 = v0[2];
  if (v12)
  {
    v14 = v0[8];
    v15 = v13;

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v13;
    v19 = sub_22B7DA6F8();
    v0[12] = v19;

    swift_willThrow();
    v20 = v19;
    v21 = sub_22B7DB298();
    v22 = sub_22B7DBCA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v19;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_22B4CC000, v21, v22, "Failed to submit retry after for workload reporting: %@", v23, 0xCu);
      sub_22B708A24(v24);
      MEMORY[0x231898D60](v24, -1, -1);
      MEMORY[0x231898D60](v23, -1, -1);
    }

    v28 = v0[5];
    v27 = v0[6];
    v30 = v0[3];
    v29 = v0[4];

    v31 = swift_allocObject();
    v0[13] = v31;
    *(v31 + 16) = v30;
    (*(v28 + 104))(v27, *MEMORY[0x277D851B8], v29);
    v32 = v30;
    v33 = swift_task_alloc();
    v0[14] = v33;
    v33[2] = v27;
    v33[3] = sub_22B72DC04;
    v33[4] = v31;
    v34 = swift_task_alloc();
    v0[15] = v34;
    *v34 = v0;
    v34[1] = sub_22B76C868;
    v35 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v34, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DBF8, v33, v35);
  }
}

uint64_t sub_22B76C868()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22B76CA2C, 0, 0);
}

uint64_t sub_22B76CA2C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B76CB14()
{
  v1 = *(sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22B76B160(v0 + v2, v3);
}

void sub_22B76CBB0()
{
  sub_22B76A34C();

  sub_22B76B354();
}

uint64_t sub_22B76CBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B76CC30()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CECC8);
  sub_22B4CFA74(v0, qword_27D8CECC8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B76CC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B76CCC0, 0, 0);
}

uint64_t sub_22B76CCC0()
{
  v32 = v0;
  if (qword_27D8CCC80 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_27D8CECC8);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  v1, v5, v6, v7, v8, v9, v10, v11, v28, v29;
  if (os_log_type_enabled(v3, v4))
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B8106B0, &v31);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_22B4CFAAC(v13, v12, &v31);
    _os_log_impl(&dword_22B4CC000, v3, v4, "%s Generating handles to contact map for chat with chatGUID: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v15, -1, -1);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  v16 = [objc_allocWithZone(IMDChatRegistry) init];
  v17 = sub_22B7DB678();
  v18 = [v16 existingChatWithGUID_];
  v0[6] = v18;

  if (v18)
  {
    v19 = v18;
    v20 = swift_task_alloc();
    v0[7] = v20;
    *v20 = v0;
    v20[1] = sub_22B76CFD0;
    v21 = v0[2];

    return sub_22B76D740(v21, v19);
  }

  else
  {
    v24 = v0[3];
    v23 = v0[4];
    v25 = v0[2];
    sub_22B76D130();
    v26 = swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v23;
    *(v27 + 16) = 2;
    *v25 = v26;
    sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
    swift_storeEnumTagMultiPayload();
    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_22B76CFD0()
{

  return MEMORY[0x2822009F8](sub_22B76D0CC, 0, 0);
}

uint64_t sub_22B76D0CC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_22B76D130()
{
  result = qword_27D8CECE0;
  if (!qword_27D8CECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CECE0);
  }

  return result;
}

uint64_t sub_22B76D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22B76D1AC, 0, 0);
}

id sub_22B76D1AC()
{
  v51 = v0;
  if (qword_27D8CCC80 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_22B7DB2B8();
  sub_22B4CFA74(v3, qword_27D8CECC8);

  v4 = sub_22B7DB298();
  v5 = sub_22B7DBCB8();
  v2, v6, v7, v8, v9, v10, v11, v12, v49, v50;
  v1, v13, v14, v15, v16, v17, v18, v19, v49, v50;
  if (os_log_type_enabled(v4, v5))
  {
    v21 = v0[5];
    v20 = v0[6];
    v23 = v0[3];
    v22 = v0[4];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v49 = v25;
    *v24 = 136315650;
    *(v24 + 4) = sub_22B4CFAAC(0xD000000000000026, 0x800000022B8106E0, &v49);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_22B4CFAAC(v23, v22, &v49);
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_22B4CFAAC(v21, v20, &v49);
    _os_log_impl(&dword_22B4CC000, v4, v5, "%s Generating handles to contact map for chat with accountUniqueID: %s and chatIdentifier: %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v25, -1, -1);
    MEMORY[0x231898D60](v24, -1, -1);
  }

  result = [objc_opt_self() sharedAccountController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = sub_22B7DB678();
  v29 = [v27 accountForAccountID_];
  v0[8] = v29;

  if (v29)
  {
    v30 = objc_allocWithZone(IMDChatRegistry);
    v31 = v29;
    v32 = [v30 init];
    v33 = sub_22B7DB678();
    v34 = [v32 existingChatWithIdentifier:v33 account:v31];
    v0[9] = v34;

    if (v34)
    {
      v35 = v34;
      v36 = swift_task_alloc();
      v0[10] = v36;
      *v36 = v0;
      v36[1] = sub_22B76D5D8;
      v37 = v0[2];

      return sub_22B76D740(v37, v35);
    }

    v44 = v0[5];
    v43 = v0[6];
    v45 = v0[2];

    sub_22B76D130();
    v46 = swift_allocError();
    *v47 = v44;
    *(v47 + 8) = v43;
    *(v47 + 16) = 1;

    *v45 = v46;
    sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v39 = v0[3];
    v38 = v0[4];
    v40 = v0[2];
    sub_22B76D130();
    v41 = swift_allocError();
    *v42 = v39;
    *(v42 + 8) = v38;
    *(v42 + 16) = 0;
    *v40 = v41;
    sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
    swift_storeEnumTagMultiPayload();
  }

  v48 = v0[1];

  return v48();
}

uint64_t sub_22B76D5D8()
{

  return MEMORY[0x2822009F8](sub_22B76D6D4, 0, 0);
}

uint64_t sub_22B76D6D4()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B76D740(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_22B7DB038();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B76D800, 0, 0);
}

uint64_t sub_22B76D800()
{
  v161 = v0;
  v1 = [*(v0 + 160) guid];
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = v1;
    v4 = sub_22B7DB6A8();
    v6 = v5;

    v158 = v4;
    *(v0 + 192) = v4;
    *(v0 + 200) = v6;
    v7 = [v2 participants];
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v8 = v7;
    sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
    v9 = sub_22B7DB918();

    if (v9 >> 62)
    {
LABEL_24:
      v17 = sub_22B7DC1C8();
      if (v17)
      {
LABEL_5:
        v18 = 0;
        v159 = MEMORY[0x277D84F90];
        do
        {
          v19 = v18;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x231895C80](v19, v9);
            }

            else
            {
              if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v20 = *(v9 + 8 * v19 + 32);
            }

            v21 = v20;
            v18 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v22 = [v20 ID];
            if (v22)
            {
              break;
            }

            ++v19;
            if (v18 == v17)
            {
              goto LABEL_26;
            }
          }

          v157 = v6;
          v23 = v22;
          v24 = sub_22B7DB6A8();
          v149 = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v159 = sub_22B71BD80(0, *v159->messageStore + 1, 1, v159, v13, v14, v15, v16);
          }

          v27 = *v159->messageStore;
          v26 = *v159->chatRegistry;
          if (v27 >= v26 >> 1)
          {
            v159 = sub_22B71BD80((v26 > 1), v27 + 1, 1, v159, v13, v14, v15, v16);
          }

          *v159->messageStore = v27 + 1;
          v28 = v159 + 16 * v27;
          v6 = v157;
          *(v28 + 4) = v24;
          *(v28 + 5) = v149;
        }

        while (v18 != v17);
        goto LABEL_26;
      }
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_5;
      }
    }

    v159 = MEMORY[0x277D84F90];
LABEL_26:
    v9, v10, v11, v12, v13, v14, v15, v16, v141, v149;
    v32 = sub_22B77A2DC(v159);
    v159, v33, v34, v35, v36, v37, v38, v39, v142, v150;
    if (qword_27D8CCC80 != -1)
    {
      swift_once();
    }

    v40 = sub_22B7DB2B8();
    *(v0 + 208) = sub_22B4CFA74(v40, qword_27D8CECC8);

    v41 = sub_22B7DB298();
    v42 = sub_22B7DBCB8();
    v32, v43, v44, v45, v46, v47, v48, v49, v143, v151;
    v6, v50, v51, v52, v53, v54, v55, v56, v144, v152;
    if (os_log_type_enabled(v41, v42))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v160 = v58;
      *v57 = 136315650;
      *(v57 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B8106B0, &v160);
      *(v57 + 12) = 2080;
      v59 = sub_22B7DBB08();
      v60 = v6;
      v62 = v61;
      v63 = sub_22B4CFAAC(v59, v61, &v160);
      v64 = v62;
      v6 = v60;
      v64, v65, v66, v67, v68, v69, v70, v71, v145, v153;
      *(v57 + 14) = v63;
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_22B4CFAAC(v158, v60, &v160);
      _os_log_impl(&dword_22B4CC000, v41, v42, "%s Fetching contacts for %s in chat with GUID: %s", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v58, -1, -1);
      MEMORY[0x231898D60](v57, -1, -1);
    }

    v72 = [objc_opt_self() sharedInstance];
    v73 = [v72 aliasToCNIDMap];

    v74 = sub_22B7DB588();
    sub_22B7B1314(v74);
    v76 = v75;
    v74, v77, v78, v79, v80, v81, v82, v83, v145, v153;
    if (!v76)
    {
      goto LABEL_34;
    }

    *(swift_task_alloc() + 16) = v32;
    sub_22B76EDB0(v76, sub_22B76EC28);
    *(v0 + 216) = v91;
    v32, v92, v93, v94, v95, v96, v97, v98, v146, v154;
    v76, v99, v100, v101, v102, v103, v104, v105, v147, v155;

    sub_22B772F9C(v106);
    v115 = v107;
    v32 = *(v107 + 16);
    if (v32)
    {
      v116 = sub_22B759CB4(*(v107 + 16), 0);
      v117 = sub_22B75A414(&v160, v116 + 4, v32, v115);
      sub_22B705E3C(v160);
      if (v117 != v32)
      {
        __break(1u);
LABEL_34:
        v29 = *(v0 + 152);
        v6, v84, v85, v86, v87, v88, v89, v90, v146, v154;
        v32, v118, v119, v120, v121, v122, v123, v124, v148, v156;
        sub_22B76D130();
        v30 = swift_allocError();
        *v31 = xmmword_22B7F9630;
        goto LABEL_35;
      }
    }

    else
    {
      v107, v108, v109, v110, v111, v112, v113, v114, v146, v154;
      v116 = MEMORY[0x277D84F90];
    }

    v127 = sub_22B7DB298();
    v128 = sub_22B7DBCB8();
    v6, v129, v130, v131, v132, v133, v134, v135, v146, v154;
    if (os_log_type_enabled(v127, v128))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v160 = v137;
      *v136 = 136315650;
      *(v136 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B8106B0, &v160);
      *(v136 + 12) = 2048;
      *(v136 + 14) = v116[2];

      *(v136 + 22) = 2080;
      *(v136 + 24) = sub_22B4CFAAC(v158, v6, &v160);
      _os_log_impl(&dword_22B4CC000, v127, v128, "%s Fetching contact(s) for %ld contactID(s) for chat with GUID: %s", v136, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v137, -1, -1);
      MEMORY[0x231898D60](v136, -1, -1);
    }

    else
    {
    }

    v138 = [objc_opt_self() synchronousDatabase];
    *(v0 + 224) = v138;
    v139 = sub_22B7DB8F8();
    *(v0 + 232) = v139;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_22B76E064;
    v140 = swift_continuation_init();
    *(v0 + 136) = sub_22B6F0AD4(&qword_27D8CECF0, &qword_22B7FBA08);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_22B76E378;
    *(v0 + 104) = &unk_283F1E6E8;
    *(v0 + 112) = v140;
    [v138 fetchContactsForIdentifiers:v139 completionHandler:v0 + 80];
    v7 = (v0 + 16);

    return MEMORY[0x282200938](v7);
  }

  v29 = *(v0 + 152);
  sub_22B76D130();
  v30 = swift_allocError();
  *v31 = 0;
  *(v31 + 8) = 0;
LABEL_35:
  *(v31 + 16) = 3;
  *v29 = v30;
  sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
  swift_storeEnumTagMultiPayload();

  v125 = *(v0 + 8);

  return v125();
}

uint64_t sub_22B76E064()
{

  return MEMORY[0x2822009F8](sub_22B76E144, 0, 0);
}

uint64_t sub_22B76E144()
{
  v55 = v0;
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[18];
  swift_unknownObjectRelease();

  v4 = sub_22B7DB298();
  v5 = sub_22B7DBCB8();
  v2, v6, v7, v8, v9, v10, v11, v12, v53, v54;
  v13 = os_log_type_enabled(v4, v5);
  v21 = v0[25];
  if (v13)
  {
    v22 = v0[24];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v53 = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B8106B0, &v53);
    *(v23 + 12) = 2048;
    *(v23 + 14) = *v3->messageStore;
    v3, v25, v26, v27, v28, v29, v30, v31, v53, v54;
    *(v23 + 22) = 2080;
    v32 = sub_22B4CFAAC(v22, v21, &v53);
    v21, v33, v34, v35, v36, v37, v38, v39, v53, v54;
    *(v23 + 24) = v32;
    _os_log_impl(&dword_22B4CC000, v4, v5, "%s Fetched %ld contact(s) for chat with GUID: %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v24, -1, -1);
    MEMORY[0x231898D60](v23, -1, -1);
  }

  else
  {
    v3, v14, v15, v16, v17, v18, v19, v20, v53, v54;

    v21, v40, v41, v42, v43, v44, v45, v46, v53, v54;
  }

  v48 = v0[22];
  v47 = v0[23];
  v49 = v0[21];
  v50 = v0[19];
  sub_22B7DB028();
  (*(v48 + 32))(v50, v47, v49);
  sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
  swift_storeEnumTagMultiPayload();

  v51 = v0[1];

  return v51();
}

uint64_t sub_22B76E378(uint64_t a1, uint64_t a2)
{
  v2 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  sub_22B4D01A0(0, &qword_27D8CECF8, 0x277CBDA58);
  **(*(v2 + 64) + 40) = sub_22B7DB588();

  return MEMORY[0x282200948](v2);
}

uint64_t sub_22B76E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B6F12E8;

  return sub_22B76CC9C(a1, a2, a3);
}

uint64_t sub_22B76E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B6F0D94;

  return sub_22B76D184(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ChatContactsProvider.generateHandlesToContactMap(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 80) + **(*v3 + 80));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22B6F12E8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ChatContactsProvider.generateHandlesToContactMap(for:chat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 88) + **(*v5 + 88));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22B6F0D94;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_22B76E870(uint64_t a1)
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

uint64_t sub_22B76E88C(uint64_t a1, unsigned int a2)
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

uint64_t sub_22B76E8D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B76E918(uint64_t result, unsigned int a2)
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

void *sub_22B76E940(void *result, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, IMDScheduledMessageCoordinator *, uint64_t, IMDScheduledMessageCoordinator *))
{
  if ((a2 & 0x8000000000000000) != 0)
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

    sub_22B76EC30(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22B76E9D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22B6F0AD4(&qword_27D8CED00, &unk_22B7FBA10);
  result = sub_22B7DC488();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_22B7DC668();

    sub_22B7DB758();
    result = sub_22B7DC6B8();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

void sub_22B76EC30(unint64_t *result, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, IMDScheduledMessageCoordinator *, uint64_t, IMDScheduledMessageCoordinator *))
{
  v37 = a2;
  v40 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];

    LOBYTE(v19) = a4(v15, v16, v19, v18);
    v16, v20, v21, v22, v23, v24, v25, v26, v35, v37;
    v18, v27, v28, v29, v30, v31, v32, v33, v36, v38;
    if (v19)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22B76E9D0(result, v37, v40, a3);
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

void sub_22B76EDB0(uint64_t a1, uint64_t (*a2)(uint64_t, IMDScheduledMessageCoordinator *, uint64_t, IMDScheduledMessageCoordinator *))
{
  v4 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = (((1 << v5) + 63) >> 6);
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_22B76E940(v9, v6, v4, a2);
      MEMORY[0x231898D60](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_22B76EC30(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_22B76EF30()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CED08);
  sub_22B4CFA74(v0, qword_27D8CED08);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

void sub_22B76F074(id a1)
{
  v200[2] = *MEMORY[0x277D85DE8];
  sub_22B771954();
  if ((v3 & 1) == 0)
  {
    return;
  }

  v4 = [a1 guid];
  v200[0] = 0;
  IMComponentsFromChatGUID();

  v5 = 0;
  v6 = [a1 participants];
  if (!v6)
  {
    __break(1u);
    goto LABEL_78;
  }

  v7 = v6;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v8 = sub_22B7DB918();

  if (v8 >> 62)
  {
    if (sub_22B7DC1C8())
    {
      goto LABEL_5;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x231895C80](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_51:
        swift_once();
LABEL_13:
        v27 = sub_22B7DB2B8();
        sub_22B4CFA74(v27, qword_27D8CED08);
        v28 = a1;
        v29 = sub_22B7DB298();
        v30 = sub_22B7DBC98();
        if (!os_log_type_enabled(v29, v30))
        {

LABEL_56:
          return;
        }

        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v200[0] = v33;
        *v31 = 138412546;
        sub_22B4D01A0(0, &qword_27D8CED30, 0x277CCACA8);
        v34 = sub_22B7DBFE8();
        *(v31 + 4) = v34;
        *v32 = v34;
        *(v31 + 12) = 2080;
        v35 = 0;
        v36 = [v28 participants];

        if (v36)
        {
          v37 = sub_22B7DB918();

          if (v37 >> 62)
          {
            if (sub_22B7DC1C8())
            {
LABEL_17:
              if ((v37 & 0xC000000000000001) != 0)
              {
                v45 = MEMORY[0x231895C80](0, v37);
                goto LABEL_20;
              }

              if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v45 = *(v37 + 32);
LABEL_20:
                v53 = v45;
                v37, v46, v47, v48, v49, v50, v51, v52, v183, v190;
                v54 = [v53 ID];

                if (v54)
                {
                  v55 = sub_22B7DB6A8();
                  v57 = v56;

LABEL_55:
                  v125 = sub_22B4CFAAC(v55, v57, v200);
                  v57, v126, v127, v128, v129, v130, v131, v132, v184, v191;
                  *(v31 + 14) = v125;
                  _os_log_impl(&dword_22B4CC000, v29, v30, "chat identifier from guid %@ does not match the participant's handle ID %s. Not repairing chat identifier.", v31, 0x16u);
                  sub_22B4D0D64(v32, &unk_27D8CEC60, &qword_22B7F9E20);
                  MEMORY[0x231898D60](v32, -1, -1);
                  sub_22B4CFB78(v33);
                  MEMORY[0x231898D60](v33, -1, -1);
                  MEMORY[0x231898D60](v31, -1, -1);

                  goto LABEL_56;
                }

                v55 = 0x3E6C696E3CLL;
LABEL_54:
                v57 = 0xE500000000000000;
                goto LABEL_55;
              }

              __break(1u);
              swift_once();
              v197 = v28;
              v69 = sub_22B7DB2B8();
              sub_22B4CFA74(v69, qword_27D8CED08);
              v70 = v35;

              v71 = sub_22B7DB298();
              v72 = sub_22B7DBC98();
              v30, v73, v74, v75, v76, v77, v78, v79, v183, v190;
              if (!os_log_type_enabled(v71, v72))
              {

                v93 = v199;
                goto LABEL_64;
              }

              v193 = v1;
              v80 = 0x3E6C696E3CLL;
              v81 = swift_slowAlloc();
              v186 = swift_slowAlloc();
              v200[0] = v186;
              *v81 = 136315650;
              v82 = [v70 (v29 + 376)];
              if (v82)
              {
                v83 = v82;
                v80 = sub_22B7DB6A8();
                v85 = v84;
              }

              else
              {
                v85 = 0xE500000000000000;
              }

              v94 = sub_22B4CFAAC(v80, v85, v200);
              v85, v95, v96, v97, v98, v99, v100, v101, v186, v193;
              *(v81 + 4) = v94;
              *(v81 + 12) = 2080;
              *(v81 + 14) = sub_22B4CFAAC(v198, v30, v200);
              *(v81 + 22) = 2080;
              v102 = [v70 participants];

              v93 = v199;
              if (v102)
              {
                v103 = sub_22B7DB918();

                v1 = v194;
                if (v103 >> 62)
                {
                  if (sub_22B7DC1C8())
                  {
                    goto LABEL_43;
                  }
                }

                else if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_43:
                  if ((v103 & 0xC000000000000001) != 0)
                  {
                    v111 = MEMORY[0x231895C80](0, v103);
                  }

                  else
                  {
                    if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                    }

                    v111 = *(v103 + 32);
                  }

                  v119 = v111;
                  v103, v112, v113, v114, v115, v116, v117, v118, v187, v194;
                  v120 = [v119 ID];

                  if (v120)
                  {
                    v121 = sub_22B7DB6A8();
                    v123 = v122;

                    v124 = v121;
                    v1 = v195;
LABEL_63:
                    v133 = sub_22B4CFAAC(v124, v123, v200);
                    v123, v134, v135, v136, v137, v138, v139, v140, v188, v195;
                    *(v81 + 24) = v133;
                    _os_log_impl(&dword_22B4CC000, v71, v72, "Repairing chat identifier on chat. guid: %s, chatIdentifier: %s, participantId: %s", v81, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x231898D60](v185, -1, -1);
                    MEMORY[0x231898D60](v81, -1, -1);

LABEL_64:
                    v141 = [v93 delegate];
                    if (v141)
                    {
                      v142 = v141;
                      v143 = sub_22B7DB678();
                      v144 = [v142 chatRepairController:v93 repairChatIdentifierWithIdentifier:v143 onChat:v70];
                      swift_unknownObjectRelease();

                      if (v144)
                      {
                        v145 = [v93 delegate];
                        if (v145)
                        {
                          [v145 chatRepairController:v93 updateRepairHistoryOfChat:v70 withRepairHistory:8];
                          swift_unknownObjectRelease();
                        }

                        v146 = [v93 delegate];
                        if (v146)
                        {
                          [v146 chatRepairController:v93 updateSyncStateTo:0 onChat:v70];
                          swift_unknownObjectRelease();
                        }
                      }
                    }

                    v147 = [v93 delegate];
                    if (!v147 || (v148 = [v147 shouldForceAutoBugCaptureForChatRepairController_], swift_unknownObjectRelease(), (v148 & 1) == 0))
                    {

                      v30, v176, v177, v178, v179, v180, v181, v182, v185, v192;
                      return;
                    }

                    v149 = *MEMORY[0x277D190E0];
                    sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_22B7F93B0;
                    *(inited + 32) = sub_22B7DB6A8();
                    *(inited + 72) = MEMORY[0x277D837D0];
                    *(inited + 40) = v151;
                    *(inited + 48) = 0xD000000000000030;
                    *(inited + 56) = 0x800000022B8108C0;
                    v152 = v149;
                    v153 = sub_22B71DF98(inited);
                    swift_setDeallocating();
                    sub_22B4D0D64(inited + 32, &qword_27D8CDB60, &qword_22B7FA360);
                    v154 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                    v155 = sub_22B7DB568();
                    v153, v156, v157, v158, v159, v160, v161, v162, v185, v192;
                    v163 = [v154 initWithDomain:v152 code:0 userInfo:v155];

                    v164 = [objc_opt_self() sharedInstance];
                    if (v164)
                    {
                      v172 = v164;
                      v30, v165, v166, v167, v168, v169, v170, v171, v189, v196;
                      v173 = sub_22B7DB678();
                      v174 = v163;
                      v175 = sub_22B7DA6E8();

                      [v172 forceAutoBugCaptureWithSubType:v173 errorPayload:v175];
                      return;
                    }

                    goto LABEL_80;
                  }

                  v123 = 0xE500000000000000;
                  v1 = v195;
LABEL_62:
                  v124 = 0x3E6C696E3CLL;
                  goto LABEL_63;
                }

                v103, v104, v105, v106, v107, v108, v109, v110, v187, v194;
                v123 = 0xE500000000000000;
                goto LABEL_62;
              }

LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
              return;
            }
          }

          else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v55 = 0x3E6C696E3CLL;
          v37, v38, v39, v40, v41, v42, v43, v44, v183, v190;
          goto LABEL_54;
        }

LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v16 = *(v8 + 32);
    }

    v24 = v16;
    v8, v17, v18, v19, v20, v21, v22, v23, v183, v190;
    v25 = [v24 ID];

    goto LABEL_11;
  }

  v8, v9, v10, v11, v12, v13, v14, v15, v183, v190;
  v25 = 0;
LABEL_11:
  v26 = [objc_opt_self() identifier:0 equalsIdentifier:v25];

  if (!v26)
  {
    v1 = 0;
    if (qword_27D8CCC88 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

  v58 = [a1 chatIdentifier];
  if (v58 && (v59 = v58, sub_22B7DB6A8(), v61 = v60, v59, v61))
  {
    v61, v62, v63, v64, v65, v66, v67, v68, v183, v190;
    if (qword_27D8CCC88 != -1)
    {
      swift_once();
    }

    v86 = sub_22B7DB2B8();
    sub_22B4CFA74(v86, qword_27D8CED08);
    v87 = sub_22B7DB298();
    v88 = sub_22B7DBC98();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      sub_22B4D01A0(0, &qword_27D8CED30, 0x277CCACA8);
      v91 = sub_22B7DBFE8();
      *(v89 + 4) = v91;
      *v90 = v91;
      v92 = 0;
      _os_log_impl(&dword_22B4CC000, v87, v88, "chat identifier from guid is nil or not a string: %@.", v89, 0xCu);
      sub_22B4D0D64(v90, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v90, -1, -1);
      MEMORY[0x231898D60](v89, -1, -1);
    }
  }

  else
  {
  }
}

void sub_22B76FDA0(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_22B771954();
  if (v2)
  {
    v3 = [a1 guid];
    IMComponentsFromChatGUID();
  }
}

void sub_22B770878(void *a1)
{
  v3 = [a1 chatIdentifier];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v5 = sub_22B7DB6A8();
  v7 = v6;

  v15 = (v7 >> 56) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v15 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (v16 = [a1 serviceName]) == 0)
  {
    v20 = v7;
LABEL_16:
    v20, v8, v9, v10, v11, v12, v13, v14, v464, v498;
LABEL_17:
    if (qword_27D8CCC88 != -1)
    {
      swift_once();
    }

    v72 = sub_22B7DB2B8();
    sub_22B4CFA74(v72, qword_27D8CED08);
    v73 = a1;
    v74 = sub_22B7DB298();
    v75 = sub_22B7DBC98();

    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_28;
    }

    v76 = 0x3E6C696E3CLL;
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v539 = v78;
    *v77 = 136315394;
    v79 = [v73 chatIdentifier];
    if (v79)
    {
      v80 = v79;
      v81 = sub_22B7DB6A8();
      v83 = v82;
    }

    else
    {
      v83 = 0xE500000000000000;
      v81 = 0x3E6C696E3CLL;
    }

    v84 = sub_22B4CFAAC(v81, v83, &v539);
    v83, v85, v86, v87, v88, v89, v90, v91, v464, v498;
    *(v77 + 4) = v84;
    *(v77 + 12) = 2080;
    v92 = [v73 serviceName];
    if (v92)
    {
      v93 = v92;
      v76 = sub_22B7DB6A8();
      v95 = v94;
    }

    else
    {
      v95 = 0xE500000000000000;
    }

    v96 = sub_22B4CFAAC(v76, v95, &v539);
    v95, v97, v98, v99, v100, v101, v102, v103, v468, v502;
    *(v77 + 14) = v96;
    _os_log_impl(&dword_22B4CC000, v74, v75, "Chat has zero length identifier %s or service %s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v78, -1, -1);
    v104 = v77;
    goto LABEL_27;
  }

  v17 = v16;
  v18 = sub_22B7DB6A8();
  v20 = v19;

  v28 = (v20 >> 56) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v28 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    v7, v21, v22, v23, v24, v25, v26, v27, v464, v498;
    goto LABEL_16;
  }

  v29 = [a1 guid];
  if (!v29)
  {
    v20, v30, v31, v32, v33, v34, v35, v36, v464, v498;
    v7, v105, v106, v107, v108, v109, v110, v111, v469, v503;
    return;
  }

  v37 = v29;
  v38 = sub_22B7DB6A8();
  v40 = v39;

  v538 = v1;
  v41 = sub_22B771BA0(a1);
  if (!v42)
  {
    v20, 0, v43, v44, v45, v46, v47, v48, v464, v498;
    v7, v112, v113, v114, v115, v116, v117, v118, v470, v504;
    v40, v119, v120, v121, v122, v123, v124, v125, v471, v505;
    return;
  }

  v49 = v41;
  v50 = v42;
  if (v38 == v41 && v42 == v40 || (sub_22B7DC518() & 1) != 0)
  {
    v20, v42, v43, v44, v45, v46, v47, v48, v464, v498;
    v7, v51, v52, v53, v54, v55, v56, v57, v465, v499;
    v50, v58, v59, v60, v61, v62, v63, v64, v466, v500;
    v40, v65, v66, v67, v68, v69, v70, v71, v467, v501;
    return;
  }

  v126 = [a1 style];
  if (byte_283F1BCC0 == v126 || byte_283F1BCC1 == v126)
  {
    v159 = [v1 delegate];
    v537 = v40;
    if (!v159)
    {
      v202 = v50;
      goto LABEL_53;
    }

    v160 = v159;
    log = v49;
    v161 = sub_22B7DB678();
    v162 = [v160 chatRepairController:v1 chatExistsWithGUID:v161];
    swift_unknownObjectRelease();

    if (v162)
    {
      if ([a1 style] != 43)
      {
        v7, v163, v164, v165, v166, v167, v168, v169, v464, v498;
        v20, v264, v265, v266, v267, v268, v269, v270, v481, v514;
        v40, v271, v272, v273, v274, v275, v276, v277, v482, v515;
        if (qword_27D8CCC88 == -1)
        {
LABEL_60:
          v278 = sub_22B7DB2B8();
          sub_22B4CFA74(v278, qword_27D8CED08);

          v74 = sub_22B7DB298();
          v279 = sub_22B7DBC98();
          v50, v280, v281, v282, v283, v284, v285, v286, v483, v516;
          if (!os_log_type_enabled(v74, v279))
          {
            v50, v287, v288, v289, v290, v291, v292, v293, v484, v517;
            goto LABEL_28;
          }

          v294 = swift_slowAlloc();
          v295 = swift_slowAlloc();
          v539 = v295;
          *v294 = 136315138;
          v296 = sub_22B4CFAAC(log, v50, &v539);
          v50, v297, v298, v299, v300, v301, v302, v303, v484, v517;
          *(v294 + 4) = v296;
          _os_log_impl(&dword_22B4CC000, v74, v279, "Chat with expected GUID %s already exists, cannot reset 1-1 chat GUID", v294, 0xCu);
          sub_22B4CFB78(v295);
          MEMORY[0x231898D60](v295, -1, -1);
          v104 = v294;
LABEL_27:
          MEMORY[0x231898D60](v104, -1, -1);
LABEL_28:

          return;
        }

LABEL_96:
        swift_once();
        goto LABEL_60;
      }

      v170 = [v538 delegate];
      if (v170 && (v178 = v170, v179 = [a1 account], v180 = objc_msgSend(v178, sel_chatRepairController_generateUnusedChatIdentifierForGroupChatWithAccount_, v538, v179), v179, swift_unknownObjectRelease(), v180))
      {
        loga = sub_22B7DB6A8();
        v182 = v181;
        v183 = v180;
        v184 = [a1 serviceName];
        if (v184)
        {
          v192 = v184;
          [a1 style];
          v193 = IMCopyAnyServiceGUIDForChat();

          if (!v193)
          {
LABEL_99:

            __break(1u);
            return;
          }

          v49 = sub_22B7DB6A8();
          v195 = v194;
          v50, v194, v196, v197, v198, v199, v200, v201, v464, v498;

          v202 = v195;

          [a1 setChatIdentifier_];

          if (qword_27D8CCC88 != -1)
          {
            swift_once();
          }

          v203 = sub_22B7DB2B8();
          sub_22B4CFA74(v203, qword_27D8CED08);

          v204 = sub_22B7DB298();
          v205 = sub_22B7DBC98();
          v195, v206, v207, v208, v209, v210, v211, v212, v475, v509;
          v182, v213, v214, v215, v216, v217, v218, v219, v476, v510;
          if (os_log_type_enabled(v204, v205))
          {
            v227 = swift_slowAlloc();
            v532 = swift_slowAlloc();
            v539 = v532;
            *v227 = 136315394;
            v228 = sub_22B4CFAAC(loga, v182, &v539);
            logb = v204;
            v229 = v228;
            v182, v230, v231, v232, v233, v234, v235, v236, v477, v511;
            *(v227 + 4) = v229;
            *(v227 + 12) = 2080;
            v237 = sub_22B4CFAAC(v49, v195, &v539);
            v195, v238, v239, v240, v241, v242, v243, v244, v478, v512;
            *(v227 + 14) = v237;
            _os_log_impl(&dword_22B4CC000, logb, v205, "Chat with expected GUID already exists, generating new chat identifier %s and GUID %s", v227, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v532, -1, -1);
            v245 = v227;
            v202 = v195;
            MEMORY[0x231898D60](v245, -1, -1);
          }

          else
          {
            v182, v220, v221, v222, v223, v224, v225, v226, v477, v511;

            v195, v366, v367, v368, v369, v370, v371, v372, v490, v523;
          }

LABEL_53:
          if (qword_27D8CCC88 != -1)
          {
            swift_once();
          }

          v246 = sub_22B7DB2B8();
          sub_22B4CFA74(v246, qword_27D8CED08);
          v247 = a1;

          v248 = sub_22B7DB298();
          v249 = sub_22B7DBC98();
          v7, v250, v251, v252, v253, v254, v255, v256, v464, v498;
          if (!os_log_type_enabled(v248, v249))
          {

            v183 = v538;
            goto LABEL_83;
          }

          HIDWORD(v513) = v249;
          v531 = v248;
          v533 = v202;
          log = v49;
          v257 = 0x3E6C696E3CLL;
          v258 = swift_slowAlloc();
          v480 = swift_slowAlloc();
          v539 = v480;
          *v258 = 136315650;
          v259 = [v247 guid];
          v183 = v538;
          if (v259)
          {
            v260 = v259;
            v261 = v247;
            v257 = sub_22B7DB6A8();
            v263 = v262;
          }

          else
          {
            v261 = v247;
            v263 = 0xE500000000000000;
          }

          v50 = 0x3E6C696E3CLL;
          v304 = sub_22B4CFAAC(v257, v263, &v539);
          v263, v305, v306, v307, v308, v309, v310, v311, v480, v513;
          *(v258 + 4) = v304;
          *(v258 + 12) = 2080;
          *(v258 + 14) = sub_22B4CFAAC(v5, v7, &v539);
          *(v258 + 22) = 2080;
          v247 = v261;
          v312 = [v261 participants];

          if (!v312)
          {
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

          sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
          v313 = sub_22B7DB918();

          if (v313 >> 62)
          {
            if (sub_22B7DC1C8())
            {
              goto LABEL_66;
            }
          }

          else if (*((v313 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_66:
            if ((v313 & 0xC000000000000001) != 0)
            {
              v321 = MEMORY[0x231895C80](0, v313);
LABEL_69:
              v329 = v321;
              v313, v322, v323, v324, v325, v326, v327, v328, v483, v516;
              v330 = [v329 ID];

              if (v330)
              {
                v50 = sub_22B7DB6A8();
                v332 = v331;

LABEL_82:
                v373 = sub_22B4CFAAC(v50, v332, &v539);
                v332, v374, v375, v376, v377, v378, v379, v380, v485, v518;
                *(v258 + 24) = v373;
                _os_log_impl(&dword_22B4CC000, v531, BYTE4(v513), "Repairing guid on chat. guid: %s, chatIdentifier: %s, participantId: %s", v258, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x231898D60](v479, -1, -1);
                MEMORY[0x231898D60](v258, -1, -1);

                v202 = v533;
LABEL_83:
                v381 = [v183 delegate];
                if (v381)
                {
                  v382 = v381;
                  v383 = sub_22B7DB678();
                  v384 = [v382 chatRepairController:v183 repairGUIDWithGUID:v383 onChat:v247];
                  swift_unknownObjectRelease();

                  if (v384)
                  {
                    v385 = [v183 delegate];
                    if (v385)
                    {
                      [v385 chatRepairController:v183 updateRepairHistoryOfChat:v247 withRepairHistory:32];
                      swift_unknownObjectRelease();
                    }

                    v386 = [v183 delegate];
                    if (v386)
                    {
                      [v386 chatRepairController:v183 updateSyncStateTo:0 onChat:v247];
                      swift_unknownObjectRelease();
                    }
                  }
                }

                v387 = [v183 delegate];
                if (!v387 || (v395 = [v387 shouldForceAutoBugCaptureForChatRepairController_], swift_unknownObjectRelease(), !v395))
                {
                  v20, v388, v389, v390, v391, v392, v393, v394, v479, v513;
                  v7, v443, v444, v445, v446, v447, v448, v449, v495, v528;
                  v202, v450, v451, v452, v453, v454, v455, v456, v496, v529;
                  v537, v457, v458, v459, v460, v461, v462, v463, v497, v530;
                  return;
                }

                v396 = *MEMORY[0x277D190E0];
                sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_22B7F93B0;
                *(inited + 32) = sub_22B7DB6A8();
                *(inited + 72) = MEMORY[0x277D837D0];
                *(inited + 40) = v398;
                *(inited + 48) = 0xD00000000000002ALL;
                *(inited + 56) = 0x800000022B810800;
                v399 = v396;
                v400 = sub_22B71DF98(inited);
                swift_setDeallocating();
                sub_22B4D0D64(inited + 32, &qword_27D8CDB60, &qword_22B7FA360);
                v401 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                v402 = sub_22B7DB568();
                v400, v403, v404, v405, v406, v407, v408, v409, v479, v513;
                v183 = [v401 initWithDomain:v399 code:0 userInfo:v402];

                v410 = [objc_opt_self() sharedInstance];
                if (v410)
                {
                  v418 = v410;
                  v202, v411, v412, v413, v414, v415, v416, v417, v491, v524;
                  v537, v419, v420, v421, v422, v423, v424, v425, v492, v525;
                  v20, v426, v427, v428, v429, v430, v431, v432, v493, v526;
                  v7, v433, v434, v435, v436, v437, v438, v439, v494, v527;
                  v440 = sub_22B7DB678();
                  v441 = v183;
                  v442 = sub_22B7DA6E8();

                  [v418 forceAutoBugCaptureWithSubType:v440 errorPayload:v442];
                  return;
                }

                goto LABEL_98;
              }

LABEL_81:
              v332 = 0xE500000000000000;
              goto LABEL_82;
            }

            if (*((v313 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v321 = *(v313 + 32);
              goto LABEL_69;
            }

            __break(1u);
            goto LABEL_96;
          }

          v313, v314, v315, v316, v317, v318, v319, v320, v483, v516;
          goto LABEL_81;
        }

        v50, v185, v186, v187, v188, v189, v190, v191, v464, v498;
        v182, v359, v360, v361, v362, v363, v364, v365, v489, v522;
      }

      else
      {
        v50, v171, v172, v173, v174, v175, v176, v177, v464, v498;
      }

      v7, v333, v334, v335, v336, v337, v338, v339, v486, v519;
      v20, v340, v341, v342, v343, v344, v345, v346, v487, v520;
      v40, v347, v348, v349, v350, v351, v352, v353, v488, v521;
      if (qword_27D8CCC88 != -1)
      {
        swift_once();
      }

      v354 = sub_22B7DB2B8();
      sub_22B4CFA74(v354, qword_27D8CED08);
      v355 = a1;
      v74 = sub_22B7DB298();
      v356 = sub_22B7DBC98();

      if (!os_log_type_enabled(v74, v356))
      {
        goto LABEL_28;
      }

      v158 = swift_slowAlloc();
      v357 = swift_slowAlloc();
      *v158 = 138412290;
      v358 = [v355 &selRef_broadcasterForFileTransferListeners];
      *(v158 + 4) = v358;
      *v357 = v358;
      _os_log_impl(&dword_22B4CC000, v74, v356, "Failed to generate new chat identifier for account %@", v158, 0xCu);
      sub_22B4D0D64(v357, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v357, -1, -1);
      goto LABEL_38;
    }

    v202 = v50;
    v49 = log;
    goto LABEL_53;
  }

  v50, v127, v128, v129, v130, v131, v132, v133, v464, v498;
  v7, v134, v135, v136, v137, v138, v139, v140, v472, v506;
  v20, v141, v142, v143, v144, v145, v146, v147, v473, v507;
  v40, v148, v149, v150, v151, v152, v153, v154, v474, v508;
  if (qword_27D8CCC88 != -1)
  {
    swift_once();
  }

  v155 = sub_22B7DB2B8();
  sub_22B4CFA74(v155, qword_27D8CED08);
  v156 = a1;
  v74 = sub_22B7DB298();
  v157 = sub_22B7DBC98();
  if (os_log_type_enabled(v74, v157))
  {
    v158 = swift_slowAlloc();
    *v158 = 16777472;
    *(v158 + 4) = [v156 style];

    _os_log_impl(&dword_22B4CC000, v74, v157, "Chat appears to need recovery but style is not supported %hhu", v158, 5u);
LABEL_38:
    v104 = v158;
    goto LABEL_27;
  }
}

void sub_22B771954()
{
  if ([v0 style] != 45)
  {
    return;
  }

  v2 = [v0 participants];
  if (!v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v4 = sub_22B7DB918();

  if (v4 >> 62)
  {
    v12 = sub_22B7DC1C8();
  }

  else
  {
    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4, v5, v6, v7, v8, v9, v10, v11, v30, v32;
  if (v12 == 1)
  {
    if (([v0 isBusinessChat] & 1) == 0)
    {
      [v0 isStewieChat];
    }

    return;
  }

  if (qword_27D8CCC88 != -1)
  {
    swift_once();
  }

  v13 = sub_22B7DB2B8();
  sub_22B4CFA74(v13, qword_27D8CED08);
  v1 = v0;
  v14 = sub_22B7DB298();
  v15 = sub_22B7DBC98();
  if (!os_log_type_enabled(v14, v15))
  {

    return;
  }

  v16 = swift_slowAlloc();
  *v16 = 134217984;
  v17 = [v1 participants];
  if (!v17)
  {
LABEL_20:

    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_22B7DB918();

  v27 = v19;
  if (v19 >> 62)
  {
    v29 = v19;
    v28 = sub_22B7DC1C8();
    v27 = v29;
  }

  else
  {
    v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27, v20, v21, v22, v23, v24, v25, v26, v31, v33;
  *(v16 + 4) = v28;

  _os_log_impl(&dword_22B4CC000, v14, v15, "Chat is a 1-1 chat, but has %ld participants. Not repairing participants.", v16, 0xCu);
  MEMORY[0x231898D60](v16, -1, -1);
}

id sub_22B771BA0(void *a1)
{
  if ([a1 style] == 45)
  {
    result = [a1 participants];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
    v5 = sub_22B7DB918();

    v13 = v5 >> 62 ? sub_22B7DC1C8() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5, v6, v7, v8, v9, v10, v11, v12, v30, v31;
    if (v13 >= 2)
    {
      if (qword_27D8CCC88 != -1)
      {
        swift_once();
      }

      v14 = sub_22B7DB2B8();
      sub_22B4CFA74(v14, qword_27D8CED08);
      v15 = sub_22B7DB298();
      v16 = sub_22B7DBC98();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v15, v16, "Chat has greater than 1 participant but 1-1 chat style, rewriting GUID and chat identifier", v17, 2u);
        MEMORY[0x231898D60](v17, -1, -1);
      }

      v18 = [v1 delegate];
      if (!v18 || (v19 = v18, v20 = [a1 account], v21 = objc_msgSend(v19, sel_chatRepairController_generateUnusedChatIdentifierForGroupChatWithAccount_, v1, v20), v20, swift_unknownObjectRelease(), !v21))
      {
        v27 = sub_22B7DB298();
        v28 = sub_22B7DBC98();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_22B4CC000, v27, v28, "Could not generate an unused chat identifier!", v29, 2u);
          MEMORY[0x231898D60](v29, -1, -1);
        }

        return 0;
      }

      [a1 setChatIdentifier_];

      [a1 setStyle_];
    }
  }

  [a1 style];
  result = [a1 chatIdentifier];
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = [a1 serviceName];
  if (v23)
  {
    v24 = v23;
    v25 = IMCopyAnyServiceGUIDForChat();

    if (v25)
    {
      v26 = sub_22B7DB6A8();

      return v26;
    }
  }

  else
  {
  }

  return 0;
}

id IMDChatRepairController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22B771F94()
{
  result = [objc_allocWithZone(IMDSpamFilteringHelper) init];
  qword_27D8CED38 = result;
  return result;
}

void __swiftcall IMDSpamFilteringHelper.init()(IMDSpamFilteringHelper *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_22B77205C()
{
  v1 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isInternalInstall];

    if (v6)
    {
      if (IMDisableSpamFilteringDebugUI())
      {
        if (qword_27D8CCC70 != -1)
        {
          swift_once();
        }

        v7 = sub_22B7DB2B8();
        sub_22B4CFA74(v7, qword_27D8D48B8);
        v15 = sub_22B7DB298();
        v8 = sub_22B7DBC78();
        if (os_log_type_enabled(v15, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_22B4CC000, v15, v8, "Server bag disabled spam filtering debug ui", v9, 2u);
          MEMORY[0x231898D60](v9, -1, -1);
        }

        v10 = v15;
      }

      else
      {
        v11 = sub_22B7DBA58();
        (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
        v12 = swift_allocObject();
        v12[2] = 0;
        v12[3] = 0;
        v12[4] = v0;
        v13 = v0;
        sub_22B77E3D4(0, 0, v3, &unk_22B7FBA50, v12);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B772288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22B7DB428();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B772348, 0, 0);
}

uint64_t sub_22B772348()
{
  sub_22B7DB418();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_22B77242C;
  v2 = *(v0 + 40);

  return MEMORY[0x2821DBC00](v2);
}

uint64_t sub_22B77242C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22B7725BC;
  }

  else
  {
    v2 = sub_22B772540;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B772540()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22B7725BC()
{
  if (qword_27D8CCC70 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_27D8D48B8);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Failed to present spam filtering debug UI with error: %@", v8, 0xCu);
    sub_22B4D0D64(v9, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v9, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v12 = v0[1];

  return v12();
}

void sub_22B7727D8(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = *a4;
    v11 = v10;
    if (a3)
    {
      a3 = sub_22B7DB678();
    }

    v12 = [v4 eventPayloadFor:a1 service:a3];

    v13 = sub_22B7DB588();
    sub_22B7B0AC8(v13);
    v15 = v14;
    v13, v16, v17, v18, v19, v20, v21, v22, v31, v33;
    v23 = sub_22B7DB568();
    v15, v24, v25, v26, v27, v28, v29, v30, v32, v23;
    [v9 trackEvent:v10 withDictionary:v34];
  }

  else
  {
    __break(1u);
  }
}

void sub_22B77293C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (a4)
  {
    v13 = sub_22B7DB6A8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = a1;
  sub_22B7727D8(a3, v13, v15, a5);

  v15, v17, v18, v19, v20, v21, v22, v23, a9, a10;
}

id IMDSpamFilteringHelper.init()()
{
  v1 = OBJC_IVAR___IMDSpamFilteringHelper_debugUIService;
  sub_22B7DB448();
  swift_allocObject();
  *&v0[v1] = sub_22B7DB438();
  v3.receiver = v0;
  v3.super_class = IMDSpamFilteringHelper;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for IMDSpamFilteringHelper()
{
  result = qword_27D8CED48;
  if (!qword_27D8CED48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8CED48);
  }

  return result;
}

uint64_t sub_22B772C7C(uint64_t a1, uint64_t a2, IMDScheduledMessageCoordinator *a3)
{
  sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  *(inited + 32) = sub_22B7DB6A8();
  v8 = MEMORY[0x277D83E88];
  *(inited + 72) = MEMORY[0x277D83E88];
  if ((a1 - 1) >= 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = sub_22B71DF98(inited);
  swift_setDeallocating();
  sub_22B4D0D64(inited + 32, &qword_27D8CDB60, &qword_22B7FA360);
  v11 = sub_22B7DB6A8();
  if (!a3)
  {
    v12, v12, v13, v14, v15, v16, v17, v18, v89, v93;
    sub_22B7DB6A8();
    v47, v47, v48, v49, v50, v51, v52, v53, v91, v96;
    sub_22B7DB6A8();
    v54, v54, v55, v56, v57, v58, v59, v60, v92, v97;
LABEL_17:
    v46 = 0;
    goto LABEL_20;
  }

  if (v11 == a2 && v12 == a3)
  {
    v12, v12, v13, v14, v15, v16, v17, v18, v89, v93;
    goto LABEL_19;
  }

  v20 = v12;
  v21 = sub_22B7DC518();
  v20, v22, v23, v24, v25, v26, v27, v28, v89, v93;
  if (v21)
  {
LABEL_19:
    v46 = 1;
    goto LABEL_20;
  }

  if (sub_22B7DB6A8() == a2 && v29 == a3)
  {
    v29, v29, v30, v31, v32, v33, v34, v35, v90, v94;
    v46 = 2;
    goto LABEL_20;
  }

  v37 = v29;
  v38 = sub_22B7DC518();
  v37, v39, v40, v41, v42, v43, v44, v45, v90, v94;
  if ((v38 & 1) == 0)
  {
    if (sub_22B7DB6A8() == a2 && v73 == a3)
    {
      v73, v73, v74, v75, v76, v77, v78, v79, v90, v95;
      v46 = 3;
      goto LABEL_20;
    }

    v80 = v73;
    v81 = sub_22B7DC518();
    v80, v82, v83, v84, v85, v86, v87, v88, v90, v95;
    if (v81)
    {
      v46 = 3;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v46 = 2;
LABEL_20:
  v61 = sub_22B7DB6A8();
  v63 = v62;
  v101 = v8;
  *&v100 = v46;
  sub_22B4D7F04(&v100, v99);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B769174(v99, v61, v63, isUniquelyReferenced_nonNull_native);
  v63, v65, v66, v67, v68, v69, v70, v71, v90, v10;
  return v98;
}

uint64_t sub_22B772EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F0D94;

  return sub_22B772288(a1, v4, v5, v6);
}

void sub_22B772F9C(uint64_t a1)
{
  v2 = 0;
  v22 = MEMORY[0x231895490](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 56) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_22B7C9068(v20, v10, v11);
    v21, v12, v13, v14, v15, v16, v17, v18, v19, *v20;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22B7730B8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v12 = [a1 participants];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v14 = sub_22B7DB918();

  if (v14 >> 62)
  {
LABEL_22:
    v22 = sub_22B7DC1C8();
    if (v22)
    {
LABEL_4:
      v23 = 0;
      v43 = MEMORY[0x277D84F90];
      do
      {
        v24 = v23;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x231895C80](v24, v14);
          }

          else
          {
            if (v24 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v25 = *(v14 + 8 * v24 + 32);
          }

          v26 = v25;
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v27 = [v25 ID];
          if (v27)
          {
            break;
          }

          ++v24;
          if (v23 == v22)
          {
            goto LABEL_24;
          }
        }

        v42 = a2;
        v28 = v27;
        v29 = sub_22B7DB6A8();
        v41 = v30;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_22B71BD80(0, *v43->messageStore + 1, 1, v43, v18, v19, v20, v21);
        }

        v32 = *v43->messageStore;
        v31 = *v43->chatRegistry;
        if (v32 >= v31 >> 1)
        {
          v43 = sub_22B71BD80((v31 > 1), v32 + 1, 1, v43, v18, v19, v20, v21);
        }

        *v43->messageStore = v32 + 1;
        v33 = v43 + 16 * v32;
        a2 = v42;
        *(v33 + 4) = v29;
        *(v33 + 5) = v41;
      }

      while (v23 != v22);
      goto LABEL_24;
    }
  }

  else
  {
    v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_4;
    }
  }

  v43 = MEMORY[0x277D84F90];
LABEL_24:
  v14, v15, v16, v17, v18, v19, v20, v21, v41, v42;
  sub_22B7775E4(a1, v43, a2);

  v43, v34, v35, v36, v37, v38, v39, v40, a9, a10;
}

void sub_22B7732D8(void *a1)
{
  [a1 invalidate];
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422638);
  v3 = v1;
  oslog = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    *(v5 + 4) = v3;
    *v6 = v3;
    *(v5 + 12) = 2112;
    v7 = *&v3[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
    *(v5 + 14) = v7;
    v6[1] = v7;
    v8 = v3;
    v9 = v7;
    _os_log_impl(&dword_22B4CC000, oslog, v4, "%@ Updated timer to %@", v5, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }
}

char *sub_22B773558(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v57 = a4;
  v9 = sub_22B7DBD48();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22B7DB398();
  MEMORY[0x28223BE20](v12 - 8);
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_membershipObserver] = 0;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_blocklistObserver] = 0;
  v5[OBJC_IVAR___IMDScheduledMessageCoordinator_isFirstFire] = 1;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_timer] = 0;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession] = a1;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore] = a2;
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_chatRegistry] = a3;
  v50 = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v59 = 0;
  v60 = 0xE000000000000000;
  v13 = a1;
  v56 = a2;
  v51 = a3;
  sub_22B7DC2E8();
  v60, v14, v15, v16, v17, v18, v19, v20, v50, v51;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000022B810D10;
  v55 = v13;
  v21 = [v13 displayName];
  v22 = sub_22B7DB6A8();
  v24 = v23;

  MEMORY[0x231895140](v22, v24);
  v24, v25, v26, v27, v28, v29, v30, v31, v50, v51;
  sub_22B7DACD8();
  v59 = MEMORY[0x277D84F90];
  sub_22B77E294(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B714FD8(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0, MEMORY[0x277D83970]);
  sub_22B7DC138();
  (*(v53 + 104))(v52, *MEMORY[0x277D85260], v54);
  *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_queue] = sub_22B7DBD88();
  v58.receiver = v5;
  v58.super_class = IMDScheduledMessageCoordinator;
  v32 = objc_msgSendSuper2(&v58, sel_init);
  v33 = objc_allocWithZone(type metadata accessor for ScheduledMessageMembershipObserver());
  v34 = v32;
  v35 = v51;
  v36 = v34;
  v37 = sub_22B78C308(v36, v35);
  v38 = *&v36[OBJC_IVAR___IMDScheduledMessageCoordinator_membershipObserver];
  *&v36[OBJC_IVAR___IMDScheduledMessageCoordinator_membershipObserver] = v37;

  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v39 = sub_22B7DB2B8();
  sub_22B4CFA74(v39, qword_281422638);
  v40 = v55;
  v41 = sub_22B7DB298();
  v42 = sub_22B7DBCB8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412546;
    *(v43 + 4) = v36;
    *(v43 + 12) = 2112;
    *(v43 + 14) = v40;
    *v44 = v36;
    v44[1] = v40;
    v45 = v40;
    v46 = v36;
    _os_log_impl(&dword_22B4CC000, v41, v42, "Init %@ serviceSession: %@", v43, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v44, -1, -1);
    MEMORY[0x231898D60](v43, -1, -1);
  }

  v47 = v36;
  [v40 addDelegate_];
  v48 = v57;
  [v57 addListener_];

  return v47;
}