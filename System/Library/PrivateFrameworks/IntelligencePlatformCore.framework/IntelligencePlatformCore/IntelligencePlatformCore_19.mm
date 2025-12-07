void sub_1C45B6EFC(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDDFECB8);

  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136643075;
    v8 = *(a1 + 88);
    v9 = sub_1C45C1EA0();
    v11 = sub_1C441D828(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C441D828(v13, v12, &v17);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Autonaming Message processing: Donating into the Autonaming.Messages.Inferences biome stream using InferenceData with imageMessage: %{sensitive}s\n and image: %s", v7, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD18();
    sub_1C43FEA20();
  }

  v15 = *(v2 + 16);
  v16 = sub_1C45BEF24();
  [v15 sendEvent_];
}

uint64_t sub_1C45B7114(void *a1)
{
  v3 = *(v1 + 24);
  v4 = sub_1C4F01108();
  sub_1C43FBDBC();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C45BC014;
  *(v6 + 24) = v5;
  v10[4] = sub_1C45BC01C;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C45B7938;
  v10[3] = &unk_1F43E1BB0;
  v7 = _Block_copy(v10);
  v8 = a1;

  [v3 deleteWithPolicy:v4 eventsPassingTest:v7];

  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C45B7298(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 eventBody];
  v5 = sub_1C45B4BF8(a3, &selRef_messageId);
  if (!v6)
  {
    if (qword_1EDDFECB0 != -1)
    {
LABEL_47:
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Autonaming Message Deletion: No messageEvent.messageId was found";
LABEL_23:
    _os_log_impl(&dword_1C43F8000, v21, v22, v24, v23, 2u);
    MEMORY[0x1C6942830](v23, -1, -1);
LABEL_24:

    goto LABEL_25;
  }

  v7 = v6;
  if (v4)
  {
    v8 = v5;
    v9 = sub_1C45B4BF8(v4, &selRef_imageMessageIdentifier);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = sub_1C45B4BF8(a3, &selRef_messageId);
      v15 = v14;
      v16 = sub_1C45B4BF8(v4, &selRef_imageMessageIdentifier);
      if (v15)
      {
        if (v17)
        {
          if (v13 == v16 && v15 == v17)
          {

            goto LABEL_39;
          }

          v19 = sub_1C4F02938();

          if (v19)
          {
LABEL_39:
            if (qword_1EDDFECB0 != -1)
            {
              swift_once();
            }

            v46 = sub_1C4F00978();
            sub_1C442B738(v46, qword_1EDDFECB8);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v39 = sub_1C4F00968();
            v40 = sub_1C4F01CF8();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v50[0] = v42;
              *v41 = 136315394;
              v47 = sub_1C441D828(v8, v7, v50);

              *(v41 + 4) = v47;
              *(v41 + 12) = 2080;
              v48 = sub_1C441D828(v11, v12, v50);

              *(v41 + 14) = v48;
              v45 = "Autonaming Message Deletion: Message event with message id: %s and inference event with imageMessageIdentifier: %s match";
LABEL_43:
              _os_log_impl(&dword_1C43F8000, v39, v40, v45, v41, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1C6942830](v42, -1, -1);
              MEMORY[0x1C6942830](v41, -1, -1);
              goto LABEL_45;
            }

LABEL_44:

LABEL_45:

            return 1;
          }

LABEL_29:
          v49 = v11;
          v30 = [v4 contextMessageIdentifiers];
          v31 = sub_1C4F01678();

          v32 = (v31 + 40);
          v33 = -*(v31 + 16);
          v34 = -1;
          do
          {
            if (v33 + v34 == -1)
            {

              return 0;
            }

            if (++v34 >= *(v31 + 16))
            {
              __break(1u);
              goto LABEL_47;
            }

            v35 = v32 + 2;
            v36 = *v32;
            v50[0] = *(v32 - 1);
            v50[1] = v36;
            sub_1C4415EA8();
            v37 = sub_1C4F02048();
            v32 = v35;
          }

          while ((v37 & 1) == 0);

          if (qword_1EDDFECB0 != -1)
          {
            swift_once();
          }

          v38 = sub_1C4F00978();
          sub_1C442B738(v38, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v39 = sub_1C4F00968();
          v40 = sub_1C4F01CF8();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v50[0] = v42;
            *v41 = 136315394;
            v43 = sub_1C441D828(v8, v7, v50);

            *(v41 + 4) = v43;
            *(v41 + 12) = 2080;
            v44 = sub_1C441D828(v49, v12, v50);

            *(v41 + 14) = v44;
            v45 = "Autonaming Message Deletion: Message event contains a message id: %s that was found in the contextMessageIdentifiers array for the inferenceEventBody with image message identifier: %s";
            goto LABEL_43;
          }

          goto LABEL_44;
        }
      }

      else if (!v17)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Autonaming Message Deletion: No inferenceEventBody.imageMessageIdentifier was found";
    goto LABEL_23;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1C4F00978();
  sub_1C442B738(v25, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v26 = sub_1C4F01CD8();
  if (os_log_type_enabled(v4, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v26, "Autonaming Message Deletion: No event body found in deleteEvents of the autonamingMessagesInferenceStreamPruner", v27, 2u);
    MEMORY[0x1C6942830](v27, -1, -1);
  }

LABEL_25:

  return 0;
}

uint64_t sub_1C45B7938(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_1C45B79A8()
{
  v60 = v0;
  v1 = v0[14];
  sub_1C43FBDBC();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1C43FBDBC();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v57 = v3 + 16;
  v58 = *(v1 + 40);
  v4 = *(*(v1 + 32) + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark);
  v0[6] = sub_1C45BC004;
  v0[7] = v3;
  v5 = MEMORY[0x1E69E9820];
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C4442530;
  v0[5] = &unk_1F43E1B10;
  v6 = _Block_copy(v0 + 2);
  swift_unknownObjectRetain();

  v0[6] = sub_1C45BC00C;
  v0[7] = v2;
  v0[2] = v5;
  v0[3] = 1107296256;
  v0[4] = sub_1C45BC0BC;
  v0[5] = &unk_1F43E1B38;
  v7 = _Block_copy(v0 + 2);

  v8 = [v58 drivableSinkWithBookmark:v4 completion:v6 shouldContinue:v7];
  _Block_release(v7);
  _Block_release(v6);

  swift_beginAccess();
  v9 = *(v2 + 16);
  if (v9)
  {
    v10 = qword_1EDDFECB0;
    v11 = v9;
    if (v10 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = v11;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CC8();

    if (os_log_type_enabled(v14, v15))
    {
      v6 = sub_1C43FD084();
      v16 = sub_1C43FFD34();
      v59 = v16;
      *v6 = 136315138;
      v17 = sub_1C45B4BF8(v13, &selRef_messageId);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        v17 = 0xD000000000000013;
        v10 = 0x80000001C4F8B170;
      }

      v19 = sub_1C441D828(v17, v10, &v59);

      *(v6 + 1) = v19;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Autonaming Biome events: Received an event body for event: %s and beginning processing of event", v6, 0xCu);
      sub_1C440962C(v16);
      sub_1C43FFD4C();
      sub_1C43FEA20();
    }

    v20 = [v13 hasIsDeletion];
    v21 = [v13 isDeletion];
    if (v20 && v21)
    {
      v28 = sub_1C4F00968();
      sub_1C4F01CC8();
      sub_1C442DD28();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = sub_1C43FCED0();
        sub_1C440C354(v30);
        _os_log_impl(&dword_1C43F8000, v28, v6, "Autonaming Biome events: Event received is of type deletion, performing deletion", v10, 2u);
        sub_1C43FBE2C();
      }

      v21 = sub_1C45B7114(v13);
    }

    sub_1C447EF28(v21, (v0 + 11), v22, v23, v24, v25, v26, v27, v57);
    v31 = swift_unknownObjectRetain();
    v32 = sub_1C45B4F10(v31);
    swift_unknownObjectRelease();
    v33 = sub_1C4F00968();
    if (v32)
    {
      sub_1C4F01CC8();
      sub_1C442DD28();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = sub_1C43FCED0();
        sub_1C440C354(v35);
        v38 = "Autonaming Biome events: Successfully updated autonaming bookmarker after publisher completion task and event was processed";
LABEL_24:
        sub_1C445E76C(&dword_1C43F8000, v36, v37, v38);
        sub_1C43FBE2C();
      }
    }

    else
    {
      sub_1C4F01CD8();
      sub_1C442DD28();
      if (os_log_type_enabled(v33, v53))
      {
        v54 = sub_1C43FCED0();
        sub_1C440C354(v54);
        v38 = "Autonaming Biome events: Unable to update autonaming bookmarker after publisher completion task";
        goto LABEL_24;
      }
    }

    goto LABEL_26;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v39 = sub_1C4F00978();
  sub_1C442B738(v39, qword_1EDDFECB8);
  v40 = sub_1C4F00968();
  sub_1C4F01CC8();
  sub_1C442DD28();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = sub_1C43FCED0();
    sub_1C440C354(v42);
    sub_1C445E76C(&dword_1C43F8000, v43, v44, "Autonaming Biome events: Reached end of biome queue or queue is empty");
    sub_1C43FBE2C();
  }

  sub_1C447EF28(v45, (v0 + 8), v46, v47, v48, v49, v50, v51, v57);
  v52 = swift_unknownObjectRetain();
  sub_1C45B4F10(v52);
  swift_unknownObjectRelease();
  sub_1C45B6B00();
  sub_1C45C6314();

LABEL_26:

  swift_unknownObjectRelease();
  sub_1C43FBCF0();

  return v55(v9 != 0);
}

uint64_t sub_1C45B7EEC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 state];
  if (!v6)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v9, v16))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v17 = "Autonaming Biome events: processAutonamingMessagesBiome completed";
LABEL_16:
    _os_log_impl(&dword_1C43F8000, v9, v16, v17, v11, 2u);
LABEL_19:
    MEMORY[0x1C6942830](v11, -1, -1);
    goto LABEL_20;
  }

  if (v6 != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v9, v16))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v17 = "Autonaming Biome events: Error: processAutonamingMessagesBiome unexpected completion state.";
    goto LABEL_16;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDDFECB8);
  v8 = a1;
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CD8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = [v8 error];
    if (v13)
    {
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&dword_1C43F8000, v9, v10, "Autonaming Biome events: Error: processAutonamingMessagesBiome failed: %@", v11, 0xCu);
    sub_1C4423A0C(v12, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v12, -1, -1);
    goto LABEL_19;
  }

LABEL_20:

  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C45B81D0(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;

  return 0;
}

uint64_t sub_1C45B8234(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v91 = a2;
  v90 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v86 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v84 - v6;
  v92 = sub_1C4EF9E58();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v21 = sub_1C43FBD18(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v84 - v25;
  v26 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  v27 = sub_1C43FBD18(v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - v28;
  v30 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v31 = sub_1C43FBD18(v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v84 - v32;
  sub_1C4EF9648();
  sub_1C43FCDF8();
  v93 = v35;
  v94 = v34;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  sub_1C440BAA8(v33, 1, 1, v13);
  v39 = sub_1C4EFA018();
  sub_1C440BAA8(v29, 1, 1, v39);
  v40 = v33;
  v41 = v38;
  sub_1C4EF9618(v40, v29, 0, 1, 2024, 0, 9, 0, 1, 0, 0, 1, 0);
  v42 = v92;
  (*(v8 + 104))(v12, *MEMORY[0x1E6969868], v92);
  sub_1C4EF9E68();
  v43 = v89;
  (*(v8 + 8))(v12, v42);
  v44 = v90;
  v92 = v41;
  sub_1C4EF9F08();
  (*(v15 + 8))(v19, v13);
  sub_1C4467FE0(v43, v23);
  if (sub_1C44157D4(v23, 1, v44) == 1)
  {
    sub_1C4423A0C(v23, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v45 = v91;
LABEL_9:
    v61 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v62 = [v61 InFocus];
    swift_unknownObjectRelease();
    v63 = sub_1C4F01108();
    v64 = sub_1C4415840();
    v66 = [v64 v65];

    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    v100 = sub_1C45B8C20;
    v101 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1C44405F8;
    v99 = &unk_1F43E1A48;
    v68 = _Block_copy(&aBlock);
    v69 = swift_allocObject();
    v69[2] = v88;
    v69[3] = v45;
    v69[4] = v67;
    v100 = sub_1C45BBFF8;
    v101 = v69;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1C45BC0BC;
    v99 = &unk_1F43E1A98;
    v70 = _Block_copy(&aBlock);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v71 = [v66 sinkWithCompletion:v68 shouldContinue:v70];
    _Block_release(v70);
    _Block_release(v68);

    swift_beginAccess();
    if (*(v67 + 16))
    {
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v72 = sub_1C4F00978();
      sub_1C442B738(v72, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v73 = sub_1C4F00968();
      v74 = sub_1C4F01CC8();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = sub_1C43FD084();
        v76 = sub_1C43FFD34();
        v95 = v76;
        *v75 = 136315138;
        sub_1C4408600(&qword_1EDDFCD50);
        v77 = sub_1C4F02858();
        v79 = sub_1C441D828(v77, v78, &v95);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_1C43F8000, v73, v74, "Autonaming Analytics: Did not found a Messages app closing event happening after the image message: %s", v75, 0xCu);
        sub_1C440962C(v76);
        sub_1C43FFD4C();
        sub_1C43FBE2C();
      }
    }

    sub_1C4423A0C(v43, &unk_1EC0B84E0, qword_1C4F0D2D0);
    (*(v93 + 8))(v92, v94);
    v80 = *(v67 + 16);

    return v80;
  }

  v47 = v86;
  v46 = v87;
  (*(v86 + 32))(v87, v23, v44);
  v45 = v91;
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    v59 = sub_1C43FBEF8();
    v60(v59);
    goto LABEL_9;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v48 = sub_1C4F00978();
  sub_1C442B738(v48, qword_1EDDFECB8);
  v49 = v85;
  (*(v47 + 16))(v85, v46, v44);
  v50 = sub_1C4F00968();
  v51 = sub_1C4F01CC8();
  if (sub_1C440212C(v51))
  {
    v52 = sub_1C43FD084();
    v53 = sub_1C43FFD34();
    aBlock = v53;
    *v52 = 136315138;
    sub_1C4408600(&qword_1EDDFCD50);
    sub_1C4F02858();
    v54 = *(v47 + 8);
    v54(v49, v44);
    v55 = sub_1C4409A28();
    v58 = sub_1C441D828(v55, v56, v57);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_1C43F8000, v50, v51, "Autonaming Analytics: Image Message older than release date %s, cannot send analytics", v52, 0xCu);
    sub_1C440962C(v53);
    sub_1C43FFD4C();
    sub_1C43FE9D4();

    v54(v87, v44);
  }

  else
  {

    v81 = *(v47 + 8);
    v81(v49, v44);
    v82 = sub_1C43FBEF8();
    (v81)(v82);
  }

  sub_1C4423A0C(v43, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(v93 + 8))(v92, v94);
  return 0;
}

void sub_1C45B8C20(void *a1)
{
  v2 = [a1 state];
  if (!v2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v12 = "Autonaming Analytics: Finished looking through the AppInFocus Biome stream";
LABEL_16:
    _os_log_impl(&dword_1C43F8000, oslog, v11, v12, v6, 2u);
LABEL_19:
    MEMORY[0x1C6942830](v6, -1, -1);
    goto LABEL_20;
  }

  if (v2 != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v12 = "Autonaming Analytics: Error: unexpected completion state for looking through the AppInFocus Biome stream.";
    goto LABEL_16;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = a1;
  oslog = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = [v4 error];
    if (v8)
    {
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 4) = v8;
    *v7 = v9;
    _os_log_impl(&dword_1C43F8000, oslog, v5, "Autonaming Analytics: Error: failed looking through the AppInFocus Biome stream: %@", v6, 0xCu);
    sub_1C4423A0C(v7, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v7, -1, -1);
    goto LABEL_19;
  }

LABEL_20:
}

uint64_t sub_1C45B8ED0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v38 - v12;
  v14 = [a1 eventBody];
  if (!v14)
  {
    return 1;
  }

  v15 = v14;
  v16 = sub_1C4632064(v14);
  if (!v17)
  {
LABEL_14:

    return 1;
  }

  if (v16 == 0xD000000000000013 && v17 == 0x80000001C4F84800)
  {
  }

  else
  {
    v19 = sub_1C4F02938();

    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v15 starting])
  {
    goto LABEL_14;
  }

  v20 = [v15 absoluteTimestamp];
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;
  sub_1C4EF9C78();

  v22 = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
  sub_1C4498DE4(&qword_1EDDFCD70, MEMORY[0x1E6969548]);
  v44 = v22;
  if (sub_1C4F01068())
  {
    (*(v7 + 8))(v13, v6);
    goto LABEL_14;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1C4F00978();
  sub_1C442B738(v24, qword_1EDDFECB8);
  (*(v7 + 16))(v9, v13, v6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CC8();

  v43 = v26;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45[0] = v42;
    *v27 = 136315394;
    v40 = sub_1C4498DE4(&qword_1EDDFCD50, MEMORY[0x1E6969570]);
    v41 = v25;
    v39 = sub_1C4F02858();
    v29 = v28;
    v30 = *(v7 + 8);
    v30(v9, v6);
    v31 = sub_1C441D828(v39, v29, v45);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = sub_1C4F02858();
    v34 = sub_1C441D828(v32, v33, v45);

    *(v27 + 14) = v34;
    v35 = v41;
    _os_log_impl(&dword_1C43F8000, v41, v43, "Autonaming Analytics: Found a Messages app closing event happening at %s after the image message: %s", v27, 0x16u);
    v36 = v42;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v36, -1, -1);
    MEMORY[0x1C6942830](v27, -1, -1);

    v30(v13, v6);
  }

  else
  {

    v37 = *(v7 + 8);
    v37(v9, v6);
    v37(v13, v6);
  }

  swift_beginAccess();
  result = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_1C45B9354(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C45B936C()
{
  v16 = v0;
  v2 = sub_1C45BC6A4(*(v0 + 296), *(v0 + 304));
  v4 = v3;
  *(v0 + 320) = v3;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v5 = sub_1C4F00978();
  *(v0 + 328) = sub_1C442B738(v5, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F00968();
  sub_1C4F01CC8();

  if (sub_1C442FAFC())
  {
    sub_1C43FD084();
    v15 = sub_1C4402BBC();
    *v1 = 136315138;
    *(v1 + 4) = sub_1C441D828(v2, v4, &v15);
    sub_1C440A5A8();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  v12 = *(v0 + 312);
  *(v0 + 376) = sub_1C45B8234(*(v0 + 296), *(v0 + 304)) & 1;
  *(v0 + 336) = *(v12 + 48);
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_1C45B9504;

  return sub_1C45C513C(v2, v4);
}

uint64_t sub_1C45B9504()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  v8[44] = v6;
  v8[45] = v7;
  v8[46] = v0;

  if (v0)
  {
    v9 = sub_1C45B9BC8;
  }

  else
  {
    v9 = sub_1C45B9628;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C45B9628()
{
  v70 = v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();

  if (os_log_type_enabled(v2, v3))
  {
    sub_1C43FD084();
    v69 = sub_1C4402BBC();
    *v1 = 136315138;
    v4 = sub_1C44057DC();
    *(v1 + 4) = sub_1C441D828(v4, v5, v6);
    _os_log_impl(&dword_1C43F8000, v2, v3, "Result from running inference on Autonaming Messages LLM: %s", v1, 0xCu);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  type metadata accessor for AutonamingMessagesModelHandler();
  v7 = sub_1C4402120();
  sub_1C45C2CF0(v7, v8, v9);

  v11 = *(v0 + 208);
  if (v11 == 1)
  {
    if (*(v0 + 376) == 1)
    {
      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CC8();
      if (sub_1C443FA44(v13))
      {
        v14 = sub_1C43FCED0();
        sub_1C43FBD24(v14);
        sub_1C43FBED8(&dword_1C43F8000, v15, v16, "Autonaming Analytics: Sending an analytics event for inferenceLLMConversionError.");
        sub_1C43FE9D4();
      }

      sub_1C45C2C84();
      v17 = objc_allocWithZone(MEMORY[0x1E698EB40]);
      v18 = sub_1C44148CC();
      v20 = sub_1C440DE24(v18, v19, 2);
      v21 = sub_1C4415840();
      [v21 v22];
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CC8();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_28;
    }

    v25 = *(v0 + 304);
    v26 = sub_1C43FD084();
    v27 = sub_1C43FFD34();
    v69 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1C441D828(*(v25 + 16), *(v25 + 24), &v69);
    v28 = "Unable to donate inference for autonaming from messages from the message with unique identifier: %s, as conversion from LLM output to InferenceOutput failed";
LABEL_27:
    _os_log_impl(&dword_1C43F8000, v23, v24, v28, v26, 0xCu);
    sub_1C440962C(v27);
    sub_1C43FEA20();
    sub_1C43FE9D4();
LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 136) = *(v0 + 200);
  *(v0 + 144) = v11;
  *(v0 + 152) = *(v0 + 216);
  *(v0 + 168) = *(v0 + 232);
  *(v0 + 184) = *(v0 + 248);
  if ((sub_1C45C0288(v10) & 1) == 0)
  {
    sub_1C4423A0C(v0 + 200, &unk_1EC0B9820, &unk_1C4F0FC10);
LABEL_21:
    if (*(v0 + 376) == 1)
    {
      v55 = sub_1C4F00968();
      v56 = sub_1C4F01CC8();
      if (sub_1C443FA44(v56))
      {
        v57 = sub_1C43FCED0();
        sub_1C43FBD24(v57);
        sub_1C43FBED8(&dword_1C43F8000, v58, v59, "Autonaming Analytics: Sending an analytics event for an unclear inference.");
        sub_1C43FE9D4();
      }

      sub_1C45C2C84();
      v60 = objc_allocWithZone(MEMORY[0x1E698EB40]);
      v61 = sub_1C44148CC();
      v63 = sub_1C440DE24(v61, v62, 3);
      v64 = sub_1C4415840();
      [v64 v65];
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CC8();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_28;
    }

    v66 = *(v0 + 304);
    v26 = sub_1C43FD084();
    v27 = sub_1C43FFD34();
    v69 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1C441D828(*(v66 + 16), *(v66 + 24), &v69);
    v28 = "Unable to donate inference for autonaming from messages from the message with unique identifier: %s, as the inferred name or participant name is nil";
    goto LABEL_27;
  }

  v29 = *(v0 + 304);
  v31 = *(v29 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult);
  v30 = *(v29 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 8);
  if (v30)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v0 + 296);
  v34 = sub_1C441B770();
  sub_1C45BBF70(v34, v35);
  v36 = sub_1C441B770();
  sub_1C45BBFB4(v36, v37);
  v38 = sub_1C45C2C84();
  v40 = v39;
  type metadata accessor for InferenceData();
  swift_initStackObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C45BE1A0(v33, v29, (v0 + 136), v32, v30, v38, v40);
  v42 = v41;
  if (!sub_1C45BEF04())
  {

    goto LABEL_21;
  }

  v43 = *(v0 + 376);
  sub_1C45B6EFC(v42);
  if (v43 == 1)
  {
    v44 = sub_1C45BF034();
    v45 = sub_1C4F00968();
    sub_1C4F01CC8();

    if (sub_1C442FAFC())
    {
      v46 = sub_1C43FD084();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v44;
      *v47 = v44;
      v48 = v44;
      sub_1C440A5A8();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      sub_1C4423A0C(v47, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD18();
      sub_1C43FFD4C();
    }

    v54 = *(v0 + 312);

    [*(v54 + 168) sendEvent_];
  }

  else
  {
  }

LABEL_29:
  sub_1C43FBCF0();

  return v67();
}

uint64_t sub_1C45B9BC8(uint64_t a1)
{
  v26 = v1;
  if (*(v1 + 376))
  {
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CC8();
    if (sub_1C443FA44(v4))
    {
      v5 = sub_1C43FCED0();
      sub_1C43FBD24(v5);
      sub_1C43FBED8(&dword_1C43F8000, v6, v7, "Autonaming Analytics: Sending an analytics event for modelRunError.");
      sub_1C43FE9D4();
    }

    sub_1C45C2C84();
    v8 = objc_allocWithZone(MEMORY[0x1E698EB40]);
    v9 = sub_1C44148CC();
    v11 = sub_1C440DE24(v9, v10, 1);
    v12 = sub_1C4415840();
    [v12 v13];
  }

  v14 = *(v1 + 368);
  v15 = v14;
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CD8();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v1 + 368);
  if (v18)
  {
    sub_1C43FD084();
    v25 = sub_1C4402BBC();
    *v2 = 136315138;
    swift_getErrorValue();
    v20 = sub_1C4F02A38();
    v22 = sub_1C441D828(v20, v21, &v25);

    *(v2 + 4) = v22;
    _os_log_impl(&dword_1C43F8000, v16, v17, "Unable to run inference for autonaming from messages due to error: %s", v2, 0xCu);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  else
  {
  }

  sub_1C43FBCF0();

  return v23(0);
}

uint64_t sub_1C45B9D9C()
{
  sub_1C43FBCD4();
  v1[2] = v0;
  v2 = sub_1C4EF9F68();
  v1[3] = v2;
  sub_1C43FCF7C(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = sub_1C4EF9F88();
  v1[6] = v4;
  sub_1C43FCF7C(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v1[9] = v6;
  sub_1C43FCF7C(v6);
  v1[10] = v7;
  v1[11] = sub_1C43FE604();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v8);
  v1[16] = sub_1C43FE604();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C45B9FC8()
{
  v127 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = sub_1C4F00978();
  v0[28] = sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (sub_1C43FEB2C(v3))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4410910(&dword_1C43F8000, v4, v5, "Autonaming Queue preparation: Preparing a queue of messages to process");
    sub_1C43FEA20();
  }

  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[9];

  sub_1C45B6350(v6);
  v9 = sub_1C43FBEF8();
  sub_1C4467FE0(v9, v10);
  v11 = sub_1C44157D4(v7, 1, v8);
  v12 = v0[26];
  if (v11 == 1)
  {
    v120 = v0[20];
    v122 = v0[19];
    v13 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v17 = v0[7];
    v16 = v0[8];
    v119 = v0[6];
    v18 = v0[4];
    v19 = v0[5];
    v20 = v0[3];
    sub_1C4423A0C(v0[25], &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4EF9F58();
    (*(v18 + 104))(v19, *MEMORY[0x1E6969A68], v20);
    sub_1C4EF9CC8();
    sub_1C4EF9F28();
    v123 = *(v14 + 8);
    v123(v13, v15);
    v22 = *(v18 + 8);
    v21 = v18 + 8;
    v22(v19, v20);
    v24 = *(v17 + 8);
    v23 = v17 + 8;
    v24(v16, v119);
    sub_1C4467FE0(v12, v120);
    sub_1C4467FE0(v12, v122);
    v25 = sub_1C4F00968();
    sub_1C4F01CC8();
    sub_1C442DD28();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[20];
    if (v27)
    {
      v29 = v0[18];
      v30 = v0[9];
      swift_slowAlloc();
      v126 = sub_1C4402BBC();
      *v21 = 136315394;
      v31 = sub_1C4402120();
      sub_1C4467FE0(v31, v32);
      v33 = sub_1C44157D4(v29, 1, v30);
      v34 = v0[18];
      if (v33 == 1)
      {
        v35 = 7104878;
        sub_1C4423A0C(v0[18], &unk_1EC0B84E0, qword_1C4F0D2D0);
        v36 = 0xE300000000000000;
      }

      else
      {
        v65 = v0[9];
        v35 = sub_1C4EF9B18();
        v36 = v66;
        v123(v34, v65);
      }

      v67 = v0[19];
      v68 = v0[17];
      v69 = v0[9];
      sub_1C4423A0C(v0[20], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v70 = sub_1C441D828(v35, v36, &v126);

      *(v21 + 4) = v70;
      *(v21 + 12) = 2048;
      sub_1C4467FE0(v67, v68);
      v71 = sub_1C44157D4(v68, 1, v69);
      v72 = v0[19];
      if (v71 == 1)
      {
        sub_1C4423A0C(v0[19], &unk_1EC0B84E0, qword_1C4F0D2D0);
        v73 = sub_1C4402120();
        sub_1C4423A0C(v73, v74, qword_1C4F0D2D0);
        v75 = 0;
        v58 = v123;
      }

      else
      {
        sub_1C4EF9AD8();
        v75 = v88;
        sub_1C4423A0C(v72, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v89 = sub_1C4402120();
        v58 = v123;
        (v123)(v89);
      }

      *(v21 + 14) = v75;
      _os_log_impl(&dword_1C43F8000, v25, v23, "Autonaming Queue preparation: Did not find a date bookmark, starting the query from 5 years ago: %s (%f)", v21, 0x16u);
      sub_1C4406614();
      sub_1C43FFD4C();
    }

    else
    {
      v57 = v0[19];

      sub_1C4423A0C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C4423A0C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v58 = v123;
    }
  }

  else
  {
    v37 = v0[23];
    v39 = v0[14];
    v38 = v0[15];
    v40 = v0[13];
    v42 = v0[9];
    v41 = v0[10];
    (*(v41 + 32))(v38, v0[25], v42);
    sub_1C4EF9BE8();
    sub_1C440BAA8(v12, 0, 1, v42);
    v43 = sub_1C43FBEF8();
    sub_1C4467FE0(v43, v44);
    sub_1C4467FE0(v12, v37);
    v45 = *(v41 + 16);
    v45(v39, v38, v42);
    v45(v40, v38, v42);
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CC8();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[24];
    if (v48)
    {
      v124 = v47;
      v50 = v0[22];
      v51 = v0[9];
      v52 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v52 = 136315906;
      sub_1C4467FE0(v49, v50);
      v53 = sub_1C44157D4(v50, 1, v51);
      v54 = v0[22];
      if (v53 == 1)
      {
        v55 = 7104878;
        sub_1C4423A0C(v54, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v56 = 0xE300000000000000;
      }

      else
      {
        v77 = v0[9];
        v76 = v0[10];
        v55 = sub_1C4EF9B18();
        v56 = v78;
        (*(v76 + 8))(v54, v77);
      }

      v79 = v0[23];
      v80 = v0[21];
      v81 = v0[9];
      sub_1C4423A0C(v0[24], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v82 = sub_1C441D828(v55, v56, &v126);

      *(v52 + 4) = v82;
      *(v52 + 12) = 2048;
      sub_1C4467FE0(v79, v80);
      v83 = sub_1C44157D4(v80, 1, v81);
      v84 = v0[23];
      if (v83 == 1)
      {
        sub_1C4423A0C(v0[23], &unk_1EC0B84E0, qword_1C4F0D2D0);
        v85 = sub_1C4409A28();
        sub_1C4423A0C(v85, v86, qword_1C4F0D2D0);
        v87 = 0;
      }

      else
      {
        sub_1C4EF9AD8();
        v87 = v90;
        sub_1C4423A0C(v84, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v91 = sub_1C4409A28();
        v92(v91);
      }

      v93 = v0[14];
      v121 = v0[15];
      v94 = v0[13];
      v96 = v0[9];
      v95 = v0[10];
      *(v52 + 14) = v87;
      *(v52 + 22) = 2080;
      v97 = sub_1C4EF9B18();
      v99 = v98;
      v100 = *(v95 + 8);
      v100(v93, v96);
      v101 = sub_1C441D828(v97, v99, &v126);

      *(v52 + 24) = v101;
      *(v52 + 32) = 2048;
      sub_1C4EF9AD8();
      v58 = v100;
      v103 = v102;
      v100(v94, v96);
      *(v52 + 34) = v103;
      _os_log_impl(&dword_1C43F8000, v46, v124, "Autonaming Queue preparation: Found a date bookmark, starting the query from date %s (%f), bookmarkDate was %s (%f)", v52, 0x2Au);
      swift_arrayDestroy();
      sub_1C43FFD4C();
      sub_1C43FEA20();

      v100(v121, v96);
    }

    else
    {
      v59 = v0[14];
      v125 = v0[15];
      v60 = v0[13];
      v62 = v0[9];
      v61 = v0[10];

      v58 = *(v61 + 8);
      v58(v60, v62);
      v58(v59, v62);
      v63 = sub_1C44057DC();
      sub_1C4423A0C(v63, v64, qword_1C4F0D2D0);
      sub_1C4423A0C(v49, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v58(v125, v62);
    }
  }

  v0[29] = v58;
  v104 = v0[16];
  v105 = v0[9];
  sub_1C4467FE0(v0[26], v104);
  if (sub_1C44157D4(v104, 1, v105) == 1)
  {
    sub_1C4423A0C(v0[16], &unk_1EC0B84E0, qword_1C4F0D2D0);
    v106 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C442DD28();
    v108 = os_log_type_enabled(v106, v107);
    v110 = v0[26];
    v109 = v0[27];
    if (v108)
    {
      *sub_1C43FCED0() = 0;
      sub_1C440A5A8();
      _os_log_impl(v111, v112, v113, v114, v115, 2u);
      sub_1C43FFD4C();
    }

    sub_1C4423A0C(v110, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4423A0C(v109, &unk_1EC0B84E0, qword_1C4F0D2D0);

    sub_1C43FBCF0();

    return v116(0);
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[16], v0[9]);
    v0[30] = *(sub_1C45B6B00() + 16);

    sub_1C4EF9CC8();
    v118 = swift_task_alloc();
    v0[31] = v118;
    *v118 = v0;
    v118[1] = sub_1C45BAA84;

    return sub_1C45C9000();
  }
}

uint64_t sub_1C45BAA84()
{
  sub_1C43FBDE4();
  v2 = v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *(v4 + 80);
  v7 = *v0;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v2 + 256) = v9;

  *(v2 + 264) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = sub_1C43FBEF8();
  v5(v10);
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C45BAC0C()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CC8();
  v3 = sub_1C440212C(v2);
  v4 = v0[32];
  if (v3)
  {
    v5 = sub_1C43FD084();
    *v5 = 134217984;
    *(v5 + 4) = sub_1C4428DA0(v4);

    sub_1C4415F30(&dword_1C43F8000, v6, v2, "Autonaming Queue preparation: Found a queue of %ld messages");
    sub_1C43FEA20();
  }

  else
  {
  }

  v14 = v0[32];
  v7 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[11];
  v11 = v0[9];

  v7(v10, v11);
  sub_1C4423A0C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4423A0C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);

  sub_1C43FBCF0();

  return v12(v14);
}

uint64_t sub_1C45BAE28()
{
  sub_1C43FBCD4();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1C4EF9CD8();
  v1[7] = v4;
  sub_1C43FCF7C(v4);
  v1[8] = v5;
  v1[9] = sub_1C43FE604();
  v1[10] = swift_task_alloc();
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v6);
  v1[11] = sub_1C43FE604();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45BAF38()
{
  v56 = v1;
  v3 = v1[5];
  if (sub_1C4428DA0(v1[4]) == v3)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CC8();
    if (sub_1C43FEB2C(v6))
    {
      v7 = sub_1C43FCED0();
      sub_1C43FBD24(v7);
      _os_log_impl(&dword_1C43F8000, v5, v6, "Autonaming Queue processing: Reached the end of the messages queue, processing is complete", v0, 2u);
      sub_1C43FE9D4();
    }

LABEL_7:
    sub_1C442FADC();

    sub_1C43FBCF0();

    return v8(0);
  }

  v10 = v1[4];
  v11 = v10 & 0xC000000000000001;
  sub_1C4431590(v1[5], (v10 & 0xC000000000000001) == 0, v10);
  v13 = v1[4];
  v12 = v1[5];
  if (v11)
  {
    v14 = MEMORY[0x1C6940F90](v12, v13);
  }

  else
  {
    v14 = *(v13 + 8 * v12 + 32);
  }

  v15 = v14;
  v1[16] = v14;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v16 = sub_1C4F00978();
  v1[17] = sub_1C442B738(v16, qword_1EDDFECB8);
  v17 = v15;
  v18 = sub_1C4F00968();
  sub_1C4F01CC8();

  if (sub_1C442FAFC())
  {
    sub_1C43FD084();
    v55 = sub_1C4402BBC();
    *v2 = 136315138;
    v19 = sub_1C45C28D8([v17 attributeSet]);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v19 = 7104878;
      v21 = 0xE300000000000000;
    }

    v22 = sub_1C441D828(v19, v21, &v55);

    *(v2 + 4) = v22;
    sub_1C440A5A8();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  v28 = [v17 attributeSet];
  v29 = [v28 contentCreationDate];

  if (v29)
  {
    sub_1C4EF9C78();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v32 = v1[14];
  v31 = v1[15];
  v33 = v1[13];
  v34 = v1[7];
  sub_1C440BAA8(v32, v30, 1, v34);
  sub_1C45B69E4(v32, v31);
  sub_1C4467FE0(v31, v33);
  if (sub_1C44157D4(v33, 1, v34) == 1)
  {
    sub_1C4423A0C(v1[13], &unk_1EC0B84E0, qword_1C4F0D2D0);
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CC8();
    if (sub_1C43FEB2C(v36))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4410910(&dword_1C43F8000, v37, v38, "Autonaming Queue processing: Event does not contain a time, continuing with processing");
      sub_1C43FEA20();
    }
  }

  else
  {
    v39 = v1[9];
    v40 = v1[7];
    v41 = v1[8];
    (*(v41 + 32))(v1[10], v1[13], v40);
    sub_1C4EF9CC8();
    sub_1C4EF9CB8();
    v43 = v42;
    v44 = *(v41 + 8);
    v44(v39, v40);
    v45 = sub_1C4F00968();
    v46 = sub_1C4F01CC8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134218240;
      *(v47 + 4) = v43;
      *(v47 + 12) = 2048;
      sub_1C44F920C();
      *(v47 + 14) = static NSUserDefaults.autonamingMessagesProcessingDelay.getter();
      _os_log_impl(&dword_1C43F8000, v45, v46, "Autonaming Queue processing: Message has messageTimeDelta between message being written and current system time of: %f. Current time delta for processing an event is: %f seconds", v47, 0x16u);
      sub_1C43FFD18();
    }

    sub_1C44F920C();
    if (v43 < static NSUserDefaults.autonamingMessagesProcessingDelay.getter())
    {
      v48 = sub_1C4F00968();
      v49 = sub_1C4F01CD8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = sub_1C43FD084();
        *v50 = 134217984;
        *(v50 + 4) = static NSUserDefaults.autonamingMessagesProcessingDelay.getter();
        _os_log_impl(&dword_1C43F8000, v48, v49, "Autonaming Queue processing: Cannot process event as the set time delta for processing an event: %f seconds have not yet passed since the event took place", v50, 0xCu);
        sub_1C43FFD18();
      }

      v51 = v1[15];
      v52 = v1[10];
      v53 = v1[7];

      v44(v52, v53);
      sub_1C4423A0C(v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
      goto LABEL_7;
    }

    v44(v1[10], v1[7]);
  }

  v1[18] = sub_1C45B6B00();
  v54 = swift_task_alloc();
  v1[19] = v54;
  *v54 = v1;
  v54[1] = sub_1C45BB4FC;

  return sub_1C45C7658(v17);
}

uint64_t sub_1C45BB4FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;
  *(v7 + 160) = v5;
  *(v7 + 168) = v6;

  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C45BB600()
{
  v47 = v0;
  if (!v0[20])
  {
    if (sub_1C45B5424())
    {
      sub_1C4467FE0(v0[15], v0[12]);
      v7 = sub_1C4F00968();
      v8 = sub_1C4F01CC8();
      if (sub_1C440212C(v8))
      {
        v9 = v0[11];
        v10 = v0[7];
        v11 = sub_1C43FD084();
        v12 = sub_1C43FFD34();
        v46 = v12;
        *v11 = 136315138;
        v13 = sub_1C4409A28();
        sub_1C4467FE0(v13, v14);
        v15 = sub_1C44157D4(v9, 1, v10);
        v16 = v0[11];
        if (v15 == 1)
        {
          sub_1C4423A0C(v0[11], &unk_1EC0B84E0, qword_1C4F0D2D0);
          v17 = 0xE300000000000000;
          v18 = 7104878;
        }

        else
        {
          v36 = v0[7];
          v37 = v0[8];
          v18 = sub_1C4EF9B18();
          v17 = v38;
          v39 = *(v37 + 8);
          v1 = v37 + 8;
          v39(v16, v36);
        }

        v40 = sub_1C4410184();
        sub_1C4423A0C(v40, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v41 = sub_1C441D828(v18, v17, &v46);

        *(v11 + 4) = v41;
        sub_1C4415F30(&dword_1C43F8000, v42, v8, "Autonaming Queue processing: Successfully updated autonaming spotlight bookmark with date %s");
        sub_1C440962C(v12);
        sub_1C43FFD4C();
        sub_1C43FEA20();

        sub_1C45BBF30(v1);
        v32 = v45;
        v33 = &unk_1EC0B84E0;
        v34 = qword_1C4F0D2D0;
      }

      else
      {
        v27 = v0[20];
        v28 = v0[16];

        sub_1C45BBF30(v27);
        sub_1C440F228();
        sub_1C4423A0C(v29, v30, v31);
        sub_1C440F228();
      }
    }

    else
    {
      v19 = sub_1C4F00968();
      v20 = sub_1C4F01CD8();
      v21 = sub_1C43FEB2C(v20);
      v22 = v0[15];
      v23 = v0[16];
      if (v21)
      {
        *sub_1C43FCED0() = 0;
        sub_1C4404B70(&dword_1C43F8000, v24, v25, "Autonaming Queue processing: Unable to update autonaming bookmarker after publisher completion task");
        sub_1C43FFD18();

        v26 = sub_1C44057DC();
        sub_1C45BBF30(v26);
      }

      else
      {

        v35 = sub_1C44057DC();
        sub_1C45BBF30(v35);
      }

      v33 = &unk_1EC0B84E0;
      v34 = qword_1C4F0D2D0;
      v32 = v22;
    }

    sub_1C4423A0C(v32, v33, v34);
    sub_1C442FADC();

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    __asm { BRAA            X2, X16 }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1C45BB960;
  sub_1C43FD0C0();

  return sub_1C45B9354(v3, v4);
}

uint64_t sub_1C45BB960()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *(v1 + 24) = v3;
  *(v1 + 16) = v0;
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C45BBA48()
{
  v3 = *(v0 + 128);
  v4 = sub_1C4F00968();
  sub_1C4F01CC8();

  if (sub_1C442FAFC())
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 128);
    swift_slowAlloc();
    v55 = sub_1C4402BBC();
    *v1 = 67109378;
    *(v1 + 4) = v5;
    *(v1 + 8) = 2080;
    v7 = sub_1C45C28D8([v6 attributeSet]);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 7104878;
      v9 = 0xE300000000000000;
    }

    v10 = sub_1C441D828(v7, v9, &v55);

    *(v1 + 10) = v10;
    sub_1C440A5A8();
    _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  else
  {
  }

  if (sub_1C45B5424())
  {
    sub_1C4467FE0(*(v0 + 120), *(v0 + 96));
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CC8();
    if (sub_1C440212C(v17))
    {
      v18 = *(v0 + 88);
      v19 = *(v0 + 56);
      v20 = sub_1C43FD084();
      v21 = sub_1C43FFD34();
      v55 = v21;
      *v20 = 136315138;
      v22 = sub_1C4409A28();
      sub_1C4467FE0(v22, v23);
      v24 = sub_1C44157D4(v18, 1, v19);
      v25 = *(v0 + 88);
      if (v24 == 1)
      {
        v26 = 7104878;
        sub_1C4423A0C(*(v0 + 88), &unk_1EC0B84E0, qword_1C4F0D2D0);
        v27 = 0xE300000000000000;
      }

      else
      {
        v45 = *(v0 + 56);
        v46 = *(v0 + 64);
        v26 = sub_1C4EF9B18();
        v27 = v47;
        v48 = *(v46 + 8);
        v2 = v46 + 8;
        v48(v25, v45);
      }

      v49 = sub_1C4410184();
      sub_1C4423A0C(v49, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v50 = sub_1C441D828(v26, v27, &v55);

      *(v20 + 4) = v50;
      sub_1C4415F30(&dword_1C43F8000, v51, v17, "Autonaming Queue processing: Successfully updated autonaming spotlight bookmark with date %s");
      sub_1C440962C(v21);
      sub_1C43FFD4C();
      sub_1C43FEA20();

      sub_1C45BBF30(v2);
      v41 = v54;
      v42 = &unk_1EC0B84E0;
      v43 = qword_1C4F0D2D0;
    }

    else
    {
      v36 = *(v0 + 160);
      v37 = *(v0 + 128);

      sub_1C45BBF30(v36);
      sub_1C440F228();
      sub_1C4423A0C(v38, v39, v40);
      sub_1C440F228();
    }
  }

  else
  {
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CD8();
    v30 = sub_1C43FEB2C(v29);
    v31 = *(v0 + 120);
    v32 = *(v0 + 128);
    if (v30)
    {
      *sub_1C43FCED0() = 0;
      sub_1C4404B70(&dword_1C43F8000, v33, v34, "Autonaming Queue processing: Unable to update autonaming bookmarker after publisher completion task");
      sub_1C43FFD18();

      v35 = sub_1C44057DC();
      sub_1C45BBF30(v35);
    }

    else
    {

      v44 = sub_1C44057DC();
      sub_1C45BBF30(v44);
    }

    v42 = &unk_1EC0B84E0;
    v43 = qword_1C4F0D2D0;
    v41 = v31;
  }

  sub_1C4423A0C(v41, v42, v43);
  sub_1C442FADC();

  sub_1C43FBCF0();
  sub_1C43FD0C0();

  __asm { BRAA            X2, X16 }
}

id *sub_1C45BBE1C()
{

  return v0;
}

uint64_t sub_1C45BBED8()
{
  sub_1C45BBE1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45BBF30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C45BBF70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C45BBFB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C45BC0C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C45BC108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C45BC174@<X0>(double *a1@<X8>)
{
  sub_1C44F920C();
  v2 = static NSUserDefaults.autonamingMessagesContextMessagesTimeInterval.getter();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F0FC40;
  *(v3 + 32) = sub_1C4F01138();
  *(v3 + 40) = v4;
  *(v3 + 48) = sub_1C4F01138();
  *(v3 + 56) = v5;
  *(v3 + 64) = sub_1C4F01138();
  *(v3 + 72) = v6;
  *(v3 + 80) = sub_1C4F01138();
  *(v3 + 88) = v7;
  *(v3 + 96) = sub_1C4F01138();
  *(v3 + 104) = v8;
  *(v3 + 112) = sub_1C4F01138();
  *(v3 + 120) = v9;
  *(v3 + 128) = sub_1C4F01138();
  *(v3 + 136) = v10;
  *(v3 + 144) = sub_1C4F01138();
  *(v3 + 152) = v11;
  *(v3 + 160) = sub_1C4F01138();
  *(v3 + 168) = v12;
  *(v3 + 176) = sub_1C4F01138();
  *(v3 + 184) = v13;
  *(v3 + 192) = sub_1C4F01138();
  *(v3 + 200) = v14;
  *(v3 + 208) = sub_1C4F01138();
  *(v3 + 216) = v15;
  *(v3 + 224) = 0xD000000000000028;
  *(v3 + 232) = 0x80000001C4F8B1C0;
  *(v3 + 240) = 0xD00000000000001ALL;
  *(v3 + 248) = 0x80000001C4F8B1F0;
  *(v3 + 256) = sub_1C4F01138();
  *(v3 + 264) = v16;
  *(v3 + 272) = sub_1C4F01138();
  *(v3 + 280) = v17;
  result = sub_1C4F01138();
  *(v3 + 288) = result;
  *(v3 + 296) = v19;
  *a1 = -2.31584178e77;
  *(a1 + 1) = 0x80000001C4F8B1C0;
  a1[2] = -2.31584178e77;
  *(a1 + 3) = 0x80000001C4F8B1F0;
  a1[4] = -2.31584178e77;
  *(a1 + 5) = 0x80000001C4F8B210;
  a1[6] = -2.31584178e77;
  *(a1 + 7) = 0x80000001C4F8B230;
  a1[8] = v2;
  a1[9] = -2.31584178e77;
  *(a1 + 10) = 0x80000001C4F8B250;
  a1[11] = -2.31584178e77;
  *(a1 + 12) = 0x80000001C4F8B270;
  *(a1 + 13) = v3;
  return result;
}

uint64_t sub_1C45BC3F4(uint64_t a1, unint64_t a2)
{
  v23 = sub_1C4F02C18();
  MEMORY[0x1EEE9AC00](v23);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = a1;
    v17[1] = v2;
    v10 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C4F02238();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = v9;
          v20[1] = v19;
          if (*(v20 + v10) < 0)
          {
            switch(__clz(*(v20 + v10) ^ 0xFF))
            {
              case 0x1Au:
LABEL_20:
                v14 = 2;
                break;
              case 0x1Bu:
LABEL_21:
                v14 = 3;
                break;
              case 0x1Cu:
LABEL_22:
                v14 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v12 = v18;
          if ((v9 & 0x1000000000000000) == 0)
          {
            v12 = sub_1C4F022F8();
          }

          if (*(v12 + v10) < 0)
          {
            switch(__clz(*(v12 + v10) ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_20;
              case 0x1Bu:
                goto LABEL_21;
              case 0x1Cu:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v14 = 1;
      }

LABEL_15:
      sub_1C4F02C28();
      v15 = sub_1C4F02C08();
      (*v11)(v7, v23);
      if ((v15 & 1) == 0)
      {
        sub_1C4F01248();
      }

      v10 += v14;
      if (v10 >= v8)
      {

        return v21;
      }
    }
  }

  return 0;
}

uint64_t sub_1C45BC6A4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult + 8))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  result = sub_1C4428DA0(a1);
  if (result)
  {
    v3 = result;
    if (result >= 1)
    {
      v4 = 0;
      v5 = a1;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1C6940F90](v4, v5);
        }

        else
        {
          v6 = *(v5 + 8 * v4 + 32);
        }

        v7 = *(v6 + 112);
        if (v7)
        {
          v8 = *(v6 + 104);
          v9 = *(v6 + 80);
          if (*(v6 + 80))
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            type metadata accessor for TextMessageData(0);
            v10 = swift_dynamicCastClass();
            if (v10 && (v11 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet + 8)) != 0)
            {
              v12 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v13 = sub_1C45BC3F4(v12, v11);
              v15 = v14;
              v16 = HIBYTE(v14) & 0xF;
              if ((v14 & 0x2000000000000000) == 0)
              {
                v16 = v13 & 0xFFFFFFFFFFFFLL;
              }

              if (v16)
              {
                v17 = v13;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                MEMORY[0x1C6940010](8250, 0xE200000000000000);
                MEMORY[0x1C6940010](v17, v15);

                MEMORY[0x1C6940010](1047411744, 0xE400000000000000);
                MEMORY[0x1C6940010](v8, v7);
              }

              else
              {
              }

              v5 = a1;
            }

            else
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            v9 = *(v6 + 80);
          }

          if (v9 != 1)
          {

            goto LABEL_26;
          }

          sub_1C4F02248();

          sub_1C4431EE4();
          MEMORY[0x1C6940010](v8, v7);
          v5 = a1;
        }

LABEL_26:
        if (v3 == ++v4)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    sub_1C4F02248();
    sub_1C4431EE4();
    v18 = sub_1C43FD024();
    MEMORY[0x1C6940010](v18);

    sub_1C4431EE4();
    MEMORY[0x1C6940010](0, 0xE000000000000000);

    sub_1C4431EE4();
    return 0;
  }

  return result;
}

uint64_t sub_1C45BC9EC(unint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    type metadata accessor for MessageData(0);

    v4 = sub_1C4F024B8();
  }

  else
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02988();
    type metadata accessor for MessageData(0);
    v4 = a1;
  }

  sub_1C49D3640(v4);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = a2;
  sub_1C49D3640(inited);
  sub_1C45BCAE4(&v7);
  return v7;
}

void sub_1C45BCAE4(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1C4836300();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1C45BD238(v4);
  *a1 = v2;
}

void sub_1C45BCB5C(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C4428DA0(a1);
  sub_1C4412C7C();
  while (v1 != v2)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = sub_1C43FD024();
      v3 = MEMORY[0x1C6940F90](v13);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      sub_1C441F3CC();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    if (*(v3 + 80))
    {
    }

    else
    {
      v5 = sub_1C4F02318();
      sub_1C4406648(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
      sub_1C440A5B8();
      sub_1C4F02328();
    }

    ++v2;
  }
}

void sub_1C45BCC2C(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  sub_1C4428DA0(a1);
  sub_1C4412C7C();
  while (1)
  {
    if (v1 == v2)
    {
      v15 = sub_1C4428DA0(v26);
      if (v15)
      {
        v16 = v15;
        sub_1C44CD9C0(0, v15 & ~(v15 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_25;
        }

        v17 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v18 = sub_1C43FD024();
            v19 = MEMORY[0x1C6940F90](v18);
          }

          else
          {
            v19 = *(v26 + 8 * v17 + 32);
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v23 = *(v5 + 16);
          v22 = *(v5 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1C44CD9C0(v22 > 1, v23 + 1, 1);
          }

          ++v17;
          *(v5 + 16) = v23 + 1;
          v24 = v5 + 16 * v23;
          *(v24 + 32) = v21;
          *(v24 + 40) = v20;
        }

        while (v16 != v17);
      }

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = sub_1C43FD024();
      v3 = MEMORY[0x1C6940F90](v14);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      sub_1C441F3CC();
    }

    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (*(v3 + 80))
    {
    }

    else
    {
      v6 = sub_1C4F02318();
      sub_1C4406648(v6, v7, v8, v9, v10, v11, v12, v13, v25, v26);
      sub_1C440A5B8();
      sub_1C4F02328();
    }

    ++v2;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1C45BCDE8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult + 8))
  {
    if (qword_1EDDFECB0 != -1)
    {
LABEL_57:
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v18 = sub_1C4F00978();
    v19 = sub_1C442B738(v18, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CC8();
    if (!sub_1C43FCEA4(v21))
    {
      goto LABEL_40;
    }

    v22 = sub_1C43FCED0();
    *v22 = 0;
    v23 = "canGeneratePrompt: Image message does not containing a captioning result, conversation isn't eligible for prompt generation";
    goto LABEL_39;
  }

  if (!*(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 8))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v24 = sub_1C4F00978();
    v19 = sub_1C442B738(v24, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v25 = sub_1C4F01CC8();
    if (!sub_1C43FCEA4(v25))
    {
      goto LABEL_40;
    }

    v22 = sub_1C43FCED0();
    *v22 = 0;
    v23 = "canGeneratePrompt: Image message does not containing a person identification result, conversation isn't eligible for prompt generation";
LABEL_39:
    _os_log_impl(&dword_1C43F8000, v20, v19, v23, v22, 2u);
    MEMORY[0x1C6942830](v22, -1, -1);
LABEL_40:

    return 0;
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_1C4428DA0(a1);
  sub_1C4412C7C();
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = sub_1C43FD024();
      v4 = MEMORY[0x1C6940F90](v14);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      sub_1C441F3CC();
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (*(v4 + 80))
    {
    }

    else
    {
      v6 = sub_1C4F02318();
      sub_1C4406648(v6, v7, v8, v9, v10, v11, v12, v13, v35, v36);
      sub_1C440A5B8();
      sub_1C4F02328();
    }

    ++v3;
  }

  if (sub_1C4428DA0(v36) < 1)
  {

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v26 = sub_1C4F00978();
    v19 = sub_1C442B738(v26, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v27 = sub_1C4F01CC8();
    if (sub_1C43FCEA4(v27))
    {
      v22 = sub_1C43FCED0();
      *v22 = 0;
      v23 = "canGeneratePrompt: Conversation does not contain any messages with text, conversation isn't eligible for prompt generation";
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  sub_1C4428DA0(v36);
  sub_1C4412C7C();
  while (1)
  {
    if (v2 == v3)
    {

      return 1;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C6940F90](v3, v36);
    }

    else
    {
      if (v3 >= *(v36 + 16))
      {
        goto LABEL_56;
      }

      v15 = *(v36 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_55;
    }

    v16 = *(v15 + 112);
    if (!v16)
    {
      break;
    }

    if ((v16 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v16) & 0xF;
    }

    else
    {
      v17 = *(v15 + 104) & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {

      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v34 = sub_1C4F00978();
      sub_1C442B738(v34, qword_1EDDFECB8);
      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CC8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_1C43FCED0();
        *v32 = 0;
        v33 = "canGeneratePrompt: Observed a context message with an empty CNContactSenderFirstName, conversation isn't eligible for prompt generation";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    ++v3;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v29 = sub_1C4F00978();
  sub_1C442B738(v29, qword_1EDDFECB8);
  v30 = sub_1C4F00968();
  v31 = sub_1C4F01CC8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_1C43FCED0();
    *v32 = 0;
    v33 = "canGeneratePrompt: Observed a context message without a CNContactSenderFirstName, conversation isn't eligible for prompt generation";
LABEL_51:
    _os_log_impl(&dword_1C43F8000, v30, v31, v33, v32, 2u);
    MEMORY[0x1C6942830](v32, -1, -1);
  }

LABEL_52:

  return 0;
}

void sub_1C45BD238(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C4F02828();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C49B7534(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C45BD404(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C45BD318(0, v3, 1, a1);
  }
}

uint64_t sub_1C45BD318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v13 = v6;
      do
      {

        v9 = sub_1C4EF9C18();

        if ((v9 & 1) == 0)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v10 = *v6;
        *v6 = v6[1];
        v6[1] = v10;
        --v6;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 = v13 + 1;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C45BD404(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v5 = v94;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v79 = v6 + 16;
      v80 = *(v6 + 2);
      while (v80 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v81 = v6;
        v82 = &v6[16 * v80];
        v83 = *v82;
        v84 = &v79[2 * v80];
        v85 = *(v84 + 1);
        sub_1C45BDA38((*a3 + 8 * *v82), (*a3 + 8 * *v84), (*a3 + 8 * v85), v92);
        if (v5)
        {
          break;
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_119;
        }

        v80 = *v79 - 1;
        sub_1C461950C(v84 + 16, v86, v84);
        *v79 = v80;
        v6 = v81;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v6 = sub_1C46194F4();
    goto LABEL_93;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_22;
    }

    v88 = v6;
    v8 = v7;
    v9 = 8 * v7;
    v10 = *a3 + 8 * v7 + 16;

    v11 = sub_1C4EF9C18();

    v89 = v8;
    v12 = v8 + 2;
    do
    {
      v13 = v12;
      if (++v5 >= v4)
      {
        v5 = v4;
        if (v11)
        {
          goto LABEL_8;
        }

LABEL_20:
        v6 = v88;
        v7 = v89;
        goto LABEL_22;
      }

      v14 = sub_1C4EF9C18() & 1;

      v10 += 8;
      v12 = v13 + 1;
    }

    while ((v11 & 1) == v14);
    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v7 = v89;
    if (v5 < v89)
    {
      goto LABEL_123;
    }

    if (v89 >= v5)
    {
      v6 = v88;
    }

    else
    {
      v15 = v4 >= v13 ? v13 : v4;
      v16 = 8 * v15 - 8;
      v17 = v5;
      v18 = v89;
      v6 = v88;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v20 = *(v19 + v9);
          *(v19 + v9) = *(v19 + v16);
          *(v19 + v16) = v20;
        }

        ++v18;
        v16 -= 8;
        v9 += 8;
      }

      while (v18 < v17);
    }

LABEL_22:
    v21 = a3[1];
    if (v5 < v21)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_122;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v5 < v7)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458A358();
      v6 = v77;
    }

    v31 = *(v6 + 2);
    v32 = v31 + 1;
    if (v31 >= *(v6 + 3) >> 1)
    {
      sub_1C458A358();
      v6 = v78;
    }

    *(v6 + 2) = v32;
    v33 = v6 + 32;
    v34 = &v6[16 * v31 + 32];
    *v34 = v7;
    *(v34 + 1) = v5;
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        v36 = &v33[16 * v32 - 16];
        v37 = &v6[16 * v32];
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v38 = *(v6 + 4);
          v39 = *(v6 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_58:
          if (v41)
          {
            goto LABEL_108;
          }

          v53 = *v37;
          v52 = *(v37 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_111;
          }

          v57 = *(v36 + 1);
          v58 = v57 - *v36;
          if (__OFSUB__(v57, *v36))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v55, v58))
          {
            goto LABEL_116;
          }

          if (v55 + v58 >= v40)
          {
            if (v40 < v58)
            {
              v35 = v32 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v32 < 2)
        {
          goto LABEL_110;
        }

        v60 = *v37;
        v59 = *(v37 + 1);
        v48 = __OFSUB__(v59, v60);
        v55 = v59 - v60;
        v56 = v48;
LABEL_73:
        if (v56)
        {
          goto LABEL_113;
        }

        v62 = *v36;
        v61 = *(v36 + 1);
        v48 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v63 < v55)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v35 - 1 >= v32)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v67 = &v33[16 * v35 - 16];
        v68 = *v67;
        v69 = v35;
        v70 = &v33[16 * v35];
        v71 = *(v70 + 1);
        sub_1C45BDA38((*a3 + 8 * *v67), (*a3 + 8 * *v70), (*a3 + 8 * v71), v92);
        if (v94)
        {
          goto LABEL_101;
        }

        if (v71 < v68)
        {
          goto LABEL_103;
        }

        v72 = v5;
        v5 = v33;
        v73 = v6;
        v74 = *(v6 + 2);
        if (v69 > v74)
        {
          goto LABEL_104;
        }

        *v67 = v68;
        *(v67 + 1) = v71;
        if (v69 >= v74)
        {
          goto LABEL_105;
        }

        v75 = v69;
        v32 = v74 - 1;
        sub_1C461950C(v70 + 16, v74 - 1 - v75, v70);
        *(v73 + 2) = v74 - 1;
        v76 = v74 > 2;
        v6 = v73;
        v33 = v5;
        v5 = v72;
        if (!v76)
        {
          goto LABEL_87;
        }
      }

      v42 = &v33[16 * v32];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_106;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_107;
      }

      v49 = *(v37 + 1);
      v50 = v49 - *v37;
      if (__OFSUB__(v49, *v37))
      {
        goto LABEL_109;
      }

      v48 = __OFADD__(v40, v50);
      v51 = v40 + v50;
      if (v48)
      {
        goto LABEL_112;
      }

      if (v51 >= v45)
      {
        v65 = *v36;
        v64 = *(v36 + 1);
        v48 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v48)
        {
          goto LABEL_120;
        }

        if (v40 < v66)
        {
          v35 = v32 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_91;
    }
  }

  v22 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_124;
  }

  if (v22 >= v21)
  {
    v22 = a3[1];
  }

  if (v22 < v7)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v5 == v22)
  {
    goto LABEL_38;
  }

  v90 = v7;
  v23 = *a3;
  v24 = *a3 + 8 * v5 - 8;
  v25 = v7 - v5;
  v92 = v22;
LABEL_31:
  v26 = v25;
  v27 = v24;
  while (1)
  {

    v28 = sub_1C4EF9C18();

    if ((v28 & 1) == 0)
    {
LABEL_36:
      ++v5;
      v24 += 8;
      --v25;
      if (v5 == v92)
      {
        v5 = v92;
        v7 = v90;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v23)
    {
      break;
    }

    v29 = *v27;
    *v27 = v27[1];
    v27[1] = v29;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_1C45BDA38(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C4474DF4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;

      v13 = sub_1C4EF9C18();

      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 8;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      v5 = v12;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 8;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v14;
    goto LABEL_13;
  }

  sub_1C4474DF4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
  v26 = v4;
LABEL_15:
  v16 = v6 - 8;
  v5 -= 8;
  while (v10 > v4 && v6 > v7)
  {
    v18 = v7;
    v19 = v16;

    v20 = sub_1C4EF9C18();

    v21 = v5 + 8;
    if (v20)
    {
      v15 = v21 == v6;
      v22 = v19;
      v6 = v19;
      v7 = v18;
      v4 = v26;
      if (!v15)
      {
        *v5 = *v22;
        v6 = v22;
      }

      goto LABEL_15;
    }

    if (v10 != v21)
    {
      *v5 = *(v10 - 1);
    }

    v5 -= 8;
    v10 -= 8;
    v16 = v19;
    v7 = v18;
    v4 = v26;
  }

LABEL_28:
  v23 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v23])
  {
    memmove(v6, v4, 8 * v23);
  }

  return 1;
}

uint64_t sub_1C45BDC5C(uint64_t a1, unint64_t a2)
{
  v23 = sub_1C4F02C18();
  MEMORY[0x1EEE9AC00](v23);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = a1;
    v17[1] = v2;
    v10 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C4F02238();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = v9;
          v20[1] = v19;
          if (*(v20 + v10) < 0)
          {
            switch(__clz(*(v20 + v10) ^ 0xFF))
            {
              case 0x1Au:
LABEL_20:
                v14 = 2;
                break;
              case 0x1Bu:
LABEL_21:
                v14 = 3;
                break;
              case 0x1Cu:
LABEL_22:
                v14 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v12 = v18;
          if ((v9 & 0x1000000000000000) == 0)
          {
            v12 = sub_1C4F022F8();
          }

          if (*(v12 + v10) < 0)
          {
            switch(__clz(*(v12 + v10) ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_20;
              case 0x1Bu:
                goto LABEL_21;
              case 0x1Cu:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v14 = 1;
      }

LABEL_15:
      sub_1C4F02C28();
      v15 = sub_1C4F02C08();
      (*v11)(v7, v23);
      if ((v15 & 1) == 0)
      {
        sub_1C4F01248();
      }

      v10 += v14;
      if (v10 >= v8)
      {

        return v21;
      }
    }
  }

  return 0;
}

unint64_t sub_1C45BDF0C()
{
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C442C3D8();
  sub_1C4F02248();

  MEMORY[0x1C6940010](v0[2], v0[3]);
  sub_1C442C3D8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F8B4D0);

  MEMORY[0x1C6940010](0x6E656469666E6F63, 0xEC000000203A6563);
  sub_1C4F01A98();
  sub_1C442C3D8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0, 0xE000000000000000);

  return 0x44496E6F73726570;
}

uint64_t sub_1C45BE078(uint64_t a1, uint64_t a2, float a3)
{
  sub_1C4F02248();

  strcpy(v6, "imageCaption: ");
  MEMORY[0x1C6940010](a1, a2);
  sub_1C442C3D8();
  MEMORY[0x1C6940010](0x6F63536567616D69, 0xEC000000203A6572);
  sub_1C4F01A98();
  sub_1C442C3D8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0, 0xE000000000000000);

  return v6[0];
}

void sub_1C45BE1A0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = 0;
  v7[7] = 0;
  v7[2] = a4;
  v7[3] = a5;
  v17 = *a3;
  v13 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    v14 = v17;
    v16 = v17;
    MEMORY[0x1EEE9AC00](a1);
    sub_1C45C0218(&v17, v15);
    if (!sub_1C44CE068())
    {
      v7[4] = v14;
      v7[5] = v13;
      v7[12] = 0x3FECCCCCCCCCCCCDLL;
      goto LABEL_6;
    }

    sub_1C4423A0C(&v17, &qword_1EC0C2BD0, &qword_1C4F0FF50);
  }

  v7[12] = 0;
  v7[4] = 0;
  v7[5] = 0;
LABEL_6:
  v7[8] = 0;
  v7[9] = 0;
  v7[10] = a1;
  v7[11] = a2;
  v7[13] = a6;
  v7[14] = a7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C45BE2F0(a3);
  sub_1C45C01C4(a3);

  sub_1C43FE9F0();
}

void sub_1C45BE2F0(uint64_t a1)
{
  v115 = sub_1C4EF9488();
  v3 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[11];
  v6 = v5[14];
  if (!v6 || (v7 = *(a1 + 56)) == 0 || !v5[9])
  {
    if (qword_1EDDFECB0 == -1)
    {
LABEL_11:
      v25 = sub_1C4F00978();
      sub_1C43FCEE8(v25, qword_1EDDFECB8);
      v124 = sub_1C4F00968();
      v26 = sub_1C4F01CC8();
      if (os_log_type_enabled(v124, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1C43F8000, v124, v26, "Unable to run deriveInferredContactIdentifier due to missing data", v27, 2u);
        sub_1C43FBE2C();
      }

      sub_1C43FE9F0();

      return;
    }

LABEL_100:
    sub_1C44064A8();
    swift_once();
    goto LABEL_11;
  }

  v119 = v5[9];
  v112 = v1;
  v123 = v5;
  v8 = v5[13];
  v120 = a1;
  v9 = *(a1 + 48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v125 = sub_1C45BDC5C(v8, v6);
  v126 = v10;
  v11 = v114;
  sub_1C4EF9418();
  v12 = sub_1C4415EA8();
  v13 = sub_1C4F01FF8();
  v121 = v14;
  v122 = v13;
  v15 = *(v3 + 8);
  v16 = v115;
  v15(v11, v115);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v111 = v9;
  v113 = v7;
  v17 = sub_1C45BDC5C(v9, v7);
  v124 = 0;
  v125 = v17;
  v126 = v18;
  sub_1C4EF9418();
  v109 = v12;
  v19 = v121;
  v20 = sub_1C4F01FF8();
  v22 = v21;
  v110 = v3 + 8;
  v108 = v15;
  v15(v11, v16);

  if (v122 == v20 && v19 == v22)
  {

    goto LABEL_17;
  }

  v24 = sub_1C4F02938();

  if (v24)
  {
LABEL_17:
    v16 = v112;
    v30 = v123;
    if (*(v119 + 16))
    {
      v31 = *(v119 + 32);
      v32 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v33 = v120;
    v16[6] = v31;
    v16[7] = v32;

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v34 = sub_1C4F00978();
    sub_1C43FCEE8(v34, qword_1EDDFECB8);

    sub_1C45C0168(v33, &v125);
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CC8();
    sub_1C45C01C4(v33);

    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_1C43FFD34();
      v16 = sub_1C440D048();
      v125 = v16;
      *v37 = 136315650;
      if (v30[14])
      {
        v38 = v30[13];
        v39 = v30[14];
      }

      else
      {
        v39 = 0x80000001C4F8B520;
        v38 = 0xD00000000000001BLL;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v40 = sub_1C441D828(v38, v39, &v125);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v41 = sub_1C4412C88();
      v43 = sub_1C441D828(v41, v113, v42);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2080;
      v44 = v30[9];
      if (v44 && v44[2])
      {
        v46 = v44[4];
        v45 = v44[5];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v46 = 0xD000000000000021;
        v45 = 0x80000001C4F8B4F0;
      }

      v47 = sub_1C441D828(v46, v45, &v125);

      *(v37 + 24) = v47;
      _os_log_impl(&dword_1C43F8000, v35, v36, "[Image Message] Found a match between the output of the LLM and the sender first name, self.imageMessage.CNContactSenderFirstName: %s \n modelInferenceOutput.participantName: %s \n  imageMessage.senderContactIdentifiers?.first %s ", v37, 0x20u);
      swift_arrayDestroy();
      sub_1C43FFD4C();
      sub_1C43FBE2C();

      sub_1C43FD0DC();
    }

    else
    {
    }

    goto LABEL_32;
  }

  sub_1C43FD0DC();
LABEL_32:
  sub_1C45BCB5C(v16[10]);
  v118 = v48;
  v117 = sub_1C4428DA0(v48);
  if (!v117)
  {
LABEL_82:

    if (v16[7])
    {
      v16[12] = 0x3FECCCCCCCCCCCCDLL;
    }

LABEL_84:
    sub_1C43FE9F0();
    return;
  }

  v50 = 0;
  v116 = v118 & 0xC000000000000001;
  v106 = v118 & 0xFFFFFFFFFFFFFF8;
  v104 = 0x80000001C4F8B4F0;
  *&v49 = 136315650;
  v105 = v49;
  while (1)
  {
    if (v116)
    {
      v51 = MEMORY[0x1C6940F90](v50, v118);
    }

    else
    {
      if (v50 >= *(v106 + 16))
      {
        goto LABEL_99;
      }
    }

    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v53 = *(v51 + 112);
    if (v53)
    {
      break;
    }

LABEL_69:
    ++v50;
    if (v52 == v117)
    {
      goto LABEL_82;
    }
  }

  v119 = v50 + 1;
  v120 = v50;
  v123 = v51;
  v54 = *(v51 + 104);
  swift_bridgeObjectRetain_n();
  v16 = v113;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v107 = v54;
  v122 = v53;
  v55 = v124;
  v125 = sub_1C45BDC5C(v54, v53);
  v126 = v56;
  v57 = v114;
  sub_1C4EF9418();
  v121 = sub_1C4F01FF8();
  v59 = v58;
  v60 = v115;
  v61 = v108;
  v108(v57, v115);

  v62 = sub_1C45BDC5C(v111, v16);
  v124 = v55;
  v125 = v62;
  v126 = v63;
  sub_1C4EF9418();
  v64 = sub_1C4F01FF8();
  v66 = v65;
  v61(v57, v60);

  if (v121 == v64 && v59 == v66)
  {

    sub_1C43FD0DC();
  }

  else
  {
    v68 = sub_1C4F02938();

    sub_1C43FD0DC();
    if ((v68 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v69 = v122;
  v70 = v123[9];
  if (!v70)
  {
    goto LABEL_65;
  }

  if (!v16[7])
  {
    v78 = v70[2];
    if (v78)
    {
      v79 = v70[4];
      v80 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v79 = 0;
      v80 = 0;
    }

    v16[6] = v79;
    v16[7] = v80;
    v81 = qword_1EDDFECB0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v81 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v82 = sub_1C4F00978();
    sub_1C43FCEE8(v82, qword_1EDDFECB8);
    v83 = v113;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v84 = sub_1C4F00968();
    v85 = sub_1C4F01CC8();

    if (!os_log_type_enabled(v84, v85))
    {

      goto LABEL_67;
    }

    v72 = sub_1C43FFD34();
    v125 = sub_1C440D048();
    *v72 = v105;
    v16 = sub_1C441D828(v107, v69, &v125);

    *(v72 + 4) = v16;
    *(v72 + 12) = 2080;
    v86 = sub_1C4412C88();
    *(v72 + 14) = sub_1C441D828(v86, v83, v87);
    *(v72 + 22) = 2080;
    if (v78)
    {
      if (!v70[2])
      {
        __break(1u);
        goto LABEL_102;
      }

      v89 = v70[4];
      v88 = v70[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v89 = 0xD000000000000021;
      v88 = v104;
    }

    v50 = v120;

    v16 = sub_1C441D828(v89, v88, &v125);

    *(v72 + 24) = v16;
    _os_log_impl(&dword_1C43F8000, v84, v85, "[Context Message] Found a match between the output of the LLM and the sender first name, contextMessage.CNContactSenderFirstName: %s \n modelInferenceOutput.participantName: %s \n  contextMessage.senderContactIdentifiers?.first %s ", v72, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    sub_1C43FD0DC();
LABEL_68:
    v52 = v119;
    goto LABEL_69;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v71 = v16[7];
  v72 = v70[2];
  if (!v72)
  {
    if (v71)
    {
      goto LABEL_86;
    }

LABEL_65:

    goto LABEL_66;
  }

  v73 = v16[6];
  v75 = v70[4];
  v74 = v70[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v71)
  {
    if (!v74)
    {
      goto LABEL_86;
    }

    if (v73 != v75 || v71 != v74)
    {
      v77 = sub_1C4F02938();

      if ((v77 & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_66:

LABEL_67:
    v50 = v120;
    goto LABEL_68;
  }

  if (!v74)
  {
    goto LABEL_65;
  }

LABEL_86:

  v16[6] = 0;
  v16[7] = 0;

  if (qword_1EDDFECB0 != -1)
  {
LABEL_102:
    sub_1C44064A8();
    swift_once();
  }

  v90 = sub_1C4F00978();
  sub_1C43FCEE8(v90, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v91 = sub_1C4F00968();
  v92 = sub_1C4F01CC8();

  if (!os_log_type_enabled(v91, v92))
  {

    goto LABEL_97;
  }

  v93 = sub_1C43FFD34();
  v125 = sub_1C440D048();
  *v93 = v105;
  v94 = v16[7];
  if (v94)
  {
    v95 = v16[6];
    v96 = v94;
  }

  else
  {
    v95 = 0;
    v96 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v97 = sub_1C441D828(v95, v96, &v125);

  *(v93 + 4) = v97;
  *(v93 + 12) = 2080;
  if (!v72)
  {
    v99 = 0;
    v98 = 0xE000000000000000;
LABEL_96:

    v100 = sub_1C441D828(v99, v98, &v125);

    *(v93 + 14) = v100;
    *(v93 + 22) = 2080;
    v101 = sub_1C4412C88();
    *(v93 + 24) = sub_1C441D828(v101, v113, v102);
    _os_log_impl(&dword_1C43F8000, v91, v92, "[Image+Context Message] Found conflicting matches between two contacts %s and %s for the participant name inferred %s: returning nil as inferredContactIdentifier instead", v93, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
LABEL_97:

    goto LABEL_84;
  }

  if (v70[2])
  {
    v99 = v70[4];
    v98 = v70[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_96;
  }

  __break(1u);
}

id sub_1C45BEF24()
{
  v1 = v0[3];
  v2 = v0[5];
  v18 = v0[4];
  v19 = v0[2];
  v3 = v0[7];
  v4 = v0[9];
  v16 = v0[8];
  v17 = v0[6];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4F019C8();
  v6 = v0[10];
  v5 = v0[11];
  v8 = *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier);
  v7 = *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45BCC2C(v6);
  v10 = v9;
  v12 = v0[13];
  v11 = v0[14];
  v13 = objc_allocWithZone(MEMORY[0x1E698EB48]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C45BFF58(v19, v1, v18, v2, v17, v3, v16, v4, v15, v8, v7, v10, v12, v11);
}

id sub_1C45BF034()
{
  v1 = v0;
  if (*(v0 + 56) || *(v0 + 40))
  {
    sub_1C45BF208();
    if (v2 == 2)
    {
      v3 = 0;
LABEL_18:
      v11 = 4;
      goto LABEL_19;
    }

    if (v2)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v4 = sub_1C4F00978();
      sub_1C43FCEE8(v4, qword_1EDDFECB8);
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CC8();
      if (!sub_1C43FEB2C(v6))
      {
        v3 = 1;
        goto LABEL_17;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C43F8000, v5, v6, "Autonaming Analytics: Current inference is a true positive", v7, 2u);
      v3 = 1;
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v8 = sub_1C4F00978();
      sub_1C43FCEE8(v8, qword_1EDDFECB8);
      v5 = sub_1C4F00968();
      v9 = sub_1C4F01CC8();
      v3 = 2;
      if (!sub_1C43FEB2C(v9))
      {
        goto LABEL_17;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v5, v9, "Autonaming Analytics: Current inference is a false positive", v10, 2u);
    }

    sub_1C43FBE2C();
LABEL_17:

    goto LABEL_18;
  }

  v3 = 0;
  v11 = 3;
LABEL_19:
  v13 = *(v1 + 104);
  v12 = *(v1 + 112);
  v14 = objc_allocWithZone(MEMORY[0x1E698EB40]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C45BFEB0(v13, v12, v11, v3, 0, 0, 0);
}

void sub_1C45BF208()
{
  v1 = v0;
  v105 = *MEMORY[0x1E69E9840];
  v2 = sub_1C4EF98F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[3];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = v0[2];
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v7 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v8 = sub_1C44B90E0(v4);
  v103 = 0;
  if (![v8 openAndWaitWithUpgrade:0 error:&v103])
  {
    v17 = v103;
    v18 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C43FCEE8(v19, qword_1EDDFECB8);
    v20 = v18;
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1C43F8000, v21, v22, "Photo Library could not open successfully due to %@, returning nil for unknown ground truth", v23, 0xCu);
      sub_1C4423A0C(v24, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD4C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    goto LABEL_34;
  }

  v9 = v103;
  v10 = [v8 librarySpecificFetchOptions];
  v11 = objc_opt_self();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  *(v12 + 32) = v6;
  *(v12 + 40) = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F01658();

  v14 = [v11 fetchPersonsWithLocalIdentifiers:v13 options:v10];

  v15 = [v14 fetchedObjects];
  if (v15)
  {
    sub_1C4461BB8(0, &qword_1EC0C2A80, 0x1E6978980);
    v16 = sub_1C4F01678();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C4428DA0(v16) != 1)
  {

    goto LABEL_34;
  }

  if (!sub_1C4428DA0(v16))
  {

    goto LABEL_34;
  }

  sub_1C4431590(0, (v16 & 0xC000000000000001) == 0, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1C6940F90](0, v16);
  }

  else
  {
    v27 = *(v16 + 32);
  }

  v28 = v27;

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v29 = sub_1C4F00978();
  sub_1C43FCEE8(v29, qword_1EDDFECB8);
  v30 = v28;

  v100 = v16;
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CC8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = sub_1C43FFD34();
    v103 = sub_1C440D048();
    *v33 = 136315650;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441D828(v6, v5, &v103);
    sub_1C4410930();
    *(v33 + 4) = v6;
    *(v33 + 12) = 2080;
    v34 = sub_1C47851D4(v30);
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v34 = 7104878;
      v36 = 0xE300000000000000;
    }

    sub_1C441D828(v34, v36, &v103);
    sub_1C4410930();
    *(v33 + 14) = v6;
    *(v33 + 22) = 2080;
    v37 = sub_1C45C0104(v30);
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
    }

    sub_1C441D828(v37, v39, &v103);
    sub_1C4410930();
    *(v33 + 24) = v6;
    _os_log_impl(&dword_1C43F8000, v31, v32, "Autonaming Analytics: Found an existing PHPerson matching the inference %s : person name %s and contact %s ", v33, 0x20u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  sub_1C47851D4(v30);
  v40 = &unk_1C4F0C000;
  if (!v41)
  {
    goto LABEL_36;
  }

  sub_1C4431EFC();
  if (!v42 || (v43 = v1[5]) == 0)
  {

LABEL_36:
    v64 = 2;
    v63 = 1;
    goto LABEL_37;
  }

  v44 = v1[4];
  sub_1C43FCE84();
  v103 = sub_1C4F00FF8();
  v104 = v45;
  v98 = v44;
  v99 = v43;
  v101 = sub_1C4F00FF8();
  v102 = v46;
  v47 = sub_1C4415EA8();
  v48 = sub_1C4402BD8(v47, MEMORY[0x1E69E6158]);

  if ((v48 & 1) == 0)
  {
    v103 = sub_1C4F00FF8();
    v104 = v49;
    sub_1C43FCE84();
    v101 = sub_1C4F00FF8();
    v102 = v50;
    v51 = sub_1C4402BD8(v101, MEMORY[0x1E69E6158]);

    if ((v51 & 1) == 0)
    {
      v78 = v99;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v79 = sub_1C4F00968();
      v80 = sub_1C4F01CC8();

      if (os_log_type_enabled(v79, v80))
      {
        sub_1C440F274();
        v97 = v79;
        v103 = sub_1C440A5D4();
        sub_1C440F268(4.8151e-34);
        v81 = sub_1C43FCE84();
        v84 = v78;
        v85 = sub_1C441D828(v81, v82, v83);

        *(v79 + 4) = v85;
        sub_1C4406668();
        v87 = sub_1C441D828(v98, v84, v86);

        *(v79 + 14) = v87;
        v88 = v80;
        v89 = v97;
        sub_1C44117D8(&dword_1C43F8000, v90, v88, "Autonaming Analytics: Found a name mismatch between existing PHPerson %s and inference %s: false positive");
        swift_arrayDestroy();
        sub_1C43FBE2C();
        v40 = &unk_1C4F0C000;
        sub_1C43FBE2C();

        v63 = 0;
        v64 = 0;
        goto LABEL_37;
      }

      v63 = 0;
      v64 = 0;
LABEL_56:
      v40 = &unk_1C4F0C000;
      goto LABEL_37;
    }
  }

  v52 = v99;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v53 = sub_1C4F00968();
  v54 = sub_1C4F01CC8();

  if (!os_log_type_enabled(v53, v54))
  {

    v63 = 0;
    v64 = 1;
    goto LABEL_56;
  }

  sub_1C440F274();
  v97 = sub_1C440A5D4();
  v103 = v97;
  sub_1C440F268(4.8151e-34);
  v55 = sub_1C43FCE84();
  v58 = v52;
  v59 = sub_1C441D828(v55, v56, v57);

  *(v47 + 4) = v59;
  sub_1C4406668();
  v61 = sub_1C441D828(v98, v58, v60);

  *(v47 + 14) = v61;
  sub_1C44117D8(&dword_1C43F8000, v62, v54, "Autonaming Analytics: Found a name match between existing PHPerson %s and inference %s: true positive");
  swift_arrayDestroy();
  sub_1C43FBE2C();
  v40 = &unk_1C4F0C000;
  sub_1C43FBE2C();

  v63 = 0;
  v64 = 1;
LABEL_37:
  v65 = sub_1C45C0104(v30);
  if (v66)
  {
    v67 = v65;
    sub_1C4431EFC();
    if (v68)
    {
      v69 = v1[7];
      if (v69)
      {
        LODWORD(v98) = v63;
        LODWORD(v99) = v64;
        v70 = v1[6];
        v71 = v67 == v70 && v6 == v69;
        if (v71 || (sub_1C4F02938() & 1) != 0)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v72 = sub_1C4F00968();
          v73 = sub_1C4F01CC8();
          if (sub_1C43FEB2C(v73))
          {
            sub_1C440F274();
            v100 = v70;
            v97 = sub_1C440A5D4();
            v103 = v97;
            sub_1C440F268(COERCE_FLOAT(v40[457]));
            v75 = sub_1C441D828(v67, v6, v74);

            *(v40 + 4) = v75;
            sub_1C4406668();
            sub_1C441D828(v100, v69, v76);
            sub_1C4410930();
            *(v40 + 14) = v6;
            sub_1C44117D8(&dword_1C43F8000, v77, v73, "Autonaming Analytics: Found a contact match between existing PHPerson %s and inference %s: true positive");
            sub_1C4408624();
            sub_1C43FBE2C();
            sub_1C43FFD4C();
LABEL_58:

            goto LABEL_34;
          }
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v72 = sub_1C4F00968();
          v91 = sub_1C4F01CC8();
          if (sub_1C43FEB2C(v91))
          {
            sub_1C440F274();
            v100 = v70;
            v97 = sub_1C440A5D4();
            v103 = v97;
            sub_1C440F268(COERCE_FLOAT(v40[457]));
            v93 = sub_1C441D828(v67, v6, v92);

            *(v40 + 4) = v93;
            sub_1C4406668();
            v95 = sub_1C441D828(v100, v69, v94);

            *(v40 + 14) = v95;
            sub_1C44117D8(&dword_1C43F8000, v96, v91, "Autonaming Analytics: Found a contact mismatch between existing PHPerson %s and inference %s: false positive");
            sub_1C4408624();
            sub_1C43FBE2C();
            sub_1C43FFD4C();
            goto LABEL_58;
          }
        }

        goto LABEL_58;
      }
    }
  }

LABEL_34:
  sub_1C43FE9F0();
}

uint64_t sub_1C45BFCB4()
{

  return v0;
}

uint64_t sub_1C45BFD0C()
{
  sub_1C45BFCB4();

  return swift_deallocClassInstance();
}

__n128 sub_1C45BFD64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C45BFD78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C45BFDB8(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GraphEdge(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C45BFE20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C45BFE60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1C45BFEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  if (a2)
  {
    v14 = sub_1C4F01108();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 initWithModelVersion:v14 inferenceOutputType:a3 inferenceAccuracy:a4 aggregatedInferenceContributingCount:a5 aggregatedInferenceConfidence:a6 aggregatedInferenceAccuracy:a7];

  return v15;
}

id sub_1C45BFF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    v18 = sub_1C4F01108();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_1C4F01108();

  if (a6)
  {
LABEL_4:
    v20 = sub_1C4F01108();

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  if (a8)
  {
    v21 = sub_1C4F01108();
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    v22 = sub_1C4F01108();
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_1C4F01658();

  if (a14)
  {
    v24 = sub_1C4F01108();
  }

  else
  {
    v24 = 0;
  }

  v25 = [v14 initWithPhotosPersonIdentifier:v18 inferredName:v19 inferredContactIdentifier:v20 inferredRelationshipToDeviceOwner:v21 confidence:a9 imageMessageIdentifier:v22 contextMessageIdentifiers:v23 modelVersion:v24];

  return v25;
}

uint64_t sub_1C45C0104(void *a1)
{
  v1 = [a1 personUri];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C45C0218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45C0288(_BOOL8 a1)
{
  if (*(v1 + 56))
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1C441F3E8();
    a1 = sub_1C44CE068();
    v2 = !a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1C441F3E8();
    LODWORD(v3) = !sub_1C44CE068();
  }

  return (v2 | v3) & 1;
}

unint64_t sub_1C45C0370(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C45C03BC(char a1)
{
  result = 1162690894;
  switch(a1)
  {
    case 1:
      result = 0x4E4F4954414C4552;
      break;
    case 2:
      result = 0x54444554414C4552;
      break;
    case 3:
      result = 0x5049434954524150;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C45C046C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C45C0370(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C45C049C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C45C03BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C45C04D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45C0370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45C0504(uint64_t a1)
{
  v2 = sub_1C45C0B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45C0540(uint64_t a1)
{
  v2 = sub_1C45C0B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45C057C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B98A0, &qword_1C4F0FF40);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C45C0B58();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v33[0]) = 0;
  sub_1C442C3F4();
  v11 = sub_1C4F02678();
  v28 = v12;
  LOBYTE(v33[0]) = 1;
  sub_1C442C3F4();
  v25 = sub_1C4F02678();
  v27 = v13;
  LOBYTE(v33[0]) = 2;
  sub_1C442C3F4();
  v24 = sub_1C4F02678();
  v26 = v14;
  v34 = 3;
  v15 = sub_1C4F02678();
  v17 = v16;
  (*(v7 + 8))(v10, v5);
  v18 = v28;
  *&v29 = v11;
  *(&v29 + 1) = v28;
  v20 = v25;
  v19 = v26;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  *&v32 = v15;
  *(&v32 + 1) = v17;
  sub_1C45C0168(&v29, v33);
  sub_1C440962C(a1);
  v33[0] = v11;
  v33[1] = v18;
  v33[2] = v20;
  v33[3] = v27;
  v33[4] = v24;
  v33[5] = v19;
  v33[6] = v15;
  v33[7] = v17;
  result = sub_1C45C01C4(v33);
  v22 = v30;
  *a2 = v29;
  a2[1] = v22;
  v23 = v32;
  a2[2] = v31;
  a2[3] = v23;
  return result;
}

uint64_t sub_1C45C082C(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = a1[4] == a2[4] && v10 == v11;
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v13 = a1[7];
  v14 = a2[7];
  result = (v13 | v14) == 0;
  if (v13 && v14)
  {
    if (a1[6] == a2[6] && v13 == v14)
    {
      return 1;
    }

    else
    {

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t sub_1C45C0950(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0B98B0, &qword_1C4F0FF48);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C45C0B58();
  sub_1C4F02BF8();
  v14 = *v3;
  v13 = 0;
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  sub_1C45C0BAC();
  sub_1C4419098();
  if (!v2)
  {
    v14 = v3[1];
    v13 = 1;
    sub_1C4419098();
    v14 = v3[2];
    v13 = 2;
    sub_1C4419098();
    v14 = v3[3];
    v13 = 3;
    sub_1C4419098();
  }

  return (*(v7 + 8))(v10, v5);
}

double sub_1C45C0AE8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C45C057C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_1C45C0B58()
{
  result = qword_1EC0B98A8;
  if (!qword_1EC0B98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98A8);
  }

  return result;
}

unint64_t sub_1C45C0BAC()
{
  result = qword_1EC0B98B8;
  if (!qword_1EC0B98B8)
  {
    sub_1C4572308(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutonamingMessagesInferenceOutput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45C0D08()
{
  result = qword_1EC0B98C0;
  if (!qword_1EC0B98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98C0);
  }

  return result;
}

unint64_t sub_1C45C0D60()
{
  result = qword_1EC0B98C8;
  if (!qword_1EC0B98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98C8);
  }

  return result;
}

unint64_t sub_1C45C0DB8()
{
  result = qword_1EC0B98D0;
  if (!qword_1EC0B98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98D0);
  }

  return result;
}

void sub_1C45C0E0C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for ExtractedAttributes(0);
  v12 = v11[13];
  v64 = sub_1C4EF9CD8();
  v65 = v12;
  sub_1C440BAA8(a4 + v12, 1, 1, v64);
  v13 = sub_1C44117F4();
  v14 = [v13 attributeDictionary];

  sub_1C4F00ED8();
  v69 = a2;
  v70 = a3;
  sub_1C4F02198();
  sub_1C465C11C();

  v15 = sub_1C457E804(v68);
  if (v71)
  {
    v18 = sub_1C440A5F0(v15, v16, v17, MEMORY[0x1E69E6158]);
    v19 = v66;
    v20 = v67;
    if (!v18)
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    sub_1C4420C3C(&v69, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v19 = 0;
    v20 = 0;
  }

  *a4 = v19;
  a4[1] = v20;
  v21 = sub_1C44117F4();
  a4[2] = sub_1C45C28F0(v21, &selRef_uniqueIdentifier);
  a4[3] = v22;
  v23 = sub_1C44117F4();
  a4[4] = sub_1C45CD590(v23);
  a4[5] = v24;
  v25 = sub_1C44117F4();
  a4[6] = sub_1C45C2968(v25, &selRef_contentTypeTree);
  v26 = sub_1C44117F4();
  a4[7] = sub_1C45C2968(v26, &selRef_recipientNames);
  v27 = sub_1C44117F4();
  v28 = [v27 attributeDictionary];

  sub_1C4F00ED8();
  v69 = sub_1C4F01138();
  v70 = v29;
  sub_1C4F02198();
  sub_1C465C11C();

  sub_1C457E804(v68);
  if (v71)
  {
    v30 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v33 = sub_1C440A5F0(v30, v31, v32, v30);
    v34 = v66;
    if (!v33)
    {
      v34 = 0;
    }
  }

  else
  {
    sub_1C4420C3C(&v69, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v34 = 0;
  }

  a4[8] = v34;
  v35 = sub_1C44117F4();
  a4[9] = sub_1C45C2968(v35, &selRef_authorNames);
  v36 = sub_1C44117F4();
  v37 = [v36 attributeDictionary];

  sub_1C4F00ED8();
  v69 = sub_1C4F01138();
  v70 = v38;
  sub_1C4F02198();
  sub_1C465C11C();

  sub_1C457E804(v68);
  if (v71)
  {
    v39 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v42 = sub_1C440A5F0(v39, v40, v41, v39);
    v43 = v66;
    if (!v42)
    {
      v43 = 0;
    }
  }

  else
  {
    sub_1C4420C3C(&v69, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v43 = 0;
  }

  a4[10] = v43;
  v44 = sub_1C44117F4();
  a4[11] = sub_1C45C28F0(v44, &selRef_contentSnippet);
  a4[12] = v45;
  v46 = sub_1C44117F4();
  v47 = [v46 contentCreationDate];

  if (v47)
  {
    sub_1C4EF9C78();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  sub_1C440BAA8(v10, v48, 1, v64);
  sub_1C45AD734(v10, a4 + v65);
  v49 = sub_1C44117F4();
  v50 = sub_1C45C28F0(v49, &selRef_relatedUniqueIdentifier);
  v51 = (a4 + v11[14]);
  *v51 = v50;
  v51[1] = v52;
  v53 = sub_1C44117F4();
  v54 = [v53 eligibleForPhotosProcessing];

  if (v54)
  {
    v55 = [v54 BOOLValue];
  }

  else
  {
    v55 = 2;
  }

  *(a4 + v11[15]) = v55;
  v56 = sub_1C44117F4();
  *(a4 + v11[16]) = sub_1C45C2968(v56, &selRef_attachmentNames);
  v57 = sub_1C44117F4();
  v58 = [v57 messageType];

  if (v58)
  {
    v59 = sub_1C4F01138();
    v61 = v60;
  }

  else
  {

    v59 = 0;
    v61 = 0;
  }

  v62 = (a4 + v11[17]);
  *v62 = v59;
  v62[1] = v61;
}

uint64_t sub_1C45C13B4(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 120) = 0u;
  *(v3 + 104) = 0u;
  v7 = a1[3];
  if (!v7)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v16 = sub_1C4F00978();
    v17 = sub_1C43FEB44(v16, qword_1EDDFECB8);
    v18 = sub_1C4F01CC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_1C43FCED0();
      sub_1C4402BFC(v19);
      sub_1C441F400(&dword_1C43F8000, v20, v18, "MessageData: cannot initialize base class: provided ExtractedAttributes object contains no uniqueIdentifier");
      sub_1C43FFD4C();
    }

    sub_1C4EF9CD8();
    sub_1C43FBCE0();
    (*(v21 + 8))(a3);
    sub_1C45C287C(a1);
    goto LABEL_14;
  }

  v8 = a1[1];
  *(v4 + 16) = a1[2];
  *(v4 + 24) = v7;
  if (!v8)
  {
    v22 = qword_1EDDFECB0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v22 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v23 = sub_1C4F00978();
    v24 = sub_1C43FEB44(v23, qword_1EDDFECB8);
    v25 = sub_1C4F01CC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_1C43FCED0();
      sub_1C4402BFC(v26);
      sub_1C441F400(&dword_1C43F8000, v27, v25, "MessageData: cannot instantiate base class: provided ExtractedAttributes object contains no conversationIdentifier");
      sub_1C43FFD4C();
    }

    sub_1C4EF9CD8();
    sub_1C43FBCE0();
    (*(v28 + 8))(a3);
    sub_1C45C287C(a1);

LABEL_14:

    type metadata accessor for MessageData(0);
    sub_1C44057E8();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v4 + 32) = *a1;
  *(v4 + 40) = v8;
  v9 = a1[8];
  *(v4 + 48) = a1[7];
  *(v4 + 56) = v9;
  v10 = a1[10];
  *(v4 + 64) = a1[9];
  *(v4 + 72) = v10;
  *(v4 + 80) = a2;
  v11 = (a1 + *(type metadata accessor for ExtractedAttributes(0) + 68));
  v12 = *v11;
  v13 = v11[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45C287C(a1);
  *(v4 + 88) = v12;
  *(v4 + 96) = v13;
  v14 = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v15 + 32))(v4 + v14, a3);
  return v4;
}

uint64_t sub_1C45C16A0(void *a1)
{
  v3 = [a1 givenName];
  v4 = sub_1C4F01138();
  v6 = v5;

  v1[13] = v4;
  v1[14] = v6;

  v7 = [a1 familyName];
  v8 = sub_1C4F01138();
  v10 = v9;

  v1[15] = v8;
  v1[16] = v10;
}

uint64_t sub_1C45C1748()
{

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1C45C1828(uint64_t a1)
{
  result = sub_1C4EF9CD8();
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

uint64_t sub_1C45C18EC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for ExtractedAttributes(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v42 - v10;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v16);
  v19 = v42 - v18;
  if (!*(a1 + 48))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v30 = sub_1C4F00978();
    v31 = sub_1C43FEB44(v30, qword_1EDDFECB8);
    v32 = sub_1C4F01CC8();
    if (!sub_1C43FD0E8(v32))
    {
      goto LABEL_18;
    }

    v35 = sub_1C43FCED0();
    *v35 = 0;
    v36 = "TextMessageData cannot be initialized: provided ExtractedAttributes object does not contain a contentTypeTree";
    goto LABEL_17;
  }

  v43 = a1;
  strcpy(v44, "public.message");
  v44[15] = -18;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416D48();
  if (!sub_1C44CE068())
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v37 = sub_1C4F00978();
    v31 = sub_1C43FEB44(v37, qword_1EDDFECB8);
    v38 = sub_1C4F01CC8();
    v39 = sub_1C43FD0E8(v38);
    a1 = v43;
    if (!v39)
    {
      goto LABEL_18;
    }

    v35 = sub_1C43FCED0();
    *v35 = 0;
    v36 = "TextMessageData cannot be initialized: provided ExtractedAttributes object is not a text message and cannot be initialized as a TextMessageData";
LABEL_17:
    sub_1C4410910(&dword_1C43F8000, v33, v34, v36);
    MEMORY[0x1C6942830](v35, -1, -1);
LABEL_18:

    sub_1C45C287C(a1);
LABEL_19:
    type metadata accessor for TextMessageData(0);
    sub_1C44057E8();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v43;
  v21 = *(v43 + 96);
  v22 = v43;
  v23 = (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet);
  *v23 = *(v43 + 88);
  v23[1] = v21;
  v42[1] = v23;
  sub_1C4467FE0(v20 + *(v5 + 52), v11);
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v24 = sub_1C4F00978();
    v25 = sub_1C43FEB44(v24, qword_1EDDFECB8);
    v26 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v26))
    {
      v27 = sub_1C43FCED0();
      *v27 = 0;
      sub_1C4410910(&dword_1C43F8000, v28, v29, "TextMessageData cannot be initialized: provided ExtractedAttributes object does not contain a contentCreationDate");
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    sub_1C45C287C(v22);

    goto LABEL_19;
  }

  (*(v14 + 32))(v19, v11, v12);
  sub_1C45C29C8(v22, v8);
  (*(v14 + 16))(v2, v19, v12);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v40 = sub_1C45C13B4(v8, 0, v2);
  (*(v14 + 8))(v19, v12);

  sub_1C45C287C(v22);
  if (v40)
  {
  }

  return v40;
}

BOOL sub_1C45C1D80()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet + 8);
  if (!v1)
  {
    return 1;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet) & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

uint64_t sub_1C45C1DD0()
{
  sub_1C45C1748();
  sub_1C440DE48();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45C1EA0()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000002CLL, 0x80000001C4F8B790);
  MEMORY[0x1C6940010](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C6940010](0xD00000000000001CLL, 0x80000001C4F8B7C0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  v1 = sub_1C4F01198();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4F8B7E0);
  sub_1C4EF9CD8();
  sub_1C45C2A2C();
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C45C1FF4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v56 = a2;
  v6 = type metadata accessor for ExtractedAttributes(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v20 = v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult;
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  if (!*(a1 + 48))
  {
    v27 = a1;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C4F00978();
    v29 = sub_1C43FEB44(v28, qword_1EDDFECB8);
    v30 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v30))
    {
      v31 = sub_1C43FCED0();
      sub_1C4402BFC(v31);
      sub_1C441F400(&dword_1C43F8000, v32, v9, "ImageMessageData cannot be initialized: provided ExtractedAttributes object does not contain a contentTypeTree");
      sub_1C43FFD4C();
    }

    sub_1C45C287C(v56);
    v33 = v27;
    goto LABEL_15;
  }

  v53 = v17;
  v54 = v9;
  v55 = a1;
  strcpy(v57, "public.image");
  HIBYTE(v57[6]) = 0;
  v57[7] = -5120;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4416D48();
  if (!sub_1C44CE068())
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v34 = sub_1C4F00978();
    v35 = sub_1C43FEB44(v34, qword_1EDDFECB8);
    v36 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v36))
    {
      v37 = sub_1C43FCED0();
      sub_1C4402BFC(v37);
      sub_1C441F400(&dword_1C43F8000, v38, OS_LOG_TYPE_DEFAULT, "ImageMessageData cannot be initialized: provided ExtractedAttributes object is not an image message");
      sub_1C43FFD4C();
    }

    sub_1C45C287C(v56);
    v33 = v55;
LABEL_15:
    sub_1C45C287C(v33);
LABEL_16:

    sub_1C45BBFB4(*v21, *(v21 + 8));
    type metadata accessor for ImageMessageData(0);
    sub_1C44057E8();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v22 = v55;
  v23 = (v55 + v6[14]);
  v24 = v23[1];
  if (v24)
  {
    v25 = *v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v41 = v56;
  v42 = (v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier);
  *v42 = v25;
  v42[1] = v26;
  v52 = v42;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_imageEligibleForPhotosProcessing) = *(v22 + v6[15]) & 1;
  sub_1C4467FE0(v41 + v6[13], v12);
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v43 = sub_1C4F00978();
    v44 = sub_1C43FEB44(v43, qword_1EDDFECB8);
    v45 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v45))
    {
      v46 = sub_1C43FCED0();
      sub_1C4402BFC(v46);
      sub_1C441F400(&dword_1C43F8000, v47, v24, "ImageMessageData cannot be initialized: provided ExtractedAttributes object contains an image, but does not contain a content creation date");
      sub_1C43FFD4C();
    }

    sub_1C45C287C(v56);
    sub_1C45C287C(v55);

    goto LABEL_16;
  }

  v48 = v53;
  (*(v53 + 32))(v19, v12, v13);
  v49 = *(v22 + v6[16]);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v50 = v49;
  }

  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_attachmentNames) = v50;
  v51 = v54;
  sub_1C45C29C8(v22, v54);
  (*(v48 + 16))(v3, v19, v13);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = sub_1C45C13B4(v51, 1, v3);
  sub_1C45C287C(v56);
  (*(v48 + 8))(v19, v13);

  sub_1C45C287C(v22);
  if (v39)
  {
  }

  return v39;
}

uint64_t sub_1C45C254C()
{
  sub_1C440DE48();

  sub_1C440DE48();
  v0 = sub_1C440F28C(OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult);

  return sub_1C45BBFB4(v0, v1);
}

uint64_t sub_1C45C25A4()
{
  sub_1C45C1748();
  sub_1C440DE48();

  sub_1C440DE48();
  v1 = sub_1C440F28C(OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult);
  sub_1C45BBFB4(v1, v2);
  return v0;
}

uint64_t sub_1C45C2610(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for MessageContentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45C27E4()
{
  result = qword_1EC0B98D8;
  if (!qword_1EC0B98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98D8);
  }

  return result;
}

uint64_t sub_1C45C287C(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45C28F0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C4F01138();

  return v4;
}

uint64_t sub_1C45C2968(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C4F01678();

  return v4;
}

uint64_t sub_1C45C29C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C45C2A2C()
{
  result = qword_1EDDFCD50;
  if (!qword_1EDDFCD50)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCD50);
  }

  return result;
}

uint64_t sub_1C45C2AAC(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C45C2BC8(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1C45C2C2C(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFEA48, MEMORY[0x1E69E6370]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1C45C2BC8(uint64_t a1)
{
  if (!qword_1EDDFEA50)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFEA50);
    }
  }
}

void sub_1C45C2C2C(uint64_t a1)
{
  if (!qword_1EDDFF9E0)
  {
    sub_1C4EF9CD8();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFF9E0);
    }
  }
}

uint64_t sub_1C45C2C84()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1C45C32CC();
    *(v0 + 24) = v1;
    *(v0 + 32) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void sub_1C45C2CF0(unint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v6 = sub_1C4F01188();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C45C31DC(123, 0xE100000000000000, 125, 0xE100000000000000, a1, a2);
  if (!v14)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = sub_1C4F00968();
    v26 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v20, v26))
    {
      goto LABEL_14;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v38[0] = v28;
    *v27 = 136642819;
    v29 = sub_1C43FE99C();
    *(v27 + 4) = sub_1C441D828(v29, v30, v31);
    _os_log_impl(&dword_1C43F8000, v20, v26, "Unable to convert output from Autonaming from Messages LLM: %{sensitive}s to AutonamingMessagesInferenceOutput, as pre-processing the string to remove all character before and after { } failed", v27, 0xCu);
    sub_1C440962C(v28);
    sub_1C43FBE2C();
    goto LABEL_11;
  }

  v15 = v13;
  v16 = v14;
  sub_1C4F01178();
  sub_1C4F01148();
  v18 = v17;
  (*(v8 + 8))(v12, v6);
  if (v18 >> 60 == 15)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_14;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v38[0] = v23;
    *v22 = 136315138;
    v24 = sub_1C441D828(v15, v16, v38);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1C43F8000, v20, v21, "Unable to convert output from Autonaming from Messages LLM: %s to AutonamingMessagesInferenceOutput: Unable to convert output from a string to data", v22, 0xCu);
    sub_1C440962C(v23);
    sub_1C43FBE2C();
LABEL_11:
    sub_1C43FBE2C();
LABEL_14:

    v34 = xmmword_1C4F0D7C0;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    goto LABEL_15;
  }

  sub_1C4EF9348();
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C45C6018();
  sub_1C4EF9328();

  v32 = sub_1C43FE99C();
  sub_1C441DFEC(v32, v33);
  v34 = v38[0];
  v35 = v38[1];
  v36 = v38[2];
  v37 = v38[3];
LABEL_15:
  *a3 = v34;
  a3[1] = v35;
  a3[2] = v36;
  a3[3] = v37;
}

unint64_t sub_1C45C31DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = sub_1C44CFDB0(a1, a2, a5, a6);
  v12 = v11;
  v18[0] = a3;
  v18[1] = a4;
  v17[2] = v18;
  result = sub_1C45C606C(sub_1C44CE790, v17, a5, a6);
  if (v12 & 1) != 0 || (v14)
  {
    return 0;
  }

  if (result >> 14 >= v10 >> 14)
  {
    sub_1C4F012B8();
    v16 = sub_1C4F01448();
    v15 = MEMORY[0x1C693FEF0](v16);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45C32CC()
{
  v0 = sub_1C4EFC0F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C456902C(&qword_1EC0B98E8, &qword_1C4F103A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  sub_1C4EFC0C8();
  sub_1C4409678(v19, v19[3]);
  sub_1C4EFC108();
  sub_1C4EFC0D8();
  (*(v5 + 8))(v7, v4);
  v8 = sub_1C4EFC0E8();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1C441D828(v8, v10, &v18);
    _os_log_impl(&dword_1C43F8000, v12, v13, "assetVersionNumber is: %s", v14, 0xCu);
    sub_1C440962C(v15);
    MEMORY[0x1C6942830](v15, -1, -1);
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  sub_1C440962C(v19);
  return v8;
}

void *sub_1C45C36EC()
{
  v1 = v0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 100;
  v2 = sub_1C4F00F28();
  type metadata accessor for AutonamingMessagesModelHandler._ClientInfo(0);
  swift_allocObject();
  v1[5] = sub_1C45C5680(0xD000000000000021, 0x80000001C4F85570, 0, 1, v2);
  return v1;
}

uint64_t sub_1C45C3790()
{
  v0 = sub_1C4EFC668();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4EFC698();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4EFC648();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  sub_1C4EFC658();
  sub_1C4EFC688();
  (*(v2 + 8))(v6, v0);
  sub_1C4EFC678();
  (*(v9 + 8))(v13, v7);
  (*(v16 + 104))(v19, *MEMORY[0x1E69A11A0], v14);
  v23 = sub_1C4EFC638();
  v24 = *(v16 + 8);
  v24(v19, v14);
  if (v23)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CC8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "GenerativeModels for memoryCreation.AutonamingMessages is available.";
LABEL_10:
      _os_log_impl(&dword_1C43F8000, v26, v27, v29, v28, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v30 = sub_1C4F00978();
    sub_1C442B738(v30, qword_1EDDFECB8);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CC8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "GenerativeModels for memoryCreation.AutonamingMessages is unavailable.";
      goto LABEL_10;
    }
  }

  v24(v22, v14);
  return v23 & 1;
}

uint64_t sub_1C45C3AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a3;
  v4[36] = a4;
  v4[33] = a1;
  v4[34] = a2;
  sub_1C456902C(&qword_1EC0B9900, &qword_1C4F103C0);
  v4[37] = swift_task_alloc();
  v4[38] = sub_1C456902C(&qword_1EC0B9908, &qword_1C4F103C8);
  v4[39] = swift_task_alloc();
  v5 = sub_1C4EFCC48();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v6 = sub_1C4EFCC58();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B9910, &qword_1C4F103D0);
  v4[46] = swift_task_alloc();
  v7 = sub_1C4F00888();
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v8 = sub_1C4EFC768();
  v4[51] = v8;
  v4[52] = *(v8 - 8);
  v4[53] = swift_task_alloc();
  sub_1C4EF9E48();
  v4[54] = swift_task_alloc();
  sub_1C4EFC728();
  v4[55] = swift_task_alloc();
  sub_1C4EFC6B8();
  v4[56] = swift_task_alloc();
  v9 = sub_1C4EFC6D8();
  v4[57] = v9;
  v4[58] = *(v9 - 8);
  v4[59] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B9918, &qword_1C4F103D8);
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0B9920, &qword_1C4F103E0);
  v4[62] = v10;
  v4[63] = *(v10 - 8);
  v4[64] = swift_task_alloc();
  v11 = sub_1C4F00DE8();
  v4[65] = v11;
  v4[66] = *(v11 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45C3FA0, 0, 0);
}

uint64_t sub_1C45C3FA0()
{
  v30 = *(v0 + 560);
  v1 = *(v0 + 536);
  v23 = *(v0 + 544);
  v24 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v22 = *(v0 + 496);
  v6 = *(v0 + 480);
  v26 = *(v0 + 464);
  v27 = *(v0 + 552);
  v28 = *(v0 + 456);
  v25 = *(v0 + 472);
  v31 = *(v0 + 416);
  v32 = *(v0 + 408);
  v33 = *(v0 + 424);
  v34 = *(v0 + 368);
  v7 = *(v0 + 280);
  v29 = *(v0 + 288);
  v8 = *(v0 + 272);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_1C4F00DF8();

  v10 = sub_1C4EFC5A8();
  *(v0 + 576) = v10;
  sub_1C440BAA8(v5, 1, 1, v10);
  sub_1C45C618C(v5, v6);
  sub_1C442C404(v6);
  sub_1C4EFC5D8();
  sub_1C4EFC5B8();
  sub_1C4EFC5C8();
  sub_1C4423A0C(v5, &qword_1EC0B9918, &qword_1C4F103D8);
  *(v0 + 696) = *MEMORY[0x1E69A1370];
  v11 = *(v3 + 104);
  *(v0 + 584) = v11;
  *(v0 + 592) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v4);
  *(v0 + 600) = sub_1C45C61FC(&qword_1EC0B9928, MEMORY[0x1E69C61B8], MEMORY[0x1E69C61A8]);
  sub_1C4431F14();
  sub_1C4F00E68();
  v12 = *(v3 + 8);
  *(v0 + 608) = v12;
  *(v0 + 616) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v4, v22);
  v13 = *(v24 + 8);
  *(v0 + 624) = v13;
  *(v0 + 632) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v1, v2);
  sub_1C4EF9D48();
  *(v0 + 640) = sub_1C456902C(&qword_1EC0B9930, &qword_1C4F103E8);
  v14 = *(sub_1C4EFC718() - 8);
  *(v0 + 648) = *(v14 + 72);
  *(v0 + 700) = *(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
  sub_1C4EFC6F8();
  sub_1C4EFC708();
  sub_1C4EFC6E8();
  sub_1C4EFC6A8();
  sub_1C4EFC6C8();
  sub_1C4431F14();
  sub_1C4F00E58();
  v15 = *(v26 + 8);
  *(v0 + 656) = v15;
  *(v0 + 664) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v25, v28);
  v13(v23, v2);
  sub_1C4F00F28();
  sub_1C4431F14();
  sub_1C4F00E48();

  v13(v27, v2);
  v16 = *(v29 + 40);
  *(v0 + 672) = v16;
  v17 = OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v31 + 16))(v33, v16 + v17, v32);
  sub_1C4431F14();
  sub_1C4F00E78();
  (*(v31 + 8))(v33, v32);
  v13(v30, v2);
  v18 = sub_1C4F00878();
  sub_1C440BAA8(v34, 1, 1, v18);
  sub_1C4F00868();
  v19 = swift_task_alloc();
  *(v0 + 680) = v19;
  *v19 = v0;
  v19[1] = sub_1C45C4524;
  v20 = *(v0 + 296);

  return MEMORY[0x1EEE0B308](v20, 0xD00000000000001CLL, 0x80000001C4F8B950);
}

uint64_t sub_1C45C4524()
{
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v6 + 688) = v0;

  if (v0)
  {
    v7 = sub_1C45C4DCC;
  }

  else
  {
    v7 = sub_1C45C4630;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C45C4630()
{
  v1 = *(v0 + 296);
  v2 = sub_1C456902C(&qword_1EC0B9938, &qword_1C4F103F0);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    sub_1C4423A0C(v1, &qword_1EC0B9900, &qword_1C4F103C0);
  }

  else
  {
    v37 = *(v0 + 656);
    v49 = *(v0 + 624);
    v44 = *(v0 + 608);
    v42 = *(v0 + 584);
    v41 = *(v0 + 696);
    v35 = *(v0 + 576);
    v45 = *(v0 + 560);
    v46 = *(v0 + 568);
    v47 = *(v0 + 520);
    v48 = *(v0 + 528);
    v39 = *(v0 + 512);
    v40 = *(v0 + 496);
    v33 = *(v0 + 488);
    v34 = *(v0 + 480);
    v31 = *(v0 + 472);
    v32 = *(v0 + 456);
    v27 = *(v0 + 392);
    v28 = *(v0 + 400);
    v24 = *(v2 + 48);
    v3 = *(v0 + 384);
    v26 = *(v0 + 376);
    v51 = *(v0 + 360);
    v43 = *(v0 + 352);
    v4 = *(v0 + 344);
    v25 = *(v0 + 336);
    v5 = *(v0 + 328);
    v50 = *(v0 + 320);
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v29 = *(v0 + 272);
    v30 = *(v0 + 280);
    v8 = *(v6 + 48);
    v9 = *(v43 + 32);
    v9(v7, v1, v4);
    v10 = v1;
    v11 = *(v5 + 32);
    v11(v7 + v8, v10 + v24, v50);
    v12 = *(v6 + 48);
    v9(v51, v7, v4);
    v11(v25, v7 + v12, v50);
    sub_1C4EFCC38();
    (*(v3 + 8))(v28, v26);
    (*(v3 + 32))(v28, v27, v26);
    sub_1C456902C(&qword_1EC0B9940, &qword_1C4F103F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0x74706D6F7270;
    *(inited + 40) = 0xE600000000000000;
    v14 = MEMORY[0x1E69C6560];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = v14;
    *(inited + 48) = v29;
    *(inited + 56) = v30;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B9948, &unk_1C4F10400);
    sub_1C4F00F28();
    sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1C4F0CE60;
    *(v15 + 32) = 0xD0000000000000D5;
    *(v15 + 40) = 0x80000001C4F8B970;
    sub_1C4EF9D48();
    *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
    sub_1C4EFC6F8();
    sub_1C4EFC708();
    sub_1C4EFC6E8();
    sub_1C4EFC6A8();
    sub_1C4EFC6C8();
    *(v15 + 72) = v32;
    sub_1C4422F90((v15 + 48));
    sub_1C4EFC738();
    v37(v31, v32);
    *(v15 + 80) = 0xD000000000000060;
    *(v15 + 88) = 0x80000001C4F8BA50;
    sub_1C440BAA8(v33, 1, 1, v35);
    sub_1C45C618C(v33, v34);
    sub_1C442C404(v34);
    sub_1C4EFC5D8();
    sub_1C4EFC5B8();
    sub_1C4EFC5C8();
    sub_1C4423A0C(v33, &qword_1EC0B9918, &qword_1C4F103D8);
    v42(v39, v41, v40);
    *(v15 + 120) = sub_1C4EFC5F8();
    sub_1C4422F90((v15 + 96));
    sub_1C4EFC748();
    v44(v39, v40);
    sub_1C4F00F28();
    sub_1C4EFCC28();

    (*(v5 + 8))(v25, v50);
    (*(v43 + 8))(v51, v4);
    v49(v46, v47);
    (*(v48 + 32))(v46, v45, v47);
  }

  v16 = *(v0 + 672);
  v38 = *(v0 + 624);
  v17 = *(v0 + 568);
  v18 = *(v0 + 560);
  v19 = *(v0 + 520);
  v20 = *(v0 + 400);
  v21 = *(v0 + 384);
  v36 = *(v0 + 376);
  sub_1C4F00E38();
  *(v0 + 256) = *(v16 + OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo__model);
  sub_1C4EFC578();
  sub_1C4F00E88();
  v38(v18, v19);
  (*(v21 + 8))(v20, v36);
  v38(v17, v19);

  sub_1C43FBDA0();

  return v22();
}

uint64_t sub_1C45C4DCC()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[65];
  (*(v0[48] + 8))(v0[50], v0[47]);
  v1(v2, v3);

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C45C4F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4F00E28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = MEMORY[0x1E69E6158];
  v13[4] = MEMORY[0x1E69C6560];
  v13[0] = a1;
  v13[1] = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1E69C6388];
  sub_1C4F00E18();
  sub_1C440962C(v13);
  sub_1C456902C(&qword_1EC0B9950, &qword_1C4F10410);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0D130;
  (*(v5 + 16))(v10 + v9, v7, v4);
  MEMORY[0x1C693FAF0](v10, v4, v8);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C45C513C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C456902C(&qword_1EC0B98F0, &qword_1C4F103B0);
  v3[2] = v6;
  v3[3] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[4] = v7;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1C45C5258;

  return sub_1C45C3AF8(v7, a1, a2, v2);
}

uint64_t sub_1C45C5258()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C45C55C0, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v2[7] = v6;
    v7 = sub_1C45C61FC(&qword_1EC0B98F8, MEMORY[0x1E69DA470], MEMORY[0x1E69DA440]);
    *v6 = v4;
    v6[1] = sub_1C45C540C;
    v8 = v2[2];

    return MEMORY[0x1EEE0A360](v8, v7);
  }
}

uint64_t sub_1C45C540C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_1C43FBE64();
  *v8 = v7;
  v9 = *v3;
  *v8 = *v3;
  *(v7 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C45C5620, 0, 0);
  }

  else
  {

    v10 = v9[1];

    return v10(a1, a2);
  }
}

uint64_t sub_1C45C55C0()
{

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C45C5620()
{

  sub_1C43FBDA0();

  return v0();
}

unsigned __int8 *sub_1C45C5680(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v48[3] = a4;
  v49 = a3;
  v10 = sub_1C4EFC598();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1C4EFC628();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1C456902C(&qword_1EC0B9958, &qword_1C4F10418);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1C4EFC768();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F00F28();
  sub_1C4EFC758();
  (*(v14 + 32))(v6 + OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig, v16, v13);
  v17 = sub_1C44735D4(0xD000000000000015, 0x80000001C4F8BAC0, a5);
  v19 = v18;

  if (!v19)
  {
    goto LABEL_65;
  }

  v21 = HIBYTE(v19) & 0xF;
  v22 = v17 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v23 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_64:

LABEL_65:
    sub_1C4EFC578();
    sub_1C4EFC0B8();
    sub_1C4EFC588();
    sub_1C4EFC618();
    *(v6 + OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo__model) = sub_1C4EFC568();
    return v6;
  }

  if ((v19 & 0x1000000000000000) != 0)
  {
    sub_1C4AA1330();
    goto LABEL_64;
  }

  if ((v19 & 0x2000000000000000) == 0)
  {
    if ((v17 & 0x1000000000000000) != 0)
    {
      result = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1C4F022F8();
    }

    v24 = *result;
    if (v24 == 43)
    {
      if (v22 >= 1)
      {
        v21 = v22 - 1;
        if (v22 != 1)
        {
          v33 = 0;
          if (result)
          {
            v34 = result + 1;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                goto LABEL_62;
              }

              v36 = 10 * v33;
              if ((v33 * 10) >> 64 != (10 * v33) >> 63)
              {
                goto LABEL_62;
              }

              v33 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_62;
              }

              ++v34;
              if (!--v21)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_70;
    }

    if (v24 != 45)
    {
      if (v22)
      {
        v41 = 0;
        if (result)
        {
          while (1)
          {
            v42 = *result - 48;
            if (v42 > 9)
            {
              goto LABEL_62;
            }

            v43 = 10 * v41;
            if ((v41 * 10) >> 64 != (10 * v41) >> 63)
            {
              goto LABEL_62;
            }

            v41 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v22)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      LOBYTE(v21) = 1;
      goto LABEL_63;
    }

    if (v22 >= 1)
    {
      v21 = v22 - 1;
      if (v22 != 1)
      {
        v25 = 0;
        if (result)
        {
          v26 = result + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_62;
            }

            v28 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              goto LABEL_62;
            }

            v25 = v28 - v27;
            if (__OFSUB__(v28, v27))
            {
              goto LABEL_62;
            }

            ++v26;
            if (!--v21)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v21) = 0;
LABEL_63:
        v51 = v21;
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v50[0] = v17;
  v50[1] = v19 & 0xFFFFFFFFFFFFFFLL;
  if (v17 != 43)
  {
    if (v17 != 45)
    {
      if (v21)
      {
        v44 = 0;
        v45 = v50;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v44;
          if ((v44 * 10) >> 64 != (10 * v44) >> 63)
          {
            break;
          }

          v44 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          ++v45;
          if (!--v21)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v21)
    {
      if (--v21)
      {
        v29 = 0;
        v30 = v50 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v32 - v31;
          if (__OFSUB__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v21)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_69;
  }

  if (v21)
  {
    if (--v21)
    {
      v37 = 0;
      v38 = v50 + 1;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        v40 = 10 * v37;
        if ((v37 * 10) >> 64 != (10 * v37) >> 63)
        {
          break;
        }

        v37 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          break;
        }

        ++v38;
        if (!--v21)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1C45C5C14()
{

  v1 = OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig;
  v2 = sub_1C4EFC768();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C45C5C8C()
{
  sub_1C45C5C14();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45C5CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_1C4EFC768();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1C45C5D6C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_1C4EFC768();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_1C45C5E78()
{

  return v0;
}

uint64_t sub_1C45C5EA0()
{
  sub_1C45C5E78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AutonamingMessagesModelHandler._ClientInfo(uint64_t a1)
{
  result = qword_1EDDDF4B0;
  if (!qword_1EDDDF4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45C5F4C(uint64_t a1)
{
  result = sub_1C4EFC768();
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

unint64_t sub_1C45C6018()
{
  result = qword_1EC0B98E0;
  if (!qword_1EC0B98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98E0);
  }

  return result;
}

unint64_t sub_1C45C606C(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1C4F012C8();
    v13[0] = sub_1C4F01428();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1C45C618C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9918, &qword_1C4F103D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45C61FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C45C6244()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_opt_self() service];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1C45C62B8(void *a1)
{
  v2 = v1;
  *(v2 + 24) = xmmword_1C4F10420;
  type metadata accessor for AutonamingMessagesSpotlightQuerier();
  swift_allocObject();
  *(v2 + 16) = sub_1C45C84B0(a1);
  return v2;
}

unint64_t sub_1C45C6324(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v23[2] = a2;
  v4 = sub_1C4C62B0C(sub_1C45C837C, v23, a1);
  if (v5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v8))
    {
      *sub_1C43FCED0() = 0;
      sub_1C440A62C(&dword_1C43F8000, v9, v10, "Unable to clip context messages as centerMessage index wasn't found. Returning contextMessages unclipped");
      sub_1C43FBE2C();
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return v3;
  }

  v11 = v4;
  if (__OFSUB__(0, v4))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (9 - v4 >= 0xA)
  {
    v12 = v4 - 10;
    if (__OFSUB__(v4, 10))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1C4428DA0(v3);
  if (__OFSUB__(v13, v11))
  {
    goto LABEL_27;
  }

  v2 = v13;
  if ((v13 - v11) >= 9)
  {
    v2 = v11 + 9;
    if (__OFADD__(v11, 9))
    {
      goto LABEL_39;
    }
  }

  if (v2 < v12)
  {
    goto LABEL_28;
  }

  sub_1C4C5ACB0();
  sub_1C4C5ACB0();
  if ((v3 & 0xC000000000000001) == 0 || v12 == v2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    if (v12 >= v2)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v11 = type metadata accessor for TextMessageData(0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = v12;
    do
    {
      v15 = v14 + 1;
      sub_1C4F02288();
      v14 = v15;
    }

    while (v2 != v15);
  }

  if (v3 >> 62)
  {
LABEL_29:

    v11 = sub_1C4F02528();
    v3 = v17;
    v12 = v18;
    v2 = v19;
    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v11 = v3 & 0xFFFFFFFFFFFFFF8;
  v3 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v2 = (2 * v2) | 1;
  if ((v2 & 1) == 0)
  {
LABEL_25:
    sub_1C4618664(v11, v3, v12, v2);
    v3 = v16;
    swift_unknownObjectRelease();
    return v3;
  }

LABEL_30:
  sub_1C4F02998();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v2 >> 1, v12))
  {
    goto LABEL_41;
  }

  if (v21 != (v2 >> 1) - v12)
  {
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v3 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v3)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

BOOL sub_1C45C65EC(uint64_t *a1, uint64_t a2)
{
  sub_1C4EF9CD8();
  sub_1C4575ED0();
  return (sub_1C4F01068() & 1) == 0;
}

void sub_1C45C6664(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = &unk_1C4F0C000;
  if (!a3)
  {
    sub_1C441F41C();
    if (!v21)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v45 = sub_1C4F00978();
    sub_1C4406678(v45, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CD8();

    if (!sub_1C442FAFC())
    {
      goto LABEL_37;
    }

    sub_1C43FD084();
    v7 = sub_1C4402BBC();
    v83 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C441D828(a1, a2, &v83);
    v49 = "MAD person identification request on image with identifier %s failed";
LABEL_24:
    sub_1C440A610(&dword_1C43F8000, v48, v47, v49);
    sub_1C440962C(v7);
    sub_1C43FFD18();
LABEL_36:
    sub_1C43FBE2C();
LABEL_37:

    goto LABEL_38;
  }

  v6 = a3;
  if (sub_1C4428DA0(a3) != 1)
  {
    sub_1C441F41C();
    if (!v21)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v50 = sub_1C4F00978();
    sub_1C4406678(v50, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = sub_1C4F00968();
    v51 = sub_1C4F01CC8();

    if (sub_1C442FAFC())
    {
      v7 = swift_slowAlloc();
      v12 = sub_1C43FFD34();
      v83 = v12;
      *v7 = 136315394;
      *(v7 + 4) = sub_1C441D828(a1, a2, &v83);
      *(v7 + 6) = 2048;
      *(v7 + 14) = sub_1C4428DA0(v6);

      v52 = "Performed MAD personIdentificationRequest request on image with image identifier %s and received result of length (%ld). No person identifier in image, returning nil.";
      v53 = v51;
LABEL_29:
      _os_log_impl(&dword_1C43F8000, v46, v53, v52, v7, 0x16u);
      sub_1C440962C(v12);
      sub_1C43FBE2C();
      goto LABEL_36;
    }

LABEL_31:

LABEL_38:
    v58 = 0;
    v59 = 0;
    sub_1C43FEB6C();
    v60 = 0;
    goto LABEL_39;
  }

  if (!sub_1C4428DA0(v6))
  {
    sub_1C441F41C();
    if (!v21)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v54 = sub_1C4F00978();
    sub_1C442B738(v54, qword_1EDDFECB8);
    v46 = sub_1C4F00968();
    v55 = sub_1C4F01CC8();
    if (!sub_1C43FD0E8(v55))
    {
      goto LABEL_37;
    }

    *sub_1C43FCED0() = 0;
    sub_1C440A62C(&dword_1C43F8000, v56, v57, "AutonamingMessages only supports inference on images with 1 person identified them. Returning nil.");
    goto LABEL_36;
  }

  v14 = sub_1C44330F0();
  sub_1C4431590(v14, v15, v16);
  if (v5)
  {
    v17 = MEMORY[0x1C6940F90](0, v6);
  }

  else
  {
    v17 = *(v6 + 32);
  }

  v7 = v17;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    sub_1C441F41C();
    if (!v21)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v61 = sub_1C4F00978();
    sub_1C442B738(v61, qword_1EDDFECB8);
    v62 = sub_1C4F00968();
    v63 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v63))
    {
      *sub_1C43FCED0() = 0;
      sub_1C440A62C(&dword_1C43F8000, v64, v65, "Unable to cast identification result to MADPersonIdentificationResult. Returning nil.");
      sub_1C43FBE2C();
    }

    goto LABEL_38;
  }

  v6 = v18;
  v7 = v7;
  v8 = &off_1E81F1000;
  v19 = [v6 resultItems];
  sub_1C4461BB8(0, &unk_1EC0B9960, 0x1E69AE380);
  v12 = sub_1C4F01678();

  v20 = sub_1C4428DA0(v12);

  v82 = a1;
  if (v20 != 1)
  {

    sub_1C43FEB6C();
    if (a4)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

  sub_1C441F41C();
  if (!v21)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v22 = sub_1C4F00978();
  sub_1C4406678(v22, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CB8();

  log = v7;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = a1;
    v26 = sub_1C43FD084();
    v27 = sub_1C43FFD34();
    v83 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1C441D828(v25, a2, &v83);
    _os_log_impl(&dword_1C43F8000, v23, v24, "Found 1 person observation in the image with identifier %s", v26, 0xCu);
    sub_1C440962C(v27);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v28 = [v6 resultItems];
  v29 = sub_1C4F01678();

  v30 = sub_1C44330F0();
  sub_1C4431590(v30, v31, v32);
  if (v28)
  {
    v33 = MEMORY[0x1C6940F90](0, v29);
  }

  else
  {
    v33 = *(v29 + 32);
  }

  v34 = v33;

  v35 = [v34 personIdentifier];
  v6 = sub_1C4F01138();
  v7 = v36;

  v8 = [v34 mdID];
  v12 = sub_1C4F01138();
  a1 = v37;

  [v34 confidence];
  v39 = v38;

  LODWORD(v8) = v39;
  if (!a4)
  {
LABEL_46:
    sub_1C442C430();
    sub_1C441F41C();
    if (!v21)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v66 = sub_1C4F00978();
    sub_1C4406678(v66, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CC8();

    v12 = &unk_1C4F0C000;
    if (!sub_1C442FAFC())
    {
      goto LABEL_37;
    }

    sub_1C43FD084();
    v7 = sub_1C4402BBC();
    v83 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C441D828(v82, a2, &v83);
    v49 = "MAD captioning request on image with identifier %s failed";
    goto LABEL_24;
  }

LABEL_15:
  if (sub_1C4428DA0(a4) != 1)
  {
    sub_1C442C430();
    sub_1C441F41C();
    if (!v21)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v67 = sub_1C4F00978();
    sub_1C4406678(v67, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = sub_1C4F00968();
    v6 = sub_1C4F01CC8();

    if (os_log_type_enabled(v46, v6))
    {
      v7 = swift_slowAlloc();
      v12 = sub_1C43FFD34();
      v83 = v12;
      *v7 = 136315394;
      *(v7 + 4) = sub_1C441D828(v82, a2, &v83);
      *(v7 + 6) = 2048;
      *(v7 + 14) = sub_1C4428DA0(a4);

      v52 = "Performed MAD request on image with identifer %s and returned an unsupported number of captions: %ld";
      v53 = v6;
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  sub_1C441F41C();
  if (!v21)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v40 = sub_1C4F00978();
  sub_1C4406678(v40, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = sub_1C4F00968();
  v42 = sub_1C4F01CB8();

  if (os_log_type_enabled(v41, v42))
  {
    loga = v41;
    v79 = v42;
    v43 = sub_1C43FD084();
    v44 = sub_1C43FFD34();
    v83 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_1C441D828(v82, a2, &v83);
    _os_log_impl(&dword_1C43F8000, loga, v79, "Performed MAD request on image with identifier %s and identified 1 caption", v43, 0xCu);
    sub_1C440962C(v44);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  sub_1C4431590(0, (a4 & 0xC000000000000001) == 0, a4);
  if ((a4 & 0xC000000000000001) != 0)
  {
    v68 = MEMORY[0x1C6940F90](0, a4);
  }

  else
  {
    v68 = *(a4 + 32);
  }

  v69 = v68;
  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {
    sub_1C442C430();
    v76 = sub_1C4F00968();
    v77 = sub_1C4F01CC8();
    if (sub_1C43FEB2C(v77))
    {
      v78 = sub_1C43FCED0();
      *v78 = 0;
      _os_log_impl(&dword_1C43F8000, v76, v77, "Unable to cast identification result to MADCaptionResult. Returning nil.", v78, 2u);
      sub_1C43FBE2C();
    }

    goto LABEL_38;
  }

  v71 = v70;
  v72 = v69;
  v73 = sub_1C45C8318(v71);
  if (v74)
  {
    v58 = v73;
  }

  else
  {
    v58 = 0;
  }

  if (v74)
  {
    v59 = v74;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  [v71 score];
  v60 = v75;

LABEL_39:
  *a5 = v58;
  *(a5 + 8) = v59;
  *(a5 + 16) = v60;
  *(a5 + 24) = v6;
  *(a5 + 32) = v7;
  *(a5 + 40) = v12;
  *(a5 + 48) = a1;
  *(a5 + 56) = v8;
}

id sub_1C45C6F8C(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E69AE370]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69AE308]) initWithModelType:3 safetyType:0];
  v4 = sub_1C45C6244();
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F10430;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  sub_1C4461BB8(0, &qword_1EDDDBB48, 0x1E69AE3B8);
  v6 = v3;
  v7 = v2;
  v8 = sub_1C4F01658();

  v9 = sub_1C4F01108();
  v17[0] = 0;
  v10 = [v4 performRequests:v8 onAssetWithSyndicationIdentifier:v9 error:v17];

  v11 = v17[0];
  if (v10)
  {
    v12 = v17[0];
    v11 = sub_1C45C82A8(v7);
    v13 = [v6 results];
    if (v13)
    {
      v14 = v13;
      sub_1C4461BB8(0, &unk_1EDDDB840, 0x1E69AE3C0);
      sub_1C4F01678();
    }
  }

  else
  {
    v15 = v17[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1C45C71BC(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C45C6F8C(v3, v2);
  sub_1C45C6664(v3, v2, v4, v5, &v38);
  v6 = v39;
  v32 = *&v40;
  v7 = v42;
  v36 = v41;
  v8 = v43;
  v33 = v38;
  v35 = v44;
  v9 = v45;

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();

  if (os_log_type_enabled(v11, v12))
  {
    v31 = v12;
    v13 = sub_1C43FFD34();
    v37 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = sub_1C441D828(v3, v2, &v37);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;
    if (v6)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = sub_1C45BE078(v33, v6, v32);
      v17 = v16;
    }

    else
    {
      v15 = 0xD00000000000001CLL;
      v17 = 0x80000001C4F8BBD0;
    }

    v18 = sub_1C441D828(v15, v17, &v37);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    if (v7)
    {
      v38 = v36;
      v39 = v7;
      v40 = v8;
      v41 = v35;
      LODWORD(v42) = v9;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C45BDF0C();
      v21 = v20;
    }

    else
    {
      v21 = 0x80000001C4F8BB90;
      v19 = 0xD00000000000003CLL;
    }

    v22 = sub_1C441D828(v19, v21, &v37);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_1C43F8000, v11, v31, "Performed MAD call on image with UUID: %s, with the following captioning: \n %s\nwith the following person identification result: %s", v13, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  v23 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult;
  *v23 = v33;
  *(v23 + 8) = v6;
  *(v23 + 16) = v32;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v24 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult;
  v25 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 8);
  v34 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult);
  *v24 = v36;
  *(v24 + 8) = v7;
  *(v24 + 16) = v8;
  *(v24 + 24) = v35;
  *(v24 + 32) = v9;
  v26 = sub_1C4410948();
  sub_1C45BBF70(v26, v27);
  sub_1C45BBFB4(v34, v25);
  v28 = sub_1C4410948();
  sub_1C45BBFB4(v28, v29);

  return 1;
}

uint64_t sub_1C45C7658(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1C4EF9CD8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C45C7710()
{
  v1 = sub_1C45C28D8([*(v0 + 24) attributeSet]);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    *(v0 + 80) = *(*(v0 + 32) + 16);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1C45C78B0;
    v6 = *(v0 + 24);

    return sub_1C45C8550(v6, v3, v4);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();
    if (sub_1C43FEB2C(v10))
    {
      v11 = sub_1C43FCED0();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Autonaming Message processing: Unable to perform inference on the message as the identifier is nil", v11, 2u);
      sub_1C43FBE2C();
    }

    v12 = sub_1C44258E8();

    return v13(v12);
  }
}

uint64_t sub_1C45C78B0(uint64_t a1)
{
  *(*v1 + 96) = a1;

  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C45C79A8()
{
  v31 = v0;
  v2 = v0[12];
  if (v2)
  {
    v0[2] = v2;
    if (*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_imageEligibleForPhotosProcessing))
    {
      v4 = v0[6];
      v3 = v0[7];
      v5 = v0[5];

      v6 = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
      v0[13] = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
      v7 = *(v4 + 16);
      v0[14] = v7;
      v0[15] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v3, v2 + v6, v5);
      v0[16] = *(v2 + 40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v8 = swift_task_alloc();
      v0[17] = v8;
      *v8 = v0;
      v8[1] = sub_1C45C7D10;

      return sub_1C45CA710();
    }

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CC8();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[9];
    if (v22)
    {
      v24 = v0[8];
      v25 = sub_1C43FD084();
      v26 = sub_1C43FFD34();
      v30 = v26;
      *v25 = 136315138;
      v27 = sub_1C441D828(v24, v23, &v30);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1C43F8000, v20, v21, "Autonaming Message processing: Unable to perform inference on the message with unique identifier: %s, as the image message is not eligible for MAD processing", v25, 0xCu);
      sub_1C440962C(v26);
      sub_1C43FBE2C();
      sub_1C43FFD18();

      goto LABEL_17;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v10 = sub_1C4F00978();
  sub_1C4406678(v10, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[9];
  if (!v13)
  {

    goto LABEL_16;
  }

  v15 = v0[8];
  sub_1C43FD084();
  v16 = sub_1C4402BBC();
  v30 = v16;
  *v1 = 136315138;
  v17 = sub_1C441D828(v15, v14, &v30);

  *(v1 + 4) = v17;
  sub_1C440A610(&dword_1C43F8000, v18, v12, "Autonaming Message processing: Unable to perform inference on the message with unique identifier: %s, as an object for the image message with this unique identifier was not able to be created");
  sub_1C440962C(v16);
  sub_1C43FFD18();
  sub_1C43FFD4C();

LABEL_17:

  v28 = sub_1C44258E8();

  return v29(v28);
}

uint64_t sub_1C45C7D10(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v2[18] = a1;

  v6 = *(v4 + 8);
  v2[19] = v6;
  v2[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45C7E98()
{
  v38 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C442B738(v1, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CC8();
  if (sub_1C43FEB2C(v4))
  {
    v5 = *(v0 + 144);
    v6 = sub_1C43FD084();
    *v6 = 134217984;
    *(v6 + 4) = sub_1C4428DA0(v5);
    sub_1C440A610(&dword_1C43F8000, v7, v4, "Autonaming Message processing: Found context messages count: %ld");
    sub_1C43FFD4C();
  }

  v8 = *(v0 + 144);

  if (sub_1C4428DA0(v8) > 20)
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 56);
    v11 = *(v0 + 40);
    (*(v0 + 112))(v10, *(v0 + 96) + *(v0 + 104), v11);
    v12 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C45C6324(v12, v10);

    v9(v10, v11);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CC8();
    if (sub_1C43FEB2C(v15))
    {
      v16 = sub_1C43FD084();
      *v16 = 134217984;
      *(v16 + 4) = sub_1C4428DA0(v13);

      sub_1C440A610(&dword_1C43F8000, v17, v15, "Autonaming Message processing: Clipped down to %ld messages around the original image message");
      sub_1C43FFD4C();
    }

    else
    {
    }
  }

  v18 = sub_1C45C71BC((v0 + 16));

  v19 = *(v0 + 96);
  if (v18)
  {
    v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = sub_1C45BC9EC(v20, v19);
    v23 = v22;
    if (sub_1C45BCDE8(v21, v22))
    {

      goto LABEL_21;
    }

    v24 = sub_1C4F00968();
    v33 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v33))
    {
      v34 = sub_1C43FCED0();
      *v34 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v2, "Autonaming Message processing: Prompt not eligible for inference for autonaming from messages", v34, 2u);
      sub_1C43FFD18();
    }

    goto LABEL_19;
  }

  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CD8();

  v26 = sub_1C442FAFC();
  v27 = *(v0 + 96);
  if (!v26)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_1C43FD084();
  v28 = sub_1C4402BBC();
  v37 = v28;
  *v19 = 136315138;
  v29 = *(v27 + 16);
  v30 = *(v27 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = sub_1C441D828(v29, v30, &v37);

  *(v19 + 4) = v31;
  sub_1C440A610(&dword_1C43F8000, v32, v25, "Autonaming Message processing: performCaptioningAndIdentification on image with identifier: %s failed");
  sub_1C440962C(v28);
  sub_1C43FFD18();
  sub_1C43FFD4C();

LABEL_20:
  v21 = 0;
  v23 = 0;
LABEL_21:

  v35 = *(v0 + 8);

  return v35(v21, v23);
}

uint64_t sub_1C45C8228()
{

  return v0;
}

uint64_t sub_1C45C8250()
{
  sub_1C45C8228();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45C82A8(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &unk_1EDDDB840, 0x1E69AE3C0);
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C45C8318(void *a1)
{
  v1 = [a1 caption];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C45C839C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a5)
{
  v10 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v10 = a2(v10);
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
  v13[1] = v11;
  result = sub_1C45CC0C0(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

id sub_1C45C8444()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 144);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v4 = *(v0 + 144);
    *(v0 + 144) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_1C45C84B0(void *__src)
{
  v1[17] = 0;
  v1[18] = 0;
  memcpy(v1 + 2, __src, 0x70uLL);
  v2 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v1[16] = v2;
  v3 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4F01658();

  [v3 setFetchAttributes_];

  return v1;
}

uint64_t sub_1C45C8550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C45C857C()
{
  v32 = v0;
  if (!sub_1C45C28E4([*(v0 + 32) attributeSet]))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C43FCEE8(v18, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C440D060();

    if (!sub_1C44020E0())
    {
      goto LABEL_29;
    }

LABEL_28:
    sub_1C43FD084();
    sub_1C4402BBC();
    sub_1C44057F8();
    *(v1 + 4) = sub_1C441EA40(4.8149e-34, v24, v25);
    sub_1C442B944();
    _os_log_impl(v26, v27, v28, v29, v1, 0xCu);
    sub_1C440962C(v2);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
LABEL_29:

    sub_1C43FBCF0();

    return v30(0);
  }

  sub_1C43FEB94();
  *(v0 + 16) = v3 & 0xFFFFFFFFFFFFLL | 0x6D2E000000000000;
  sub_1C43FBF14();
  *(v0 + 24) = v4;
  *(swift_task_alloc() + 16) = v0 + 16;
  v5 = sub_1C44CE068();

  if (!v5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C43FCEE8(v19, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C440D060();

    if (!sub_1C44020E0())
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v6 = [*(v0 + 32) attributeSet];
  v7 = [v6 disableSearchInSpotlight];

  if (v7)
  {
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v8 = sub_1C4F01EC8();
    v9 = sub_1C4F01EE8();

    if (v9)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v10 = sub_1C4F00978();
      sub_1C43FCEE8(v10, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = sub_1C4F00968();
      sub_1C4F01CC8();
      sub_1C441EA60();
      if (os_log_type_enabled(v11, v8))
      {
        v13 = *(v0 + 40);
        v12 = *(v0 + 48);
        v14 = sub_1C43FD084();
        v15 = sub_1C43FFD34();
        v31 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1C441D828(v13, v12, &v31);
        sub_1C442DD34(&dword_1C43F8000, v16, v17, "Autonaming Message processing: The message with unique identifier %s is disabled for search in spotlight, cannot continue with processing");
        sub_1C440962C(v15);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      goto LABEL_29;
    }
  }

  v20 = sub_1C45C295C([*(v0 + 32) attributeSet]);
  if (!v20)
  {
    goto LABEL_25;
  }

  if (!*(v20 + 16))
  {

LABEL_25:
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v23 = sub_1C4F00978();
    sub_1C43FCEE8(v23, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C440D060();

    if (!sub_1C44020E0())
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  *(v0 + 64) = *(v20 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v21 = swift_task_alloc();
  *(v0 + 72) = v21;
  *v21 = v0;
  v21[1] = sub_1C45C8A6C;

  return sub_1C45C8B70();
}

uint64_t sub_1C45C8A6C()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBCF0();

  return v5(v2);
}

uint64_t sub_1C45C8B70()
{
  sub_1C43FCF70();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = type metadata accessor for ExtractedAttributes(0);
  sub_1C43FBD18(v5);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_1C45C8C64;

  return sub_1C45C9DB8();
}

uint64_t sub_1C45C8C64()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C45C8D4C()
{
  v3 = *(v0 + 104);
  if (!v3)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C43FCEE8(v17, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v3 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C440D060();

    if (sub_1C44020E0())
    {
      sub_1C43FD084();
      sub_1C4402BBC();
      sub_1C44057F8();
      *(v1 + 4) = sub_1C441EA40(4.8149e-34, v18, v19);
      sub_1C442B944();
      _os_log_impl(v20, v21, v22, v23, v1, 0xCu);
      sub_1C440962C(v2);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    goto LABEL_10;
  }

  if (!sub_1C45C28E4([*(v0 + 104) attributeSet]) || (sub_1C43FEB94(), *(v0 + 16) = v4 & 0xFFFFFFFFFFFFLL | 0x692E000000000000, *(v0 + 24) = 0xEC0000006567616DLL, *(swift_task_alloc() + 16) = v0 + 16, v5 = sub_1C44CE068(), , , !v5))
  {
LABEL_10:

    v15 = 0;
    goto LABEL_11;
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  swift_bridgeObjectRetain_n();
  v14 = v3;
  sub_1C45C0E0C(v14, v12, v13, v6);
  sub_1C45C0E0C(v11, v12, v13, v7);
  sub_1C45C29C8(v6, v8);
  sub_1C45C29C8(v7, v9);
  type metadata accessor for ImageMessageData(0);
  swift_allocObject();
  v15 = sub_1C45C1FF4(v8, v9);
  sub_1C45C287C(v7);
  sub_1C45C287C(v6);
  if (v15)
  {

    sub_1C45C9A08(v16);
  }

  else
  {
  }

LABEL_11:

  sub_1C43FBCF0();

  return v24(v15);
}

uint64_t sub_1C45C9000()
{
  sub_1C43FBCD4();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1C4EF9CD8();
  v1[8] = v4;
  sub_1C43FCF7C(v4);
  v1[9] = v5;
  v1[10] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v6);
  v1[11] = sub_1C43FBE7C();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45C90D4()
{
  v1 = v0[7];
  sub_1C4F02248();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4F8BD60);
  sub_1C4EF9AD8();
  sub_1C4F01A28();
  MEMORY[0x1C6940010](8236, 0xE200000000000000);
  sub_1C4EF9AD8();
  sub_1C4F01A28();
  MEMORY[0x1C6940010](41, 0xE100000000000000);
  v2 = v0[2];
  v3 = v0[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4F8BD90);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v2, v3);

  v4 = *(v1 + 128);
  v5 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v6 = v4;
  v7 = sub_1C43FD104();
  v0[12] = v7;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[14] = v9;
  sub_1C456902C(&qword_1EC0B9970, &qword_1C4F10520);
  sub_1C440F2A0();
  *v9 = v10;
  v9[1] = sub_1C45C9310;
  sub_1C440DE60();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C45C9310()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

id sub_1C45C9410()
{
  v18 = v0;
  v1 = v0[9];
  v2 = v0[4];
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1C4428DA0(v2);
  v4 = result;
  v5 = 0;
  v6 = (v1 + 32);
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1C6940F90](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      result = *(v2 + 8 * v5 + 32);
    }

    v7 = result;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v8 = [result attributeSet];
    v9 = [v8 contentCreationDate];

    v10 = v0[11];
    if (v9)
    {
      v11 = v0[10];
      v12 = v0[8];
      sub_1C4EF9C78();

      (*v6)(v10, v11, v12);
      sub_1C440BAA8(v10, 0, 1, v12);
      sub_1C44686E4(v10);
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      result = sub_1C4F02328();
    }

    else
    {
      v13 = v0[8];

      sub_1C440BAA8(v10, 1, 1, v13);
      result = sub_1C44686E4(v10);
    }

    ++v5;
  }

  v14 = v0[12];

  sub_1C45C839C(&v17, sub_1C4836300, sub_1C49B74A8, sub_1C45CC600, sub_1C45CC1C0);

  v15 = v17;

  sub_1C43FBCF0();

  return v16(v15);
}

uint64_t sub_1C45C968C(id *a1, void **a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v32 - v18;
  v20 = *a2;
  v21 = [*a1 attributeSet];
  v22 = [v21 contentCreationDate];

  if (v22)
  {
    sub_1C4EF9C78();

    v23 = *(v10 + 32);
    v23(v8, v15, v9);
    sub_1C440BAA8(v8, 0, 1, v9);
    v23(v19, v8, v9);
  }

  else
  {
    sub_1C440BAA8(v8, 1, 1, v9);
    sub_1C4EF9CC8();
    if (sub_1C44157D4(v8, 1, v9) != 1)
    {
      sub_1C44686E4(v8);
    }
  }

  v24 = [v20 attributeSet];
  v25 = [v24 contentCreationDate];

  if (v25)
  {
    sub_1C4EF9C78();

    v26 = *(v10 + 32);
    v27 = v33;
    v26(v33, v15, v9);
    sub_1C440BAA8(v27, 0, 1, v9);
    v26(v12, v27, v9);
  }

  else
  {
    v28 = v33;
    sub_1C440BAA8(v33, 1, 1, v9);
    sub_1C4EF9CC8();
    if (sub_1C44157D4(v28, 1, v9) != 1)
    {
      sub_1C44686E4(v28);
    }
  }

  v29 = sub_1C4EF9C18();
  v30 = *(v10 + 8);
  v30(v12, v9);
  v30(v19, v9);
  return v29 & 1;
}

void sub_1C45C9A08(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  if (v1 && v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C4F10430;
    v5 = *MEMORY[0x1E695C240];
    v6 = *MEMORY[0x1E695C230];
    *(v4 + 32) = *MEMORY[0x1E695C240];
    *(v4 + 40) = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = v5;
    v8 = v6;
    v9 = sub_1C45C8444();
    v10 = objc_opt_self();
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C4F0D130;
    *(v11 + 32) = v3;
    *(v11 + 40) = v2;
    v12 = sub_1C4F01658();

    v13 = [v10 predicateForContactsWithIdentifiers_];

    sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
    v14 = sub_1C4F01658();

    v29[0] = 0;
    v15 = [v9 unifiedContactsMatchingPredicate:v13 keysToFetch:v14 error:v29];

    v16 = v29[0];
    if (v15)
    {
      sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
      v17 = sub_1C4F01678();
      v18 = v16;

      if (sub_1C4428DA0(v17))
      {
        sub_1C4431590(0, (v17 & 0xC000000000000001) == 0, v17);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1C6940F90](0, v17);
        }

        else
        {
          v19 = *(v17 + 32);
        }

        v20 = v19;

        sub_1C45C16A0(v20);
      }

      else
      {

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDDFECB8);
        v20 = sub_1C4F00968();
        v27 = sub_1C4F01CD8();
        if (os_log_type_enabled(v20, v27))
        {
          v28 = sub_1C43FCED0();
          *v28 = 0;
          _os_log_impl(&dword_1C43F8000, v20, v27, "new contacts is empty", v28, 2u);
          sub_1C43FBE2C();
        }
      }
    }

    else
    {
      v21 = v29[0];
      v22 = sub_1C4EF97A8();

      swift_willThrow();
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v23 = sub_1C4F00978();
      sub_1C43FCEE8(v23, qword_1EDDFECB8);
      v20 = sub_1C4F00968();
      v24 = sub_1C4F01CD8();
      if (os_log_type_enabled(v20, v24))
      {
        v25 = sub_1C43FCED0();
        *v25 = 0;
        _os_log_impl(&dword_1C43F8000, v20, v24, "error when trying to call into contactStore", v25, 2u);
        sub_1C43FBE2C();
      }
    }
  }
}

uint64_t sub_1C45C9DB8()
{
  sub_1C43FBCD4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1C45C9E44;

  return sub_1C45CA32C();
}

uint64_t sub_1C45C9E44()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C45C9F2C()
{
  v32 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v31 = MEMORY[0x1E69E7CC0];
  v3 = sub_1C4428DA0(v1);
  v4 = 0;
  v30 = v0;
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C6940F90](v4, v0[5]);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v5 = *(v1 + 32 + 8 * v4);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      sub_1C44064A8();
      swift_once();
LABEL_22:
      v11 = sub_1C4F00978();
      sub_1C43FCEE8(v11, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = sub_1C4F00968();
      sub_1C4F01CC8();
      sub_1C441EA60();
      if (os_log_type_enabled(v12, v4))
      {
        v13 = v0[3];
        v14 = v30[2];
        v15 = sub_1C43FD084();
        v16 = sub_1C43FFD34();
        v31 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1C441D828(v14, v13, &v31);
        sub_1C442DD34(&dword_1C43F8000, v17, v18, "Autonaming Message processing: Found one valid message for the image only %s");
        sub_1C440962C(v16);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      sub_1C4431590(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1C6940F90](0, v3);
      }

      else
      {
        v19 = *(v3 + 32);
      }

      v20 = v19;

      goto LABEL_33;
    }

    v7 = sub_1C45C28D8([v5 attributeSet]);
    if (!v8)
    {

      goto LABEL_18;
    }

    if (v7 == v0[2] && v8 == v2)
    {

LABEL_16:
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      goto LABEL_17;
    }

    v10 = sub_1C4F02938();

    if (v10)
    {
      goto LABEL_16;
    }

LABEL_17:
    v0 = v30;
LABEL_18:
    ++v4;
  }

  v3 = v31;
  if (sub_1C4428DA0(v31) == 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_22;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v21 = sub_1C4F00978();
  sub_1C43FCEE8(v21, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v22 = sub_1C4F00968();
  sub_1C4F01CD8();
  sub_1C441EA60();
  if (os_log_type_enabled(v22, v4))
  {
    v23 = v30[3];
    v24 = v30[2];
    v25 = swift_slowAlloc();
    v26 = sub_1C43FFD34();
    v31 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_1C441D828(v24, v23, &v31);
    *(v25 + 12) = 2048;
    v27 = sub_1C4428DA0(v3);

    *(v25 + 14) = v27;

    _os_log_impl(&dword_1C43F8000, v22, v4, "Autonaming Message processing: Spotlight returned searchable items with the following count for the message unique identifier %s: %ld. Expecting count to be 1, returning nil", v25, 0x16u);
    sub_1C440962C(v26);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  v20 = 0;
LABEL_33:
  sub_1C43FBCF0();

  return v28(v20);
}

uint64_t sub_1C45CA32C()
{
  *(v1 + 24) = v0;
  v2 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C45CA354()
{
  v1 = v0[3];
  if (*(v1 + 136))
  {
    sub_1C43FBCF0();
    v12 = v2;
    v3 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v12(v3);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4F8BD40);
    v5 = *(v1 + 128);
    v6 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v7 = v5;
    v8 = sub_1C43FD104();
    v0[4] = v8;
    v9 = swift_task_alloc();
    v0[5] = v9;
    *(v9 + 16) = v1;
    *(v9 + 24) = v8;
    v10 = swift_task_alloc();
    v0[6] = v10;
    sub_1C456902C(&qword_1EC0B9970, &qword_1C4F10520);
    sub_1C440F2A0();
    *v10 = v11;
    v10[1] = sub_1C45CA4F8;
    sub_1C440DE60();

    return MEMORY[0x1EEE6DDE0]();
  }
}

uint64_t sub_1C45CA4F8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C45CA5F8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 24);

  *(v1 + 136) = *(v0 + 16);

  if (*(v1 + 136))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C43FCEE8(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_1C43FCED0();
      *v5 = 0;
      sub_1C442B944();
      _os_log_impl(v6, v7, v8, v9, v5, 2u);
      sub_1C43FBE2C();
    }
  }

  sub_1C43FBCF0();

  return v10();
}

uint64_t sub_1C45CA710()
{
  sub_1C43FCF70();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = sub_1C4EF9CD8();
  v1[21] = v5;
  sub_1C43FCF7C(v5);
  v1[22] = v6;
  v1[23] = sub_1C43FBE7C();
  v7 = type metadata accessor for ExtractedAttributes(0);
  sub_1C43FBD18(v7);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[26] = v8;
  *v8 = v1;
  v8[1] = sub_1C45CA830;

  return sub_1C45CB1B4();
}