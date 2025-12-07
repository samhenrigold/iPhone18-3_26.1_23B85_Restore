double sub_22D7237B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D72E300();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72E370();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    v25 = sub_22D72C988;
    v26 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_22D723F74;
    v24 = &block_descriptor_213;
    v16 = _Block_copy(&aBlock);

    [v14 authorizationStatesWithCompletion_];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    v20[1] = *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v25 = sub_22D72C934;
    v26 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_22D6C0FD8;
    v24 = &block_descriptor_207;
    v20[0] = _Block_copy(&aBlock);

    sub_22D72E330();
    v20[2] = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    sub_22D72E6E0();
    v19 = v20[0];
    MEMORY[0x2318CF7A0](0, v12, v8, v20[0]);
    _Block_release(v19);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D723C04(uint64_t a1, void (*a2)(void *, __n128), uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v4 = sub_22D72E100();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v39 - v9;
  v47 = a1;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v49 = (v8 + 32);
  v44 = v8;
  v41 = v8 + 40;

  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v42 = v14;
  v43 = a1 + 64;
  v45 = v4;
  while (v13)
  {
    v18 = v15;
LABEL_11:
    v19 = (*(v47 + 48) + 16 * (__clz(__rbit64(v13)) | (v18 << 6)));
    v20 = *v19;
    v21 = v19[1];
    swift_bridgeObjectRetain_n();
    v22 = v46;
    sub_22D72E0F0();
    v23 = v7;
    v48 = *v49;
    v48(v7, v22, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v16;
    v26 = sub_22D6CC714(v20, v21);
    v27 = v16[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_22;
    }

    v30 = v25;
    if (v16[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22D6D02A4();
      }
    }

    else
    {
      sub_22D6CD854(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_22D6CC714(v20, v21);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_24;
      }

      v26 = v31;
    }

    v7 = v23;
    v13 &= v13 - 1;
    if (v30)
    {

      v16 = v50;
      v17 = v50[7] + *(v44 + 72) * v26;
      v4 = v45;
      (*(v44 + 40))(v17, v23, v45);
    }

    else
    {
      v16 = v50;
      v50[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v16[6] + 16 * v26);
      *v33 = v20;
      v33[1] = v21;
      v34 = v16[7] + *(v44 + 72) * v26;
      v4 = v45;
      v48(v34, v23, v45);

      v35 = v16[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_23;
      }

      v16[2] = v37;
    }

    v15 = v18;
    v14 = v42;
    v10 = v43;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      v40(v16);
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22D72E9A0();
  __break(1u);
  return result;
}

uint64_t sub_22D723F74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_22D72E3C0();

  v2(v3);
}

double sub_22D723FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = sub_22D72E300();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72E370();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_22D72D570();
    swift_allocObject();
    v15 = sub_22D72D560();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v3;
    v16[4] = v37;
    v16[5] = a2;
    v43 = sub_22D72C8D8;
    v44 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_22D724F18;
    v42 = &block_descriptor_189;
    v17 = _Block_copy(&aBlock);

    v18 = v3;

    [v14 alarmsWithCompletion_];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v6;
    v32 = v12;
    v33 = v8;
    v34 = v9;
    v35 = v10;
    v20 = v37;
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v36 = v19;
    v21 = sub_22D72DBE0();
    __swift_project_value_buffer(v21, qword_27DA01718);
    v22 = sub_22D72DBB0();
    v23 = sub_22D72E580();
    v24 = os_log_type_enabled(v22, v23);
    v25 = a2;
    v26 = v32;
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22D6B4000, v22, v23, "Cannot fetch alarms: daemon has no delegate", v27, 2u);
      MEMORY[0x2318D0420](v27, -1, -1);
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    *(v28 + 24) = v25;
    v43 = sub_22D72CB20;
    v44 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_22D6C0FD8;
    v42 = &block_descriptor_183;
    v29 = _Block_copy(&aBlock);

    sub_22D72E330();
    v38 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v30 = v33;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v26, v30, v29);
    _Block_release(v29);
    (*(v36 + 8))(v30, v5);
    (*(v35 + 8))(v26, v34);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D7244E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22D72452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v66 = a4;
  v65[1] = a3;
  v79 = a2;
  v6 = sub_22D72E300();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v69 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22D72E370();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72D7A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v84 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Alarm(0);
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v65 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = 0;
    v80 = (v10 + 16);
    v74 = v10;
    v75 = (v10 + 8);
    v20 = (a1 + 40);
    v21 = MEMORY[0x277D84F98];
    v76 = v65 - v16;
    while (1)
    {
      v24 = *(v20 - 1);
      v23 = *v20;
      sub_22D6D3F68(v24, *v20);
      sub_22D7244E4(&qword_27D9FFE98, type metadata accessor for Alarm, &unk_22D73124C);
      sub_22D72D550();
      if (v19)
      {
        break;
      }

      v82 = 0;
      v83 = v23;
      v25 = v20;
      v81 = v18;
      v26 = *v80;
      v27 = v84;
      v28 = v9;
      (*v80)(v84, v17, v9);
      v19 = v15;
      sub_22D6F37E4(v17, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v21;
      v31 = sub_22D6CC49C(v27);
      v32 = v21[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v35 = v30;
      if (v21[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22D6CFC78();
        }
      }

      else
      {
        sub_22D6CCE7C(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_22D6CC49C(v84);
        if ((v35 & 1) != (v37 & 1))
        {
          sub_22D72E9A0();
          __break(1u);
          return;
        }

        v31 = v36;
      }

      v9 = v28;
      v21 = aBlock;
      if (v35)
      {
        v22 = aBlock[7] + *(v77 + 72) * v31;
        v15 = v19;
        sub_22D6D430C(v19, v22);
        sub_22D6D5664(v24, v83);
        (*v75)(v84, v28);
        v17 = v76;
        sub_22D6F3848(v76);
      }

      else
      {
        aBlock[(v31 >> 6) + 8] |= 1 << v31;
        v38 = v74;
        v39 = v84;
        v26(v21[6] + *(v74 + 72) * v31, v84, v28);
        v40 = v21[7] + *(v77 + 72) * v31;
        v15 = v19;
        sub_22D6D3C4C(v19, v40);
        sub_22D6D5664(v24, v83);
        (*(v38 + 8))(v39, v28);
        v17 = v76;
        sub_22D6F3848(v76);
        v41 = v21[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_23;
        }

        v21[2] = v43;
      }

      v20 = v25 + 2;
      v19 = v82;
      v18 = v81 - 1;
      if (v81 == 1)
      {
        goto LABEL_16;
      }
    }

    sub_22D6D5664(v24, v23);

    if (qword_27D9FF130 == -1)
    {
      goto LABEL_18;
    }

LABEL_24:
    swift_once();
LABEL_18:
    v50 = sub_22D72DBE0();
    __swift_project_value_buffer(v50, qword_27DA01718);
    v51 = v19;
    v52 = sub_22D72DBB0();
    v53 = sub_22D72E580();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138543362;
      v56 = v19;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v55 = v57;
      _os_log_impl(&dword_22D6B4000, v52, v53, "Cannot decode alarms: %{public}@", v54, 0xCu);
      sub_22D6D5984(v55, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v55, -1, -1);
      MEMORY[0x2318D0420](v54, -1, -1);
    }

    v58 = swift_allocObject();
    v59 = v67;
    v58[2] = v66;
    v58[3] = v59;
    v58[4] = v19;
    v90 = sub_22D72CAFC;
    v91 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v87 = 1107296256;
    v88 = sub_22D6C0FD8;
    v89 = &block_descriptor_195;
    v60 = _Block_copy(&aBlock);
    v61 = v19;

    v62 = v68;
    sub_22D72E330();
    v85 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v63 = v69;
    v64 = v73;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v62, v63, v60);
    _Block_release(v60);

    (*(v72 + 8))(v63, v64);
    (*(v70 + 8))(v62, v71);
  }

  else
  {
    v21 = MEMORY[0x277D84F98];
LABEL_16:
    v44 = swift_allocObject();
    v45 = v67;
    v44[2] = v66;
    v44[3] = v45;
    v44[4] = v21;
    v90 = sub_22D72CB00;
    v91 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v87 = 1107296256;
    v88 = sub_22D6C0FD8;
    v89 = &block_descriptor_201;
    v46 = _Block_copy(&aBlock);

    v47 = v68;
    sub_22D72E330();
    v85 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v48 = v69;
    v49 = v73;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v47, v48, v46);
    _Block_release(v46);
    (*(v72 + 8))(v48, v49);
    (*(v70 + 8))(v47, v71);
  }
}

uint64_t sub_22D724F18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_22D72E520();

  v2(v3);
}

double sub_22D724F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v4 = sub_22D72E300();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72E370();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72D7A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  swift_beginAccess();
  v16 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = v54;
    sub_22D72D750();
    v20 = v56;
    v21 = sub_22D72E480();

    (*(v10 + 16))(v15, v19, v9);
    v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v23 = swift_allocObject();
    v24 = v55;
    *(v23 + 2) = v16;
    *(v23 + 3) = v24;
    *(v23 + 4) = v20;
    (*(v10 + 32))(&v23[v22], v15, v9);
    v62 = sub_22D728BC8;
    v63 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_22D726280;
    v61 = &block_descriptor_80;
    v25 = _Block_copy(&aBlock);
    v26 = v16;

    [v18 activityDataWithAlarmID:v21 completion:v25];
    _Block_release(v25);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = v54;
    v29 = v9;
    v30 = v8;
    v48 = v16;
    v49 = v6;
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v31 = sub_22D72DBE0();
    __swift_project_value_buffer(v31, qword_27DA01718);
    v32 = v10;
    v33 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v28, v9);
    v34 = sub_22D72DBB0();
    v35 = sub_22D72E580();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v36 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_22D72E960();
      v40 = v39;
      (*(v32 + 8))(v33, v29);
      v41 = sub_22D72891C(v38, v40, &aBlock);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_22D6B4000, v34, v35, "%{public}s: Cannot fetch alarm: daemon has no delegate", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x2318D0420](v37, -1, -1);
      MEMORY[0x2318D0420](v36, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v13, v9);
    }

    v42 = v55;
    v43 = swift_allocObject();
    v44 = v56;
    *(v43 + 16) = v42;
    *(v43 + 24) = v44;
    v62 = sub_22D728BA8;
    v63 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_22D6C0FD8;
    v61 = &block_descriptor_74_0;
    v45 = _Block_copy(&aBlock);

    sub_22D72E330();
    v57 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v46 = v51;
    v47 = v53;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v30, v46, v45);
    _Block_release(v45);
    (*(v52 + 8))(v46, v47);
    (*(v50 + 8))(v30, v49);
  }

  return result;
}

double sub_22D725644(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v47 = a4;
  v11 = sub_22D72E300();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72E370();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72D7A0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v48 = a5;
  if (a2 >> 60 == 15)
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v20 = sub_22D72DBE0();
    __swift_project_value_buffer(v20, qword_27DA01718);
    (*(v16 + 16))(v19, a6, v15);
    v21 = sub_22D72DBB0();
    v22 = sub_22D72E580();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v46 = a3;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_22D72E960();
      v28 = v27;
      (*(v16 + 8))(v19, v15);
      v29 = sub_22D72891C(v26, v28, &aBlock);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_22D6B4000, v21, v22, "%{public}s: Cannot fetch activity data", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318D0420](v25, -1, -1);
      MEMORY[0x2318D0420](v24, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    v30 = swift_allocObject();
    v31 = v48;
    *(v30 + 16) = v47;
    *(v30 + 24) = v31;
    v59 = sub_22D728C50;
    v60 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = sub_22D6C0FD8;
    v58 = &block_descriptor_86;
    v32 = _Block_copy(&aBlock);

    v33 = v49;
    sub_22D72E330();
    v54 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v34 = v50;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v33, v34, v32);
    _Block_release(v32);
    (*(v53 + 8))(v34, v11);
    (*(v51 + 8))(v33, v52);
  }

  else
  {
    v44 = a6;
    v45 = v11;
    v46 = a3;
    sub_22D72D570();
    swift_allocObject();
    sub_22D6D3F68(a1, a2);
    sub_22D72D560();
    type metadata accessor for Alarm.ActivityData(0);
    sub_22D7244E4(&qword_27D9FFE50, type metadata accessor for Alarm.ActivityData, &unk_22D7312D4);
    sub_22D72D550();
    v35 = aBlock;
    v46 = *(v46 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
    v36 = swift_allocObject();
    v37 = v48;
    v36[2] = v47;
    v36[3] = v37;
    v36[4] = v35;
    v44 = v35;
    v59 = sub_22D728CA4;
    v60 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = sub_22D6C0FD8;
    v58 = &block_descriptor_98;
    v47 = _Block_copy(&aBlock);

    v38 = v49;
    sub_22D72E330();
    v54 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v39 = v50;
    v40 = v45;
    sub_22D72E6E0();
    v41 = v47;
    MEMORY[0x2318CF7A0](0, v38, v39, v47);
    _Block_release(v41);

    sub_22D718ABC(a1, a2);

    (*(v53 + 8))(v39, v40);
    (*(v51 + 8))(v38, v52);
  }

  return result;
}

void sub_22D72620C(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  sub_22D728CD8();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

double sub_22D726280(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = sub_22D72D650();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  sub_22D718ABC(v2, v6);

  return result;
}

void sub_22D726318(void *a1, uint64_t a2, char *a3)
{
  v50 = a1;
  v51 = a2;
  v4 = sub_22D72E300();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E370();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_22D72D5A0();
    swift_allocObject();
    sub_22D72D590();
    aBlock = v51;
    type metadata accessor for Alarm.ActivityData(0);
    sub_22D7244E4(&qword_27D9FFE78, type metadata accessor for Alarm.ActivityData, &unk_22D7312AC);
    v17 = sub_22D72D580();
    v19 = v18;
    sub_22D7244E4(&qword_27D9FFE70, type metadata accessor for Alarm, &unk_22D731224);
    v36 = sub_22D72D580();
    v38 = v37;
    sub_22D72D750();
    v50 = objc_allocWithZone(MEMORY[0x277CEA570]);
    v51 = v36;
    sub_22D6D3F68(v36, v38);
    v39 = v19;
    sub_22D6D3F68(v17, v19);
    v40 = sub_22D72E480();

    v41 = sub_22D72D640();
    sub_22D6D5664(v36, v38);
    v42 = sub_22D72D640();
    sub_22D6D5664(v17, v39);
    v43 = [v50 initWithIdentifier:v40 data:v41 attributes:v42];

    v44 = swift_allocObject();
    v44[2] = a3;
    v44[3] = sub_22D6FB7A4;
    v44[4] = 0;
    v57 = sub_22D72C894;
    v58 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_22D726C60;
    v56 = &block_descriptor_167;
    v45 = _Block_copy(&aBlock);
    v46 = a3;

    [v16 createAlarm:v43 completion:v45];
    swift_unknownObjectRelease();

    _Block_release(v45);

    sub_22D6D5664(v51, v38);
    sub_22D6D5664(v17, v39);
  }

  else
  {
    v47 = v11;
    v48 = v7;
    v20 = v9;
    v49 = v8;
    v51 = v5;
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v21 = sub_22D72DBE0();
    __swift_project_value_buffer(v21, qword_27DA01718);
    sub_22D6F37E4(v50, v14);
    v22 = sub_22D72DBB0();
    v23 = sub_22D72E580();
    v24 = v4;
    v25 = v20;
    if (os_log_type_enabled(v22, v23))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = a3;
      v28 = v27;
      aBlock = v27;
      *v26 = 136446210;
      sub_22D72D7A0();
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = sub_22D72E960();
      v31 = v30;
      sub_22D6F3848(v14);
      v32 = sub_22D72891C(v29, v31, &aBlock);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_22D6B4000, v22, v23, "%{public}s: Cannot create alarm: daemon has no delegate", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2318D0420](v28, -1, -1);
      MEMORY[0x2318D0420](v26, -1, -1);
    }

    else
    {

      sub_22D6F3848(v14);
    }

    v34 = v47;
    v33 = v48;
    v57 = sub_22D726AC4;
    v58 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_22D6C0FD8;
    v56 = &block_descriptor_161;
    v35 = _Block_copy(&aBlock);
    sub_22D72E330();
    v52 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v34, v33, v35);
    _Block_release(v35);
    (*(v51 + 8))(v33, v24);
    (*(v25 + 8))(v34, v49);
  }
}

void sub_22D726AC4()
{
  sub_22D728CD8();
  v0 = swift_allocError();
  *v1 = 0;
  v2 = v0;
  if (qword_27D9FF138 != -1)
  {
    swift_once();
  }

  v3 = sub_22D72DBE0();
  __swift_project_value_buffer(v3, qword_27DA01730);
  v4 = v0;
  v5 = sub_22D72DBB0();
  v6 = sub_22D72E580();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v0;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22D6B4000, v5, v6, "Failed to write alarm to database: %{public}@", v7, 0xCu);
    sub_22D6D5984(v8, &unk_27D9FF4D0, &qword_22D730180);
    MEMORY[0x2318D0420](v8, -1, -1);
    MEMORY[0x2318D0420](v7, -1, -1);
  }

  else
  {
  }
}

void sub_22D726C60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_22D726CCC(void (*a1)(void))
{
  sub_22D728CD8();
  v2 = swift_allocError();
  *v3 = 0;
  a1();
}

double sub_22D726D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a6;
  v24 = a7;
  v11 = sub_22D72E300();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22D72E370();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);

  v20 = a1;
  sub_22D72E330();
  v27 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v26);

  return result;
}

void sub_22D72701C(uint64_t a1)
{
  v2 = sub_22D72D7A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_22D72D750();
    v8 = sub_22D72E480();

    [v7 deleteAlarmWithAlarmID_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v9 = sub_22D72DBE0();
    __swift_project_value_buffer(v9, qword_27DA01718);
    (*(v3 + 16))(v5, a1, v2);
    v10 = sub_22D72DBB0();
    v11 = sub_22D72E580();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v14 = sub_22D72E960();
      v16 = v15;
      (*(v3 + 8))(v5, v2);
      v17 = sub_22D72891C(v14, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_22D6B4000, v10, v11, "%{public}s: Cannot delete alarm: daemon has no delegate", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2318D0420](v13, -1, -1);
      MEMORY[0x2318D0420](v12, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_22D728CD8();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22D727328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall Daemon.countdownAlarm(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF420, &qword_22D7302E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  sub_22D72D740();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22D6D5984(v7, &qword_27D9FF420, &qword_22D7302E0);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v15 = sub_22D72DBE0();
    __swift_project_value_buffer(v15, qword_27DA01718);

    v16 = sub_22D72DBB0();
    v17 = sub_22D72E580();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_22D72891C(countAndFlagsBits, object, &v40);
      _os_log_impl(&dword_22D6B4000, v16, v17, "Could not get alarm id for countdown identifier: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x2318D0420](v19, -1, -1);
      MEMORY[0x2318D0420](v18, -1, -1);
    }
  }

  else
  {
    v38 = object;
    v39 = countAndFlagsBits;
    (*(v9 + 32))(v14, v7, v8);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v20 = sub_22D72DBE0();
    v21 = __swift_project_value_buffer(v20, qword_27DA01718);
    (*(v9 + 16))(v12, v14, v8);
    v37 = v21;
    v22 = sub_22D72DBB0();
    v23 = sub_22D72E570();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v24 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v25 = sub_22D72E960();
      v35 = v2;
      v27 = v26;
      v28 = *(v9 + 8);
      v28(v12, v8);
      v29 = sub_22D72891C(v25, v27, &v40);
      v2 = v35;

      *(v24 + 4) = v29;
      _os_log_impl(&dword_22D6B4000, v22, v23, "Proceeding to countdown for %{public}s", v24, 0xCu);
      v30 = v36;
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318D0420](v30, -1, -1);
      MEMORY[0x2318D0420](v24, -1, -1);

      v32 = v28;
    }

    else
    {

      v32 = *(v9 + 8);
      v31 = v32(v12, v8);
    }

    v33 = *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager);
    if (v33)
    {
      MEMORY[0x28223BE20](v31);
      *(&v34 - 2) = v33;
      *(&v34 - 1) = v14;

      sub_22D72E600();
    }

    v32(v14, v8);
  }
}

Swift::Void __swiftcall Daemon.dismissAlarm(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF420, &qword_22D7302E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  sub_22D72D740();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22D6D5984(v7, &qword_27D9FF420, &qword_22D7302E0);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v15 = sub_22D72DBE0();
    __swift_project_value_buffer(v15, qword_27DA01718);

    v16 = sub_22D72DBB0();
    v17 = sub_22D72E580();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_22D72891C(countAndFlagsBits, object, &v38);
      _os_log_impl(&dword_22D6B4000, v16, v17, "Could not get alarm id for dismiss identifier: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x2318D0420](v19, -1, -1);
      MEMORY[0x2318D0420](v18, -1, -1);
    }
  }

  else
  {
    v37 = countAndFlagsBits;
    (*(v9 + 32))(v14, v7, v8);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v36 = object;
    v20 = sub_22D72DBE0();
    v21 = __swift_project_value_buffer(v20, qword_27DA01718);
    (*(v9 + 16))(v12, v14, v8);
    v22 = sub_22D72DBB0();
    v23 = sub_22D72E570();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34 = v21;
      v25 = v24;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v25 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_22D72E960();
      v35 = v2;
      v28 = v27;
      v29 = *(v9 + 8);
      v29(v12, v8);
      v30 = sub_22D72891C(v26, v28, &v38);
      v2 = v35;

      *(v25 + 4) = v30;
      _os_log_impl(&dword_22D6B4000, v22, v23, "Proceeding to dismiss for %{public}s", v25, 0xCu);
      v31 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x2318D0420](v31, -1, -1);
      MEMORY[0x2318D0420](v25, -1, -1);
    }

    else
    {

      v29 = *(v9 + 8);
      v29(v12, v8);
    }

    if (*(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager))
    {

      sub_22D6DD0CC(v14);
      v29(v14, v8);
    }

    else
    {
      v29(v14, v8);
    }
  }
}

Swift::Void __swiftcall Daemon.performSecondaryAction(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF420, &qword_22D7302E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D72D740();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22D6D5984(v7, &qword_27D9FF420, &qword_22D7302E0);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v12 = sub_22D72DBE0();
    __swift_project_value_buffer(v12, qword_27DA01718);

    v13 = sub_22D72DBB0();
    v14 = sub_22D72E580();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_22D72891C(countAndFlagsBits, object, &v24);
      _os_log_impl(&dword_22D6B4000, v13, v14, "Could not get alarm id for secondary action: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2318D0420](v16, -1, -1);
      MEMORY[0x2318D0420](v15, -1, -1);
    }
  }

  else
  {
    v23 = countAndFlagsBits;
    (*(v9 + 32))(v11, v7, v8);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v17 = sub_22D72DBE0();
    __swift_project_value_buffer(v17, qword_27DA01718);

    v18 = sub_22D72DBB0();
    v19 = sub_22D72E570();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_22D72891C(v23, object, &v24);
      _os_log_impl(&dword_22D6B4000, v18, v19, "Proceeding to perform secondary action for %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x2318D0420](v21, -1, -1);
      MEMORY[0x2318D0420](v20, -1, -1);
    }

    if (*(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager))
    {

      sub_22D6DD710(v11);
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t sub_22D728620(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_22D72E490();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

id sub_22D72868C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22D72E480();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22D72D5D0();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_22D728768(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22D7287B4(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_22D728814(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22D728824(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_22D7288C0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22D72891C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_22D72891C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22D728E10(v11, 0, 0, 1, a1, a2);
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
    sub_22D6D5270(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_22D7289EC()
{
  result = qword_27D9FFE40;
  if (!qword_27D9FFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFE40);
  }

  return result;
}

double sub_22D728BC8(uint64_t a1, unint64_t a2)
{
  v5 = *(sub_22D72D7A0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));

  return sub_22D725644(a1, a2, v6, v7, v8, v9);
}

unint64_t sub_22D728CD8()
{
  result = qword_27D9FFE58;
  if (!qword_27D9FFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFE58);
  }

  return result;
}

unint64_t sub_22D728E10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22D728F1C(a5, a6);
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
    result = sub_22D72E7F0();
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

void *sub_22D728F1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_22D728F68(a1, a2);
  sub_22D729098(&unk_2840CBCE8);
  return v3;
}

void *sub_22D728F68(uint64_t a1, unint64_t a2)
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

  v6 = sub_22D729184(v5, 0);
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

  result = sub_22D72E7F0();
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
        v10 = sub_22D72E510();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22D729184(v10, 0);
        result = sub_22D72E7B0();
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

uint64_t sub_22D729098(uint64_t result)
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

  result = sub_22D7291F8(result, v11, 1, v3);
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

void *sub_22D729184(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFE80, &unk_22D731950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22D7291F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFE80, &unk_22D731950);
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

uint64_t sub_22D7292EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = sub_22D72E5F0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22D72E370();
  MEMORY[0x28223BE20](v13 - 8);
  v41 = type metadata accessor for ActivityManager();
  v42 = &off_2840CBDC8;
  *&v40 = a1;
  v38 = type metadata accessor for AppEventObserver();
  v39 = &off_2840CDAA8;
  *&v37 = a2;
  v35 = type metadata accessor for AuthorizationManager();
  v36 = &off_2840CCBF0;
  *&v34 = a3;
  v32 = type metadata accessor for AlarmPersistentStore();
  v33 = &off_2840CCE58;
  *&v31 = a4;
  v27 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v26 = "itCore.xpc.alarmServer";
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0;
  sub_22D72E330();
  v30 = MEMORY[0x277D84F90];
  v25 = sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  v14 = *MEMORY[0x277D85260];
  v15 = *(v29 + 104);
  v29 += 104;
  v23 = v11;
  v16 = v28;
  v15(v11, v14, v28);
  *(a5 + 216) = sub_22D72E620();
  v26 = "e.AlarmKitCore.AlarmManager";
  sub_22D72E330();
  v30 = MEMORY[0x277D84F90];
  sub_22D72E6E0();
  v15(v23, v14, v16);
  v17 = sub_22D72E620();
  v18 = MEMORY[0x277D84FA0];
  *(a5 + 224) = v17;
  *(a5 + 232) = v18;
  *(a5 + 240) = -1;
  *(a5 + 248) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF598, &qword_22D730598);
  swift_allocObject();
  *(a5 + 256) = sub_22D72DC20();
  *(a5 + 264) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFF10, &qword_22D731960);
  swift_allocObject();
  *(a5 + 272) = sub_22D72DC20();
  *(a5 + 280) = 0;
  v19 = OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate;
  v20 = sub_22D72D730();
  (*(*(v20 - 8) + 56))(a5 + v19, 1, 1, v20);
  sub_22D6B6CF0(&v40, a5 + 56);
  sub_22D6B6CF0(&v37, a5 + 96);
  sub_22D6B6CF0(&v34, a5 + 136);
  sub_22D6B6CF0(&v31, a5 + 176);
  return a5;
}

void *sub_22D7297DC(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5E0, &qword_22D7305D0);
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x28223BE20](v7);
  v36 = &v27 - v9;
  v32 = sub_22D72E5F0();
  v39 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22D72E370();
  MEMORY[0x28223BE20](v13 - 8);
  v43[3] = type metadata accessor for AuthorizationPersistentStore();
  v43[4] = &off_2840CCF90;
  v43[0] = a1;
  v42[3] = type metadata accessor for AppEventObserver();
  v42[4] = &off_2840CDAA8;
  v42[0] = a2;
  v14 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v31 = "itCore.xpc.authorizationServer";
  sub_22D72E330();
  v40 = MEMORY[0x277D84F90];
  v30 = sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  v15 = *MEMORY[0x277D85260];
  v16 = *(v39 + 104);
  v39 += 104;
  v28 = v11;
  v17 = v32;
  v16(v11, v15, v32);
  v33 = v14;
  v18 = sub_22D72E620();
  v19 = v34;
  v34[2] = v18;
  v31 = "uthorizationManager";
  sub_22D72E330();
  v40 = MEMORY[0x277D84F90];
  sub_22D72E6E0();
  v16(v28, v15, v17);
  v19[3] = sub_22D72E620();
  v19[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF630, &unk_22D730700);
  swift_allocObject();
  v19[5] = sub_22D72DC20();
  v19[16] = MEMORY[0x277D84FA0];
  sub_22D6D42A8(v43, (v19 + 6));
  sub_22D6D42A8(v42, (v19 + 11));
  __swift_project_boxed_opaque_existential_1(v19 + 11, v19[14]);
  v40 = sub_22D719D58();
  v41 = v19[2];
  v20 = v41;
  v21 = sub_22D72E5E0();
  v22 = v35;
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFF30, &unk_22D7305D8);
  sub_22D6D58D4(&qword_281457230, &qword_27D9FFF30, &unk_22D7305D8, MEMORY[0x277CBCD90]);
  sub_22D72CA18();
  v24 = v36;
  sub_22D72DCA0();
  sub_22D6D5984(v22, &qword_27D9FF9B0, &qword_22D7302B0);

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_281457278, &qword_27D9FF5E0, &qword_22D7305D0, MEMORY[0x277CBCD60]);
  v25 = v37;
  sub_22D72DCB0();

  (*(v38 + 8))(v24, v25);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v19;
}

void *sub_22D729E9C(uint64_t a1, void *a2)
{
  v4 = sub_22D72E5F0();
  v13 = *(v4 - 8);
  v14 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22D72E370();
  MEMORY[0x28223BE20](v8 - 8);
  v17 = type metadata accessor for Daemon();
  v18 = &off_2840CDD70;
  *&v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x277D84F98];
  a2[7] = v9;
  a2[8] = v10;
  v12[1] = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E330();
  v15 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  (*(v13 + 104))(v6, *MEMORY[0x277D85260], v14);
  a2[9] = sub_22D72E620();
  sub_22D6B6CF0(&v16, (a2 + 2));
  return a2;
}

void *sub_22D72A164(uint64_t a1, void *a2)
{
  v4 = sub_22D72E5F0();
  v13 = *(v4 - 8);
  v14 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22D72E370();
  MEMORY[0x28223BE20](v8 - 8);
  v17 = type metadata accessor for Daemon();
  v18 = &off_2840CDD48;
  *&v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x277D84F98];
  a2[7] = v9;
  a2[8] = v10;
  v12[1] = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E330();
  v15 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  (*(v13 + 104))(v6, *MEMORY[0x277D85260], v14);
  a2[9] = sub_22D72E620();
  sub_22D6B6CF0(&v16, (a2 + 2));
  return a2;
}

void sub_22D72A42C(uint64_t a1, void *a2, char *a3)
{
  v22 = a2;
  v21 = sub_22D72E5F0();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22D72E370();
  MEMORY[0x28223BE20](v9 - 8);
  v27[3] = type metadata accessor for StateCaptureService();
  v27[4] = &off_2840CD308;
  v27[0] = a1;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_listener] = 0;
  v10 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v20[0] = "v16@?0@NSDictionary8";
  v20[1] = v10;
  sub_22D72E350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v21);
  v11 = v22;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_requestProcessingQueue] = sub_22D72E620();
  sub_22D6D42A8(v27, &a3[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager]);
  v12 = type metadata accessor for StateCaptureServer();
  v26.receiver = a3;
  v26.super_class = v12;
  v13 = objc_msgSendSuper2(&v26, sel_init);
  v24 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22D72CA00;
  *(v14 + 24) = &v23;
  aBlock[4] = sub_22D713548;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_223;
  v15 = _Block_copy(aBlock);
  v16 = objc_opt_self();
  v17 = v13;

  v18 = [v16 listenerWithConfigurator_];
  _Block_release(v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v27);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v19 = *&v17[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_listener];
    *&v17[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_listener] = v18;
  }
}

void sub_22D72A85C(uint64_t a1, void *a2, char *a3)
{
  v24 = a2;
  v5 = sub_22D72E5F0();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22D72E370();
  MEMORY[0x28223BE20](v8 - 8);
  v29[3] = type metadata accessor for AlarmManager(0);
  v29[4] = &off_2840CC640;
  v29[0] = a1;
  v9 = OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&a3[v9] = v10;
  v11 = MEMORY[0x277D84FA0];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_clients] = MEMORY[0x277D84FA0];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_subscriptions] = v11;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_alarms] = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_listener] = 0;
  sub_22D6D42A8(v29, &a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager]);
  sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  (*(v22 + 104))(v21, *MEMORY[0x277D85268], v23);
  v12 = v24;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_queue] = sub_22D72E620();
  v13 = type metadata accessor for AlarmServer();
  v28.receiver = a3;
  v28.super_class = v13;
  v14 = objc_msgSendSuper2(&v28, sel_init);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22D72CA08;
  *(v15 + 24) = &v25;
  aBlock[4] = sub_22D72CBB0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_230;
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_self();
  v18 = v14;

  v19 = [v17 listenerWithConfigurator_];
  _Block_release(v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v29);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v20 = *&v18[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_listener];
    *&v18[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_listener] = v19;
  }
}

void sub_22D72ACF0(uint64_t a1, void *a2, char *a3)
{
  v25 = a2;
  v5 = sub_22D72E5F0();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22D72E370();
  MEMORY[0x28223BE20](v9 - 8);
  v30[3] = type metadata accessor for AuthorizationManager();
  v30[4] = &off_2840CCBF0;
  v30[0] = a1;
  v10 = OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&a3[v10] = v11;
  v12 = MEMORY[0x277D84FA0];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock_clients] = MEMORY[0x277D84FA0];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_subscriptions] = v12;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_listener] = 0;
  sub_22D6D42A8(v30, &a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager]);
  v22 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  (*(v23 + 104))(v7, *MEMORY[0x277D85268], v24);
  v13 = v25;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_queue] = sub_22D72E620();
  v14 = type metadata accessor for AuthorizationServer();
  v29.receiver = a3;
  v29.super_class = v14;
  v15 = objc_msgSendSuper2(&v29, sel_init);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22D72CA10;
  *(v16 + 24) = &v26;
  aBlock[4] = sub_22D72CBB0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_237;
  v17 = _Block_copy(aBlock);
  v18 = objc_opt_self();
  v19 = v15;

  v20 = [v18 listenerWithConfigurator_];
  _Block_release(v17);

  __swift_destroy_boxed_opaque_existential_1Tm(v30);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v21 = *&v19[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_listener];
    *&v19[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_listener] = v20;
  }
}

void *sub_22D72B168(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for AuthorizationPersistentStore();
  v20 = &off_2840CCF90;
  v18[0] = a1;
  v16 = type metadata accessor for AppEventObserver();
  v17 = &off_2840CDAA8;
  v15[0] = a2;
  type metadata accessor for AuthorizationManager();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  MEMORY[0x28223BE20](v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  MEMORY[0x28223BE20](v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_22D7297DC(*v7, *v11, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v13;
}

uint64_t sub_22D72B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for ActivityManager();
  v38 = &off_2840CBDC8;
  v36[0] = a1;
  v34 = type metadata accessor for AppEventObserver();
  v35 = &off_2840CDAA8;
  v33[0] = a2;
  v31 = type metadata accessor for AuthorizationManager();
  v32 = &off_2840CCBF0;
  v30[0] = a3;
  v28 = type metadata accessor for AlarmPersistentStore();
  v29 = &off_2840CCE58;
  v27[0] = a4;
  type metadata accessor for AlarmManager(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  MEMORY[0x28223BE20](v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x28223BE20](v13);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x28223BE20](v17);
  v19 = (v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  MEMORY[0x28223BE20](v21);
  v23 = (v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_22D7292EC(*v11, *v15, *v19, *v23, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return v25;
}

uint64_t sub_22D72B698(uint64_t a1)
{
  v8[3] = type metadata accessor for ActivityManager();
  v8[4] = &off_2840CBDB0;
  v8[0] = a1;
  v2 = qword_2814579C0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_2814579C8;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_22D6F5B28(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_22D72B7BC(uint64_t a1)
{
  v8[3] = type metadata accessor for AlarmManager(0);
  v8[4] = &off_2840CC628;
  v8[0] = a1;
  v2 = qword_2814579C0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_2814579C8;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_22D6F5B28(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_22D72B8E0(uint64_t a1)
{
  v8[3] = type metadata accessor for AuthorizationManager();
  v8[4] = &off_2840CCBD8;
  v8[0] = a1;
  v2 = qword_2814579C0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_2814579C8;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_22D6F4510(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_22D72BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v34 = a5;
  v35 = a4;
  v33 = a3;
  v30 = sub_22D72E5F0();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22D72E370();
  MEMORY[0x28223BE20](v13 - 8);
  v42[3] = type metadata accessor for MobileKeybagFirstLockStateProvider();
  v42[4] = &off_2840CCDF0;
  v42[0] = a1;
  v41[3] = type metadata accessor for AlarmPersistentStore();
  v41[4] = &off_2840CCE58;
  v41[0] = a2;
  *(a6 + 184) = 0;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3C0, &qword_22D730270);
  swift_allocObject();
  *(a6 + 192) = sub_22D72DC20();
  *(a6 + 200) = 0;
  swift_allocObject();
  *(a6 + 208) = sub_22D72DC20();
  v32 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v31 = "larmManager.callout";
  sub_22D72E330();
  *&v38 = MEMORY[0x277D84F90];
  v29 = sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  v14 = *MEMORY[0x277D85260];
  v15 = v9 + 104;
  v16 = *(v9 + 104);
  v27 = v15;
  v26 = v11;
  v17 = v30;
  v16(v11, v14, v30);
  *(a6 + 216) = sub_22D72E620();
  v31 = "e.AlarmKitCore.AlarmManager";
  sub_22D72E330();
  *&v38 = MEMORY[0x277D84F90];
  v18 = v33;
  sub_22D72E6E0();
  v16(v26, v14, v17);
  v19 = sub_22D72E620();
  v20 = MEMORY[0x277D84F98];
  *(a6 + 224) = v19;
  *(a6 + 232) = v20;
  *(a6 + 240) = MEMORY[0x277D84FA0];
  *(a6 + 288) = v20;
  sub_22D6D42A8(v42, a6 + 248);
  sub_22D6D42A8(v41, a6 + 96);
  sub_22D6D5A4C(v18, &v36, &unk_27D9FFF20, &unk_22D731968);
  if (v37)
  {
    sub_22D6D5984(v18, &unk_27D9FFF20, &unk_22D731968);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    sub_22D6B6CF0(&v36, &v38);
  }

  else
  {
    v21 = sub_22D72D8C0();
    swift_allocObject();
    v22 = sub_22D72D8B0();
    v39 = v21;
    v40 = &off_2840CBD90;
    *&v38 = v22;
    sub_22D6D5984(v18, &unk_27D9FFF20, &unk_22D731968);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    if (v37)
    {
      sub_22D6D5984(&v36, &unk_27D9FFF20, &unk_22D731968);
    }
  }

  sub_22D6B6CF0(&v38, a6 + 136);
  v23 = 25;
  if ((v34 & 1) == 0)
  {
    v23 = v35;
  }

  *(a6 + 176) = v23;
  return a6;
}

double sub_22D72BF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v7 = sub_22D72E300();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72E370();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v45 = a3;
    sub_22D72D5A0();
    swift_allocObject();
    sub_22D72D590();
    sub_22D7244E4(&qword_27D9FFE70, type metadata accessor for Alarm, &unk_22D731224);
    v29 = sub_22D72D580();
    v31 = v30;
    sub_22D72D750();
    v32 = objc_allocWithZone(MEMORY[0x277CEA570]);
    sub_22D6D3F68(v29, v31);
    v33 = sub_22D72E480();

    v34 = sub_22D72D640();
    sub_22D6D5664(v29, v31);
    v35 = [v32 initWithIdentifier:v33 data:v34 attributes:0];

    v36 = swift_allocObject();
    v37 = v50;
    v36[2] = v4;
    v36[3] = v37;
    v36[4] = v45;
    v56 = sub_22D72C810;
    v57 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_22D726C60;
    v55 = &block_descriptor_152;
    v38 = _Block_copy(&aBlock);
    v39 = v4;

    [v17 updateAlarm:v35 completion:v38];
    swift_unknownObjectRelease();
    _Block_release(v38);

    sub_22D6D5664(v29, v31);
  }

  else
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v18 = sub_22D72DBE0();
    __swift_project_value_buffer(v18, qword_27DA01718);
    sub_22D6F37E4(a1, v15);
    v19 = sub_22D72DBB0();
    v20 = sub_22D72E580();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136446210;
      sub_22D72D7A0();
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_22D72E960();
      v26 = v25;
      sub_22D6F3848(v15);
      v27 = sub_22D72891C(v24, v26, &aBlock);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_22D6B4000, v19, v20, "%{public}s: Cannot update alarm: daemon has no delegate", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2318D0420](v23, -1, -1);
      v28 = v22;
      a3 = v45;
      MEMORY[0x2318D0420](v28, -1, -1);
    }

    else
    {

      sub_22D6F3848(v15);
    }

    v40 = swift_allocObject();
    *(v40 + 16) = v50;
    *(v40 + 24) = a3;
    v56 = sub_22D72C7D8;
    v57 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_22D6C0FD8;
    v55 = &block_descriptor_140_0;
    v41 = _Block_copy(&aBlock);

    sub_22D72E330();
    v51 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v42 = v49;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v12, v9, v41);
    _Block_release(v41);
    (*(v48 + 8))(v9, v42);
    (*(v46 + 8))(v12, v47);
  }

  return result;
}

uint64_t objectdestroy_112Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_88Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_22D72C934()
{
  v1 = *(v0 + 16);
  sub_22D6D44C0(MEMORY[0x277D84F90]);
  v1();
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

unint64_t sub_22D72CA18()
{
  result = qword_281457180;
  if (!qword_281457180)
  {
    sub_22D6FCE80(255, &qword_281457170, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281457180);
  }

  return result;
}

uint64_t sub_22D72CBD8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_22D72CC14(uint64_t a1)
{
  v2 = sub_22D72CF94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D72CC50(uint64_t a1)
{
  v2 = sub_22D72CF94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22D72CCB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFF58, &qword_22D731A80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22D72CF94();
  sub_22D72EA60();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_22D72CE38()
{
  result = qword_27D9FFF38;
  if (!qword_27D9FFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF38);
  }

  return result;
}

unint64_t sub_22D72CE90()
{
  result = qword_27D9FFF40;
  if (!qword_27D9FFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF40);
  }

  return result;
}

unint64_t sub_22D72CEE8()
{
  result = qword_27D9FFF48;
  if (!qword_27D9FFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF48);
  }

  return result;
}

unint64_t sub_22D72CF40()
{
  result = qword_27D9FFF50;
  if (!qword_27D9FFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF50);
  }

  return result;
}

unint64_t sub_22D72CF94()
{
  result = qword_27D9FFF60;
  if (!qword_27D9FFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF60);
  }

  return result;
}

unint64_t sub_22D72CFFC()
{
  result = qword_27D9FFF68;
  if (!qword_27D9FFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF68);
  }

  return result;
}

unint64_t sub_22D72D054()
{
  result = qword_27D9FFF70;
  if (!qword_27D9FFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF70);
  }

  return result;
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

uint64_t sub_22D72D1A8()
{
  v0 = sub_22D72DBE0();
  __swift_allocate_value_buffer(v0, qword_27DA016E8);
  __swift_project_value_buffer(v0, qword_27DA016E8);
  return sub_22D72DBC0();
}

uint64_t sub_22D72D228()
{
  v0 = sub_22D72DBE0();
  __swift_allocate_value_buffer(v0, qword_27DA01700);
  __swift_project_value_buffer(v0, qword_27DA01700);
  return sub_22D72DBC0();
}

uint64_t sub_22D72D340(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22D72DBE0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_22D72DBC0();
}

unint64_t sub_22D72D3B8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x7974697669746361;
    v7 = 0x7265536D72616C61;
    v8 = 0x746E657645707061;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E614D6D72616C61;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x67616279656BLL;
    v2 = 0x7061436574617473;
    if (a1 != 9)
    {
      v2 = 1701536119;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    v4 = 0x6E6F6D656164;
    if (a1 != 6)
    {
      v4 = 0x6573616261746164;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}