uint64_t sub_1D23769D4()
{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  (*(v2[66] + 8))(v2[67], v2[65]);

  v3 = v2[133];
  v4 = v2[132];
  if (v0)
  {
    v5 = sub_1D2377C14;
  }

  else
  {
    v5 = sub_1D2376B78;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2376B78(uint64_t a1)
{
  sub_1D28725B8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Did assign playground configuration.", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v5 = v1[139];
  v6 = v1[134];
  v7 = v1[122];
  v8 = v1[115];

  v6(v7, v8);
  sub_1D23884DC("OnDeviceImageGenerator.emoji.assignConfiguration", 48, 2, v5);

  if (sub_1D2391DAC())
  {
    (*(v1[75] + 8))(v1[76], v1[74]);

    sub_1D2384398(v1[50], &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

    v9 = v1[1];

    return v9();
  }

  else
  {
    v1[143] = *(v1[50] + 48);
    sub_1D2870F78();
    v11 = swift_task_alloc();
    v1[144] = v11;
    *v11 = v1;
    v11[1] = sub_1D2376FFC;
    v12 = v1[64];

    return MEMORY[0x1EEE4F830](v12);
  }
}

uint64_t sub_1D2376FFC()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v3 = *(v2 + 1064);
    v4 = *(v2 + 1056);
    v5 = sub_1D2378240;
  }

  else
  {

    v3 = *(v2 + 1064);
    v4 = *(v2 + 1056);
    v5 = sub_1D2377120;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2377120()
{

  v1 = *(sub_1D2872C78() + 16);

  if (v1 && (sub_1D23C7044(), v2 = sub_1D27ED8C8(), , (v2 & 1) == 0))
  {
    sub_1D28725B8();
    v15 = sub_1D2873CA8();
    v26 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D226E000, v15, v26, "Found people but personalization is not supported.", v27, 2u);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    v18 = v0[134];
    v19 = v0[121];
  }

  else
  {
    v3 = v0[60];
    v58 = v0;
    v4 = v0[56];
    result = sub_1D2872C78();
    v6 = 0;
    v59 = result;
    v57 = *(result + 16);
    v7 = (v4 + 8);
    do
    {
      if (v57 == v6)
      {
        v0 = v58;
        v20 = v58[76];
        v21 = v58[75];
        v22 = v58[74];
        v23 = v58[63];
        v24 = v58[64];
        v25 = v58[62];

        (*(v23 + 8))(v24, v25);
        (*(v21 + 8))(v20, v22);
        goto LABEL_24;
      }

      if (v6 >= *(v59 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = v58[61];
      v10 = v58[58];
      v9 = v58[59];
      v11 = v58[57];
      v12 = v58[55];
      (*(v3 + 16))(v8, v59 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v6++, v9);
      sub_1D2872C38();
      sub_1D2872C18();
      sub_1D238C24C(&qword_1EC6DA518, MEMORY[0x1E69DFDA0], MEMORY[0x1E69DFDB0]);
      v13 = sub_1D2879028();
      v14 = *v7;
      (*v7)(v11, v12);
      v14(v10, v12);
      result = (*(v3 + 8))(v8, v9);
    }

    while ((v13 & 1) == 0);
    v0 = v58;

    sub_1D28725B8();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A38();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "Found generic people, we need personalization.", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    v18 = v58[134];
    v19 = v58[120];
  }

  v28 = v0[115];
  v30 = v0[63];
  v29 = v0[64];
  v31 = v0[62];

  v18(v19, v28);
  sub_1D22BCE64();
  v32 = swift_allocError();
  *v33 = xmmword_1D28830A0;
  *(v33 + 16) = -96;
  swift_willThrow();
  (*(v30 + 8))(v29, v31);
  v0[47] = v32;
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v35 = v0[42];
  v36 = v0[43];
  v37 = *(v0 + 352);
  if ((v37 & 0xF0) != 0xA0 || v35 != 5 || v36 || v37 != 160)
  {
    sub_1D22BCDC4(v35, v36, v37);
LABEL_21:

    sub_1D28725B8();
    v44 = v32;
    v45 = sub_1D2873CA8();
    v46 = sub_1D2878A18();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      v49 = v32;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v48 = v50;
      _os_log_impl(&dword_1D226E000, v45, v46, "findPersonIndications() failed with error: %@", v47, 0xCu);
      sub_1D22BD238(v48, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v48, -1, -1);
      MEMORY[0x1D38A3520](v47, -1, -1);
    }

    v51 = v0[134];
    v52 = v0[117];
    v53 = v0[115];
    v54 = v0[76];
    v55 = v0[75];
    v56 = v0[74];

    v51(v52, v53);
    (*(v55 + 8))(v54, v56);
LABEL_24:
    sub_1D2384398(v0[50], &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

    v43 = v0[1];
    goto LABEL_25;
  }

  v38 = v0[76];
  v39 = v0[75];
  v40 = v0[74];
  v41 = v0[50];

  sub_1D22BCE64();
  swift_allocError();
  *v42 = xmmword_1D28830A0;
  *(v42 + 16) = -96;
  swift_willThrow();
  (*(v39 + 8))(v38, v40);

  sub_1D2384398(v41, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

  v43 = v0[1];
LABEL_25:

  return v43();
}

uint64_t sub_1D2377C14()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1112);

  sub_1D23884DC("OnDeviceImageGenerator.emoji.assignConfiguration", 48, 2, v2);

  *(v0 + 368) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 424) + 88))(*(v0 + 432), *(v0 + 416)) == *MEMORY[0x1E69DFD18])
    {

      sub_1D28725B8();
      v4 = sub_1D2873CA8();
      v5 = sub_1D2878A38();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1D226E000, v4, v5, "Failed to assign playground configuration: face too small in conditioning image.", v6, 2u);
        MEMORY[0x1D38A3520](v6, -1, -1);
      }

      v7 = *(v0 + 1072);
      v8 = *(v0 + 952);
      v9 = *(v0 + 920);
      v10 = *(v0 + 608);
      v11 = *(v0 + 600);
      v12 = *(v0 + 592);
      v13 = *(v0 + 400);

      v7(v8, v9);
      sub_1D22BCE64();
      swift_allocError();
      *v14 = xmmword_1D28830A0;
      *(v14 + 16) = -96;
      swift_willThrow();
      (*(v11 + 8))(v10, v12);

      sub_1D2384398(v13, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");
      goto LABEL_10;
    }

    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
  }

  v15 = *(v0 + 1136);

  sub_1D28725B8();
  v16 = v15;
  v17 = sub_1D2873CA8();
  v18 = sub_1D2878A18();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 1136);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_1D226E000, v17, v18, "Failed to assign playground configuration: %@.", v20, 0xCu);
    sub_1D22BD238(v21, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v21, -1, -1);
    MEMORY[0x1D38A3520](v20, -1, -1);
  }

  v24 = *(v0 + 1072);
  v25 = *(v0 + 944);
  v26 = *(v0 + 920);
  v27 = *(v0 + 608);
  v28 = v17;
  v29 = *(v0 + 600);
  v30 = *(v0 + 592);
  v31 = *(v0 + 400);

  v24(v25, v26);
  swift_willThrow();
  (*(v29 + 8))(v27, v30);
  sub_1D2384398(v31, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");
LABEL_10:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1D2378240()
{

  v1 = *(v0 + 1160);
  *(v0 + 376) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 336);
    v4 = *(v0 + 344);
    v5 = *(v0 + 352);
    v7 = (v5 & 0xF0) == 0xA0 && v3 == 5 && v4 == 0;
    if (v7 && v5 == 160)
    {
      v23 = *(v0 + 608);
      v24 = *(v0 + 600);
      v25 = *(v0 + 592);
      v26 = *(v0 + 400);

      sub_1D22BCE64();
      swift_allocError();
      *v27 = xmmword_1D28830A0;
      *(v27 + 16) = -96;
      swift_willThrow();
      (*(v24 + 8))(v23, v25);

      sub_1D2384398(v26, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

      v21 = *(v0 + 8);
      goto LABEL_13;
    }

    sub_1D22BCDC4(v3, v4, v5);
  }

  sub_1D28725B8();
  v8 = v1;
  v9 = sub_1D2873CA8();
  v10 = sub_1D2878A18();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1D226E000, v9, v10, "findPersonIndications() failed with error: %@", v11, 0xCu);
    sub_1D22BD238(v12, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v12, -1, -1);
    MEMORY[0x1D38A3520](v11, -1, -1);
  }

  v15 = *(v0 + 1072);
  v16 = *(v0 + 936);
  v17 = *(v0 + 920);
  v18 = *(v0 + 608);
  v19 = *(v0 + 600);
  v20 = *(v0 + 592);

  v15(v16, v17);
  (*(v19 + 8))(v18, v20);
  sub_1D2384398(*(v0 + 400), &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

  v21 = *(v0 + 8);
LABEL_13:

  return v21();
}

uint64_t sub_1D23789E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  if (*(a1 + 16) <= a2)
  {
    sub_1D28725B8();
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A08();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D226E000, v14, v15, "Is first preview and we don't exceed limit. Using all conditioning images.", v16, 2u);
      MEMORY[0x1D38A3520](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_1D2870F68();
  }

  else
  {
    sub_1D28725B8();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A08();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "Using hard limit and limit exceeded. Will remove all conditioning images.", v13, 2u);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    return MEMORY[0x1E69E7CC0];
  }

  return a1;
}

uint64_t sub_1D2378C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1D2873CB8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  sub_1D2878568();
  v6[9] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D2378D04, v9, v8);
}

uint64_t sub_1D2378D04(uint64_t a1)
{
  sub_1D28725B8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Starting rewrite task.", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v5 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[2];

  v9 = *(v7 + 8);
  v1[12] = v9;
  v9(v5, v6);
  v1[13] = *(v8 + 16);
  v10 = sub_1D23C7CA8();
  v11 = sub_1D2878068();
  v12 = sub_1D2878068();
  v13 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v10 + 48))
  {
    sub_1D2870F68();
    v14 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v14, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v16 = sub_1D2878068();
  v17 = sub_1D2418030(v13);

  if (v17)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
    sub_1D238C24C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v18 = sub_1D2877E78();
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_opt_self();
  v1[14] = v19;
  [v19 asyncSendSignal:v12 toChannel:v11 withNullableUniqueStringID:v16 withPayload:v18];

  v20 = sub_1D2872F88();
  v22 = v21;
  v23 = swift_task_alloc();
  v1[15] = v23;
  *v23 = v1;
  v23[1] = sub_1D237902C;

  return MEMORY[0x1EEE4F548](v20, v22 & 1);
}

uint64_t sub_1D237902C(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1D23794B8;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1D2379158;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2379158()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    sub_1D23797AC(*(v0 + 16));

    v2 = *(v0 + 8);
  }

  else
  {
    sub_1D22BCE64();
    swift_allocError();
    *v3 = xmmword_1D28830C0;
    *(v3 + 16) = -96;
    swift_willThrow();
    sub_1D28725B8();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Failed rewriteConfiguration.", v6, 2u);
      MEMORY[0x1D38A3520](v6, -1, -1);
    }

    v7 = *(v0 + 96);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);

    v7(v8, v9);
    v10 = sub_1D23C7CA8();
    v11 = sub_1D2878068();
    v12 = sub_1D2878068();
    v13 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 48))
    {
      sub_1D2870F68();
      v14 = sub_1D2878068();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D24E8054(v14, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    v16 = sub_1D2878068();
    v17 = sub_1D2418030(v13);

    if (v17)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
      sub_1D238C24C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
      v18 = sub_1D2877E78();
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 16);
    [*(v0 + 112) asyncSendSignal:v12 toChannel:v11 withNullableUniqueStringID:v16 withPayload:v18];

    swift_willThrow();
    sub_1D23797AC(v19);

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_1D23794B8()
{

  sub_1D28725B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Failed rewriteConfiguration.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  v4(v5, v6);
  v7 = sub_1D23C7CA8();
  v8 = sub_1D2878068();
  v9 = sub_1D2878068();
  v10 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v7 + 48))
  {
    sub_1D2870F68();
    v11 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v11, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v13 = sub_1D2878068();
  v14 = sub_1D2418030(v10);

  if (v14)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
    sub_1D238C24C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v15 = sub_1D2877E78();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + 16);
  [*(v0 + 112) asyncSendSignal:v9 toChannel:v8 withNullableUniqueStringID:v13 withPayload:v15];

  swift_willThrow();
  sub_1D23797AC(v16);

  v17 = *(v0 + 8);

  return v17();
}

void sub_1D23797AC(uint64_t a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptRewriteTask) = 0;

  sub_1D28725B8();
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A38();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "Finished rewrite task.", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = sub_1D23C7CA8();
  v10 = sub_1D2878068();
  v11 = sub_1D2878068();
  v12 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v9 + 48))
  {
    sub_1D2870F68();
    v13 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v12;
    sub_1D24E8054(v13, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v12 = v19;
  }

  v15 = sub_1D2878068();
  v16 = sub_1D2418030(v12);

  if (v16)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
    sub_1D238C24C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v17 = sub_1D2877E78();
  }

  else
  {
    v17 = 0;
  }

  [objc_opt_self() asyncSendSignal:v11 toChannel:v10 withNullableUniqueStringID:v15 withPayload:v17];
}

uint64_t sub_1D2379AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a5;
  v7[15] = a7;
  v7[13] = a4;
  v8 = sub_1D2872C28();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v9 = sub_1D2872C68();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = sub_1D2872C88();
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = sub_1D2872E48();
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();
  v12 = sub_1D2873C28();
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v13 = sub_1D2873C48();
  v7[33] = v13;
  v7[34] = *(v13 - 8);
  v7[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA538, &qword_1D2883798);
  v7[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0, qword_1D28AB8F0);
  v7[37] = swift_task_alloc();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410) - 8);
  v7[38] = v14;
  v7[39] = *(v14 + 64);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v15 = sub_1D28730E8();
  v7[42] = v15;
  v7[43] = *(v15 - 8);
  v7[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  v7[45] = swift_task_alloc();
  v7[46] = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v7[47] = swift_task_alloc();
  v16 = sub_1D2873CB8();
  v7[48] = v16;
  v7[49] = *(v16 - 8);
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = sub_1D2873068();
  v7[59] = swift_projectBox();
  v7[60] = sub_1D2878568();
  v7[61] = sub_1D2878558();
  v18 = sub_1D28784F8();
  v7[62] = v18;
  v7[63] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D237A00C, v18, v17);
}

uint64_t sub_1D237A00C(uint64_t a1)
{
  v79 = v1;
  v2 = v1[47];
  v3 = v1[14];
  sub_1D28725B8();
  sub_1D238D0B8(v3, v2, type metadata accessor for ImageGeneration.GenerationParameters);
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A38();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[57];
  v9 = v1[48];
  v8 = v1[49];
  v10 = v1[47];
  if (v6)
  {
    v75 = v1[57];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v78 = v12;
    *v11 = 136315138;
    v13 = sub_1D239258C();
    v15 = v14;
    sub_1D238DA5C(v10, type metadata accessor for ImageGeneration.GenerationParameters);
    v16 = sub_1D23D7C84(v13, v15, &v78);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D226E000, v4, v5, "Starting assignment task for prompt '%s'.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1D38A3520](v12, -1, -1);
    MEMORY[0x1D38A3520](v11, -1, -1);

    v17 = *(v8 + 8);
    v17(v75, v9);
  }

  else
  {

    sub_1D238DA5C(v10, type metadata accessor for ImageGeneration.GenerationParameters);
    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  v1[64] = v17;
  if (sub_1D2391DAC() || (sub_1D23C7044(), v18 = sub_1D27ED8C8(), , (v18 & 1) != 0))
  {
    v19 = v1[37];
    v20 = v1[14];
    v76 = *(v20 + 96);
    sub_1D22BD1D0(v20 + *(v1[46] + 64), v19, &qword_1EC6E33D0, qword_1D28AB8F0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8, &qword_1D2883670);
    v22 = (*(*(v21 - 1) + 48))(v19, 1, v21);
    v23 = v1[41];
    v24 = v1[37];
    if (v22 == 1)
    {
      sub_1D22BD238(v1[37], &qword_1EC6E33D0, qword_1D28AB8F0);
      v25 = sub_1D2871818();
      (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    }

    else
    {
      v26 = v21[12];
      v27 = v21[24];
      sub_1D238D058(*(v24 + v21[28]), *(v24 + v21[28] + 8), *(v24 + v21[28] + 16));
      sub_1D22EC9BC(v24, v23, &qword_1EC6D8F70, &qword_1D2881410);
      sub_1D22BD238(v24 + v27, &unk_1EC6E33C0, &unk_1D2883750);
      sub_1D22BD238(v24 + v26, &unk_1EC6DE5A0, &unk_1D287F0E0);
    }

    v28 = v1[43];
    v29 = v1[44];
    v30 = v1[41];
    v31 = v1[39];
    v32 = v1[40];
    v33 = v1[38];
    v73 = v1[36];
    v74 = v1[42];
    sub_1D28730D8();
    sub_1D22BD1D0(v30, v32, &qword_1EC6D8F70, &qword_1D2881410);
    v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v35 = (v31 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    sub_1D22EC9BC(v32, v36 + v34, &qword_1EC6D8F70, &qword_1D2881410);
    *(v36 + v35) = v76;
    sub_1D2870F68();
    sub_1D28730C8();
    sub_1D28730B8();
    sub_1D22BD238(v30, &qword_1EC6D8F70, &qword_1D2881410);
    swift_beginAccess();
    sub_1D2870F68();
    sub_1D2872FC8();
    sub_1D2870F68();
    sub_1D2872FE8();
    (*(v28 + 16))(v73, v29, v74);
    (*(v28 + 56))(v73, 0, 1, v74);
    sub_1D2872F48();
    swift_endAccess();
    sub_1D28720E8();
    sub_1D2873C18();
    v37 = sub_1D2873C38();
    v38 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v37, v38, v40, "OnDeviceImageGenerator.playground.assignConfiguration", "", v39, 2u);
      MEMORY[0x1D38A3520](v39, -1, -1);
    }

    v42 = v1[34];
    v41 = v1[35];
    v44 = v1[32];
    v43 = v1[33];
    v46 = v1[30];
    v45 = v1[31];
    v47 = v1[29];

    (*(v46 + 16))(v45, v44, v47);
    sub_1D2873C88();
    swift_allocObject();
    v1[67] = sub_1D2873C78();
    (*(v46 + 8))(v44, v47);
    (*(v42 + 8))(v41, v43);
    sub_1D28725B8();
    v48 = sub_1D2873CA8();
    v49 = sub_1D2878A38();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D226E000, v48, v49, "Will assign playground configuration.", v50, 2u);
      MEMORY[0x1D38A3520](v50, -1, -1);
    }

    v51 = v1[64];
    v53 = v1[58];
    v52 = v1[59];
    v54 = v1[55];
    v55 = v1[48];
    v57 = v1[27];
    v56 = v1[28];
    v77 = v1[26];

    v51(v54, v55);
    swift_beginAccess();
    (*(*(v53 - 8) + 16))(v56, v52, v53);
    (*(v57 + 104))(v56, *MEMORY[0x1E69DFF08], v77);
    v58 = swift_task_alloc();
    v1[68] = v58;
    *v58 = v1;
    v58[1] = sub_1D237B2A0;
    v59 = v1[28];

    return MEMORY[0x1EEE4F728](v59);
  }

  else
  {
    v60 = v1[45];
    v61 = sub_1D239258C();
    v63 = v62;
    v64 = sub_1D235E780();
    v65 = sub_1D28785F8();
    (*(*(v65 - 8) + 56))(v60, 1, 1, v65);
    sub_1D2870F78();
    v66 = sub_1D2878558();
    v67 = swift_allocObject();
    v68 = MEMORY[0x1E69E85E0];
    v67[2] = v66;
    v67[3] = v68;
    v67[4] = v64;
    v67[5] = v61;
    v67[6] = v63;
    v69 = sub_1D22AE630(0, 0, v60, &unk_1D28837A0, v67);
    v1[65] = v69;

    v70 = swift_task_alloc();
    v1[66] = v70;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8, &qword_1D287D370);
    *v70 = v1;
    v70[1] = sub_1D237A908;

    return MEMORY[0x1EEE6DA40](v1 + 11, v69, v71);
  }
}

uint64_t sub_1D237A908()
{
  v1 = *v0;

  v2 = *(v1 + 504);
  v3 = *(v1 + 496);

  return MEMORY[0x1EEE6DFA0](sub_1D237AA4C, v3, v2);
}

uint64_t sub_1D237AA4C()
{
  v1 = sub_1D279F58C(v0[11]);

  v2 = *(v1 + 16);

  if (v2)
  {

    sub_1D28725B8();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A18();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D226E000, v3, v4, "Found named entities in concatenated prompt but personalization is not supported", v5, 2u);
      MEMORY[0x1D38A3520](v5, -1, -1);
    }

    v6 = v0[64];
    v7 = v0[56];
    v8 = v0[48];
    v9 = v0[13];

    v6(v7, v8);
    sub_1D22BCE64();
    swift_allocError();
    *v10 = xmmword_1D28830A0;
    *(v10 + 16) = -96;
    swift_willThrow();
    sub_1D2384398(v9, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[37];
    v14 = v0[14];
    v56 = *(v14 + 96);
    sub_1D22BD1D0(v14 + *(v0[46] + 64), v13, &qword_1EC6E33D0, qword_1D28AB8F0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8, &qword_1D2883670);
    v16 = (*(*(v15 - 1) + 48))(v13, 1, v15);
    v17 = v0[41];
    v18 = v0[37];
    if (v16 == 1)
    {
      sub_1D22BD238(v0[37], &qword_1EC6E33D0, qword_1D28AB8F0);
      v19 = sub_1D2871818();
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    }

    else
    {
      v20 = v15[12];
      v21 = v15[24];
      sub_1D238D058(*(v18 + v15[28]), *(v18 + v15[28] + 8), *(v18 + v15[28] + 16));
      sub_1D22EC9BC(v18, v17, &qword_1EC6D8F70, &qword_1D2881410);
      sub_1D22BD238(v18 + v21, &unk_1EC6E33C0, &unk_1D2883750);
      sub_1D22BD238(v18 + v20, &unk_1EC6DE5A0, &unk_1D287F0E0);
    }

    v22 = v0[43];
    v23 = v0[44];
    v24 = v0[41];
    v25 = v0[39];
    v26 = v0[40];
    v27 = v0[38];
    v54 = v0[36];
    v55 = v0[42];
    sub_1D28730D8();
    sub_1D22BD1D0(v24, v26, &qword_1EC6D8F70, &qword_1D2881410);
    v28 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v29 = (v25 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_1D22EC9BC(v26, v30 + v28, &qword_1EC6D8F70, &qword_1D2881410);
    *(v30 + v29) = v56;
    sub_1D2870F68();
    sub_1D28730C8();
    sub_1D28730B8();
    sub_1D22BD238(v24, &qword_1EC6D8F70, &qword_1D2881410);
    swift_beginAccess();
    sub_1D2870F68();
    sub_1D2872FC8();
    sub_1D2870F68();
    sub_1D2872FE8();
    (*(v22 + 16))(v54, v23, v55);
    (*(v22 + 56))(v54, 0, 1, v55);
    sub_1D2872F48();
    swift_endAccess();
    sub_1D28720E8();
    sub_1D2873C18();
    v31 = sub_1D2873C38();
    v32 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v31, v32, v34, "OnDeviceImageGenerator.playground.assignConfiguration", "", v33, 2u);
      MEMORY[0x1D38A3520](v33, -1, -1);
    }

    v36 = v0[34];
    v35 = v0[35];
    v38 = v0[32];
    v37 = v0[33];
    v40 = v0[30];
    v39 = v0[31];
    v41 = v0[29];

    (*(v40 + 16))(v39, v38, v41);
    sub_1D2873C88();
    swift_allocObject();
    v0[67] = sub_1D2873C78();
    (*(v40 + 8))(v38, v41);
    (*(v36 + 8))(v35, v37);
    sub_1D28725B8();
    v42 = sub_1D2873CA8();
    v43 = sub_1D2878A38();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D226E000, v42, v43, "Will assign playground configuration.", v44, 2u);
      MEMORY[0x1D38A3520](v44, -1, -1);
    }

    v45 = v0[64];
    v47 = v0[58];
    v46 = v0[59];
    v48 = v0[55];
    v49 = v0[48];
    v51 = v0[27];
    v50 = v0[28];
    v57 = v0[26];

    v45(v48, v49);
    swift_beginAccess();
    (*(*(v47 - 8) + 16))(v50, v46, v47);
    (*(v51 + 104))(v50, *MEMORY[0x1E69DFF08], v57);
    v52 = swift_task_alloc();
    v0[68] = v52;
    *v52 = v0;
    v52[1] = sub_1D237B2A0;
    v53 = v0[28];

    return MEMORY[0x1EEE4F728](v53);
  }
}

uint64_t sub_1D237B2A0()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);
  v3 = v2[63];
  v4 = v2[62];
  if (v0)
  {
    v5 = sub_1D237C0BC;
  }

  else
  {
    v5 = sub_1D237B428;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D237B428(uint64_t a1)
{
  sub_1D28725B8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Did assign playground configuration.", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v5 = v1[67];
  v6 = v1[64];
  v7 = v1[54];
  v8 = v1[48];

  v6(v7, v8);
  sub_1D23884DC("OnDeviceImageGenerator.playground.assignConfiguration", 53, 2, v5);

  if (sub_1D2391DAC())
  {
    (*(v1[43] + 8))(v1[44], v1[42]);

    sub_1D2384398(v1[13], &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

    v9 = v1[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v1[70] = v11;
    *v11 = v1;
    v11[1] = sub_1D237B73C;
    v12 = v1[25];

    return MEMORY[0x1EEE4F568](v12);
  }
}

uint64_t sub_1D237B73C()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 496);
  if (v0)
  {
    v5 = sub_1D237C3CC;
  }

  else
  {
    v5 = sub_1D237B878;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D237B878()
{

  v1 = *(sub_1D2872C78() + 16);

  if (v1 && (sub_1D23C7044(), v2 = sub_1D27ED8C8(), , (v2 & 1) == 0))
  {
    sub_1D28725B8();
    v15 = sub_1D2873CA8();
    v26 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D226E000, v15, v26, "Found people but personalization is not supported.", v27, 2u);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    v18 = v0[64];
    v19 = v0[53];
  }

  else
  {
    v3 = v0[21];
    v58 = v0;
    v4 = v0[17];
    result = sub_1D2872C78();
    v6 = 0;
    v59 = result;
    v57 = *(result + 16);
    v7 = (v4 + 8);
    do
    {
      if (v57 == v6)
      {
        v0 = v58;
        v21 = v58[43];
        v20 = v58[44];
        v22 = v58[42];
        v23 = v58[24];
        v24 = v58[25];
        v25 = v58[23];

        (*(v23 + 8))(v24, v25);
        (*(v21 + 8))(v20, v22);
        goto LABEL_24;
      }

      if (v6 >= *(v59 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = v58[22];
      v10 = v58[19];
      v9 = v58[20];
      v11 = v58[18];
      v12 = v58[16];
      (*(v3 + 16))(v8, v59 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v6++, v9);
      sub_1D2872C38();
      sub_1D2872C18();
      sub_1D238C24C(&qword_1EC6DA518, MEMORY[0x1E69DFDA0], MEMORY[0x1E69DFDB0]);
      v13 = sub_1D2879028();
      v14 = *v7;
      (*v7)(v11, v12);
      v14(v10, v12);
      result = (*(v3 + 8))(v8, v9);
    }

    while ((v13 & 1) == 0);
    v0 = v58;

    sub_1D28725B8();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A38();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "Found generic people, we need personalization.", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    v18 = v58[64];
    v19 = v58[52];
  }

  v28 = v0[48];
  v30 = v0[24];
  v29 = v0[25];
  v31 = v0[23];

  v18(v19, v28);
  sub_1D22BCE64();
  v32 = swift_allocError();
  *v33 = xmmword_1D28830A0;
  *(v33 + 16) = -96;
  swift_willThrow();
  (*(v30 + 8))(v29, v31);
  v0[12] = v32;
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v35 = v0[8];
  v36 = v0[9];
  v37 = *(v0 + 80);
  if ((v37 & 0xF0) != 0xA0 || v35 != 5 || v36 || v37 != 160)
  {
    sub_1D22BCDC4(v35, v36, v37);
LABEL_21:

    sub_1D28725B8();
    v44 = v32;
    v45 = sub_1D2873CA8();
    v46 = sub_1D2878A18();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      v49 = v32;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v48 = v50;
      _os_log_impl(&dword_1D226E000, v45, v46, "findPersonIndications() failed with error: %@", v47, 0xCu);
      sub_1D22BD238(v48, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v48, -1, -1);
      MEMORY[0x1D38A3520](v47, -1, -1);
    }

    v51 = v0[64];
    v52 = v0[50];
    v53 = v0[48];
    v55 = v0[43];
    v54 = v0[44];
    v56 = v0[42];

    v51(v52, v53);
    (*(v55 + 8))(v54, v56);
LABEL_24:
    sub_1D2384398(v0[13], &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

    v43 = v0[1];
    goto LABEL_25;
  }

  v39 = v0[43];
  v38 = v0[44];
  v40 = v0[42];
  v41 = v0[13];

  sub_1D22BCE64();
  swift_allocError();
  *v42 = xmmword_1D28830A0;
  *(v42 + 16) = -96;
  swift_willThrow();
  (*(v39 + 8))(v38, v40);

  sub_1D2384398(v41, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

  v43 = v0[1];
LABEL_25:

  return v43();
}

uint64_t sub_1D237C0BC()
{
  v1 = v0[69];
  v2 = v0[67];

  sub_1D23884DC("OnDeviceImageGenerator.playground.assignConfiguration", 53, 2, v2);

  sub_1D28725B8();
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[69];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to assign playground configuration: %@.", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  v11 = v0[64];
  v12 = v0[51];
  v13 = v0[48];
  v14 = v4;
  v15 = v0[43];
  v16 = v0[44];
  v17 = v0[42];
  v18 = v0[13];

  v11(v12, v13);
  swift_willThrow();
  (*(v15 + 8))(v16, v17);
  sub_1D2384398(v18, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D237C3CC()
{

  v1 = *(v0 + 568);
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = (v5 & 0xF0) == 0xA0 && v3 == 5 && v4 == 0;
    if (v7 && v5 == 160)
    {
      v24 = *(v0 + 344);
      v23 = *(v0 + 352);
      v25 = *(v0 + 336);
      v26 = *(v0 + 104);

      sub_1D22BCE64();
      swift_allocError();
      *v27 = xmmword_1D28830A0;
      *(v27 + 16) = -96;
      swift_willThrow();
      (*(v24 + 8))(v23, v25);

      sub_1D2384398(v26, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

      v21 = *(v0 + 8);
      goto LABEL_13;
    }

    sub_1D22BCDC4(v3, v4, v5);
  }

  sub_1D28725B8();
  v8 = v1;
  v9 = sub_1D2873CA8();
  v10 = sub_1D2878A18();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1D226E000, v9, v10, "findPersonIndications() failed with error: %@", v11, 0xCu);
    sub_1D22BD238(v12, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v12, -1, -1);
    MEMORY[0x1D38A3520](v11, -1, -1);
  }

  v15 = *(v0 + 512);
  v16 = *(v0 + 400);
  v17 = *(v0 + 384);
  v19 = *(v0 + 344);
  v18 = *(v0 + 352);
  v20 = *(v0 + 336);

  v15(v16, v17);
  (*(v19 + 8))(v18, v20);
  sub_1D2384398(*(v0 + 104), &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

  v21 = *(v0 + 8);
LABEL_13:

  return v21();
}

void sub_1D237C8C0(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a1;
  v28 = a3;
  v5 = sub_1D2873C58();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2873C28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2873C48();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720E8();
  v16 = sub_1D2873C38();
  sub_1D2873C68();
  v25 = sub_1D2878BA8();
  if ((sub_1D2878EE8() & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
    sub_1D236259C(0xD000000000000016, 0x80000001D28B2410);
    return;
  }

  v23 = v9;
  v24 = v8;
  if ((v28 & 1) == 0)
  {
    if (v30)
    {
LABEL_9:
      sub_1D2870F78();
      sub_1D2873C98();

      v18 = v26;
      v17 = v27;
      if ((*(v26 + 88))(v7, v27) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v7, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v16, v25, v21, v30, v19, v20, 2u);
      MEMORY[0x1D38A3520](v20, -1, -1);
      v9 = v23;
      v8 = v24;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v30 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1D237CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a8;
  v50 = a5;
  v58 = a7;
  v51 = a6;
  v55 = a3;
  v60 = a1;
  v48 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0, &qword_1D2883660);
  v56 = *(v14 - 8);
  v57 = v14;
  v59 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v47 - v15;
  v16 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v53 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  sub_1D28786E8();
  v25 = sub_1D28785F8();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  sub_1D238D0B8(a4, v19, type metadata accessor for ImageGeneration.GenerationParameters);
  sub_1D2878568();
  v52 = a2;
  sub_1D2870F78();
  sub_1D22A58B8(a5, a6);
  sub_1D22A58B8(a8, a9);
  v26 = sub_1D2878558();
  v27 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v30[2] = v26;
  v30[3] = v31;
  v32 = v55;
  v30[4] = a2;
  v30[5] = v32;
  sub_1D238C294(v19, v30 + v27, type metadata accessor for ImageGeneration.GenerationParameters);
  v33 = (v30 + v28);
  v34 = v51;
  *v33 = v50;
  v33[1] = v34;
  *(v30 + v29) = v58;
  v35 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v36 = v48;
  *v35 = v49;
  v35[1] = v36;
  v37 = v53;
  sub_1D22BD1D0(v24, v53, &qword_1EC6D8E60, &qword_1D28811F0);
  v38 = v56;
  v39 = v57;
  v40 = v54;
  (*(v56 + 16))(v54, v60, v57);
  sub_1D2870F78();
  v41 = sub_1D2878558();
  v42 = v38;
  v43 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v41;
  *(v44 + 3) = MEMORY[0x1E69E85E0];
  *(v44 + 4) = &unk_1D2883678;
  *(v44 + 5) = v30;
  (*(v42 + 32))(&v44[v43], v40, v39);
  v45 = sub_1D22AE01C(0, 0, v37, &unk_1D2883688, v44);

  sub_1D22BD238(v24, &qword_1EC6D8E60, &qword_1D28811F0);
  *(v52 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask) = v45;
}

uint64_t sub_1D237D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = v25;
  *(v8 + 352) = v24;
  *(v8 + 336) = a7;
  *(v8 + 344) = a8;
  *(v8 + 320) = a5;
  *(v8 + 328) = a6;
  *(v8 + 304) = a1;
  *(v8 + 312) = a4;
  v9 = sub_1D2873748();
  *(v8 + 376) = v9;
  *(v8 + 384) = *(v9 - 8);
  *(v8 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA438, &qword_1D28835F8);
  *(v8 + 400) = swift_task_alloc();
  v10 = sub_1D2872CD8();
  *(v8 + 408) = v10;
  *(v8 + 416) = *(v10 - 8);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v11 = sub_1D28731F8();
  *(v8 + 440) = v11;
  *(v8 + 448) = *(v11 - 8);
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  v12 = sub_1D2878538();
  *(v8 + 472) = v12;
  *(v8 + 480) = *(v12 - 8);
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  v13 = sub_1D2873308();
  *(v8 + 504) = v13;
  *(v8 + 512) = *(v13 - 8);
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  v14 = sub_1D2873338();
  *(v8 + 544) = v14;
  *(v8 + 552) = *(v14 - 8);
  *(v8 + 560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4B0, &qword_1D2883690);
  *(v8 + 568) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4B8, &qword_1D2883698);
  *(v8 + 576) = v15;
  *(v8 + 584) = *(v15 - 8);
  *(v8 + 592) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4C0, &qword_1D28836A0);
  *(v8 + 600) = v16;
  *(v8 + 608) = *(v16 - 8);
  *(v8 + 616) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4C8, &qword_1D28836A8);
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  v17 = sub_1D28735E8();
  *(v8 + 648) = v17;
  *(v8 + 656) = *(v17 - 8);
  *(v8 + 664) = swift_task_alloc();
  v18 = sub_1D2873388();
  *(v8 + 672) = v18;
  *(v8 + 680) = *(v18 - 8);
  *(v8 + 688) = swift_task_alloc();
  v19 = sub_1D2873CB8();
  *(v8 + 696) = v19;
  *(v8 + 704) = *(v19 - 8);
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  *(v8 + 776) = sub_1D2878568();
  *(v8 + 784) = sub_1D2878558();
  v21 = sub_1D28784F8();
  *(v8 + 792) = v21;
  *(v8 + 800) = v20;

  return MEMORY[0x1EEE6DFA0](sub_1D237D680, v21, v20);
}

uint64_t sub_1D237D680(uint64_t a1)
{
  sub_1D28725B8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[40];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D226E000, v2, v3, "Starting generation task (index: %ld).", v5, 0xCu);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  v6 = v1[96];
  v7 = v1[88];
  v8 = v1[87];
  v24 = v1[83];
  v9 = v1[82];
  v25 = v1[81];

  v10 = *(v7 + 8);
  v1[101] = v10;
  v1[102] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26 = v10;
  v10(v6, v8);
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v12 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198, &qword_1D28816A0);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD00000000000001CLL, 0x80000001D28B2200, v12, 1);

  sub_1D2873378();
  sub_1D2873368();
  sub_1D2870F68();
  sub_1D2873348();
  (*(v9 + 104))(v24, *MEMORY[0x1E69E00A8], v25);
  sub_1D2873358();
  sub_1D28725B8();
  v13 = sub_1D2873CA8();
  v14 = sub_1D2878A38();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v1[40];
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v15;
    _os_log_impl(&dword_1D226E000, v13, v14, "Will generate preview (index: %ld).", v16, 0xCu);
    MEMORY[0x1D38A3520](v16, -1, -1);
  }

  v17 = v1[95];
  v18 = v1[87];
  v19 = v1[41];

  v26(v17, v18);
  v1[103] = sub_1D235F184();
  v20 = *(type metadata accessor for ImageGeneration.GenerationParameters(0) + 84);
  v21 = swift_task_alloc();
  v1[104] = v21;
  *v21 = v1;
  v21[1] = sub_1D237DA24;
  v22 = v1[86];

  return MEMORY[0x1EEE4F7C0](v22, v19 + v20);
}

uint64_t sub_1D237DA24(uint64_t a1)
{
  v3 = *v2;
  v3[105] = a1;
  v3[106] = v1;

  if (v1)
  {
    v4 = v3[100];
    v5 = v3[99];
    v6 = sub_1D237F878;
  }

  else
  {

    v4 = v3[100];
    v5 = v3[99];
    v6 = sub_1D237DB4C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D237DB4C(uint64_t a1)
{
  v22 = v1;
  sub_1D28725B8();
  if (os_variant_has_internal_ui())
  {
    v2 = v1[101];
    v3 = v1[94];
    v4 = v1[87];
    sub_1D2870F78();
    v5 = sub_1D2873CA8();
    v2(v3, v4);
    v6 = sub_1D2878A38();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = sub_1D28733A8();
      v11 = sub_1D23D7C84(v9, v10, &v21);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D226E000, v5, v6, "Prompt used in session: '%s'.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1D38A3520](v8, -1, -1);
      MEMORY[0x1D38A3520](v7, -1, -1);
    }
  }

  else
  {
    (v1[101])(v1[94], v1[87]);
  }

  v12 = v1[74];
  v13 = v1[73];
  v14 = v1[72];
  (*(v1[64] + 56))(v1[80], 1, 1, v1[63]);
  sub_1D2873398();
  sub_1D2878658();
  (*(v13 + 8))(v12, v14);
  v15 = sub_1D2878558();
  v1[107] = v15;
  v16 = swift_task_alloc();
  v1[108] = v16;
  *v16 = v1;
  v16[1] = sub_1D237DDAC;
  v17 = v1[75];
  v18 = v1[71];
  v19 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v18, v15, v19, v17, v1 + 37);
}

uint64_t sub_1D237DDAC()
{
  v2 = *v1;
  *(*v1 + 872) = v0;

  v3 = *(v2 + 800);
  v4 = *(v2 + 792);
  if (v0)
  {
    v5 = sub_1D23805D8;
  }

  else
  {
    v5 = sub_1D237DED8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D237DED8()
{
  v198 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 312);
    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
    if (*(v4 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled))
    {
      sub_1D28725B8();
      v5 = sub_1D2873CA8();
      v6 = sub_1D2878A38();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1D226E000, v5, v6, "Generation was cancelled.", v7, 2u);
        MEMORY[0x1D38A3520](v7, -1, -1);
      }

      v8 = *(v0 + 808);
      v9 = *(v0 + 744);
      v10 = *(v0 + 696);
      v11 = *(v0 + 640);

      v8(v9, v10);
      sub_1D22BCEB8();
      v12 = swift_allocError();
      *v13 = 3;
    }

    else
    {
      v25 = *(v0 + 624);
      v26 = *(v0 + 504);
      v27 = *(v0 + 512);
      sub_1D22BD1D0(*(v0 + 640), v25, &qword_1EC6DA4C8, &qword_1D28836A8);
      if ((*(v27 + 48))(v25, 1, v26) == 1)
      {
        sub_1D22BD238(*(v0 + 624), &qword_1EC6DA4C8, &qword_1D28836A8);
      }

      else
      {
        (*(*(v0 + 512) + 32))(*(v0 + 536), *(v0 + 624), *(v0 + 504));
        v37 = *(sub_1D28732F8() + 16);

        if (v37)
        {
          v38 = *(v0 + 536);
          v39 = *(v0 + 528);
          v40 = *(v0 + 520);
          v41 = *(v0 + 504);
          v42 = *(v0 + 512);

          sub_1D28725B8();
          v43 = *(v42 + 16);
          v43(v39, v38, v41);
          v43(v40, v38, v41);
          v44 = sub_1D2873CA8();
          v45 = sub_1D2878A38();
          v46 = os_log_type_enabled(v44, v45);
          v47 = *(v0 + 808);
          v48 = *(v0 + 736);
          v188 = *(v0 + 696);
          v49 = *(v0 + 528);
          v50 = *(v0 + 520);
          v52 = *(v0 + 504);
          v51 = *(v0 + 512);
          if (v46)
          {
            v186 = *(v0 + 808);
            v53 = swift_slowAlloc();
            v184 = v48;
            v54 = swift_slowAlloc();
            v195 = v54;
            *v53 = 134218242;
            v181 = v45;
            v55 = *(sub_1D28732F8() + 16);

            v56 = *(v51 + 8);
            v56(v49, v52);
            *(v53 + 4) = v55;
            *(v53 + 12) = 2080;
            v57 = *(sub_1D28732F8() + 16);

            v58 = v57 == 1;
            if (v57 == 1)
            {
              v59 = 1702521203;
            }

            else
            {
              v59 = 0x73657A6973;
            }

            if (v58)
            {
              v60 = 0xE400000000000000;
            }

            else
            {
              v60 = 0xE500000000000000;
            }

            v192 = v56;
            v56(v50, v52);
            v61 = sub_1D23D7C84(v59, v60, &v195);

            *(v53 + 14) = v61;
            _os_log_impl(&dword_1D226E000, v44, v181, "Did generate emoji preview with %ld %s", v53, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v54);
            MEMORY[0x1D38A3520](v54, -1, -1);
            MEMORY[0x1D38A3520](v53, -1, -1);

            v186(v184, v188);
          }

          else
          {
            v125 = *(v51 + 8);
            v125(*(v0 + 528), *(v0 + 504));

            v192 = v125;
            v125(v50, v52);
            v47(v48, v188);
          }

          sub_1D2872708();
          v126 = sub_1D2873CA8();
          v127 = sub_1D2878A08();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            *v128 = 0;
            _os_log_impl(&dword_1D226E000, v126, v127, "Finished generation.", v128, 2u);
            MEMORY[0x1D38A3520](v128, -1, -1);
          }

          v129 = *(v0 + 808);
          v130 = *(v0 + 728);
          v131 = *(v0 + 696);
          v132 = *(v0 + 680);
          v185 = *(v0 + 672);
          v187 = *(v0 + 688);
          v182 = *(v0 + 640);
          v133 = *(v0 + 536);
          v134 = *(v0 + 504);
          v190 = *(v0 + 312);
          v183 = *(v0 + 304);

          v129(v130, v131);
          v135 = sub_1D28732F8();
          v136 = sub_1D2679904(v135);

          v192(v133, v134);
          sub_1D22BD238(v182, &qword_1EC6DA4C8, &qword_1D28836A8);
          (*(v132 + 8))(v187, v185);
          *v183 = v136;
          sub_1D2384398(v190, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask, "Finished generation task.");

          v137 = *(v0 + 8);
          goto LABEL_84;
        }

        (*(*(v0 + 512) + 8))(*(v0 + 536), *(v0 + 504));
      }

      v11 = *(v0 + 640);
      sub_1D22BCE64();
      v12 = swift_allocError();
      *v62 = xmmword_1D2883050;
      *(v62 + 16) = -96;
    }

    swift_willThrow();
  }

  else
  {
    v14 = *(v0 + 872);
    v15 = *(v0 + 632);
    v16 = *(v0 + 560);
    v17 = *(v0 + 336);
    if (v17)
    {
      v18 = *(v0 + 344);
    }

    else
    {
      v18 = 0;
    }

    (*(v2 + 32))(*(v0 + 560), v1, v3);
    sub_1D23815CC(v16, v17, v18, v15);
    if (!v14)
    {
      v28 = *(v0 + 640);
      v29 = *(v0 + 632);
      (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
      sub_1D22BD238(v28, &qword_1EC6DA4C8, &qword_1D28836A8);
      sub_1D22EC9BC(v29, v28, &qword_1EC6DA4C8, &qword_1D28836A8);
      v30 = sub_1D2878558();
      *(v0 + 856) = v30;
      v31 = swift_task_alloc();
      *(v0 + 864) = v31;
      *v31 = v0;
      v31[1] = sub_1D237DDAC;
      v32 = *(v0 + 600);
      v33 = *(v0 + 568);
      v34 = MEMORY[0x1E69E85E0];
      v35 = v0 + 296;
      v36 = v30;

      return MEMORY[0x1EEE6DB90](v33, v36, v34, v32, v35);
    }

    v12 = v14;
    v11 = *(v0 + 640);
    v19 = *(v0 + 616);
    v20 = *(v0 + 608);
    v21 = *(v0 + 600);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 544);

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
  }

  sub_1D22BD238(v11, &qword_1EC6DA4C8, &qword_1D28836A8);
  *(v0 + 256) = v12;
  v63 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast() && *(v0 + 249) == 3)
  {
    v64 = *(v0 + 688);
    v65 = *(v0 + 680);
    v66 = *(v0 + 672);

    sub_1D22BCEB8();
    swift_allocError();
    *v67 = 3;
    swift_willThrow();
    (*(v65 + 8))(v64, v66);
    v68 = *(v0 + 256);
LABEL_82:

LABEL_83:
    sub_1D2384398(*(v0 + 312), &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask, "Finished generation task.");

    v137 = *(v0 + 8);
LABEL_84:

    return v137();
  }

  *(v0 + 264) = v12;
  v69 = v12;
  if (swift_dynamicCast())
  {
    v70 = *(v0 + 688);
    v71 = *(v0 + 680);
    v72 = *(v0 + 672);
    v73 = *(v0 + 496);
    v74 = *(v0 + 472);
    v75 = *(v0 + 480);

    sub_1D22BCEB8();
    swift_allocError();
    *v76 = 3;
    swift_willThrow();
    (*(v71 + 8))(v70, v72);
    (*(v75 + 8))(v73, v74);
    v68 = *(v0 + 264);
    goto LABEL_82;
  }

  *(v0 + 272) = v12;
  v77 = v12;
  if (swift_dynamicCast())
  {
    v79 = *(v0 + 456);
    v78 = *(v0 + 464);
    v80 = *(v0 + 440);
    v81 = *(v0 + 448);

    (*(v81 + 32))(v79, v78, v80);
    v82 = sub_1D28731E8();
    v83 = *(v82 + 16);
    if (v83)
    {
      v193 = *(v0 + 416);
      v84 = v82 + 32;
      v85 = (v193 + 32);
      v86 = MEMORY[0x1E69E7CC0];
      do
      {
        v88 = *(v0 + 400);
        v87 = *(v0 + 408);
        sub_1D22D7044(v84, v0 + 72);
        sub_1D227268C((v0 + 72), v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478, &qword_1D2883630);
        v89 = swift_dynamicCast();
        (*(v193 + 56))(v88, v89 ^ 1u, 1, v87);
        if ((*(v193 + 48))(v88, 1, v87) == 1)
        {
          sub_1D22BD238(*(v0 + 400), &qword_1EC6DA438, &qword_1D28835F8);
        }

        else
        {
          v90 = *v85;
          (*v85)(*(v0 + 424), *(v0 + 400), *(v0 + 408));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_1D27CCA38(0, *(v86 + 2) + 1, 1, v86);
          }

          v92 = *(v86 + 2);
          v91 = *(v86 + 3);
          if (v92 >= v91 >> 1)
          {
            v86 = sub_1D27CCA38((v91 > 1), v92 + 1, 1, v86);
          }

          v93 = *(v0 + 424);
          v94 = *(v0 + 408);
          *(v86 + 2) = v92 + 1;
          v90(&v86[((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v92], v93, v94);
        }

        v84 += 40;
        --v83;
      }

      while (v83);

      if (*(v86 + 2))
      {
        goto LABEL_51;
      }
    }

    else
    {

      v86 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_51:
        (*(*(v0 + 416) + 16))(*(v0 + 432), &v86[(*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)], *(v0 + 408));

        if (sub_1D2381FD8())
        {
          v189 = *(v0 + 688);
          v101 = *(v0 + 680);
          v102 = *(v0 + 672);
          v104 = *(v0 + 448);
          v103 = *(v0 + 456);
          v106 = *(v0 + 432);
          v105 = *(v0 + 440);
          v108 = *(v0 + 408);
          v107 = *(v0 + 416);
          sub_1D22BCE64();
          swift_allocError();
          v110 = xmmword_1D28830A0;
LABEL_64:
          *v109 = v110;
          *(v109 + 16) = -96;
          swift_willThrow();
          (*(v107 + 8))(v106, v108);
          (*(v104 + 8))(v103, v105);
          (*(v101 + 8))(v189, v102);
LABEL_81:
          v68 = *(v0 + 272);
          goto LABEL_82;
        }

        if (sub_1D23821D4())
        {
          v189 = *(v0 + 688);
          v101 = *(v0 + 680);
          v102 = *(v0 + 672);
          v104 = *(v0 + 448);
          v103 = *(v0 + 456);
          v106 = *(v0 + 432);
          v105 = *(v0 + 440);
          v108 = *(v0 + 408);
          v107 = *(v0 + 416);
          sub_1D22BCE64();
          swift_allocError();
          v110 = xmmword_1D2883090;
          goto LABEL_64;
        }

        (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
        goto LABEL_74;
      }
    }

LABEL_74:
    v33 = sub_1D28731E8();
    v159 = v33;
    v160 = *(v33 + 16);
    if (!v160)
    {
LABEL_79:
      v163 = *(v0 + 688);
      v164 = *(v0 + 680);
      v165 = *(v0 + 672);
      v167 = *(v0 + 448);
      v166 = *(v0 + 456);
      v168 = *(v0 + 440);

      sub_1D238C24C(&qword_1EC6DA4D0, MEMORY[0x1E69DFF98], MEMORY[0x1E69DFFA0]);
      v169 = swift_allocError();
      (*(v167 + 16))(v170, v166, v168);
      sub_1D22BCE64();
      swift_allocError();
      *v171 = v169;
      *(v171 + 8) = 0;
      *(v171 + 16) = 16;
      swift_willThrow();
      (*(v167 + 8))(v166, v168);
      (*(v164 + 8))(v163, v165);
      goto LABEL_81;
    }

    v161 = 0;
    v162 = v33 + 32;
    while (v161 < *(v159 + 16))
    {
      sub_1D22D7044(v162, v0 + 152);
      sub_1D227268C((v0 + 152), v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478, &qword_1D2883630);
      v33 = swift_dynamicCast();
      if (v33)
      {
        v191 = *(v0 + 688);
        v172 = *(v0 + 680);
        v173 = *(v0 + 672);
        v175 = *(v0 + 448);
        v174 = *(v0 + 456);
        v176 = *(v0 + 440);
        v177 = *(v0 + 384);
        v178 = *(v0 + 392);
        v179 = *(v0 + 376);

        (*(v177 + 8))(v178, v179);
        sub_1D22BCE64();
        swift_allocError();
        *v180 = xmmword_1D28830A0;
        *(v180 + 16) = -96;
        swift_willThrow();
        (*(v175 + 8))(v174, v176);
        (*(v172 + 8))(v191, v173);
        goto LABEL_81;
      }

      ++v161;
      v162 += 40;
      if (v160 == v161)
      {
        goto LABEL_79;
      }
    }

    __break(1u);
    goto LABEL_88;
  }

  *(v0 + 280) = v12;
  v95 = v12;
  if (!swift_dynamicCast())
  {

    sub_1D2872708();
    v111 = v12;
    v112 = sub_1D2873CA8();
    v113 = sub_1D2878A18();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      v116 = v12;
      v117 = _swift_stdlib_bridgeErrorToNSError();
      *(v114 + 4) = v117;
      *v115 = v117;
      _os_log_impl(&dword_1D226E000, v112, v113, "Generation failed: %@.", v114, 0xCu);
      sub_1D22BD238(v115, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v115, -1, -1);
      MEMORY[0x1D38A3520](v114, -1, -1);
    }

    v118 = *(v0 + 808);
    v119 = *(v0 + 712);
    v120 = *(v0 + 696);
    v121 = *(v0 + 688);
    v122 = *(v0 + 680);
    v123 = *(v0 + 672);

    v118(v119, v120);
    sub_1D22BCE64();
    swift_allocError();
    *v124 = v12;
    *(v124 + 8) = 0;
    *(v124 + 16) = 16;
    swift_willThrow();
    (*(v122 + 8))(v121, v123);
    goto LABEL_83;
  }

  v96 = *(v0 + 352);

  v97 = *(v0 + 232);
  v98 = *(v0 + 240);
  *(v0 + 880) = v97;
  *(v0 + 888) = v98;
  v99 = *(v0 + 248);
  *(v0 + 250) = v99;
  v100 = v96 - 1;
  if (__OFSUB__(v96, 1))
  {
LABEL_88:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v33, v36, v34, v32, v35);
  }

  if (v100 < 1)
  {
LABEL_72:

    v155 = *(v0 + 688);
    v156 = *(v0 + 680);
    v157 = *(v0 + 672);
    sub_1D22BCE64();
    swift_allocError();
    *v158 = v97;
    *(v158 + 8) = v98;
    *(v158 + 16) = v99;
    swift_willThrow();
    (*(v156 + 8))(v155, v157);
    v68 = *(v0 + 280);
    goto LABEL_82;
  }

  if (v99 <= 0x4F)
  {
    *(v0 + 288) = v97;
    sub_1D233E72C(v97, v98, v99);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      goto LABEL_72;
    }
  }

  sub_1D28725B8();
  v138 = sub_1D2873CA8();
  v139 = sub_1D2878A38();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 134217984;
    *(v140 + 4) = v100;
    _os_log_impl(&dword_1D226E000, v138, v139, "Will retry to generate preview (%ld).", v140, 0xCu);
    MEMORY[0x1D38A3520](v140, -1, -1);
  }

  v194 = v100;
  v141 = *(v0 + 808);
  v142 = *(v0 + 720);
  v143 = *(v0 + 696);
  v144 = *(v0 + 360);

  v141(v142, v143);
  if (v144)
  {
    v145 = *(v0 + 360);
    sub_1D22BCE64();
    v146 = swift_allocError();
    *v147 = v97;
    *(v147 + 8) = v98;
    *(v147 + 16) = v99;
    v195 = v146;
    v196 = 0;
    v197 = 64;
    sub_1D233E72C(v97, v98, v99);
    v145(&v195);
    sub_1D22BCDC4(v195, v196, v197);
  }

  v148 = swift_task_alloc();
  *(v0 + 896) = v148;
  *v148 = v0;
  v148[1] = sub_1D237F4F8;
  v149 = *(v0 + 360);
  v150 = *(v0 + 368);
  v152 = *(v0 + 336);
  v151 = *(v0 + 344);
  v153 = *(v0 + 320);

  return sub_1D2359A3C(v152, v151, v149, v150, v194, v153);
}

uint64_t sub_1D237F4F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 904) = v1;

  if (v1)
  {
    v5 = v4[100];
    v6 = v4[99];
    v7 = sub_1D2381378;
  }

  else
  {
    v4[114] = a1;
    v5 = v4[100];
    v6 = v4[99];
    v7 = sub_1D237F628;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D237F628()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 250);

  sub_1D22BCDC4(v3, v2, v9);
  (*(v5 + 8))(v4, v6);
  *v8 = v1;

  sub_1D2384398(v7, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask, "Finished generation task.");

  v10 = *(v0 + 8);

  return v10();
}

void sub_1D237F878()
{
  v115 = v0;

  v1 = *(v0 + 848);
  *(v0 + 256) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast() && *(v0 + 249) == 3)
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 680);
    v5 = *(v0 + 672);

    sub_1D22BCEB8();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
    v7 = *(v0 + 256);
LABEL_51:

LABEL_52:
    sub_1D2384398(*(v0 + 312), &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask, "Finished generation task.");

    v107 = *(v0 + 8);

    v107();
    return;
  }

  *(v0 + 264) = v1;
  v8 = v1;
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 688);
    v10 = *(v0 + 680);
    v11 = *(v0 + 672);
    v12 = *(v0 + 496);
    v13 = *(v0 + 472);
    v14 = *(v0 + 480);

    sub_1D22BCEB8();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    (*(v14 + 8))(v12, v13);
    v7 = *(v0 + 264);
    goto LABEL_51;
  }

  *(v0 + 272) = v1;
  v16 = v1;
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 456);
    v17 = *(v0 + 464);
    v19 = *(v0 + 440);
    v20 = *(v0 + 448);

    (*(v20 + 32))(v18, v17, v19);
    v21 = sub_1D28731E8();
    v22 = *(v21 + 16);
    if (v22)
    {
      v110 = *(v0 + 416);
      v23 = v21 + 32;
      v24 = (v110 + 32);
      v25 = MEMORY[0x1E69E7CC0];
      do
      {
        v27 = *(v0 + 400);
        v26 = *(v0 + 408);
        sub_1D22D7044(v23, v0 + 72);
        sub_1D227268C((v0 + 72), v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478, &qword_1D2883630);
        v28 = swift_dynamicCast();
        (*(v110 + 56))(v27, v28 ^ 1u, 1, v26);
        if ((*(v110 + 48))(v27, 1, v26) == 1)
        {
          sub_1D22BD238(*(v0 + 400), &qword_1EC6DA438, &qword_1D28835F8);
        }

        else
        {
          v29 = *v24;
          (*v24)(*(v0 + 424), *(v0 + 400), *(v0 + 408));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1D27CCA38(0, *(v25 + 2) + 1, 1, v25);
          }

          v31 = *(v25 + 2);
          v30 = *(v25 + 3);
          if (v31 >= v30 >> 1)
          {
            v25 = sub_1D27CCA38((v30 > 1), v31 + 1, 1, v25);
          }

          v32 = *(v0 + 424);
          v33 = *(v0 + 408);
          *(v25 + 2) = v31 + 1;
          v29(&v25[((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v31], v32, v33);
        }

        v23 += 40;
        --v22;
      }

      while (v22);

      if (*(v25 + 2))
      {
        goto LABEL_24;
      }
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_24:
        (*(*(v0 + 416) + 16))(*(v0 + 432), &v25[(*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)], *(v0 + 408));

        if (sub_1D2381FD8())
        {
          v108 = *(v0 + 688);
          v40 = *(v0 + 680);
          v41 = *(v0 + 672);
          v43 = *(v0 + 448);
          v42 = *(v0 + 456);
          v45 = *(v0 + 432);
          v44 = *(v0 + 440);
          v47 = *(v0 + 408);
          v46 = *(v0 + 416);
          sub_1D22BCE64();
          swift_allocError();
          v49 = xmmword_1D28830A0;
LABEL_33:
          *v48 = v49;
          *(v48 + 16) = -96;
          swift_willThrow();
          (*(v46 + 8))(v45, v47);
          (*(v43 + 8))(v42, v44);
          (*(v40 + 8))(v108, v41);
LABEL_50:
          v7 = *(v0 + 272);
          goto LABEL_51;
        }

        if (sub_1D23821D4())
        {
          v108 = *(v0 + 688);
          v40 = *(v0 + 680);
          v41 = *(v0 + 672);
          v43 = *(v0 + 448);
          v42 = *(v0 + 456);
          v45 = *(v0 + 432);
          v44 = *(v0 + 440);
          v47 = *(v0 + 408);
          v46 = *(v0 + 416);
          sub_1D22BCE64();
          swift_allocError();
          v49 = xmmword_1D2883090;
          goto LABEL_33;
        }

        (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
        goto LABEL_43;
      }
    }

LABEL_43:
    v84 = sub_1D28731E8();
    v85 = v84;
    v86 = *(v84 + 16);
    if (!v86)
    {
LABEL_48:
      v89 = *(v0 + 688);
      v90 = *(v0 + 680);
      v91 = *(v0 + 672);
      v93 = *(v0 + 448);
      v92 = *(v0 + 456);
      v94 = *(v0 + 440);

      sub_1D238C24C(&qword_1EC6DA4D0, MEMORY[0x1E69DFF98], MEMORY[0x1E69DFFA0]);
      v95 = swift_allocError();
      (*(v93 + 16))(v96, v92, v94);
      sub_1D22BCE64();
      swift_allocError();
      *v97 = v95;
      *(v97 + 8) = 0;
      *(v97 + 16) = 16;
      swift_willThrow();
      (*(v93 + 8))(v92, v94);
      (*(v90 + 8))(v89, v91);
      goto LABEL_50;
    }

    v87 = 0;
    v88 = v84 + 32;
    while (v87 < *(v85 + 16))
    {
      sub_1D22D7044(v88, v0 + 152);
      sub_1D227268C((v0 + 152), v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478, &qword_1D2883630);
      if (swift_dynamicCast())
      {
        v109 = *(v0 + 688);
        v98 = *(v0 + 680);
        v99 = *(v0 + 672);
        v101 = *(v0 + 448);
        v100 = *(v0 + 456);
        v102 = *(v0 + 440);
        v103 = *(v0 + 384);
        v104 = *(v0 + 392);
        v105 = *(v0 + 376);

        (*(v103 + 8))(v104, v105);
        sub_1D22BCE64();
        swift_allocError();
        *v106 = xmmword_1D28830A0;
        *(v106 + 16) = -96;
        swift_willThrow();
        (*(v101 + 8))(v100, v102);
        (*(v98 + 8))(v109, v99);
        goto LABEL_50;
      }

      ++v87;
      v88 += 40;
      if (v86 == v87)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    return;
  }

  *(v0 + 280) = v1;
  v34 = v1;
  if (!swift_dynamicCast())
  {

    sub_1D2872708();
    v50 = v1;
    v51 = sub_1D2873CA8();
    v52 = sub_1D2878A18();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = v1;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      _os_log_impl(&dword_1D226E000, v51, v52, "Generation failed: %@.", v53, 0xCu);
      sub_1D22BD238(v54, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v54, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);
    }

    v57 = *(v0 + 808);
    v58 = *(v0 + 712);
    v59 = *(v0 + 696);
    v60 = *(v0 + 688);
    v61 = *(v0 + 680);
    v62 = *(v0 + 672);

    v57(v58, v59);
    sub_1D22BCE64();
    swift_allocError();
    *v63 = v1;
    *(v63 + 8) = 0;
    *(v63 + 16) = 16;
    swift_willThrow();
    (*(v61 + 8))(v60, v62);
    goto LABEL_52;
  }

  v35 = *(v0 + 352);

  v36 = *(v0 + 232);
  v37 = *(v0 + 240);
  *(v0 + 880) = v36;
  *(v0 + 888) = v37;
  v38 = *(v0 + 248);
  *(v0 + 250) = v38;
  v39 = v35 - 1;
  if (__OFSUB__(v35, 1))
  {
    goto LABEL_56;
  }

  if (v39 < 1)
  {
LABEL_41:

    v80 = *(v0 + 688);
    v81 = *(v0 + 680);
    v82 = *(v0 + 672);
    sub_1D22BCE64();
    swift_allocError();
    *v83 = v36;
    *(v83 + 8) = v37;
    *(v83 + 16) = v38;
    swift_willThrow();
    (*(v81 + 8))(v80, v82);
    v7 = *(v0 + 280);
    goto LABEL_51;
  }

  if (v38 <= 0x4F)
  {
    *(v0 + 288) = v36;
    sub_1D233E72C(v36, v37, v38);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      goto LABEL_41;
    }
  }

  sub_1D28725B8();
  v64 = sub_1D2873CA8();
  v65 = sub_1D2878A38();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = v39;
    _os_log_impl(&dword_1D226E000, v64, v65, "Will retry to generate preview (%ld).", v66, 0xCu);
    MEMORY[0x1D38A3520](v66, -1, -1);
  }

  v111 = v39;
  v67 = *(v0 + 808);
  v68 = *(v0 + 720);
  v69 = *(v0 + 696);
  v70 = *(v0 + 360);

  v67(v68, v69);
  if (v70)
  {
    v71 = *(v0 + 360);
    sub_1D22BCE64();
    v72 = swift_allocError();
    *v73 = v36;
    *(v73 + 8) = v37;
    *(v73 + 16) = v38;
    v112 = v72;
    v113 = 0;
    v114 = 64;
    sub_1D233E72C(v36, v37, v38);
    v71(&v112);
    sub_1D22BCDC4(v112, v113, v114);
  }

  v74 = swift_task_alloc();
  *(v0 + 896) = v74;
  *v74 = v0;
  v74[1] = sub_1D237F4F8;
  v75 = *(v0 + 360);
  v76 = *(v0 + 368);
  v78 = *(v0 + 336);
  v77 = *(v0 + 344);
  v79 = *(v0 + 320);

  sub_1D2359A3C(v78, v77, v75, v76, v111, v79);
}

void sub_1D23805D8()
{
  v119 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);

  (*(v3 + 8))(v2, v4);
  sub_1D22BD238(v1, &qword_1EC6DA4C8, &qword_1D28836A8);
  v5 = *(v0 + 296);
  *(v0 + 256) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast() && *(v0 + 249) == 3)
  {
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);
    v9 = *(v0 + 672);

    sub_1D22BCEB8();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    v11 = *(v0 + 256);
LABEL_51:

LABEL_52:
    sub_1D2384398(*(v0 + 312), &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask, "Finished generation task.");

    v111 = *(v0 + 8);

    v111();
    return;
  }

  *(v0 + 264) = v5;
  v12 = v5;
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 688);
    v14 = *(v0 + 680);
    v15 = *(v0 + 672);
    v16 = *(v0 + 496);
    v17 = *(v0 + 472);
    v18 = *(v0 + 480);

    sub_1D22BCEB8();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    (*(v18 + 8))(v16, v17);
    v11 = *(v0 + 264);
    goto LABEL_51;
  }

  *(v0 + 272) = v5;
  v20 = v5;
  if (swift_dynamicCast())
  {
    v22 = *(v0 + 456);
    v21 = *(v0 + 464);
    v23 = *(v0 + 440);
    v24 = *(v0 + 448);

    (*(v24 + 32))(v22, v21, v23);
    v25 = sub_1D28731E8();
    v26 = *(v25 + 16);
    if (v26)
    {
      v114 = *(v0 + 416);
      v27 = v25 + 32;
      v28 = (v114 + 32);
      v29 = MEMORY[0x1E69E7CC0];
      do
      {
        v31 = *(v0 + 400);
        v30 = *(v0 + 408);
        sub_1D22D7044(v27, v0 + 72);
        sub_1D227268C((v0 + 72), v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478, &qword_1D2883630);
        v32 = swift_dynamicCast();
        (*(v114 + 56))(v31, v32 ^ 1u, 1, v30);
        if ((*(v114 + 48))(v31, 1, v30) == 1)
        {
          sub_1D22BD238(*(v0 + 400), &qword_1EC6DA438, &qword_1D28835F8);
        }

        else
        {
          v33 = *v28;
          (*v28)(*(v0 + 424), *(v0 + 400), *(v0 + 408));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1D27CCA38(0, *(v29 + 2) + 1, 1, v29);
          }

          v35 = *(v29 + 2);
          v34 = *(v29 + 3);
          if (v35 >= v34 >> 1)
          {
            v29 = sub_1D27CCA38((v34 > 1), v35 + 1, 1, v29);
          }

          v36 = *(v0 + 424);
          v37 = *(v0 + 408);
          *(v29 + 2) = v35 + 1;
          v33(&v29[((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v35], v36, v37);
        }

        v27 += 40;
        --v26;
      }

      while (v26);

      if (*(v29 + 2))
      {
        goto LABEL_24;
      }
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_24:
        (*(*(v0 + 416) + 16))(*(v0 + 432), &v29[(*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)], *(v0 + 408));

        if (sub_1D2381FD8())
        {
          v112 = *(v0 + 688);
          v44 = *(v0 + 680);
          v45 = *(v0 + 672);
          v47 = *(v0 + 448);
          v46 = *(v0 + 456);
          v49 = *(v0 + 432);
          v48 = *(v0 + 440);
          v51 = *(v0 + 408);
          v50 = *(v0 + 416);
          sub_1D22BCE64();
          swift_allocError();
          v53 = xmmword_1D28830A0;
LABEL_33:
          *v52 = v53;
          *(v52 + 16) = -96;
          swift_willThrow();
          (*(v50 + 8))(v49, v51);
          (*(v47 + 8))(v46, v48);
          (*(v44 + 8))(v112, v45);
LABEL_50:
          v11 = *(v0 + 272);
          goto LABEL_51;
        }

        if (sub_1D23821D4())
        {
          v112 = *(v0 + 688);
          v44 = *(v0 + 680);
          v45 = *(v0 + 672);
          v47 = *(v0 + 448);
          v46 = *(v0 + 456);
          v49 = *(v0 + 432);
          v48 = *(v0 + 440);
          v51 = *(v0 + 408);
          v50 = *(v0 + 416);
          sub_1D22BCE64();
          swift_allocError();
          v53 = xmmword_1D2883090;
          goto LABEL_33;
        }

        (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
        goto LABEL_43;
      }
    }

LABEL_43:
    v88 = sub_1D28731E8();
    v89 = v88;
    v90 = *(v88 + 16);
    if (!v90)
    {
LABEL_48:
      v93 = *(v0 + 688);
      v94 = *(v0 + 680);
      v95 = *(v0 + 672);
      v97 = *(v0 + 448);
      v96 = *(v0 + 456);
      v98 = *(v0 + 440);

      sub_1D238C24C(&qword_1EC6DA4D0, MEMORY[0x1E69DFF98], MEMORY[0x1E69DFFA0]);
      v99 = swift_allocError();
      (*(v97 + 16))(v100, v96, v98);
      sub_1D22BCE64();
      swift_allocError();
      *v101 = v99;
      *(v101 + 8) = 0;
      *(v101 + 16) = 16;
      swift_willThrow();
      (*(v97 + 8))(v96, v98);
      (*(v94 + 8))(v93, v95);
      goto LABEL_50;
    }

    v91 = 0;
    v92 = v88 + 32;
    while (v91 < *(v89 + 16))
    {
      sub_1D22D7044(v92, v0 + 152);
      sub_1D227268C((v0 + 152), v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478, &qword_1D2883630);
      if (swift_dynamicCast())
      {
        v113 = *(v0 + 688);
        v102 = *(v0 + 680);
        v103 = *(v0 + 672);
        v105 = *(v0 + 448);
        v104 = *(v0 + 456);
        v106 = *(v0 + 440);
        v107 = *(v0 + 384);
        v108 = *(v0 + 392);
        v109 = *(v0 + 376);

        (*(v107 + 8))(v108, v109);
        sub_1D22BCE64();
        swift_allocError();
        *v110 = xmmword_1D28830A0;
        *(v110 + 16) = -96;
        swift_willThrow();
        (*(v105 + 8))(v104, v106);
        (*(v102 + 8))(v113, v103);
        goto LABEL_50;
      }

      ++v91;
      v92 += 40;
      if (v90 == v91)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    return;
  }

  *(v0 + 280) = v5;
  v38 = v5;
  if (!swift_dynamicCast())
  {

    sub_1D2872708();
    v54 = v5;
    v55 = sub_1D2873CA8();
    v56 = sub_1D2878A18();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = v5;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_1D226E000, v55, v56, "Generation failed: %@.", v57, 0xCu);
      sub_1D22BD238(v58, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v58, -1, -1);
      MEMORY[0x1D38A3520](v57, -1, -1);
    }

    v61 = *(v0 + 808);
    v62 = *(v0 + 712);
    v63 = *(v0 + 696);
    v64 = *(v0 + 688);
    v65 = *(v0 + 680);
    v66 = *(v0 + 672);

    v61(v62, v63);
    sub_1D22BCE64();
    swift_allocError();
    *v67 = v5;
    *(v67 + 8) = 0;
    *(v67 + 16) = 16;
    swift_willThrow();
    (*(v65 + 8))(v64, v66);
    goto LABEL_52;
  }

  v39 = *(v0 + 352);

  v40 = *(v0 + 232);
  v41 = *(v0 + 240);
  *(v0 + 880) = v40;
  *(v0 + 888) = v41;
  v42 = *(v0 + 248);
  *(v0 + 250) = v42;
  v43 = v39 - 1;
  if (__OFSUB__(v39, 1))
  {
    goto LABEL_56;
  }

  if (v43 < 1)
  {
LABEL_41:

    v84 = *(v0 + 688);
    v85 = *(v0 + 680);
    v86 = *(v0 + 672);
    sub_1D22BCE64();
    swift_allocError();
    *v87 = v40;
    *(v87 + 8) = v41;
    *(v87 + 16) = v42;
    swift_willThrow();
    (*(v85 + 8))(v84, v86);
    v11 = *(v0 + 280);
    goto LABEL_51;
  }

  if (v42 <= 0x4F)
  {
    *(v0 + 288) = v40;
    sub_1D233E72C(v40, v41, v42);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      goto LABEL_41;
    }
  }

  sub_1D28725B8();
  v68 = sub_1D2873CA8();
  v69 = sub_1D2878A38();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    *(v70 + 4) = v43;
    _os_log_impl(&dword_1D226E000, v68, v69, "Will retry to generate preview (%ld).", v70, 0xCu);
    MEMORY[0x1D38A3520](v70, -1, -1);
  }

  v115 = v43;
  v71 = *(v0 + 808);
  v72 = *(v0 + 720);
  v73 = *(v0 + 696);
  v74 = *(v0 + 360);

  v71(v72, v73);
  if (v74)
  {
    v75 = *(v0 + 360);
    sub_1D22BCE64();
    v76 = swift_allocError();
    *v77 = v40;
    *(v77 + 8) = v41;
    *(v77 + 16) = v42;
    v116 = v76;
    v117 = 0;
    v118 = 64;
    sub_1D233E72C(v40, v41, v42);
    v75(&v116);
    sub_1D22BCDC4(v116, v117, v118);
  }

  v78 = swift_task_alloc();
  *(v0 + 896) = v78;
  *v78 = v0;
  v78[1] = sub_1D237F4F8;
  v79 = *(v0 + 360);
  v80 = *(v0 + 368);
  v82 = *(v0 + 336);
  v81 = *(v0 + 344);
  v83 = *(v0 + 320);

  sub_1D2359A3C(v82, v81, v79, v80, v115, v83);
}

uint64_t sub_1D2381378()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 250);

  sub_1D22BCDC4(v2, v1, v6);
  (*(v4 + 8))(v3, v5);

  sub_1D2384398(*(v0 + 312), &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask, "Finished generation task.");

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D23815CC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, float)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v80[1] = a3;
  v84 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA448, &unk_1D2886B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v80 - v6;
  v8 = sub_1D2873308();
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  v86 = v10;
  v87 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v80[0] = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v83 = v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v80 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v80 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v82 = v80 - v22;
  v23 = sub_1D2873328();
  v85 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2873338();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v30, a1, v26, v28);
  v31 = (*(v27 + 88))(v30, v26);
  if (v31 == *MEMORY[0x1E69E0010])
  {
    (*(v27 + 96))(v30, v26);
    v32 = sub_1D2872908();
    v33 = *(v32 - 8);
    (*(v33 + 32))(v7, v30, v32);
    v34 = 1;
    (*(v33 + 56))(v7, 0, 1, v32);
    v35 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_lastUpdatedGenerationState;
    v36 = v88;
    swift_beginAccess();
    sub_1D22BD298(v7, v36 + v35, &qword_1EC6DA448, &unk_1D2886B10);
    swift_endAccess();
LABEL_25:
    v70 = v90;
    v71 = v91;
    v61 = v89;
    return (*(v61 + 56))(v71, v34, 1, v70);
  }

  if (v31 == *MEMORY[0x1E69E0028])
  {
    (*(v27 + 96))(v30, v26);
    v37 = v85;
    (*(v85 + 32))(v25, v30, v23);
    v38 = sub_1D2873318();
    if ((v38 & 0x100000000) == 0)
    {
      v39 = *&v38;
      if (*&v38 > 0.0)
      {
        v40 = v82;
        sub_1D2872708();
        v41 = sub_1D2873CA8();
        v42 = sub_1D2878A08();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v92[0] = v44;
          *v43 = 136315138;
          v45 = sub_1D28787B8();
          v47 = sub_1D23D7C84(v45, v46, v92);

          *(v43 + 4) = v47;
          _os_log_impl(&dword_1D226E000, v41, v42, "Emoji generation progress: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          v48 = v44;
          v37 = v85;
          MEMORY[0x1D38A3520](v48, -1, -1);
          MEMORY[0x1D38A3520](v43, -1, -1);

          v49 = (*(v87 + 8))(v82, v86);
        }

        else
        {

          v49 = (*(v87 + 8))(v40, v86);
        }

        if (v84)
        {
          v84(v49, v39);
        }
      }
    }

    (*(v37 + 8))(v25, v23);
    v34 = 1;
    goto LABEL_25;
  }

  if (v31 != *MEMORY[0x1E69E0020])
  {
    if (v31 == *MEMORY[0x1E69E0038])
    {
      (*(v27 + 96))(v30, v26);
      v61 = v89;
      v62 = *(v89 + 32);
      v63 = v81;
      v64 = v30;
      v65 = v90;
      v62(v81, v64);
      sub_1D2872708();
      v66 = sub_1D2873CA8();
      v67 = sub_1D2878A08();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1D226E000, v66, v67, "Emoji generation completed", v68, 2u);
        MEMORY[0x1D38A3520](v68, -1, -1);
      }

      (*(v87 + 8))(v17, v86);
      v69 = v91;
      (v62)(v91, v63, v65);
      v70 = v65;
      v71 = v69;
      v34 = 0;
    }

    else
    {
      v61 = v89;
      if (v31 == *MEMORY[0x1E69E0030])
      {
        sub_1D2872708();
        v72 = sub_1D2873CA8();
        v73 = sub_1D2878A08();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_1D226E000, v72, v73, "Emoji generation starting", v74, 2u);
          MEMORY[0x1D38A3520](v74, -1, -1);
        }

        v75 = (*(v87 + 8))(v20, v86);
        if (v84)
        {
          v84(v75, 0.05);
        }
      }

      else if (v31 != *MEMORY[0x1E69E0018])
      {
        v76 = v80[0];
        sub_1D2872708();
        v77 = sub_1D2873CA8();
        v78 = sub_1D2878A08();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_1D226E000, v77, v78, "Emoji generation reported an unknown event", v79, 2u);
          MEMORY[0x1D38A3520](v79, -1, -1);
        }

        (*(v87 + 8))(v76, v86);
        (*(v27 + 8))(v30, v26);
      }

      v34 = 1;
      v70 = v90;
      v71 = v91;
    }

    return (*(v61 + 56))(v71, v34, 1, v70);
  }

  (*(v27 + 96))(v30, v26);
  v50 = *v30;
  v51 = v83;
  sub_1D2872708();
  v52 = v50;
  v53 = sub_1D2873CA8();
  v54 = sub_1D2878A08();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v92[0] = v56;
    *v55 = 136315138;
    swift_getErrorValue();
    v57 = sub_1D2879748();
    v59 = sub_1D23D7C84(v57, v58, v92);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_1D226E000, v53, v54, "Emoji generation failed with error: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x1D38A3520](v56, -1, -1);
    MEMORY[0x1D38A3520](v55, -1, -1);
  }

  (*(v87 + 8))(v51, v86);
  return swift_willThrow();
}

uint64_t sub_1D2381FD8()
{
  v0 = sub_1D2872CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = *(sub_1D2872CA8() + 16);

  if (v7 == 1 && (v8 = sub_1D2872CA8(), v9 = *MEMORY[0x1E69DFDE0], v10 = *(v1 + 104), v10(v6, v9, v0), v11 = sub_1D25A5BC4(v6, v8), , v12 = *(v1 + 8), v12(v6, v0), (v11 & 1) != 0))
  {
    sub_1D2872CB8();
    v10(v3, v9, v0);
    sub_1D238C24C(&qword_1EC6D8BB0, MEMORY[0x1E69DFDF0], MEMORY[0x1E69DFE00]);
    v13 = sub_1D2877F98();
    v12(v3, v0);
    v12(v6, v0);
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D23821D4()
{
  v0 = sub_1D2872CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  sub_1D2872CB8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DFDE8], v0);
  sub_1D238C24C(&qword_1EC6DA480, MEMORY[0x1E69DFDF0], MEMORY[0x1E69DFE08]);
  sub_1D2878368();
  sub_1D2878368();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D2879618();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_1D23823AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a8;
  v64 = a2;
  v55 = a6;
  v56 = a7;
  v48 = a5;
  v53 = a4;
  v57 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0, &qword_1D2883660);
  v59 = *(v8 - 8);
  v60 = v8;
  v61 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v47 - v9;
  v10 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2872D38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v52 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v51 = &v47 - v21;
  sub_1D28786E8();
  v23 = sub_1D28785F8();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = *(v13 + 16);
  v24(v17, v53, v12);
  v24(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v12);
  sub_1D238D0B8(v55, &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageGeneration.GenerationParameters);
  sub_1D2878568();
  v25 = v64;
  sub_1D2870F78();
  sub_1D2870F78();
  v26 = v56;
  sub_1D22A58B8(v56, v63);
  v27 = sub_1D2878558();
  (*(v13 + 8))(v17, v12);
  v28 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v29 = (v14 + *(v54 + 80) + v28) & ~*(v54 + 80);
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  *(v30 + 2) = v27;
  *(v30 + 3) = v31;
  v32 = v57;
  *(v30 + 4) = v25;
  *(v30 + 5) = v32;
  v33 = v49;
  *(v30 + 6) = v48;
  (*(v13 + 32))(&v30[v28], v33, v12);
  sub_1D238C294(v50, &v30[v29], type metadata accessor for ImageGeneration.GenerationParameters);
  v34 = &v30[(v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8];
  v35 = v63;
  *v34 = v26;
  v34[1] = v35;
  v36 = v51;
  v37 = v52;
  sub_1D22BD1D0(v51, v52, &qword_1EC6D8E60, &qword_1D28811F0);
  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v59 + 16))(v58, v62, v60);
  sub_1D2870F78();
  v41 = sub_1D2878558();
  v42 = v38;
  v43 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v41;
  *(v44 + 3) = MEMORY[0x1E69E85E0];
  *(v44 + 4) = &unk_1D28837C8;
  *(v44 + 5) = v30;
  (*(v42 + 32))(&v44[v43], v39, v40);
  v45 = sub_1D22AE01C(0, 0, v37, &unk_1D28837D0, v44);

  sub_1D22BD238(v36, &qword_1EC6D8E60, &qword_1D28811F0);
  *(v64 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask) = v45;
}

uint64_t sub_1D23828E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = v21;
  v8[43] = v22;
  v8[40] = a7;
  v8[41] = a8;
  v8[38] = a5;
  v8[39] = a6;
  v8[36] = a1;
  v8[37] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  v8[44] = swift_task_alloc();
  v9 = sub_1D2873748();
  v8[45] = v9;
  v8[46] = *(v9 - 8);
  v8[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA438, &qword_1D28835F8);
  v8[48] = swift_task_alloc();
  v10 = sub_1D2872CD8();
  v8[49] = v10;
  v8[50] = *(v10 - 8);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v11 = sub_1D28731F8();
  v8[53] = v11;
  v8[54] = *(v11 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v12 = sub_1D2872D08();
  v8[57] = v12;
  v8[58] = *(v12 - 8);
  v8[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA540, &qword_1D28837D8);
  v8[60] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA548, &qword_1D28837E0);
  v8[61] = v13;
  v8[62] = *(v13 - 8);
  v8[63] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA550, &qword_1D28837E8);
  v8[64] = v14;
  v8[65] = *(v14 - 8);
  v8[66] = swift_task_alloc();
  v15 = sub_1D2872D68();
  v8[67] = v15;
  v8[68] = *(v15 - 8);
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v16 = sub_1D2873CB8();
  v8[71] = v16;
  v8[72] = *(v16 - 8);
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = sub_1D2878568();
  v8[78] = sub_1D2878558();
  v18 = sub_1D28784F8();
  v8[79] = v18;
  v8[80] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D2382D7C, v18, v17);
}

uint64_t sub_1D2382D7C(uint64_t a1)
{
  sub_1D28725B8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[38];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D226E000, v2, v3, "Starting generation task (index: %ld).", v5, 0xCu);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  v6 = v1[76];
  v7 = v1[72];
  v8 = v1[71];
  v9 = v1[41];

  v10 = *(v7 + 8);
  v1[81] = v10;
  v1[82] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v12 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198, &qword_1D28816A0);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD00000000000001CLL, 0x80000001D28B2200, v12, 1);

  v13 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v1[83] = v13;
  v14 = *(v13 + 84);
  v15 = swift_task_alloc();
  v1[84] = v15;
  *v15 = v1;
  v15[1] = sub_1D2382FF0;
  v16 = v1[70];
  v17 = v1[40];

  return MEMORY[0x1EEE4F518](v16, v17, v9 + v14);
}

uint64_t sub_1D2382FF0()
{
  v1 = *v0;

  v2 = *(v1 + 640);
  v3 = *(v1 + 632);

  return MEMORY[0x1EEE6DFA0](sub_1D2383110, v3, v2);
}

uint64_t sub_1D2383110(uint64_t a1)
{
  v29 = v1;
  sub_1D28725B8();
  has_internal_ui = os_variant_has_internal_ui();
  v3 = v1[81];
  v4 = v1[75];
  v5 = v1[71];
  if (has_internal_ui)
  {
    (*(v1[68] + 16))(v1[69], v1[70], v1[67]);
    v6 = sub_1D2873CA8();
    v3(v4, v5);
    v7 = sub_1D2878A38();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[69];
    v10 = v1[68];
    v11 = v1[67];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      v14 = sub_1D2872D58();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_1D23D7C84(v14, v16, &v28);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D226E000, v6, v7, "Prompt used in session: '%s'.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D38A3520](v13, -1, -1);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  else
  {
    v3(v1[75], v1[71]);
  }

  v19 = v1[62];
  v18 = v1[63];
  v20 = v1[61];
  v21 = MEMORY[0x1E69E7CC0];
  v1[32] = MEMORY[0x1E69E7CC0];
  sub_1D2872D48();
  sub_1D2878658();
  (*(v19 + 8))(v18, v20);
  v1[87] = v21;
  v1[86] = v21;
  v1[85] = 0;
  v22 = sub_1D2878558();
  v1[88] = v22;
  v23 = swift_task_alloc();
  v1[89] = v23;
  *v23 = v1;
  v23[1] = sub_1D23833B8;
  v24 = v1[64];
  v25 = v1[60];
  v26 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v25, v22, v26, v24);
}

uint64_t sub_1D23833B8()
{
  v1 = *v0;

  v2 = *(v1 + 640);
  v3 = *(v1 + 632);

  return MEMORY[0x1EEE6DFA0](sub_1D23834FC, v3, v2);
}

uint64_t sub_1D23834FC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 296);
  if (v4 == 1)
  {
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));

    if ((*(v5 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled) & 1) == 0)
    {
      sub_1D28725B8();
      v51 = sub_1D2873CA8();
      v52 = sub_1D2878A38();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v0 + 304);
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = v53;
        _os_log_impl(&dword_1D226E000, v51, v52, "Did generate preview (index: %ld).", v54, 0xCu);
        MEMORY[0x1D38A3520](v54, -1, -1);
      }

      v55 = *(v0 + 696);
      v56 = *(v0 + 648);
      v57 = *(v0 + 584);
      v58 = *(v0 + 568);
      v59 = *(v0 + 544);
      v124 = *(v0 + 536);
      v125 = *(v0 + 560);
      v60 = *(v0 + 288);
      v61 = *(v0 + 296);

      v56(v57, v58);
      v62 = sub_1D2679AD0(v55);

      (*(v59 + 8))(v125, v124);
      *v60 = v62;
      sub_1D2384398(v61, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask, "Finished generation task.");

      v63 = *(v0 + 8);
      goto LABEL_58;
    }

    sub_1D28725B8();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A38();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "Generation was cancelled.", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v9 = *(v0 + 648);
    v10 = *(v0 + 592);
    v11 = *(v0 + 568);
    v12 = *(v0 + 560);
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);

    v9(v10, v11);
    sub_1D22BCEB8();
    v15 = swift_allocError();
    *v16 = 3;
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    goto LABEL_11;
  }

  v17 = *(v0 + 680);
  v18 = *(v0 + 472);
  v19 = *(v0 + 336);
  if (v19)
  {
    v20 = *(v0 + 344);
  }

  else
  {
    v20 = 0;
  }

  (*(v3 + 32))(*(v0 + 472), v1, v2);
  v21 = sub_1D23844EC(v18, v19, v20);
  if (v17)
  {
    v15 = v17;
    v126 = *(v0 + 560);
    v22 = *(v0 + 544);
    v23 = *(v0 + 536);
    v24 = *(v0 + 528);
    v25 = *(v0 + 520);
    v26 = *(v0 + 512);
    v27 = *(v0 + 464);
    v28 = *(v0 + 472);
    v29 = *(v0 + 456);

    (*(v27 + 8))(v28, v29);
    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v126, v23);

LABEL_11:
    *(v0 + 264) = v15;
    v30 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    if (swift_dynamicCast() && *(v0 + 720) == 3)
    {

      sub_1D22BCEB8();
      swift_allocError();
      *v31 = 3;
      swift_willThrow();
      v32 = *(v0 + 264);
      goto LABEL_56;
    }

    *(v0 + 272) = v15;
    v33 = v15;
    if (!swift_dynamicCast())
    {

      swift_getErrorValue();
      v70 = *(v0 + 240);
      v71 = *(v0 + 248);
      v72 = v15;
      v73 = sub_1D2384D90(v70, v71);

      if ((v73 & 1) == 0)
      {
        sub_1D22BCE64();
        swift_allocError();
        *v88 = v15;
        *(v88 + 8) = 0;
        *(v88 + 16) = 16;
        swift_willThrow();
LABEL_57:
        sub_1D2384398(*(v0 + 296), &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask, "Finished generation task.");

        v63 = *(v0 + 8);
LABEL_58:

        return v63();
      }

      sub_1D22BCE64();
      swift_allocError();
      *v74 = xmmword_1D2883080;
      *(v74 + 16) = -96;
      swift_willThrow();
      v32 = v15;
LABEL_56:

      goto LABEL_57;
    }

    v35 = *(v0 + 440);
    v34 = *(v0 + 448);
    v36 = *(v0 + 424);
    v37 = *(v0 + 432);

    (*(v37 + 32))(v35, v34, v36);
    v38 = sub_1D28731E8();
    v39 = *(v38 + 16);
    if (v39)
    {
      v127 = *(v0 + 400);
      v40 = v38 + 32;
      v41 = (v127 + 32);
      v42 = MEMORY[0x1E69E7CC0];
      do
      {
        v44 = *(v0 + 384);
        v43 = *(v0 + 392);
        sub_1D22D7044(v40, v0 + 72);
        sub_1D227268C((v0 + 72), v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478, &qword_1D2883630);
        v45 = swift_dynamicCast();
        (*(v127 + 56))(v44, v45 ^ 1u, 1, v43);
        if ((*(v127 + 48))(v44, 1, v43) == 1)
        {
          sub_1D22BD238(*(v0 + 384), &qword_1EC6DA438, &qword_1D28835F8);
        }

        else
        {
          v46 = *v41;
          (*v41)(*(v0 + 408), *(v0 + 384), *(v0 + 392));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1D27CCA38(0, *(v42 + 2) + 1, 1, v42);
          }

          v48 = *(v42 + 2);
          v47 = *(v42 + 3);
          if (v48 >= v47 >> 1)
          {
            v42 = sub_1D27CCA38((v47 > 1), v48 + 1, 1, v42);
          }

          v49 = *(v0 + 408);
          v50 = *(v0 + 392);
          *(v42 + 2) = v48 + 1;
          v46(&v42[((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v48], v49, v50);
        }

        v40 += 40;
        --v39;
      }

      while (v39);

      if (*(v42 + 2))
      {
        goto LABEL_34;
      }
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_34:
        (*(*(v0 + 400) + 16))(*(v0 + 416), &v42[(*(*(v0 + 400) + 80) + 32) & ~*(*(v0 + 400) + 80)], *(v0 + 392));

        if (sub_1D2381FD8())
        {
          v75 = *(v0 + 432);
          v76 = *(v0 + 400);
          v77 = *(v0 + 352);
          sub_1D22BD1D0(*(v0 + 328) + *(*(v0 + 664) + 60), v77, &unk_1EC6DE5A0, &unk_1D287F0E0);
          v78 = type metadata accessor for PlaygroundImage(0);
          v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
          sub_1D22BD238(v77, &unk_1EC6DE5A0, &unk_1D287F0E0);
          sub_1D22BCE64();
          swift_allocError();
          v81 = (v76 + 8);
          v82 = (v75 + 8);
          v83 = *(v0 + 440);
          v85 = *(v0 + 416);
          v84 = *(v0 + 424);
          v86 = *(v0 + 392);
          if (v79 == 1)
          {
            v87 = xmmword_1D28830A0;
          }

          else
          {
            v87 = xmmword_1D28830D0;
          }

          *v80 = v87;
          *(v80 + 16) = -96;
          swift_willThrow();
          (*v81)(v85, v86);
          (*v82)(v83, v84);
        }

        else
        {
          v105 = sub_1D23821D4();
          v107 = *(v0 + 432);
          v106 = *(v0 + 440);
          v109 = *(v0 + 416);
          v108 = *(v0 + 424);
          v110 = *(v0 + 392);
          v111 = *(v0 + 400);
          if (v105)
          {
            sub_1D22BCE64();
            swift_allocError();
            *v112 = xmmword_1D2883090;
            v113 = -96;
          }

          else
          {
            sub_1D238C24C(&qword_1EC6DA4D0, MEMORY[0x1E69DFF98], MEMORY[0x1E69DFFA0]);
            v114 = swift_allocError();
            (*(v107 + 16))(v115, v106, v108);
            sub_1D22BCE64();
            swift_allocError();
            *v112 = v114;
            *(v112 + 8) = 0;
            v113 = 16;
          }

          *(v112 + 16) = v113;
          swift_willThrow();
          (*(v111 + 8))(v109, v110);
          (*(v107 + 8))(v106, v108);
        }

        goto LABEL_55;
      }
    }

    v94 = sub_1D28731E8();
    v95 = v94;
    v96 = *(v94 + 16);
    if (!v96)
    {
LABEL_48:
      v100 = *(v0 + 432);
      v99 = *(v0 + 440);
      v101 = *(v0 + 424);

      sub_1D238C24C(&qword_1EC6DA4D0, MEMORY[0x1E69DFF98], MEMORY[0x1E69DFFA0]);
      v102 = swift_allocError();
      (*(v100 + 16))(v103, v99, v101);
      sub_1D22BCE64();
      swift_allocError();
      *v104 = v102;
      *(v104 + 8) = 0;
      *(v104 + 16) = 16;
      swift_willThrow();
      (*(v100 + 8))(v99, v101);
LABEL_55:
      v32 = *(v0 + 272);
      goto LABEL_56;
    }

    v97 = 0;
    v98 = v94 + 32;
    while (v97 < *(v95 + 16))
    {
      sub_1D22D7044(v98, v0 + 152);
      sub_1D227268C((v0 + 152), v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478, &qword_1D2883630);
      if (swift_dynamicCast())
      {
        v117 = *(v0 + 432);
        v116 = *(v0 + 440);
        v118 = *(v0 + 424);
        v120 = *(v0 + 368);
        v119 = *(v0 + 376);
        v121 = *(v0 + 360);

        (*(v120 + 8))(v119, v121);
        sub_1D22BCE64();
        swift_allocError();
        *v122 = xmmword_1D28830A0;
        *(v122 + 16) = -96;
        swift_willThrow();
        (*(v117 + 8))(v116, v118);
        goto LABEL_55;
      }

      ++v97;
      v98 += 40;
      if (v96 == v97)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_63:
    sub_1D2878428();
    goto LABEL_30;
  }

  if (!v21)
  {
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    v69 = *(v0 + 688);
    goto LABEL_39;
  }

  v64 = sub_1D2870F78();
  MEMORY[0x1D38A0E30](v64);
  if (*((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_63;
  }

LABEL_30:
  v66 = *(v0 + 464);
  v65 = *(v0 + 472);
  v67 = *(v0 + 456);
  sub_1D2878488();

  (*(v66 + 8))(v65, v67);
  v68 = (v0 + 256);
  v69 = vld1q_dup_f64(v68);
LABEL_39:
  *(v0 + 688) = v69;
  *(v0 + 680) = 0;
  v89 = sub_1D2878558();
  *(v0 + 704) = v89;
  v90 = swift_task_alloc();
  *(v0 + 712) = v90;
  *v90 = v0;
  v90[1] = sub_1D23833B8;
  v91 = *(v0 + 512);
  v92 = *(v0 + 480);
  v93 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v92, v89, v93, v91);
}

uint64_t sub_1D2384398(uint64_t a1, void *a2, const char *a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + *a2) = 0;

  sub_1D28725B8();
  v10 = sub_1D2873CA8();
  v11 = sub_1D2878A38();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D226E000, v10, v11, a3, v12, 2u);
    MEMORY[0x1D38A3520](v12, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D23844EC(uint64_t a1, uint64_t (*a2)(float), uint64_t a3)
{
  v69 = a3;
  v70 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA448, &unk_1D2886B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67 - v5;
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  v71 = v7;
  v72 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - v22;
  v24 = sub_1D2872D08();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, a1, v24, v26);
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x1E69DFE50])
  {
    (*(v25 + 96))(v28, v24);
    v30 = sub_1D2872908();
    v31 = *(v30 - 8);
    (*(v31 + 32))(v6, v28, v30);
    (*(v31 + 56))(v6, 0, 1, v30);
    v32 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_lastUpdatedGenerationState;
    v33 = v73;
    swift_beginAccess();
    sub_1D22BD298(v6, v33 + v32, &qword_1EC6DA448, &unk_1D2886B10);
    swift_endAccess();
    return 0;
  }

  if (v29 == *MEMORY[0x1E69DFE70])
  {
    (*(v25 + 96))(v28, v24);
    v35 = *v28;
    v36 = *(v28 + 1);
    v37 = v28[16];
    sub_1D28725B8();
    v38 = sub_1D2873CA8();
    v39 = sub_1D2878A38();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v40;
      *v40 = 134218240;
      *(v40 + 4) = v35;
      *(v40 + 12) = 2048;
      if (v37)
      {
        v42 = 0;
      }

      else
      {
        v42 = v36;
      }

      *(v40 + 14) = v42;
      _os_log_impl(&dword_1D226E000, v38, v39, "Generation progress: %ld/%ld.", v40, 0x16u);
      MEMORY[0x1D38A3520](v41, -1, -1);
    }

    (*(v72 + 8))(v20, v71);
    if (v37)
    {
      return 0;
    }

    result = 0;
    if (v35 >= 1 && v70)
    {
      (v70)(0, v35 / v36);
      return 0;
    }
  }

  else if (v29 == *MEMORY[0x1E69DFE80])
  {
    (*(v25 + 96))(v28, v24);
    v43 = *v28;
    sub_1D28725B8();
    v44 = sub_1D2873CA8();
    v45 = sub_1D2878A38();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D226E000, v44, v45, "Generated one preview.", v46, 2u);
      MEMORY[0x1D38A3520](v46, -1, -1);
    }

    (*(v72 + 8))(v17, v71);
    return v43;
  }

  else
  {
    if (v29 != *MEMORY[0x1E69DFE60])
    {
      if (v29 == *MEMORY[0x1E69DFE78])
      {
        if (v70)
        {
          v70(0.05);
        }

        sub_1D28725B8();
        v57 = sub_1D2873CA8();
        v58 = sub_1D2878A38();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_1D226E000, v57, v58, "Starting generation.", v59, 2u);
          MEMORY[0x1D38A3520](v59, -1, -1);
        }

        (*(v72 + 8))(v23, v71);
      }

      else if (v29 != *MEMORY[0x1E69DFE58])
      {
        if (v29 == *MEMORY[0x1E69DFE68])
        {
          v60 = v67;
          sub_1D28725B8();
          v61 = sub_1D2873CA8();
          v62 = sub_1D2878A38();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&dword_1D226E000, v61, v62, "Generation complete.", v63, 2u);
            MEMORY[0x1D38A3520](v63, -1, -1);
          }

          (*(v72 + 8))(v60, v71);
        }

        else
        {
          sub_1D28725B8();
          v64 = sub_1D2873CA8();
          v65 = sub_1D2878A18();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&dword_1D226E000, v64, v65, "ONDEVICE UNKNOWN generation event", v66, 2u);
            MEMORY[0x1D38A3520](v66, -1, -1);
          }

          (*(v72 + 8))(v10, v71);
          (*(v25 + 8))(v28, v24);
        }
      }

      return 0;
    }

    (*(v25 + 96))(v28, v24);
    v47 = *v28;
    v48 = v68;
    sub_1D28725B8();
    v49 = v47;
    v50 = sub_1D2873CA8();
    v51 = sub_1D2878A18();
    v52 = v47;

    if (os_log_type_enabled(v50, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = v52;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      _os_log_impl(&dword_1D226E000, v50, v51, "Generation failed with error: %@.", v53, 0xCu);
      sub_1D22BD238(v54, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v54, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);
    }

    (*(v72 + 8))(v48, v71);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D2384D90(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA488, &qword_1D2883638);
  v2 = sub_1D2873968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D287F550;
  v7 = v6 + v5;
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x1E69B2598], v2);
  v9 = sub_1D2400188(&unk_1F4DBD398);
  sub_1D22BD018(&unk_1F4DBD3B8);
  *(v7 + v4) = v9;
  v8(v7 + v4, *MEMORY[0x1E69B25A0], v2);
  sub_1D2879748();
  sub_1D2873958();
  sub_1D22BD06C();
  LOBYTE(v2) = sub_1D2878FF8();

  if (v2)
  {
    v10 = 1;
  }

  else
  {
    sub_1D2879748();
    sub_1D2873958();
    v10 = sub_1D2878FF8();
  }

  return v10 & 1;
}

uint64_t sub_1D2384FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528, &qword_1D28A50E0);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v9 = type metadata accessor for IdentifiedEntity(0);
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  v8[15] = swift_task_alloc();
  v10 = sub_1D2871818();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v11 = sub_1D2872AF8();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  v12 = sub_1D2872B28();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  v13 = sub_1D2873788();
  v8[25] = v13;
  v8[26] = *(v13 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v14 = sub_1D28737C8();
  v8[30] = v14;
  v8[31] = *(v14 - 8);
  v8[32] = swift_task_alloc();
  v15 = sub_1D2873CB8();
  v8[33] = v15;
  v8[34] = *(v15 - 8);
  v8[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2385344, 0, 0);
}

uint64_t sub_1D2385344(uint64_t a1)
{
  v107 = v1;
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[30];
  v5 = v1[7];
  sub_1D28725B8();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[34];
  v9 = v1[35];
  v11 = v1[32];
  v12 = v1[33];
  v14 = v1[30];
  v13 = v1[31];
  if (v8)
  {
    v100 = v7;
    v15 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v106 = v98;
    *v15 = 136315138;
    sub_1D28737B8();
    v16 = MEMORY[0x1D38A0EB0]();
    v102 = v12;
    v18 = v17;

    (*(v13 + 8))(v11, v14);
    v19 = sub_1D23D7C84(v16, v18, &v106);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1D226E000, v6, v100, "ONDEVICE ambiguity with concepts: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x1D38A3520](v98, -1, -1);
    MEMORY[0x1D38A3520](v15, -1, -1);

    (*(v10 + 8))(v9, v102);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v20 = sub_1D28737B8();
  v21 = v1;
  if (!*(v20 + 16))
  {

LABEL_12:
    v56 = v1[9];
    v57 = sub_1D28788C8();
    v60 = *(v56 + 16);
    if (!v60)
    {
LABEL_23:
      v74 = v21[25];
      v75 = v21[26];
      v77 = v21[5];
      v76 = v21[6];
      v78 = v21[2];
      v79 = sub_1D2878068();
      v80 = [v79 substringWithRange_];

      v81 = sub_1D28780A8();
      v83 = v82;

      *v78 = v81;
      v78[1] = v83;
      (*(v75 + 104))(v78, *MEMORY[0x1E69E0150], v74);
      (*(v75 + 56))(v78, 0, 1, v74);
      goto LABEL_24;
    }

    v61 = v57;
    v62 = v58;
    v63 = v59;
    v65 = v21[12];
    v64 = v21[13];
    v66 = v21[9] + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v101 = v58;
    v103 = (v21[26] + 48);
    v67 = *(v64 + 72);
    v99 = v59;
    v96 = v67;
    v97 = v65;
    while (1)
    {
      sub_1D238D0B8(v66, v21[14], type metadata accessor for IdentifiedEntity);
      v68 = v21[14];
      if ((v63 & 1) == 0 && !((*(v68 + *(v65 + 24)) ^ v61) >> 14) && (*(v68 + *(v65 + 24) + 8) ^ v62) >> 14 == 0)
      {
        v104 = v21[25];
        v70 = v21[10];
        v71 = v21[11];
        v72 = v21[14];
        v73 = sub_1D28737B8();
        *(swift_task_alloc() + 16) = v72;
        sub_1D274BA2C(sub_1D238D098, v73, v71);

        sub_1D22EC9BC(v71, v70, &qword_1EC6DA528, &qword_1D28A50E0);
        if ((*v103)(v70, 1, v104) != 1)
        {
          v87 = v21[26];
          v86 = v21[27];
          v88 = v21[25];
          v89 = v21[14];
          v90 = v21[2];
          v91 = *(v87 + 32);
          v91(v86, v21[10], v88);
          v91(v90, v86, v88);
          (*(v87 + 56))(v90, 0, 1, v88);
          sub_1D238DA5C(v89, type metadata accessor for IdentifiedEntity);
          goto LABEL_24;
        }

        sub_1D22BD238(v21[10], &qword_1EC6DA528, &qword_1D28A50E0);
        v68 = v21[14];
        v62 = v101;
        v63 = v99;
        v67 = v96;
        v65 = v97;
      }

      sub_1D238DA5C(v68, type metadata accessor for IdentifiedEntity);
      v66 += v67;
      if (!--v60)
      {
        goto LABEL_23;
      }
    }
  }

  v22 = v1[28];
  v23 = v1[29];
  v24 = v1[25];
  v25 = v1[26];
  v26 = *(v25 + 16);
  v26(v23, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v24);

  v26(v22, v23, v24);
  if ((*(v25 + 88))(v22, v24) != *MEMORY[0x1E69E0140])
  {
    v47 = v1[28];
    v48 = v1[25];
    v49 = *(v1[26] + 8);
    v49(v1[29], v48);
    v49(v47, v48);
    goto LABEL_12;
  }

  v27 = v1[28];
  v29 = v1[23];
  v28 = v1[24];
  v31 = v1[21];
  v30 = v1[22];
  v32 = v1[19];
  v33 = v1[20];
  (*(v1[26] + 96))(v27, v1[25]);
  (*(v29 + 32))(v28, v27, v30);
  sub_1D2872B08();
  if ((*(v33 + 88))(v31, v32) != *MEMORY[0x1E69DFCF8])
  {
    v50 = v1[29];
    v51 = v1[25];
    v52 = v1[26];
    v53 = v1[21];
    v54 = v1[19];
    v55 = v1[20];
    (*(v1[23] + 8))(v1[24], v1[22]);
    (*(v52 + 8))(v50, v51);
    (*(v55 + 8))(v53, v54);
    goto LABEL_12;
  }

  v34 = v1[16];
  v35 = v1[17];
  v36 = v1[15];
  v37 = v1[8];
  (*(v1[20] + 8))(v1[21], v1[19]);
  sub_1D22BD1D0(v37, v36, &qword_1EC6D8F70, &qword_1D2881410);
  v38 = (*(v35 + 48))(v36, 1, v34);
  v39 = v1[29];
  v40 = v21[25];
  v41 = v21[26];
  v43 = v21[23];
  v42 = v21[24];
  v44 = v21[22];
  if (v38 == 1)
  {
    v45 = v21[15];
    v46 = v21[2];
    (*(v43 + 8))(v21[24], v21[22]);
    sub_1D22BD238(v45, &qword_1EC6D8F70, &qword_1D2881410);
    (*(v41 + 32))(v46, v39, v40);
    (*(v41 + 56))(v46, 0, 1, v40);
  }

  else
  {
    v93 = v21[17];
    v92 = v21[18];
    v94 = v21[16];
    v105 = v21[25];
    v95 = v21[2];
    (*(v93 + 32))(v92, v21[15], v94);
    sub_1D2872B18();
    sub_1D2873778();

    (*(v93 + 8))(v92, v94);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v39, v105);
    (*(v41 + 56))(v95, 0, 1, v105);
  }

LABEL_24:

  v84 = v21[1];

  return v84();
}

uint64_t sub_1D2385BF4(uint64_t a1, void *a2)
{
  v73 = a1;
  v3 = sub_1D2872AF8();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D2872AE8();
  v59 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2872B28();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2871818();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v56 - v12;
  v13 = sub_1D2873788();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v56 - v17;
  v18 = sub_1D2872BC8();
  v68 = *(v18 - 8);
  v69 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  v26 = *(type metadata accessor for IdentifiedEntity(0) + 20);
  (*(v9 + 56))(v25, 1, 2, v8);
  v27 = sub_1D27A0720(a2 + v26, v25);
  v28 = v25;
  v29 = v9;
  sub_1D238DA5C(v28, type metadata accessor for IdentifiedEntity.Kind);
  if ((v27 & 1) == 0)
  {
LABEL_7:
    sub_1D238D0B8(a2 + v26, v22, type metadata accessor for IdentifiedEntity.Kind);
    if ((*(v9 + 48))(v22, 2, v8))
    {
      sub_1D238DA5C(v22, type metadata accessor for IdentifiedEntity.Kind);
    }

    else
    {
      v36 = v8;
      v37 = v29;
      v38 = *(v29 + 32);
      v39 = v71;
      v38(v71, v22, v8);
      v40 = v14;
      v41 = *(v14 + 16);
      v42 = v70;
      v41(v70, v73, v13);
      if ((*(v40 + 88))(v42, v13) == *MEMORY[0x1E69E0140])
      {
        (*(v40 + 96))(v42, v13);
        v43 = v60;
        v44 = v66;
        v45 = v42;
        v46 = v61;
        (*(v60 + 32))(v66, v45, v61);
        v47 = v62;
        sub_1D2872B08();
        v49 = v64;
        v48 = v65;
        if ((*(v64 + 88))(v47, v65) == *MEMORY[0x1E69DFCF0])
        {
          (*(v49 + 96))(v47, v48);
          v50 = v59;
          v51 = v37;
          v52 = v58;
          (*(v59 + 32))(v58, v47, v63);
          v53 = v57;
          sub_1D2872AB8();
          v35 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
          v54 = *(v51 + 8);
          v54(v53, v36);
          (*(v50 + 8))(v52, v63);
          (*(v43 + 8))(v66, v46);
          v54(v71, v36);
          return v35 & 1;
        }

        (*(v43 + 8))(v44, v46);
        (*(v37 + 8))(v71, v36);
        (*(v49 + 8))(v47, v48);
      }

      else
      {
        (*(v37 + 8))(v39, v8);
        (*(v40 + 8))(v42, v13);
      }
    }

    v35 = 0;
    return v35 & 1;
  }

  v30 = v72;
  (*(v14 + 16))(v72, v73, v13);
  if ((*(v14 + 88))(v30, v13) != *MEMORY[0x1E69E0148])
  {
    (*(v14 + 8))(v30, v13);
    goto LABEL_7;
  }

  (*(v14 + 96))(v30, v13);
  v32 = v67;
  v31 = v68;
  v33 = v69;
  (*(v68 + 32))(v67, v30, v69);
  if (sub_1D2872B98() == *a2 && v34 == a2[1])
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_1D2879618();
  }

  (*(v31 + 8))(v32, v33);
  return v35 & 1;
}

uint64_t sub_1D23864EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(__n128), _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10)
{
  v107 = a8;
  v109 = a7;
  v15 = sub_1D2873CB8();
  v16 = *(v15 - 8);
  v110 = v15;
  v111 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v103 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v103 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v103 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v103 - v29;
  v31 = (a3)(0, v28);
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = (&v103 - v34);
  v36 = a4(v33);
  v38 = v37;
  (*(v32 + 16))(v35, a2, v31);
  v39 = (*(v32 + 88))(v35, v31);
  if (v39 == *a5)
  {

    (*(v32 + 96))(v35, v31);
    v41 = *v35;
    v40 = v35[1];
    sub_1D28725B8();
    sub_1D2870F68();
    v42 = sub_1D2873CA8();
    v43 = sub_1D2878A38();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v112 = v45;
      *v44 = 136315138;
      v46 = sub_1D23D7C84(v41, v40, &v112);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_1D226E000, v42, v43, "Evaluating prompt '%s'.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1D38A3520](v45, -1, -1);
      MEMORY[0x1D38A3520](v44, -1, -1);
    }

    else
    {
    }

    return (*(v111 + 8))(v30, v110);
  }

  else if (v39 == *a6)
  {
    v109 = v36;
    (*(v32 + 96))(v35, v31);
    v47 = *v35;
    sub_1D28725B8();
    sub_1D2870F68();
    sub_1D2870F68();
    v48 = sub_1D2873CA8();
    v49 = v38;
    v50 = sub_1D2878A38();

    if (os_log_type_enabled(v48, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v112 = v52;
      *v51 = 134218498;
      *(v51 + 4) = *(v47 + 16);

      *(v51 + 12) = 2080;
      v53 = sub_1D2873788();
      v54 = MEMORY[0x1D38A0E70](v47, v53);
      v56 = v55;

      v57 = sub_1D23D7C84(v54, v56, &v112);

      *(v51 + 14) = v57;
      *(v51 + 22) = 2080;
      v58 = sub_1D23D7C84(v109, v49, &v112);

      *(v51 + 24) = v58;
      _os_log_impl(&dword_1D226E000, v48, v50, "Found %ld concepts: %s in prompt '%s'.", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v52, -1, -1);
      MEMORY[0x1D38A3520](v51, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return (*(v111 + 8))(v26, v110);
  }

  else if (v39 == *v109)
  {
    v60 = v36;
    (*(v32 + 96))(v35, v31);
    v61 = *v35;
    v62 = v108;
    sub_1D28725B8();
    sub_1D2870F68();
    sub_1D2870F68();
    v63 = sub_1D2873CA8();
    v64 = v38;
    v65 = sub_1D2878A38();

    if (os_log_type_enabled(v63, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v112 = v67;
      *v66 = 134218498;
      *(v66 + 4) = *(v61 + 16);

      *(v66 + 12) = 2080;
      v68 = sub_1D28737C8();
      v69 = MEMORY[0x1D38A0E70](v61, v68);
      v71 = v70;

      v72 = sub_1D23D7C84(v69, v71, &v112);

      *(v66 + 14) = v72;
      *(v66 + 22) = 2080;
      v73 = sub_1D23D7C84(v60, v64, &v112);

      *(v66 + 24) = v73;
      _os_log_impl(&dword_1D226E000, v63, v65, "Found %ld ambiguities: %s for prompt '%s'.", v66, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v67, -1, -1);
      MEMORY[0x1D38A3520](v66, -1, -1);

      return (*(v111 + 8))(v108, v110);
    }

    else
    {

      swift_bridgeObjectRelease_n();

      return (*(v111 + 8))(v62, v110);
    }
  }

  else if (v39 == *v107)
  {
    v74 = v36;
    (*(v32 + 96))(v35, v31);
    v75 = *v35;
    v76 = v106;
    sub_1D28725B8();
    sub_1D2870F68();
    v77 = v75;
    v78 = sub_1D2873CA8();
    v79 = sub_1D2878A18();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = v38;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v112 = v83;
      *v81 = 136315394;
      v84 = sub_1D23D7C84(v74, v80, &v112);

      *(v81 + 4) = v84;
      *(v81 + 12) = 2112;
      v85 = v75;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 14) = v86;
      *v82 = v86;
      _os_log_impl(&dword_1D226E000, v78, v79, "Failed assigning prompt '%s' with error: %@.", v81, 0x16u);
      sub_1D22BD238(v82, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x1D38A3520](v83, -1, -1);
      MEMORY[0x1D38A3520](v81, -1, -1);
    }

    else
    {
    }

    return (*(v111 + 8))(v76, v110);
  }

  else if (v39 == *a9)
  {

    (*(v32 + 96))(v35, v31);
    v88 = *v35;
    v87 = v35[1];
    v89 = v105;
    sub_1D28725B8();
    sub_1D2870F68();
    v90 = sub_1D2873CA8();
    v91 = sub_1D2878A38();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v112 = v93;
      *v92 = 136315138;
      v94 = sub_1D23D7C84(v88, v87, &v112);

      *(v92 + 4) = v94;
      _os_log_impl(&dword_1D226E000, v90, v91, "Accepted prompt '%s'.", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x1D38A3520](v93, -1, -1);
      MEMORY[0x1D38A3520](v92, -1, -1);
    }

    else
    {
    }

    return (*(v111 + 8))(v89, v110);
  }

  else if (v39 == *a10)
  {
  }

  else
  {
    v95 = v36;
    v96 = v104;
    sub_1D28725B8();
    sub_1D2870F68();
    v97 = sub_1D2873CA8();
    v98 = sub_1D2878A18();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = v38;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v112 = v101;
      *v100 = 136315138;
      v102 = sub_1D23D7C84(v95, v99, &v112);

      *(v100 + 4) = v102;
      _os_log_impl(&dword_1D226E000, v97, v98, "ONDEVICE UNKNOWN prompt assignment event for prompt '%s'", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x1D38A3520](v101, -1, -1);
      MEMORY[0x1D38A3520](v100, -1, -1);
    }

    else
    {
    }

    (*(v111 + 8))(v96, v110);
    return (*(v32 + 8))(v35, v31);
  }
}

uint64_t sub_1D238700C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v65 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  v24 = sub_1D2873078();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v28, a2, v24, v26);
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x1E69DFF30])
  {
    sub_1D28725B8();
    v30 = sub_1D2873CA8();
    v31 = sub_1D28789F8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D226E000, v30, v31, "ONDEVICE evaluating base image and sketch mask", v32, 2u);
      MEMORY[0x1D38A3520](v32, -1, -1);
    }

    (*(v67 + 8))(v23, v66);
    return (*(v25 + 8))(v28, v24);
  }

  if (v29 == *MEMORY[0x1E69DFF28])
  {
    (*(v25 + 96))(v28, v24);
    v34 = *v28;
    sub_1D28725B8();
    v35 = v34;
    v36 = sub_1D2873CA8();
    v37 = sub_1D2878A18();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v39;
      *v38 = 136315138;
      swift_getErrorValue();
      v40 = sub_1D2879748();
      v42 = sub_1D23D7C84(v40, v41, &v68);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1D226E000, v36, v37, "ONDEVICE rejected base image and sketch mask with error: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1D38A3520](v39, -1, -1);
      MEMORY[0x1D38A3520](v38, -1, -1);
    }

    else
    {
    }

    return (*(v67 + 8))(v20, v66);
  }

  else
  {
    if (v29 == *MEMORY[0x1E69DFF20])
    {
      sub_1D28725B8();
      v43 = sub_1D2873CA8();
      v44 = sub_1D28789F8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1D226E000, v43, v44, "ONDEVICE accepted base image and sketch mask", v45, 2u);
        MEMORY[0x1D38A3520](v45, -1, -1);
      }

      (*(v67 + 8))(v17, v66);
      return (*(v25 + 8))(v28, v24);
    }

    if (v29 == *MEMORY[0x1E69DFF48])
    {
      sub_1D28725B8();
      v46 = sub_1D2873CA8();
      v47 = sub_1D28789F8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1D226E000, v46, v47, "ONDEVICE evaluating synthesized prompt image", v48, 2u);
        MEMORY[0x1D38A3520](v48, -1, -1);
      }

      (*(v67 + 8))(v14, v66);
      return (*(v25 + 8))(v28, v24);
    }

    if (v29 != *MEMORY[0x1E69DFF40])
    {
      if (v29 == *MEMORY[0x1E69DFF38])
      {
        sub_1D28725B8();
        v59 = sub_1D2873CA8();
        v60 = sub_1D28789F8();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_1D226E000, v59, v60, "ONDEVICE accepted synthesized prompt image", v61, 2u);
          MEMORY[0x1D38A3520](v61, -1, -1);
        }

        (*(v67 + 8))(v9, v66);
      }

      else
      {
        sub_1D28725B8();
        v62 = sub_1D2873CA8();
        v63 = sub_1D2878A18();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_1D226E000, v62, v63, "ONDEVICE UNKNOWN sketch assignment event", v64, 2u);
          MEMORY[0x1D38A3520](v64, -1, -1);
        }

        (*(v67 + 8))(v6, v66);
      }

      return (*(v25 + 8))(v28, v24);
    }

    (*(v25 + 96))(v28, v24);
    v49 = *v28;
    v50 = v65;
    sub_1D28725B8();
    v51 = v49;
    v52 = sub_1D2873CA8();
    v53 = sub_1D2878A18();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v68 = v55;
      *v54 = 136315138;
      swift_getErrorValue();
      v56 = sub_1D2879748();
      v58 = sub_1D23D7C84(v56, v57, &v68);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1D226E000, v52, v53, "ONDEVICE rejected synthesized prompt image with error: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x1D38A3520](v55, -1, -1);
      MEMORY[0x1D38A3520](v54, -1, -1);
    }

    else
    {
    }

    return (*(v67 + 8))(v50, v66);
  }
}

uint64_t sub_1D2387804(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D2873C28();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1D2873C48();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D238792C, 0, 0);
}

uint64_t sub_1D238792C(uint64_t a1)
{
  sub_1D28720E8();
  sub_1D2873C18();
  v2 = sub_1D2873C38();
  v3 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v2, v3, v5, "OnDeviceImageGenerator.queryParser.preheat", "", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v7 = v1[8];
  v6 = v1[9];
  v9 = v1[6];
  v8 = v1[7];
  v11 = v1[4];
  v10 = v1[5];
  v12 = v1[3];

  (*(v11 + 16))(v10, v9, v12);
  sub_1D2873C88();
  swift_allocObject();
  v1[10] = sub_1D2873C78();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v13 = swift_task_alloc();
  v1[11] = v13;
  *v13 = v1;
  v13[1] = sub_1D2387AF4;

  return sub_1D235EAB0();
}

uint64_t sub_1D2387AF4(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2387BF4, 0, 0);
}

uint64_t sub_1D2387BF4()
{
  if (v0[12])
  {
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1D2387D08;

    return MEMORY[0x1EEE4F520]();
  }

  else
  {
    sub_1D23884DC("OnDeviceImageGenerator.queryParser.preheat", 42, 2, v0[10]);

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1D2387D08()
{

  return MEMORY[0x1EEE6DFA0](sub_1D238DC94, 0, 0);
}

uint64_t sub_1D2387E20(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D2873C28();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1D2873C48();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2387F48, 0, 0);
}

uint64_t sub_1D2387F48(uint64_t a1)
{
  sub_1D28720E8();
  sub_1D2873C18();
  v2 = sub_1D2873C38();
  v3 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v2, v3, v5, "OnDeviceImageGenerator.queryParser.preheat", "", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v7 = v1[8];
  v6 = v1[9];
  v9 = v1[6];
  v8 = v1[7];
  v11 = v1[4];
  v10 = v1[5];
  v12 = v1[3];

  (*(v11 + 16))(v10, v9, v12);
  sub_1D2873C88();
  swift_allocObject();
  v1[10] = sub_1D2873C78();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v13 = swift_task_alloc();
  v1[11] = v13;
  *v13 = v1;
  v13[1] = sub_1D2388110;

  return sub_1D235EAB0();
}

uint64_t sub_1D2388110(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2388210, 0, 0);
}

uint64_t sub_1D2388210()
{
  if (v0[12])
  {
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1D2388324;

    return MEMORY[0x1EEE4F528]();
  }

  else
  {
    sub_1D23884DC("OnDeviceImageGenerator.queryParser.preheat", 42, 2, v0[10]);

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1D2388324()
{

  return MEMORY[0x1EEE6DFA0](sub_1D238843C, 0, 0);
}

uint64_t sub_1D238843C()
{
  sub_1D23884DC("OnDeviceImageGenerator.queryParser.preheat", 42, 2, *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23884DC(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a3;
  v28 = a1;
  v4 = sub_1D2873C58();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2873C28();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2873C48();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720E8();
  v15 = sub_1D2873C38();
  sub_1D2873C68();
  v24 = sub_1D2878BA8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v11;
  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:
      sub_1D2870F78();
      sub_1D2873C98();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v6, v26) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v6, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v15, v24, v21, v28, v19, v20, 2u);
      MEMORY[0x1D38A3520](v20, -1, -1);
      v11 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D2388820(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a6;
  v6[6] = sub_1D2878568();
  v6[7] = sub_1D2878558();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[8] = v8;
  *v8 = v6;
  v8[1] = sub_1D238893C;

  return v10(v6 + 2);
}

uint64_t sub_1D238893C()
{
  *(*v1 + 72) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D2388B28;
  }

  else
  {
    v4 = sub_1D2388A98;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D2388A98()
{

  v0[4] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0, &qword_1D2883660);
  sub_1D2878518();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2388B28()
{
  v1 = v0[9];

  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0, &qword_1D2883660);
  sub_1D2878508();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2388BEC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return sub_1D2357EAC(a1, a2);
}

uint64_t sub_1D2388C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D22BDFF8;

  return sub_1D238C7C4(a1, a2, a3);
}

uint64_t sub_1D2388D54(uint64_t *a1)
{
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for ImageGeneration.GenerationParameters(0) + 52);
  sub_1D2871FC8();
  LOBYTE(v6) = MEMORY[0x1D389AA00](a1 + v6, v5);
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    return sub_1D2362A04(a1);
  }

  else
  {
    return sub_1D23655B0(a1);
  }
}

uint64_t sub_1D2388E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D23591EC();
}

uint64_t sub_1D2388EF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D236CBB0();
}

uint64_t sub_1D2388FA8(float a1)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configuration;
  swift_beginAccess();
  v4 = sub_1D2873068();
  if (!(*(*(v4 - 8) + 48))(v2 + v3, 1, v4))
  {
    v5 = sub_1D2872F18();
    v7 = v6;
    v8 = sub_1D2873158();
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      sub_1D2873138();
    }

    v5(v10, 0);
  }

  return swift_endAccess();
}

uint64_t sub_1D23890C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D23891A0;

  return sub_1D2359A3C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D23891A0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D23892A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D22BC8FC;

  return sub_1D235AF94(a1, a2, a3, a4, a5);
}

uint64_t sub_1D23893B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D2356284();
}

uint64_t sub_1D2389444()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D2356E38();
}

uint64_t sub_1D238953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120, &qword_1D2880C38);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  v12 = *v5;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = v12;
  v15[0] = a5;
  v15[1] = v13;
  sub_1D2870F78();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60, &qword_1D2880C60);
  sub_1D2878638();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D238969C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BDFF8;

  return sub_1D238BBA8(a1);
}

uint64_t sub_1D238974C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return sub_1D236159C(a1, a2);
}

uint64_t ImageGeneration.GenerationError.errorDescription.getter()
{
  v1 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *v0;
  v5 = *(v0 + 16);
  v6 = v5 >> 4;
  if (v5 >> 4 <= 4)
  {
    if (v6 == 3)
    {
      swift_getErrorValue();
      return sub_1D2879748();
    }

    sub_1D2878018();
    sub_1D2878008();
    swift_getErrorValue();
    sub_1D2879748();
    sub_1D2877FF8();

    goto LABEL_14;
  }

  v7 = v0[1];
  if (v5 >> 4 > 7)
  {
    if (v6 != 8 && v6 != 9)
    {
      if ((v7 | v4 || v5 != 160) && (v4 != 1 || v7 || v5 != 160) && (v4 != 2 || v7 || v5 != 160) && (v4 != 3 || v7 || v5 != 160) && (v4 != 4 || v7 || v5 != 160) && (v4 != 5 || v7 || v5 != 160) && v4 == 6 && !v7 && v5 == 160)
      {
        sub_1D2877FE8();
        if (qword_1ED89E0E8 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_41;
      }

      goto LABEL_32;
    }

    goto LABEL_13;
  }

  if (v6 != 5 && v6 != 6)
  {
LABEL_13:
    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();
LABEL_14:
    sub_1D2878008();
    sub_1D2878038();
    goto LABEL_33;
  }

LABEL_32:
  sub_1D2877FE8();
LABEL_33:
  if (qword_1ED89E0E8 != -1)
  {
LABEL_41:
    swift_once();
  }

LABEL_34:
  v9 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

void sub_1D238A08C(uint64_t a1)
{
  _s15PrewarmingStateVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1D238A2D8(319, &qword_1ED8A5E40, type metadata accessor for ImageGeneration.GenerationParameters);
    if (v2 <= 0x3F)
    {
      sub_1D238A2D8(319, &qword_1ED8A6BC0, MEMORY[0x1E69DFF18]);
      if (v3 <= 0x3F)
      {
        sub_1D238A2D8(319, &qword_1ED8A6BA8, MEMORY[0x1E69E0068]);
        if (v4 <= 0x3F)
        {
          sub_1D238A2D8(319, &qword_1ED8A6BD0, MEMORY[0x1E69DFC48]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1D238A2D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D238A354(uint64_t a1)
{
  result = sub_1D2871A28();
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

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal0A10GenerationV0D5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x9F)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1D238A40C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x36 && *(a1 + 17))
  {
    return (*a1 + 54);
  }

  v3 = ((*(a1 + 16) >> 4) & 0xFFFFFFCF | (16 * ((*(a1 + 16) >> 2) & 3))) ^ 0x3F;
  if (v3 >= 0x35)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D238A460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x35)
  {
    *(result + 16) = 0;
    *result = a2 - 54;
    *(result + 8) = 0;
    if (a3 >= 0x36)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x36)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 4) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_1D238A4C4(uint64_t result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    *(result + 16) = *(result + 16) & 3 | (16 * a2);
  }

  else
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    *(result + 16) = -96;
  }

  return result;
}

uint64_t sub_1D238A500(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = type metadata accessor for CuratedPrompt(0) - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D238D0B8(v14, v9, type metadata accessor for CuratedPrompt);
      if (*(*(v9 + 6) + 66) == 1)
      {
        break;
      }

      sub_1D238DA5C(v9, type metadata accessor for CuratedPrompt);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    v17 = sub_1D284A4B0(a3, 0);
    v19 = v18;
    v16 = sub_1D27CC674(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = *(v16 + 2);
    v20 = *(v16 + 3);
    if (v21 >= v20 >> 1)
    {
      v16 = sub_1D27CC674((v20 > 1), v21 + 1, 1, v16);
    }

    *(v16 + 2) = v21 + 1;
    v22 = &v16[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
    sub_1D238DA5C(v9, type metadata accessor for CuratedPrompt);
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_7:
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v33 = v10;
  v34 = v11;
  v35 = v12;
  sub_1D2870F68();
  sub_1D2870F68();
  v23 = sub_1D24FBD9C();
  v25 = v24;

  if (v25)
  {
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

      if (*(v16 + 2))
      {
        goto LABEL_22;
      }

LABEL_24:

      return 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D27CC674(0, *(v16 + 2) + 1, 1, v16);
    }

    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_1D27CC674((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v23;
    *(v29 + 5) = v25;
  }

LABEL_21:
  if (!*(v16 + 2))
  {
    goto LABEL_24;
  }

LABEL_22:
  v33 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
  sub_1D238D968();
  v30 = sub_1D2877F68();

  return v30;
}

uint64_t sub_1D238A81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_1D2873CB8();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v9 = sub_1D2878538();
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();
  v10 = sub_1D2872D38();
  v7[24] = v10;
  v7[25] = *(v10 - 8);
  v7[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490, &qword_1D2883648);
  v7[27] = swift_task_alloc();
  v11 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v7[28] = v11;
  v7[29] = *(v11 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = sub_1D2878568();
  v7[32] = sub_1D2878558();
  v12 = swift_task_alloc();
  v7[33] = v12;
  *v12 = v7;
  v12[1] = sub_1D238AA80;

  return sub_1D235EAB0();
}

uint64_t sub_1D238AA80(uint64_t a1)
{
  v2 = *v1;
  v2[34] = a1;

  v4 = sub_1D28784F8();
  v2[35] = v4;
  v2[36] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D238ABCC, v4, v3);
}

uint64_t sub_1D238ABCC()
{
  v1 = v0[34];
  if (!v1)
  {

    sub_1D22BCE64();
    swift_allocError();
    *v9 = xmmword_1D2883070;
    *(v9 + 16) = -96;
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[17];
  v6 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  swift_beginAccess();
  sub_1D22BD1D0(v5 + v6, v4, &qword_1EC6DA490, &qword_1D2883648);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = v0[27];

    sub_1D22BD238(v7, &qword_1EC6DA490, &qword_1D2883648);
    sub_1D22BCE64();
    swift_allocError();
    *v8 = xmmword_1D2883040;
    *(v8 + 16) = -96;
    swift_willThrow();

LABEL_5:

    v10 = v0[1];

    return v10();
  }

  v12 = v0[30];
  v13 = v0[26];
  v15 = v0[16];
  v14 = v0[17];
  v17 = v0[11];
  v16 = v0[12];
  sub_1D238C294(v0[27], v12, type metadata accessor for ImageGeneration.GenerationParameters);
  sub_1D2872D28();
  sub_1D2872D18();
  v18 = sub_1D2878558();
  v0[37] = v18;
  v19 = swift_task_alloc();
  v0[38] = v19;
  v19[2] = v14;
  v19[3] = v15;
  v19[4] = v13;
  v19[5] = v1;
  v19[6] = v12;
  v19[7] = v17;
  v19[8] = v16;
  v20 = swift_task_alloc();
  v0[39] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498, &unk_1D2883A80);
  *v20 = v0;
  v20[1] = sub_1D238AEE4;
  v22 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 8, v18, v22, 0xD00000000000006BLL, 0x80000001D28B2220, sub_1D238C5B8, v19, v21);
}

uint64_t sub_1D238AEE4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1D238B0FC;
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1D238B008;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D238B008()
{

  v1 = v0[8];
  v2 = v0[30];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_1D238DA5C(v2, type metadata accessor for ImageGeneration.GenerationParameters);

  v3 = v0[1];

  return v3(v1);
}

void sub_1D238B0FC()
{
  v40 = v0;
  v1 = *(v0 + 320);

  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (!swift_dynamicCast())
  {
    v8 = *(v0 + 240);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 192);

    (*(v10 + 8))(v9, v11);
    sub_1D238DA5C(v8, type metadata accessor for ImageGeneration.GenerationParameters);
LABEL_24:

    v36 = *(v0 + 8);

    v36();
    return;
  }

  v3 = *(v0 + 120);

  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 328) = v5;
  *(v0 + 336) = v4;
  v6 = *(v0 + 56);
  *(v0 + 57) = v6;
  v7 = v3 - 1;
  *(v0 + 344) = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
LABEL_23:

    v31 = *(v0 + 240);
    v33 = *(v0 + 200);
    v32 = *(v0 + 208);
    v34 = *(v0 + 192);
    sub_1D22BCE64();
    swift_allocError();
    *v35 = v5;
    *(v35 + 8) = v4;
    *(v35 + 16) = v6;
    swift_willThrow();

    (*(v33 + 8))(v32, v34);
    sub_1D238DA5C(v31, type metadata accessor for ImageGeneration.GenerationParameters);
    goto LABEL_24;
  }

  if (v6 <= 0x4F)
  {
    *(v0 + 80) = v5;
    sub_1D233E72C(v5, v4, v6);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      goto LABEL_23;
    }
  }

  sub_1D28725B8();
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A38();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v7;
    _os_log_impl(&dword_1D226E000, v12, v13, "Will retry to generate preview %ld.", v14, 0xCu);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  v16 = *(v0 + 152);
  v15 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 104);

  (*(v16 + 8))(v15, v17);
  if (v18)
  {
    v19 = *(v0 + 104);
    sub_1D22BCE64();
    v20 = swift_allocError();
    *v21 = v5;
    *(v21 + 8) = v4;
    *(v21 + 16) = v6;
    v37 = v20;
    v38 = 0;
    v39 = 64;
    sub_1D233E72C(v5, v4, v6);
    v19(&v37);
    sub_1D22BCDC4(v37, v38, v39);
  }

  v22 = sub_1D23B8344();
  sub_1D2358C20(v22);
  if (v6 & 0xF0) == 0xA0 && v5 == 5 && !v4 && v6 == 160 && (sub_1D23920F8(0, *(v0 + 128), 0))
  {
    v23 = swift_task_alloc();
    *(v0 + 352) = v23;
    *v23 = v0;
    v23[1] = sub_1D238B5DC;

    sub_1D236CBB0();
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 368) = v24;
    *v24 = v0;
    v24[1] = sub_1D238B754;
    v25 = *(v0 + 344);
    v26 = *(v0 + 128);
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);

    sub_1D2359A3C(v30, v29, v27, v28, v25, v26);
  }
}

uint64_t sub_1D238B5DC()
{
  v2 = *v1;
  v2[45] = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[36];

    return MEMORY[0x1EEE6DFA0](sub_1D238B990, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[46] = v5;
    *v5 = v2;
    v5[1] = sub_1D238B754;
    v6 = v2[43];
    v7 = v2[16];
    v8 = v2[13];
    v9 = v2[14];
    v10 = v2[12];
    v11 = v2[11];

    return sub_1D2359A3C(v11, v10, v8, v9, v6, v7);
  }
}

uint64_t sub_1D238B754(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = v4[35];
    v6 = v4[36];
    v7 = sub_1D238BA8C;
  }

  else
  {
    v4[48] = a1;
    v5 = v4[35];
    v6 = v4[36];
    v7 = sub_1D238B87C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D238B87C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 57);

  sub_1D22BCDC4(v1, v2, v3);

  v4 = *(v0 + 384);
  v5 = *(v0 + 240);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  sub_1D238DA5C(v5, type metadata accessor for ImageGeneration.GenerationParameters);

  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_1D238B990()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  (*(v3 + 8))(v2, v4);
  sub_1D238DA5C(v1, type metadata accessor for ImageGeneration.GenerationParameters);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D238BA8C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 57);

  sub_1D22BCDC4(v1, v2, v7);

  (*(v5 + 8))(v4, v6);
  sub_1D238DA5C(v3, type metadata accessor for ImageGeneration.GenerationParameters);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D238BBA8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  _s15PrewarmingStateVMa(0);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  v2[8] = swift_task_alloc();
  v2[9] = sub_1D2878568();
  v2[10] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D238BCA8, v4, v3);
}

uint64_t sub_1D238BCA8()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1D2870F78();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v3;
  v9 = sub_1D23C8994(0, 0, v1, &unk_1D2883550, v7);
  v10 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_prewarmingState;
  v0[13] = v9;
  v0[14] = v10;
  v11 = v3 + v10;
  swift_beginAccess();
  *(v11 + 8) = v9;
  sub_1D2870F78();

  sub_1D238D0B8(v11, v2, _s15PrewarmingStateVMa);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1D238BE58;

  return sub_1D25F5364();
}

uint64_t sub_1D238BE58()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  sub_1D238DA5C(v2, _s15PrewarmingStateVMa);
  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D238BFB0, v4, v3);
}

uint64_t sub_1D238BFB0()
{
  v1 = v0[14];
  v2 = v0[6];

  *(v2 + v1 + 8) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D238C054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2360354(a1, v4, v5, v7, v6);
}

uint64_t sub_1D238C114()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D22BDFF8;

  return sub_1D2387E20(v0);
}

uint64_t sub_1D238C1BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D22BDFF8;

  return sub_1D2387804(v0);
}

uint64_t sub_1D238C24C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D238C294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D238C330(uint64_t a1)
{
  v3 = *(type metadata accessor for ImageGeneration.GenerationParameters(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v13 = v1[2];
  v5 = v1[4];
  v12 = v1[3];
  v6 = v1[5];
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D237D068(a1, v13, v12, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_1D238C4A8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0, &qword_1D2883660) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D2388820(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D238C5CC(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageGeneration.GenerationParameters(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D2371874(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D238C6FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D2783B48(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D238C7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_1D2873CB8();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for EmojiValidator(0);
  v3[14] = swift_task_alloc();
  sub_1D2878568();
  v3[15] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v3[16] = v6;
  v3[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D238C8F8, v6, v5);
}

uint64_t sub_1D238C8F8()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[6];
  sub_1D238D0B8(v0[8], v1 + *(v0[13] + 20), type metadata accessor for ImageGeneration.GenerationParameters);
  *v1 = v3;
  v1[1] = v2;
  sub_1D2870F68();
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1D238C9CC;

  return sub_1D2349F38();
}

uint64_t sub_1D238C9CC()
{
  v2 = *v1;
  (*v1)[19] = v0;

  sub_1D238DA5C(v2[14], type metadata accessor for EmojiValidator);
  v3 = v2[17];
  v4 = v2[16];
  if (v0)
  {
    v5 = sub_1D238CBBC;
  }

  else
  {
    v5 = sub_1D238CB34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D238CB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D238CBBC()
{
  v1 = *(v0 + 152);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    sub_1D28725B8();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A18();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "Unsupported emoji found in prompt.", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);

    v12 = *(v11 + 8);
    v12(v9, v10);
    sub_1D28725B8();
    has_internal_ui = os_variant_has_internal_ui();
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);
    if (has_internal_ui)
    {
      sub_1D233E7B4(v3, v4, v5);
      v16 = sub_1D2873CA8();
      v12(v14, v15);
      v17 = sub_1D2878A18();
      sub_1D22BCE4C(v3, v4, v5);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        sub_1D234AC28();
        swift_allocError();
        *v20 = v3;
        *(v20 + 8) = v4;
        *(v20 + 16) = v5;
        sub_1D233E7B4(v3, v4, v5);
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_1D226E000, v16, v17, "Unsupported emoji found in prompt with error: %@", v18, 0xCu);
        sub_1D22BD238(v19, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v19, -1, -1);
        MEMORY[0x1D38A3520](v18, -1, -1);
      }
    }

    else
    {
      v12(*(v0 + 88), *(v0 + 72));
    }

    sub_1D22BCE64();
    swift_allocError();
    *v22 = v3;
    *(v22 + 8) = v4;
    *(v22 + 16) = v5 | 0x60;
    swift_willThrow();
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D238CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = *(v6 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1D22BDFF8;

  return sub_1D2384FBC(a1, a2, a3, a4, a5, a6, v6 + v15, v16);
}

uint64_t sub_1D238D058(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D238D0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D238D120(uint64_t a1)
{
  v4 = *(sub_1D28734C8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D2370CA8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D238D218(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ImageGeneration.GenerationParameters(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BC8FC;

  return sub_1D2379AB4(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t objectdestroy_83Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D238D3A4(uint64_t a1)
{
  v4 = *(sub_1D2873068() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D2378C00(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D238D4A8(uint64_t a1)
{
  v3 = *(sub_1D2872D38() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ImageGeneration.GenerationParameters(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1[3];
  v14 = v1[2];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D22BDFF8;

  return sub_1D23828E0(a1, v14, v8, v9, v10, v11, v1 + v4, v1 + v7);
}

uint64_t objectdestroy_58Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0, &qword_1D2883660);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D238D72C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0, &qword_1D2883660) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BC8FC;

  return sub_1D2388820(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_88Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

unint64_t sub_1D238D968()
{
  result = qword_1ED89CE98;
  if (!qword_1ED89CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA358, &qword_1D2883920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CE98);
  }

  return result;
}

uint64_t sub_1D238D9CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D23601C4();
}

uint64_t sub_1D238DA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D238DADC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0, &unk_1D2883890) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D25300C0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D238DBD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D235FB54(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ImageGeneration.GenerationParameters(uint64_t a1)
{
  result = qword_1ED8A5EC0;
  if (!qword_1ED8A5EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D238DD28(uint64_t a1)
{
  sub_1D238DF94();
  if (v1 <= 0x3F)
  {
    sub_1D238E048(319, &qword_1ED89CF10, type metadata accessor for IdentifiedEntity, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D238E048(319, &qword_1ED89CF20, type metadata accessor for CuratedPrompt, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1D2872008();
        if (v4 <= 0x3F)
        {
          sub_1D238E048(319, &qword_1ED8A52A0, type metadata accessor for PlaygroundImage, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D238DFE4(319);
            if (v6 <= 0x3F)
            {
              sub_1D238E048(319, &qword_1ED89CD18, MEMORY[0x1E696E4D8], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1D238E048(319, &qword_1ED8A6C80, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1D2872438();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D238DF94()
{
  if (!qword_1ED8A6D28[0])
  {
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8A6D28);
    }
  }
}

void sub_1D238DFE4(uint64_t a1)
{
  if (!qword_1ED8A6C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA4A8, &qword_1D2883670);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8A6C88);
    }
  }
}

void sub_1D238E048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D238E0AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v30 = a4;
  v32 = type metadata accessor for IdentifiedEntity(0);
  v7 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v26 = v4;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D23D82C0(0, v9, 0);
    v33 = v34;
    v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = (a1 + v28);
    v27 = *(v7 + 72);
    while (1)
    {
      v31 = v9;
      sub_1D2870F68();
      v11 = sub_1D2878248();

      if (__OFADD__(v11, a3))
      {
        break;
      }

      sub_1D2870F68();
      v13 = sub_1D2878248();

      if (__OFADD__(v13, a3))
      {
        goto LABEL_13;
      }

      v14 = a3;
      sub_1D2870F68();
      v15 = sub_1D28781C8();

      sub_1D2870F68();
      v16 = sub_1D28781C8();

      v18 = *v10;
      v17 = v10[1];
      v19 = v32;
      v20 = v29;
      result = sub_1D2398BB0(v10 + *(v32 + 20), &v29[*(v32 + 20)], type metadata accessor for IdentifiedEntity.Kind);
      if (v16 >> 14 < v15 >> 14)
      {
        goto LABEL_14;
      }

      *v20 = v18;
      v20[1] = v17;
      v21 = (v20 + *(v19 + 24));
      *v21 = v15;
      v21[1] = v16;
      v22 = v33;
      v34 = v33;
      v24 = *(v33 + 16);
      v23 = *(v33 + 24);
      sub_1D2870F68();
      if (v24 >= v23 >> 1)
      {
        sub_1D23D82C0((v23 > 1), v24 + 1, 1);
        v22 = v34;
      }

      *(v22 + 16) = v24 + 1;
      v33 = v22;
      v25 = v27;
      sub_1D2398AE8(v20, v22 + v28 + v24 * v27, type metadata accessor for IdentifiedEntity);
      v10 = (v10 + v25);
      v9 = v31 - 1;
      a3 = v14;
      if (v31 == 1)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D238E3AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 944) = a4;
  *(v4 + 1289) = a3;
  *(v4 + 936) = a2;
  *(v4 + 928) = a1;
  v5 = type metadata accessor for CuratedPrompt(0);
  *(v4 + 952) = v5;
  *(v4 + 960) = *(v5 - 8);
  *(v4 + 968) = swift_task_alloc();
  *(v4 + 976) = swift_task_alloc();
  *(v4 + 984) = swift_task_alloc();
  v6 = type metadata accessor for Prompt(0);
  *(v4 + 992) = v6;
  *(v4 + 1000) = *(v6 - 8);
  *(v4 + 1008) = swift_task_alloc();
  *(v4 + 1016) = swift_task_alloc();
  v7 = sub_1D2872438();
  *(v4 + 1024) = v7;
  *(v4 + 1032) = *(v7 - 8);
  *(v4 + 1040) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40, &unk_1D287EFF0);
  *(v4 + 1048) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  *(v4 + 1056) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  *(v4 + 1064) = swift_task_alloc();
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  v8 = sub_1D2872008();
  *(v4 + 1088) = v8;
  *(v4 + 1096) = *(v8 - 8);
  *(v4 + 1104) = swift_task_alloc();
  *(v4 + 1112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  *(v4 + 1120) = swift_task_alloc();
  v9 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  *(v4 + 1128) = v9;
  *(v4 + 1136) = *(v9 - 8);
  *(v4 + 1144) = swift_task_alloc();
  *(v4 + 1152) = type metadata accessor for CharacterRecipe(0);
  *(v4 + 1160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  *(v4 + 1168) = swift_task_alloc();
  v10 = type metadata accessor for CharacterAsset(0);
  *(v4 + 1176) = v10;
  *(v4 + 1184) = *(v10 - 8);
  *(v4 + 1192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  *(v4 + 1200) = swift_task_alloc();
  v11 = sub_1D2871818();
  *(v4 + 1208) = v11;
  *(v4 + 1216) = *(v11 - 8);
  *(v4 + 1224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  *(v4 + 1232) = swift_task_alloc();
  v12 = type metadata accessor for PhotosPersonAsset(0);
  *(v4 + 1240) = v12;
  *(v4 + 1248) = *(v12 - 8);
  *(v4 + 1256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0, qword_1D28AB8F0);
  *(v4 + 1264) = swift_task_alloc();
  *(v4 + 1272) = swift_task_alloc();
  sub_1D2878568();
  *(v4 + 1280) = sub_1D2878558();
  v14 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D238E974, v14, v13);
}

void sub_1D238E974()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 936);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8, &qword_1D2883670);
  v4 = *(v3 - 8);
  v284 = v3;
  v318 = *(v4 + 56);
  v318(v1, 1, 1);
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v5, v0 + 384, &qword_1EC6D9A58, &qword_1D287F000);
  v325 = v0;
  v273 = v4;
  v278 = v5;
  v281 = v2;
  if (*(v0 + 408))
  {
    sub_1D227268C((v0 + 384), v0 + 304);
    sub_1D22D7044(v0 + 304, v0 + 504);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 1256);
      v7 = *(v0 + 1232);
      (*(*(v0 + 1248) + 56))(v7, 0, 1, *(v0 + 1240));
      sub_1D2398AE8(v7, v6, type metadata accessor for PhotosPersonAsset);
      v8 = v6[4];
      v9 = v6[5];
      v10 = v6[6];
      v11 = v6[7];
      v313 = v8;
      v304 = v11;
      if (v11)
      {
        sub_1D2870F68();
        sub_1D2870F68();
        v12 = v11;
        v299 = v9;
        v13 = v10;
        sub_1D2396784(v8, v9, v10);
        v14 = v12;
        v15 = [v14 localIdentifier];
        if (!v15)
        {
          sub_1D28780A8();
          v15 = sub_1D2878068();
        }

        v16 = [objc_opt_self() uuidFromLocalIdentifier_];

        if (!v16)
        {
          __break(1u);
          return;
        }

        sub_1D28780A8();

        sub_1D28717A8();

        v10 = v13;
        v9 = v299;
      }

      else
      {
        (*(*(v0 + 1216) + 56))(*(v0 + 1200), 1, 1, *(v0 + 1208));
        sub_1D2870F68();
        sub_1D2870F68();
        sub_1D2396784(v8, v9, v10);
      }

      v20 = *(v0 + 1216);
      v21 = *(v0 + 1208);
      v22 = *(v0 + 1200);
      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      if ((*(v20 + 48))(v22, 1, v21) != 1)
      {
        v302 = *(v0 + 1272);
        v58 = v10;
        v59 = *(v0 + 1264);
        v285 = *(v0 + 1256);
        v276 = *(v0 + 1240);
        v60 = *(v0 + 1224);
        v61 = *(v0 + 1216);
        v62 = *(v0 + 1208);
        v291 = *(v0 + 1136);
        v297 = *(v0 + 1128);
        v63 = v9;
        v64 = *(v61 + 32);
        v64(v60, *(v0 + 1200), v62);

        sub_1D238D058(v313, v63, v58);

        v65 = v284[12];
        v66 = v59 + v284[16];
        v307 = v284[20];
        v311 = v284[24];
        v316 = (v59 + v284[28]);
        v64(v59, v60, v62);
        (*(v61 + 56))(v59, 0, 1, v62);
        v67 = *(v276 + 20);
        v68 = type metadata accessor for PhotosPersonImage(0);
        sub_1D2398BB0(v285 + *(v68 + 24) + v67, v59 + v65, type metadata accessor for PlaygroundImage);
        v69 = type metadata accessor for PlaygroundImage(0);
        (*(*(v69 - 8) + 56))(v59 + v65, 0, 1, v69);
        *v66 = 0u;
        *(v66 + 16) = 0u;
        *(v66 + 32) = 1;
        *(v59 + v307) = 4;
        (*(v291 + 56))(v59 + v311, 1, 1, v297);
        v70 = v6[4];
        v71 = v6[5];
        v72 = v6[6];
        sub_1D2396784(v70, v71, v72);
        sub_1D2398B50(v285, type metadata accessor for PhotosPersonAsset);
        *v316 = v70;
        v316[1] = v71;
        v316[2] = v72;
        (v318)(v59, 0, 1, v284);
        v39 = v59;
        v40 = v302;
        goto LABEL_22;
      }

      v23 = *(v0 + 1200);
      sub_1D2398B50(*(v0 + 1256), type metadata accessor for PhotosPersonAsset);
      sub_1D22BD238(v23, &qword_1EC6D8F70, &qword_1D2881410);

      sub_1D238D058(v313, v9, v10);

      v5 = v278;
      v2 = v281;
    }

    else
    {
      v17 = *(v0 + 1248);
      v18 = *(v0 + 1240);
      v19 = *(v0 + 1232);
      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      (*(v17 + 56))(v19, 1, 1, v18);
      sub_1D22BD238(v19, &unk_1EC6DDDC0, &unk_1D2881BE0);
    }
  }

  else
  {
    sub_1D22BD238(v0 + 384, &qword_1EC6D9A58, &qword_1D287F000);
  }

  sub_1D22BD1D0(v2 + v5, v0 + 464, &qword_1EC6D9A58, &qword_1D287F000);
  if (*(v0 + 488))
  {
    v24 = *(v0 + 1184);
    sub_1D227268C((v0 + 464), v0 + 424);
    sub_1D227268C((v0 + 424), v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
    v25 = swift_dynamicCast();
    v26 = *(v24 + 56);
    if (v25)
    {
      v27 = *(v0 + 1264);
      v28 = *(v0 + 1216);
      v290 = *(v0 + 1208);
      v29 = *(v0 + 1192);
      v30 = *(v0 + 1176);
      v31 = *(v0 + 1168);
      v300 = *(v0 + 1160);
      v305 = *(v0 + 1152);
      v32 = *(v0 + 1136);
      v309 = *(v0 + 1128);
      v314 = *(v0 + 1272);
      v26(v31, 0, 1, v30);
      sub_1D2398AE8(v31, v29, type metadata accessor for CharacterAsset);
      v33 = v284[12];
      v34 = v27 + v284[16];
      v35 = v284[20];
      v296 = v284[24];
      v36 = (v27 + v284[28]);
      (*(v28 + 56))(v27, 1, 1, v290);
      v37 = type metadata accessor for PlaygroundImage(0);
      (*(*(v37 - 8) + 56))(v27 + v33, 1, 1, v37);
      *v34 = 0u;
      *(v34 + 16) = 0u;
      *(v34 + 32) = 1;
      v38 = *(v30 + 24);
      *(v27 + v35) = *(v29 + v38);
      sub_1D2398BB0(v29 + v38, v300, type metadata accessor for CharacterRecipe);
      sub_1D2398B50(v29, type metadata accessor for CharacterAsset);
      sub_1D2398AE8(v300 + *(v305 + 20), v27 + v296, type metadata accessor for ImageGenerationPerson.SkinTone);
      (*(v32 + 56))(v27 + v296, 0, 1, v309);
      *v36 = 0;
      v36[1] = 0;
      v36[2] = 0;
      v0 = v325;
      (v318)(v27, 0, 1, v284);
      v39 = v27;
      v40 = v314;
LABEL_22:
      sub_1D2398A78(v39, v40);
      goto LABEL_23;
    }

    v44 = *(v0 + 1168);
    v26(v44, 1, 1, *(v0 + 1176));
    v41 = &unk_1EC6DDDA0;
    v42 = &qword_1D2882D20;
    v43 = v44;
  }

  else
  {
    v41 = &qword_1EC6D9A58;
    v42 = &qword_1D287F000;
    v43 = v0 + 464;
  }

  sub_1D22BD238(v43, v41, v42);
  v45 = *(v0 + 1136);
  v46 = *(v0 + 1128);
  v47 = *(v0 + 1120);
  v48 = *(v0 + 936);
  v49 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v48 + v49, v47, &unk_1EC6E33C0, &unk_1D2883750);
  if ((*(v45 + 48))(v47, 1, v46) == 1)
  {
    sub_1D22BD238(*(v0 + 1120), &unk_1EC6E33C0, &unk_1D2883750);
  }

  else
  {
    v50 = *(v0 + 1272);
    v51 = *(v0 + 1216);
    v301 = *(v0 + 1208);
    v52 = *(v0 + 1136);
    v310 = *(v0 + 1144);
    v315 = *(v0 + 1128);
    sub_1D2398AE8(*(v0 + 1120), v310, type metadata accessor for ImageGenerationPerson.SkinTone);
    sub_1D22BD238(v50, &qword_1EC6E33D0, qword_1D28AB8F0);
    v53 = v284[12];
    v54 = v50 + v284[16];
    v306 = v284[20];
    v55 = v284[24];
    v56 = (v50 + v284[28]);
    (*(v51 + 56))(v50, 1, 1, v301);
    v57 = type metadata accessor for PlaygroundImage(0);
    (*(*(v57 - 8) + 56))(v50 + v53, 1, 1, v57);
    *v54 = 0u;
    *(v54 + 16) = 0u;
    *(v54 + 32) = 1;
    *(v50 + v306) = 4;
    sub_1D2398AE8(v310, v50 + v55, type metadata accessor for ImageGenerationPerson.SkinTone);
    (*(v52 + 56))(v50 + v55, 0, 1, v315);
    *v56 = 0;
    v56[1] = 0;
    v56[2] = 0;
    (v318)(v50, 0, 1, v284);
  }

LABEL_23:
  v286 = v0 + 584;
  v292 = v0 + 544;
  v73 = *(v0 + 1112);
  v74 = *(v0 + 1096);
  v75 = *(v0 + 1088);
  v76 = *(v0 + 1080);
  v77 = *(v325 + 1072);
  v78 = *(v325 + 1056);
  v79 = *(v325 + 936);
  sub_1D23969C0(v79, 1, (v325 + 144));
  v317 = (v0 + 872);
  *(v0 + 872) = *(v325 + 144);
  v277 = *(v325 + 160);
  v80 = *(v325 + 168);
  v312 = (v0 + 856);
  *(v0 + 856) = *(v325 + 176);
  v303 = *(v325 + 192);
  *(v325 + 896) = *(v325 + 200);
  v81 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v274 = *(v74 + 16);
  v274(v73, &v79[v81], v75);
  v82 = type metadata accessor for PlaygroundImage(0);
  v83 = *(*(v82 - 8) + 56);
  v83(v76, 1, 1, v82);
  v84 = v82;
  v321 = v83;
  v83(v77, 1, 1, v82);
  v85 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v86 = *&v79[v85];
  v87 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(&v79[v87], v78, &qword_1EC6DA2C8, &unk_1D28826F0);
  v88 = type metadata accessor for SceneConditioningImage(0);
  v89 = (*(*(v88 - 8) + 48))(v78, 1, v88);
  v90 = *(v325 + 1056);
  v308 = v86;
  v298 = v80;
  if (v89 != 1)
  {
    *(v325 + 568) = v88;
    *(v325 + 576) = sub_1D2398A30(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage, &unk_1D289C7E0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v292);
    sub_1D2398AE8(v90, boxed_opaque_existential_1, type metadata accessor for SceneConditioningImage);
    v91 = v286;
    sub_1D227268C(v292, v286);
    sub_1D23967C8(v317, v325 + 824);
    sub_1D2870F68();
    v101 = v312;
    sub_1D23967C8(v312, v325 + 840);
    v92 = v303;
    sub_1D2870F68();
    sub_1D22BD1D0(v325 + 896, v325 + 920, &qword_1EC6DA5E0, &qword_1D2883968);
    v102 = v86;
    goto LABEL_32;
  }

  v91 = v286;
  sub_1D23967C8(v317, v325 + 792);
  sub_1D2870F68();
  sub_1D23967C8(v312, v325 + 808);
  v92 = v303;
  sub_1D2870F68();
  sub_1D22BD1D0(v325 + 896, v325 + 888, &qword_1EC6DA5E0, &qword_1D2883968);
  v93 = v86;
  sub_1D22BD238(v90, &qword_1EC6DA2C8, &unk_1D28826F0);
  *v292 = 0u;
  *(v292 + 16) = 0u;
  *(v292 + 32) = 0;
  sub_1D22BD1D0(v281 + v278, v325 + 344, &qword_1EC6D9A58, &qword_1D287F000);
  v94 = *(v325 + 1048);
  if (*(v325 + 368))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
    v95 = type metadata accessor for PersonConditioningImage(0);
    v96 = swift_dynamicCast();
    v97 = *(v95 - 8);
    (*(v97 + 56))(v94, v96 ^ 1u, 1, v95);
    if ((*(v97 + 48))(v94, 1, v95) != 1)
    {
      v98 = *(v325 + 1048);
      *(v325 + 608) = v95;
      *(v325 + 616) = sub_1D2398A30(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage, &unk_1D289D1EC);
      v99 = __swift_allocate_boxed_opaque_existential_1(v286);
      sub_1D2398AE8(v98, v99, type metadata accessor for PersonConditioningImage);
      goto LABEL_30;
    }
  }

  else
  {
    sub_1D22BD238(v325 + 344, &qword_1EC6D9A58, &qword_1D287F000);
    v103 = type metadata accessor for PersonConditioningImage(0);
    (*(*(v103 - 8) + 56))(v94, 1, 1, v103);
  }

  sub_1D22BD238(*(v325 + 1048), &qword_1EC6D9A40, &unk_1D287EFF0);
  *v286 = 0u;
  *(v286 + 16) = 0u;
  *(v286 + 32) = 0;
LABEL_30:
  v101 = v312;
  if (*(v325 + 568))
  {
    sub_1D22BD238(v292, &qword_1EC6DA3E8, &unk_1D2883000);
  }

LABEL_32:
  if (!*(v325 + 608))
  {
    sub_1D22BD238(v91, &qword_1EC6DA3E8, &unk_1D2883000);
    v107 = v84;
    goto LABEL_40;
  }

  sub_1D227268C(v91, v325 + 224);
  v104 = *(v325 + 248);
  v105 = *(v325 + 256);
  __swift_project_boxed_opaque_existential_1((v325 + 224), v104);
  v106 = (*(v105 + 40))(v104, v105);
  v107 = v84;
  if (v106 == 2)
  {
    v108 = *(v325 + 1080);
    v109 = v92;
    v110 = *(v325 + 1072);
    v111 = *(v325 + 248);
    v112 = *(v325 + 256);
    __swift_project_boxed_opaque_existential_1((v325 + 224), v111);
    LOBYTE(v111) = (*(v112 + 32))(v111, v112);
    v113 = *(v325 + 248);
    v114 = *(v325 + 256);
    __swift_project_boxed_opaque_existential_1((v325 + 224), v113);
    (*(v114 + 24))(v113, v114);
    if (v111)
    {
      v115 = v108;
    }

    else
    {
      v115 = v110;
    }

    v92 = v109;
    goto LABEL_38;
  }

  v136 = *(v325 + 1112);
  if ((v106 & 1) == 0)
  {
    v139 = *(v325 + 1096);
    v140 = *(v325 + 1088);
    v141 = *(v325 + 1080);
    v142 = *(v325 + 1072);
    sub_1D22BD018(v317);

    sub_1D22BD018(v101);

    sub_1D22BD238(v325 + 896, &qword_1EC6DA5E0, &qword_1D2883968);
    sub_1D233E6C8(v325 + 144);
    sub_1D22BCE64();
    swift_allocError();
    v144 = xmmword_1D28830A0;
LABEL_53:
    *v143 = v144;
    *(v143 + 16) = -96;
    swift_willThrow();

    sub_1D22BD238(v142, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD238(v141, &unk_1EC6DE5A0, &unk_1D287F0E0);
    (*(v139 + 8))(v136, v140);
    __swift_destroy_boxed_opaque_existential_0((v325 + 224));
    goto LABEL_118;
  }

  if ((sub_1D2871F78() & 1) == 0)
  {
    v136 = *(v325 + 1112);
    v139 = *(v325 + 1096);
    v140 = *(v325 + 1088);
    v141 = *(v325 + 1080);
    v142 = *(v325 + 1072);
    sub_1D22BD018(v317);

    sub_1D22BD018(v101);

    sub_1D22BD238(v325 + 896, &qword_1EC6DA5E0, &qword_1D2883968);
    sub_1D233E6C8(v325 + 144);
    sub_1D22BCE64();
    swift_allocError();
    v144 = xmmword_1D28838C0;
    goto LABEL_53;
  }

  v137 = *(v325 + 248);
  v138 = *(v325 + 256);
  __swift_project_boxed_opaque_existential_1((v325 + 224), v137);
  (*(v138 + 24))(v137, v138);
  v115 = *(v325 + 1080);
LABEL_38:
  v116 = *(v325 + 1064);
  sub_1D22BD238(v115, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v321(v116, 0, 1, v107);
  sub_1D22EC9BC(v116, v115, &unk_1EC6DE5A0, &unk_1D287F0E0);
  __swift_destroy_boxed_opaque_existential_0((v325 + 224));
LABEL_40:
  v117 = *(v325 + 1264);
  v118 = *(v325 + 1080);
  v119 = *(v325 + 1289);
  sub_1D22BD1D0(*(v325 + 1272), v117, &qword_1EC6E33D0, qword_1D28AB8F0);
  v120 = sub_1D23986EC(v117, v118, v92);
  sub_1D22BD238(v117, &qword_1EC6E33D0, qword_1D28AB8F0);
  if (!v120 || (v119 & 1) != 0)
  {
    if (v308)
    {
      v127 = v308;
      v128 = [v127 sketchImage];
      if (v128)
      {

        if (v120)
        {
          v129 = *(v325 + 1112);
          v130 = *(v325 + 1096);
          v131 = *(v325 + 1088);
          v132 = *(v325 + 1080);
          v133 = *(v325 + 1072);

          sub_1D22BD018(v317);

          sub_1D22BD018(v312);

          sub_1D22BD238(v325 + 896, &qword_1EC6DA5E0, &qword_1D2883968);
          sub_1D233E6C8(v325 + 144);
          sub_1D22BCE64();
          swift_allocError();
          v135 = xmmword_1D28838E0;
LABEL_117:
          *v134 = v135;
          *(v134 + 16) = -96;
          swift_willThrow();

          sub_1D22BD238(v133, &unk_1EC6DE5A0, &unk_1D287F0E0);
          sub_1D22BD238(v132, &unk_1EC6DE5A0, &unk_1D287F0E0);
          (*(v130 + 8))(v129, v131);
          goto LABEL_118;
        }

        v145 = sub_1D2878BF8();

        if ((v145 & 1) == 0)
        {
          v129 = *(v325 + 1112);
          v130 = *(v325 + 1096);
          v131 = *(v325 + 1088);
          v132 = *(v325 + 1080);
          v133 = *(v325 + 1072);
          sub_1D22BD018(v317);

          sub_1D22BD018(v312);

          sub_1D22BD238(v325 + 896, &qword_1EC6DA5E0, &qword_1D2883968);
          sub_1D233E6C8(v325 + 144);
          sub_1D22BCE64();
          swift_allocError();
          v135 = xmmword_1D28838D0;
          goto LABEL_117;
        }
      }

      else
      {
      }
    }

    v293 = v120;
    v146 = *(v325 + 1112);
    v147 = *(v325 + 1104);
    v148 = *(v325 + 1088);
    v279 = *(v325 + 1080);
    v282 = *(v325 + 1072);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5E8, &unk_1D2885300);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D28838F0;
    strcpy((inited + 32), "stylizedPrompt");
    *(inited + 47) = -18;
    v327 = *v317;
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](8236, 0xE200000000000000);
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v277, v298);

    *(inited + 48) = v327;
    strcpy((inited + 64), "numberOfAssets");
    *(inited + 79) = -18;
    *(v325 + 1288) = 1;
    *(inited + 80) = sub_1D28795C8();
    *(inited + 88) = v150;
    *(inited + 96) = 0x656C797473;
    *(inited + 104) = 0xE500000000000000;
    v274(v147, v146, v148);
    *(inited + 112) = sub_1D2878118();
    *(inited + 120) = v151;
    v287 = sub_1D25D6E38(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5F0, &qword_1D2883970);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5F8, &qword_1D2883978);
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA600, &qword_1D2883980);
    v153 = *(*(v152 - 8) + 72);
    v154 = (*(*(v152 - 8) + 80) + 32) & ~*(*(v152 - 8) + 80);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_1D2880100;
    v156 = v155 + v154;
    v157 = *(v152 + 48);
    strcpy((v155 + v154), "identityImage");
    *(v155 + v154 + 14) = -4864;
    sub_1D22BD1D0(v279, v155 + v154 + v157, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v158 = *(v152 + 48);
    strcpy((v155 + v154 + v153), "referenceImage");
    *(v156 + v153 + 15) = -18;
    v159 = v308;
    sub_1D22BD1D0(v282, v156 + v153 + v158, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v160 = (v156 + 2 * v153);
    v161 = v160 + *(v152 + 48);
    *v160 = 0xD00000000000001BLL;
    v160[1] = 0x80000001D28B2770;
    v162 = (v156 + 4 * v153);
    v163 = 3 * v153;
    if (v308 && (v164 = [v308 baseImage]) != 0)
    {
      v165 = v164;
      *(v161 + 4) = 0;
      *(v161 + 5) = 0;
      v166 = &v161[v107[9]];
      *v166 = 0u;
      *(v166 + 1) = 0u;
      *&v161[v107[10]] = xmmword_1D28809A0;
      v167 = v107[11];
      v168 = sub_1D2873AA8();
      (*(*(v168 - 8) + 56))(&v161[v167], 1, 1, v168);
      *v161 = v165;
      v161[8] = 3;
      *(v161 + 6) = 1;
      *(v161 + 2) = 0;
      v161[v107[12]] = 0;
      v169 = v165;
      sub_1D2871808();
      v321(v161, 0, 1, v107);

      v159 = v308;
      v170 = (v156 + v163);
      v171 = v156 + v163 + *(v152 + 48);
      *v170 = 0xD00000000000001DLL;
      v170[1] = 0x80000001D28B2790;
    }

    else
    {
      v321(v161, 1, 1, v107);
      v172 = (v156 + v163);
      v171 = v156 + v163 + *(v152 + 48);
      *v172 = 0xD00000000000001DLL;
      v172[1] = 0x80000001D28B2790;
      if (!v308)
      {
        v173 = v325;
        goto LABEL_62;
      }
    }

    v173 = v325;
    v174 = [v159 sketchImage];
    if (v174)
    {
      v175 = v174;
      *(v171 + 32) = 0;
      *(v171 + 40) = 0;
      v176 = (v171 + v107[9]);
      *v176 = 0u;
      v176[1] = 0u;
      *(v171 + v107[10]) = xmmword_1D28809A0;
      v177 = v107[11];
      v178 = sub_1D2873AA8();
      (*(*(v178 - 8) + 56))(v171 + v177, 1, 1, v178);
      *v171 = v175;
      *(v171 + 8) = 3;
      *(v171 + 24) = 1;
      *(v171 + 16) = 0;
      *(v171 + v107[12]) = 1;
      v179 = v175;
      sub_1D2871808();
      v321(v171, 0, 1, v107);

      v159 = v308;
      v180 = v162 + *(v152 + 48);
      *v162 = 0xD00000000000001CLL;
      v162[1] = 0x80000001D28B27B0;
LABEL_63:
      v181 = [v159 sketchMask];
      v308 = v159;
      if (v181)
      {
        v182 = v181;
        *(v180 + 4) = 0;
        *(v180 + 5) = 0;
        v183 = &v180[v107[9]];
        *v183 = 0u;
        *(v183 + 1) = 0u;
        *&v180[v107[10]] = xmmword_1D28809A0;
        v184 = v107[11];
        v185 = sub_1D2873AA8();
        (*(*(v185 - 8) + 56))(&v180[v184], 1, 1, v185);
        *v180 = v182;
        v180[8] = 3;
        *(v180 + 6) = 1;
        *(v180 + 2) = 0;
        v180[v107[12]] = 1;
        v186 = v182;
        sub_1D2871808();
        v321(v180, 0, 1, v107);

        goto LABEL_66;
      }

LABEL_65:
      v321(v180, 1, 1, v107);
LABEL_66:
      v187 = *(v173 + 1040);
      v188 = *(v173 + 936);
      type metadata accessor for TapToRadarManager();
      v189 = sub_1D25D7CD4(v155);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1D24254A4(v287, v189);

      type metadata accessor for GenerationRecipeFactory();
      sub_1D2461838(v188, 0, v187);
      v190 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
      swift_beginAccess();
      v280 = v190;
      v283 = v188;
      v191 = *(v188 + v190);
      v192 = *(v191 + 16);
      v193 = MEMORY[0x1E69E7CC0];
      if (v192)
      {
        v194 = *(v173 + 1016);
        v195 = *(v173 + 1000);
        v328 = MEMORY[0x1E69E7CC0];
        sub_1D2870F68();
        sub_1D23D81B8(0, v192, 0);
        v193 = v328;
        v196 = v191 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
        v197 = *(v195 + 72);
        do
        {
          v198 = *(v173 + 1016);
          sub_1D2398BB0(v196, v198, type metadata accessor for Prompt);
          v199 = *(v194 + 8);
          v200 = *(v194 + 16);
          sub_1D2870F68();
          sub_1D2398B50(v198, type metadata accessor for Prompt);
          v202 = *(v328 + 16);
          v201 = *(v328 + 24);
          if (v202 >= v201 >> 1)
          {
            sub_1D23D81B8((v201 > 1), v202 + 1, 1);
          }

          *(v328 + 16) = v202 + 1;
          v203 = v328 + 16 * v202;
          *(v203 + 32) = v199;
          *(v203 + 40) = v200;
          v196 += v197;
          --v192;
          v173 = v325;
        }

        while (v192);
      }

      if (!v293)
      {
        goto LABEL_74;
      }

      v204 = *(v173 + 1272);
      if ((*(v273 + 48))(v204, 1))
      {
        goto LABEL_74;
      }

      v262 = (v204 + v284[28]);
      if (!*v262)
      {
        goto LABEL_74;
      }

      v213 = v262[2];
      if (!v213)
      {
        goto LABEL_74;
      }

      v205 = v262[1];
      sub_1D2870F68();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_124;
      }

      while (1)
      {
        v264 = *(v193 + 2);
        v263 = *(v193 + 3);
        if (v264 >= v263 >> 1)
        {
          v193 = sub_1D27CC674((v263 > 1), v264 + 1, 1, v193);
        }

        *(v193 + 2) = v264 + 1;
        v265 = &v193[16 * v264];
        *(v265 + 4) = v205;
        *(v265 + 5) = v213;
LABEL_74:
        v205 = *(v173 + 984);
        v206 = *(v173 + 936);
        *(v173 + 904) = v193;
        sub_1D2870F68();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
        sub_1D22BB9D8(&qword_1ED89CE98, &qword_1EC6DA358, &qword_1D2883920, MEMORY[0x1E69E6310]);
        v288 = sub_1D2877F68();
        v294 = v207;

        v208 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
        swift_beginAccess();
        v209 = *(v206 + v208);
        v210 = *(v209 + 16);
        sub_1D2870F68();
        if (!v210)
        {
          break;
        }

        v211 = 0;
        v212 = v173;
        v173 = *(v173 + 960);
        v319 = *(v212 + 952);
        v322 = v205 + 8;
        v213 = MEMORY[0x1E69E7CC0];
        while (v211 < *(v209 + 16))
        {
          v205 = v325;
          v214 = (*(v173 + 80) + 32) & ~*(v173 + 80);
          v215 = *(v173 + 72);
          sub_1D2398BB0(v209 + v214 + v215 * v211, *(v325 + 984), type metadata accessor for CuratedPrompt);
          v216 = *(v325 + 984);
          if (*(v322 + *(v319 + 48)))
          {
            sub_1D2398AE8(v216, *(v325 + 968), type metadata accessor for CuratedPrompt);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D23D838C(0, *(v213 + 16) + 1, 1);
            }

            v205 = *(v213 + 16);
            v217 = *(v213 + 24);
            if (v205 >= v217 >> 1)
            {
              sub_1D23D838C((v217 > 1), v205 + 1, 1);
            }

            v218 = *(v325 + 968);
            *(v213 + 16) = v205 + 1;
            sub_1D2398AE8(v218, v213 + v214 + v205 * v215, type metadata accessor for CuratedPrompt);
          }

          else
          {
            sub_1D2398B50(v216, type metadata accessor for CuratedPrompt);
          }

          if (v210 == ++v211)
          {
            goto LABEL_86;
          }
        }

        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        v193 = sub_1D27CC674(0, *(v193 + 2) + 1, 1, v193);
      }

      v213 = MEMORY[0x1E69E7CC0];
LABEL_86:

      v219 = *(v213 + 16);
      if (v219)
      {
        v220 = *(v325 + 960);
        v221 = (*(v325 + 976) + *(*(v325 + 952) + 48));
        v222 = v213 + ((*(v220 + 80) + 32) & ~*(v220 + 80));
        v323 = *(v220 + 72);
        v223 = MEMORY[0x1E69E7CC0];
        do
        {
          v225 = *(v325 + 976);
          sub_1D2398BB0(v222, v225, type metadata accessor for CuratedPrompt);
          v227 = *v221;
          v226 = v221[1];
          sub_1D2870F68();
          sub_1D2398B50(v225, type metadata accessor for CuratedPrompt);
          if (v226)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v223 = sub_1D27CC904(0, *(v223 + 2) + 1, 1, v223);
            }

            v229 = *(v223 + 2);
            v228 = *(v223 + 3);
            if (v229 >= v228 >> 1)
            {
              v223 = sub_1D27CC904((v228 > 1), v229 + 1, 1, v223);
            }

            *(v223 + 2) = v229 + 1;
            v224 = &v223[16 * v229];
            *(v224 + 4) = v227;
            *(v224 + 5) = v226;
          }

          v222 += v323;
          --v219;
        }

        while (v219);
      }

      else
      {

        v223 = MEMORY[0x1E69E7CC0];
      }

      v173 = v325;
      v230 = *(v325 + 1000);
      v231 = *(v325 + 992);
      *(v325 + 912) = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA608, &unk_1D2883988);
      sub_1D22BB9D8(&unk_1ED89CEA0, &qword_1EC6DA608, &unk_1D2883988, MEMORY[0x1E69E6328]);
      v232 = sub_1D28782D8();
      v324 = v233;
      v213 = *(v283 + v280);
      v205 = *(v213 + 16);
      sub_1D2870F68();
      v234 = 0;
      while (v205 != v234)
      {
        if (v234 >= *(v213 + 16))
        {
          goto LABEL_123;
        }

        v235 = *(v325 + 1008);
        sub_1D2398BB0(v213 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v234++, v235, type metadata accessor for Prompt);
        v236 = *(v235 + *(v231 + 40));
        sub_1D2398B50(v235, type metadata accessor for Prompt);
        if ((v236 & 1) == 0)
        {

          v237 = 1;
          goto LABEL_105;
        }
      }

      v238 = *(v325 + 1104);
      v239 = *(v325 + 1096);
      v240 = *(v325 + 1088);

      v241 = v232 & 0xFFFFFFFFFFFFLL;
      if ((v324 & 0x2000000000000000) != 0)
      {
        v241 = HIBYTE(v324) & 0xF;
      }

      v242 = v241 != 0;
      sub_1D2871FC8();
      sub_1D2398A30(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
      v243 = sub_1D2877F98();
      (*(v239 + 8))(v238, v240);
      v237 = v243 & v242;
LABEL_105:
      v272 = v237;
      v320 = v232;
      v244 = sub_1D2392730();
      v270 = v245;
      v271 = v244;
      sub_1D233E6C8(v325 + 144);
      v247 = v288;
      v246 = v294;
      v248 = HIBYTE(v294) & 0xF;
      if ((v294 & 0x2000000000000000) == 0)
      {
        v248 = v288 & 0xFFFFFFFFFFFFLL;
      }

      if (!v248)
      {

        v247 = 0;
        v246 = 0;
      }

      v289 = v247;
      v295 = v246;
      v249 = *(v325 + 1272);
      v268 = v249;
      v250 = *(v325 + 1112);
      v251 = *(v325 + 1096);
      v252 = *(v325 + 1088);
      v253 = *(v325 + 1080);
      v266 = *(v325 + 1072);
      v326 = *(v325 + 1040);
      v254 = *(v173 + 1032);
      v267 = *(v173 + 1024);
      v269 = *(v173 + 944);
      v255 = *(v173 + 928);
      v256 = type metadata accessor for ImageGeneration.GenerationParameters(0);
      v274(v255 + v256[13], v250, v252);
      sub_1D22BD1D0(v253, v255 + v256[14], &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD1D0(v266, v255 + v256[15], &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD1D0(v249, v255 + v256[16], &qword_1EC6E33D0, qword_1D28AB8F0);
      (*(v254 + 16))(v255 + v256[23], v326, v267);
      v257 = sub_1D2673418();
      v275 = v258;
      (*(v254 + 8))(v326, v267);
      sub_1D22BD238(v266, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD238(v253, &unk_1EC6DE5A0, &unk_1D287F0E0);
      (*(v251 + 8))(v250, v252);
      sub_1D22BD1D0(v269, v255 + v256[21], &qword_1EC6D8F70, &qword_1D2881410);
      *v255 = *v317;
      *(v255 + 16) = v277;
      *(v255 + 24) = v298;
      *(v255 + 32) = *v312;
      *(v255 + 48) = v289;
      *(v255 + 56) = v295;
      *(v255 + 64) = v320;
      *(v255 + 72) = v324;
      *(v255 + 80) = v271;
      *(v255 + 88) = v270;
      *(v255 + 96) = v303;
      *(v255 + 104) = *(v173 + 896);
      *(v255 + 112) = 1;
      *(v255 + v256[17]) = v308;
      v259 = (v255 + v256[18]);
      *v259 = 0;
      v259[1] = 0;
      *(v255 + v256[19]) = v272;
      *(v255 + v256[20]) = 0;
      v260 = (v255 + v256[24]);
      *v260 = v257;
      v260[1] = v275;
      *(v255 + v256[22]) = 0;
      sub_1D22BD238(v268, &qword_1EC6E33D0, qword_1D28AB8F0);

      v261 = *(v173 + 8);
      goto LABEL_119;
    }

LABEL_62:
    v321(v171, 1, 1, v107);
    v180 = v162 + *(v152 + 48);
    *v162 = 0xD00000000000001CLL;
    v162[1] = 0x80000001D28B27B0;
    if (!v159)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v121 = *(v325 + 1112);
  v122 = *(v325 + 1096);
  v123 = *(v325 + 1088);
  v124 = *(v325 + 1080);
  v125 = *(v325 + 1072);
  sub_1D22BD018(v317);

  sub_1D22BD018(v312);

  sub_1D22BD238(v325 + 896, &qword_1EC6DA5E0, &qword_1D2883968);
  sub_1D233E6C8(v325 + 144);
  sub_1D22BCE64();
  swift_allocError();
  *v126 = xmmword_1D28830A0;
  *(v126 + 16) = -96;
  swift_willThrow();

  sub_1D22BD238(v125, &unk_1EC6DE5A0, &unk_1D287F0E0);
  sub_1D22BD238(v124, &unk_1EC6DE5A0, &unk_1D287F0E0);
  (*(v122 + 8))(v121, v123);
LABEL_118:
  sub_1D22BD238(*(v325 + 1272), &qword_1EC6E33D0, qword_1D28AB8F0);

  v261 = *(v325 + 8);
LABEL_119:

  v261();
}

uint64_t sub_1D239130C()
{
  v36 = v0[4];
  v1 = *(&v36 + 1);
  if (*(&v36 + 1) && !*(*(v0 + 6) + 16))
  {
    v8 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D287F550;
    *(v9 + 32) = v8;
    *(v9 + 40) = v1;
    v35 = *v0;
    *(v9 + 48) = v35;
    v34[2] = v9;
    sub_1D22BD1D0(&v36, v34, &qword_1EC6D8F48, &qword_1D287CC90);
    sub_1D23967C8(&v35, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
    sub_1D22BB9D8(&qword_1ED89CE98, &qword_1EC6DA358, &qword_1D2883920, MEMORY[0x1E69E6310]);
    v3 = sub_1D2877F68();
    v2 = v10;

    v4 = sub_1D27CC674(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v4 + 2);
    v11 = *(v4 + 3);
    v7 = v6 + 1;
    if (v6 >= v11 >> 1)
    {
      v4 = sub_1D27CC674((v11 > 1), v6 + 1, 1, v4);
    }
  }

  else
  {
    v3 = *v0;
    v2 = *(v0 + 1);
    sub_1D2870F68();
    v4 = sub_1D27CC674(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1D27CC674((v5 > 1), v6 + 1, 1, v4);
    }
  }

  *(v4 + 2) = v7;
  v12 = &v4[16 * v6];
  *(v12 + 4) = v3;
  *(v12 + 5) = v2;
  v14 = *(v0 + 2);
  v13 = *(v0 + 3);
  v15 = *(v4 + 3);
  v16 = v7 + 1;
  sub_1D2870F68();
  if (v7 >= v15 >> 1)
  {
LABEL_30:
    v4 = sub_1D27CC674((v15 > 1), v16, 1, v4);
  }

  v15 = 0;
  *(v4 + 2) = v16;
  v17 = &v4[16 * v7];
  *(v17 + 4) = v14;
  *(v17 + 5) = v13;
  v18 = (v4 + 40);
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v15 >= *(v4 + 2))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v19 = *(v18 - 1);
    v14 = *v18;
    sub_1D2870F68();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1D27CC674(0, *(v13 + 2) + 1, 1, v13);
    }

    v21 = *(v13 + 2);
    v20 = *(v13 + 3);
    v7 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v13 = sub_1D27CC674((v20 > 1), v21 + 1, 1, v13);
    }

    ++v15;
    *(v13 + 2) = v7;
    v22 = &v13[16 * v21];
    *(v22 + 4) = v19;
    *(v22 + 5) = v14;
    v18 += 2;
  }

  while (v16 != v15);
  v23 = 0;
  v16 = (v13 + 40);
  v24 = v21 + 1;
  v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v25 = (v16 + 16 * v23);
  while (v24 != v23)
  {
    if (v23 >= *(v13 + 2))
    {
      goto LABEL_29;
    }

    ++v23;
    v26 = *(v25 - 1);
    v7 = *v25;
    v25 += 2;
    v27 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v27 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      sub_1D2870F68();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D23D81B8(0, *(v14 + 16) + 1, 1);
        v14 = v34[0];
      }

      v30 = *(v14 + 16);
      v29 = *(v14 + 24);
      v15 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1D23D81B8((v29 > 1), v30 + 1, 1);
        v14 = v34[0];
      }

      *(v14 + 16) = v15;
      v31 = v14 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v7;
      goto LABEL_16;
    }
  }

  v34[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
  sub_1D22BB9D8(&qword_1ED89CE98, &qword_1EC6DA358, &qword_1D2883920, MEMORY[0x1E69E6310]);
  v32 = sub_1D2877F68();

  return v32;
}

uint64_t sub_1D2391754()
{
  v1 = type metadata accessor for IdentifiedEntity(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D28714D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = v0[6];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v29 = v2;
  *&v35 = v12;
  sub_1D2870F68();
  sub_1D239302C(&v35);
  v13 = v35;
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1ED8B0060);
  (*(v7 + 16))(v9, v14, v6);
  sub_1D28718C8();
  sub_1D2871508();
  v15 = sub_1D28780F8();
  v17 = v16;
  v19 = *v0;
  v18 = v0[1];
  v30 = v0;
  v33 = v19;
  v34 = v18;
  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v28 = v13;
    v22 = v13 + v21;
    v23 = *(v29 + 72);
    sub_1D2870F68();
    do
    {
      sub_1D2398BB0(v22, v4, type metadata accessor for IdentifiedEntity);
      sub_1D2398B50(v4, type metadata accessor for IdentifiedEntity);
      *&v35 = v15;
      *(&v35 + 1) = v17;
      sub_1D2398698();
      sub_1D2878158();
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  else
  {
    sub_1D2870F68();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D287F550;
  v26 = v34;
  *(v25 + 32) = v33;
  *(v25 + 40) = v26;
  v35 = *(v30 + 1);
  *(v25 + 48) = v35;
  v32 = v25;
  sub_1D23967C8(&v35, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
  sub_1D22BB9D8(&qword_1ED89CE98, &qword_1EC6DA358, &qword_1D2883920, MEMORY[0x1E69E6310]);
  v24 = sub_1D2877F68();

  return v24;
}

uint64_t sub_1D2391C00()
{
  v1 = *v0;
  v16 = v0[1];
  v17 = v1;
  v15[0] = v1;
  v15[1] = v16;
  sub_1D23967C8(&v17, v14);
  sub_1D23967C8(&v16, v14);
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = &v15[v2] + 1;
  while (++v2 != 3)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v4 += 2;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1D2870F68();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14[0] = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D23D81B8(0, *(v3 + 16) + 1, 1);
        v3 = v14[0];
      }

      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D23D81B8((v9 > 1), v10 + 1, 1);
        v3 = v14[0];
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v5;
      goto LABEL_2;
    }
  }

  swift_arrayDestroy();
  v14[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
  sub_1D22BB9D8(&qword_1ED89CE98, &qword_1EC6DA358, &qword_1D2883920, MEMORY[0x1E69E6310]);
  v12 = sub_1D2877F68();

  return v12;
}

BOOL sub_1D2391DAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0, qword_1D28AB8F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8, &qword_1D2883670);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v9 = *(v8 + 56);
  v10 = *(v0 + 96);
  sub_1D22BD1D0(v0 + *(v8 + 64), v3, &qword_1EC6E33D0, qword_1D28AB8F0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D22BD238(v3, &qword_1EC6E33D0, qword_1D28AB8F0);
    goto LABEL_3;
  }

  sub_1D22EC9BC(v3, v7, &qword_1EC6DA4A8, &qword_1D2883670);
  v14 = v4[24];
  v15 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  if ((*(*(v15 - 8) + 48))(&v7[v14], 1, v15) == 1 || (v16 = sub_1D2871818(), (*(*(v16 - 8) + 48))(v7, 1, v16) != 1) || (v17 = v4[12], v18 = type metadata accessor for PlaygroundImage(0), (*(*(v18 - 8) + 48))(&v7[v17], 1, v18) != 1) || v7[v4[20]] != 4)
  {
    sub_1D22BD238(v7, &qword_1EC6DA4A8, &qword_1D2883670);
    return 1;
  }

  v19 = &v7[v4[28]];
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  sub_1D2396784(*v19, v21, v22);
  sub_1D22BD238(v7, &qword_1EC6DA4A8, &qword_1D2883670);
  if (v20)
  {
    sub_1D238D058(v20, v21, v22);
    return 1;
  }

LABEL_3:
  v11 = type metadata accessor for PlaygroundImage(0);
  v12 = 1;
  if ((*(*(v11 - 8) + 48))(v0 + v9, 1, v11) == 1)
  {
    v13 = *(sub_1D279F58C(v10) + 16);

    return v13 != 0;
  }

  return v12;
}

uint64_t sub_1D23920F8(char a1, uint64_t a2, int a3)
{
  v49 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = sub_1D2872008();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D27D8C8C())
  {
    if ((a1 & 1) == 0)
    {
      v50[3] = &type metadata for NotesFeatures;
      v50[4] = sub_1D22D7288();
      LOBYTE(v50[0]) = 1;
      v22 = sub_1D2871AA8();
      __swift_destroy_boxed_opaque_existential_0(v50);
      return v22 & 1;
    }

LABEL_13:
    v22 = 0;
    return v22 & 1;
  }

  v48 = a3;
  v47 = v8;
  v23 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v24 = v23[13];
  sub_1D2871FC8();
  LOBYTE(v24) = MEMORY[0x1D389AA00](v3 + v24, v21);
  (*(v19 + 8))(v21, v18);
  if ((v24 & 1) == 0)
  {
    goto LABEL_9;
  }

  v25 = *(v3 + 24);
  v26 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v25) & 0xF;
  }

  if (v26 && !sub_1D2391DAC())
  {
    v27 = 12;
  }

  else
  {
LABEL_9:
    if (sub_1D2391DAC())
    {
      v27 = 12;
    }

    else
    {
      v27 = 9;
    }
  }

  v28 = sub_1D239258C();
  v30 = sub_1D27BA78C(v28, v29);

  if (v27 < v30)
  {
    goto LABEL_13;
  }

  v32 = v23;
  if ((a1 & 1) == 0)
  {
    sub_1D22BD1D0(v3 + v23[14], v17, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v37 = type metadata accessor for PlaygroundImage(0);
    v38 = *(*(v37 - 8) + 48);
    v39 = v38(v17, 1, v37);
    sub_1D22BD238(v17, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if (v39 != 1)
    {
      goto LABEL_13;
    }

    sub_1D22BD1D0(v3 + v32[15], v14, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v40 = v38(v14, 1, v37);
    sub_1D22BD238(v14, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if (v40 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  v33 = sub_1D239258C();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    if ((v48 & 1) == 0 && !v49)
    {
      goto LABEL_13;
    }

LABEL_28:
    sub_1D22BD1D0(v3 + v23[14], v11, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v41 = type metadata accessor for PlaygroundImage(0);
    v42 = *(*(v41 - 8) + 48);
    v43 = v42(v11, 1, v41);
    sub_1D22BD238(v11, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if (v43 != 1)
    {
      goto LABEL_13;
    }

    v44 = v3 + v23[15];
    v45 = v47;
    sub_1D22BD1D0(v44, v47, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v46 = v42(v45, 1, v41);
    sub_1D22BD238(v45, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if (v46 != 1)
    {
      goto LABEL_13;
    }

LABEL_30:
    v22 = *(v3 + v32[17]) == 0;
    return v22 & 1;
  }

  v22 = 0;
  if (sub_1D2391DAC() && v48 & 1 | (v49 != 0))
  {
    goto LABEL_28;
  }

  return v22 & 1;
}

uint64_t sub_1D239258C()
{
  v13[0] = v0[1];
  v1 = v0[3];
  v13[1] = v0[2];
  v13[2] = v1;
  sub_1D2870F68();
  sub_1D2870F68();
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = &v13[2 * v2];
  while (++v2 != 3)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v4 += 2;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1D2870F68();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D23D81B8(0, *(v3 + 16) + 1, 1);
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D23D81B8((v8 > 1), v9 + 1, 1);
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      goto LABEL_2;
    }
  }

  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
  sub_1D22BB9D8(&qword_1ED89CE98, &qword_1EC6DA358, &qword_1D2883920, MEMORY[0x1E69E6310]);
  v11 = sub_1D2877F68();

  return v11;
}

uint64_t sub_1D2392730()
{
  v1 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = &v5[*(v2 + 92)];
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D2398BB0(v9, v5, type metadata accessor for CuratedPrompt);
      v12 = v8[48];
      if (v12 == 255 || (v12 & 1) == 0)
      {
        sub_1D2398B50(v5, type metadata accessor for CuratedPrompt);
      }

      else
      {
        v13 = *(v8 + 3);
        if (v13)
        {
          v14 = *(v8 + 2);
        }

        else
        {
          v13 = *(v8 + 1);
          if (v13)
          {
            v14 = *v8;
          }

          else
          {
            v14 = *(v8 + 4);
            v13 = *(v8 + 5);
          }
        }

        sub_1D2870F68();
        sub_1D2398B50(v5, type metadata accessor for CuratedPrompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D27CC674(0, *(v11 + 2) + 1, 1, v11);
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          v11 = sub_1D27CC674((v15 > 1), v16 + 1, 1, v11);
        }

        *(v11 + 2) = v16 + 1;
        v17 = &v11[16 * v16];
        *(v17 + 4) = v14;
        *(v17 + 5) = v13;
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (*(v11 + 2))
  {
    v20[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
    sub_1D22BB9D8(&qword_1ED89CE98, &qword_1EC6DA358, &qword_1D2883920, MEMORY[0x1E69E6310]);
    v18 = sub_1D2877F68();
  }

  else
  {

    return 0;
  }

  return v18;
}

void sub_1D23929C8()
{
  v1 = type metadata accessor for CuratedPrompt(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 104);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      sub_1D2398BB0(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v4, type metadata accessor for CuratedPrompt);
      if (*&v4[*(v1 + 48) + 8])
      {
        sub_1D2398B50(v4, type metadata accessor for CuratedPrompt);
        return;
      }

      ++v7;
      sub_1D2398B50(v4, type metadata accessor for CuratedPrompt);
      if (v6 == v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D2392B2C()
{
  v1 = type metadata accessor for CuratedPrompt(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 104);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      sub_1D2398BB0(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v4, type metadata accessor for CuratedPrompt);
      if (v4[*(v1 + 92) + 48] != 255)
      {
        sub_1D2398B50(v4, type metadata accessor for CuratedPrompt);
        return;
      }

      ++v7;
      sub_1D2398B50(v4, type metadata accessor for CuratedPrompt);
      if (v6 == v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D2392C94(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5D0, &qword_1D2883950);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D287F500;
  if (a1)
  {
    v7 = sub_1D28780A8();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 4271950;
  }

  MEMORY[0x1D38A0C50](v7, v9);

  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 32) = 0x617420646E756F46;
  *(v6 + 40) = 0xEA00000000002067;
  sub_1D28797B8();

  if (a1)
  {
    v10 = sub_1D28780A8();
    v12 = v11;
    if (v10 == sub_1D28780A8() && v12 == v13)
    {

LABEL_12:

      goto LABEL_13;
    }

    v15 = sub_1D2879618();
    v16 = a1;

    if (v15)
    {

LABEL_13:
      result = 0;
      *a4 = 1;
      return result;
    }

    v18 = sub_1D28780A8();
    v20 = v19;
    if (v18 == sub_1D28780A8() && v20 == v21)
    {

      goto LABEL_12;
    }

    v22 = sub_1D2879618();

    if (v22)
    {
      goto LABEL_13;
    }
  }

  return 1;
}

uint64_t sub_1D2392EA0(uint64_t *a1)
{
  v2 = *(type metadata accessor for CuratedPrompt(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D286FD00(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D239323C(v6, type metadata accessor for CuratedPrompt, sub_1D2393AB4, sub_1D239338C);
  *a1 = v3;
  return result;
}

void sub_1D2392F84(uint64_t *a1)
{
  v2 = *(type metadata accessor for Prompt(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D286FD14(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D2393110(v5);
  *a1 = v3;
}

uint64_t sub_1D239302C(uint64_t *a1)
{
  v2 = *(type metadata accessor for IdentifiedEntity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D286FD50(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D239323C(v6, type metadata accessor for IdentifiedEntity, sub_1D2394D68, sub_1D239384C);
  *a1 = v3;
  return result;
}

void sub_1D2393110(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D28795B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt(0);
        v6 = sub_1D2878468();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D2394404(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D23935E8(0, v2, 1, a1);
  }
}

uint64_t sub_1D239323C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1D28795B8();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1D2878468();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1D239338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    while (1)
    {
      sub_1D2398BB0(v21, v15, type metadata accessor for CuratedPrompt);
      sub_1D2398BB0(v18, v11, type metadata accessor for CuratedPrompt);
      v22 = *(*(v15 + 6) + 56);
      v23 = *(*(v11 + 6) + 56);
      sub_1D2398B50(v11, type metadata accessor for CuratedPrompt);
      sub_1D2398B50(v15, type metadata accessor for CuratedPrompt);
      if (v22 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v20 = v30 - 1;
        v21 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1D2398AE8(v21, v34, type metadata accessor for CuratedPrompt);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D2398AE8(v24, v18, type metadata accessor for CuratedPrompt);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D23935E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D2398BB0(v22, v16, type metadata accessor for Prompt);
      sub_1D2398BB0(v19, v12, type metadata accessor for Prompt);
      v23 = sub_1D2871748();
      sub_1D2398B50(v12, type metadata accessor for Prompt);
      sub_1D2398B50(v16, type metadata accessor for Prompt);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1D2398AE8(v22, v34, type metadata accessor for Prompt);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D2398AE8(v24, v19, type metadata accessor for Prompt);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D239384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IdentifiedEntity(0);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v30 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v35 = -v18;
    v36 = v17;
    v20 = a1 - a3;
    v29 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v33 = v19;
    v34 = a3;
    v31 = v21;
    v32 = v20;
    while (1)
    {
      sub_1D2398BB0(v21, v16, type metadata accessor for IdentifiedEntity);
      sub_1D2398BB0(v19, v12, type metadata accessor for IdentifiedEntity);
      v22 = *(v8 + 24);
      v23 = v8;
      v24 = *&v16[v22];
      v25 = *&v12[v22] >> 14;
      sub_1D2398B50(v12, type metadata accessor for IdentifiedEntity);
      sub_1D2398B50(v16, type metadata accessor for IdentifiedEntity);
      v26 = v25 >= v24 >> 14;
      v8 = v23;
      if (v26)
      {
LABEL_4:
        a3 = v34 + 1;
        v19 = v33 + v29;
        v20 = v32 - 1;
        v21 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1D2398AE8(v21, v37, type metadata accessor for IdentifiedEntity);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D2398AE8(v27, v19, type metadata accessor for IdentifiedEntity);
      v19 += v35;
      v21 += v35;
      v26 = __CFADD__(v20++, 1);
      if (v26)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D2393AB4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v120 = type metadata accessor for CuratedPrompt(0);
  v9 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v103 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v103 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v103 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = a4;
    }

    else
    {
LABEL_129:
      v98 = sub_1D269163C(a4);
    }

    v123 = v98;
    a4 = *(v98 + 2);
    if (a4 >= 2)
    {
      v99 = v9;
      while (*a3)
      {
        v100 = *&v98[16 * a4];
        v101 = v98;
        v9 = *&v98[16 * a4 + 24];
        sub_1D23956D8(*a3 + *(v99 + 72) * v100, *a3 + *(v99 + 72) * *&v98[16 * a4 + 16], *a3 + *(v99 + 72) * v9, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v9 < v100)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1D269163C(v101);
        }

        if ((a4 - 2) >= *(v101 + 2))
        {
          goto LABEL_123;
        }

        v102 = &v101[16 * a4];
        *v102 = v100;
        *(v102 + 1) = v9;
        v123 = v101;
        sub_1D26915B0(a4 - 1);
        v98 = v123;
        a4 = *(v123 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v109 = a3;
  v107 = a4;
  v105 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v112 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = v22 + v23 * v21;
      v24 = v121;
      sub_1D2398BB0(v5, v121, type metadata accessor for CuratedPrompt);
      v25 = v122;
      sub_1D2398BB0(v22 + v23 * v20, v122, type metadata accessor for CuratedPrompt);
      v26 = *(*(v24 + 48) + 56);
      v114 = *(*(v25 + 48) + 56);
      v115 = v26;
      sub_1D2398B50(v25, type metadata accessor for CuratedPrompt);
      sub_1D2398B50(v24, type metadata accessor for CuratedPrompt);
      v106 = v20;
      v27 = v20 + 2;
      v116 = v23;
      v117 = v17;
      v28 = v22 + v23 * v27;
      while (v17 != v27)
      {
        LODWORD(v118) = v115 < v114;
        v29 = v121;
        sub_1D2398BB0(v28, v121, type metadata accessor for CuratedPrompt);
        v30 = v6;
        v31 = v122;
        sub_1D2398BB0(v5, v122, type metadata accessor for CuratedPrompt);
        v32 = *(*(v29 + 48) + 56);
        v33 = *(*(v31 + 48) + 56);
        v34 = v31;
        v6 = v30;
        sub_1D2398B50(v34, type metadata accessor for CuratedPrompt);
        v17 = v117;
        sub_1D2398B50(v29, type metadata accessor for CuratedPrompt);
        ++v27;
        v28 += v116;
        v5 += v116;
        if (((v118 ^ (v32 >= v33)) & 1) == 0)
        {
          v17 = v27 - 1;
          break;
        }
      }

      a3 = v109;
      v9 = v105;
      v20 = v106;
      a4 = v107;
      if (v115 < v114)
      {
        if (v17 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v17)
        {
          v35 = v116 * (v17 - 1);
          v36 = v17 * v116;
          v117 = v17;
          v37 = v17;
          v38 = v106;
          v39 = v106 * v116;
          do
          {
            if (v38 != --v37)
            {
              v40 = *a3;
              if (!v40)
              {
                goto LABEL_132;
              }

              v5 = v40 + v39;
              sub_1D2398AE8(v40 + v39, v111, type metadata accessor for CuratedPrompt);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D2398AE8(v111, v40 + v35, type metadata accessor for CuratedPrompt);
              a3 = v109;
            }

            ++v38;
            v35 -= v116;
            v36 -= v116;
            v39 += v116;
          }

          while (v38 < v37);
          v9 = v105;
          v20 = v106;
          a4 = v107;
          v17 = v117;
        }
      }
    }

    v41 = a3[1];
    if (v17 < v41)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_125;
      }

      if (v17 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_127;
        }

        if (v20 + a4 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v20 + a4;
        }

        if (v42 < v20)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v17 != v42)
        {
          break;
        }
      }
    }

    v43 = v17;
    if (v17 < v20)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v112;
    }

    else
    {
      v19 = sub_1D2691650(0, *(v112 + 2) + 1, 1, v112);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_1D2691650((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    v113 = v43;
    if (a4)
    {
      while (1)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v48 = *(v19 + 4);
          v49 = *(v19 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_113;
          }

          v64 = &v19[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_116;
          }

          v70 = &v19[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_120;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v19[16 * v5];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_115;
        }

        v77 = &v19[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        sub_1D23956D8(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1D269163C(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v123 = v85;
        sub_1D26915B0(v47);
        v19 = v123;
        v5 = *(v123 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v19[16 * v5 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_111;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_112;
      }

      v59 = &v19[16 * v5];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_114;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_117;
      }

      if (v63 >= v55)
      {
        v81 = &v19[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v47 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    v18 = v113;
    a4 = v107;
    if (v113 >= v17)
    {
      goto LABEL_95;
    }
  }

  v104 = v6;
  v88 = *a3;
  v89 = *(v9 + 72);
  v90 = *a3 + v89 * (v17 - 1);
  v91 = -v89;
  v106 = v20;
  v92 = v20 - v17;
  v110 = v89;
  v118 = v88;
  v5 = v88 + v17 * v89;
  v113 = v42;
LABEL_85:
  v116 = v90;
  v117 = v17;
  v114 = v5;
  v115 = v92;
  v93 = v90;
  while (1)
  {
    v94 = v121;
    sub_1D2398BB0(v5, v121, type metadata accessor for CuratedPrompt);
    v95 = v122;
    sub_1D2398BB0(v93, v122, type metadata accessor for CuratedPrompt);
    a4 = *(*(v94 + 48) + 56);
    v96 = *(*(v95 + 48) + 56);
    sub_1D2398B50(v95, type metadata accessor for CuratedPrompt);
    sub_1D2398B50(v94, type metadata accessor for CuratedPrompt);
    if (a4 >= v96)
    {
LABEL_84:
      v17 = v117 + 1;
      v90 = v116 + v110;
      v92 = v115 - 1;
      v5 = v114 + v110;
      v43 = v113;
      if (v117 + 1 != v113)
      {
        goto LABEL_85;
      }

      v6 = v104;
      v9 = v105;
      a3 = v109;
      v20 = v106;
      if (v113 < v106)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v118)
    {
      break;
    }

    a4 = v119;
    sub_1D2398AE8(v5, v119, type metadata accessor for CuratedPrompt);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D2398AE8(a4, v93, type metadata accessor for CuratedPrompt);
    v93 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}