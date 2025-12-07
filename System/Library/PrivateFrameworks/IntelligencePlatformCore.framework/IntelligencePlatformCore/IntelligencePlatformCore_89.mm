uint64_t sub_1C4C508A8()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_1C4AF9ADC(v2);
  return swift_deallocClassInstance();
}

uint64_t sub_1C4C50910(uint64_t a1)
{
  sub_1C4C5082C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C50988(uint64_t a1)
{
  sub_1C4C4FBE4(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C50A00(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C4C50AF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &__src[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  swift_unownedRetainStrong();
  v14 = *(a4 + 16);

  sub_1C443A738(a1, a2, v15, v16, v17, v18, v19, v20);

  if (!v5)
  {
    v21 = *&v13[*(v11 + 84)];
    if (v21)
    {
      swift_unownedRetainStrong();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3 & 1);

      sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
      if (swift_dynamicCast())
      {
        sub_1C445F57C(v13);
        memcpy(__dst, __src, sizeof(__dst));
        _s41RepresentationLearningSubsetViewGeneratorCMa();
        v14 = swift_allocObject();
        v14[2] = a5;
        memcpy(v14 + 3, __dst, 0x48uLL);
        v14[12] = v21;

        return v14;
      }

      v14 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = xmmword_1C4F5B670;
      *(v23 + 32) = 0xD000000000000025;
      *(v23 + 40) = 0x80000001C4FB83A0;
      *(v23 + 48) = v25;
      *(v23 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v14 = 0x80000001C4FBCA00;
      sub_1C450B034();
      swift_allocError();
      *v22 = 0xD00000000000001CLL;
      *(v22 + 8) = 0x80000001C4FBCA00;
      *(v22 + 16) = 0xD000000000000021;
      *(v22 + 24) = 0x80000001C4F87B50;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0xE000000000000000;
      *(v22 + 48) = *__src;
      *(v22 + 64) = 1;
      swift_willThrow();
    }

    sub_1C445F57C(v13);
  }

  return v14;
}

uint64_t sub_1C4C50DD4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1C4C50AF8(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

BOOL sub_1C4C50E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = 1;
  if (*(a2 + 16))
  {
    v6 = sub_1C457A9B4();
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v9 = sub_1C465CC6C(0, v8);

      if (v9)
      {
        a4(0);
        v17 = sub_1C4EFEB68();
        MEMORY[0x1EEE9AC00](v17);
        sub_1C4416D48();
        v10 = sub_1C44CE068();

        if (v10)
        {
          return 0;
        }
      }
    }

    if (*(a2 + 16))
    {
      v11 = sub_1C457A9B4();
      if (v12)
      {
        v13 = *(*(a2 + 56) + 8 * v11);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v14 = sub_1C465CC6C(1, v13);

        if (v14)
        {
          a4(0);
          v18 = sub_1C4EFEB68();
          MEMORY[0x1EEE9AC00](v18);
          sub_1C4416D48();
          v15 = sub_1C44CE068();

          if (v15)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4C5103C()
{
  v1 = v0;
  v2 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27[-v3];
  v5 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27[-v6];
  v33 = MEMORY[0x1E69E7CC0];
  v8 = sub_1C4EFDE98();
  sub_1C43FCF64();
  sub_1C440BAA8(v9, v10, v11, v8);
  v12 = sub_1C4EFD678();
  sub_1C43FCF64();
  sub_1C440BAA8(v13, v14, v15, v12);
  v31 = v0;
  v32 = &v33;
  sub_1C4C44B94(v7, v4, sub_1C4C5191C, v30);
  sub_1C4423A0C(v4, &unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C4423A0C(v7, &qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v8);
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v12);
  v28 = v0;
  v29 = &v33;
  sub_1C4C44BAC(v7, v4, sub_1C4C51924, v27);
  sub_1C4423A0C(v4, &unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C4423A0C(v7, &qword_1EC0BE4F0, &qword_1C4F37248);
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDE2DF70);
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    swift_beginAccess();
    *(v25 + 4) = *(v33 + 16);
    _os_log_impl(&dword_1C43F8000, v23, v24, "Writing %ld rows to representation learning subset view", v25, 0xCu);
    MEMORY[0x1C6942830](v25, -1, -1);
  }

  memcpy(__dst, (v1 + 24), sizeof(__dst));
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BC7458();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C4C51358(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1C4C50E80(a1, *(a2 + 96), 0, type metadata accessor for GraphTriple))
  {
    sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C4F13950;
    v6 = sub_1C4EFF0C8();
    *(v5 + 56) = v6;
    *(v5 + 64) = sub_1C4C5192C(&qword_1EDDFA1C8, MEMORY[0x1E69A9810], MEMORY[0x1E69A9808]);
    v7 = sub_1C4422F90((v5 + 32));
    (*(*(v6 - 8) + 16))(v7, a1, v6);
    v8 = type metadata accessor for GraphTriple(0);
    v9 = v8[5];
    v10 = sub_1C4EFEEF8();
    *(v5 + 96) = v10;
    v11 = sub_1C4C5192C(&qword_1EC0BFA10, MEMORY[0x1E69A9748], MEMORY[0x1E69A9698]);
    *(v5 + 104) = v11;
    v12 = sub_1C4422F90((v5 + 72));
    v13 = *(*(v10 - 8) + 16);
    v13(v12, a1 + v9, v10);
    v14 = v8[6];
    v15 = sub_1C4EFF8A8();
    *(v5 + 136) = v15;
    *(v5 + 144) = sub_1C4C5192C(&qword_1EC0BFA38, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99E0]);
    v16 = sub_1C4422F90((v5 + 112));
    (*(*(v15 - 8) + 16))(v16, a1 + v14, v15);
    v17 = v8[7];
    *(v5 + 176) = v10;
    *(v5 + 184) = v11;
    v18 = sub_1C4422F90((v5 + 152));
    v13(v18, a1 + v17, v10);
    v19 = (a1 + v8[8]);
    v21 = *v19;
    v20 = v19[1];
    v22 = MEMORY[0x1E69A0138];
    *(v5 + 216) = MEMORY[0x1E69E6158];
    *(v5 + 224) = v22;
    *(v5 + 192) = v21;
    *(v5 + 200) = v20;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4588E94();
    v23 = *(*a3 + 16);
    sub_1C4589A7C();
    v24 = *a3;
    *(v24 + 16) = v23 + 1;
    *(v24 + 8 * v23 + 32) = v5;
  }

  return 1;
}

uint64_t sub_1C4C51628(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1C4C50E80(a1, *(a2 + 96), 1, type metadata accessor for EventTriple))
  {
    sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C4F13950;
    v6 = sub_1C4EFF0C8();
    *(v5 + 56) = v6;
    *(v5 + 64) = sub_1C4C5192C(&qword_1EDDFA1C8, MEMORY[0x1E69A9810], MEMORY[0x1E69A9808]);
    v7 = sub_1C4422F90((v5 + 32));
    (*(*(v6 - 8) + 16))(v7, a1, v6);
    v8 = type metadata accessor for EventTriple(0);
    v9 = v8[5];
    v10 = sub_1C4EFEEF8();
    *(v5 + 96) = v10;
    v11 = sub_1C4C5192C(&qword_1EC0BFA10, MEMORY[0x1E69A9748], MEMORY[0x1E69A9698]);
    *(v5 + 104) = v11;
    v12 = sub_1C4422F90((v5 + 72));
    v13 = *(*(v10 - 8) + 16);
    v13(v12, a1 + v9, v10);
    v14 = v8[6];
    v15 = sub_1C4EFF8A8();
    *(v5 + 136) = v15;
    *(v5 + 144) = sub_1C4C5192C(&qword_1EC0BFA38, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99E0]);
    v16 = sub_1C4422F90((v5 + 112));
    (*(*(v15 - 8) + 16))(v16, a1 + v14, v15);
    v17 = v8[7];
    *(v5 + 176) = v10;
    *(v5 + 184) = v11;
    v18 = sub_1C4422F90((v5 + 152));
    v13(v18, a1 + v17, v10);
    v19 = (a1 + v8[8]);
    v21 = *v19;
    v20 = v19[1];
    v22 = MEMORY[0x1E69A0138];
    *(v5 + 216) = MEMORY[0x1E69E6158];
    *(v5 + 224) = v22;
    *(v5 + 192) = v21;
    *(v5 + 200) = v20;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4588E94();
    v23 = *(*a3 + 16);
    sub_1C4589A7C();
    v24 = *a3;
    *(v24 + 16) = v23 + 1;
    *(v24 + 8 * v23 + 32) = v5;
  }

  return 1;
}

uint64_t sub_1C4C5192C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C4C51984(char a1)
{
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E69BDCC0]) init];
  sub_1C448DE08();
  sub_1C49BF650(v12, v11);
  sub_1C4EF9CC8();
  if (a1)
  {
    sub_1C4EF9BE8();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(v4 + 8);
  v14(v7, v2);
  sub_1C440BAA8(v10, v13, 1, v2);
  if (sub_1C44157D4(v10, 1, v2) == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_1C4EF9BF8();
    v14(v10, v2);
  }

  [v11 setFromDate_];

  return v11;
}

uint64_t sub_1C4C51B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s24ScoredTopicViewGeneratorCMa();
      result = swift_allocObject();
      *(result + 16) = v13;
      *(result + 24) = v14;
      *(result + 40) = v15;
      *(result + 48) = a5 & 1;
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v12;
      *(v11 + 64) = 0;
      swift_willThrow();
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return result;
}

uint64_t sub_1C4C51CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C51B5C(a1, a2, a3, *v3, *(v3 + 8));
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C51D70()
{
  v2 = v0;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v54 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E69BDCC8]) init];
  v9 = sub_1C4C51984(*(v0 + 48));
  v10 = swift_allocObject();
  v10[2] = MEMORY[0x1E69E7CC0];
  aBlock[4] = sub_1C4C52714;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4575BB0;
  aBlock[3] = &unk_1F44053B0;
  v11 = _Block_copy(aBlock);

  v55 = v9;
  aBlock[0] = 0;
  LODWORD(v9) = [v8 iterRankedTopicsWithQuery:v9 error:aBlock block:v11];
  _Block_release(v11);
  if (v9)
  {
    v49 = v3;
    v50 = v7;
    v51 = v8;
    v12 = v2[2];
    v13 = v2[3];
    v15 = v2[4];
    v14 = v2[5];
    v16 = aBlock[0];
    v17 = v12;
    v52 = v13;
    v53 = v15;
    v18 = v15;
    v19 = v14;
    v20 = sub_1C4947630(v12, v13, v18, v14);
    if (v1)
    {

      v21 = v51;
    }

    else
    {
      v28 = v20;
      v47 = v19;
      v48 = v12;
      if (qword_1EDDFECD0 != -1)
      {
        sub_1C44066DC(&qword_1EDDFECD0);
      }

      v29 = sub_1C4F00978();
      sub_1C442B738(v29, qword_1EDE2DF70);

      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CF8();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v50;
      v21 = v51;
      if (v32)
      {
        v34 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v34 = 134218242;
        *(v34 + 4) = v28;
        *(v34 + 12) = 2080;
        v35 = *(v53 + 16);
        v45 = v30;
        v36 = v54;
        v37 = v49;
        (*(v54 + 16))(v33, v35 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v49);
        sub_1C44266D0();
        v44 = v31;
        v43 = sub_1C4F02858();
        v39 = v38;
        (*(v36 + 8))(v33, v37);
        v40 = sub_1C441D828(v43, v39, aBlock);

        *(v34 + 14) = v40;
        v30 = v45;
        _os_log_impl(&dword_1C43F8000, v45, v44, "writing %ld scored topic rows to %s", v34, 0x16u);
        v41 = v46;
        sub_1C440962C(v46);
        MEMORY[0x1C6942830](v41, -1, -1);
        MEMORY[0x1C6942830](v34, -1, -1);
      }

      v19 = v47;
      v17 = v48;
    }

    swift_beginAccess();
    v42 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4BC7440(v42, v17, v52, v53, v19);
  }

  else
  {
    v22 = aBlock[0];
    sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDE2DF70);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CD8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v25, "Failed to retrieve topics from Portrait", v26, 2u);
      MEMORY[0x1C6942830](v26, -1, -1);
    }

    swift_willThrow();
  }
}

uint64_t sub_1C4C52280(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0C890;
  v6 = [a1 item];
  v7 = [v6 topicIdentifier];

  v8 = sub_1C4F01138();
  v10 = v9;

  v11 = MEMORY[0x1E69E6158];
  v12 = MEMORY[0x1E69A0138];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = v12;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  [a1 score];
  v13 = MEMORY[0x1E69A0168];
  *(v5 + 96) = MEMORY[0x1E69E63B0];
  *(v5 + 104) = v13;
  *(v5 + 72) = v14;
  v15 = [a1 item];
  v16 = [v15 mostRelevantRecord];

  if (!v16)
  {
    v22 = (v5 + 112);
    *(v5 + 136) = v11;
    *(v5 + 144) = v12;
    goto LABEL_5;
  }

  v17 = [v16 source];

  v18 = [v17 documentId];
  v19 = sub_1C4F01138();
  v21 = v20;

  v22 = (v5 + 112);
  *(v5 + 136) = v11;
  *(v5 + 144) = v12;
  if (!v21)
  {
LABEL_5:
    *v22 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_6;
  }

  *v22 = v19;
LABEL_6:
  *(v5 + 120) = v21;
  swift_beginAccess();
  sub_1C4588E94();
  v23 = *(*(a3 + 16) + 16);
  sub_1C4589A7C();
  v24 = *(a3 + 16);
  *(v24 + 16) = v23 + 1;
  *(v24 + 8 * v23 + 32) = v5;
  *(a3 + 16) = v24;
  return swift_endAccess();
}

uint64_t sub_1C4C5248C()
{

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for ScoredTopicView(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4C525EC()
{
  result = qword_1EC0C5038;
  if (!qword_1EC0C5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5038);
  }

  return result;
}

uint64_t sub_1C4C52640()
{
  sub_1C4C51D70();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4C526B8()
{
  sub_1C4C51D64();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4C5271C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4C52758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C4C527DC(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_1C4C52AD8(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      a3(0);
      sub_1C44025B0();
      return sub_1C4460468();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4C52858(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_1C4F02528();

    return v10;
  }

  v4 = sub_1C4428DA0(a2);
  v5 = sub_1C4C52AD8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1C4C5A9F0(0, a2);
  sub_1C4C5A9F0(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_1C4461BB8(0, &qword_1EDDF05C0, 0x1E698EF28);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1C4F02288();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

unint64_t sub_1C4C529A0(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_1C4F02528();

    return v10;
  }

  v4 = sub_1C4428DA0(a2);
  v5 = sub_1C4C52AD8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1C4C5A9F0(0, a2);
  sub_1C4C5A9F0(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    _s12JobSchedulerC10JobTrackerCMa(0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1C4F02288();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1C4C52AD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1C4C52B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  sub_1C4C5ACD4(a1, a2, a3, __src);

  if (!v4)
  {
    _s26SiriRemembersViewGeneratorCMa();
    a4 = swift_allocObject();
    sub_1C4C52C68(__src);
  }

  return a4;
}

uint64_t sub_1C4C52BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C52B24(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C52C68(void *__src)
{
  v2 = v1;
  *(v1 + 144) = 15;
  v5 = __src[2];
  v4 = __src[3];
  v11 = *__src;
  v10 = v4;
  *(v2 + 104) = v11;
  *(v2 + 120) = v5;
  *(v2 + 128) = v4;
  memcpy((v2 + 16), __src, 0x58uLL);
  _s26SiriRemembersViewGeneratorC11GuardedDataCMa();
  sub_1C43FBDBC();
  v6 = swift_allocObject();
  sub_1C4EFD8C8();
  swift_allocObject();
  sub_1C448DB48(&v11, v9);

  sub_1C4C5AB98(&v10, v9, &qword_1EC0BB018, qword_1C4F50870);
  sub_1C4C5ABF8(__src, v9);
  *(v6 + 16) = sub_1C4EFD8B8();
  sub_1C456902C(&unk_1EC0C5080, qword_1C4F5F490);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  sub_1C4C5AC54(__src);
  *(v2 + 136) = v7;
  return v2;
}

uint64_t sub_1C4C52D80()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4[2] = *(v0 + 104);
  v4[3] = v1;
  v5 = v2;
  return sub_1C446C37C(sub_1C4B18820, v4);
}

uint64_t sub_1C4C52DD8()
{
  v1 = v0;
  v2 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = objc_opt_self();
  v10 = v1[15];
  (*(v4 + 16))(v8, *(v10 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v2);
  sub_1C4EF98E8();
  (*(v4 + 8))(v8, v2);
  v11 = sub_1C4F01108();

  [v9 truncateDatabaseAtPath_];

  return sub_1C4B16DCC(v1[13], v1[14], v10);
}

uint64_t sub_1C4C52F30(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1C4F018C8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1C4F00978();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4C53070, 0, 0);
}

uint64_t sub_1C4C534BC()
{
  v0 = sub_1C4F018C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F00178();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v4;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    sub_1C4F01958();
    sub_1C4C5AB40(&qword_1EDDFA5E8, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v13 = sub_1C4F02858();
    v14 = v0;
    v16 = v15;
    (*(v1 + 8))(v3, v14);
    v17 = sub_1C441D828(v13, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1C43F8000, v8, v9, "SiriRemembersViewGenerator: performUpdate: priority at end current = %s.", v11, 0xCu);
    sub_1C440962C(v12);
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v11, -1, -1);

    return (*(v5 + 8))(v7, v19);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C4C5375C(uint64_t a1)
{
  v8 = 0;
  v7[2] = a1;
  v7[4] = &v8;

  sub_1C446C37C(sub_1C4C5A9D0, v7);

  if (v8)
  {
    sub_1C4F01828();
    v2 = sub_1C4C5AB40(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    sub_1C43FFC70(v2);
    sub_1C4F00EA8();
    return swift_willThrow();
  }

  else
  {
    v4 = *(a1 + 72);
    result = sub_1C4428DA0(v4);
    if (result)
    {
      v5 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C6940F90](i, v4);
          }

          else
          {
          }

          sub_1C4CBF8F8();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4C538B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v60 = a2;
  v61 = a3;
  v65 = sub_1C4F00978();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v63 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  sub_1C4F00178();
  v17 = sub_1C4F00968();
  sub_1C4F01CC8();
  v18 = sub_1C44016D0();
  if (os_log_type_enabled(v18, v19))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C446C0D0(&dword_1C43F8000, v20, v21, "SiriRemembersViewGenerator: checking for any stream pruning");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v64 = *(v8 + 8);
  v64(v16, v65);
  sub_1C4441C50(*(a1 + 33));
  if (v23 == 0x676E616843736168 && v22 == 0xEA00000000007365)
  {
  }

  else
  {
    v25 = sub_1C4F02938();

    if ((v25 & 1) == 0)
    {
      return result;
    }
  }

  v27 = sub_1C4CC05C4();
  v28 = v13;
  v30 = v29;
  v31 = v27;
  v32 = sub_1C4450454();
  v34 = v33;
  v35 = v32;
  sub_1C4F00178();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v62 = v28;
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v38 = os_log_type_enabled(v36, v37);
  v58 = a1;
  v59 = v5;
  if (v38)
  {
    sub_1C43FEC60();
    v39 = swift_slowAlloc();
    sub_1C43FEC60();
    v40 = swift_slowAlloc();
    v57 = v4;
    v41 = v40;
    v66 = v40;
    *v39 = 136315650;
    v42 = sub_1C4CC0B10();
    v44 = v34;
    v45 = sub_1C441D828(v42, v43, &v66);

    *(v39 + 4) = v45;
    v34 = v44;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v31;
    *(v39 + 22) = 2048;
    *(v39 + 24) = v35;
    _os_log_impl(&dword_1C43F8000, v36, v37, "SiriRemembersViewGenerator: %s: timestamps: %f , %f", v39, 0x20u);
    sub_1C440962C(v41);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v64(v62, v65);
  v46 = v63;
  if (v31 == v35)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    v62 = v30;
    sub_1C4F00178();

    v47 = sub_1C4F00968();
    v48 = sub_1C4F01CF8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = sub_1C440F274();
      sub_1C43FEC60();
      v50 = swift_slowAlloc();
      v57 = v34;
      v51 = v50;
      v66 = v50;
      *v49 = 136315394;
      v52 = sub_1C4CC0B10();
      v54 = sub_1C441D828(v52, v53, &v66);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2048;
      *(v49 + 14) = v35;
      _os_log_impl(&dword_1C43F8000, v47, v48, "SiriRemembersViewGenerator: %s has been pruned, new first timestamp is %f", v49, 0x16u);
      sub_1C440962C(v51);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v55 = v63;
    }

    else
    {

      v55 = v46;
    }

    v64(v55, v65);
    sub_1C44505F8();
    sub_1C4C53D4C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_1C4C53D4C()
{
  sub_1C43FE628();
  v60 = v1;
  v61 = v2;
  v3 = v0;
  v52 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - v13;
  sub_1C43FBE44();
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  v58 = v15;
  v59 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v57 = v17 - v16;
  sub_1C43FBE44();
  sub_1C4EFB678();
  sub_1C43FCDF8();
  v55 = v19;
  v56 = v18;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v54 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v24 = sub_1C4F00978();
  sub_1C43FCDF8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CC8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = sub_1C440F274();
    v51 = v3;
    v34 = v33;
    sub_1C43FEC60();
    v35 = swift_slowAlloc();
    v50 = v24;
    v36 = v8;
    v37 = v10;
    v38 = v35;
    v62[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_1C441D828(v37, v36, v62);
    *(v34 + 12) = 2048;
    *(v34 + 14) = v6;
    _os_log_impl(&dword_1C43F8000, v31, v32, "SiriRemembersViewGenerator: deleteAllInteractions: from %s before %f", v34, 0x16u);
    sub_1C440962C(v38);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    (*(v26 + 8))(v30, v50);
  }

  else
  {

    (*(v26 + 8))(v30, v24);
  }

  v39 = sub_1C4EFD848();
  v41 = v40;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v62[0] = v39;
  v62[1] = v41;
  sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C4EFB638();
  v62[3] = MEMORY[0x1E69E63B0];
  v62[4] = MEMORY[0x1E69A0160];
  v62[0] = v6;
  sub_1C4EFB658();
  sub_1C4C5AAE8(v62, &qword_1EC0C5040);
  sub_1C4EFB638();
  (*(v55 + 32))(v54, v23, v56);
  v42 = v57;
  sub_1C4EFBC88();
  v43 = v60;
  sub_1C4EFBEE8();
  if (v43)
  {
    (*(v58 + 8))(v42, v59);
  }

  else
  {
    (*(v58 + 8))(v42, v59);
    sub_1C4EFB768();
    v44 = v53;
    sub_1C43FCF64();
    sub_1C440BAA8(v45, v46, v47, v48);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v44, &unk_1EC0C06C0);

    sub_1C4C5A0F0(v52);
  }

  sub_1C44109F8();
}

uint64_t sub_1C4C541E8()
{

  return v0;
}

uint64_t sub_1C4C5427C()
{
  sub_1C4C541E8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C542D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C44A7DA0;

  return sub_1C4C52F30(a1);
}

void sub_1C4C54368(uint64_t a1, uint64_t a2)
{
  v7 = *(v3 + 88);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C44066DC(&qword_1EDDFECD0);
    goto LABEL_5;
  }

  v2 = v4;
  v5 = a2;
  v6 = a1;
  *(v3 + 88) = v9;
  if (*(v3 + 64) || v9 < 301)
  {
LABEL_8:
    sub_1C4B8BF6C(v6, v5);
    return;
  }

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v12))
  {
    sub_1C43FECF0();
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = 300;
    _os_log_impl(&dword_1C43F8000, v11, v12, "SiriRemembersViewGenerator: Hit id change count limit of %ld", v13, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4C544A4();
  if (!v2)
  {
    goto LABEL_8;
  }
}

void sub_1C4C544A4()
{
  if (!v0[8])
  {
    v2 = v0;
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DF70);
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v5))
    {
      sub_1C43FD1A8();
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C43F8000, v4, v5, "SiriRemembersViewGenerator: Dropping indexes", v6, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4B17324();
    if (!v1)
    {
      v10 = v2[8];
      v2[8] = v7;
      v2[9] = v8;
      v2[10] = v9;
      sub_1C4C5AA48(v10);
    }
  }
}

void sub_1C4C545B4()
{
  if (*(v0 + 64))
  {
    v1 = qword_1EDDFECD0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v1 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DF70);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v4))
    {
      sub_1C43FD1A8();
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C43F8000, v3, v4, "SiriRemembersViewGenerator: Restoring indexes", v5, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4B17950();
  }
}

void *sub_1C4C546F0()
{

  sub_1C4C5AA48(*(v0 + 64));
  return v0;
}

uint64_t sub_1C4C54750()
{
  sub_1C4C546F0();

  return swift_deallocClassInstance();
}

void sub_1C4C547A8(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v76 = a4;
  v8 = sub_1C4F00978();
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v64 - v13;
  v84 = a2;
  v14 = *(a2 + 56);
  v15 = *(v14 + 96);
  if (v15 >> 60 == 15)
  {
    v16 = 0.0;
    v75 = v8;
    v17 = 0.0;
  }

  else
  {
    v18 = *(v14 + 88);
    sub_1C44344B8(v18, *(v14 + 96));
    sub_1C44F9344(v18, v15);
    if (v4)
    {
      return;
    }

    v75 = v8;
    v16 = v19;
    v17 = v20;
  }

  v21 = *(a3 + 64);
  v82[0] = *(a3 + 48);
  v82[1] = v21;
  v82[2] = *(a3 + 80);
  v83 = *(a3 + 96);
  _s23UpdatedObjectDiffWriterCMa();
  swift_allocObject();
  sub_1C4B8CE5C(v82, v81);

  sub_1C4B8B458();
  if (!v4)
  {
    v23 = v22;
    v66 = v17;
    v64 = v16;
    v65 = v15 >> 60;
    v67 = v14;
    v68 = 0;
    v24 = *(a3 + 104);
    v25 = *(a3 + 112);
    v27 = *(a3 + 120);
    v26 = *(a3 + 128);
    v72 = a3;
    _s26SiriRemembersViewGeneratorC11DiffTrackerCMa();
    v28 = swift_allocObject();
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    *(v28 + 16) = v23;
    *(v28 + 24) = v24;
    *(v28 + 32) = v25;
    *(v28 + 40) = v27;
    *(v28 + 48) = v26;
    *(v28 + 56) = a1;
    v74 = v28;
    v29 = *(v84 + 72);
    v30 = v23;
    v31 = sub_1C4428DA0(v29);
    v32 = v29 & 0xC000000000000001;
    v70 = 0x80000001C4F862C0;
    v69 = 0x80000001C4F86260;
    v73 = a1;

    v71 = v30;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; v31 != i; ++i)
    {
      if (v32)
      {
        v26 = MEMORY[0x1C6940F90](i, v29);
      }

      else
      {
        if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v26 = *(v29 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        v80 = v26;

        goto LABEL_40;
      }

      if (*(v26 + 32) == 1)
      {
        switch(*(v26 + 72))
        {
          case 4:

            break;
          default:
            v34 = sub_1C4F02938();

            if ((v34 & 1) == 0)
            {
              continue;
            }

            break;
        }

        v40 = v78;
        sub_1C4F00178();
        v41 = sub_1C4F00968();
        v45 = sub_1C4F01CF8();
        if (os_log_type_enabled(v41, v45))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1C43F8000, v41, v45, "SiriRemembersViewGenerator: performUpdate: weekly schedule full rebuild", v43, 2u);
          LOBYTE(v31) = 1;
          v32 = v68;
          v38 = v75;
LABEL_33:
          MEMORY[0x1C6942830](v43, -1, -1);
        }

        else
        {
          LOBYTE(v31) = 1;
          v32 = v68;
          v38 = v75;
        }

        goto LABEL_35;
      }
    }

    sub_1C4441C50(*(v67 + 33));
    v37 = v36 == 0xD000000000000013 && 0x80000001C4F87C40 == v35;
    v38 = v75;
    if (v37)
    {

      v32 = v68;
      v40 = v79;
    }

    else
    {
      v39 = sub_1C4F02938();

      v32 = v68;
      v40 = v79;
      if ((v39 & 1) == 0)
      {
        v40 = v77;
        sub_1C4F00178();
        v41 = sub_1C4F00968();
        v42 = sub_1C4F01CF8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1C43F8000, v41, v42, "SiriRemembersViewGenerator: performUpdate: incremental update", v43, 2u);
          LOBYTE(v31) = 0;
          goto LABEL_33;
        }

        LOBYTE(v31) = 0;
        goto LABEL_35;
      }
    }

    sub_1C4F00178();
    v41 = sub_1C4F00968();
    v44 = sub_1C4F01CF8();
    if (os_log_type_enabled(v41, v44))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1C43F8000, v41, v44, "SiriRemembersViewGenerator: performUpdate: control source full rebuild", v43, 2u);
      LOBYTE(v31) = 1;
      goto LABEL_33;
    }

    LOBYTE(v31) = 1;
LABEL_35:
    v46 = v80;

    (*(v46 + 8))(v40, v38);
    _s26SiriRemembersViewGeneratorC16CachedStatementsCMa();
    v26 = swift_allocObject();

    v29 = v26;
    sub_1C4C5A5D8();
    if (v32)
    {
LABEL_36:

      return;
    }

    if (v31)
    {
      v47 = *(v72 + 136);
      os_unfair_lock_lock(v47 + 6);
      sub_1C4C55290();
      os_unfair_lock_unlock(v47 + 6);
      sub_1C4C544A4();
      sub_1C4B8B8EC();
      v32 = 0;
      sub_1C448DE08();
      v29 = v73;
      sub_1C46A9F14(v55);
      goto LABEL_78;
    }

    v80 = v26;
LABEL_40:
    v48 = *(v84 + 80);
    v49 = sub_1C4428DA0(v48);
    if (!v49)
    {
LABEL_64:
      sub_1C4C545B4();
      v56 = v66;
      if (!v32)
      {
        sub_1C4B8BB5C();
        if (v65 <= 0xE && v57 == v64 && v58 == v56)
        {

          *(v67 + 34) = 1;
        }

        else
        {
          v61 = sub_1C44F95AC(v57, v58);
          v63 = v62;
          sub_1C4CCDA9C(v61, v62);

          sub_1C4434000(v61, v63);
        }

        return;
      }

      goto LABEL_36;
    }

    v50 = v49;
    v51 = 0;
    v84 = v48 & 0xC000000000000001;
    v78 = 0x80000001C4F87C40;
    v79 = (v48 & 0xFFFFFFFFFFFFFF8);
    v77 = 0x80000001C4F87C20;
    v75 = 0xD000000000000010;
    while (1)
    {
      if (v84)
      {
        v52 = MEMORY[0x1C6940F90](v51, v48);
      }

      else
      {
        if (v51 >= *(v79 + 2))
        {
          goto LABEL_81;
        }

        v52 = *(v48 + 8 * v51 + 32);
      }

      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
        os_unfair_lock_unlock((v29 + 24));
        __break(1u);
        return;
      }

      if ((v31 & 1) == 0)
      {
        if (v52[32] != 1)
        {
          break;
        }

        v29 = 0xED00006465726975;
        switch(v52[33])
        {
          case 1:
            v29 = v78;
            break;
          case 2:
            break;
          case 3:
            v29 = 0xEA00000000007365;
            break;
          case 4:

            goto LABEL_59;
          default:
            v29 = v77;
            break;
        }

        v54 = sub_1C4F02938();

        if (v54)
        {
          break;
        }
      }

      v29 = v72;
      sub_1C4C553F8();
      if (v32)
      {

        goto LABEL_36;
      }

      if (v31)
      {
        goto LABEL_60;
      }

      v29 = sub_1C4F01948();

      if (v29)
      {
        *v76 = 1;
        goto LABEL_64;
      }

LABEL_61:
      ++v51;
      if (v53 == v50)
      {
        goto LABEL_64;
      }
    }

LABEL_59:
    v52[34] = 1;
LABEL_60:

    goto LABEL_61;
  }
}

uint64_t sub_1C4C55290()
{
  v0 = sub_1C4F00978();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F00178();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v5, "SiriRemembersViewGenerator: performUpdate: fullCoverage = true", v6, 2u);
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);

  sub_1C4EFD8A8();
}

void sub_1C4C553F8()
{
  sub_1C4C55464();
  if (!v0)
  {
    v2 = v1;
    if (v1 && (sub_1C4F01948() & 1) != 0)
    {
      sub_1C4CC06D4(v2);
    }

    else
    {
      sub_1C444D5B8(v2);
    }

    swift_unknownObjectRelease();
  }
}

void sub_1C4C55464()
{
  sub_1C43FE628();
  v83 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v72 = v9;
  v11 = v10;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v69 = v13;
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v68 = v15 - v14;
  sub_1C43FBE44();
  v16 = sub_1C4F00978();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v71 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v75 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v73 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  v28 = *(v11 + 192);
  v77 = *(v11 + 184);
  v80 = v28;
  v74 = sub_1C44505F8();
  v81 = v18;
  v82 = v29;
  v30 = *(v11 + 136);
  v76 = v30;
  if (!v30)
  {
    v67 = [objc_opt_self() platform];
LABEL_5:
    sub_1C4CC0AAC();
    v34 = v6;
    if (v4)
    {
      v35 = v80;
      swift_unknownObjectRelease();
      v78 = 0;
LABEL_7:
      v36 = v75;
      sub_1C4F00178();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CB8();

      v39 = os_log_type_enabled(v37, v38);
      v65 = v34;
      if (v39)
      {
        sub_1C43FECF0();
        v40 = swift_slowAlloc();
        v66 = v2;
        v41 = v40;
        sub_1C43FEC60();
        v42 = v8;
        v43 = swift_slowAlloc();
        v84[0] = v43;
        *v41 = 136315138;
        *(v41 + 4) = sub_1C441D828(v77, v35, v84);
        _os_log_impl(&dword_1C43F8000, v37, v38, "SiriRemembersViewGenerator: processStream %s", v41, 0xCu);
        sub_1C440962C(v43);
        v8 = v42;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C442EDAC();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      (*(v81 + 8))(v36, v16);
      v44 = objc_autoreleasePoolPush();
      v45 = v83;
      v46 = sub_1C4C6C820();
      if (!v45)
      {
        v47 = v46;
        sub_1C4C55F18(v46, v78, v77, v80, v74, v82, v76 == 0, v67, v72, v8, v65);

        objc_autoreleasePoolPop(v44);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v44);
LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v78 = v33;
    v48 = v83;
    sub_1C4C538B0(v11, v8, v6);
    if (v48)
    {

      goto LABEL_14;
    }

    v66 = v2;
    sub_1C4441C50(*(v11 + 33));
    if (v55 == 0xD000000000000013 && 0x80000001C4F87C40 == v54)
    {

      v35 = v80;
    }

    else
    {
      v2 = sub_1C4F02938();

      v35 = v80;
      if ((v2 & 1) == 0)
      {
        v83 = 0;
        sub_1C442EDAC();
        goto LABEL_7;
      }
    }

    v79 = v16;
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v57 = sub_1C4F00968();
    v2 = sub_1C4F01CF8();

    if (os_log_type_enabled(v57, v2))
    {
      sub_1C43FECF0();
      v58 = swift_slowAlloc();
      v83 = v8;
      v59 = v58;
      sub_1C43FEC60();
      v60 = swift_slowAlloc();
      v84[0] = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_1C441D828(v77, v35, v84);
      _os_log_impl(&dword_1C43F8000, v57, v2, "SiriRemembersViewGenerator: processStream %s: processing tombstones", v59, 0xCu);
      sub_1C440962C(v60);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v8 = v83;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    (*(v81 + 8))(v73, v79);
    sub_1C442EDAC();
    sub_1C4C55C7C(v61, v62, v63);
    v83 = 0;
    v16 = v79;
    v35 = v80;
    goto LABEL_7;
  }

  v79 = v16;
  v84[3] = &_s24SiriInferenceFeatureFlagON;
  v84[4] = sub_1C4C5A97C();
  LOBYTE(v84[0]) = 1;
  v31 = v30;
  v32 = sub_1C4EFA738();
  sub_1C440962C(v84);
  if (v32)
  {
    v67 = [v31 platform];

    v16 = v79;
    goto LABEL_5;
  }

  sub_1C4F00178();
  v49 = sub_1C4F00968();
  sub_1C4F01CF8();
  v50 = sub_1C44016D0();
  if (os_log_type_enabled(v50, v51))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C446C0D0(&dword_1C43F8000, v52, v53, "SiriRemembersViewGenerator: processStream: ignoring remote stream since siriRemembersPrivateDeviceSync feature flag is disabled.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v81 + 8))(v27, v79);
LABEL_18:
  sub_1C44109F8();
}

uint64_t sub_1C4C55C7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  v8 = sub_1C4F01108();
  v10 = a3[17];
  v9 = a3[18];
  v32[0] = 0;
  v11 = [v7 deletedEventTimestampsForStream:v8 account:v9 device:v10 bookmark:sub_1C4CC064C() error:v32];

  swift_unknownObjectRelease();
  v12 = v32[0];
  if (v11)
  {
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v13 = sub_1C4F01678();
    v14 = v12;

    sub_1C44505F8();
    v16 = v15;
    v17 = sub_1C4428DA0(v13);
    if (v17)
    {
      v18 = v17;
      v32[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D100(0, v17 & ~(v17 >> 63), 0);
      if (v18 < 0)
      {
        __break(1u);
      }

      v29 = v16;
      v30 = v5;
      v31 = v4;
      v19 = 0;
      v20 = v32[0];
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1C6940F90](v19, v13);
        }

        else
        {
          v21 = *(v13 + 8 * v19 + 32);
        }

        v22 = v21;
        [v21 doubleValue];
        v24 = v23;

        v32[0] = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_1C459D100(v25 > 1, v26 + 1, 1);
          v20 = v32[0];
        }

        ++v19;
        v20[2] = v26 + 1;
        v20[v26 + 4] = v24;
      }

      while (v18 != v19);
    }

    sub_1C4C59768();
  }

  else
  {
    v27 = v32[0];
    sub_1C4EF97A8();

    return swift_willThrow();
  }
}

uint64_t sub_1C4C55F18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1C43FBDBC();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_1C43FBDBC();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = v14 + 16;
  v31 = objc_autoreleasePoolPush();
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = v13;
  v38 = sub_1C4C5AA94;
  v39 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C4442530;
  v37 = &unk_1F4405500;
  v25 = _Block_copy(&aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C43FBDBC();
  v17 = swift_allocObject();
  swift_weakInit();
  sub_1C43FBDBC();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  *(v19 + 32) = v27;
  *(v19 + 40) = a7;
  *(v19 + 48) = a8;
  *(v19 + 56) = a10;
  *(v19 + 64) = a5;
  *(v19 + 72) = a6;
  *(v19 + 80) = a3;
  *(v19 + 88) = a4;
  *(v19 + 96) = v14;
  v38 = sub_1C4C5AAA0;
  v39 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C462BCF4;
  v37 = &unk_1F44055A0;
  v20 = _Block_copy(&aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v21 = [a1 drivableSinkWithBookmark:a2 completion:v25 shouldContinue:v20];
  _Block_release(v20);
  _Block_release(v25);

  objc_autoreleasePoolPop(v31);
  swift_beginAccess();
  v22 = *(v14 + 16);
  if (v22)
  {
    swift_willThrow();
    v23 = v22;
  }

  else
  {
    swift_beginAccess();
    v15 = *(v13 + 16);
    swift_unknownObjectRetain();
  }

  return v15;
}

uint64_t sub_1C4C56238(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1C4F00978();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v34[-1] - v16;
  if ([a1 state] == 1)
  {
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = a1;
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();

    if (os_log_type_enabled(v19, v20))
    {
      v33 = v10;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34[0] = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_1C441D828(a3, a4, v34);
      *(v21 + 12) = 2112;
      v24 = [v18 error];
      if (v24)
      {
        v24 = _swift_stdlib_bridgeErrorToNSError();
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *(v21 + 14) = v24;
      *v22 = v25;
      _os_log_impl(&dword_1C43F8000, v19, v20, "SiriRemembersViewGenerator: failed to update from %s. Error: %@", v21, 0x16u);
      sub_1C4C5AAE8(v22, &qword_1EC0BDA00);
      MEMORY[0x1C6942830](v22, -1, -1);
      sub_1C440962C(v23);
      MEMORY[0x1C6942830](v23, -1, -1);
      MEMORY[0x1C6942830](v21, -1, -1);

      return (*(v11 + 8))(v17, v33);
    }

    else
    {

      return (*(v11 + 8))(v17, v10);
    }
  }

  else
  {
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CB8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v33 = v10;
      v29 = a3;
      v30 = v28;
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1C441D828(v29, a4, v34);
      _os_log_impl(&dword_1C43F8000, v26, v27, "SiriRemembersViewGenerator: finished update from %s", v30, 0xCu);
      sub_1C440962C(v31);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);

      (*(v11 + 8))(v13, v33);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    swift_beginAccess();
    *(a5 + 16) = a2;
    swift_unknownObjectRelease();
    return swift_unknownObjectRetain();
  }
}

id sub_1C4C565EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a7;
  v51 = a8;
  v52 = a4;
  v14 = sub_1C4F00978();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v20 = Strong;
  swift_beginAccess();
  v49 = swift_weakLoadStrong();
  if (!v49)
  {

LABEL_34:
    v32 = 0;
    return (v32 & 1);
  }

  v47 = v14;
  v48 = v15;
  v44 = a10;
  v45 = a9;
  v46 = a11;
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      result = [a1 respondsToSelector_];
      if (result)
      {
        [a1 timestamp];
        sub_1C4C56E74(v22, a5 & 1, a6, v20, v50, v51, v45, v49);
LABEL_33:
        swift_unknownObjectRelease();
LABEL_42:
        v43 = sub_1C4F01948();

        v32 = v43 ^ 1;
        return (v32 & 1);
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      result = [a1 respondsToSelector_];
      if (result)
      {
        [a1 timestamp];
        sub_1C4C56F98(v25, a5 & 1, a6, v20, v50, v51, v45, v49);
        goto LABEL_33;
      }

      goto LABEL_45;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      result = [a1 respondsToSelector_];
      if (result)
      {
        [a1 timestamp];
        sub_1C4C570BC(v27, a5 & 1, a6, v20, v50, v51, v45, v49);
        goto LABEL_33;
      }

      goto LABEL_46;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      result = [a1 respondsToSelector_];
      if (result)
      {
        [a1 timestamp];
        sub_1C4C571E0(v29, a5 & 1, a6, v20, v50, v51, v45, v49);
        goto LABEL_33;
      }

      goto LABEL_47;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_eventBody))
  {
LABEL_36:
    sub_1C4F00178();
    v33 = v46;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_unknownObjectRetain();
    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CE8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53[0] = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_1C441D828(v44, v33, v53);
      *(v36 + 12) = 2080;
      if ([a1 respondsToSelector_])
      {
        v38 = [a1 eventBody];
      }

      else
      {
        v38 = 1;
      }

      v39 = v48;
      v53[4] = v38;
      sub_1C456902C(&unk_1EC0C5048, &unk_1C4F5F400);
      v40 = sub_1C4F01198();
      v42 = sub_1C441D828(v40, v41, v53);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_1C43F8000, v34, v35, "SiriRemembersViewGenerator: receiveInput error: unknown event body in %s: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v37, -1, -1);
      MEMORY[0x1C6942830](v36, -1, -1);

      (*(v39 + 8))(v18, v47);
    }

    else
    {

      (*(v48 + 8))(v18, v47);
    }

    goto LABEL_42;
  }

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v31 = v30;
  result = [a1 respondsToSelector_];
  if (result)
  {
    [a1 timestamp];
    sub_1C4C57304(v31, a5 & 1, a6, v20, v50, v51, v45, v49);
    goto LABEL_33;
  }

LABEL_48:
  __break(1u);
  return result;
}

void sub_1C4C57428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  v364 = v21;
  v358 = v24;
  v359 = v25;
  v336 = v26;
  v365 = v27;
  *&v349 = v28;
  v354 = v29;
  v333 = v30;
  v32 = v31;
  v331 = sub_1C4EFD888();
  sub_1C43FCDF8();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v334 = v37 - v36;
  sub_1C43FBE44();
  v38 = sub_1C4EFD968();
  sub_1C43FCDF8();
  v332 = v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  v352 = v44;
  v45 = sub_1C456902C(&qword_1EC0C5068, &qword_1C4F5F410);
  v46 = sub_1C43FBD18(v45);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v356 = v49;
  sub_1C43FBE44();
  v344 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v339 = v50;
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FD230();
  v337 = v56;
  sub_1C43FBE44();
  v363 = sub_1C4F00978();
  sub_1C43FCDF8();
  v360 = v57;
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FD230();
  v347 = v63;
  v64 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v65 = sub_1C43FBD18(v64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v312 - v71;
  v73 = sub_1C456902C(&unk_1EC0C5070, qword_1C4F5F418);
  v74 = sub_1C43FBD18(v73);
  MEMORY[0x1EEE9AC00](v74);
  v366 = &v312 - v75;
  sub_1C43FBE44();
  v76 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v78 = v77;
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBCC4();
  v82 = v81 - v80;
  v83 = sub_1C4EFD838();
  sub_1C43FCDF8();
  v361 = v84;
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FD230();
  v362 = v89;
  v357 = v32;
  v90 = sub_1C45B1F9C(v32, &selRef_identifier);
  if (!v91)
  {
    sub_1C4EFD6D8();
    sub_1C441A8B8();
    v106 = sub_1C4C5AB40(v104, v105, MEMORY[0x1E69A9350]);
    sub_1C43FFC70(v106);
    sub_1C43FBDF0();
    *v107 = 0xD000000000000025;
    v107[1] = v108;
    sub_1C440A6B8();
    (*(v109 + 104))();
    swift_willThrow();
    goto LABEL_93;
  }

  v92 = v91;
  *&v328 = v34;
  v329 = v38;
  v93 = v90;
  v94 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1C4F0D130;
  v96 = MEMORY[0x1E69A0138];
  *(v95 + 56) = MEMORY[0x1E69E6158];
  *(v95 + 64) = v96;
  *(v95 + 32) = v93;
  *(v95 + 40) = v92;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  (*(v78 + 8))(v82, v76);
  sub_1C43FCF64();
  sub_1C440BAA8(v97, v98, v99, v76);
  sub_1C43FF80C();
  sub_1C4C5AB40(v100, v101, MEMORY[0x1E69A9358]);
  sub_1C440BFD0();
  v102 = v364;
  sub_1C4EFB408();
  v103 = v102;
  if (v102)
  {

    sub_1C4C5AAE8(v369, &unk_1EC0BC770);
    sub_1C4C5AAE8(v72, &unk_1EC0C06C0);
LABEL_93:
    sub_1C44109F8();
    return;
  }

  v110 = v83;
  v324 = v93;
  v364 = v94;
  v326 = v76;
  v111 = a21;
  sub_1C4C5AAE8(v369, &unk_1EC0BC770);
  sub_1C4C5AAE8(v72, &unk_1EC0C06C0);
  v112 = sub_1C44157D4(v366, 1, v83);
  v113 = MEMORY[0x1E69A0168];
  v327 = v83;
  v325 = v111;
  if (v112 == 1)
  {
    sub_1C4C5AAE8(v366, &unk_1EC0C5070);
    v114 = v348;
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v115 = sub_1C4F00968();
    v116 = sub_1C4F01CC8();

    v117 = os_log_type_enabled(v115, v116);
    v118 = MEMORY[0x1E69A0138];
    if (v117)
    {
      sub_1C43FECF0();
      v119 = v114;
      v120 = swift_slowAlloc();
      sub_1C43FEC60();
      v110 = swift_slowAlloc();
      v369[0] = v110;
      *v120 = 136315138;
      v121 = sub_1C44347A0();

      *(v120 + 4) = v121;
      _os_log_impl(&dword_1C43F8000, v115, v116, "SiriRemembersViewGenerator: receiveInput: treating %s as a new interaction.", v120, 0xCu);
      sub_1C440962C(v110);
      sub_1C4425528();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v122 = v119;
      v118 = MEMORY[0x1E69A0138];
      (*(v360 + 8))(v122, v363);
    }

    else
    {

      (*(v360 + 8))(v114, v363);
    }

    v133 = MEMORY[0x1E69E6158];
    v357;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01D28();
    sub_1C441BB28();
    sub_1C4EFD738();
    (*(v361 + 32))(v362, v92, v110);
    v366 = v365[3];
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_1C4F0FC40;
    v135 = sub_1C4EFD798();
    *(v134 + 56) = v133;
    *(v134 + 64) = v118;
    *(v134 + 32) = v135;
    *(v134 + 40) = v136;
    v137 = sub_1C4EFD7D8();
    *(v134 + 96) = v133;
    *(v134 + 104) = v118;
    *(v134 + 72) = v137;
    *(v134 + 80) = v138;
    v139 = sub_1C4EFD7A8();
    *(v134 + 136) = v133;
    *(v134 + 144) = v118;
    *(v134 + 112) = v139;
    *(v134 + 120) = v140;
    v141 = sub_1C4EFD808();
    *(v134 + 176) = v133;
    *(v134 + 184) = v118;
    *(v134 + 152) = v141;
    *(v134 + 160) = v142;
    v143 = sub_1C4EFD6E8();
    v126 = MEMORY[0x1E69A0150];
    *(v134 + 216) = MEMORY[0x1E69E6370];
    *(v134 + 224) = v126;
    *(v134 + 192) = v143 & 1;
    v144 = sub_1C4EFD728();
    v145 = MEMORY[0x1E69E72F0];
    v146 = MEMORY[0x1E69A01B8];
    *(v134 + 256) = MEMORY[0x1E69E72F0];
    *(v134 + 264) = v146;
    *(v134 + 232) = v144;
    v147 = sub_1C4EFD818();
    *(v134 + 296) = v145;
    *(v134 + 304) = v146;
    *(v134 + 272) = v147;
    v148 = sub_1C4EFD758();
    *(v134 + 336) = v145;
    *(v134 + 344) = v146;
    *(v134 + 312) = v148;
    v149 = v337;
    sub_1C4EFD828();
    sub_1C4EF9AD8();
    v151 = v150;
    (*(v339 + 8))(v149, v344);
    v152 = MEMORY[0x1E69E63B0];
    *(v134 + 376) = MEMORY[0x1E69E63B0];
    *(v134 + 384) = v113;
    *(v134 + 352) = v151;
    sub_1C4EFD768();
    *(v134 + 416) = v152;
    *(v134 + 424) = v113;
    *(v134 + 392) = v153;
    v154 = sub_1C4EFD7E8();
    if (v155)
    {
      v156 = MEMORY[0x1E69A0138];
      v157 = MEMORY[0x1E69E6158];
    }

    else
    {
      v154 = 0;
      v157 = 0;
      v156 = 0;
      *(v134 + 448) = 0;
    }

    v103 = 0;
    *(v134 + 432) = v154;
    *(v134 + 440) = v155;
    *(v134 + 456) = v157;
    *(v134 + 464) = v156;
    v163 = sub_1C4EFD718();
    *(v134 + 496) = MEMORY[0x1E69E6530];
    *(v134 + 504) = MEMORY[0x1E69A0180];
    *(v134 + 472) = v163;
    sub_1C4EFD788();
    *(v134 + 536) = MEMORY[0x1E69E63B0];
    *(v134 + 544) = MEMORY[0x1E69A0168];
    *(v134 + 512) = v164;
    v165 = sub_1C4EFD7F8();
    *(v134 + 576) = MEMORY[0x1E69E6370];
    *(v134 + 584) = v126;
    *(v134 + 552) = v165 & 1;
    v166 = sub_1C4EFD6F8();
    *(v134 + 616) = v145;
    *(v134 + 624) = v146;
    *(v134 + 592) = v166;
    v167 = sub_1C4EFD778();
    *(v134 + 656) = v145;
    *(v134 + 664) = v146;
    *(v134 + 632) = v167;
    *(v134 + 696) = sub_1C4EFD858();
    *(v134 + 704) = sub_1C4C5AB40(&qword_1EDDFA208, MEMORY[0x1E69A9378], MEMORY[0x1E69A9370]);
    sub_1C4422F90((v134 + 672));
    sub_1C4EFD748();
    v168 = v338;
    sub_1C4EFB728();
    sub_1C440DA94(v168);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v168, &unk_1EC0C06C0);
    sub_1C4EFBF18();
    sub_1C4EFD7C8();
    sub_1C4425528();
  }

  else
  {
    v123 = *(v361 + 32);
    v124 = v355;
    v125 = v366;
    v366 = (v361 + 32);
    *&v349 = v123;
    v123(v355, v125, v83);
    v126 = v347;
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v127 = sub_1C4F00968();
    v128 = sub_1C4F01CC8();

    if (os_log_type_enabled(v127, v128))
    {
      sub_1C43FECF0();
      v129 = swift_slowAlloc();
      sub_1C43FEC60();
      v130 = swift_slowAlloc();
      v369[0] = v130;
      *v129 = 136315138;
      v131 = sub_1C44347A0();

      *(v129 + 4) = v131;
      v103 = 0;
      v124 = v355;
      _os_log_impl(&dword_1C43F8000, v127, v128, "SiriRemembersViewGenerator: receiveInput: treating %s as an update.", v129, 0xCu);
      sub_1C440962C(v130);
      v132 = v327;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      v132 = v83;
    }

    (*(v360 + 8))(v126, v363);
    v158 = v362;
    v159 = v345;
    sub_1C4EFD708();
    v160 = v158;
    v146 = v132;
    (v349)(v160, v159, v132);
    sub_1C43FF80C();
    sub_1C4C5AB40(v161, v162, MEMORY[0x1E69A9360]);
    sub_1C4EFBA68();
    (*(v361 + 8))(v124, v132);
  }

  v169 = sub_1C4EFD798();
  sub_1C4C54368(v169, v170);
  sub_1C441E810();

  v171 = v333;
  v172 = sub_1C4428DA0(v333);
  v173 = 0;
  v318 = v171 & 0xC000000000000001;
  v317 = v171 & 0xFFFFFFFFFFFFFF8;
  v316 = v171 + 32;
  v357 = (v332 + 32);
  v338 = (v332 + 16);
  v358 = (v332 + 8);
  v347 = (v360 + 8);
  v324 = (v339 + 8);
  v314 = v328 + 8;
  v349 = xmmword_1C4F0CE60;
  *(&v174 + 1) = 12;
  v328 = xmmword_1C4F0F820;
  *&v174 = 136315138;
  v320 = v174;
  *&v174 = 134218240;
  v313 = v174;
  *(&v174 + 1) = 6;
  v312 = xmmword_1C4F0C890;
  *&v174 = 136642819;
  v321 = v174;
  v315 = v172;
  while (1)
  {
    if (v173 == v172)
    {
      goto LABEL_92;
    }

    if (v318)
    {
      v175 = v173;
      v176 = MEMORY[0x1C6940F90](v173, v333);
    }

    else
    {
      if (v173 >= *(v317 + 16))
      {
        goto LABEL_101;
      }

      v175 = v173;
      v176 = *(v316 + 8 * v173);
    }

    v177 = v176;
    v319 = v175 + 1;
    if (__OFADD__(v175, 1))
    {
      break;
    }

    v332 = sub_1C45B1F9C(v176, &selRef_key);
    v336 = v178;
    if (!v178)
    {
      sub_1C4EFD6D8();
      sub_1C441A8B8();
      v303 = sub_1C4C5AB40(v301, v302, MEMORY[0x1E69A9350]);
      sub_1C43FFC70(v303);
      sub_1C43FBDF0();
      sub_1C440548C(v304, v305);
      sub_1C440A6B8();
      (*(v306 + 104))(v307, v308);
      swift_willThrow();

LABEL_92:
      v297 = sub_1C445008C();
      v298(v297, v146);
      goto LABEL_93;
    }

    v322 = v177;
    v179 = [v177 entities];
    v180 = sub_1C4461BB8(0, &qword_1EDDF05C0, 0x1E698EF28);
    sub_1C43FBC98();
    v181 = sub_1C4F01678();

    if (v354)
    {
      sub_1C4414724();
      goto LABEL_45;
    }

    v182 = v103;
    sub_1C4C52858(15, v181);
    v185 = v184;
    v146 = (v186 >> 1);
    if ((v186 & 1) == 0)
    {
      v187 = v146 - v184;
      if (__OFSUB__(v146, v184))
      {
        goto LABEL_103;
      }

      if (v187)
      {
LABEL_29:
        if (v187 < 1)
        {
          v181 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v366 = v183;
          sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
          v181 = swift_allocObject();
          v188 = j__malloc_size(v181);
          *(v181 + 16) = v187;
          *(v181 + 24) = (2 * ((v188 - 32) / 8)) | 1;
        }

        if (v185 == v146)
        {
          goto LABEL_105;
        }

        swift_arrayInitWithCopy();
        goto LABEL_43;
      }

LABEL_42:
      v181 = MEMORY[0x1E69E7CC0];
LABEL_43:
      sub_1C4414724();
      sub_1C4425528();
      v103 = v182;
      goto LABEL_44;
    }

    v366 = v183;
    sub_1C4F02998();
    swift_unknownObjectRetain_n();
    v189 = swift_dynamicCastClass();
    if (!v189)
    {
      swift_unknownObjectRelease();
      v189 = MEMORY[0x1E69E7CC0];
    }

    v126 = *(v189 + 16);

    v187 = v146 - v185;
    if (__OFSUB__(v146, v185))
    {
      goto LABEL_104;
    }

    if (v126 != v187)
    {
      swift_unknownObjectRelease();
      sub_1C441E810();
      v183 = v366;
      if (v187)
      {
        goto LABEL_29;
      }

      goto LABEL_42;
    }

    v181 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    sub_1C4414724();
    sub_1C4425528();
    v103 = v182;
    sub_1C441E810();
    if (v181)
    {
      goto LABEL_45;
    }

    v181 = MEMORY[0x1E69E7CC0];
LABEL_44:
    swift_unknownObjectRelease();
LABEL_45:
    if (v181 >> 62)
    {
      v190 = sub_1C4F02128();
    }

    else
    {
      v190 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v190)
    {
      v191 = 0;
      v339 = v365[5];
      v345 = v181 & 0xC000000000000001;
      v323 = v181 & 0xFFFFFFFFFFFFFF8;
      v346 = v181;
      v337 = v190;
      do
      {
        if (v345)
        {
          v192 = MEMORY[0x1C6940F90](v191, v181);
        }

        else
        {
          if (v191 >= *(v323 + 16))
          {
            goto LABEL_100;
          }

          v192 = *(v181 + 8 * v191 + 32);
        }

        v366 = v192;
        v359 = v191 + 1;
        if (__OFADD__(v191, 1))
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        sub_1C43FCF64();
        sub_1C440BAA8(v193, v194, v195, v180);
        v196 = swift_allocObject();
        sub_1C442F428(v196, &a9);
        v197 = sub_1C45B1F9C(v366, &selRef_identifier);
        if (v198)
        {
          v199 = MEMORY[0x1E69E6158];
          v200 = MEMORY[0x1E69A0138];
        }

        else
        {
          v197 = 0;
          v199 = 0;
          v200 = 0;
          v196[3].n128_u64[0] = 0;
        }

        v196[2].n128_u64[0] = v197;
        v196[2].n128_u64[1] = v198;
        v196[3].n128_u64[1] = v199;
        v196[4].n128_u64[0] = v200;
        v201 = sub_1C45B1F9C(v366, &selRef_type);
        if (v202)
        {
          v203 = MEMORY[0x1E69E6158];
          v204 = MEMORY[0x1E69A0138];
        }

        else
        {
          v201 = 0;
          v203 = 0;
          v204 = 0;
          v196[5].n128_u64[1] = 0;
        }

        v196[4].n128_u64[1] = v201;
        v196[5].n128_u64[0] = v202;
        v196[6].n128_u64[0] = v203;
        v196[6].n128_u64[1] = v204;
        sub_1C4EFB728();
        sub_1C440DA94(v126);
        sub_1C4C5AB40(&unk_1EDDFA1E8, MEMORY[0x1E69A9398], MEMORY[0x1E69A9390]);
        sub_1C440BFD0();
        v205 = v353;
        sub_1C4EFB408();
        sub_1C4C5AAE8(v369, &unk_1EC0BC770);
        sub_1C4C5AAE8(v126, &unk_1EC0C06C0);
        v206 = sub_1C44157D4(v205, 1, v180);
        v360 = v191;
        if (v206 == 1)
        {
          sub_1C4C5AAE8(v205, &qword_1EC0C5068);
          v207 = v366;
          sub_1C4EFD828();
          sub_1C441BB28();
          sub_1C4EFD828();
          sub_1C4EFD928();
          v348 = 0;
          v355 = v365[6];
          v208 = swift_allocObject();
          sub_1C442F428(v208, &v351);
          swift_beginAccess();
          v209 = sub_1C4EFD798();
          v210 = MEMORY[0x1E69E6158];
          v208[3].n128_u64[1] = MEMORY[0x1E69E6158];
          v211 = MEMORY[0x1E69A0138];
          v208[4].n128_u64[0] = MEMORY[0x1E69A0138];
          v208[2].n128_u64[0] = v209;
          v208[2].n128_u64[1] = v212;
          v213 = sub_1C4EFD7D8();
          v208[6].n128_u64[0] = v210;
          v208[6].n128_u64[1] = v211;
          v208[4].n128_u64[1] = v213;
          v208[5].n128_u64[0] = v214;
          v215 = sub_1C4EFD7A8();
          v208[8].n128_u64[1] = v210;
          v208[9].n128_u64[0] = v211;
          v208[7].n128_u64[0] = v215;
          v208[7].n128_u64[1] = v216;
          v217 = sub_1C4EFD808();
          v208[11].n128_u64[0] = v210;
          v208[11].n128_u64[1] = v211;
          v208[9].n128_u64[1] = v217;
          v208[10].n128_u64[0] = v218;
          sub_1C441BB28();
          sub_1C4EFD948();
          sub_1C4EF9AD8();
          v220 = v219;
          v146 = v324;
          v221 = *v324;
          v222 = v344;
          (*v324)(v210, v344);
          v223 = MEMORY[0x1E69E63B0];
          v208[13].n128_u64[1] = MEMORY[0x1E69E63B0];
          v224 = MEMORY[0x1E69A0168];
          v208[14].n128_u64[0] = MEMORY[0x1E69A0168];
          v208[12].n128_u64[0] = v220;
          sub_1C441BB28();
          sub_1C4EFD958();
          sub_1C4EF9AD8();
          v226 = v225;
          v227 = v222;
          v228 = v326;
          v221(v210, v227);
          v208[16].n128_u64[0] = v223;
          v208[16].n128_u64[1] = v224;
          v208[14].n128_u64[1] = v226;
          sub_1C441BB28();
          sub_1C4EFB728();
          sub_1C43FBD94();
          sub_1C440BAA8(v229, v230, v231, v228);
          v232 = v348;
          sub_1C4EFC0A8();
          if (v232)
          {

            sub_1C4435534();

            sub_1C441C598();

            sub_1C4C5AAE8(v210, &unk_1EC0C06C0);
            sub_1C4C5AAE8(v356, &qword_1EC0C5068);
            v299 = sub_1C441D430();
            v300(v299);
            (*v358)(v351, v329);
            goto LABEL_93;
          }

          v126 = 0;
          sub_1C4C5AAE8(v210, &unk_1EC0C06C0);
          sub_1C4EFBF18();
          v233 = v351;
          swift_beginAccess();
          sub_1C4EFD7C8();
          swift_endAccess();
          v234 = v340;
          sub_1C4F00178();
          v235 = sub_1C4F00968();
          v236 = sub_1C4F01CC8();
          v237 = sub_1C44016D0();
          if (os_log_type_enabled(v237, v238))
          {
            sub_1C43FECF0();
            v239 = v233;
            v240 = v234;
            v241 = swift_slowAlloc();
            sub_1C43FEC60();
            v242 = swift_slowAlloc();
            v369[0] = v242;
            *v241 = v320;
            v243 = sub_1C4EFD798();
            v146 = sub_1C441D828(v243, v244, v369);

            *(v241 + 4) = v146;
            _os_log_impl(&dword_1C43F8000, v235, v236, "SiriRemembersViewGenerator: receiveInput: inserted new entity: %s", v241, 0xCu);
            sub_1C440962C(v242);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();

            sub_1C442C080();
            v245 = v240;
            v233 = v239;
          }

          else
          {

            sub_1C442C080();
            v245 = v234;
          }

          v146(v245, v363);
          v261 = v356;
          sub_1C4C5AAE8(v356, &qword_1EC0C5068);
          v180 = v329;
          (*v338)(v261, v233, v329);
          sub_1C43FBD94();
          sub_1C440BAA8(v266, v267, v268, v180);
          v355 = *v358;
          v355(v233, v180);
          v103 = 0;
          v265 = v350;
        }

        else
        {
          v126 = *v357;
          v246 = v205;
          v247 = v352;
          (*v357)(v352, v246, v180);
          sub_1C441BB28();
          sub_1C4F00178();
          v146 = v342;
          (*v338)(v342, v247, v180);
          v248 = v180;
          v249 = sub_1C4F00968();
          v250 = sub_1C4F01CC8();
          v251 = sub_1C44016D0();
          if (os_log_type_enabled(v251, v252))
          {
            sub_1C43FECF0();
            v253 = swift_slowAlloc();
            sub_1C43FEC60();
            v254 = swift_slowAlloc();
            v369[0] = v254;
            *v253 = v321;
            v255 = sub_1C4EFD798();
            v256 = v146;
            v146 = v257;
            v355 = *v358;
            v355(v256, v248);
            v258 = sub_1C441D828(v255, v146, v369);

            *(v253 + 4) = v258;
            _os_log_impl(&dword_1C43F8000, v249, v250, "SiriRemembersViewGenerator: receiveInput: found existing entity: %{sensitive}s", v253, 0xCu);
            sub_1C440962C(v254);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v103 = 0;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();

            sub_1C442C080();
            v259 = v343;
          }

          else
          {

            v355 = *v358;
            v355(v146, v180);
            sub_1C442C080();
            v259 = v191;
          }

          v146(v259, v363);
          v180 = v248;
          v260 = v352;
          sub_1C4C59BF0();
          v261 = v356;
          sub_1C4C5AAE8(v356, &qword_1EC0C5068);
          v126(v261, v260, v248);
          sub_1C43FBD94();
          sub_1C440BAA8(v262, v263, v264, v248);
          v265 = v350;
        }

        sub_1C4C5AB98(v261, v265, &qword_1EC0C5068, &qword_1C4F5F410);
        if (sub_1C44157D4(v265, 1, v180) == 1)
        {
          sub_1C4C5AAE8(v261, &qword_1EC0C5068);

          sub_1C4C5AAE8(v265, &qword_1EC0C5068);
          sub_1C4425528();
          sub_1C441E810();
        }

        else
        {
          v126 = 0;
          v269 = v341;
          (*v357)(v341, v265, v180);
          v270 = sub_1C4EFD7B8();
          if ((v271 & 1) == 0)
          {
            v274 = v270;
            v180 = v269;
            v275 = sub_1C4EFD7B8();
            v181 = v346;
            v273 = v360;
            if (v276)
            {

              sub_1C4414724();
              sub_1C4403A3C();
              v277();
              sub_1C4C5AAE8(v356, &qword_1EC0C5068);
              sub_1C4425528();
              v103 = 0;
              sub_1C441E810();
              goto LABEL_76;
            }

            v278 = v275;
            sub_1C4F00178();
            v279 = sub_1C4F00968();
            v280 = sub_1C4F01CC8();
            if (sub_1C43FEB2C(v280))
            {
              v281 = sub_1C440F274();
              *v281 = v313;
              *(v281 + 4) = v274;
              *(v281 + 12) = 2048;
              *(v281 + 14) = v278;
              _os_log_impl(&dword_1C43F8000, v279, v280, "SiriRemembersViewGenerator: receiveInput: joining: %lld <-> %lld", v281, 0x16u);
              v181 = v346;
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            v146(v335, v363);
            v282 = swift_allocObject();
            sub_1C442F428(v282, &a9);
            v283 = MEMORY[0x1E69E7360];
            v284[7] = MEMORY[0x1E69E7360];
            v285 = MEMORY[0x1E69A01D0];
            v284[8] = MEMORY[0x1E69A01D0];
            v284[9] = v278;
            v284[4] = v274;
            v284[12] = v283;
            v284[13] = v285;
            sub_1C441BB28();
            sub_1C4EFB728();
            sub_1C440DA94(v273);
            memset(v369, 0, 40);
            sub_1C4EFB9A8();
            v348 = 0;
            sub_1C4C5AAE8(v369, &unk_1EC0BC770);
            sub_1C4C5AAE8(v273, &unk_1EC0C06C0);
            v146 = v327;
            if (v368)
            {
              v286 = v334;
              goto LABEL_85;
            }

            v286 = v334;
            if (v367)
            {
LABEL_85:
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4EFD878();
              v369[0] = &unk_1F43DD070;
              sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
              sub_1C4C5AB40(&unk_1EDDFA1F8, MEMORY[0x1E69A9388], MEMORY[0x1E69A9380]);
              sub_1C4C1F36C();
              v126 = v331;
              v180 = v286;
              v287 = v348;
              sub_1C4EFBAD8();
              v103 = v287;
              if (v287)
              {

                sub_1C4435534();

                sub_1C441C598();

                v309 = sub_1C447F37C();
                v310(v309);
LABEL_97:
                sub_1C4403A3C();
                v311();
                sub_1C4C5AAE8(v356, &qword_1EC0C5068);
                goto LABEL_92;
              }

              v288 = sub_1C447F37C();
              v289(v288);
            }

            else
            {
              v180 = v365[9];
              v291 = swift_allocObject();
              sub_1C442F428(v291, &v338);
              v292 = MEMORY[0x1E69E7360];
              v293[7] = MEMORY[0x1E69E7360];
              v294 = MEMORY[0x1E69A01D0];
              v293[8] = MEMORY[0x1E69A01D0];
              v293[9] = v278;
              v293[4] = v274;
              v293[12] = v292;
              v293[13] = v294;
              v293[17] = MEMORY[0x1E69E6158];
              v293[18] = MEMORY[0x1E69A0138];
              v293[14] = v332;
              v291[7].n128_u64[1] = sub_1C4435534();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v295 = v330;
              sub_1C4EFB728();
              sub_1C440DA94(v295);
              v296 = v348;
              sub_1C4EFC0A8();
              v103 = v296;
              if (v296)
              {

                sub_1C4435534();

                sub_1C441C598();

                sub_1C4C5AAE8(v295, &unk_1EC0C06C0);
                goto LABEL_97;
              }

              sub_1C4C5AAE8(v295, &unk_1EC0C06C0);
            }

            sub_1C4414724();
            sub_1C4403A3C();
            v290();
            sub_1C4C5AAE8(v356, &qword_1EC0C5068);
            sub_1C441E810();
            goto LABEL_75;
          }

          sub_1C4403A3C();
          v272();
          sub_1C4C5AAE8(v356, &qword_1EC0C5068);
          sub_1C4425528();
          v103 = 0;
          sub_1C441E810();
        }

        v181 = v346;
LABEL_75:
        v273 = v360;
LABEL_76:
        v191 = v273 + 1;
      }

      while (v359 != v337);
    }

    sub_1C4435534();

    sub_1C441C598();

    v172 = v315;
    v173 = v319;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

void sub_1C4C59768()
{
  sub_1C43FE628();
  v54 = v1;
  v47 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v51 = v10;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v55 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v48 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v53 = sub_1C4F00978();
  sub_1C43FCDF8();
  *&v52 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CC8();

  v27 = os_log_type_enabled(v25, v26);
  v46 = v5;
  v49 = v9;
  if (v27)
  {
    v28 = v7;
    v29 = sub_1C440F274();
    sub_1C43FEC60();
    v30 = swift_slowAlloc();
    v50 = v3;
    v31 = v30;
    v56 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_1C441D828(v51, v9, &v56);
    *(v29 + 12) = 2048;
    *(v29 + 14) = *(v28 + 16);

    _os_log_impl(&dword_1C43F8000, v25, v26, "SiriRemembersViewGenerator: deleteInteractions: from %s harvested at %ld different times", v29, 0x16u);
    sub_1C440962C(v31);
    v3 = v50;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v32);
    v7 = v28;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v33);
  }

  else
  {
  }

  (*(v52 + 8))(v24, v53);
  v34 = v54;
  sub_1C4EFBE98();
  if (v34)
  {
LABEL_10:
    sub_1C44109F8();
  }

  else
  {
    v50 = v3;
    v53 = sub_1C4EFD848();
    v36 = v35;
    v56 = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45DB908(&v56);
    v37 = 0;
    v38 = v56;
    v54 = *(v56 + 16);
    v39 = (v48 + 8);
    v52 = xmmword_1C4F0CE60;
    while (1)
    {
      if (v54 == v37)
      {

        sub_1C4C5A0F0(v46);

        goto LABEL_10;
      }

      if (v37 >= *(v38 + 16))
      {
        break;
      }

      v40 = *(v38 + 8 * v37 + 32);
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v41 = swift_allocObject();
      *(v41 + 16) = v52;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = MEMORY[0x1E69A0138];
      *(v41 + 32) = v53;
      *(v41 + 40) = v36;
      *(v41 + 96) = MEMORY[0x1E69E63B0];
      *(v41 + 104) = MEMORY[0x1E69A0168];
      *(v41 + 72) = v40;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB728();
      sub_1C4EFC088();
      v42 = v55;
      (*v39)(v19, v55);
      sub_1C43FCF64();
      sub_1C440BAA8(v43, v44, v45, v42);
      sub_1C4EFC0A8();
      ++v37;
      sub_1C4C5AAE8(v14, &unk_1EC0C06C0);
    }

    __break(1u);

    __break(1u);
  }
}

void sub_1C4C59BF0()
{
  sub_1C43FE628();
  v83 = v1;
  v84 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v78 = v11;
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v77 = v13 - v12;
  v14 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v15 = sub_1C43FBD18(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v80 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v76 - v18;
  v20 = sub_1C45B1F9C(v9, &selRef_fields);
  if (v21)
  {
    v22 = v21;
    v82 = v20;
    v23 = sub_1C45B1F9C(v9, &selRef_fieldsTokens);
  }

  else
  {
    v82 = sub_1C4EFD7A8();
    v22 = v25;
    v23 = sub_1C4EFD808();
  }

  v81 = v23;
  v26 = v24;
  v27 = sub_1C4EFD7B8();
  if (v28 & 1) != 0 || (v29 = v27, v30 = sub_1C4EFD7B8(), (v31))
  {

    sub_1C4EFD6D8();
    sub_1C441A8B8();
    v34 = sub_1C4C5AB40(v32, v33, MEMORY[0x1E69A9350]);
    sub_1C43FFC70(v34);
    sub_1C43FBDF0();
    sub_1C440548C(v35, v36);
    sub_1C440A6B8();
    (*(v37 + 104))();
    swift_willThrow();
    goto LABEL_27;
  }

  v38 = v30;
  v76[0] = v3;
  v76[1] = v7;
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C4F0D480;
  v40 = MEMORY[0x1E69E6158];
  v41 = MEMORY[0x1E69A0138];
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = v41;
  v42 = v83;
  *(v39 + 32) = v83;
  *(v39 + 40) = v5;
  v43 = MEMORY[0x1E69E7360];
  v44 = MEMORY[0x1E69A01D0];
  *(v39 + 96) = MEMORY[0x1E69E7360];
  *(v39 + 104) = v44;
  *(v39 + 72) = v29;
  *(v39 + 136) = v43;
  *(v39 + 144) = v44;
  *(v39 + 112) = v38;
  *(v39 + 176) = v40;
  *(v39 + 184) = v41;
  *(v39 + 152) = v42;
  *(v39 + 160) = v5;
  swift_bridgeObjectRetain_n();
  sub_1C4EFB728();
  v45 = sub_1C4EFB768();
  sub_1C43FBD94();
  sub_1C440BAA8(v46, v47, v48, v45);
  v49 = v84;
  sub_1C4EFC0A8();
  sub_1C4C5AAE8(v19, &unk_1EC0C06C0);
  if (v49)
  {
    goto LABEL_8;
  }

  v50 = v76[0];
  v51 = v81;
  if (v26)
  {
    if (sub_1C4EFD7A8() == v82 && v22 == v52)
    {
    }

    else
    {
      v54 = sub_1C4F02938();

      if ((v54 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (sub_1C4EFD808() == v51 && v26 == v55)
    {

      goto LABEL_9;
    }

    v57 = sub_1C4F02938();

    if (v57)
    {
LABEL_8:

LABEL_9:

      goto LABEL_27;
    }
  }

LABEL_23:
  v83 = *(v50 + 56);
  v84 = v45;
  v58 = swift_allocObject();
  v59 = v58;
  *(v58 + 16) = xmmword_1C4F13950;
  v60 = MEMORY[0x1E69E6158];
  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = MEMORY[0x1E69A0138];
  *(v58 + 32) = v82;
  *(v58 + 40) = v22;
  if (v26)
  {
    v61 = MEMORY[0x1E69A0138];
    v62 = MEMORY[0x1E69E6158];
  }

  else
  {
    v51 = 0;
    v62 = 0;
    v61 = 0;
    *(v58 + 88) = 0;
  }

  v63 = v77;
  *(v58 + 72) = v51;
  *(v58 + 80) = v26;
  *(v58 + 96) = v62;
  *(v58 + 104) = v61;
  sub_1C4EF9CC8();
  sub_1C4EF9AD8();
  v65 = v64;
  (*(v78 + 8))(v63, v79);
  v66 = MEMORY[0x1E69A0168];
  v59[17] = MEMORY[0x1E69E63B0];
  v59[18] = v66;
  v59[14] = v65;
  v67 = sub_1C4EFD798();
  v59[22] = v60;
  v68 = MEMORY[0x1E69A0138];
  v59[23] = MEMORY[0x1E69A0138];
  v59[19] = v67;
  v59[20] = v69;
  v70 = sub_1C4EFD7D8();
  v59[27] = v60;
  v59[28] = v68;
  v59[24] = v70;
  v59[25] = v71;
  v72 = v80;
  sub_1C4EFB728();
  sub_1C43FBD94();
  sub_1C440BAA8(v73, v74, v75, v84);
  sub_1C4EFC0A8();
  sub_1C4C5AAE8(v72, &unk_1EC0C06C0);
LABEL_27:
  sub_1C44109F8();
}

uint64_t sub_1C4C5A0F0(uint64_t a1)
{
  v33 = a1;
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v30 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v34 = sub_1C4F00978();
  v12 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  sub_1C4F00178();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CC8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C43F8000, v17, v18, "SiriRemembersViewGenerator: deleteOrphanedInteractions started", v19, 2u);
    MEMORY[0x1C6942830](v19, -1, -1);
  }

  v20 = *(v12 + 8);
  v20(v16, v34);
  result = sub_1C4EFBED8();
  if (!v1)
  {
    v22 = sub_1C4EFB768();
    sub_1C440BAA8(v11, 1, 1, v22);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v11, &unk_1EC0C06C0);

    sub_1C4B8C3E4(0xD00000000000003DLL, 0x80000001C4FBCED0);
    sub_1C4EFBED8();
    sub_1C440BAA8(v8, 1, 1, v22);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v8, &unk_1EC0C06C0);

    sub_1C4EFBED8();
    v23 = v22;
    v24 = v32;
    sub_1C440BAA8(v32, 1, 1, v23);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v24, &unk_1EC0C06C0);

    sub_1C4EFBED8();
    v25 = v31;
    sub_1C440BAA8(v31, 1, 1, v23);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v25, &unk_1EC0C06C0);

    v26 = v30;
    sub_1C4F00178();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CC8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1C43F8000, v27, v28, "SiriRemembersViewGenerator: deleteOrphanedInteractions completed", v29, 2u);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

    return (v20)(v26, v34);
  }

  return result;
}

uint64_t *sub_1C4C5A5D8()
{
  v2 = sub_1C4EFBED8();
  if (v1)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v2;
    v0[3] = sub_1C44412B8();
    v0[4] = sub_1C4EFBED8();
    v0[5] = sub_1C44412B8();
    v0[6] = sub_1C44412B8();
    v0[7] = sub_1C4418C80();
    v0[8] = sub_1C44412B8();
    v0[9] = sub_1C4418C80();
    v4 = sub_1C44412B8();

    v0[10] = v4;
  }

  return v0;
}

uint64_t sub_1C4C5A8A0()
{

  return v0;
}

uint64_t sub_1C4C5A900()
{
  sub_1C4C5A8A0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4C5A97C()
{
  result = qword_1EDDFCC70;
  if (!qword_1EDDFCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCC70);
  }

  return result;
}

uint64_t sub_1C4C5A9F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1C4F02128();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C5AA48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C4C5AAE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4415D68(a1, a2);
  sub_1C456902C(v3, v4);
  sub_1C440A6B8();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_1C4C5AB40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4C5AB98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C440A6B8();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

void sub_1C4C5ACD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1C4C81AA0(a1, a2, a3);
  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(a4, __src, 0x58uLL);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = 0xD000000000000017;
      *(v8 + 24) = 0x80000001C4FBCAD0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      *(v8 + 48) = v9;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C5ADCC(uint64_t *a1@<X8>)
{
  sub_1C44E9220();
  if (!v1)
  {
    v4 = v3;
    a1[3] = &type metadata for SiriRemembersDatabaseTable;
    a1[4] = &off_1F43FC9B8;
    v5 = swift_allocObject();
    *a1 = v5;
    v6 = sub_1C441A8D0(v5);
    v7 = MEMORY[0x1E69E7CC0];
    *(v6 + 32) = v4;
    *(v6 + 40) = v7;
  }
}

void sub_1C4C5AE5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = (a3 + *(_s6ConfigVMa(0) + 52));
    v12 = v11[1];
    if (v12)
    {
      v13 = v11[6];
      v15 = v11[4];
      v14 = v11[5];
      v17 = v11[2];
      v16 = v11[3];
      v18 = *v11;
      a4[3] = &_s23SiriRemembersViewClientVN;
      a4[4] = &off_1F44056D8;
      v19 = swift_allocObject();
      *a4 = v19;
      v20 = sub_1C441A8D0(v19);
      v21 = MEMORY[0x1E69E7CC0];
      v20[4] = v10;
      v20[5] = v21;
      v20[6] = v18;
      v20[7] = v12;
      v20[8] = v17;
      v20[9] = v16;
      v20[10] = v15;
      v20[11] = v14;
      v20[12] = v13;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v22 = a1;
      *(v22 + 8) = a2;
      *(v22 + 16) = 0xD000000000000016;
      *(v22 + 24) = 0x80000001C4FBD5D0;
      *(v22 + 32) = 0xD000000000000033;
      *(v22 + 40) = 0x80000001C4FBD5F0;
      *(v22 + 48) = 0uLL;
      *(v22 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C5AFEC()
{
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C4B16DCC(0x7463617265746E69, 0xEC000000736E6F69, v1);
  }
}

void sub_1C4C5B070()
{
  v8 = 0;
  v9 = 0;
  sub_1C44E9220();
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v1);
    strcpy(v4, "interactions");
    v4[13] = 0;
    v5 = -5120;
    v6 = v2;
    v7 = MEMORY[0x1E69E7CC0];
    sub_1C446C37C(sub_1C4B18820, &v3);
  }
}

uint64_t sub_1C4C5B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s33SourceConfidenceViewViewGeneratorCMa();
      v5 = swift_allocObject();
      *(v5 + 16) = a5;
      *(v5 + 24) = v14;
      *(v5 + 32) = v15;
      *(v5 + 48) = v16;
    }

    else
    {
      sub_1C450B034();
      v10 = swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v13;
      *(v11 + 64) = 0;
      v5 = v10;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v5;
}

uint64_t sub_1C4C5B338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C5B1D4(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C5B3E4()
{
  v72 = sub_1C4EFFB98();
  v1 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBFDC();
  v71 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v59 - v4;
  v5 = sub_1C456902C(&qword_1EC0C5090, &unk_1C4F5F5A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C43FBFDC();
  v69 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v59 - v8;
  v9 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v59 - v10);
  v60 = v0;
  v12 = type metadata accessor for Source(0);
  sub_1C440BAA8(v11, 1, 1, v12);
  v13 = sub_1C450C07C(v11);
  sub_1C46A1238(v11);
  v14 = 0;
  v16 = v13 + 64;
  v15 = *(v13 + 64);
  v64 = v13;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v61 = v1 + 16;
  v70 = (v1 + 32);
  v73 = MEMORY[0x1E69E7CC0];
  v63 = v1;
  v66 = (v1 + 8);
  v65 = xmmword_1C4F0D480;
  v67 = v13 + 64;
  if ((v18 & v15) == 0)
  {
LABEL_5:
    v22 = v69;
    while (1)
    {
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v21 >= v20)
      {
        v50 = sub_1C456902C(&qword_1EC0C5098, qword_1C4F5F5B8);
        sub_1C440BAA8(v22, 1, 1, v50);
        v19 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v21);
      ++v14;
      if (v19)
      {
        v14 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_32;
  }

  while (1)
  {
    v21 = v14;
LABEL_10:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = v23 | (v21 << 6);
    v26 = v63;
    v25 = v64;
    v27 = v62;
    v28 = v72;
    (*(v63 + 16))(v62, *(v64 + 48) + *(v63 + 72) * v24, v72);
    v29 = *(*(v25 + 56) + 8 * v24);
    v30 = sub_1C456902C(&qword_1EC0C5098, qword_1C4F5F5B8);
    v31 = *(v30 + 48);
    v32 = *(v26 + 32);
    v22 = v69;
    v32(v69, v27, v28);
    *(v22 + v31) = v29;
    sub_1C440BAA8(v22, 0, 1, v30);
LABEL_11:
    v33 = v22;
    v34 = v68;
    sub_1C4C5BAA0(v33, v68);
    v35 = sub_1C456902C(&qword_1EC0C5098, qword_1C4F5F5B8);
    if (sub_1C44157D4(v34, 1, v35) == 1)
    {
      break;
    }

    v36 = *(v34 + *(v35 + 48));
    (*v70)(v71, v34, v72);
    v37 = sub_1C4EFFB88();
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0;
    }

    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v41 = sub_1C4EFFB78();
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
    v45 = swift_allocObject();
    *(v45 + 16) = v65;
    v46 = MEMORY[0x1E69E6158];
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v47 = MEMORY[0x1E69A0138];
    *(v45 + 64) = MEMORY[0x1E69A0138];
    *(v45 + 72) = v39;
    *(v45 + 32) = 0x6C6542726F697270;
    *(v45 + 40) = 0xEB00000000666569;
    *(v45 + 96) = v46;
    *(v45 + 104) = v47;
    *(v45 + 80) = v40;
    *(v45 + 136) = v46;
    *(v45 + 144) = v47;
    *(v45 + 112) = v43;
    *(v45 + 120) = v44;
    *(v45 + 176) = MEMORY[0x1E69E63B0];
    *(v45 + 184) = MEMORY[0x1E69A0168];
    *(v45 + 152) = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B824();
      v73 = v51;
    }

    v48 = *(v73 + 16);
    if (v48 >= *(v73 + 24) >> 1)
    {
      sub_1C458B824();
      v73 = v52;
    }

    (*v66)(v71);
    v49 = v73;
    *(v73 + 16) = v48 + 1;
    *(v49 + 8 * v48 + 32) = v45;
    v16 = v67;
    if (!v19)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_37;
  }

LABEL_32:
  v53 = sub_1C4F00978();
  sub_1C442B738(v53, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v54 = sub_1C4F00968();
  v55 = sub_1C4F01CB8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = *(v73 + 16);

    _os_log_impl(&dword_1C43F8000, v54, v55, "Writing %ld rows to SourceConfidenceView", v56, 0xCu);
    MEMORY[0x1C6942830](v56, -1, -1);
  }

  else
  {
  }

  v57 = v60;

  sub_1C4BC7440(v73, v57[3], v57[4], v57[5], v57[6]);
}

uint64_t sub_1C4C5B9FC()
{

  return v0;
}

uint64_t sub_1C4C5BA48()
{
  sub_1C4C5B9FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C5BAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C5090, &unk_1C4F5F5A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1C4C5BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      type metadata accessor for GlobalKnowledgeStore(0);
      swift_unownedRetainStrong();
      sub_1C4C62810(a4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v12, type metadata accessor for Configuration);

      v15 = sub_1C48300AC(v12);
      v16 = [objc_opt_self() sharedInstance];
      _s28SportsSchedulesViewGeneratorCMa();
      v12 = swift_allocObject();
      v12[10] = sub_1C4461BB8(0, &qword_1EDDF0478, 0x1E698AF30);
      v12[11] = &off_1F4405860;
      v12[2] = v18;
      v12[3] = v19;
      v12[4] = v20;
      v12[5] = v21;
      v12[6] = v15;
      v12[7] = v16;
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v13 = a1;
      *(v13 + 8) = a2;
      *(v13 + 16) = xmmword_1C4F5B670;
      *(v13 + 32) = 0xD000000000000025;
      *(v13 + 40) = 0x80000001C4FB83A0;
      *(v13 + 48) = v17;
      *(v13 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v12;
}

uint64_t sub_1C4C5BDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C5BB68(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C5BEB8()
{
  v1 = v0;
  v2 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = objc_opt_self();
  v10 = v1[4];
  (*(v4 + 16))(v8, *(v10 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v2);
  sub_1C4EF98E8();
  (*(v4 + 8))(v8, v2);
  v11 = sub_1C4F01108();

  [v9 truncateDatabaseAtPath_];

  return sub_1C4B44868(v1[2], v1[3], v10);
}

uint64_t sub_1C4C5C010()
{
  sub_1C43FBCD4();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_1C4EFF448();
  v1[10] = v3;
  sub_1C43FCF7C(v3);
  v1[11] = v4;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = sub_1C4F00978();
  v1[15] = v5;
  sub_1C43FCF7C(v5);
  v1[16] = v6;
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
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4C5C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C440C6BC();
  v18 = *v17;
  sub_1C43FBE64();
  *v19 = v18;
  *v19 = *v17;
  v18[29] = v20;
  v18[30] = v16;

  if (v16)
  {
    v34 = v18[18];
    v35 = v18[17];
    v36 = v18[14];
    v37 = v18[13];

    sub_1C43FBDA0();
    sub_1C440405C();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v34, v35, v36, v37, a14, a15, a16);
  }

  else
  {
    sub_1C440405C();

    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }
}

void sub_1C4C5C6C8()
{
  v91 = v0;
  v1 = *(v0 + 232);
  v2 = sub_1C4428DA0(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if (v4)
    {
      v8 = MEMORY[0x1C6940F90](v3, v89[29]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_39;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v11 = sub_1C4C6261C(v8);
    v13 = v12;

    ++v3;
    if (v13)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C443D664();
        v7 = v16;
      }

      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_1C443D664();
        v7 = v17;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      v3 = v10;
    }
  }

  if (!*(v7 + 16))
  {

    sub_1C4F00178();
    v29 = sub_1C4F00968();
    sub_1C4F01CC8();
    sub_1C4405A60();
    if (os_log_type_enabled(v29, v30))
    {
      sub_1C43FD1A8();
      v31 = swift_slowAlloc();
      sub_1C43FBD24(v31);
      sub_1C43FBED8(&dword_1C43F8000, v32, v33, "SportsSchedulesViewGenerator: performUpdate: No favorite teams");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v34 = v89[27];

    v35 = sub_1C4402B58();
    v34(v35);
    sub_1C4D0E5C0();
    goto LABEL_25;
  }

  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CC8();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v89[27];
  v22 = v89[22];
  v23 = v89[15];
  if (v20)
  {
    sub_1C43FECF0();
    v24 = swift_slowAlloc();
    v86 = v21;
    v25 = swift_slowAlloc();
    v90[0] = v25;
    *v24 = 136642819;
    v26 = MEMORY[0x1C6940380](v7, MEMORY[0x1E69E6158]);
    v28 = sub_1C441D828(v26, v27, v90);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1C43F8000, v18, v19, "SportsSchedulesViewGenerator: performUpdate: teams: %{sensitive}s", v24, 0xCu);
    sub_1C440962C(v25);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v86(v22, v23);
  }

  else
  {

    v21(v22, v23);
  }

  v36 = v89[30];
  v37 = sub_1C4C5DA14(v89[13], v7);
  v89[31] = v37;
  v89[32] = v38;
  if (v36)
  {

    sub_1C4F00178();
    v39 = v36;
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CD8();

    if (os_log_type_enabled(v40, v41))
    {
      sub_1C43FECF0();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v36;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_1C43F8000, v40, v41, "SportsSchedulesViewGenerator: error while getting next game for teams: %@", v42, 0xCu);
      sub_1C4420C3C(v43, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v46 = v89[27];
    v47 = v89[18];
    v48 = v89[15];

    v46(v47, v48);
    sub_1C4D0E51C();

LABEL_25:
    sub_1C4413AC8();

    sub_1C43FC1B0();

    v49();
    return;
  }

  v50 = v37;
  v52 = v89[13];
  v51 = v89[14];
  v54 = v89[10];
  v53 = v89[11];

  (*(v53 + 32))(v51, v52, v54);
  sub_1C4F00178();
  v55 = sub_1C4F00968();
  v56 = sub_1C4F01CC8();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v89[27];
  v59 = v89[21];
  v60 = v89[15];
  if (v57)
  {
    v87 = v89[27];
    v61 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v61 = 136315394;
    v62 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v84 = v60;
    v85 = v59;
    v63 = MEMORY[0x1C6940380](v62, MEMORY[0x1E69E6158]);
    v65 = v64;

    v66 = sub_1C441D828(v63, v65, v90);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;
    swift_beginAccess();
    v67 = sub_1C4EFF438();
    v69 = sub_1C441D828(v67, v68, v90);

    *(v61 + 14) = v69;
    _os_log_impl(&dword_1C43F8000, v55, v56, "SportsSchedulesViewGenerator: performUpdate: gameIds: %s of type: %s", v61, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v87(v85, v84);
  }

  else
  {

    v58(v59, v60);
  }

  if (!*(v50 + 16))
  {

    sub_1C4D0E5C0();
    sub_1C4F00178();
    v75 = sub_1C4F00968();
    v76 = sub_1C4F01CC8();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v89[27];
    v79 = v89[19];
    v80 = v89[15];
    v81 = v89[14];
    v82 = v89[11];
    v88 = v89[10];
    if (v77)
    {
      sub_1C43FD1A8();
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1C43F8000, v75, v76, "SportsSchedulesViewGenerator: performUpdate: No games to process, update complete", v83, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v78(v79, v80);
    (*(v82 + 8))(v81, v88);

    goto LABEL_25;
  }

  v70 = v89[14];
  v72 = v89[11];
  v71 = v89[12];
  v73 = v89[10];
  swift_beginAccess();
  (*(v72 + 16))(v71, v70, v73);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v74 = swift_task_alloc();
  v89[33] = v74;
  *v74 = v89;
  v74[1] = sub_1C4C5CF3C;

  sub_1C4C5E698();
}

uint64_t sub_1C4C5CF3C()
{
  sub_1C43FCF70();
  sub_1C43FDB88();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  v4[34] = v0;
  v4[35] = v1;

  if (v1)
  {
    v8 = sub_1C441BDD4();
    v4[40] = v9;
    v4[41] = v10;
    v9(v8);

    v11 = sub_1C43FCE74();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = sub_1C441BDD4();
    v4[36] = v15;
    v4[37] = v16;
    v15(v14);

    v17 = swift_task_alloc();
    v4[38] = v17;
    *v17 = v6;
    v17[1] = sub_1C4C5D0EC;
    v18 = v4[32];

    return sub_1C4C5E994(v18, v0);
  }
}

uint64_t sub_1C4C5D0EC()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v2 + 312) = v0;

  if (v0)
  {
    v6 = sub_1C4C5D5E8;
  }

  else
  {

    v6 = sub_1C4C5D204;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4C5D204(uint64_t a1)
{
  sub_1C4D0E5C0();
  sub_1C4F00178();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  v4 = os_log_type_enabled(v2, v3);
  v13 = v1[36];
  v5 = v1[27];
  v6 = v1[20];
  v7 = v1[15];
  v8 = v1[14];
  v9 = v1[10];
  if (v4)
  {
    sub_1C43FD1A8();
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "SportsSchedulesViewGenerator: performUpdate: complete", v10, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v5(v6, v7);
  v13(v8, v9);

  sub_1C4413AC8();

  sub_1C43FC1B0();

  return v11();
}

uint64_t sub_1C4C5D3C0(uint64_t a1)
{
  v2 = v1[35];
  sub_1C4F00178();
  v3 = v2;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[35];
    sub_1C43FECF0();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "SportsSchedulesViewGenerator: error while getting game time for games: %@", v7, 0xCu);
    sub_1C4420C3C(v8, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v11 = v1[40];
  v12 = v1[35];
  v13 = v1[27];
  v14 = v1[17];
  v16 = v1[14];
  v15 = v1[15];
  v17 = v1[10];

  v13(v14, v15);
  sub_1C4D0E51C();

  v11(v16, v17);

  sub_1C4413AC8();

  sub_1C43FC1B0();

  return v18();
}

uint64_t sub_1C4C5D5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C440C6BC();
  v17 = v16[36];
  v18 = v16[14];
  v19 = v16[10];

  v17(v18, v19);

  v29 = v16[14];
  v30 = v16[13];
  v31 = v16[12];
  v32 = v16[39];

  sub_1C43FBDA0();
  sub_1C440405C();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, v31, v32, a14, a15, a16);
}

uint64_t sub_1C4C5D71C()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = v1[11];
  sub_1C4409678(v1 + 7, v1[10]);
  sub_1C44164EC(v2);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1C4C5D830;
  v5 = sub_1C4402B58();

  return v7(v5);
}

uint64_t sub_1C4C5D830()
{
  sub_1C43FCF70();
  sub_1C43FDB88();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;

    return MEMORY[0x1EEE6DFA0](sub_1C4C5D964, 0, 0);
  }
}

uint64_t sub_1C4C5D964()
{
  sub_1C43FCF70();
  v1 = *(v0 + 32);
  v2 = [v1 teams];
  sub_1C4461BB8(0, &unk_1EDDFA480, 0x1E698AF38);
  v3 = sub_1C4F01678();

  sub_1C43FBCF0();

  return v4(v3);
}

uint64_t sub_1C4C5DA14(uint64_t a1, uint64_t a2)
{
  v148 = a2;
  v136 = a1;
  sub_1C4EFD548();
  sub_1C43FCDF8();
  v144 = v4;
  v145 = v5;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v143 = v6;
  sub_1C43FBE44();
  v150 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v146 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v157 = v9;
  sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  v153 = v11;
  sub_1C43FBE44();
  v151 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v142 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v152 = v14;
  v15 = sub_1C43FBE44();
  v149 = type metadata accessor for LiveGlobalKnowledgeTriple(v15);
  sub_1C43FCDF8();
  v147 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  sub_1C4F00978();
  sub_1C43FCDF8();
  v138 = v21;
  v139 = v22;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v137 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v132 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v132 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v132 - v32;
  v34 = sub_1C4EFF3B8();
  sub_1C43FCDF8();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v41 = *(v2 + 48);
  sub_1C4C5EBE0();
  v42 = GlobalKnowledgeStore.liveApiIdSearch(request:updateCache:lookupCache:serverTimeoutMs:)(v40, 0, 0, 700);
  v44 = (v36 + 8);
  if (v3)
  {
    (*v44)(v40, v34);
    return v41;
  }

  v45 = v43;
  v133 = v27;
  v135 = v42;
  v46 = v139;
  (*v44)(v40, v34);
  if (v45)
  {

    sub_1C4F00178();
    v47 = sub_1C4F00968();
    v41 = sub_1C4F01CD8();
    v48 = os_log_type_enabled(v47, v41);
    v49 = v138;
    if (v48)
    {
      sub_1C43FD1A8();
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C43F8000, v47, v41, "SportsSchedulesViewGenerator: liveApiIdSearch timed out", v50, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    (*(v46 + 8))(v33, v49);
    sub_1C4C626B8();
    v51 = swift_allocError();
    sub_1C442E654(v51, v52);
    swift_willThrow();
    return v41;
  }

  v54 = v30;
  sub_1C4F00178();
  v55 = v135;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v56 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4405A60();
  v58 = os_log_type_enabled(v56, v57);
  v132[1] = 0;
  if (v58)
  {
    sub_1C43FECF0();
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    *(v59 + 4) = *(v55 + 16);

    _os_log_impl(&dword_1C43F8000, v56, v45, "SportsSchedulesViewGenerator: performUpdate: received %ld triples", v59, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v60 = v149;
  v61 = v150;
  v62 = *(v46 + 8);
  v139 = v46 + 8;
  v134 = v62;
  v62(v54, v138);
  v63 = *(v55 + 16);
  v64 = v157;
  if (v63)
  {
    v148 = *(v60 + 20);
    sub_1C43FC354();
    v66 = v55 + v65;
    v68 = *(v67 + 72);
    v146 = (v69 + 8);
    v147 = v68;
    v140 = (v142 + 16);
    v141 = (v70 + 8);
    v145 = (v142 + 32);
    v71 = MEMORY[0x1E69E7CC0];
    v72 = v151;
    do
    {
      sub_1C4412888();
      sub_1C4C62810(v66, v20, v73);
      sub_1C4EFEBB8();
      sub_1C440B6A8();
      sub_1C4C6279C(&off_1EDDFCCA8, v74, MEMORY[0x1E69A9770]);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v156[0] == v154 && v156[1] == v155)
      {
        (*v146)(v64, v61);
      }

      else
      {
        v76 = sub_1C4F02938();
        v77 = v64;
        v78 = v76;
        (*v146)(v77, v61);

        if ((v78 & 1) == 0)
        {
          v79 = 1;
          v64 = v157;
          goto LABEL_26;
        }
      }

      v80 = (v20 + *(v149 + 32));
      v81 = *v80;
      v82 = v80[1];
      v83 = v143;
      sub_1C4EFD018();
      v84 = sub_1C4EFD2F8();
      v86 = v85;
      (*v141)(v83, v144);
      if (v81 == v84 && v82 == v86)
      {

        v64 = v157;
LABEL_28:
        v89 = v153;
        v72 = v151;
        (*v140)(v153, v20, v151);
        v79 = 0;
        v61 = v150;
        goto LABEL_29;
      }

      v88 = sub_1C4F02938();

      v64 = v157;
      if (v88)
      {
        goto LABEL_28;
      }

      v79 = 1;
      v61 = v150;
      v72 = v151;
LABEL_26:
      v89 = v153;
LABEL_29:
      sub_1C440BAA8(v89, v79, 1, v72);
      sub_1C49327BC(v20);
      if (sub_1C44157D4(v89, 1, v72) == 1)
      {
        sub_1C4420C3C(v89, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v90 = *v145;
        (*v145)(v152, v89, v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1C43FCEC0();
          sub_1C44D45E4(v95, v96, v97, v71);
          v71 = v98;
        }

        v92 = *(v71 + 16);
        v91 = *(v71 + 24);
        if (v92 >= v91 >> 1)
        {
          v99 = sub_1C43FCFE8(v91);
          sub_1C44D45E4(v99, v92 + 1, 1, v71);
          v71 = v100;
        }

        *(v71 + 16) = v92 + 1;
        sub_1C43FBF6C();
        v90(v71 + v93 + *(v94 + 72) * v92, v152, v72);
        v64 = v157;
      }

      v66 += v147;
      --v63;
    }

    while (v63);
  }

  sub_1C45972E0();
  v101 = v133;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v102 = sub_1C4F00968();
  v103 = sub_1C4F01CC8();

  if (os_log_type_enabled(v102, v103))
  {
    sub_1C43FECF0();
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v156[0] = v105;
    *v104 = 136315138;
    sub_1C44011D0();
    sub_1C4C6279C(v106, v107, MEMORY[0x1E69A9820]);
    v108 = sub_1C4F01AC8();
    v110 = sub_1C441D828(v108, v109, v156);

    *(v104 + 4) = v110;
    _os_log_impl(&dword_1C43F8000, v102, v103, "SportsSchedulesViewGenerator: performUpdate: gameEntityIdentifiers: %s", v104, 0xCu);
    sub_1C440962C(v105);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v111 = v138;
  v134(v101, v138);
  v112 = v137;
  sub_1C4C5F17C();
  sub_1C4C5F17C();
  v114 = v113;

  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v115 = sub_1C4F00968();
  v116 = sub_1C4F01CC8();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v156[0] = v157;
    *v117 = 136315394;
    sub_1C4EFF8A8();
    sub_1C4420740();
    sub_1C4C6279C(v118, v119, MEMORY[0x1E69A99F8]);
    v120 = sub_1C4F01AC8();
    v122 = sub_1C441D828(v120, v121, v156);

    *(v117 + 4) = v122;
    *(v117 + 12) = 2080;
    v123 = sub_1C4F01AC8();
    v125 = sub_1C441D828(v123, v124, v156);

    *(v117 + 14) = v125;
    _os_log_impl(&dword_1C43F8000, v115, v116, "SportsSchedulesViewGenerator: performUpdate: umcRelationshipIdentifiers: %s, statsRelationshipIdentifiers: %s", v117, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v134(v137, v138);
  }

  else
  {

    v134(v112, v111);
  }

  v126 = v136;
  if (*(v114 + 16))
  {

    sub_1C4C5F9A4();
    v41 = v127;

    v128 = MEMORY[0x1E69A98E0];
  }

  else
  {

    sub_1C4C5F9A4();
    v41 = v129;

    v128 = MEMORY[0x1E69A98D0];
  }

  v130 = *v128;
  sub_1C4EFF448();
  sub_1C43FBCE0();
  (*(v131 + 104))(v126, v130);
  return v41;
}

uint64_t sub_1C4C5E698()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C4F00978();
  v1[5] = v4;
  sub_1C43FCF7C(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v6 = sub_1C4EFF3B8();
  v1[8] = v6;
  sub_1C43FCF7C(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4C5E79C()
{
  sub_1C43FEAEC();
  v1 = v0[10];
  sub_1C4C5FE28();
  v2 = GlobalKnowledgeStore.liveApiIdSearch(request:updateCache:lookupCache:serverTimeoutMs:)(v1, 0, 0, 700);
  v4 = v3;
  (*(v0[9] + 8))(v0[10], v0[8]);
  if (v4)
  {

    sub_1C4F00178();
    v5 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C4405A60();
    if (os_log_type_enabled(v5, v6))
    {
      sub_1C43FD1A8();
      v7 = swift_slowAlloc();
      sub_1C43FBD24(v7);
      _os_log_impl(&dword_1C43F8000, v5, v2, "SportsSchedulesViewGenerator: liveApiIdSearch timed out", 0, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v8 = sub_1C4402B58();
    v9(v8);
    sub_1C4C626B8();
    v10 = swift_allocError();
    sub_1C442E654(v10, v11);
    swift_willThrow();

    sub_1C43FBDA0();

    return v12();
  }

  else
  {

    sub_1C43FBCF0();

    return v14(v2);
  }
}

uint64_t sub_1C4C5E994(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4C5E9AC()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  sub_1C4C5BE78();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;

  sub_1C4418704(sub_1C4C62680, v2, v3, v4, v5, v6, v7, v8, v19, v21);

  v9 = *(v0 + 24);
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;

  sub_1C4418704(sub_1C4C6269C, v10, v11, v12, v13, v14, v15, v16, v20, v22);

  sub_1C43FC1B0();

  return v18();
}

uint64_t sub_1C4C5EAC8()
{

  sub_1C440962C((v0 + 56));
  return v0;
}

uint64_t sub_1C4C5EB1C()
{
  sub_1C4C5EAC8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C5EB50()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4707B70;

  return sub_1C4C5C010();
}

void sub_1C4C5EBE0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  sub_1C456902C(&qword_1EC0B8FD0, &qword_1C4F0EAB0);
  sub_1C43FCDF8();
  v66 = v5;
  v67 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v68 = v7;
  sub_1C43FBE44();
  sub_1C4EFF458();
  sub_1C43FCDF8();
  v58 = v9;
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v57 = v10;
  sub_1C43FBE44();
  v56 = sub_1C4EFF988();
  sub_1C43FCDF8();
  v54 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v55 = v13;
  sub_1C43FBE44();
  v64 = sub_1C4EFF448();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v69 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBD08();
  v65 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  v28 = *(v1 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v60 = v3;
  if (v28)
  {
    v70 = MEMORY[0x1E69E7CC0];
    sub_1C459DAA8();
    v30 = v70;
    LODWORD(v63) = *MEMORY[0x1E69A98D0];
    v62 = *(v15 + 104);
    *&v61 = v21 + 32;
    v31 = v1 + 40;
    do
    {
      (v62)(v19, v63, v64);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF3E8();
      v70 = v30;
      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C43FCFE8(v32);
        sub_1C459DAA8();
        v30 = v70;
      }

      *(v30 + 16) = v33 + 1;
      sub_1C43FC354();
      (*(v21 + 32))(v30 + v34 + *(v21 + 72) * v33, v27, v69);
      v31 += 16;
      --v28;
    }

    while (v28);
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v30 + 16);
  if (v35)
  {
    v70 = v29;
    sub_1C459DA68();
    v37 = v69;
    v36 = v70;
    v38 = v21 + 16;
    sub_1C43FC354();
    v40 = v30 + v39;
    v63 = *(v38 + 56);
    v64 = v41;
    v62 = (v38 - 8);
    v61 = xmmword_1C4F0D130;
    v42 = v68;
    do
    {
      v44 = v64;
      v43 = v65;
      v64(v65, v40, v37);
      v45 = *(v67 + 48);
      v44(v42, v43, v37);
      sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v46 = sub_1C4EFEEF8();
      sub_1C43FCF7C(v46);
      *(swift_allocObject() + 16) = v61;
      v42 = v68;
      sub_1C4EFE408();
      sub_1C4D504A4();
      v48 = v47;
      (*v62)(v43, v37);
      *(v42 + v45) = v48;
      v70 = v36;
      v50 = *(v36 + 16);
      v49 = *(v36 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1C43FCFE8(v49);
        sub_1C459DA68();
        v36 = v70;
      }

      *(v36 + 16) = v50 + 1;
      sub_1C43FBF6C();
      sub_1C4C6272C(v42, v36 + v51 + *(v52 + 72) * v50);
      v40 += v63;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4BA029C(v36);
  (*(v54 + 104))(v55, *MEMORY[0x1E69A9A50], v56);
  (*(v58 + 104))(v57, *MEMORY[0x1E69A9900], v59);
  sub_1C4402B58();
  sub_1C4EFF378();
  sub_1C43FE9F0();
}

void sub_1C4C5F17C()
{
  sub_1C43FBD3C();
  v104 = v0;
  v2 = v1;
  v4 = v3;
  v86 = sub_1C4EFF448();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v85 = v8;
  sub_1C43FBE44();
  v91 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v102 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v81 - v15;
  sub_1C43FBE44();
  v16 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  v101 = v24;
  sub_1C43FBE44();
  v25 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v100 = v29;
  v30 = sub_1C43FBE44();
  v94 = type metadata accessor for LiveGlobalKnowledgeTriple(v30);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v2 + 16);
  if (v99)
  {
    v103 = v25;
    v87 = v13;
    v35 = 0;
    v36 = *(v32 + 80);
    v97 = *(v32 + 72);
    v98 = v2 + ((v36 + 32) & ~v36);
    v37 = v4 + 56;
    v105 = v18 + 16;
    v90 = (v102 + 8);
    v84 = *v104;
    v83 = (v6 + 104);
    v82 = (v6 + 8);
    v81 = (v27 + 16);
    v102 = MEMORY[0x1E69E7CC0];
    v92 = v27;
    v96 = (v27 + 32);
    v38 = v4;
    v39 = v101;
    while (1)
    {
      v104 = v35;
      sub_1C4412888();
      sub_1C4C62810(v40, v34, v41);
      if (*(v4 + 16))
      {
        break;
      }

      v52 = 1;
LABEL_21:
      v56 = v103;
      sub_1C440BAA8(v39, v52, 1, v103);
      sub_1C49327BC(v34);
      if (sub_1C44157D4(v39, 1, v56) == 1)
      {
        sub_1C4420C3C(v39, &qword_1EC0B9A10, &qword_1C4F107C0);
      }

      else
      {
        v57 = v56;
        v58 = *v96;
        (*v96)(v100, v39, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_1C43FCEC0();
          sub_1C458BBE0(v75, v76, v77, v78);
          v102 = v79;
        }

        v60 = *(v102 + 16);
        v59 = *(v102 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1C458BBE0(v59 > 1, v60 + 1, 1, v102);
          v102 = v80;
        }

        *(v102 + 16) = v60 + 1;
        sub_1C43FBF6C();
        v58(v62 + v61 + *(v63 + 72) * v60, v100);
        v4 = v38;
        v39 = v101;
      }

      v35 = (v104 + 1);
      if ((v104 + 1) == v99)
      {
        goto LABEL_41;
      }
    }

    sub_1C44011D0();
    sub_1C4C6279C(&qword_1EDDFE820, v42, MEMORY[0x1E69A9820]);
    v43 = sub_1C4F00FD8();
    v44 = ~(-1 << *(v4 + 32));
    do
    {
      v45 = v43 & v44;
      if (((*(v37 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v43 & v44)) & 1) == 0)
      {
        goto LABEL_20;
      }

      (*(v18 + 16))(v22, *(v38 + 48) + *(v18 + 72) * v45, v16);
      sub_1C44011D0();
      sub_1C4C6279C(&qword_1EDDFCC98, v46, MEMORY[0x1E69A9830]);
      v47 = sub_1C4F010B8();
      (*(v18 + 8))(v22, v16);
      v43 = v45 + 1;
    }

    while ((v47 & 1) == 0);
    sub_1C4EFE308();
    sub_1C440B6A8();
    v49 = sub_1C4C6279C(&off_1EDDFCCA8, v48, MEMORY[0x1E69A9770]);
    v50 = v91;
    sub_1C4402B58();
    sub_1C4F01578();
    v89 = v49;
    sub_1C4F01578();
    if (v108 == v106 && v109 == v107)
    {
      LODWORD(v93) = 1;
    }

    else
    {
      LODWORD(v93) = sub_1C4F02938();
    }

    v88 = *v90;
    v88(v95, v50);

    if ((v93 & 1) == 0)
    {
LABEL_20:
      v52 = 1;
      v4 = v38;
      v39 = v101;
      goto LABEL_21;
    }

    sub_1C4EFE658();
    sub_1C4F01578();
    sub_1C4402B58();
    sub_1C4F01578();
    if (v108 == v106 && v109 == v107)
    {
      v64 = sub_1C440484C();
      v65(v64);
    }

    else
    {
      LODWORD(v93) = sub_1C4F02938();
      v54 = sub_1C440484C();
      v55(v54);

      if ((v93 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v66 = &v34[*(v94 + 32)];
    v68 = *v66;
    v67 = *(v66 + 1);
    v93 = v68;
    v89 = v67;
    v69 = v85;
    v70 = v86;
    (*v83)(v85, v84, v86);
    v88 = sub_1C4EFF438();
    v72 = v71;
    (*v82)(v69, v70);
    if (v93 == v88 && v89 == v72)
    {

      v39 = v101;
    }

    else
    {
      v74 = sub_1C4F02938();

      v39 = v101;
      if ((v74 & 1) == 0)
      {
        v52 = 1;
LABEL_39:
        v4 = v38;
        goto LABEL_21;
      }
    }

    (*v81)(v39, &v34[*(v94 + 24)], v103);
    v52 = 0;
    goto LABEL_39;
  }

  v102 = MEMORY[0x1E69E7CC0];
LABEL_41:
  sub_1C459740C();
  sub_1C43FE9F0();
}

void sub_1C4C5F9A4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v18);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v1 + 16);
  if (v58)
  {
    v55 = v10;
    v51[1] = v4;
    v23 = 0;
    v53 = v19;
    v57 = v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v24 = v3 + 56;
    v60 = v13 + 8;
    v61 = v13 + 16;
    v54 = MEMORY[0x1E69E7CC0];
    v56 = *(v20 + 72);
    v51[0] = v6 + 8;
    v25 = v3;
    do
    {
      v59 = v23;
      sub_1C4412888();
      sub_1C4C62810(v26, v22, v27);
      if (*(v25 + 16))
      {
        sub_1C4420740();
        sub_1C4C6279C(&qword_1EDDFE808, v28, MEMORY[0x1E69A99F8]);
        v29 = sub_1C4F00FD8();
        v30 = v25;
        v31 = ~(-1 << *(v25 + 32));
        while (1)
        {
          v32 = v29 & v31;
          v25 = v30;
          if (((*(v24 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
          {
            break;
          }

          (*(v13 + 16))(v17, *(v30 + 48) + *(v13 + 72) * v32, v11);
          sub_1C4420740();
          sub_1C4C6279C(&unk_1EDDFCC80, v33, MEMORY[0x1E69A9A08]);
          v34 = sub_1C4F010B8();
          (*(v13 + 8))(v17, v11);
          v29 = v32 + 1;
          if (v34)
          {
            sub_1C4EFE558();
            sub_1C440B6A8();
            sub_1C4C6279C(&off_1EDDFCCA8, v35, MEMORY[0x1E69A9770]);
            sub_1C4F01578();
            sub_1C4F01578();
            if (v64 == v62 && v65 == v63)
            {
              v39 = sub_1C441C5B0();
              v40(v39);
            }

            else
            {
              LODWORD(v52) = sub_1C4F02938();
              v37 = sub_1C441C5B0();
              v38(v37);

              v25 = v30;
              if ((v52 & 1) == 0)
              {
                break;
              }
            }

            v41 = &v22[*(v53 + 32)];
            v43 = *v41;
            v42 = *(v41 + 1);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C49327BC(v22);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52 = v43;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C43FCEC0();
              sub_1C443D664();
              v54 = v49;
            }

            v46 = *(v54 + 16);
            v45 = *(v54 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_1C43FCFE8(v45);
              sub_1C443D664();
              v54 = v50;
            }

            v47 = v54;
            *(v54 + 16) = v46 + 1;
            v48 = v47 + 16 * v46;
            *(v48 + 32) = v52;
            *(v48 + 40) = v42;
            v25 = v30;
            goto LABEL_19;
          }
        }
      }

      sub_1C49327BC(v22);
LABEL_19:
      v23 = v59 + 1;
    }

    while (v59 + 1 != v58);
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FE9F0();
}

void sub_1C4C5FE28()
{
  sub_1C43FBD3C();
  v44 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FD2D8();
  v43 = v3;
  sub_1C456902C(&qword_1EC0B8FD0, &qword_1C4F0EAB0);
  sub_1C43FCDF8();
  v42 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBC74();
  v45 = v6;
  sub_1C43FBE44();
  v7 = sub_1C4EFF458();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4EFF988();
  sub_1C43FCDF8();
  v39 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C45D9E24();
  v21 = v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v37 = v9;
    v38 = v7;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C459DA68();
    v23 = v46;
    v25 = *(v1 + 16);
    v24 = v1 + 16;
    v41 = v25;
    sub_1C43FC354();
    v27 = v21 + v26;
    v40 = *(v24 + 56);
    v28 = v45;
    do
    {
      v41(v43, v27, v44);
      v29 = *(v42 + 48);
      v41(v28, v43, v44);
      sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v30 = sub_1C4EFEEF8();
      sub_1C43FCF7C(v30);
      *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
      sub_1C4EFEEE8();
      v28 = v45;
      sub_1C4EFE8E8();
      sub_1C4D504A4();
      v32 = v31;
      (*(v24 - 8))(v43, v44);
      *(v45 + v29) = v32;
      v34 = *(v46 + 16);
      v33 = *(v46 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C43FCFE8(v33);
        sub_1C459DA68();
      }

      *(v46 + 16) = v34 + 1;
      sub_1C43FBF6C();
      sub_1C4C6272C(v45, v46 + v35 + *(v36 + 72) * v34);
      v27 += v40;
      --v22;
    }

    while (v22);

    v7 = v38;
    v9 = v37;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4BA029C(v23);
  (*(v39 + 104))(v19, *MEMORY[0x1E69A9A50], v14);
  (*(v9 + 104))(v13, *MEMORY[0x1E69A9900], v7);
  sub_1C4EFF378();
  sub_1C43FE9F0();
}

uint64_t sub_1C4C602B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v41 = sub_1C4F00978();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C4EFF8A8();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C4EFEEF8();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v39 - v11;
  v52 = sub_1C4EFF0C8();
  v12 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C4EFD9A8();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = *(a2 + 16);
  v59 = a2;
  v60 = v20;
  v46 = (v8 + 16);
  v47 = (v12 + 16);
  v42 = (v21 + 8);
  v43 = (v6 + 16);
  v48 = v22;
  v45 = v18;
  v23 = v53;
  while (1)
  {
    v62 = v3;
    if (v60 == v19)
    {
      break;
    }

    v24 = v59 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v25 = *(v49 + 72);
    v61 = v19;
    v26 = v24 + v25 * v19;
    v27 = v44;
    sub_1C4C62810(v26, v44, type metadata accessor for LiveGlobalKnowledgeTriple);
    (*v47)(v51, v27, v52);
    v28 = v50;
    v29 = *v46;
    v30 = v55;
    (*v46)(v23, v27 + *(v50 + 20), v55);
    (*v43)(v56, v27 + *(v28 + 24), v57);
    v29(v54, v27 + *(v28 + 28), v30);
    v31 = v45;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = v48;
    sub_1C4EFD998();
    sub_1C49327BC(v27);
    sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8], &protocol conformance descriptor for ViewService.SportsSchedulesView.SportsScheduleTriple);
    v33 = v62;
    sub_1C4EFB6C8();
    v3 = v33;
    if (v33)
    {
      return (*v42)(v31, v32);
    }

    v19 = v61 + 1;
    (*v42)(v31, v32);
  }

  v34 = v39;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v35 = sub_1C4F00968();
  v36 = sub_1C4F01CF8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = v60;

    _os_log_impl(&dword_1C43F8000, v35, v36, "SportsSchedulesViewGenerator: performUpdate: inserted %ld team triples.", v37, 0xCu);
    MEMORY[0x1C6942830](v37, -1, -1);
  }

  else
  {
  }

  return (*(v40 + 8))(v34, v41);
}

uint64_t sub_1C4C608D0(uint64_t a1, uint64_t a2)
{
  v163 = a2;
  v115 = sub_1C4F00978();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1C4EF9648();
  v152 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1C4EF9F88();
  v151 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1C4EF9CD8();
  v145 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1C4EFF0C8();
  v160 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFD9A8();
  v144 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v112 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v131 = &v112 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v112 - v19;
  v140 = sub_1C4EFD548();
  v137 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C4EFF8A8();
  v136 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v112 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v112 - v27;
  v159 = sub_1C4EFEEF8();
  v29 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v130 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v150 = &v112 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v149 = &v112 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v112 - v36;
  v157 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  v38 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v117 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v158 = &v112 - v41;
  v162 = a1;
  v112 = sub_1C4EFBF28();
  v42 = *(v163 + 16);
  if (!v42)
  {
LABEL_28:
    v100 = v116;
    sub_1C4F00178();

    v101 = sub_1C4F00968();
    v102 = sub_1C4F01CF8();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 134217984;
      result = sub_1C4EFBF28();
      if (__OFSUB__(result, v112))
      {
        __break(1u);
        return result;
      }

      *(v103 + 4) = result - v112;

      _os_log_impl(&dword_1C43F8000, v101, v102, "SportsSchedulesViewGenerator: performUpdate: inserted %ld game triples.", v103, 0xCu);
      MEMORY[0x1C6942830](v103, -1, -1);
    }

    else
    {
    }

    return (*(v114 + 8))(v100, v115);
  }

  v43 = v163 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v148 = (v29 + 8);
  v160 += 2;
  v113 = (v29 + 16);
  v156 = (v136 + 2);
  v141 = (v144 + 8);
  v135 = (v137 + 8);
  ++v136;
  v122 = (v152 + 8);
  v121 = (v151 + 8);
  v120 = (v145 + 8);
  v137 = *(v38 + 72);
  v163 = v21;
  v44 = v158;
  v147 = v28;
  v153 = v25;
  v161 = v8;
  v138 = v37;
  while (1)
  {
    v151 = v43;
    v152 = v42;
    sub_1C4C62810(v43, v44, type metadata accessor for LiveGlobalKnowledgeTriple);
    sub_1C4EFEEE8();
    sub_1C4C6279C(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    v45 = v167 == v165 && v168 == v166;
    v46 = v45 ? 1 : sub_1C4F02938();
    v47 = *v148;
    v48 = v37;
    v49 = v159;
    (*v148)(v48, v159);

    if ((v46 & 1) == 0)
    {
      break;
    }

    v50 = (v44 + *(v157 + 32));
    v52 = *v50;
    v51 = v50[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49F2108(v52, v51);
    if (v53)
    {
      sub_1C4C626B8();
      v105 = swift_allocError();
      *v106 = v52;
      *(v106 + 8) = v51;
      *(v106 + 16) = 3;
      v164 = v105;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      return sub_1C49327BC(v44);
    }

    v54 = v139;
    sub_1C4EFD168();
    v55 = v147;
    sub_1C4EFF838();
    v145 = *v160;
    v145(v154, v44, v155);
    sub_1C4EFECF8();
    v134 = *v156;
    v134(v153, v55, v163);
    sub_1C4EFEBB8();
    sub_1C4EFD168();
    sub_1C4EFD2F8();
    (*v135)(v54, v140);
    sub_1C4EFD998();
    v56 = sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8], &protocol conformance descriptor for ViewService.SportsSchedulesView.SportsScheduleTriple);
    v57 = v161;
    v58 = v164;
    sub_1C4EFB6C8();
    v164 = v58;
    if (v58)
    {
      (*v141)(v143, v57);
      v107 = *v136;
      v108 = v147;
LABEL_36:
      v110 = v163;
      goto LABEL_40;
    }

    v144 = v56;
    v59 = v124;
    sub_1C4EF9C48();
    v60 = v126;
    sub_1C4EF9F58();
    if (qword_1EDDF4920 != -1)
    {
      swift_once();
    }

    v61 = v128;
    sub_1C4EF9EA8();
    v133 = sub_1C44CDAD4();
    v132 = v62;
    (*v122)(v61, v129);
    (*v121)(v60, v127);
    (*v120)(v59, v125);
    v63 = v154;
    v64 = v155;
    v145(v154, v158, v155);
    sub_1C4EFECF8();
    v65 = v153;
    v66 = v134;
    v134(v153, v147, v163);
    sub_1C4EFEEE8();
    v67 = v63;
    v68 = v65;
    sub_1C4EFD998();
    v69 = v161;
    v70 = v164;
    sub_1C4EFB6C8();
    v71 = v147;
    v164 = v70;
    if (v70)
    {
      v109 = *v141;
      (*v141)(v142, v69);
      v109(v143, v69);
      v107 = *v136;
      v108 = v71;
      goto LABEL_36;
    }

    sub_1C4EF9AF8();
    v145(v67, v158, v64);
    sub_1C4EFECF8();
    v72 = v71;
    v73 = v163;
    v66(v68, v71, v163);
    sub_1C4EFE7B8();
    v167 = 0;
    v168 = 0xE000000000000000;
    sub_1C4F01A28();
    v74 = v123;
    sub_1C4EFD998();
    v75 = v161;
    v76 = v164;
    sub_1C4EFB6C8();
    v164 = v76;
    if (v76)
    {
      v111 = *v141;
      (*v141)(v74, v75);
      v111(v142, v75);
      v111(v143, v75);
      (*v136)(v72, v73);
      goto LABEL_41;
    }

    v77 = *v141;
    (*v141)(v74, v75);
    v77(v142, v75);
    v77(v143, v75);
    (*v136)(v72, v73);
    v44 = v158;
LABEL_27:
    sub_1C49327BC(v44);
    v43 = v151 + v137;
    v42 = v152 - 1;
    v37 = v138;
    if (v152 == 1)
    {
      goto LABEL_28;
    }
  }

  v78 = v130;
  sub_1C4EFE8E8();
  sub_1C4F01578();
  sub_1C4F01578();
  if (v167 == v165 && v168 == v166)
  {
    v47(v78, v49);

    v81 = v146;
    v82 = v160;
    v83 = v156;
    goto LABEL_25;
  }

  v80 = sub_1C4F02938();
  v47(v78, v49);

  v81 = v146;
  v82 = v160;
  v83 = v156;
  if (v80)
  {
LABEL_25:
    v91 = v139;
    sub_1C4EFD2D8();
    sub_1C4EFF838();
    v92 = v154;
    v145 = *v82;
    v145(v154, v44, v155);
    sub_1C4EFE408();
    v144 = *v83;
    (v144)(v153, v81, v163);
    sub_1C4EFEBB8();
    sub_1C4EFD2D8();
    sub_1C4EFD2F8();
    (*v135)(v91, v140);
    v93 = v92;
    v94 = v153;
    sub_1C4EFD998();
    sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8], &protocol conformance descriptor for ViewService.SportsSchedulesView.SportsScheduleTriple);
    v95 = v164;
    sub_1C4EFB6C8();
    if (v95)
    {
      (*v141)(v131, v161);
      (*v136)(v146, v163);
      v44 = v158;
      v164 = v95;
      return sub_1C49327BC(v44);
    }

    v96 = v158;
    (v145)(v93);
    sub_1C4EFE408();
    (v144)(v94, v146, v163);
    sub_1C4EFE8E8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v97 = v119;
    sub_1C4EFD998();
    v98 = v161;
    sub_1C4EFB6C8();
    v44 = v96;
    v164 = 0;
    v99 = *v141;
    (*v141)(v97, v98);
    v99(v131, v98);
    (*v136)(v146, v163);
    goto LABEL_27;
  }

  v84 = v117;
  sub_1C4C62810(v44, v117, type metadata accessor for LiveGlobalKnowledgeTriple);
  (*v82)(v154, v84, v155);
  v85 = v157;
  v86 = *v113;
  v87 = v159;
  (*v113)(v149, v84 + *(v157 + 20), v159);
  (*v83)(v153, v84 + *(v85 + 24), v163);
  v86(v150, v84 + *(v85 + 28), v87);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v88 = v118;
  sub_1C4EFD998();
  sub_1C49327BC(v84);
  sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8], &protocol conformance descriptor for ViewService.SportsSchedulesView.SportsScheduleTriple);
  v89 = v161;
  v90 = v164;
  sub_1C4EFB6C8();
  v164 = v90;
  if (!v90)
  {
    (*v141)(v88, v89);
    v44 = v158;
    goto LABEL_27;
  }

  v107 = *v141;
  v108 = v88;
  v110 = v89;
LABEL_40:
  v107(v108, v110);
LABEL_41:
  v44 = v158;
  return sub_1C49327BC(v44);
}

uint64_t sub_1C4C61E60(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1C4EFF448();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C4EFF3E8();
}

uint64_t sub_1C4C61FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4C6279C(&qword_1EC0C50B8, MEMORY[0x1E69A93A8], &protocol conformance descriptor for ViewService.SportsSchedulesView.SportsScheduleTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4C6216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4C6279C(&qword_1EC0C50C8, MEMORY[0x1E69A93A8], MEMORY[0x1E69A93B0]);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4C62214()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C4C622BC;

  return sub_1C4C623C8();
}

uint64_t sub_1C4C622BC()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  v3 = *v2;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBCF0();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1C4C623C8()
{
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1C4C624E4;
  v2 = swift_continuation_init();
  v1[17] = sub_1C456902C(&qword_1EC0BD240, qword_1C4F5F810);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C47CDA90;
  v1[13] = &unk_1F4405890;
  v1[14] = v2;
  [v0 requestedSchedulesForTeamsWithReply_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1C4C624E4()
{
  sub_1C43FCF70();
  sub_1C43FBE64();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 144);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_1C4C6261C(void *a1)
{
  v1 = [a1 umcid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

unint64_t sub_1C4C626B8()
{
  result = qword_1EC0C50C0;
  if (!qword_1EC0C50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C50C0);
  }

  return result;
}

uint64_t sub_1C4C6272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8FD0, &qword_1C4F0EAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C6279C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4C62810(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4C62880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for SportsSchedulesDatabaseTable;
  a5[4] = &off_1F43FD4F8;
  v10 = swift_allocObject();
  *a5 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C62924(void *a1@<X8>)
{
  sub_1C44E9220();
  if (!v1)
  {
    v4 = v3;
    a1[3] = &type metadata for SportsSchedulesDatabaseTable;
    a1[4] = &off_1F43FD4F8;
    v5 = swift_allocObject();
    *a1 = v5;
    v5[2] = 0x6870617267;
    v5[3] = 0xE500000000000000;
    v6 = MEMORY[0x1E69E7CC0];
    v5[4] = v4;
    v5[5] = v6;
  }
}

void sub_1C4C629C4()
{
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C4B44868(0x6870617267, 0xE500000000000000, v1);
  }
}

void sub_1C4C62A3C()
{
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C446C37C(sub_1C4B44BB4, 0);
  }
}

unint64_t sub_1C4C62B0C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_1C4428DA0(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6940F90](v7, a3);
      goto LABEL_6;
    }

    if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v8 = *(a3 + 8 * v7 + 32);

LABEL_6:
    v12 = v8;
    v9 = a1(&v12);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C4C62C14(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1C4C62D14(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1C4C62DF8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1C442E860(a2, v4 + 40);
  sub_1C441D670(a2, v13);
  sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
  sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *(v4 + 80) = v10;
  *(v4 + 96) = v11;
  *(v4 + 112) = v12;
  *(v4 + 24) = a4;
  *(v4 + 32) = a1;
  *(v4 + 16) = a3;
  return v4;
}

uint64_t sub_1C4C62EC4()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1C4409678(v0 + 5, v1);
  (*(v2 + 16))(v13, v1, v2);
  v3 = v14;
  v4 = v15;
  sub_1C4409678(v13, v14);
  (*(v4 + 16))(v3, v4);

  sub_1C4418704(sub_1C4C66A1C, v0, v5, v6, v7, v8, v9, v10, v12, v13[0]);

  return sub_1C440962C(v13);
}

uint64_t sub_1C4C62FB4(uint64_t a1, void *a2)
{
  v5 = a2[8];
  v6 = a2[9];
  sub_1C4409678(a2 + 5, v5);
  (*(v6 + 16))(v13, v5, v6);
  v7 = v14;
  v8 = v15;
  sub_1C4409678(v13, v14);
  sub_1C4BC62DC(a1, v7, v8);
  result = sub_1C440962C(v13);
  if (!v2)
  {
    sub_1C4C66A38((a2 + 10), v13);
    v10 = v14;
    if (v14)
    {
      v11 = v16;
      sub_1C4409678(v13, v14);
      sub_1C4C6EE08(a1, 0, 0, 1, 0, v10, v11);
      if (v12)
      {
        sub_1C4B8B8EC();
      }

      return sub_1C440962C(v13);
    }

    else
    {
      return sub_1C4420C3C(v13, &qword_1EC0C50D0, &unk_1C4F5FAD0);
    }
  }

  return result;
}

uint64_t sub_1C4C63104(uint64_t *a1)
{
  v5 = 0;
  v2 = *a1;
  v1 = a1[1];
  v4[3] = a1;
  v4[4] = &v5;
  result = sub_1C4C84428(v2, v1, sub_1C4C666D8, v4);
  if (v5)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C4C631E8(uint64_t a1)
{
  v4 = *(a1 + 56);
  v6 = *(v4 + 88);
  v5 = *(v4 + 96);
  if (*(v4 + 80) == 1)
  {
    v7 = 0uLL;
    if (v5 >> 60 == 15)
    {
      v63 = v1;
    }

    else
    {
      v10 = sub_1C43FE99C();
      sub_1C4431E64(v10, v11);
      v12 = sub_1C43FE99C();
      sub_1C44344B8(v12, v13);
      v14 = sub_1C43FE99C();
      sub_1C44F9344(v14, v15);
      if (v2)
      {
        goto LABEL_24;
      }

      v63 = v1;
      *(&v7 + 1) = v16;
    }

    v61 = v7;
    v62 = v5 >> 60 == 15;
  }

  else
  {
    v63 = v1;
    v61 = 0uLL;
    v62 = 1;
    v8 = sub_1C43FE99C();
    sub_1C4431E64(v8, v9);
  }

  if (*(v4 + 32) != 1)
  {
    goto LABEL_14;
  }

  sub_1C4441C50(*(v4 + 33));
  if (v18 == 0x7165527261656C63 && v17 == 0xED00006465726975)
  {

LABEL_22:
    sub_1C4C62EC4();
    if (!v2)
    {
      sub_1C4D0E478();
    }

LABEL_24:
    v31 = sub_1C43FE99C();
    return sub_1C441DFEC(v31, v32);
  }

  v20 = sub_1C4F02938();

  if (v20)
  {
    goto LABEL_22;
  }

LABEL_14:
  v56 = v6;
  v57 = v5;
  v21 = sub_1C444E0CC();
  v22 = v21 + 32;
  v23 = -*(v21 + 16);
  v24 = -1;
  do
  {
    v25 = v23 + v24;
    if (v23 + v24 == -1)
    {
      break;
    }

    if (++v24 >= *(v21 + 16))
    {
      __break(1u);
LABEL_34:

      result = sub_1C440962C(v58);
      __break(1u);
      return result;
    }

    sub_1C442E860(v22, v58);
    v26 = sub_1C4C6361C(v58);
    if (v2)
    {
      goto LABEL_34;
    }

    v27 = v26;
    v22 += 40;
    sub_1C440962C(v58);
  }

  while ((v27 & 1) == 0);

  v28 = v63;
  _s27SQLConnectionViewGenerationC14SubjectBundlerCMa();
  swift_initStackObject();

  v30 = sub_1C4C6645C(v29);
  if (v2)
  {
    v31 = v56;
    v32 = v57;
    return sub_1C441DFEC(v31, v32);
  }

  v34 = v25 != -1;
  MEMORY[0x1EEE9AC00](v30);
  v53 = a1;
  LOBYTE(v54) = v34;
  v55 = v28;
  sub_1C4C647E8(sub_1C4C669D8, &v52);
  v35 = v28[8];
  v36 = v28[9];
  sub_1C4409678(v28 + 5, v35);
  (*(v36 + 16))(v58, v35, v36);
  v37 = v59;
  v38 = v60;
  sub_1C4409678(v58, v59);
  (*(v38 + 16))(v37, v38);

  MEMORY[0x1EEE9AC00](v39);
  v53 = v28;
  v54 = &v61;
  LOBYTE(v55) = v34;
  sub_1C487C188();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_1C440962C(v58);
  if (*(v4 + 80))
  {
    v46 = v57;
    if (v45)
    {
      v47 = 0;
      v48 = 0xF000000000000000;
    }

    else
    {
      v47 = sub_1C44F95AC(v41, v43);
      v48 = v51;
    }

    sub_1C4CCDA9C(v47, v48);
    sub_1C441DFEC(v47, v48);
    v49 = v56;
    v50 = v46;
  }

  else
  {
    sub_1C444F17C();
    v49 = v56;
    v50 = v57;
  }

  sub_1C441DFEC(v49, v50);
}

uint64_t sub_1C4C6361C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1C4409678(a1, v2);
  v4 = *(v3 + 72);
  v5 = v4(v2, v3);
  sub_1C4450520(v5);
  if (v7 == 0xD000000000000014 && 0x80000001C4F84230 == v6)
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = sub_1C4F02938();

  if ((v9 & 1) == 0)
  {
    v10 = v4(v2, v3);
    sub_1C4450520(v10);
    if (v12 != 0xD000000000000010 || 0x80000001C4F84260 != v11)
    {
      v14 = sub_1C4F02938();

      if ((v14 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v15 = a1[3];
  v16 = a1[4];
  sub_1C4409678(a1, v15);
  v17 = (*(v16 + 48))(v15, v16);
  sub_1C4441C50(v17);
  if (v19 == 0xD000000000000013 && 0x80000001C4F87C40 == v18)
  {
    goto LABEL_24;
  }

  v21 = sub_1C4F02938();

  if (v21)
  {
    goto LABEL_25;
  }

  v22 = a1[3];
  v23 = a1[4];
  sub_1C4409678(a1, v22);
  v24 = (*(v23 + 48))(v22, v23);
  sub_1C4441C50(v24);
  if (v26 == 0x7165527261656C63 && v25 == 0xED00006465726975)
  {
LABEL_24:

    goto LABEL_25;
  }

  v28 = sub_1C4F02938();

  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v30 = a1[3];
  v31 = a1[4];
  sub_1C4409678(a1, v30);
  return (*(v31 + 40))(v30, v31) & 1;
}

uint64_t sub_1C4C63888(char *a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v61 = a5;
  v70 = a4;
  v72 = a2;
  v71 = a1;
  v63 = sub_1C4F00758();
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v66 = a3;
  result = sub_1C444E0CC();
  v17 = result;
  v18 = *(result + 16);
  if (!v18)
  {
  }

  v62 = v15;
  v56 = v9;
  v19 = 0;
  v68 = result + 32;
  v65 = 0x80000001C4F84260;
  v69 = 0x80000001C4F84230;
  v60 = 0x80000001C4F87C40;
  v59 = 0x80000001C4F87C20;
  v57 = (v7 + 32);
  v58 = (v7 + 8);
  v64 = v18;
  v67 = result;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1C442E860(v68 + 40 * v19, &v81);
    if ((v70 & 1) == 0)
    {
      v20 = v82;
      v21 = v83;
      sub_1C4409678(&v81, v82);
      switch((*(v21 + 72))(v20, v21))
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
        case 5u:
          v22 = sub_1C4F02938();

          v17 = v67;
          if ((v22 & 1) == 0)
          {
            v23 = v82;
            v24 = v83;
            sub_1C4409678(&v81, v82);
            v25 = (*(v24 + 72))(v23, v24);
            v18 = v64;
            switch(v25)
            {
              case 4:
                goto LABEL_8;
              default:
                v26 = sub_1C4F02938();

                v17 = v67;
                if (v26)
                {
                  goto LABEL_10;
                }

                goto LABEL_34;
            }
          }

          break;
        default:
LABEL_8:

          v17 = v67;
          break;
      }
    }

LABEL_10:
    v27 = v82;
    v28 = v83;
    sub_1C4409678(&v81, v82);
    if ((*(v28 + 40))(v27, v28) & 1) != 0 || (*(*(v66 + 56) + 32))
    {
      break;
    }

    v31 = v82;
    v32 = v83;
    sub_1C4409678(&v81, v82);
    (*(v32 + 128))(v31, v32);
LABEL_34:
    ++v19;
    result = sub_1C440962C(&v81);
    if (v19 == v18)
    {
    }
  }

  v29 = v82;
  v30 = v83;
  sub_1C4409678(&v81, v82);
  switch((*(v30 + 48))(v29, v30))
  {
    case 2u:

      goto LABEL_24;
    default:
      v33 = sub_1C4F02938();

      if (v33)
      {
LABEL_24:
        v40 = v82;
        v41 = v83;
        sub_1C4409678(&v81, v82);
        (*(v41 + 112))(v40, v41);
        goto LABEL_34;
      }

      sub_1C442E860(&v81, v80);
      sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
      sub_1C456902C(&qword_1EC0C50E8, &qword_1C4F5FB28);
      if (!swift_dynamicCast())
      {
        _s20KnowledgeGraphSourceCMa();
        if (swift_dynamicCast())
        {
          v36 = *(v73[0] + 152);
          while (1)
          {
            v37 = sub_1C4CDF950(v36, 0, 0, 1);
            v36 = v38;
            v39 = v37;
            if (!*(v37 + 16))
            {
              break;
            }

            v78 = sub_1C456902C(&qword_1EC0C50F0, qword_1C4F5FB30);
            v79 = sub_1C4401CBC(&qword_1EDDF0340, &qword_1EC0C50F0, qword_1C4F5FB30, MEMORY[0x1E69E6CC8]);
            *&v76 = v39;
            *(&v76 + 1) = sub_1C4C647BC;
            v77 = 0;
            (v71)(&v76);
            if (v5)
            {

              v55 = &v76;
              goto LABEL_38;
            }

            sub_1C440962C(&v76);
          }

          sub_1C4CDF674(v52, *&v36);
        }

        else
        {
          _s26GlobalKnowledgeGraphSourceCMa();
          if (!swift_dynamicCast())
          {
            v53 = v82;
            v54 = v83;
            sub_1C4409678(&v81, v82);
            (*(v54 + 104))(v53, v54);
            goto LABEL_33;
          }

          sub_1C4CD90DC();
        }

LABEL_33:
        sub_1C440962C(v80);
        goto LABEL_34;
      }

      sub_1C441D670(&v76, v73);
      v34 = v74;
      v35 = v75;
      sub_1C4409678(v73, v74);
      if (v70)
      {
        (*(v35 + 16))(v34, v35);
      }

      else
      {
        (*(v35 + 24))(v34, v35);
      }

      if (!v5)
      {
        (*v57)(v62, v12, v63);
        v42 = v74;
        v43 = v75;
        sub_1C4409678(v73, v74);
        v45 = v12;
        v44 = (*(v43 + 8))(v42, v43);
        MEMORY[0x1EEE9AC00](v44);
        v46 = v72;
        *(&v56 - 2) = v71;
        *(&v56 - 1) = v46;
        v47 = v56;
        sub_1C4F00648();

        v48 = v74;
        v49 = v75;
        sub_1C4409678(v73, v74);
        (*(v49 + 32))(v47, v48, v49);
        v50 = *v58;
        v51 = v63;
        (*v58)(v47, v63);
        v50(v62, v51);
        sub_1C440962C(v73);
        v12 = v45;
        v18 = v64;
        v17 = v67;
        goto LABEL_33;
      }

      v55 = v73;
LABEL_38:
      sub_1C440962C(v55);
      sub_1C440962C(v80);
      return sub_1C440962C(&v81);
  }
}

uint64_t sub_1C4C6436C(__n128 a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v40 = a4;
  v36 = a3;
  v5 = sub_1C4F00588();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  sub_1C4F006D8();
  v11 = sub_1C4F006B8();

  if (!*(v11 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v31 = v6;
  v32 = v5;
  v14 = *(v6 + 16);
  v13 = v6 + 16;
  v28 = (*(v13 + 64) + 32) & ~*(v13 + 64);
  v29 = v14;
  v34 = v10;
  v30 = v13;
  v14(v10, v11 + v28, v5);

  v35 = xmmword_1C4F0D130;
  while (1)
  {
    sub_1C4F006D8();
    v15 = sub_1C4F006A8();
    if (v4)
    {
      (*(v31 + 8))(v34, v32);
    }

    v16 = v15;

    if ((v16 & 1) == 0)
    {
      break;
    }

    v18 = MEMORY[0x1C693F260](v17);
    sub_1C456902C(&qword_1EC0B8C78, &unk_1C4F0E0B0);
    v19 = swift_allocObject();
    *(v19 + 16) = v35;
    *(v19 + 32) = v18;
    v38 = sub_1C456902C(&qword_1EC0BC860, &unk_1C4F29660);
    v39 = sub_1C4401CBC(&qword_1EDDF05E8, &qword_1EC0BC860, &unk_1C4F29660, MEMORY[0x1E69E6328]);
    v37[0] = v19;
    v36(v37);
    sub_1C440962C(v37);
  }

  sub_1C4F006E8();
  v20 = sub_1C4F006B8();

  if (!*(v20 + 16))
  {
    goto LABEL_13;
  }

  v21 = v32;
  v29(v33, v20 + v28, v32);

  while (1)
  {
    sub_1C4F006E8();
    v22 = sub_1C4F006A8();

    if ((v22 & 1) == 0)
    {
      break;
    }

    v24 = MEMORY[0x1C693F260](v23);
    sub_1C456902C(&qword_1EC0B8C78, &unk_1C4F0E0B0);
    v25 = swift_allocObject();
    *(v25 + 16) = v35;
    *(v25 + 32) = v24;
    v38 = sub_1C456902C(&qword_1EC0BC860, &unk_1C4F29660);
    v39 = sub_1C4401CBC(&qword_1EDDF05E8, &qword_1EC0BC860, &unk_1C4F29660, MEMORY[0x1E69E6328]);
    v37[0] = v25;
    v36(v37);
    sub_1C440962C(v37);
  }

  v26 = *(v31 + 8);
  v26(v33, v21);
  return (v26)(v34, v21);
}

uint64_t sub_1C4C647BC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1C4EFF0A8();
  *a2 = result;
  return result;
}

uint64_t sub_1C4C64848@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1C4C66A38((a2 + 10), v23);
  v11 = v24;
  if (v24)
  {
    v12 = v26;
    sub_1C4409678(v23, v24);
    sub_1C4C6EE08(a1, *a3, *(a3 + 8), *(a3 + 16), 0, v11, v12);
    v11 = v13;
    result = sub_1C440962C(v23);
    if (v5)
    {
      return result;
    }

    if (a4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_1C4420C3C(v23, &qword_1EC0C50D0, &unk_1C4F5FAD0);
    if (a4)
    {
LABEL_4:
      v15 = a2[8];
      v16 = a2[9];
      sub_1C4409678(a2 + 5, v15);
      (*(v16 + 16))(v23, v15, v16);
      v17 = v24;
      v18 = v25;
      sub_1C4409678(v23, v24);
      sub_1C4BC62DC(a1, v17, v18);
      if (v5)
      {

        return sub_1C440962C(v23);
      }

      sub_1C440962C(v23);
      if (v11)
      {

        sub_1C4B8B8EC();
      }

      goto LABEL_11;
    }
  }

  sub_1C4C64A78();
  if (v5)
  {
  }

LABEL_11:
  result = sub_1C4C64D00(a1, v11);
  if (v11)
  {

    sub_1C4B8BB5C();
    v20 = v19;
    v22 = v21;

    *a5 = v20;
    *(a5 + 8) = v22;
    *(a5 + 16) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
  }

  return result;
}

uint64_t sub_1C4C64A78()
{
  sub_1C4C66A38(v0 + 80, &v15);
  if (!v16)
  {
    return sub_1C4420C3C(&v15, &qword_1EC0C50D0, &unk_1C4F5FAD0);
  }

  sub_1C460986C(&v15, &v17);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FB3840);
  v2 = v18;
  v3 = v19;
  sub_1C4409678(&v17, v18);
  (*(v3 + 16))(&v15, v2, v3);
  sub_1C4409678(&v15, v16);
  v4 = sub_1C4407FBC();
  v6 = v5(v4);
  MEMORY[0x1C6940010](v6);

  sub_1C440962C(&v15);
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB3860);
  sub_1C4409678(&v17, v18);
  v7 = sub_1C4407FBC();
  v9 = v8(v7);
  MEMORY[0x1C6940010](v9);

  MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FBD8A0);
  sub_1C4409678(&v17, v18);
  v10 = sub_1C4407FBC();
  v12 = v11(v10);
  MEMORY[0x1C6940010](v12);

  MEMORY[0x1C6940010](34, 0xE100000000000000);
  sub_1C4EFBE98();

  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v13);
    sub_1C4F00638();
  }

  return sub_1C440962C(&v17);
}

uint64_t sub_1C4C64D00(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v65 = a2;
  ppStmt[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v64 - v5;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v66 = v2;
  *&v70 = v7;
  *(&v70 + 1) = v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0BD2B8, &unk_1C4F5FAE0);
  sub_1C4EFCB88();
  v9 = sub_1C4A7A230();
  v62 = sub_1C4A7A284();
  *&v63 = sub_1C4401CBC(&unk_1EDDEFFF8, &qword_1EC0BD2A0, &qword_1C4F2DA68, MEMORY[0x1E69E9290]);
  v61 = v9;
  v10 = v67;
  sub_1C4F01C08();
  (*(v4 + 8))(v6, v3);

  v11 = v72;
  v12 = sub_1C4EFBF08();
  if (!v12)
  {

    v31 = sub_1C446D0DC();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v31);
    *v32 = 0xD000000000000014;
    *(v32 + 8) = 0x80000001C4FB9FE0;
LABEL_12:
    *(v32 + 16) = 2;
    return swift_willThrow();
  }

  v13 = v12;
  v64[1] = v11;
  v68 = v10;
  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  v70 = v72;
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FBA000);
  v14 = v66;
  sub_1C4432D30((v66 + 40));
  v15 = sub_1C44078DC();
  v16(v15);
  sub_1C4413AE4();
  v17 = sub_1C44078DC();
  v19 = v18(v17);
  MEMORY[0x1C6940010](v19);

  sub_1C440962C(&v72);
  MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBA020);
  sub_1C4432D30((v14 + 40));
  v20 = sub_1C44078DC();
  v21(v20);
  sub_1C4413AE4();
  v22 = sub_1C44078DC();
  v24 = *(v23(v22) + 16);
  if (v24)
  {
    v67 = *(&v11 + 1);
    v73 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v24, 0);
    v25 = v73;
    v26 = *(v73 + 16);
    v27 = 16 * v26;
    do
    {
      v73 = v25;
      v28 = *(v25 + 24);
      v29 = v26 + 1;
      if (v26 >= v28 >> 1)
      {
        sub_1C44CD9C0(v28 > 1, v26 + 1, 1);
        v25 = v73;
      }

      *(v25 + 16) = v29;
      v30 = v25 + v27;
      *(v30 + 32) = 63;
      *(v30 + 40) = 0xE100000000000000;
      v27 += 16;
      v26 = v29;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1C440962C(&v72);
  *&v72 = v25;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
  v33 = sub_1C4F01048();
  v35 = v34;

  MEMORY[0x1C6940010](v33, v35);

  MEMORY[0x1C6940010](0x29202020200ALL, 0xE600000000000000);
  v36 = v70;
  ppStmt[0] = 0;
  v37 = sub_1C4F011C8();
  v38 = sqlite3_prepare_v2(v13, (v37 + 32), -1, ppStmt, 0);

  v69 = v38;
  if (v38 || (v42 = ppStmt[0]) == 0)
  {

    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;
    sub_1C4F02248();

    *&v72 = 0xD00000000000001CLL;
    *(&v72 + 1) = 0x80000001C4FBD830;
    MEMORY[0x1C6940010](v36, *(&v36 + 1));

    v39 = v72;
    v40 = sub_1C446D0DC();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v40);
    *v32 = v39;
    goto LABEL_12;
  }

  v73 = 0;
  v74 = 1;
  v43 = v66;
  sub_1C4C66A38(v66 + 80, &v70);
  if (!v71)
  {
    v59 = sub_1C4420C3C(&v70, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_19:
    MEMORY[0x1EEE9AC00](v59);
    v60 = v65;
    v64[-6] = v42;
    v64[-5] = v60;
    v61 = &v73;
    v62 = &v69;
    v63 = v36;
    sub_1C4F00638();

    return sqlite3_finalize(v42);
  }

  sub_1C460986C(&v70, &v72);
  sub_1C4432D30((v43 + 40));
  v44 = sub_1C44078DC();
  v45(v44);
  sub_1C4409678(&v70, v71);
  v46 = sub_1C44078DC();
  v48 = v47(v46);
  MEMORY[0x1EEE9AC00](v48);
  *&v63 = &v72;
  v49 = v68;
  v50 = sub_1C4C62D14(sub_1C4C66ACC, &v61, v48);
  v52 = v51;
  v68 = v49;

  sub_1C440962C(&v70);
  v73 = v50;
  v74 = v52 & 1;
  if ((v52 & 1) == 0)
  {
    v59 = sub_1C440962C(&v72);
    goto LABEL_19;
  }

  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  *&v70 = 0xD00000000000001ELL;
  *(&v70 + 1) = 0x80000001C4FBD850;
  sub_1C4413AE4();
  v53 = sub_1C44078DC();
  v55 = v54(v53);
  MEMORY[0x1C6940010](v55);

  v56 = v70;
  v57 = sub_1C446D0DC();
  sub_1C43FFB2C(&type metadata for ViewUpdateError, v57);
  *v58 = v56;
  *(v58 + 16) = 2;
  swift_willThrow();
  sub_1C440962C(&v72);
  return sqlite3_finalize(v42);
}

uint64_t sub_1C4C654FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v28 = a2;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_1C4EFB768();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4F00588();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  result = sub_1C4F006B8();
  if (*(result + 16))
  {
    v25 = v13;
    v26 = v12;
    v17 = *(v13 + 16);
    v18 = result + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v30 = v15;
    v17(v15, v18, v12);

    v27 = xmmword_1C4F0D130;
    v19 = MEMORY[0x1E69E7360];
    while (1)
    {
      v20 = sub_1C4F006A8();
      if (v3 || (v20 & 1) == 0)
      {
        break;
      }

      v21 = MEMORY[0x1C693F260]();
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v22 = swift_allocObject();
      *(v22 + 16) = v27;
      *(v22 + 56) = v19;
      *(v22 + 64) = MEMORY[0x1E69A01D0];
      *(v22 + 32) = v21;
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*(v9 + 8))(v11, v8);
      sub_1C440BAA8(v7, 1, 1, v8);
      v32 = 0;
      memset(v31, 0, sizeof(v31));
      sub_1C4EFB9A8();
      sub_1C4420C3C(v31, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4420C3C(v7, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if ((v33 & 1) == 0)
      {
        if (v34)
        {
          *&v31[0] = v21;
          v23 = sub_1C4F02858();
          sub_1C4B8BF6C(v23, v24);
        }
      }
    }

    return (*(v25 + 8))(v30, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C658DC@<X0>(uint64_t *a1@<X8>)
{
  sub_1C4F02248();
  swift_getKeyPath();
  sub_1C456902C(&qword_1EC0C50D8, &qword_1C4F5FB20);
  sub_1C4EFCBE8();

  v2 = MEMORY[0x1C693FEF0](0, 0xE000000000000000);
  v4 = v3;

  result = MEMORY[0x1C6940010](0xD00000000000002DLL, 0x80000001C4FBD870);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4C659CC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[5];
  sub_1C4409678(a2, v4);
  if (v2 == (*(v5 + 8))(v4, v5) && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C4F02938();
  }

  return v8 & 1;
}

uint64_t sub_1C4C65A78(uint64_t a1, sqlite3_stmt *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v9 = v8;
  v41 = a6;
  v42 = a7;
  v43 = a5;
  v44 = a1;
  v49 = a4;
  v54 = a2;
  v57 = sub_1C4F00588();
  v11 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0C4C78, &unk_1C4F5FAF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = (&v41 - v15);
  v16 = sub_1C456902C(&qword_1EC0C4C80, &unk_1C4F5DC90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v46 = v11 + 16;
  v48 = v11;
  v50 = a3;
  v51 = (v11 + 8);
  while (2)
  {
    result = sub_1C4F006A8();
    if (!v9 && (result & 1) != 0)
    {
      v45 = 0;
      sqlite3_reset(v54);
      result = sub_1C4F006B8();
      v23 = 0;
      v24 = *(result + 16);
      v52 = v24;
      for (i = result; ; result = i)
      {
        if (v23 == v24)
        {
          v25 = 1;
          v23 = v24;
        }

        else
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v23 >= *(result + 16))
          {
            goto LABEL_28;
          }

          v27 = v47;
          v26 = v48;
          v28 = result + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23;
          v29 = *(v14 + 48);
          *v47 = v23;
          (*(v26 + 16))(v27 + v29, v28, v57);
          sub_1C49328EC(v27, v18, &qword_1EC0C4C78, &unk_1C4F5FAF0);
          v25 = 0;
          ++v23;
        }

        sub_1C440BAA8(v18, v25, 1, v14);
        sub_1C49328EC(v18, v21, &qword_1EC0C4C80, &unk_1C4F5DC90);
        if (sub_1C44157D4(v21, 1, v14) == 1)
        {
          break;
        }

        v30 = *v21;
        result = (*(v11 + 32))(v13, &v21[*(v14 + 48)], v57);
        if (a3 && (*(v49 + 8) & 1) == 0 && v30 == *v49)
        {

          v55 = MEMORY[0x1C693F260](v31);
          v32 = sub_1C4F02858();
          v33 = v45;
          sub_1C4B8BF6C(v32, v34);
          v45 = v33;
          if (v33)
          {
            (*v51)(v13, v57);
          }
        }

        v35 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        if (v35 < 0xFFFFFFFF80000000)
        {
          goto LABEL_25;
        }

        if (v35 > 0x7FFFFFFF)
        {
          goto LABEL_26;
        }

        v36 = sub_1C4F00568();
        sqlite3_bind_value(v54, v30 + 1, v36);
        (*v51)(v13, v57);
        a3 = v50;
        v24 = v52;
      }

      v37 = sqlite3_step(v54);
      *v43 = v37;
      v9 = v45;
      if ((v37 & 0xFFFFFFFE) == 0x64)
      {
        continue;
      }

      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1C4F02248();

      v55 = 0x747320726F727265;
      v56 = 0xEF20676E69707065;
      MEMORY[0x1C6940010](v41, v42);
      v38 = v55;
      v39 = v56;
      sub_1C446D0DC();
      swift_allocError();
      *v40 = v38;
      *(v40 + 8) = v39;
      *(v40 + 16) = 2;
      return swift_willThrow();
    }

    return result;
  }
}

uint64_t sub_1C4C65F24()
{

  sub_1C440962C((v0 + 40));
  sub_1C4420C3C(v0 + 80, &qword_1EC0C50D0, &unk_1C4F5FAD0);
  return v0;
}

uint64_t sub_1C4C65F6C()
{
  sub_1C4C65F24();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C65FC4(uint64_t *a1)
{
  sub_1C4C63104(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C6603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();
  sub_1C4C81AA0(a1, a2, a3);
  if (v4)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v31, v34);
      swift_unownedRetainStrong();

      sub_1C443A738(a1, a2, v15, v16, v17, v18, v19, v20);

      v23 = v14[26];
      if (v23)
      {
        v24 = v14[25];
        sub_1C4F00688();
        swift_unownedRetainStrong();
        sub_1C44098F0(a4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v11);

        v29 = sub_1C4B45B18(v14, v11);
        sub_1C4420758();
        sub_1C442E860(v34, v33);
        _s27SQLConnectionViewGenerationCMa();
        a1 = swift_allocObject();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4C62DF8(v29, v33, v24, v23);
      }

      else
      {
        v25 = sub_1C450B034();
        sub_1C43FFB2C(&unk_1F44064D8, v25);
        *v26 = a1;
        *(v26 + 8) = a2;
        *(v26 + 16) = 0xD000000000000041;
        *(v26 + 24) = 0x80000001C4FB2690;
        v27 = v33[1];
        *(v26 + 32) = v33[0];
        *(v26 + 48) = v27;
        *(v26 + 64) = 3;
        swift_willThrow();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      sub_1C440962C(v34);
      sub_1C442D738();
    }

    else
    {
      memset(v31, 0, sizeof(v31));
      v32 = 0;
      sub_1C4420C3C(v31, &unk_1EC0C06B0, &qword_1C4F5FBA0);
      v21 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v21);
      *v22 = a1;
      *(v22 + 8) = a2;
      *(v22 + 16) = xmmword_1C4F5B670;
      *(v22 + 32) = 0xD000000000000025;
      *(v22 + 40) = 0x80000001C4FB83A0;
      *(v22 + 48) = v30;
      *(v22 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a1;
}

uint64_t sub_1C4C663B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C6603C(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C6645C(uint64_t a1)
{
  *(v1 + 16) = a1;

  sub_1C4F005F8();

  if (v2)
  {
  }

  return v1;
}

uint64_t sub_1C4C664D0()
{

  sub_1C4F005F8();

  return v0;
}

uint64_t sub_1C4C66680()
{
  sub_1C4C664D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C666E4(void *a1)
{
  v1 = sub_1C4409678(a1, a1[3]);
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C4422F90(v12);
  sub_1C4F01478();
  while (1)
  {
    sub_1C4418280(v12, AssociatedTypeWitness);
    sub_1C4F01FA8();
    if (v11)
    {
      break;
    }

    v5 = v10[1];
    v6 = sub_1C4F006C8();
    if (!sqlite3_reset(v6))
    {
      v7 = sub_1C4F006C8();
      if (!sqlite3_bind_int64(v7, 1, v5))
      {
        v8 = sub_1C4F006C8();
        if (sqlite3_step(v8) == 101)
        {
          continue;
        }
      }
    }

    sub_1C4F00688();
    sub_1C4F006C8();
    sub_1C4F00628();
    sub_1C4C66B64();
    swift_allocError();
    sub_1C4F005B8();
    swift_willThrow();
    return sub_1C440962C(v12);
  }

  return sub_1C440962C(v12);
}

uint64_t sub_1C4C66A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C50D0, &unk_1C4F5FAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4C66B64()
{
  result = qword_1EC0C50E0;
  if (!qword_1EC0C50E0)
  {
    sub_1C4F00628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C50E0);
  }

  return result;
}

void sub_1C4C66BE8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v20 = v5;
  v21 = v4;
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v19 = sub_1C4EFCB28();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFC178();
  v22 = v3;
  v23 = v1;
  sub_1C47DCB64();
  sub_1C4EFCAE8();
  sub_1C456902C(&qword_1EC0BD2B8, &unk_1C4F5FAE0);
  sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  v17 = MEMORY[0x1E69E9290];
  sub_1C4401CBC(&unk_1EDDEFFF8, &qword_1EC0BD2A0, &qword_1C4F2DA68, MEMORY[0x1E69E9290]);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, v17);
  sub_1C4EFCAB8();
  (*(v8 + 8))(v11, v6);
  (*(v13 + 8))(v16, v19);
  sub_1C43FE9F0();
}

uint64_t sub_1C4C66E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v18 = a1;
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v16 = sub_1C4EFCB28();
  v10 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFC178();
  v19 = a2;
  v20 = a3;
  sub_1C47DCB64();
  sub_1C4EFCAE8();
  sub_1C456902C(&qword_1EC0C0698, &qword_1C4F3EFB8);
  sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  v13 = MEMORY[0x1E69E9290];
  sub_1C4401CBC(&qword_1EDDF0008, &qword_1EC0C0690, &qword_1C4F3EFB0, MEMORY[0x1E69E9290]);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, v13);
  sub_1C4EFCAB8();
  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v16);
}

uint64_t sub_1C4C6704C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C4AA0ED8(sub_1C49B181C, 0, a2, a3);
  sub_1C4401CBC(&qword_1EDDF0008, &qword_1EC0C0690, &qword_1C4F3EFB0, MEMORY[0x1E69E9290]);
  sub_1C4EFCB68();
  sub_1C4EFCBB8();
  (*(v6 + 8))(v8, v5);
}

void sub_1C4C67230()
{
  sub_1C43FBD3C();
  sub_1C440929C();
  sub_1C456902C(&qword_1EC0BD280, &qword_1C4F2DA08);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C44011E8();
  sub_1C4407FD4();
  sub_1C4401CBC(v2, &qword_1EC0BD280, &qword_1C4F2DA08, v3);
  sub_1C4EFCB68();
  sub_1C4413B04();
  if (v0)
  {

    v4 = sub_1C44128A0();
    v5(v4);
    v6 = sub_1C456902C(&qword_1EC0BD278, &unk_1C4F2D9F0);
    sub_1C43FCABC(v6);
  }

  else
  {
    v7 = sub_1C44128A0();
    v8(v7);
  }

  sub_1C43FE9F0();
}

void sub_1C4C67368()
{
  sub_1C43FBD3C();
  sub_1C440929C();
  sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C44011E8();
  sub_1C4407FD4();
  sub_1C4401CBC(v2, &qword_1EC0BE568, &unk_1C4F374A0, v3);
  sub_1C4EFCB68();
  sub_1C4413B04();
  if (v0)
  {

    v4 = sub_1C44128A0();
    v5(v4);
    v6 = sub_1C456902C(&qword_1EC0BE578, qword_1C4F374B0);
    sub_1C43FCABC(v6);
  }

  else
  {
    v7 = sub_1C44128A0();
    v8(v7);
  }

  sub_1C43FE9F0();
}

void sub_1C4C674A0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v99 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&qword_1EC0C5100, &qword_1C4F5FC60);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v92 - v9;
  v97 = sub_1C456902C(&qword_1EC0C0688, &qword_1C4F3EFA8);
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v92 - v17;
  v102 = v6;
  v103 = v4;
  strcpy(v108, "$SUBJECT_IDS");
  BYTE5(v108[1]) = 0;
  HIWORD(v108[1]) = -5120;
  v98 = sub_1C4415EA8();
  v19 = *(sub_1C4F01FC8() + 16);

  v102 = MEMORY[0x1E69E7CC0];
  v20 = v19 - 2;
  if (v19 < 2)
  {
    goto LABEL_45;
  }

  v93 = v15;
  v21 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3B44(v21);
  v22 = v102;
  if (v19 == 2)
  {
LABEL_17:
    v94 = v18;
    v95 = v1;
    v92 = v11;
    v101 = v6;
    v33 = v99 + 8;
    sub_1C43FD030();
    v36 = v35 & v34;
    v38 = (v37 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v39 = 0;
    if (!v36)
    {
      goto LABEL_19;
    }

    do
    {
      v40 = v4;
      v41 = v39;
LABEL_23:
      v42 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v43 = (v41 << 10) | (16 * v42);
      v44 = (v99[6] + v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v99[7] + v43;
      v48 = *(v47 + 8);
      v100 = *v47;
      v102 = 31524;
      v103 = 0xE200000000000000;
      v108[0] = v46;
      v108[1] = v45;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = MEMORY[0x1E69E6158];
      v50 = sub_1C4F01438();
      MEMORY[0x1C6940010](v50);

      MEMORY[0x1C6940010](125, 0xE100000000000000);
      v51 = v102;
      v52 = v103;
      v102 = v101;
      v103 = v40;
      v108[0] = v51;
      v108[1] = v52;
      v106 = v100;
      v107 = v48;
      sub_1C440FDE0();
      v92 = v49;
      v93 = v53;
      sub_1C44113D8();
      v101 = sub_1C4F02008();
      v4 = v54;
    }

    while (v36);
    while (1)
    {
LABEL_19:
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v41 >= v38)
      {
        break;
      }

      v36 = v33[v41];
      ++v39;
      if (v36)
      {
        v40 = v4;
        v39 = v41;
        goto LABEL_23;
      }
    }

    if (qword_1EDDF6970 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_26;
  }

  v23 = *(v1 + 16);
  while (1)
  {
    v24 = *(v22 + 16);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v25 <= *(v22 + 24) >> 1)
    {
      if (!v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v31 = v24 + v23;
      }

      else
      {
        v31 = v24;
      }

      sub_1C44D45E4(isUniquelyReferenced_nonNull_native, v31, 1, v22);
      v22 = v32;
      if (!v23)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    v27 = (*(v22 + 24) >> 1) - *(v22 + 16);
    sub_1C4EFF0C8();
    if (v27 < v23)
    {
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();

    v28 = *(v22 + 16);
    v29 = __OFADD__(v28, v23);
    v30 = v28 + v23;
    if (v29)
    {
      goto LABEL_44;
    }

    *(v22 + 16) = v30;
LABEL_16:
    if (!--v20)
    {
      goto LABEL_17;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_1C4420780();
  swift_once();
LABEL_26:
  v55 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  v56 = sub_1C442B738(v55, qword_1EDE2CEA8);
  v57 = v96;
  v58 = v101;
  sub_1C4C6704C(v56, v101, v4);
  v59 = v97;
  if (sub_1C44157D4(v57, 1, v97) == 1)
  {
    sub_1C4423A0C(v57, &qword_1EC0C5100, &qword_1C4F5FC60);
  }

  else
  {
    v60 = v57;
    v61 = v92;
    v62 = v94;
    (*(v92 + 32))(v94, v60, v59);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v63 = sub_1C4F00978();
    sub_1C442B738(v63, qword_1EDE2DF70);
    v64 = v93;
    (*(v61 + 16))(v93, v62, v59);
    v65 = sub_1C4F00968();
    v66 = v61;
    v67 = sub_1C4F01CD8();
    if (os_log_type_enabled(v65, v67))
    {
      v68 = swift_slowAlloc();
      v99 = v68;
      v100 = swift_slowAlloc();
      v108[0] = v100;
      *v68 = 136315138;
      swift_getKeyPath();
      sub_1C4EFCBE8();

      v69 = MEMORY[0x1C693FEF0](v102, v103, v104, v105);
      v70 = v4;
      v72 = v71;

      v73 = *(v66 + 8);
      v73(v64, v59);
      v74 = sub_1C441D828(v69, v72, v108);
      v4 = v70;

      v75 = v99;
      *(v99 + 4) = v74;
      v76 = v67;
      v77 = v75;
      _os_log_impl(&dword_1C43F8000, v65, v76, "Unaccounted view dependency names found in SQL code: %s", v75, 0xCu);
      v78 = v100;
      sub_1C440962C(v100);
      MEMORY[0x1C6942830](v78, -1, -1);
      MEMORY[0x1C6942830](v77, -1, -1);

      v73(v94, v59);
    }

    else
    {

      v79 = *(v66 + 8);
      v79(v64, v59);
      v79(v62, v59);
    }

    v58 = v101;
  }

  v80 = *(v95 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  if (v80)
  {
    v82 = v4;
    v102 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v80, 0);
    v81 = v102;
    v83 = *(v102 + 16);
    v84 = 16 * v83;
    do
    {
      v102 = v81;
      v85 = *(v81 + 24);
      v86 = v83 + 1;
      if (v83 >= v85 >> 1)
      {
        sub_1C44CD9C0(v85 > 1, v83 + 1, 1);
        v81 = v102;
      }

      *(v81 + 16) = v86;
      v87 = v81 + v84;
      *(v87 + 32) = 63;
      *(v87 + 40) = 0xE100000000000000;
      v84 += 16;
      v83 = v86;
      --v80;
    }

    while (v80);
    v4 = v82;
  }

  v102 = v81;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
  v88 = sub_1C4F01048();
  v90 = v89;

  v102 = v58;
  v103 = v4;
  v107 = v90;
  strcpy(v108, "$SUBJECT_IDS");
  BYTE5(v108[1]) = 0;
  HIWORD(v108[1]) = -5120;
  v106 = v88;
  sub_1C440FDE0();
  v93 = v91;
  v92 = MEMORY[0x1E69E6158];
  sub_1C44113D8();
  sub_1C4F02008();

  sub_1C43FE9F0();
}

uint64_t sub_1C4C67CE4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = v1 == 0x6C616E7265747865 && v2 == 0xE800000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1C4F013F8() ^ 1;
  }

  return v4 & 1;
}

void sub_1C4C67D64()
{
  sub_1C43FE96C();
  v49 = v1;
  v50 = v0;
  v47 = v2;
  v48 = v3;
  v45 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C4F01188();
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v46 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v43 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v43 - v31;
  if (v8)
  {
    if (v6)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v44 = v30;
      sub_1C44600A0(v48, v17, &unk_1EC0BABB0, &qword_1C4F16ED0);
      if (sub_1C44157D4(v17, 1, v18) == 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4423A0C(v17, &unk_1EC0BABB0, &qword_1C4F16ED0);
      }

      else
      {
        v48 = *(v44 + 32);
        v48(v32, v17, v18);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9888();
        if (v49)
        {
          sub_1C4EF9898();
          (*(v44 + 8))(v28, v18);
          v48(v28, v25, v18);
        }

        sub_1C4EF98E8();
        sub_1C4F01178();
        v37 = v50;
        sub_1C4F010F8();
        if (!v37)
        {

          v42 = *(v44 + 8);
          v42(v28, v18);
          v42(v32, v18);
          goto LABEL_14;
        }

        v38 = *(v44 + 8);
        v38(v28, v18);
        v38(v32, v18);
      }

      sub_1C4EF9888();

      if (v49)
      {
        sub_1C4EF9898();
        v39 = v44;
        (*(v44 + 8))(v22, v18);
        (*(v39 + 32))(v22, v25, v18);
      }

      sub_1C4EF98E8();
      sub_1C4F01178();
      sub_1C4F010F8();
      v40 = sub_1C440DAB4();
      v41(v40);
    }
  }

  else
  {
    sub_1C450B034();
    v33 = swift_allocError();
    sub_1C440E94C(v33, v34);
    sub_1C4411340(v51, v52, v35, v36);
  }

LABEL_14:
  sub_1C43FBC80();
}

void sub_1C4C68220()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v64 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v62 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0C5100, &qword_1C4F5FC60);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = sub_1C456902C(&qword_1EC0C0688, &qword_1C4F3EFA8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v69 = (&v61 - v15);
  v67 = (v16 + 32);
  v65 = (v16 + 8);
  swift_bridgeObjectRetain_n();
  v17 = MEMORY[0x1E69E7CC0];
  for (i = v12; ; v12 = i)
  {
    if (qword_1EDDF6970 != -1)
    {
      sub_1C4420780();
      swift_once();
    }

    v18 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
    sub_1C442B738(v18, qword_1EDE2CEA8);
    sub_1C4EFCBA8();
    if (v1)
    {
      swift_bridgeObjectRelease_n();

LABEL_22:
      sub_1C43FBC80();
      return;
    }

    v19 = sub_1C44157D4(v12, 1, v13);
    v68 = 0;
    if (v19 == 1)
    {

      sub_1C4423A0C(v12, &qword_1EC0C5100, &qword_1C4F5FC60);
      v48 = *(v17 + 16);
      if (v48)
      {
        v74 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0(0, v48, 0);
        v69 = (v62 + 8);
        v49 = sub_1C4C6AB3C(&qword_1EDDFCD90, MEMORY[0x1E69680B8], MEMORY[0x1E69680D0]);
        i = v17;
        v67 = v49;
        v50 = (v17 + 56);
        do
        {
          v51 = *(v50 - 1);
          v52 = *v50;
          v71 = *(v50 - 3);
          v72 = v51;
          v73 = v52;
          v70 = &unk_1F43DA620;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C456902C(&qword_1EC0C3978, &unk_1C4F540A0);
          sub_1C4401CBC(&qword_1EDDFA558, &qword_1EC0C3978, &unk_1C4F540A0, MEMORY[0x1E69E6328]);
          v53 = v63;
          v54 = v64;
          sub_1C4F020C8();
          sub_1C45D4DA4();
          v55 = sub_1C4F01FF8();
          v57 = v56;
          (*v69)(v53, v54);

          v59 = *(v74 + 16);
          v58 = *(v74 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1C44CD9C0(v58 > 1, v59 + 1, 1);
          }

          *(v74 + 16) = v59 + 1;
          v60 = v74 + 16 * v59;
          *(v60 + 32) = v55;
          *(v60 + 40) = v57;
          v50 += 4;
          --v48;
        }

        while (v48);
      }

      sub_1C4499940();
      goto LABEL_22;
    }

    (*v67)(v69, v12, v13);
    v20 = sub_1C4EFCBF8();
    sub_1C4EFCBF8();
    if (v21 >> 14 < v20 >> 14)
    {
      break;
    }

    v22 = v5;
    v23 = sub_1C4F01448();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B7F4(0, *(v17 + 16) + 1, 1, v17);
      v17 = v46;
    }

    v30 = v17;
    v31 = *(v17 + 16);
    v32 = v30;
    v33 = *(v30 + 24);
    if (v31 >= v33 >> 1)
    {
      sub_1C458B7F4(v33 > 1, v31 + 1, 1, v32);
      v32 = v47;
    }

    *(v32 + 16) = v31 + 1;
    v34 = (v32 + 32 * v31);
    v17 = v32;
    v34[4] = v23;
    v34[5] = v25;
    v34[6] = v27;
    v34[7] = v29;
    v35 = v69;
    sub_1C4EFCBF8();
    v37 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v37 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v37 < v36 >> 14)
    {
      goto LABEL_24;
    }

    v38 = sub_1C4F01448();
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v5 = MEMORY[0x1C693FEF0](v38, v40, v42, v44);
    v3 = v45;

    (*v65)(v35, v13);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v1 = v68;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1C4C687F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C48685EC();
  if (*(&v37 + 1))
  {
    v32 = a2;
    v4 = &v41;
    v41 = v37;
    sub_1C441D670(&v38, &v42);

    sub_1C441D670(&v42, v45);
    v5 = v46;
    v6 = v47;
    sub_1C4409678(v45, v46);
    (*(v6 + 16))(&v41, v5, v6);
    v7 = *(&v42 + 1);
    v8 = v43;
    v9 = sub_1C4409678(&v41, *(&v42 + 1));
    v33 = (*(v8 + 16))(v7, v8);
    sub_1C440962C(&v41);
    v10 = a1 + 64;
    sub_1C43FD030();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = 0;
    if (!v13)
    {
      goto LABEL_4;
    }

    do
    {
      v18 = v17;
LABEL_8:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = sub_1C4417A28(v19 | (v18 << 6));
      sub_1C442E860(v20, &v34);
      *&v37 = v4;
      *(&v37 + 1) = v9;
      sub_1C441D670(&v34, &v38);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_9:
      v41 = v37;
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v21 = *(&v37 + 1);
      if (!*(&v37 + 1))
      {

        v32[3] = type metadata accessor for ViewDatabaseArtifact();
        v32[4] = &off_1F4405BC8;
        *v32 = v33;
        return sub_1C440962C(v45);
      }

      v4 = v41;
      sub_1C441D670(&v42, &v37);
      v48 = *(v33 + 16);
      v22 = *(&v38 + 1);
      v23 = v39;
      sub_1C4409678(&v37, *(&v38 + 1));
      (*(v23 + 16))(&v34, v22, v23);
      v24 = v35.n128_u64[1];
      v25 = v36;
      sub_1C4409678(&v34, v35.n128_i64[1]);
      v9 = *((*(v25 + 16))(v24, v25) + 16);

      sub_1C440962C(&v34);
      if (v48 != v9)
      {
        sub_1C450B034();
        v30 = swift_allocError();
        v31->n128_u64[0] = v4;
        v31->n128_u64[1] = v21;
        v31[1].n128_u64[0] = 0xD000000000000031;
        v31[1].n128_u64[1] = 0x80000001C4FBDA50;
        sub_1C4411340(v34, v35, v30, v31);

        sub_1C440962C(&v37);
        return sub_1C440962C(v45);
      }

      result = sub_1C440962C(&v37);
    }

    while (v13);
LABEL_4:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v13 = 0;
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        goto LABEL_9;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        v17 = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1C4423A0C(&v37, &unk_1EC0C5130, &qword_1C4F5FDC0);
    sub_1C450B034();
    v26 = swift_allocError();
    sub_1C440E94C(v26, v27);
    return sub_1C4411340(v34, v35, v28, v29);
  }

  return result;
}

void *sub_1C4C68B88(uint64_t a1)
{
  v1 = a1 + 64;
  sub_1C43FD030();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v32 = v6;
  v33 = v1;
  if (v4)
  {
    while (1)
    {
      v36 = v8;
LABEL_7:
      v10 = sub_1C4417A28(__clz(__rbit64(v4)) | (v7 << 6));
      sub_1C442E860(v10, v43);
      v42[0] = v6;
      v42[1] = v8;
      sub_1C44600A0(v42, v40, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
      v11 = v40[0];
      v12 = v40[1];
      v13 = v44;
      v14 = v45;
      sub_1C4409678(v43, v44);
      v15 = *(v14 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15(v37, v13, v14);
      v16 = v38;
      v17 = v39;
      sub_1C4409678(v37, v38);
      v34 = (*(v17 + 8))(v16, v17);
      v35 = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = v36;
      v19 = sub_1C445FAA8(v11, v12);
      if (__OFADD__(v36[2], (v20 & 1) == 0))
      {
        break;
      }

      v21 = v19;
      v22 = v20;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      if (sub_1C4F02458())
      {
        v23 = sub_1C445FAA8(v11, v12);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_21;
        }

        v21 = v23;
      }

      if (v22)
      {

        v8 = v46;
        v25 = (v46[7] + 16 * v21);
        *v25 = v34;
        v25[1] = v35;
      }

      else
      {
        v8 = v46;
        v46[(v21 >> 6) + 8] |= 1 << v21;
        v26 = (v8[6] + 16 * v21);
        *v26 = v11;
        v26[1] = v12;
        v27 = (v8[7] + 16 * v21);
        *v27 = v34;
        v27[1] = v35;
        v28 = v8[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_20;
        }

        v8[2] = v30;
      }

      v4 &= v4 - 1;
      sub_1C440962C(v37);
      sub_1C440962C(v41);
      sub_1C4423A0C(v42, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
      v6 = v32;
      v1 = v33;
      if (!v4)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v8;
      }

      v4 = *(v1 + 8 * v9);
      ++v7;
      if (v4)
      {
        v36 = v8;
        v7 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4C68E70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C68F38(char a1)
{
  if (a1)
  {
    return 0x6574656C6564;
  }

  else
  {
    return 0x657461647075;
  }
}

void sub_1C4C68F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v34[0] = v24;
  v34[1] = v25;
  v27 = v26;
  v28 = sub_1C456902C(&qword_1EC0C5120, &qword_1C4F5FCA0);
  sub_1C43FCDF8();
  v30 = v29;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v34 - v32;
  sub_1C4409678(v27, v27[3]);
  sub_1C4C6A8F4();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v23)
  {
    sub_1C4F02738();
  }

  (*(v30 + 8))(v33, v28);
  sub_1C43FBC80();
}

void sub_1C4C690B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  sub_1C456902C(&qword_1EC0C5118, &qword_1C4F5FC98);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4409678(v25, v25[3]);
  sub_1C4C6A8F4();
  sub_1C4F02BC8();
  if (!v23)
  {
    sub_1C4F02678();
    sub_1C4F02618();
    v27 = sub_1C4402F74();
    v28(v27);
  }

  sub_1C440962C(v25);
  sub_1C43FBC80();
}