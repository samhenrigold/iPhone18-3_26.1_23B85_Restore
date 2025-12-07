uint64_t sub_247F33744()
{
  sub_247F3A7D8();
  MEMORY[0x24C1BFF20](0);
  return sub_247F3A7F8();
}

uint64_t sub_247F33788(uint64_t a1)
{
  sub_247F3A7D8();
  MEMORY[0x24C1BFF20](0);
  return sub_247F3A7F8();
}

uint64_t ContinuityPairing.fetchContinuityDevices()()
{
  v1[4] = v0;
  v2 = sub_247F3A428();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80600, &qword_247F3AEA8);
  v1[9] = swift_task_alloc();
  v3 = sub_247F3A518();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80608, &qword_247F3AEB0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = sub_247F3A468();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = sub_247F3A528();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80610, &qword_247F3AEB8);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80618, &qword_247F3AEC0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = sub_247F3A588();
  v1[27] = v6;
  v1[28] = *(v6 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v7 = sub_247F3A5B8();
  v1[32] = v7;
  v1[33] = *(v7 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80620, &qword_247F3AEC8);
  v1[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80628, &qword_247F3AED0);
  v1[37] = v8;
  v1[38] = *(v8 - 8);
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247F33C6C, 0, 0);
}

uint64_t sub_247F33C6C()
{
  v0[40] = *(v0[4] + OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80638, &qword_247F3AED8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_247F3AE60;

  sub_247F3A5A8();
  sub_247F3A598();
  v0[2] = v1;
  sub_247F3A168(&qword_27EE80640, MEMORY[0x277D4B7F0], MEMORY[0x277D4B7F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80648, &qword_247F3AEE0);
  sub_247F35018();
  sub_247F3A748();
  sub_247F3A5E8();
  sub_247F3A168(&qword_27EE80658, MEMORY[0x277D4B808], MEMORY[0x277D4B810]);
  v3 = sub_247F3A6C8();

  return MEMORY[0x2822009F8](sub_247F33E24, v3, v2);
}

uint64_t sub_247F33E24()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  sub_247F3A5C8();

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_247F33EC4, 0, 0);
}

uint64_t sub_247F33EC4(uint64_t a1)
{
  swift_getOpaqueTypeConformance2();
  sub_247F3A708();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v1 + 328) = v3;
  *v3 = v1;
  v3[1] = sub_247F33FD8;
  v4 = *(v1 + 296);

  return MEMORY[0x282200308](v1 + 24, v4, AssociatedConformanceWitness);
}

uint64_t sub_247F33FD8()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_247F34D24;
  }

  else
  {
    v2 = sub_247F340EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247F340EC()
{
  v1 = v0[3];
  if (v1)
  {
    v107 = *(v1 + 16);
    if (v107)
    {
      v2 = 0;
      v3 = v0[28];
      v100 = v0[22];
      v4 = v0[20];
      v98 = (v4 + 104);
      v96 = (v4 + 56);
      v114 = (v4 + 48);
      v83 = (v4 + 32);
      v87 = (v4 + 8);
      v5 = &unk_27EE80618;
      v109 = (v3 + 8);
      v94 = *MEMORY[0x277D4B7A0];
      v102 = v3;
      v104 = v0[3];
      v89 = (v3 + 32);
      v91 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v2 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        v7 = v0[26];
        v8 = v0[25];
        v9 = v0[23];
        v10 = v0[19];
        v110 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v113 = *(v102 + 72);
        v112 = *(v102 + 16);
        (v112)(v0[31], v1 + v110 + v113 * v2, v0[27]);
        sub_247F3A4E8();
        (*v98)(v8, v94, v10);
        (*v96)(v8, 0, 1, v10);
        v11 = *(v100 + 48);
        sub_247F39D20(v7, v9, v5, &qword_247F3AEC0);
        sub_247F39D20(v8, v9 + v11, v5, &qword_247F3AEC0);
        v12 = v5;
        v13 = *v114;
        v14 = (*v114)(v9, 1, v10);
        v15 = v0[19];
        if (v14 == 1)
        {
          break;
        }

        sub_247F39D20(v0[23], v0[24], v12, &qword_247F3AEC0);
        v18 = v13(v9 + v11, 1, v15);
        v92 = v0[26];
        v20 = v0[24];
        v19 = v0[25];
        if (v18 == 1)
        {
          v6 = v0[19];
          sub_247F39D88(v0[25], v12, &qword_247F3AEC0);
          sub_247F39D88(v92, v12, &qword_247F3AEC0);
          (*v87)(v20, v6);
          v5 = v12;
LABEL_5:
          sub_247F39D88(v0[23], &qword_27EE80610, &qword_247F3AEB8);
          goto LABEL_6;
        }

        v84 = v0[24];
        v85 = v0[23];
        v21 = v0[21];
        v22 = v0[19];
        (*v83)(v21, v9 + v11, v22);
        sub_247F3A168(&qword_27EE80668, MEMORY[0x277D4B7B0], MEMORY[0x277D4B7B8]);
        v23 = sub_247F3A638();
        v24 = *v87;
        (*v87)(v21, v22);
        sub_247F39D88(v19, v12, &qword_247F3AEC0);
        sub_247F39D88(v92, v12, &qword_247F3AEC0);
        v24(v84, v22);
        sub_247F39D88(v85, v12, &qword_247F3AEC0);
        v5 = v12;
        if (v23)
        {
          goto LABEL_14;
        }

LABEL_6:
        (*v109)(v0[31], v0[27]);
LABEL_7:
        ++v2;
        v1 = v104;
        if (v107 == v2)
        {

          v32 = *(v91 + 16);
          if (v32)
          {
            v33 = v91 + v110;
            v34 = v0[6];
            v99 = (v34 + 56);
            v103 = (v34 + 48);
            v93 = (v34 + 8);
            v97 = (v0[16] + 8);
            v35 = v0[11];
            v95 = (v35 + 48);
            v90 = (v35 + 32);
            v86 = (v34 + 32);
            v117 = MEMORY[0x277D84F90];
            v88 = (v35 + 8);
            while (1)
            {
              v115 = v32;
              v36 = v0[14];
              v37 = v0[5];
              v111 = v33;
              v112(v0[29]);
              sub_247F3A578();
              sub_247F3A4D8();
              sub_247F3A548();
              (*v99)(v36, 1, 1, v37);
              v38 = sub_247F3A648();

              v39 = sub_247F3A438();
              v40 = sub_247F3A438();
              v101 = *v103;
              if ((*v103)(v36, 1, v37) == 1)
              {
                v41 = 0;
              }

              else
              {
                v42 = v0[14];
                v43 = v0[5];
                v41 = sub_247F3A3F8();
                (*v93)(v42, v43);
              }

              v45 = v0[17];
              v44 = v0[18];
              v46 = v0[15];
              v47 = v0[9];
              v105 = v0[10];
              v108 = [objc_allocWithZone(DSContinuityDevice) initWithName:v38 deviceID:v39 relationshipID:v40 initialDiscoveryDate:v41];

              v48 = *v97;
              (*v97)(v45, v46);
              v48(v44, v46);
              sub_247F3A558();
              if ((*v95)(v47, 1, v105) == 1)
              {
                v49 = v0[9];
                v50 = &unk_27EE80600;
                v51 = &unk_247F3AEA8;
              }

              else
              {
                v52 = v0[13];
                v53 = v0[5];
                (*v90)(v0[12], v0[9], v0[10]);
                sub_247F3A4F8();
                v54 = v101(v52, 1, v53);
                v55 = v0[12];
                v56 = v0[13];
                if (v54 != 1)
                {
                  v58 = v0[7];
                  v59 = v0[8];
                  v60 = v0[5];
                  v106 = v0[10];
                  (*v86)(v59, v56, v60);
                  sub_247F3A508();
                  sub_247F38210(v58);
                  v61 = *v93;
                  (*v93)(v58, v60);
                  v62 = sub_247F3A648();

                  v57 = v108;
                  [v108 setFormattedSessionStart_];

                  sub_247F3A508();
                  sub_247F39430(v58, v59);
                  v61(v58, v60);
                  v63 = sub_247F3A648();

                  [v108 setFormattedSessionDuration_];

                  v61(v59, v60);
                  (*v88)(v55, v106);
                  goto LABEL_30;
                }

                (*v88)(v0[12], v0[10]);
                v49 = v56;
                v50 = &unk_27EE80608;
                v51 = &unk_247F3AEB0;
              }

              sub_247F39D88(v49, v50, v51);
              v57 = v108;
LABEL_30:
              sub_247F3A538();
              if (v64)
              {
                v65 = sub_247F3A648();

                [v57 setMarketingName_];
              }

              v66 = v57;
              MEMORY[0x24C1BFDC0]();
              if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_247F3A6A8();
              }

              v67 = v0[29];
              v68 = v0[27];
              sub_247F3A6B8();

              (*v109)(v67, v68);
              v33 = v111 + v113;
              v32 = v115 - 1;
              if (v115 == 1)
              {
                v70 = v0[38];
                v69 = v0[39];
                v71 = v0[37];
                v116 = v117;

                (*(v70 + 8))(v69, v71);
                goto LABEL_42;
              }
            }
          }

          if (qword_27EE806F0 != -1)
          {
            swift_once();
          }

          v82 = sub_247F3A618();
          __swift_project_value_buffer(v82, qword_27EE806F8);
          v73 = sub_247F3A5F8();
          v74 = sub_247F3A718();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            v76 = "No actively paired devices";
            goto LABEL_40;
          }

          goto LABEL_41;
        }
      }

      v16 = v0[26];
      sub_247F39D88(v0[25], v12, &qword_247F3AEC0);
      sub_247F39D88(v16, v12, &qword_247F3AEC0);
      v17 = v13(v9 + v11, 1, v15);
      v5 = v12;
      if (v17 == 1)
      {
        sub_247F39D88(v0[23], v12, &qword_247F3AEC0);
LABEL_14:
        v25 = v5;
        v26 = *v89;
        (*v89)(v0[30], v0[31], v0[27]);
        v27 = v91;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_247F37CF8(0, *(v91 + 16) + 1, 1);
          v27 = v91;
        }

        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_247F37CF8((v28 > 1), v29 + 1, 1);
          v27 = v91;
        }

        v30 = v0[30];
        v31 = v0[27];
        *(v27 + 16) = v29 + 1;
        v91 = v27;
        v26(v27 + v110 + v29 * v113, v30, v31);
        v5 = v25;
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (qword_27EE806F0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v72 = sub_247F3A618();
  __swift_project_value_buffer(v72, qword_27EE806F8);
  v73 = sub_247F3A5F8();
  v74 = sub_247F3A718();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "No eligible devices found";
LABEL_40:
    _os_log_impl(&dword_247F32000, v73, v74, v76, v75, 2u);
    MEMORY[0x24C1C0320](v75, -1, -1);
  }

LABEL_41:
  v78 = v0[38];
  v77 = v0[39];
  v79 = v0[37];

  (*(v78 + 8))(v77, v79);
  v116 = MEMORY[0x277D84F90];
LABEL_42:

  v80 = v0[1];

  return v80(v116);
}

uint64_t sub_247F34D24()
{
  (*(v0[38] + 8))(v0[39], v0[37]);
  if (qword_27EE806F0 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = sub_247F3A618();
  __swift_project_value_buffer(v2, qword_27EE806F8);
  MEMORY[0x24C1C0240](v1);
  v3 = sub_247F3A5F8();
  v4 = sub_247F3A728();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C1C0240](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_247F32000, v3, v4, "Device stream failed; %{public}@", v6, 0xCu);
    sub_247F39D88(v7, &qword_27EE80660, &qword_247F3AEE8);
    MEMORY[0x24C1C0320](v7, -1, -1);
    MEMORY[0x24C1C0320](v6, -1, -1);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
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

unint64_t sub_247F35018()
{
  result = qword_27EE80650;
  if (!qword_27EE80650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE80648, &qword_247F3AEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE80650);
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

uint64_t sub_247F35240(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_247F352E8;

  return ContinuityPairing.fetchContinuityDevices()();
}

uint64_t sub_247F352E8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_247F3A268();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_247F3A0BC();
    v10 = sub_247F3A698();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t ContinuityPairing.unpairDevice(with:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_247F3A468();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80670, &qword_247F3AEF8);
  v2[10] = swift_task_alloc();
  v4 = sub_247F3A588();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80628, &qword_247F3AED0);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = sub_247F3A5B8();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80620, &qword_247F3AEC8);
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247F3570C, 0, 0);
}

uint64_t sub_247F3570C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager;
  v0[24] = OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager;
  v0[25] = *(v1 + v2);
  v0[2] = MEMORY[0x277D84F90];
  sub_247F3A168(&qword_27EE80640, MEMORY[0x277D4B7F0], MEMORY[0x277D4B7F8]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80648, &qword_247F3AEE0);
  sub_247F35018();
  sub_247F3A748();
  sub_247F3A5E8();
  sub_247F3A168(&qword_27EE80658, MEMORY[0x277D4B808], MEMORY[0x277D4B810]);
  v4 = sub_247F3A6C8();

  return MEMORY[0x2822009F8](sub_247F35880, v4, v3);
}

uint64_t sub_247F35880()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_247F3A5C8();

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_247F35920, 0, 0);
}

uint64_t sub_247F35920()
{
  (*(v0[21] + 16))(v0[22], v0[23], v0[20]);
  swift_getOpaqueTypeConformance2();
  sub_247F3A708();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_247F35A50;
  v3 = v0[14];

  return MEMORY[0x282200308](v0 + 3, v3, AssociatedConformanceWitness);
}

uint64_t sub_247F35A50()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_247F36024;
  }

  else
  {
    v3 = sub_247F35BB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247F35BB8()
{
  v1 = v0[3];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  if (!v1)
  {
    (*(v4 + 8))(v2, v3);
LABEL_11:
    if (qword_27EE806F0 != -1)
    {
      swift_once();
    }

    v14 = sub_247F3A618();
    __swift_project_value_buffer(v14, qword_27EE806F8);
    v15 = sub_247F3A5F8();
    v16 = sub_247F3A728();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_247F32000, v15, v16, "Fetch error: no known devices.", v17, 2u);
      MEMORY[0x24C1C0320](v17, -1, -1);
    }

    v13 = v0[1];
    goto LABEL_16;
  }

  (*(v4 + 8))(v2, v3);
  if (!*(v1 + 16))
  {

    goto LABEL_11;
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[4];
  *(swift_task_alloc() + 16) = v8;
  sub_247F36728(sub_247F39858, v1, v7);

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_247F39D88(v0[10], &qword_27EE80670, &qword_247F3AEF8);
    if (qword_27EE806F0 != -1)
    {
      swift_once();
    }

    v9 = sub_247F3A618();
    __swift_project_value_buffer(v9, qword_27EE806F8);
    v10 = sub_247F3A5F8();
    v11 = sub_247F3A728();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_247F32000, v10, v11, "Device to unpair is not in devices list.", v12, 2u);
      MEMORY[0x24C1C0320](v12, -1, -1);
    }

    sub_247F39888();
    swift_allocError();
    swift_willThrow();

    v13 = v0[1];
LABEL_16:

    return v13();
  }

  v19 = v0[24];
  v20 = v0[5];
  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v0[28] = *(v20 + v19);

  sub_247F3A548();
  v23 = (*MEMORY[0x277D4B7D8] + MEMORY[0x277D4B7D8]);
  v21 = swift_task_alloc();
  v0[29] = v21;
  *v21 = v0;
  v21[1] = sub_247F36104;
  v22 = v0[9];

  return v23(v22);
}

uint64_t sub_247F36024()
{
  (*(v0[21] + 8))(v0[23], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247F36104()
{
  v2 = *v1;
  v2[30] = v0;

  v3 = v2[9];
  v4 = v2[7];
  v5 = v2[6];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_247F36564;
  }

  else
  {
    v2[31] = v7;
    v2[32] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_247F362B0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_247F362B0()
{
  v28 = v0;
  if (qword_27EE806F0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = sub_247F3A618();
  __swift_project_value_buffer(v5, qword_27EE806F8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_247F3A5F8();
  v7 = sub_247F3A738();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[31];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[6];
  if (v8)
  {
    v26 = v0[11];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136380675;
    sub_247F3A168(&qword_27EE80680, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_247F3A788();
    v18 = v9;
    v19 = v17;
    v25 = v10;
    v21 = v20;
    v18(v13, v14);
    v22 = sub_247F37750(v19, v21, &v27);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_247F32000, v6, v7, "Finished unpairing device with ID: %{private}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1C0320](v16, -1, -1);
    MEMORY[0x24C1C0320](v15, -1, -1);

    (*(v11 + 8))(v25, v26);
  }

  else
  {

    v9(v13, v14);
    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_247F36564()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247F36644(uint64_t a1, uint64_t a2)
{
  v2 = sub_247F3A468();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F3A4D8();
  v6 = sub_247F3A448();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_247F36728@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_247F3A588();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_247F36A84(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_247F3A468();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_247F3A458();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_247F36BB0;

  return ContinuityPairing.unpairDevice(with:)(v7);
}

uint64_t sub_247F36BB0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = sub_247F3A268();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v12 = *(v9 + 8);

  return v12();
}

id ContinuityPairing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContinuityPairing.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager;
  sub_247F3A5E8();
  *&v0[v2] = sub_247F3A5D8();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ContinuityPairing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_247F36EE8()
{
  v0 = sub_247F3A618();
  __swift_allocate_value_buffer(v0, qword_27EE806F8);
  __swift_project_value_buffer(v0, qword_27EE806F8);
  return sub_247F3A608();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_247F36FA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_247F3A224;

  return v6();
}

uint64_t sub_247F37088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_247F37170;

  return v7();
}

uint64_t sub_247F37170()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_247F37264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80690, &qword_247F3B018);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_247F39D20(a3, v23 - v10, &qword_27EE80690, &qword_247F3B018);
  v12 = sub_247F3A6F8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_247F39D88(v11, &qword_27EE80690, &qword_247F3B018);
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

  sub_247F3A6E8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_247F3A6C8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_247F3A668() + 32;
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

    sub_247F39D88(a3, &qword_27EE80690, &qword_247F3B018);

    return v21;
  }

LABEL_8:
  sub_247F39D88(a3, &qword_27EE80690, &qword_247F3B018);
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

uint64_t sub_247F37560(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_247F37658;

  return v6(a1);
}

uint64_t sub_247F37658()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_247F37750(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247F3781C(v11, 0, 0, 1, a1, a2);
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
    sub_247F3A108(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_247F3781C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247F37928(a5, a6);
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
    result = sub_247F3A778();
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

void *sub_247F37928(uint64_t a1, unint64_t a2)
{
  v3 = sub_247F37974(a1, a2);
  sub_247F37AA4(&unk_285A11580);
  return v3;
}

void *sub_247F37974(uint64_t a1, unint64_t a2)
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

  v6 = sub_247F37B90(v5, 0);
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

  result = sub_247F3A778();
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
        v10 = sub_247F3A678();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247F37B90(v10, 0);
        result = sub_247F3A768();
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

uint64_t sub_247F37AA4(uint64_t result)
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

  result = sub_247F37C04(result, v11, 1, v3);
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

void *sub_247F37B90(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE806A0, &qword_247F3B088);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_247F37C04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE806A0, &qword_247F3B088);
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

void *sub_247F37CF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_247F37D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_247F37D18(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE806E0, &qword_247F3B0A0);
  v10 = *(sub_247F3A588() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_247F3A588() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_247F37EF0(uint64_t a1)
{
  v2 = sub_247F3A4A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE806C8, &qword_247F3B098);
    v9 = sub_247F3A758();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_247F3A168(&qword_27EE806D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_247F3A628();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_247F3A168(&qword_27EE806D8, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_247F3A638();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_247F38210(uint64_t a1)
{
  v112 = sub_247F3A328();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_247F3A368();
  v145 = *(v3 - 8);
  v146 = v3;
  MEMORY[0x28223BE20](v3);
  v144 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_247F3A2F8();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v136 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_247F3A308();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v137 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_247F3A2C8();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v131 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_247F3A348();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_247F3A388();
  v125 = *(v143 - 8);
  v9 = MEMORY[0x28223BE20](v143);
  v109 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v108 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v129 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v132 = &v108 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v135 = &v108 - v18;
  MEMORY[0x28223BE20](v17);
  v138 = &v108 - v19;
  v20 = sub_247F3A4A8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v124 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_247F3A3B8();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v118 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_247F3A3D8();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_247F3A3E8();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v116 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_247F3A258();
  v153 = *(v26 - 8);
  v154 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_247F3A428();
  v150 = *(v158 - 8);
  v29 = MEMORY[0x28223BE20](v158);
  v149 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v147 = &v108 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v108 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v108 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v108 - v39;
  v41 = sub_247F3A4C8();
  v151 = *(v41 - 8);
  v152 = v41;
  MEMORY[0x28223BE20](v41);
  v43 = &v108 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F3A498();
  sub_247F3A408();
  v156 = v40;
  sub_247F3A478();
  v148 = a1;
  sub_247F3A478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE806B0, &qword_247F3B090);
  v44 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_247F3AE70;
  v46 = *MEMORY[0x277CC9968];
  v114 = *(v21 + 104);
  v114(v45 + v44, v46, v20);
  sub_247F37EF0(v45);
  swift_setDeallocating();
  v113 = *(v21 + 8);
  v113(v45 + v44, v20);
  swift_deallocClassInstance();
  v157 = v38;
  v155 = v43;
  sub_247F3A488();

  v47 = sub_247F3A248();
  v49 = v48;
  result = (*(v153 + 8))(v28, v154);
  if (v49)
  {
    if (qword_27EE806F0 != -1)
    {
      swift_once();
    }

    v51 = sub_247F3A618();
    __swift_project_value_buffer(v51, qword_27EE806F8);
    v52 = v150;
    v53 = *(v150 + 16);
    v54 = v147;
    v154 = v35;
    v55 = v158;
    v53(v147, v35, v158);
    v56 = v149;
    v53(v149, v157, v55);
    v57 = sub_247F3A5F8();
    v58 = sub_247F3A728();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v159 = v153;
      *v59 = 136315394;
      sub_247F3A168(&qword_27EE806A8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v60 = sub_247F3A788();
      v62 = v61;
      v63 = *(v52 + 8);
      v63(v54, v158);
      v64 = sub_247F37750(v60, v62, &v159);
      v55 = v158;

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      v65 = v149;
      v66 = sub_247F3A788();
      v68 = v67;
      v63(v65, v55);
      v69 = sub_247F37750(v66, v68, &v159);

      *(v59 + 14) = v69;
      _os_log_impl(&dword_247F32000, v57, v58, "Dates are invalid. Start: %s Today: %s", v59, 0x16u);
      v70 = v153;
      swift_arrayDestroy();
      MEMORY[0x24C1C0320](v70, -1, -1);
      MEMORY[0x24C1C0320](v59, -1, -1);
    }

    else
    {

      v63 = *(v52 + 8);
      v63(v56, v55);
      v63(v54, v55);
    }

    v88 = v155;
    v63(v154, v55);
    v63(v157, v55);
    v63(v156, v55);
    (*(v151 + 8))(v88, v152);
    return 0;
  }

  else
  {
    v71 = v155;
    if (v47 < 0 && (v72 = __OFSUB__(0, v47), v47 = -v47, v72))
    {
      __break(1u);
    }

    else
    {
      if (v47 <= 1)
      {
        v89 = v115;
        sub_247F3A3C8();
        v90 = v118;
        sub_247F3A3A8();
        v91 = v116;
        sub_247F3A228();
        (*(v122 + 8))(v90, v123);
        (*(v117 + 8))(v89, v119);
        sub_247F3A168(&qword_27EE806B8, MEMORY[0x277CC94C0], MEMORY[0x277CC94B8]);
        v92 = v121;
        sub_247F3A418();
        (*(v120 + 8))(v91, v92);
        v93 = *(v150 + 8);
        v94 = v158;
        v93(v35, v158);
        v93(v157, v94);
        v93(v156, v94);
        (*(v151 + 8))(v71, v152);
      }

      else
      {
        v154 = v35;
        v73 = *MEMORY[0x277CC9988];
        v74 = v124;
        v75 = v114;
        v114(v124, v73, v20);
        v76 = v71;
        v77 = sub_247F3A4B8();
        v78 = v113;
        v113(v74, v20);
        v75(v74, v73, v20);
        v79 = v76;
        v80 = sub_247F3A4B8();
        v81 = v78(v74, v20);
        v82 = (v125 + 8);
        if (v77 == v80)
        {
          v83 = v126;
          MEMORY[0x24C1BF970](v81);
          v84 = v127;
          sub_247F3A338();
          v85 = v129;
          sub_247F3A2A8();
          (*(v128 + 8))(v84, v130);
          v86 = *v82;
          v87 = v143;
          (*v82)(v83, v143);
        }

        else
        {
          v95 = v109;
          MEMORY[0x24C1BF970](v81);
          v96 = v110;
          sub_247F3A318();
          v97 = v126;
          sub_247F3A298();
          (*(v111 + 8))(v96, v112);
          v86 = *v82;
          v87 = v143;
          (*v82)(v95, v143);
          v98 = v127;
          sub_247F3A338();
          v85 = v129;
          sub_247F3A2A8();
          (*(v128 + 8))(v98, v130);
          v86(v97, v87);
        }

        v99 = v131;
        sub_247F3A2B8();
        v100 = v132;
        sub_247F3A278();
        (*(v133 + 8))(v99, v134);
        v86(v85, v87);
        v101 = v136;
        sub_247F3A2E8();
        v102 = v137;
        sub_247F3A2D8();
        (*(v139 + 8))(v101, v141);
        v103 = v135;
        sub_247F3A288();
        (*(v140 + 8))(v102, v142);
        v86(v100, v87);
        v104 = v144;
        sub_247F3A358();
        v105 = v138;
        sub_247F3A378();
        (*(v145 + 8))(v104, v146);
        v86(v103, v87);
        sub_247F3A168(&qword_27EE806C0, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
        sub_247F3A418();
        v86(v105, v87);
        v106 = *(v150 + 8);
        v107 = v158;
        v106(v154, v158);
        v106(v157, v107);
        v106(v156, v107);
        (*(v151 + 8))(v79, v152);
      }

      return v159;
    }
  }

  return result;
}

uint64_t sub_247F39430(uint64_t a1, uint64_t a2)
{
  v4 = sub_247F3A428();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-v9];
  v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v11 setAllowedUnits_];
  sub_247F3A398();
  if (v12 < 60.0)
  {
    [v11 setAllowedUnits_];
  }

  [v11 setUnitsStyle_];
  v13 = sub_247F3A3F8();
  v14 = sub_247F3A3F8();
  v15 = [v11 stringFromDate:v13 toDate:v14];

  if (v15)
  {
    v16 = sub_247F3A658();
  }

  else
  {
    if (qword_27EE806F0 != -1)
    {
      swift_once();
    }

    v17 = sub_247F3A618();
    __swift_project_value_buffer(v17, qword_27EE806F8);
    v18 = *(v5 + 16);
    v18(v10, a1, v4);
    v18(v8, a2, v4);
    v19 = sub_247F3A5F8();
    v20 = sub_247F3A728();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v21 = 136315394;
      sub_247F3A168(&qword_27EE806A8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v37 = v19;
      v22 = sub_247F3A788();
      v24 = v23;
      v36 = v20;
      v25 = *(v5 + 8);
      v25(v10, v4);
      v26 = sub_247F37750(v22, v24, &v39);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = sub_247F3A788();
      v29 = v28;
      v25(v8, v4);
      v30 = sub_247F37750(v27, v29, &v39);

      *(v21 + 14) = v30;
      v31 = v37;
      _os_log_impl(&dword_247F32000, v37, v36, "Dates are invalid. Start: %s End: %s", v21, 0x16u);
      v32 = v38;
      swift_arrayDestroy();
      MEMORY[0x24C1C0320](v32, -1, -1);
      MEMORY[0x24C1C0320](v21, -1, -1);
    }

    else
    {

      v33 = *(v5 + 8);
      v33(v8, v4);
      v33(v10, v4);
    }

    return 0;
  }

  return v16;
}

unint64_t sub_247F39888()
{
  result = qword_27EE80678;
  if (!qword_27EE80678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE80678);
  }

  return result;
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

unint64_t sub_247F3992C()
{
  result = qword_27EE80688;
  if (!qword_27EE80688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE80688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSContinuityError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DSContinuityError(_WORD *result, int a2, int a3)
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

uint64_t sub_247F39A94()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247F39ADC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247F3A224;

  return sub_247F36A84(v2, v3, v4);
}

uint64_t sub_247F39B94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247F3A224;

  return sub_247F36FA0(v2, v3, v4);
}

uint64_t sub_247F39C54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247F3A224;

  return sub_247F37088(a1, v4, v5, v6);
}

uint64_t sub_247F39D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_247F39D88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_247F39DE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247F39E20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247F3A224;

  return sub_247F37560(a1, v4);
}

uint64_t sub_247F39ED8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247F37170;

  return sub_247F37560(a1, v4);
}

uint64_t sub_247F39F90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247F39FD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247F37170;

  return sub_247F35240(v2, v3);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_247F3A0BC()
{
  result = qword_27EE80698;
  if (!qword_27EE80698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE80698);
  }

  return result;
}

uint64_t sub_247F3A108(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_247F3A168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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