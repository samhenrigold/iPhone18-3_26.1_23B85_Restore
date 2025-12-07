uint64_t sub_1C45CA830()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C45CA918()
{
  v78 = v0;
  v1 = v0[27];
  v70 = MEMORY[0x1E69E7CC0];
  v77[0] = MEMORY[0x1E69E7CC0];
  v2 = sub_1C4428DA0(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v71 = v2;
  v74 = v1 + 32;
  v6 = &off_1E81F1000;
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x1C6940F90](v3, v0[27]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_61;
      }

      v7 = *(v74 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v9 = sub_1C45C28F0([v7 v6[93]], &selRef_contentType);
    if (!v10 || (v11 = v6, v0[8] = v9, v0[9] = v10, sub_1C43FEB94(), v0[10] = v12 & 0xFFFFFFFFFFFFLL | 0x6D2E000000000000, sub_1C43FBF14(), v0[11] = v13, sub_1C4415EA8(), v14 = sub_1C4F02048(), , (v14 & 1) == 0))
    {
LABEL_15:

      goto LABEL_20;
    }

    v15 = v5;
    v16 = v4;
    v17 = v6;
    sub_1C45C28F0([v8 v6 + 116], &selRef_messageType);
    if (!v18 || (, v19 = sub_1C45C28F0([v8 v6 + 116], &selRef_messageType), v20) && (v0[12] = v19, v0[13] = v20, v0[14] = 6779757, v0[15] = 0xE300000000000000, v21 = sub_1C4F02048(), , v17 = v6, (v21 & 1) != 0))
    {
      v22 = [v8 v17 + 116];
      v23 = [v22 disableSearchInSpotlight];

      v6 = v17;
      v4 = v16;
      v5 = v15;
      v2 = v71;
      if (v23)
      {

        v24 = [v8 v6 + 116];
        v25 = [v24 disableSearchInSpotlight];

        sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
        v26 = sub_1C4F01EC8();
        v27 = v26;
        if (v25)
        {
          v28 = sub_1C4F01EE8();

          v6 = v11;
          if (v28)
          {
            goto LABEL_15;
          }
        }

        else
        {

          v6 = v11;
        }
      }

      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {

      v4 = v16;
      v5 = v15;
      v2 = v71;
    }

LABEL_20:
    ++v3;
  }

  v29 = v77[0];
  v0[16] = MEMORY[0x1E69E7CC0];
  v30 = sub_1C4428DA0(v29);
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = v0[20];
    v34 = *(v33 + 24);
    v75 = *(v33 + 16);
    v35 = v29 & 0xC000000000000001;
    v70 = MEMORY[0x1E69E7CC0];
    v72 = v30;
    do
    {
      sub_1C4431590(v32, v35 == 0, v29);
      v36 = v35 ? MEMORY[0x1C6940F90](v32, v29) : *(v29 + 8 * v32 + 32);
      v37 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_62;
      }

      v39 = v0[24];
      v38 = v0[25];
      v40 = v36;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45C0E0C(v40, v75, v34, v38);
      sub_1C45C29C8(v38, v39);
      type metadata accessor for TextMessageData(0);
      swift_allocObject();
      v41 = sub_1C45C18EC(v39);
      if (v41)
      {
        v42 = v41;
        if (!sub_1C45C1D80() && (*(v42 + 32) == v0[18] ? (v47 = *(v42 + 40) == v0[19]) : (v47 = 0), v47 || (sub_1C4F02938() & 1) != 0))
        {

          MEMORY[0x1C6940330](v48);
          if (*((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C4F016D8();
          }

          sub_1C4F01748();
          v70 = v0[16];

          v31 = v72;
        }

        else
        {
        }
      }

      else
      {
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v43 = sub_1C4F00978();
        sub_1C43FCEE8(v43, qword_1EDDFECB8);
        v44 = sub_1C4F00968();
        v45 = sub_1C4F01CD8();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = sub_1C43FCED0();
          *v46 = 0;
          _os_log_impl(&dword_1C43F8000, v44, v45, "Autonaming Context Messages: Failed converting a searchableItem into a TextMessageData", v46, 2u);
          v31 = v72;
          sub_1C43FBE2C();
        }

        else
        {
        }
      }

      sub_1C45C287C(v0[25]);
      ++v32;
    }

    while (v37 != v31);
  }

  result = sub_1C4428DA0(v70);
  if (result)
  {
    v50 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; i != v50; ++i)
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1C6940F90](i, v70);
      }

      else
      {
        v52 = *(v70 + 8 * i + 32);
      }

      sub_1C45C9A08(v52);
    }
  }

  sub_1C45C839C(v0 + 16, sub_1C4836300, sub_1C49B74BC, sub_1C45BD404, sub_1C45BD318);
  if (qword_1EDDFECB0 != -1)
  {
LABEL_63:
    sub_1C44064A8();
    swift_once();
  }

  v54 = v0[22];
  v53 = v0[23];
  v55 = v0[21];
  v56 = v0[17];
  v57 = sub_1C4F00978();
  sub_1C442B738(v57, qword_1EDDFECB8);
  (*(v54 + 16))(v53, v56, v55);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v58 = sub_1C4F00968();
  sub_1C4F01CC8();
  sub_1C441EA60();
  v59 = os_log_type_enabled(v58, v56);
  v61 = v0[22];
  v60 = v0[23];
  v62 = v0[21];
  if (v59)
  {
    v73 = v0[18];
    v76 = v0[19];
    v63 = sub_1C43FFD34();
    v77[0] = swift_slowAlloc();
    *v63 = 134218498;
    swift_beginAccess();
    *(v63 + 4) = sub_1C4428DA0(v0[16]);
    *(v63 + 12) = 2080;
    sub_1C45C2A2C();
    v64 = sub_1C4F02858();
    v66 = v65;
    (*(v61 + 8))(v60, v62);
    v67 = sub_1C441D828(v64, v66, v77);

    *(v63 + 14) = v67;
    *(v63 + 22) = 2080;
    *(v63 + 24) = sub_1C441D828(v73, v76, v77);
    _os_log_impl(&dword_1C43F8000, v58, v56, "Autonaming Context Messages: Found %ld messages in searchContextMessages around time %s for conversation %s which contain text content", v63, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    (*(v61 + 8))(v60, v62);
  }

  swift_beginAccess();
  v68 = v0[16];

  sub_1C43FBCF0();

  return v69(v68);
}

uint64_t sub_1C45CB1B4()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1C4EF9BD8();
  v1[5] = v3;
  sub_1C43FCF7C(v3);
  v1[6] = v4;
  v1[7] = sub_1C43FBE7C();
  v5 = sub_1C4EF9CD8();
  v1[8] = v5;
  sub_1C43FCF7C(v5);
  v1[9] = v6;
  v1[10] = sub_1C43FBE7C();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45CB2A4()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDDFECB8);

  v2 = sub_1C4F00968();
  sub_1C4F01CC8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v3 = v0[4];
    v4 = sub_1C43FD084();
    *v4 = 134217984;
    *(v4 + 4) = *(v3 + 80);
    sub_1C442B944();
    _os_log_impl(v5, v6, v7, v8, v4, 0xCu);
    sub_1C43FBE2C();
  }

  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  v13 = v0[5];
  v12 = v0[6];
  v30 = v11;
  v31 = v13;
  v32 = v0[4];
  v33 = v0[9];

  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000004FLL, 0x80000001C4F8BCD0);
  sub_1C4EF9BE8();
  sub_1C4D3FCA0(v10);
  v14 = sub_1C4EF9B48();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v10, v13);
  v18 = *(v33 + 8);
  v18(v9, v11);
  MEMORY[0x1C6940010](v14, v16);

  MEMORY[0x1C6940010](0x2E656D6974242C29, 0xEC000000286F7369);
  sub_1C4EF9BE8();
  sub_1C4D3FCA0(v10);
  v19 = sub_1C4EF9B48();
  v21 = v20;
  v17(v10, v31);
  v18(v9, v30);
  MEMORY[0x1C6940010](v19, v21);

  MEMORY[0x1C6940010](10537, 0xE200000000000000);
  v22 = *(v32 + 128);
  v23 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v24 = v22;
  v25 = sub_1C43FD104();
  v0[11] = v25;
  v26 = swift_task_alloc();
  v0[12] = v26;
  *(v26 + 16) = v32;
  *(v26 + 24) = v25;
  v27 = swift_task_alloc();
  v0[13] = v27;
  sub_1C456902C(&qword_1EC0B9970, &qword_1C4F10520);
  sub_1C440F2A0();
  *v27 = v28;
  v27[1] = sub_1C45CB610;
  sub_1C440DE60();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C45CB610()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C45CB710()
{
  sub_1C43FCF70();

  v1 = *(v0 + 16);

  sub_1C43FBCF0();

  return v2(v1);
}

uint64_t sub_1C45CB78C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C456902C(&qword_1EC0B9978, &unk_1C4F10528);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  sub_1C45CB92C(a3, a5, v14);
}

uint64_t sub_1C45CB8CC(uint64_t a1)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B9978, &unk_1C4F10528);
  return sub_1C4F01818();
}

uint64_t sub_1C45CB92C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v15 = sub_1C45CC074;
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1C45CBB54;
  v14 = &unk_1F43E1FC8;
  v7 = _Block_copy(&v11);

  [a1 setFoundItemsHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  v15 = sub_1C45CC07C;
  v16 = v8;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1C45CBEB0;
  v14 = &unk_1F43E2018;
  v9 = _Block_copy(&v11);

  [a1 setCompletionHandler_];
  _Block_release(v9);
  [a1 start];
}

uint64_t sub_1C45CBAF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3680(v2);
  return swift_endAccess();
}

uint64_t sub_1C45CBB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1C4461BB8(0, &unk_1EDDDB930, 0x1E6964E80);
  v3 = sub_1C4F01678();

  v2(v3);
}

void sub_1C45CBBD8(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
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
      v22[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1C4F02A38();
      v15 = sub_1C441D828(v13, v14, v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Received error %s in query completion handler in AutonamingMessagesUpdateHandler", v11, 0xCu);
      sub_1C440962C(v12);
      MEMORY[0x1C6942830](v12, -1, -1);
      MEMORY[0x1C6942830](v11, -1, -1);
    }

    a2(0);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDDFECB8);

    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      swift_beginAccess();
      *(v20 + 4) = sub_1C4428DA0(*(a4 + 16));

      _os_log_impl(&dword_1C43F8000, v18, v19, "Finished fetching %ld messages indexed by Spotlight in AutonamingMessagesUpdateHandler", v20, 0xCu);
      MEMORY[0x1C6942830](v20, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v21 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    a2(v21);
  }
}

void sub_1C45CBEB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1C45CBF1C()
{

  return v0;
}

uint64_t sub_1C45CBFB8()
{
  sub_1C45CBF1C();

  return swift_deallocClassInstance();
}

id sub_1C45CC010(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4F01108();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_1C45CC0C0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a4)
{
  v9 = *(a1 + 8);
  result = sub_1C4F02828();
  if (result < v9)
  {
    v11 = result;
    a4 = a2(v9 / 2);
    v13[0] = v12;
    v13[1] = v9 / 2;
    result = a3(v13, v14, a1, v11);
    if (v4)
    {
      if (v9 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v9 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9)
  {
    return (a4)(0, v9, 1, a1);
  }

  return result;
}

void sub_1C45CC1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v45 - v11;
  v12 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v45 - v18;
  v46 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v55 = (v17 + 32);
    v50 = (v17 + 8);
    v52 = v19;
    v20 = v19 + 8 * a3 - 8;
    v21 = a1 - a3;
    while (2)
    {
      v48 = v20;
      v49 = a3;
      v22 = *(v52 + 8 * a3);
      v47 = v21;
      do
      {
        v23 = *v20;
        v24 = v22;
        v25 = v23;
        v26 = [v24 attributeSet];
        v27 = [v26 contentCreationDate];

        if (v27)
        {
          v28 = v56;
          sub_1C4EF9C78();

          v29 = *v55;
          v30 = v53;
          (*v55)(v53, v28, v12);
          sub_1C440BAA8(v30, 0, 1, v12);
          (v29)(v57, v30, v12);
        }

        else
        {
          v31 = v53;
          sub_1C440BAA8(v53, 1, 1, v12);
          sub_1C4EF9CC8();
          if (sub_1C44157D4(v31, 1, v12) != 1)
          {
            sub_1C44686E4(v53);
          }
        }

        v32 = [v25 attributeSet];
        v33 = [v32 contentCreationDate];

        if (v33)
        {
          v34 = v56;
          sub_1C4EF9C78();

          v35 = v54;
          v36 = *v55;
          (*v55)(v54, v34, v12);
          sub_1C440BAA8(v35, 0, 1, v12);
          v37 = v51;
          v36();
        }

        else
        {
          v38 = v54;
          sub_1C440BAA8(v54, 1, 1, v12);
          v37 = v51;
          sub_1C4EF9CC8();
          if (sub_1C44157D4(v38, 1, v12) != 1)
          {
            sub_1C44686E4(v54);
          }
        }

        v39 = v57;
        v40 = sub_1C4EF9C18();
        v41 = v37;
        v42 = *v50;
        (*v50)(v41, v12);
        v42(v39, v12);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return;
        }

        v43 = *v20;
        v22 = *(v20 + 8);
        *v20 = v22;
        *(v20 + 8) = v43;
        v20 -= 8;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v49 + 1;
      v20 = v48 + 8;
      v21 = v47 - 1;
      if (v49 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C45CC600(id *a1, uint64_t a2, char *a3, int64_t a4)
{
  v154 = a1;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v169 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v168 = &v150 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v160 = &v150 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v150 - v13;
  v14 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v173 = (&v150 - v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v150 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v163 = &v150 - v24;
  v25 = *(a3 + 1);
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v173 = *v154;
    if (!v173)
    {
      goto LABEL_154;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v139 = v27;
LABEL_114:
      v140 = v139 + 16;
      v141 = *(v139 + 2);
      while (v141 >= 2)
      {
        v142 = *a3;
        if (!*a3)
        {
          goto LABEL_151;
        }

        v143 = a3;
        v144 = v139;
        a3 = &v139[16 * v141];
        v145 = *a3;
        v146 = &v140[2 * v141];
        v147 = *(v146 + 1);
        v148 = v164;
        sub_1C45CD29C((v142 + 8 * *a3), (v142 + 8 * *v146), (v142 + 8 * v147), v173);
        v164 = v148;
        if (v148)
        {
          break;
        }

        if (v147 < v145)
        {
          goto LABEL_139;
        }

        if (v141 - 2 >= *v140)
        {
          goto LABEL_140;
        }

        *a3 = v145;
        *(a3 + 1) = v147;
        v149 = *v140 - v141;
        if (*v140 < v141)
        {
          goto LABEL_141;
        }

        v141 = *v140 - 1;
        sub_1C461950C(v146 + 16, v149, v146);
        *v140 = v141;
        v139 = v144;
        a3 = v143;
      }

LABEL_122:

      return;
    }

LABEL_148:
    v139 = sub_1C46194F4();
    goto LABEL_114;
  }

  v157 = v23;
  v165 = v22;
  v151 = a4;
  v26 = 0;
  v170 = (v21 + 32);
  v167 = (v21 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  v161 = a3;
  while (1)
  {
    v28 = v26++;
    if (v26 < v25)
    {
      v153 = v27;
      v29 = *a3;
      v175 = *(*a3 + 8 * v26);
      v174 = *(v29 + 8 * v28);
      v30 = v174;
      v31 = v175;
      v32 = v30;
      v33 = v164;
      LODWORD(v162) = sub_1C45C968C(&v175, &v174);
      v164 = v33;
      if (v33)
      {

        return;
      }

      v156 = 8 * v28;
      v34 = (v29 + 8 * v28 + 16);
      v152 = v28;
      v35 = v28 + 2;
      v158 = v25;
      while (1)
      {
        v36 = v35;
        if (v26 + 1 >= v25)
        {
          break;
        }

        v166 = v35;
        v37 = *(v34 - 1);
        v38 = *v34;
        v39 = v37;
        v172 = v38;
        v40 = [v38 attributeSet];
        v41 = [v40 contentCreationDate];

        if (v41)
        {
          v42 = v171;
          sub_1C4EF9C78();

          v43 = *v170;
          v44 = v159;
          (*v170)(v159, v42, v14);
          sub_1C440BAA8(v44, 0, 1, v14);
          v43(v163, v44, v14);
        }

        else
        {
          v45 = v159;
          sub_1C440BAA8(v159, 1, 1, v14);
          sub_1C4EF9CC8();
          if (sub_1C44157D4(v45, 1, v14) != 1)
          {
            sub_1C44686E4(v159);
          }
        }

        v46 = [v39 attributeSet];
        v47 = [v46 contentCreationDate];

        v48 = v26;
        if (v47)
        {
          v49 = v171;
          sub_1C4EF9C78();

          v50 = *v170;
          v51 = v160;
          (*v170)(v160, v49, v14);
          sub_1C440BAA8(v51, 0, 1, v14);
          v52 = v157;
          v50(v157, v51, v14);
        }

        else
        {
          v53 = v160;
          sub_1C440BAA8(v160, 1, 1, v14);
          v52 = v157;
          sub_1C4EF9CC8();
          if (sub_1C44157D4(v53, 1, v14) != 1)
          {
            sub_1C44686E4(v160);
          }
        }

        v54 = v163;
        v55 = sub_1C4EF9C18();
        v56 = *v167;
        (*v167)(v52, v14);
        v56(v54, v14);

        ++v34;
        v26 = v48 + 1;
        v36 = v166;
        v35 = v166 + 1;
        a3 = v161;
        v25 = v158;
        if ((v162 ^ v55))
        {
          goto LABEL_18;
        }
      }

      v26 = v25;
LABEL_18:
      if (v162)
      {
        if (v26 < v152)
        {
          goto LABEL_147;
        }

        v27 = v153;
        if (v152 >= v26)
        {
          v28 = v152;
        }

        else
        {
          if (v25 >= v36)
          {
            v57 = v36;
          }

          else
          {
            v57 = v25;
          }

          v58 = 8 * v57 - 8;
          v59 = v26;
          v60 = v152;
          v28 = v152;
          v61 = v156;
          do
          {
            if (v60 != --v59)
            {
              v62 = *a3;
              if (!*a3)
              {
                goto LABEL_152;
              }

              v63 = *(v62 + v61);
              *(v62 + v61) = *(v62 + v58);
              *(v62 + v58) = v63;
            }

            ++v60;
            v58 -= 8;
            v61 += 8;
          }

          while (v60 < v59);
        }
      }

      else
      {
        v27 = v153;
        v28 = v152;
      }
    }

    v64 = *(a3 + 1);
    if (v26 < v64)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_144;
      }

      if (v26 - v28 < v151)
      {
        break;
      }
    }

LABEL_58:
    if (v26 < v28)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458A358();
      v27 = v137;
    }

    v92 = *(v27 + 2);
    v93 = v92 + 1;
    if (v92 >= *(v27 + 3) >> 1)
    {
      sub_1C458A358();
      v27 = v138;
    }

    *(v27 + 2) = v93;
    v94 = v27 + 32;
    v95 = &v27[16 * v92 + 32];
    *v95 = v28;
    *(v95 + 1) = v26;
    v172 = *v154;
    if (!v172)
    {
      goto LABEL_153;
    }

    if (v92)
    {
      v162 = v26;
      while (1)
      {
        v96 = v93 - 1;
        v97 = &v94[2 * v93 - 2];
        v98 = &v27[16 * v93];
        if (v93 >= 4)
        {
          break;
        }

        if (v93 == 3)
        {
          v99 = *(v27 + 4);
          v100 = *(v27 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_79:
          if (v102)
          {
            goto LABEL_130;
          }

          v114 = *v98;
          v113 = *(v98 + 1);
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_133;
          }

          v118 = v97[1];
          v119 = v118 - *v97;
          if (__OFSUB__(v118, *v97))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v116, v119))
          {
            goto LABEL_138;
          }

          if (v116 + v119 >= v101)
          {
            if (v101 < v119)
            {
              v96 = v93 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v93 < 2)
        {
          goto LABEL_132;
        }

        v121 = *v98;
        v120 = *(v98 + 1);
        v109 = __OFSUB__(v120, v121);
        v116 = v120 - v121;
        v117 = v109;
LABEL_94:
        if (v117)
        {
          goto LABEL_135;
        }

        v123 = *v97;
        v122 = v97[1];
        v109 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v109)
        {
          goto LABEL_137;
        }

        if (v124 < v116)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v96 - 1 >= v93)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v128 = *a3;
        if (!*a3)
        {
          goto LABEL_150;
        }

        a3 = &v94[2 * v96 - 2];
        v129 = *a3;
        v130 = v96;
        v131 = &v94[2 * v96];
        v132 = *(v131 + 1);
        v133 = v164;
        sub_1C45CD29C((v128 + 8 * *a3), (v128 + 8 * *v131), (v128 + 8 * v132), v172);
        v164 = v133;
        if (v133)
        {
          goto LABEL_122;
        }

        if (v132 < v129)
        {
          goto LABEL_125;
        }

        v134 = v94;
        v135 = *(v27 + 2);
        if (v130 > v135)
        {
          goto LABEL_126;
        }

        *a3 = v129;
        *(a3 + 1) = v132;
        if (v130 >= v135)
        {
          goto LABEL_127;
        }

        v93 = v135 - 1;
        sub_1C461950C(v131 + 16, v135 - 1 - v130, v131);
        *(v27 + 2) = v135 - 1;
        v136 = v135 > 2;
        a3 = v161;
        v26 = v162;
        v94 = v134;
        if (!v136)
        {
          goto LABEL_108;
        }
      }

      v103 = &v94[2 * v93];
      v104 = *(v103 - 8);
      v105 = *(v103 - 7);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_128;
      }

      v108 = *(v103 - 6);
      v107 = *(v103 - 5);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_129;
      }

      v110 = *(v98 + 1);
      v111 = v110 - *v98;
      if (__OFSUB__(v110, *v98))
      {
        goto LABEL_131;
      }

      v109 = __OFADD__(v101, v111);
      v112 = v101 + v111;
      if (v109)
      {
        goto LABEL_134;
      }

      if (v112 >= v106)
      {
        v126 = *v97;
        v125 = v97[1];
        v109 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v109)
        {
          goto LABEL_142;
        }

        if (v101 < v127)
        {
          v96 = v93 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v25 = *(a3 + 1);
    if (v26 >= v25)
    {
      goto LABEL_111;
    }
  }

  v65 = v28 + v151;
  if (__OFADD__(v28, v151))
  {
    goto LABEL_145;
  }

  if (v65 >= v64)
  {
    v65 = *(a3 + 1);
  }

  if (v65 < v28)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v26 == v65)
  {
    goto LABEL_58;
  }

  v153 = v27;
  v166 = *a3;
  v66 = v166 + 8 * v26 - 8;
  v152 = v28;
  v67 = v28 - v26;
  v155 = v65;
LABEL_41:
  v162 = v26;
  v68 = *(v166 + 8 * v26);
  v156 = v67;
  v158 = v66;
  v69 = v66;
  while (1)
  {
    v70 = *v69;
    v71 = v68;
    v72 = v70;
    v172 = v71;
    v73 = [v71 attributeSet];
    v74 = [v73 contentCreationDate];

    if (v74)
    {
      v75 = v171;
      sub_1C4EF9C78();

      v76 = *v170;
      v77 = v168;
      (*v170)(v168, v75, v14);
      sub_1C440BAA8(v77, 0, 1, v14);
      v76(v173, v77, v14);
    }

    else
    {
      v78 = v168;
      sub_1C440BAA8(v168, 1, 1, v14);
      sub_1C4EF9CC8();
      if (sub_1C44157D4(v78, 1, v14) != 1)
      {
        sub_1C44686E4(v168);
      }
    }

    v79 = [v72 attributeSet];
    v80 = [v79 contentCreationDate];

    if (v80)
    {
      v81 = v171;
      sub_1C4EF9C78();

      v82 = v169;
      v83 = *v170;
      (*v170)(v169, v81, v14);
      sub_1C440BAA8(v82, 0, 1, v14);
      v84 = v165;
      v83(v165, v82, v14);
      v85 = v14;
    }

    else
    {
      v86 = v169;
      sub_1C440BAA8(v169, 1, 1, v14);
      v84 = v165;
      sub_1C4EF9CC8();
      v85 = v14;
      if (sub_1C44157D4(v86, 1, v14) != 1)
      {
        sub_1C44686E4(v169);
      }
    }

    v87 = v173;
    v88 = sub_1C4EF9C18();
    v89 = *v167;
    (*v167)(v84, v85);
    v89(v87, v85);

    if ((v88 & 1) == 0)
    {
      v14 = v85;
LABEL_56:
      v26 = v162 + 1;
      v66 = v158 + 8;
      v67 = v156 - 1;
      if (v162 + 1 == v155)
      {
        v26 = v155;
        a3 = v161;
        v27 = v153;
        v28 = v152;
        goto LABEL_58;
      }

      goto LABEL_41;
    }

    if (!v166)
    {
      break;
    }

    v90 = *v69;
    v68 = *(v69 + 8);
    *v69 = v68;
    *(v69 + 8) = v90;
    v69 -= 8;
    v91 = __CFADD__(v67++, 1);
    v14 = v85;
    if (v91)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

uint64_t sub_1C45CD29C(char *a1, char *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v7 = (a2 - a1) / 8;
  v8 = (a3 - a2) / 8;
  if (v7 >= v8)
  {
    sub_1C4474DF4(a2, (a3 - a2) / 8, a4);
    v25 = a2;
    v11 = (v4 + 8 * v8);
    v26 = -v4;
    __src = v4;
LABEL_15:
    v27 = (v25 - 8);
    v28 = v5 - 1;
    v29 = v11 + v26;
    v49 = v25;
    while (v11 > v4 && v25 > v6)
    {
      v50 = v29;
      v31 = v28;
      v32 = v11;
      v33 = v11 - 1;
      v53 = *(v11 - 1);
      v34 = v27;
      v52 = *v27;
      v35 = v52;
      v36 = v53;
      v37 = v35;
      v38 = sub_1C45C968C(&v53, &v52);
      if (v51)
      {

        v25 = v49;
        v46 = v50 / 8;
        v44 = __src;
        if (v49 < __src || v49 >= &__src[8 * (v50 / 8)])
        {
          memmove(v49, __src, 8 * v46);
          return 1;
        }

        if (v49 != __src)
        {
          v43 = 8 * v46;
          goto LABEL_41;
        }

        return 1;
      }

      v39 = v38;

      if (v39)
      {
        v5 = v31;
        v4 = __src;
        v25 = v34;
        v11 = v32;
        if (v31 + 1 != v49)
        {
          *v31 = *v34;
          v25 = v34;
        }

        goto LABEL_15;
      }

      v25 = v49;
      v27 = v34;
      if (v32 != v31 + 1)
      {
        *v31 = *v33;
      }

      v28 = v31 - 1;
      v29 = v50 - 8;
      v11 = v33;
      v4 = __src;
    }

LABEL_29:
    v40 = (v11 - v4) / 8;
    if (v25 < v4 || v25 >= v4 + 8 * v40)
    {
      goto LABEL_40;
    }

LABEL_39:
    if (v25 == v4)
    {
      return 1;
    }

    goto LABEL_40;
  }

  sub_1C4474DF4(a1, (a2 - a1) / 8, a4);
  v10 = a2;
  v11 = (v4 + 8 * v7);
  while (1)
  {
    if (v4 >= v11 || v10 >= v5)
    {
      v25 = v6;
      goto LABEL_29;
    }

    v13 = v11;
    v14 = v5;
    v15 = v6;
    v16 = v10;
    v53 = *v10;
    v52 = *v4;
    v17 = v52;
    v18 = v53;
    v19 = v17;
    v20 = sub_1C45C968C(&v53, &v52);
    if (v51)
    {
      break;
    }

    v21 = v20;
    v51 = 0;

    if (v21)
    {
      v22 = v16;
      v10 = v16 + 1;
      v23 = v15 == v16;
    }

    else
    {
      v22 = v4;
      v23 = v15 == v4;
      v4 += 8;
      v10 = v16;
    }

    v11 = v13;
    if (!v23)
    {
      *v15 = *v22;
    }

    v6 = v15 + 8;
    v5 = v14;
  }

  v40 = (v13 - v4) / 8;
  v25 = v15;
  if (v15 >= v4 && v15 < v4 + 8 * v40)
  {
    goto LABEL_39;
  }

LABEL_40:
  v43 = 8 * v40;
  v44 = v4;
LABEL_41:
  memmove(v25, v44, v43);
  return 1;
}

uint64_t sub_1C45CD5D4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9978, &unk_1C4F10528);
  sub_1C43FBD18(v2);
  return sub_1C45CB8CC(a1);
}

uint64_t sub_1C45CD678()
{
  v1 = sub_1C456902C(&qword_1EC0B9978, &unk_1C4F10528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t AutonamingMessagesUpdateHandler.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AutonamingMessagesUpdateHandler.init(config:)(a1);
  return v2;
}

uint64_t AutonamingMessagesUpdateHandler.init(config:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C45BC174(v11);
  memcpy((v2 + 16), v11, 0x70uLL);
  *(v2 + 136) = 257;
  sub_1C44098F0(a1, v6);
  memcpy(__dst, (v2 + 16), sizeof(__dst));
  type metadata accessor for AutonamingMessagesBookmarkHandler();
  v7 = swift_allocObject();
  sub_1C45BC048(__dst, v10);
  sub_1C45B6BA0(v6, __dst);
  v8 = sub_1C43FBD30();
  sub_1C4467948(v8);
  *(v2 + 128) = v7;
  return v2;
}

double sub_1C45CD860()
{
  v69 = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v4 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v5 = sub_1C44B90E0(v3);
  *&v68[0] = 0;
  v6 = [v5 openAndWaitWithUpgrade:0 error:v68];
  v7 = *&v68[0];
  if (!v6)
  {
    v16 = *&v68[0];
    v17 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v19 = sub_1C43FBD30();
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      sub_1C4404B90();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_1C4423A0C(v23, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C43FEA20();
    }

    else
    {
    }

    return 1.0;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v5 photoLibraryURL];
  sub_1C4EF98C8();

  v11 = sub_1C4EF9868();
  (*(v1 + 8))(v3, v0);
  v12 = [v8 faceAnalysisTaskID];
  *&v68[0] = 0;
  v13 = [v8 queryProgressDetail:v68 forPhotoLibraryURL:v11 andTaskID:v12];

  v14 = *&v68[0];
  if (!*&v68[0])
  {
LABEL_29:
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v55 = sub_1C4F00978();
    sub_1C442B738(v55, qword_1EDDFECB8);
    v56 = sub_1C4F00968();
    v57 = sub_1C4F01CD8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = sub_1C43FCED0();
      *v58 = 0;
      _os_log_impl(&dword_1C43F8000, v56, v57, "MediaAnalysis Photos progress failed, set to 100%% by default", v58, 2u);
      sub_1C43FBE2C();
    }

    return 1.0;
  }

  if (v13)
  {
    v15 = *&v68[0];
    goto LABEL_29;
  }

  *&v66 = sub_1C4F01138();
  *(&v66 + 1) = v31;
  v32 = v14;
  v33 = [v32 __swift_objectForKeyedSubscript_];
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v68[0] = v66;
  v68[1] = v67;
  *&v64 = sub_1C4F01138();
  *(&v64 + 1) = v34;
  v35 = [v32 __swift_objectForKeyedSubscript_];
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  v36 = sub_1C443E52C(&v66, &v64);
  if (!*(&v65 + 1))
  {
    goto LABEL_27;
  }

  if ((sub_1C440D06C(v36, v37, v38, MEMORY[0x1E69E63B0]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v39 = v63;
  if (v63 == 0.0)
  {
    goto LABEL_19;
  }

  v41 = sub_1C443E52C(v68, &v64);
  if (!*(&v65 + 1))
  {
LABEL_27:

    sub_1C442FB14(&v66);
    sub_1C442FB14(v68);
    v40 = &v64;
    goto LABEL_28;
  }

  if ((sub_1C440D06C(v41, v42, v43, MEMORY[0x1E69E63B0]) & 1) == 0)
  {
LABEL_19:

    sub_1C442FB14(&v66);
    v40 = v68;
LABEL_28:
    sub_1C442FB14(v40);
    goto LABEL_29;
  }

  v44 = v63;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    v62 = v60;
    swift_once();
    v44 = v62;
  }

  v45 = v44 / v39;
  v46 = sub_1C4F00978();
  sub_1C442B738(v46, qword_1EDDFECB8);
  v47 = sub_1C4F00968();
  v48 = sub_1C4F01CC8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    *(v49 + 4) = v45 * 100.0;
    sub_1C4404B90();
    _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
    sub_1C43FEA20();
  }

  sub_1C4423A0C(&v66, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  sub_1C4423A0C(v68, &qword_1EC0BCD10, &qword_1C4F0C8C0);

  return v45;
}

uint64_t sub_1C45CDEF0()
{
  *(v1 + 16) = v0;
  v2 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C45CDF18()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v3 = sub_1C4F00978();
  *(v1 + 24) = sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CC8();
  if (sub_1C4402B64(v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v0, "AutonamingMessagesUpdateHandler processAutonamingMessagesBiome called", v6, 2u);
    sub_1C43FBE2C();
  }

  v7 = *(v1 + 16);

  *(v7 + 136) = 257;
  v8 = sub_1C45CD860();
  *(v1 + 32) = v8;
  if (*(v7 + 136) == 1)
  {
    if ((sub_1C4F01948() & 1) == 0)
    {

      v18 = sub_1C4F00968();
      v19 = sub_1C4F01CC8();
      if (sub_1C4402B64(v19))
      {
        v20 = swift_slowAlloc();
        sub_1C4410960(v20, 1.5047e-36);
        *(v20 + 8) = 1024;
        *(v20 + 10) = (sub_1C4F01948() & 1) == 0;
        sub_1C4404B90();
        _os_log_impl(v21, v22, v23, v24, v25, 0xEu);
        sub_1C43FEA20();
      }

      else
      {
      }

      sub_1C4416D60();
      v29 = swift_task_alloc();
      *(v1 + 40) = v29;
      *v29 = v1;
      sub_1C442C454(v29);
      sub_1C4431F20();

      return sub_1C45B7994();
    }

    v8 = *(v1 + 32);
  }

  v9 = sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  if (static NSUserDefaults.autonamingMessagesPhotosProcessingProgress.getter() > v8)
  {
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CC8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *(v12 + 14) = sub_1C43FFD68(v12, 3.8521e-34) * v2;
      sub_1C4433104(&dword_1C43F8000, v13, v14, "AutonamingMessages processing will not commence, photos processing at %f%% has not reached satisfactory percentage of %f%%");
      sub_1C43FBE2C();
    }

    v15 = *(v1 + 16);

    *(v15 + 137) = 0;
LABEL_13:
    sub_1C43FBDA0();
    sub_1C4431F20();

    __asm { BRAA            X1, X16 }
  }

  if (sub_1C4F01948())
  {
    goto LABEL_13;
  }

  sub_1C4416D60();
  *(v1 + 48) = v9;
  v26 = swift_task_alloc();
  *(v1 + 56) = v26;
  *v26 = v1;
  sub_1C441F428(v26);
  sub_1C4431F20();

  return sub_1C45B9D9C();
}

uint64_t sub_1C45CE214()
{
  sub_1C43FBCD4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C45CE300(uint64_t a1)
{
  *(*(v1 + 16) + 136) = *(v1 + 88);
  if (*(v1 + 88) == 1 && (sub_1C4F01948() & 1) == 0)
  {

    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CC8();
    if (sub_1C4402B64(v14))
    {
      v15 = swift_slowAlloc();
      sub_1C4410960(v15, 1.5047e-36);
      *(v15 + 8) = 1024;
      *(v15 + 10) = (sub_1C4F01948() & 1) == 0;
      sub_1C4404B90();
      _os_log_impl(v16, v17, v18, v19, v20, 0xEu);
      sub_1C43FEA20();
    }

    else
    {
    }

    sub_1C4416D60();
    v24 = swift_task_alloc();
    *(v1 + 40) = v24;
    *v24 = v1;
    sub_1C442C454(v24);
    sub_1C4431F20();

    return sub_1C45B7994();
  }

  else
  {
    v3 = *(v1 + 32);
    v4 = sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
    if (static NSUserDefaults.autonamingMessagesPhotosProcessingProgress.getter() > v3)
    {
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CC8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *(v7 + 14) = sub_1C43FFD68(v7, 3.8521e-34) * v2;
        sub_1C4433104(&dword_1C43F8000, v8, v9, "AutonamingMessages processing will not commence, photos processing at %f%% has not reached satisfactory percentage of %f%%");
        sub_1C43FBE2C();
      }

      v10 = *(v1 + 16);

      *(v10 + 137) = 0;
LABEL_8:
      sub_1C43FBDA0();
      sub_1C4431F20();

      __asm { BRAA            X1, X16 }
    }

    if (sub_1C4F01948())
    {
      goto LABEL_8;
    }

    sub_1C4416D60();
    *(v1 + 48) = v4;
    v21 = swift_task_alloc();
    *(v1 + 56) = v21;
    *v21 = v1;
    sub_1C441F428(v21);
    sub_1C4431F20();

    return sub_1C45B9D9C();
  }
}

uint64_t sub_1C45CE560()
{
  sub_1C43FBCD4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C45CE64C()
{
  sub_1C43FBCD4();
  if (!v0[8])
  {
LABEL_5:
    sub_1C43FBDA0();

    return v2();
  }

  v1 = *(v0[2] + 137);
  v0[9] = 0;
  if (v1 != 1 || (sub_1C4F01948() & 1) != 0)
  {

    goto LABEL_5;
  }

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  sub_1C4406694(v4);

  return sub_1C45BAE28();
}

uint64_t sub_1C45CE718()
{
  sub_1C43FBCD4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 89) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C45CE804(uint64_t result)
{
  v2 = *(v1 + 72);
  *(*(v1 + 16) + 137) = *(v1 + 89);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 89);
    *(v1 + 72) = v2 + 1;
    if (v3 != 1 || (sub_1C4F01948() & 1) != 0)
    {

      sub_1C43FBDA0();

      v5();
    }

    else
    {
      v4 = swift_task_alloc();
      *(v1 + 80) = v4;
      *v4 = v1;
      sub_1C4406694(v4);

      sub_1C45BAE28();
    }
  }
}

void sub_1C45CE8F4()
{
  if (sub_1C45B70B8())
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v0 = sub_1C4F00978();
    sub_1C442B738(v0, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v1 = sub_1C4F01CC8();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = sub_1C43FCED0();
      *v2 = 0;
      v3 = "Reset request for autonaming boomark handler completed";
LABEL_10:
      _os_log_impl(&dword_1C43F8000, oslog, v1, v3, v2, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v1 = sub_1C4F01CD8();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = sub_1C43FCED0();
      *v2 = 0;
      v3 = "Reset request for autonaming boomark handler unexpectedly failed";
      goto LABEL_10;
    }
  }
}

uint64_t AutonamingMessagesUpdateHandler.deinit()
{

  return v0;
}

uint64_t AutonamingMessagesUpdateHandler.__deallocating_deinit()
{
  AutonamingMessagesUpdateHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t BasicProperty.init(mapLocation:value:enumLookupValue:mapPredicates:constructRelationship:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_1C45CEB88()
{
  if (qword_1EC0B70E0 != -1)
  {
    swift_once();
  }

  qword_1EC0B9988 = qword_1EC0C3788;
  *&qword_1EC0B9990 = *&qword_1EC0C3790;
  qword_1EC0B99A0 = qword_1EC0C37A0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C45CEC08()
{
  if (qword_1EC0B6898 != -1)
  {
    sub_1C441F44C(&qword_1EC0B6898);
  }

  return &qword_1EC0B9988;
}

uint64_t static BasicProperty.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6898 != -1)
  {
    sub_1C441F44C(&qword_1EC0B6898);
  }

  swift_beginAccess();
  v2 = qword_1EC0B99A0;
  *a1 = qword_1EC0B9988;
  *(a1 + 8) = *&qword_1EC0B9990;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static BasicProperty.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B6898 != -1)
  {
    sub_1C441F44C(&qword_1EC0B6898);
  }

  swift_beginAccess();
  qword_1EC0B9988 = v1;
  *&qword_1EC0B9990 = v4;
  qword_1EC0B99A0 = v2;
}

uint64_t (*static BasicProperty.type.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC0B6898 != -1)
  {
    sub_1C441F44C(&qword_1EC0B6898);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C45CEDD4@<X0>(uint64_t a1@<X8>)
{
  sub_1C45CEC08();
  swift_beginAccess();
  v2 = qword_1EC0B99A0;
  *a1 = qword_1EC0B9988;
  *(a1 + 8) = *&qword_1EC0B9990;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C45CEE3C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45CEC08();
  swift_beginAccess();
  qword_1EC0B9988 = v1;
  *&qword_1EC0B9990 = v4;
  qword_1EC0B99A0 = v2;
}

uint64_t BasicProperty.mapLocation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BasicProperty.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t BasicProperty.enumLookupValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t BasicProperty.mapPredicates.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void static BasicProperty.currentUser.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "isCurrentUser");
  *(a1 + 14) = -4864;
  sub_1C4410980(a1);
}

void static BasicProperty.inferredDeviceUser.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000014;
  a1[1] = 0x80000001C4F8BE80;
  sub_1C4410980(a1);
}

void sub_1C45CF110()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = type metadata accessor for MapPredicate(0);
  sub_1C43FCDF8();
  v44 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v38 - v8);
  v10 = sub_1C456902C(&qword_1EC0B8A60, &unk_1C4F0DE80);
  sub_1C43FCDF8();
  v12 = v11;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v38 - v14;
  v16 = sub_1C4B590DC(v3, *v0, v0[1], v0[4], v0[5]);
  if (!v1)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v38[1] = 0;
      v39 = v0;
      v18 = v10[12];
      v42 = v10[16];
      v43 = v18;
      v41 = &v15[v10[20]];
      v19 = *(v12 + 80);
      v20 = MEMORY[0x1E69E7CC0];
      v38[0] = v16;
      v21 = v16 + ((v19 + 32) & ~v19);
      v40 = *(v12 + 72);
      do
      {
        v45 = v17;
        sub_1C45D1C78();
        v22 = *v41;
        v23 = *(v41 + 1);
        v24 = v15;
        v25 = *(v4 + 20);
        sub_1C4EFEEF8();
        sub_1C43FCE50();
        v27 = v9 + v25;
        v15 = v24;
        (*(v26 + 32))(v27, v24);
        sub_1C45D1CCC();
        sub_1C45D1CCC();
        *v9 = v22;
        v9[1] = v23;
        sub_1C440D08C();
        sub_1C45D1B80();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1C43FCEC0();
          sub_1C458AE3C(v30, v31, v32, v20);
          v20 = v33;
        }

        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          v34 = sub_1C43FFD98(v28);
          sub_1C458AE3C(v34, v35, v36, v20);
          v20 = v37;
        }

        sub_1C45D1BD4(v9);
        *(v20 + 16) = v29 + 1;
        sub_1C44DD6F4();
        v21 += v40;
        v17 = v45 - 1;
      }

      while (v45 != 1);

      v0 = v39;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v0[6] = v20;
  }

  sub_1C43FBC80();
}

void BasicProperty.constructRows(entityIdentifier:source:sourceId:map:relationshipId:pipelineType:)()
{
  sub_1C43FE96C();
  v3 = v2;
  v25 = v4;
  v23 = v5;
  v24 = v6;
  v22 = v7;
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = *v3;
  if (*(v0 + 48) || (sub_1C45CF110(), !v1))
  {
    sub_1C45D1C78();
    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      sub_1C4423A0C(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C45CF650();
      swift_allocError();
      *v20 = 4;
      swift_willThrow();
    }

    else
    {
      (*(v14 + 32))(v18, v11, v12);
      sub_1C45CF6A4(v18, v22, v23, v24, *(v0 + 48), *(v0 + 56), v25, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v19);
      (*(v14 + 8))(v18, v12);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C45CF650()
{
  result = qword_1EC0B99A8;
  if (!qword_1EC0B99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B99A8);
  }

  return result;
}

uint64_t *sub_1C45CF6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, unsigned __int8 a12)
{
  v289 = a8;
  v304 = a3;
  v305 = a4;
  v303 = a2;
  v309 = a1;
  v302 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v319 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v310 = v19;
  v311 = v20;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  v280 = &v266 - v27;
  v28 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v299 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v312 = v32 - v31;
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v33);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  v292 = &v266 - v35;
  v315 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v294 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v298 = v39 - v38;
  v40 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v40);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v266 - v42;
  v44 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  v308 = &v266 - v50;
  v318 = type metadata accessor for MapPredicate(0);
  sub_1C43FCDF8();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  v316 = v55 - v54;
  v56 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v57 = sub_1C43FBD18(v56);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v266 - v59;
  if (!a5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v272 = v18;
  v61 = *(a5 + 16);
  if (!v61)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v313 = v44;
  LODWORD(v286) = a6;
  v317 = v61;
  v301 = a12;
  sub_1C45D1C78();
  v63 = (a5 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));
  v290 = v46 + 32;
  v306 = *(v52 + 72);
  v283 = (v294 + 4);
  v274 = v299 + 32;
  v277 = v46 + 16;
  v293 = (v299 + 16);
  v307 = (v319 + 2);
  v300 = (v294 + 2);
  v64 = HIBYTE(a9) & 0xF;
  v287 = a9;
  if ((a9 & 0x2000000000000000) == 0)
  {
    v64 = v289 & 0xFFFFFFFFFFFFLL;
  }

  v295 = v64;
  v65 = HIBYTE(a11) & 0xF;
  v271 = a10;
  v66 = v28;
  if ((a11 & 0x2000000000000000) == 0)
  {
    v65 = a10 & 0xFFFFFFFFFFFFLL;
  }

  v285 = a11;
  v282 = v299 + 8;
  v281 = (v294 + 1);
  v294 = (v46 + 8);
  v270 = v319 + 1;
  v273 = v65;
  if (a11)
  {
    v67 = v65 == 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = MEMORY[0x1E69E7CC0];
  v69 = v67;
  v269 = v69;
  *&v62 = 136380931;
  v266 = v62;
  v299 = MEMORY[0x1E69E7CC0];
  v297 = v66;
  v70 = v316;
  v314 = v60;
  v284 = v43;
  while (1)
  {
    v319 = v68;
    sub_1C440D08C();
    sub_1C45D1B80();
    v68 = &unk_1C4F319B0;
    sub_1C45D1C78();
    v71 = v313;
    if (sub_1C44157D4(v43, 1, v313) != 1)
    {
      break;
    }

    v72 = v43;
    v73 = v43;
    v74 = &qword_1EC0B8568;
LABEL_18:
    sub_1C4423A0C(v73, v74, v68);
    v80 = v70;
    v70 = *(v70 + 8);
    if (!v70)
    {
      goto LABEL_27;
    }

    v81 = *v80;
    v82 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v82 = *v80 & 0xFFFFFFFFFFFFLL;
    }

    if (v82)
    {
      sub_1C4434DF8();
      v83 = sub_1C4404090();
      v84(v83);
      v85 = v310;
      sub_1C442DD54();
      v88(v68 + v86, v80 + v87, v315);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF888();
      sub_1C4EFEC38();
      sub_1C44190C4();
      sub_1C45D1B80();
      v89 = (v68 + v85[8]);
      *v89 = v81;
      v89[1] = v70;
      v90 = (v68 + v85[10]);
      v91 = v305;
      *v90 = v304;
      v90[1] = v91;
      *(v68 + v85[11]) = 0;
      *(v68 + v85[12]) = v301;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v43 = v72;
      if ((sub_1C443FA60() & 1) == 0)
      {
        v221 = sub_1C43FCEC0();
        sub_1C44C9240(v221, v222, v223, v68);
        v68 = v224;
      }

      sub_1C43FEBA4();
      if (v93)
      {
        v225 = sub_1C43FFD98(v92);
        sub_1C44C9240(v225, v226, v227, v68);
        v68 = v228;
      }
    }

    else
    {
LABEL_27:
      v43 = v72;
      if (v295)
      {
        sub_1C4434DF8();
        v94 = v296;
        v95(v296, v309, v302);
        sub_1C442FB2C();
        sub_1C442DD54();
        v98(v94 + v96, v316 + v97, v315);
        sub_1C4EFF888();
        sub_1C4EFEC38();
        sub_1C44190C4();
        sub_1C45D1B80();
        v99 = (v94 + v71[8]);
        v70 = v287;
        *v99 = v289;
        v99[1] = v70;
        v100 = (v94 + v71[10]);
        v101 = v305;
        *v100 = v304;
        v100[1] = v101;
        *(v94 + v71[11]) = 0;
        *(v94 + v71[12]) = v301;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((sub_1C443FA60() & 1) == 0)
        {
          v229 = sub_1C43FCEC0();
          sub_1C44C9240(v229, v230, v231, v68);
          v68 = v232;
        }

        sub_1C43FEBA4();
        if (v93)
        {
          v233 = sub_1C43FFD98(v102);
          sub_1C44C9240(v233, v234, v235, v68);
          v68 = v236;
        }
      }

      else
      {
        v70 = v316;
        v68 = v319;
        if (!v285)
        {
          sub_1C45D1BD4(v316);
          goto LABEL_33;
        }

        v104 = v314;
        if (!v273)
        {
          sub_1C45D1BD4(v316);
          goto LABEL_34;
        }

        sub_1C4434DF8();
        v110 = sub_1C44258FC();
        v111(v110);
        v112 = v310;
        sub_1C442DD54();
        v115(v70 + v113, v70 + v114, v315);
        v116 = v285;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        sub_1C44190C4();
        sub_1C45D1B80();
        v117 = (v70 + v112[8]);
        *v117 = v271;
        v117[1] = v116;
        sub_1C43FD124();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v251 = sub_1C43FCEC0();
          sub_1C44C9240(v251, v252, v253, v68);
          v68 = v254;
        }

        sub_1C43FEBA4();
        if (v93)
        {
          v255 = sub_1C43FFD98(v118);
          sub_1C44C9240(v255, v256, v257, v68);
          v68 = v258;
        }
      }
    }

    v103 = v316;
    sub_1C45D1BD4(v316);
    v68[2] = v70;
    v70 = v103;
    sub_1C441180C();
    sub_1C44066C0();
    sub_1C44DD6F4();
LABEL_33:
    v104 = v314;
LABEL_34:
    v63 += v306;
    if (!--v317)
    {
      sub_1C4423A0C(v104, &qword_1EC0B9A10, &qword_1C4F107C0);
      sub_1C4409A34();

      return v68;
    }
  }

  sub_1C4402C08();
  v75 = v308;
  v76(v308, v43, v71);
  v77 = v292;
  v68 = &unk_1C4F107B0;
  sub_1C45D1C78();
  v78 = v315;
  if (sub_1C44157D4(v77, 1, v315) == 1)
  {
    v72 = v43;
    sub_1C4402C08();
    v79(v75, v71);
    v73 = v77;
    v74 = &qword_1EC0B9A08;
    goto LABEL_18;
  }

  sub_1C4402C08();
  v105(v298, v77, v78);
  v104 = v314;
  v106 = v288;
  sub_1C45D1C78();
  v107 = v297;
  if (sub_1C44157D4(v106, 1, v297) == 1)
  {
    sub_1C4402C08();
    v108(v276, v308, v71);
    v109 = v288;
    sub_1C4EFF838();
    sub_1C4423A0C(v104, &qword_1EC0B9A10, &qword_1C4F107C0);
    if (sub_1C44157D4(v109, 1, v107) != 1)
    {
      sub_1C4423A0C(v109, &qword_1EC0B9A10, &qword_1C4F107C0);
    }
  }

  else
  {
    sub_1C4423A0C(v104, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4402C08();
    v119(v312, v106, v107);
  }

  v291 = *v293;
  v291(v104, v312, v107);
  sub_1C440BAA8(v104, 0, 1, v107);
  v120 = *(v70 + 8);
  if (!v120)
  {
    goto LABEL_56;
  }

  v121 = *v70;
  v122 = HIBYTE(v120) & 0xF;
  if ((v120 & 0x2000000000000000) == 0)
  {
    v122 = *v70 & 0xFFFFFFFFFFFFLL;
  }

  if (!v122)
  {
LABEL_56:
    if (v295)
    {
      sub_1C4434DF8();
      v141 = sub_1C44258FC();
      v142(v141);
      sub_1C442FB2C();
      v68 = v300;
      v143 = *v300;
      (*v300)(v70 + v144, v316 + v145, v315);
      sub_1C4404B9C();
      sub_1C440DE70();
      v146();
      v147 = sub_1C441EA78();
      v143(v147);
      sub_1C44190C4();
      sub_1C45D1B80();
      v148 = (v70 + v71[8]);
      v149 = v287;
      *v148 = v289;
      v148[1] = v149;
      sub_1C43FD124();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((sub_1C443FA60() & 1) == 0)
      {
        v246 = sub_1C43FCEC0();
        sub_1C44C9240(v246, v247, v248, v68);
        v68 = v249;
      }

      v138 = v299;
      v140 = v313;
      sub_1C43FEBA4();
      v137 = v297;
      if (!v93)
      {
        v139 = v68;
        goto LABEL_69;
      }
    }

    else
    {
      if (v269)
      {
        v70 = v316;
        result = sub_1C4409A34();
        v140 = v313;
        v137 = v297;
        v68 = v319;
        goto LABEL_70;
      }

      sub_1C4434DF8();
      v152 = sub_1C44258FC();
      v153(v152);
      sub_1C442FB2C();
      v68 = v300;
      v154 = *v300;
      (*v300)(v70 + v155, v316 + v156, v315);
      sub_1C4404B9C();
      v137 = *(v157 - 256);
      sub_1C440DE70();
      v158();
      v159 = sub_1C441EA78();
      v154(v159);
      sub_1C44190C4();
      sub_1C45D1B80();
      v160 = (v70 + v71[8]);
      v161 = v285;
      *v160 = v271;
      v160[1] = v161;
      sub_1C43FD124();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((sub_1C443FA60() & 1) == 0)
      {
        v259 = sub_1C43FCEC0();
        sub_1C44C9240(v259, v260, v261, v68);
        v68 = v262;
      }

      v138 = v299;
      v140 = v313;
      sub_1C43FEBA4();
      if (!v93)
      {
        v139 = v68;
        goto LABEL_69;
      }
    }

    v263 = sub_1C43FFD98(v150);
    sub_1C44C9240(v263, v264, v265, v68);
    v68 = v139;
    goto LABEL_69;
  }

  v275 = v63;
  sub_1C4434DF8();
  v123 = sub_1C4404090();
  v124(v123);
  v125 = v310;
  v126 = v315;
  v127 = v298;
  v128 = *v300;
  (*v300)(&qword_1C4F107C0 + v310[5], v70 + *(v318 + 20), v315);
  sub_1C440DE70();
  v129();
  v128(&qword_1C4F107C0 + v125[7], v127, v126);
  sub_1C44190C4();
  sub_1C45D1B80();
  v130 = (&qword_1C4F107C0 + v125[8]);
  *v130 = v121;
  v130[1] = v120;
  v131 = (&qword_1C4F107C0 + v125[10]);
  v132 = v305;
  *v131 = v304;
  v131[1] = v132;
  *(&qword_1C4F107C0 + v125[11]) = 0;
  *(&qword_1C4F107C0 + v125[12]) = v301;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v133 = sub_1C4409A34();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v68 = v319;
    v134 = v133;
  }

  else
  {
    v237 = sub_1C43FCEC0();
    sub_1C44C9240(v237, v238, v239, v240);
    v134 = v241;
    v68 = v319;
  }

  v136 = *(v134 + 16);
  v135 = *(v134 + 24);
  v70 = v136 + 1;
  v137 = v297;
  v43 = v284;
  v63 = v275;
  if (v136 >= v135 >> 1)
  {
    v242 = sub_1C43FFD98(v135);
    sub_1C44C9240(v242, v243, v244, v245);
    v138 = v139;
  }

  else
  {
    v138 = v134;
    v139 = v134;
  }

  v140 = v313;
LABEL_69:
  v139[2] = v70;
  sub_1C441180C();
  sub_1C44066C0();
  sub_1C44DD6F4();
  v70 = v316;
  result = v138;
  v104 = v314;
LABEL_70:
  v162 = v68[2];
  v299 = result;
  if (!v162)
  {
    sub_1C4402C08();
    v172(v312, v137);
    v173 = sub_1C4416D6C();
    v174(v173);
    sub_1C4402C08();
    v175(v308, v140);
    sub_1C45D1BD4(v70);
    goto LABEL_34;
  }

  v163 = result[2];
  v164 = v162 + v163;
  if (!__OFADD__(v162, v163))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v164 > (v68[3] >> 1))
    {
      if (v162 <= v164)
      {
        v166 = v162 + v163;
      }

      else
      {
        v166 = v162;
      }

      sub_1C44C9240(isUniquelyReferenced_nonNull_native, v166, 1, v68);
      v68 = v167;
    }

    v168 = v279;
    result = sub_1C4409A34();
    if (result[2])
    {
      if (((v68[3] >> 1) - v68[2]) < v163)
      {
        goto LABEL_102;
      }

      swift_arrayInitWithCopy();

      if (v163)
      {
        v169 = v68[2];
        v170 = __OFADD__(v169, v163);
        v171 = v169 + v163;
        if (v170)
        {
          goto LABEL_103;
        }

        v68[2] = v171;
      }
    }

    else
    {

      if (v163)
      {
        goto LABEL_101;
      }
    }

    if ((v286 & 1) == 0)
    {
      sub_1C4402C08();
      v199(v312, v137);
      v200 = sub_1C4416D6C();
      v201(v200);
      sub_1C4402C08();
      v202(v308, v140);
      v70 = v316;
      sub_1C45D1BD4(v316);
      LODWORD(v286) = 0;
      v43 = v284;
      goto LABEL_34;
    }

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v319 = v68;
    v176 = sub_1C4F00978();
    sub_1C442B738(v176, qword_1EDE2DE10);
    v177 = v272;
    v178 = v302;
    v286 = *v307;
    v286(v272, v309, v302);
    sub_1C4402C08();
    v179(v168, v308, v140);
    v180 = v178;
    v181 = sub_1C4F00968();
    v182 = sub_1C4F01CF8();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      v320 = v268;
      *v183 = v266;
      sub_1C45D1C30(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
      v267 = v181;
      v184 = sub_1C4F02858();
      v185 = v182;
      v186 = v168;
      v188 = v187;
      sub_1C4402C08();
      v189(v177, v180);
      v190 = sub_1C441D828(v184, v188, &v320);

      *(v183 + 4) = v190;
      *(v183 + 12) = 2080;
      v191 = sub_1C4EFD2F8();
      v193 = v192;
      v275 = *v294;
      (v275)(v186, v140);
      v194 = sub_1C441D828(v191, v193, &v320);

      *(v183 + 14) = v194;
      v195 = v267;
      _os_log_impl(&dword_1C43F8000, v267, v185, "StandardEntityMapper: constructBasicPropertyRows relationship: %{private}s relPred isA %s", v183, 0x16u);
      v196 = v268;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v196, -1, -1);
      v137 = v297;
      MEMORY[0x1C6942830](v183, -1, -1);
    }

    else
    {

      v275 = *v294;
      (v275)(v168, v140);
      sub_1C4402C08();
      v203(v177, v180);
    }

    v197 = v180;
    v198 = v316;
    v43 = v284;
    v204 = v278;
    v286(v278, v309, v197);
    v205 = v310;
    sub_1C442DD54();
    v208(v204 + v206, v198 + v207, v315);
    sub_1C440DE70();
    v209();
    sub_1C4EFEBB8();
    v210 = sub_1C4EFD2F8();
    v212 = v211;
    sub_1C44190C4();
    sub_1C45D1B80();
    v213 = (v204 + v205[8]);
    *v213 = v210;
    v213[1] = v212;
    v214 = (v204 + v205[10]);
    v215 = v305;
    *v214 = v304;
    v214[1] = v215;
    *(v204 + v205[11]) = 0;
    *(v204 + v205[12]) = v301;
    v68 = v319;
    v216 = v319[2];
    v217 = v319[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v216 >= v217 >> 1)
    {
      sub_1C44C9240(v217 > 1, v216 + 1, 1, v68);
      v68 = v250;
    }

    sub_1C4402C08();
    v218(v312, v137);
    v219 = sub_1C4416D6C();
    v220(v219);
    (v275)(v308, v140);
    v70 = v316;
    sub_1C45D1BD4(v316);
    v68[2] = v216 + 1;
    sub_1C441180C();
    sub_1C44066C0();
    sub_1C44DD6F4();
    LODWORD(v286) = 0;
    goto LABEL_33;
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_1C45D0DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6F6F4C6D756E65 && a2 == 0xEF65756C61567075;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696465725070616DLL && a2 == 0xED00007365746163;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000015 && 0x80000001C4F8BEA0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C45D0F9C(char a1)
{
  result = 0x7461636F4C70616DLL;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 0x6B6F6F4C6D756E65;
      break;
    case 3:
      result = 0x696465725070616DLL;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C45D1060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45D0DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45D1088(uint64_t a1)
{
  v2 = sub_1C45D1348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45D10C4(uint64_t a1)
{
  v2 = sub_1C45D1348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BasicProperty.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v43 = v24;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0B99B0, &qword_1C4F105A8);
  sub_1C43FCDF8();
  v29 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v37 - v31;
  v33 = *(v23 + 16);
  v41 = *(v23 + 24);
  v42 = v33;
  v34 = *(v23 + 32);
  v39 = *(v23 + 40);
  v40 = v34;
  v38 = *(v23 + 48);
  v37[1] = *(v23 + 56);
  sub_1C4409678(v26, v26[3]);
  sub_1C45D1348();
  sub_1C4F02BF8();
  v35 = v43;
  sub_1C4F02798();
  if (!v35)
  {
    v36 = v38;
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C43FBF44();
    sub_1C4F02738();
    v44 = v36;
    sub_1C456902C(&qword_1EC0B99C0, &qword_1C4F105B0);
    sub_1C45D1704(&qword_1EC0B99C8, &qword_1EC0B99D0, &protocol conformance descriptor for MapPredicate, MEMORY[0x1E69E6300]);
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C43FBF44();
    sub_1C4F027A8();
  }

  (*(v29 + 8))(v32, v27);
  sub_1C43FBC80();
}

unint64_t sub_1C45D1348()
{
  result = qword_1EC0B99B8;
  if (!qword_1EC0B99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B99B8);
  }

  return result;
}

void BasicProperty.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v27 = v26;
  sub_1C456902C(&qword_1EC0B99D8, &qword_1C4F105B8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4409678(v25, v25[3]);
  sub_1C45D1348();
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v25);
  }

  else
  {
    sub_1C4405804();
    v29 = sub_1C4F02678();
    v41 = v30;
    sub_1C4405804();
    *&v40 = sub_1C4F02678();
    *(&v40 + 1) = v31;
    LOBYTE(v44[0]) = 2;
    sub_1C4405804();
    v38 = sub_1C4F02618();
    v39 = v32;
    sub_1C456902C(&qword_1EC0B99C0, &qword_1C4F105B0);
    LOBYTE(v42[0]) = 3;
    sub_1C45D1704(&qword_1EC0B99E0, &qword_1EC0B99E8, &protocol conformance descriptor for MapPredicate, MEMORY[0x1E69E6330]);
    sub_1C4F02658();
    v37 = v29;
    v33 = v44[0];
    v34 = sub_1C4F02688();
    v35 = sub_1C43FD158();
    v36(v35);
    *&v42[0] = v37;
    *(&v42[0] + 1) = v41;
    v42[1] = v40;
    *v43 = v38;
    *&v43[8] = v39;
    *&v43[16] = v33;
    v43[24] = v34 & 1;
    *v27 = v42[0];
    v27[1] = v40;
    v27[2] = *v43;
    *(v27 + 41) = *&v43[9];
    sub_1C45D17A0(v42, v44);
    sub_1C440962C(v25);
    v44[0] = v37;
    v44[1] = v41;
    v45 = v40;
    v46 = v38;
    v47 = v39;
    v48 = v33;
    v49 = v34 & 1;
    sub_1C44E3634(v44);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45D1704(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B99C0, &qword_1C4F105B0);
    sub_1C45D1C30(a2, type metadata accessor for MapPredicate, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C45D17F8(uint64_t a1)
{
  *(a1 + 8) = sub_1C458AA50();
  result = sub_1C458A984();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1C45D1858(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C45D1874(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C45D18B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicProperty.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BasicProperty.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45D1A7C()
{
  result = qword_1EC0B99F0;
  if (!qword_1EC0B99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B99F0);
  }

  return result;
}

unint64_t sub_1C45D1AD4()
{
  result = qword_1EC0B99F8;
  if (!qword_1EC0B99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B99F8);
  }

  return result;
}

unint64_t sub_1C45D1B2C()
{
  result = qword_1EC0B9A00;
  if (!qword_1EC0B9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9A00);
  }

  return result;
}

uint64_t sub_1C45D1B80()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FCE50();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C45D1BD4(uint64_t a1)
{
  v2 = type metadata accessor for MapPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45D1C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C45D1C78()
{
  sub_1C4404078();
  sub_1C456902C(v1, v2);
  sub_1C43FCE50();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

uint64_t sub_1C45D1CCC()
{
  sub_1C4404078();
  sub_1C456902C(v1, v2);
  sub_1C43FCE50();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

uint64_t sub_1C45D1D54()
{
  type metadata accessor for Battery.GuardedData();
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  sub_1C456902C(&qword_1EC0B9A18, &qword_1C4F10808);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EDE2C950 = result;
  return result;
}

uint64_t sub_1C45D1DBC()
{
  v0 = IOServiceMatching("IOPMPowerSource");
  if (!v0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v2 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v10, "Battery.isOnCharger: Could not read power source. Battery state unknown.", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);

      return 2;
    }

LABEL_31:

    return 2;
  }

  v1 = *MEMORY[0x1E696CD60];
  v2 = v0;
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (!MatchingService)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();
    if (os_log_type_enabled(v13, v14))
    {
      v8 = 2;
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Battery.isOnCharger: Could not get matching service for power source. Battery state unknown.", v15, 2u);
      MEMORY[0x1C6942830](v15, -1, -1);

      return v8;
    }

    goto LABEL_31;
  }

  v4 = MatchingService;
  v5 = sub_1C4F01108();
  CFProperty = IORegistryEntryCreateCFProperty(v4, v5, *MEMORY[0x1E695E480], 0);

  if (!CFProperty)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Battery.isOnCharger: Could not create value for is charging key. Battery state unknown.", v19, 2u);
      MEMORY[0x1C6942830](v19, -1, -1);

      return 2;
    }

    goto LABEL_31;
  }

  v7 = CFGetTypeID(CFProperty);
  if (v7 != CFBooleanGetTypeID())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Battery.isOnCharger: unexpected type for kIOPMPSExternalConnectedKey. Charging state unknown.";
LABEL_29:
      _os_log_impl(&dword_1C43F8000, v21, v22, v24, v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);

      swift_unknownObjectRelease();
      return 2;
    }

    goto LABEL_30;
  }

  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Battery.isOnCharger: Failed to cast isChargingValue.";
      goto LABEL_29;
    }

LABEL_30:

    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  swift_unknownObjectRelease();
  return v27;
}

void sub_1C45D229C(uint64_t a1)
{
  v2 = sub_1C45D1DBC();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DF70);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    sub_1C44190DC();
    sub_1C442C478();
    if (!v14)
    {
      v11 = v13;
    }

    if (v9 == 2)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v9 == 2)
    {
      v16 = v8;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_1C441D828(v15, v16, &v20);

    *(v6 + 4) = v17;
    sub_1C441F46C(&dword_1C43F8000, v18, v19, "Battery: device %s");
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  *(*a1 + 16) = v2;
}

uint64_t sub_1C45D2400()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  v3 = *(v0 + 1) | (v0[3] << 16);
  v4 = v0[4];
  v5 = *(v0 + 5) | (v0[7] << 16);
  v6 = *(v0 + 3);
  v7 = 0;
  switch(v0[40])
  {
    case 1u:
      v25 = *v0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44066FC();
      v19 = sub_1C4405814();
      goto LABEL_45;
    case 3u:
      v25 = 0;
      sub_1C43FFDAC();
      MEMORY[0x1C6940010]();

      sub_1C44066FC();
      sub_1C463C080(v2 | (v3 << 8));
      MEMORY[0x1C6940010]();

      sub_1C44066FC();
      v8 = sub_1C463C120();
      goto LABEL_48;
    case 4u:
      v6 = v2 & 0xFFFFFFFF000000FFLL | ((*&v3 & 0xFFFFFFLL) << 8) | (v4 << 32) | (v5 << 40);
      v21 = v0[16] | ((*(v0 + 17) | (v0[19] << 16)) << 8);
      v25 = 0;
      if (v0[20])
      {
        v22 = 0x7472617453;
      }

      else
      {
        v22 = 6581829;
      }

      if (v0[20])
      {
        v23 = 0xE500000000000000;
      }

      else
      {
        v23 = 0xE300000000000000;
      }

      MEMORY[0x1C6940010](v22, v23);

      sub_1C44066FC();
      v10 = sub_1C463C1B4(v21);
      goto LABEL_44;
    case 5u:
      v25 = 0;
      sub_1C43FFDAC();
      MEMORY[0x1C6940010]();

      sub_1C44066FC();
      goto LABEL_47;
    case 6u:
      if (v2)
      {
        return 0x64656B636F4CLL;
      }

      else
      {
        return 0x64656B636F6C6E55;
      }

    case 7u:
      sub_1C441F48C();
      if (v9)
      {
        v10 = 1953069125;
      }

      else
      {
        v10 = 0x7265746E45;
      }

      v11 = 0xE400000000000000;
      v12 = 0xE500000000000000;
      goto LABEL_13;
    case 8u:
      if (v2)
      {
        return 0x656C62616E45;
      }

      else
      {
        return 0x656C6261736944;
      }

    case 9u:
    case 0xAu:
      sub_1C441F48C();
      if (v9)
      {
        v10 = 0x656E6E6F63736944;
      }

      else
      {
        v10 = 0x7463656E6E6F43;
      }

      v11 = 0xEA00000000007463;
      v12 = 0xE700000000000000;
LABEL_13:
      if (v9)
      {
        v14 = v11;
      }

      else
      {
        v14 = v12;
      }

      v15 = v14;
LABEL_44:
      MEMORY[0x1C6940010](v10, v15);

      sub_1C44066FC();
      v19 = v6;
      v20 = v1;
LABEL_45:
      MEMORY[0x1C6940010](v19, v20);
      goto LABEL_49;
    case 0xBu:
      if (v2)
      {
        return 0x64656767756C50;
      }

      else
      {
        return 0x656767756C706E55;
      }

    case 0xCu:
      v25 = *v0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44066FC();
      v13 = sub_1C4405814();
      MEMORY[0x1C6940010](v13);
      sub_1C44066FC();
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      v8 = sub_1C4F01048();
      goto LABEL_48;
    case 0xEu:
      v25 = 0;
      if (v0[20])
      {
        v16 = 0x7265746E45;
      }

      else
      {
        v16 = 1953069125;
      }

      if (v0[20])
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v16, v17);

      sub_1C44066FC();
      v18 = sub_1C463C120();
      MEMORY[0x1C6940010](v18);

      sub_1C44066FC();
LABEL_47:
      sub_1C43FFDAC();
      goto LABEL_48;
    case 0xFu:
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      return sub_1C4F01048();
    case 0x12u:
    case 0x13u:
    case 0x14u:
      v25 = 0;
      sub_1C43FFDAC();
      MEMORY[0x1C6940010]();

      sub_1C44066FC();
      v8 = sub_1C4F02858();
LABEL_48:
      MEMORY[0x1C6940010](v8);

LABEL_49:
      v7 = v25;
      break;
    case 0x15u:
      return v7;
    default:
      v7 = v2 & 0xFFFFFFFF000000FFLL | ((*&v3 & 0xFFFFFFLL) << 8) | (v4 << 32) | (v5 << 40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
  }

  return v7;
}

uint64_t sub_1C45D29E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4EFDAB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v62[-v14];
  v16 = *(v9 + 16);
  v16(&v62[-v14], a1, v8, v13);
  v17 = (*(v9 + 88))(v15, v8);
  if (v17 != *MEMORY[0x1E69A9450])
  {
    v25 = *MEMORY[0x1E69A9468];
    *&v65 = v11;
    if (v17 == v25)
    {
      sub_1C441911C();
      sub_1C45D3064(v26);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9460])
    {
      sub_1C441911C();
      sub_1C45D3140(v27);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93D0])
    {
      sub_1C441911C();
      sub_1C45D3270(v28);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9410])
    {
      sub_1C441911C();
      sub_1C45D334C(v29);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9438])
    {
      sub_1C441911C();
      sub_1C45D3578(v30);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9448])
    {
      sub_1C441911C();
      sub_1C45D379C(v31);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93E0])
    {
      sub_1C441911C();
      sub_1C45D3974(v32);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9428])
    {
      sub_1C441911C();
      sub_1C45D3AF8(v33);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93D8])
    {
      sub_1C441911C();
      sub_1C45D3CBC(v34);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9470])
    {
      sub_1C441911C();
      sub_1C45D3E40(v35);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9400])
    {
      sub_1C441911C();
      sub_1C45D4010(v36);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93F0])
    {
      sub_1C441911C();
      sub_1C45D41E0(v37);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93C8])
    {
      sub_1C441911C();
      sub_1C45D4370(v38);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9430])
    {
      sub_1C441911C();
      sub_1C45D45DC(v39);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9458])
    {
      sub_1C441911C();
      sub_1C45D46B8(v40);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9420])
    {
      sub_1C441911C();
      sub_1C45D48FC(v41);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9440])
    {
      LOBYTE(v24) = 16;
    }

    else
    {
      if (v17 != *MEMORY[0x1E69A9418])
      {
        if (v17 == *MEMORY[0x1E69A9408])
        {
          sub_1C441911C();
          v45 = 0;
        }

        else if (v17 == *MEMORY[0x1E69A93F8])
        {
          sub_1C441911C();
          v45 = 1;
        }

        else
        {
          if (v17 != *MEMORY[0x1E69A93E8])
          {
            (*(v9 + 8))(v15, v8);
            goto LABEL_53;
          }

          sub_1C441911C();
          v45 = 2;
        }

        sub_1C45D4A5C(v45, v44);
LABEL_36:
        v24 = v15[40];
        if (v24 != 255)
        {
          v65 = *(v15 + 1);
          v22 = *(v15 + 4);
          a2 = *v15;
          v21 = *(v15 + 1);
LABEL_38:
          v42 = sub_1C4405814();
          v43(v42);

          v23 = v65;
          goto LABEL_39;
        }

LABEL_53:
        if (qword_1EDDFA668 != -1)
        {
          swift_once();
        }

        v46 = sub_1C4F00978();
        sub_1C442B738(v46, qword_1EDE2DDE0);
        v47 = v65;
        (v16)(v65, a1, v8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = sub_1C4F00968();
        v49 = sub_1C4F01CE8();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v66[0] = v64;
          *v50 = 136315394;
          v51 = sub_1C441D828(a2, a3, v66);
          v63 = v49;
          v52 = v51;

          *(v50 + 4) = v52;
          *(v50 + 12) = 2080;
          sub_1C45D4D4C();
          v53 = sub_1C4F02858();
          v55 = v54;
          v56 = *(v9 + 8);
          v56(v47, v8);
          v57 = sub_1C441D828(v53, v55, v66);

          *(v50 + 14) = v57;
          _os_log_impl(&dword_1C43F8000, v48, v63, "Behavior.init: Malformed identifier %s for type %s, falling back to initialize as Behavior.unknown.", v50, 0x16u);
          v58 = v64;
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v58, -1, -1);
          MEMORY[0x1C6942830](v50, -1, -1);

          v59 = sub_1C4405814();
          result = (v56)(v59);
        }

        else
        {

          v60 = *(v9 + 8);
          v61 = sub_1C4405814();
          v60(v61);
          result = (v60)(v47, v8);
        }

        goto LABEL_3;
      }

      LOBYTE(v24) = 17;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = 0;
    v65 = 0u;
    v21 = a3;
    goto LABEL_38;
  }

  v18 = sub_1C4405814();
  v19(v18);

LABEL_3:
  a2 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 21;
LABEL_39:
  *a4 = a2;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23;
  *(a4 + 32) = v22;
  *(a4 + 40) = v24;
  return result;
}

uint64_t sub_1C45D3064@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] == 1)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
    v9 = v8;

    v11 = 0;
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v11 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = v11;
  return result;
}

uint64_t sub_1C45D3140@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {

    v8 = 0;
    v10 = 0;
    v16 = 0;
    v18 = 0;
    v19 = -1;
    goto LABEL_5;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  if (v3[2] >= 2uLL)
  {
    v12 = v3[8];
    v13 = v3[9];
    v14 = v3[10];
    v15 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v16 = MEMORY[0x1C693FEF0](v12, v13, v14, v15);
    v18 = v17;

    v19 = 1;
LABEL_5:
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = v16;
    *(a1 + 24) = v18;
    *(a1 + 32) = 0;
    *(a1 + 40) = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45D3270@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] == 1)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
    v9 = v8;

    v11 = 2;
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v11 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = v11;
  return result;
}

uint64_t sub_1C45D334C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 3)
  {
    goto LABEL_18;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7265746E45 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 1;
  }

  else
  {
    if (v8 == 1953069125 && v10 == 0xE400000000000000)
    {
    }

    else
    {
      v26 = sub_1C4F02938();

      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v13 = 0;
  }

  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v17 = v3[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693FEF0](v14, v15, v16, v17);

  result = sub_1C463C2B8();
  if ((result & 0x100000000) != 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (v3[2] >= 3uLL)
  {
    v18 = result;
    v19 = v3[12];
    v20 = v3[13];
    v21 = v3[14];
    v22 = v3[15];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    MEMORY[0x1C693FEF0](v19, v20, v21, v22);

    result = sub_1C463C3A4();
    if ((result & 0x100000000) == 0)
    {
      v23 = v18 | (result << 32);
      v24 = 3;
LABEL_20:
      *a1 = v23;
      *(a1 + 8) = v13;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = v24;
      return result;
    }

LABEL_19:
    v23 = 0;
    v13 = 0;
    v24 = -1;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C45D3578@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 3)
  {
    goto LABEL_17;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7472617453 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 0x100000000;
  }

  else
  {
    if (v8 == 6581829 && v10 == 0xE300000000000000)
    {
    }

    else
    {
      v32 = sub_1C4F02938();

      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v13 = 0;
  }

  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v17 = v3[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = MEMORY[0x1C693FEF0](v14, v15, v16, v17);
  v20 = v19;

  result = sub_1C463C500(v18, v20);
  if ((result & 0x100000000) != 0)
  {
LABEL_17:

    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = -1;
    goto LABEL_18;
  }

  if (v3[2] >= 3uLL)
  {
    v21 = result;
    v22 = v3[12];
    v23 = v3[13];
    v24 = v3[14];
    v25 = v3[15];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v26 = MEMORY[0x1C693FEF0](v22, v23, v24, v25);
    v28 = v27;

    v29 = v21 | v13;
    v30 = 4;
LABEL_18:
    *a1 = v26;
    *(a1 + 8) = v28;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v29;
    *(a1 + 40) = v30;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C45D379C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {
    goto LABEL_16;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7472617453 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 0x100000000;
    goto LABEL_8;
  }

  if (v8 == 6581829 && v10 == 0xE300000000000000)
  {
  }

  else
  {
    v21 = sub_1C4F02938();

    if ((v21 & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  v13 = 0;
LABEL_8:
  if (v3[2] >= 2uLL)
  {
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    MEMORY[0x1C693FEF0](v14, v15, v16, v17);

    result = sub_1C463C774();
    if ((result & 0x100000000) == 0)
    {
      v18 = result | v13;
      v19 = 5;
LABEL_18:
      *a1 = v18;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = v19;
      return result;
    }

LABEL_17:
    v18 = 0;
    v19 = -1;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

double sub_1C45D3974@<D0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] != 1)
  {

    v11 = 0;
    goto LABEL_10;
  }

  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
  v9 = v8;

  v10 = v7 == 0x64656B636F4CLL && v9 == 0xE600000000000000;
  if (v10 || (sub_1C4F02938() & 1) != 0)
  {

    v11 = 1;
    goto LABEL_8;
  }

  if (v7 == 0x64656B636F6C6E55 && v9 == 0xE800000000000000)
  {

    v11 = 0;
    goto LABEL_8;
  }

  v15 = sub_1C4F02938();

  v11 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v12 = -1;
    goto LABEL_11;
  }

LABEL_8:
  v12 = 6;
LABEL_11:
  *a1 = v11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_1C45D3AF8@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {
    goto LABEL_15;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7265746E45 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 1;
    goto LABEL_8;
  }

  if (v8 == 1953069125 && v10 == 0xE400000000000000)
  {
  }

  else
  {
    v23 = sub_1C4F02938();

    if ((v23 & 1) == 0)
    {
LABEL_15:

      v18 = 0;
      v20 = 0;
      v13 = 0;
      v21 = -1;
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_8:
  if (v3[2] >= 2uLL)
  {
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v18 = MEMORY[0x1C693FEF0](v14, v15, v16, v17);
    v20 = v19;

    v21 = 7;
LABEL_16:
    *a1 = v18;
    *(a1 + 8) = v20;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v13;
    *(a1 + 40) = v21;
    return result;
  }

  __break(1u);
  return result;
}

double sub_1C45D3CBC@<D0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] != 1)
  {

    v11 = 0;
    goto LABEL_10;
  }

  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
  v9 = v8;

  v10 = v7 == 0x656C62616E45 && v9 == 0xE600000000000000;
  if (v10 || (sub_1C4F02938() & 1) != 0)
  {

    v11 = 1;
    goto LABEL_8;
  }

  if (v7 == 0x656C6261736944 && v9 == 0xE700000000000000)
  {

    v11 = 0;
    goto LABEL_8;
  }

  v15 = sub_1C4F02938();

  v11 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v12 = -1;
    goto LABEL_11;
  }

LABEL_8:
  v12 = 8;
LABEL_11:
  *a1 = v11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_1C45D3E40@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {
    goto LABEL_15;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7463656E6E6F43 && v10 == 0xE700000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 1;
    goto LABEL_8;
  }

  if (v8 == 0x656E6E6F63736944 && v10 == 0xEA00000000007463)
  {
  }

  else
  {
    v23 = sub_1C4F02938();

    if ((v23 & 1) == 0)
    {
LABEL_15:

      v18 = 0;
      v20 = 0;
      v13 = 0;
      v21 = -1;
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_8:
  if (v3[2] >= 2uLL)
  {
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v18 = MEMORY[0x1C693FEF0](v14, v15, v16, v17);
    v20 = v19;

    v21 = 9;
LABEL_16:
    *a1 = v18;
    *(a1 + 8) = v20;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v13;
    *(a1 + 40) = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45D4010@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {
    goto LABEL_15;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7463656E6E6F43 && v10 == 0xE700000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 1;
    goto LABEL_8;
  }

  if (v8 == 0x656E6E6F63736944 && v10 == 0xEA00000000007463)
  {
  }

  else
  {
    v23 = sub_1C4F02938();

    if ((v23 & 1) == 0)
    {
LABEL_15:

      v18 = 0;
      v20 = 0;
      v13 = 0;
      v21 = -1;
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_8:
  if (v3[2] >= 2uLL)
  {
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v18 = MEMORY[0x1C693FEF0](v14, v15, v16, v17);
    v20 = v19;

    v21 = 10;
LABEL_16:
    *a1 = v18;
    *(a1 + 8) = v20;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v13;
    *(a1 + 40) = v21;
    return result;
  }

  __break(1u);
  return result;
}

double sub_1C45D41E0@<D0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] != 1)
  {

    v11 = 0;
    goto LABEL_10;
  }

  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
  v9 = v8;

  v10 = v7 == 0x64656767756C50 && v9 == 0xE700000000000000;
  if (v10 || (sub_1C4F02938() & 1) != 0)
  {

    v11 = 1;
    goto LABEL_8;
  }

  if (v7 == 0x656767756C706E55 && v9 == 0xE900000000000064)
  {

    v11 = 0;
    goto LABEL_8;
  }

  v15 = sub_1C4F02938();

  v11 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v12 = -1;
    goto LABEL_11;
  }

LABEL_8:
  v12 = 11;
LABEL_11:
  *a1 = v11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_1C45D4370@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] != 3)
  {

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v5 = 0;
    v21 = -1;
LABEL_13:
    *a1 = v17;
    *(a1 + 8) = v18;
    *(a1 + 16) = v19;
    *(a1 + 24) = v20;
    *(a1 + 32) = v5;
    *(a1 + 40) = v21;
    return result;
  }

  sub_1C45D4DA4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F02058();

  v4 = *(v3 + 16);
  if (v4)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v4, 0);
    v5 = v33;
    v6 = (v3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = MEMORY[0x1C693FEF0](v7, v8, v9, v10);
      v13 = v12;

      v15 = *(v33 + 16);
      v14 = *(v33 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C44CD9C0(v14 > 1, v15 + 1, 1);
      }

      *(v33 + 16) = v15 + 1;
      v16 = v33 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v2[2])
  {
    v23 = v2[4];
    v24 = v2[5];
    v25 = v2[6];
    v26 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = MEMORY[0x1C693FEF0](v23, v24, v25, v26);
    v18 = v27;

    if (v2[2] >= 2uLL)
    {
      v28 = v2[8];
      v29 = v2[9];
      v30 = v2[10];
      v31 = v2[11];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v19 = MEMORY[0x1C693FEF0](v28, v29, v30, v31);
      v20 = v32;

      v21 = 12;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45D45DC@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] == 1)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
    v9 = v8;

    v11 = 13;
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v11 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = v11;
  return result;
}

uint64_t sub_1C45D46B8@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 3)
  {
    goto LABEL_18;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7265746E45 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 0x100000000;
  }

  else
  {
    if (v8 == 1953069125 && v10 == 0xE400000000000000)
    {
    }

    else
    {
      v24 = sub_1C4F02938();

      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v13 = 0;
  }

  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v17 = v3[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693FEF0](v14, v15, v16, v17);

  result = sub_1C463C3A4();
  if ((result & 0x100000000) != 0)
  {
LABEL_18:

    v21 = 0;
    v22 = 0;
    v25 = 0;
    v26 = -1;
LABEL_21:
    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v25;
    *(a1 + 40) = v26;
    return result;
  }

  if (v3[2] >= 3uLL)
  {
    v18 = result;
    v19 = v3[12];
    v20 = v3[13];
    if ((v20 ^ v19) >> 14)
    {
      v27 = v3[14];
      v28 = v3[15];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v21 = MEMORY[0x1C693FEF0](v19, v20, v27, v28);
      v22 = v29;
    }

    else
    {

      v21 = 0;
      v22 = 0;
    }

    v25 = v18 | v13;
    v26 = 14;
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

double sub_1C45D48FC@<D0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v3, 0);
    v4 = v17;
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v10 = MEMORY[0x1C693FEF0](v6, v7, v8, v9);
      v12 = v11;

      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C44CD9C0(v13 > 1, v14 + 1, 1);
      }

      *(v17 + 16) = v14 + 1;
      v15 = v17 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 15;
  return result;
}

void sub_1C45D4A5C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1C4415EA8();
  v4 = sub_1C4F02058();
  v5 = v4;
  if (v4[2] != 2)
  {
    goto LABEL_22;
  }

  v6 = v4[4];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = MEMORY[0x1C693FEF0](v6, v7, v8, v9);
  v12 = v11;

  v13 = v10 == 0x7265746E45 && v12 == 0xE500000000000000;
  if (v13 || (sub_1C4F02938() & 1) != 0)
  {

    v14 = 1;
  }

  else
  {
    if (v10 == 1953069125 && v12 == 0xE400000000000000)
    {
    }

    else
    {
      v25 = sub_1C4F02938();

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v14 = 0;
  }

  if (v5[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v15 = v5[8];
  v16 = v5[9];
  v18 = v5[10];
  v17 = v5[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (!((v16 ^ v15) >> 14))
  {
LABEL_22:

LABEL_23:
    v21 = 0;
    v14 = 0;
    v23 = -1;
    goto LABEL_24;
  }

  v19 = sub_1C45D538C(v15, v16, v18, v17, 10);
  if ((v20 & 0x100) != 0)
  {
    v19 = sub_1C45D4DF8(v15, v16, v18, v17, 10);
  }

  v21 = v19;
  v22 = v20;

  if (v22)
  {
    goto LABEL_23;
  }

  if (!a1)
  {
    v23 = 18;
    goto LABEL_24;
  }

  if (a1 == 2)
  {
    v23 = 20;
    goto LABEL_24;
  }

  if (a1 != 1)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DDE0);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CE8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a1;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Behavior: geoHashBehavior - Unexpected geohash level: %ld", v29, 0xCu);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

    goto LABEL_23;
  }

  v23 = 19;
LABEL_24:
  *a2 = v21;
  *(a2 + 8) = v14;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = v23;
}

unint64_t sub_1C45D4D4C()
{
  result = qword_1EDDEFFB0;
  if (!qword_1EDDEFFB0)
  {
    sub_1C4EFDAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFFB0);
  }

  return result;
}

unint64_t sub_1C45D4DA4()
{
  result = qword_1EDDF0708;
  if (!qword_1EDDF0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0708);
  }

  return result;
}

unsigned __int8 *sub_1C45D4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  sub_1C45D5468();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4F01438();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C4AA0E70(result, v7);
    v42 = v41;

    v9 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C4F022F8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v24 = v10 - 1;
        if (v10 != 1)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v16 = 0;
            v28 = result + 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (!is_mul_ok(v16, a5))
              {
                goto LABEL_128;
              }

              v31 = v16 * a5;
              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v16 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v20 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (!is_mul_ok(v36, a5))
            {
              goto LABEL_128;
            }

            v39 = v36 * a5;
            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            if (!is_mul_ok(v16, a5))
            {
              goto LABEL_128;
            }

            v21 = v16 * a5;
            v22 = v18 + v19;
            v23 = v21 >= v22;
            v16 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
LABEL_129:

        return v20;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v9) & 0xF;
  v71 = v8;
  v72 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v71;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v69 = v45 * a5;
          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v71 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v52 = v45 * a5;
          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v71 + 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (!is_mul_ok(v45, a5))
        {
          goto LABEL_128;
        }

        v61 = v45 * a5;
        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1C45D538C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1C4F022F8();
  }

  result = sub_1C45D54BC(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1C45D5468()
{
  result = qword_1EDDF0710;
  if (!qword_1EDDF0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0710);
  }

  return result;
}

uint64_t sub_1C45D54BC(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1C4B9AAA8(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = sub_1C4F01388();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1C4B9AAA8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1C4B9AAA8(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = sub_1C4F01388();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t sub_1C45D58F8()
{
  v0 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C45D5A24(v5 - v4);
  sub_1C4403D50(&qword_1EDDEFFB0, MEMORY[0x1E69A94A8]);
  v7 = sub_1C4F02858();
  (*(v2 + 8))(v6, v0);
  MEMORY[0x1C6940010](540686880, 0xE400000000000000);
  v8 = sub_1C45D2400();
  MEMORY[0x1C6940010](v8);

  return v7;
}

uint64_t sub_1C45D5A24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = sub_1C4EFDAB8();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E81EF290 + v3);

  return v5(a1, v6, v4);
}

void sub_1C45D5A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBD3C();
  v14 = v12[16];
  v15 = *(v12 + 17) | (v12[19] << 16);
  v16 = v12[20];
  v17 = *(v12 + 21) | (v12[23] << 16);
  v18 = *(v12 + 3);
  switch(v12[40])
  {
    case 1u:
      if (*(v13 + 40) != 1)
      {
        goto LABEL_67;
      }

      v36 = sub_1C442C48C();
      v40 = *(v39 + 16);
      v41 = *(v39 + 24);
      v43 = v36 == v42 && v38 == v37;
      if (!v43 && (sub_1C440F2B0() & 1) == 0)
      {
        goto LABEL_67;
      }

      if ((v14 & 0xFFFFFFFF000000FFLL | ((*&v15 & 0xFFFFFFLL) << 8) | (v16 << 32) | (v17 << 40)) == v40 && v18 == v41)
      {
        goto LABEL_67;
      }

      goto LABEL_57;
    case 2u:
      if (*(v13 + 40) != 2)
      {
        goto LABEL_67;
      }

      goto LABEL_53;
    case 3u:
    case 5u:
    case 6u:
    case 8u:
    case 0xBu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
      goto LABEL_67;
    case 4u:
      if (*(v13 + 40) != 4)
      {
        goto LABEL_67;
      }

      v21 = sub_1C442C48C();
      goto LABEL_12;
    case 7u:
      if (*(v13 + 40) != 7)
      {
        goto LABEL_67;
      }

      goto LABEL_62;
    case 9u:
      if (*(v13 + 40) != 9)
      {
        goto LABEL_67;
      }

      goto LABEL_62;
    case 0xAu:
      if (*(v13 + 40) != 10)
      {
        goto LABEL_67;
      }

LABEL_62:
      v51 = sub_1C442C48C();
      if (v51 != v54 || v53 != v52)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    case 0xCu:
      if (*(v13 + 40) == 12)
      {
        v24 = sub_1C442C48C();
        v28 = *(v27 + 16);
        v29 = *(v27 + 24);
        v31 = v24 == v30 && v26 == v25;
        if (v31 || (sub_1C440F2B0() & 1) != 0)
        {
          v32 = (v14 & 0xFFFFFFFF000000FFLL | ((*&v15 & 0xFFFFFFLL) << 8) | (v16 << 32) | (v17 << 40)) == v28 && v18 == v29;
          if (v32 || (sub_1C4F02938() & 1) != 0)
          {
            goto LABEL_34;
          }
        }
      }

      goto LABEL_67;
    case 0xDu:
      if (*(v13 + 40) == 13)
      {
        goto LABEL_53;
      }

      goto LABEL_67;
    case 0xEu:
      if (*(v13 + 40) != 14)
      {
        goto LABEL_67;
      }

      v19 = v12[8] | ((*(v12 + 9) | ((*(v12 + 13) | (v12[15] << 16)) << 32)) << 8);
      v20 = v13[1];
      if (!v19 || !v20)
      {
        goto LABEL_67;
      }

      v21 = *v12 | (((*(v12 + 1) | (v12[3] << 16)) & 0xFFFFFF) << 8) | (v12[4] << 32) | ((*(v12 + 5) | (v12[7] << 16)) << 40);
      v22 = *v13;
LABEL_12:
      if (v21 != v22 || v19 != v20)
      {
LABEL_66:
        sub_1C440F2B0();
      }

      goto LABEL_67;
    case 0xFu:
      if (*(v13 + 40) != 15)
      {
        goto LABEL_67;
      }

LABEL_34:
      sub_1C43FE9F0();

      sub_1C47E7154(v33, v34);
      return;
    case 0x10u:
      if (*(v13 + 40) != 16)
      {
        goto LABEL_67;
      }

      goto LABEL_53;
    case 0x11u:
      if (*(v13 + 40) != 17)
      {
        goto LABEL_67;
      }

      goto LABEL_53;
    default:
      if (*(v13 + 40))
      {
        goto LABEL_67;
      }

LABEL_53:
      v45 = sub_1C442C48C();
      if (v45 == v48 && v47 == v46)
      {
LABEL_67:
        sub_1C43FE9F0();
      }

      else
      {
LABEL_57:
        sub_1C43FE9F0();

        sub_1C4F02938();
      }

      return;
  }
}

void sub_1C45D5EBC(uint64_t a1)
{
  v2 = *(v1 + 24);
  switch(*(v1 + 40))
  {
    case 1:
      MEMORY[0x1C69417F0](2);
      sub_1C4F01298();
      goto LABEL_26;
    case 2:
      sub_1C4419130();
      v3 = 3;
      goto LABEL_25;
    case 3:
      MEMORY[0x1C69417F0](4);
      sub_1C4F02B38();
      sub_1C4F02B38();
      goto LABEL_37;
    case 4:
      sub_1C4406718();
      MEMORY[0x1C69417F0](5);
      sub_1C4402120();
      goto LABEL_8;
    case 5:
      MEMORY[0x1C69417F0](6);
      sub_1C4F02B38();
      goto LABEL_37;
    case 6:
      v5 = 7;
      goto LABEL_34;
    case 7:
      sub_1C4419130();
      v6 = 8;
      goto LABEL_32;
    case 8:
      v5 = 9;
      goto LABEL_34;
    case 9:
      sub_1C4419130();
      v6 = 10;
      goto LABEL_32;
    case 0xA:
      sub_1C4419130();
      v6 = 11;
LABEL_32:
      MEMORY[0x1C69417F0](v6);
      sub_1C4402120();
      sub_1C4F01298();
      goto LABEL_37;
    case 0xB:
      v5 = 12;
LABEL_34:
      MEMORY[0x1C69417F0](v5);
      goto LABEL_37;
    case 0xC:
      MEMORY[0x1C69417F0](13);
      sub_1C43FD168();
      sub_1C4F01298();
      sub_1C4F01298();
      goto LABEL_14;
    case 0xD:
      sub_1C4419130();
      v3 = 14;
      goto LABEL_25;
    case 0xE:
      v4 = *(v1 + 8) | ((*(v1 + 9) | ((*(v1 + 13) | (*(v1 + 15) << 16)) << 32)) << 8);
      MEMORY[0x1C69417F0](15);
      if (v4)
      {
        sub_1C4F02B18();
        sub_1C43FD168();
LABEL_8:
        sub_1C4F01298();
      }

      else
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B38();
      goto LABEL_37;
    case 0xF:
      sub_1C4406718();
      MEMORY[0x1C69417F0](16);
      sub_1C4402120();
LABEL_14:
      sub_1C4410198();

      sub_1C49EFD8C();
      return;
    case 0x10:
      sub_1C4419130();
      v3 = 17;
      goto LABEL_25;
    case 0x11:
      sub_1C4419130();
      v3 = 18;
      goto LABEL_25;
    case 0x12:
      sub_1C4406718();
      v8 = 19;
      goto LABEL_36;
    case 0x13:
      sub_1C4406718();
      v8 = 20;
      goto LABEL_36;
    case 0x14:
      sub_1C4406718();
      v8 = 21;
LABEL_36:
      MEMORY[0x1C69417F0](v8);
      MEMORY[0x1C6941830](v2);
LABEL_37:
      sub_1C4F02B18();
      goto LABEL_38;
    case 0x15:
      MEMORY[0x1C69417F0](0);
LABEL_38:
      sub_1C4410198();
      break;
    default:
      sub_1C4419130();
      v3 = 1;
LABEL_25:
      MEMORY[0x1C69417F0](v3);
      sub_1C4402120();
LABEL_26:
      sub_1C4410198();

      sub_1C4F01298();
      break;
  }
}

uint64_t sub_1C45D61E4()
{
  sub_1C4F02AF8();
  sub_1C45D5EBC(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C45D626C()
{
  sub_1C4F02AF8();
  sub_1C45D5EBC(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C45D62A8()
{
  v1 = v0;
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(0xD000000000000017, 0x80000001C4F8C060, v9);
  (*(v4 + 16))(v8, *(v1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v2);
  v10 = sub_1C4EF9BF8();
  v11 = sub_1C43FD168();
  v12(v11);
  v13 = [v9 stringFromDate_];

  v14 = sub_1C4F01138();
  MEMORY[0x1C6940010](540686880, 0xE400000000000000);
  v15 = sub_1C45D58F8();
  MEMORY[0x1C6940010](v15);

  return v14;
}

__n128 sub_1C45D644C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v8 = sub_1C43FD168();
  v9(v8);
  type metadata accessor for BehaviorContext(0);
  v10 = swift_allocObject();
  sub_1C45D689C();
  (*(v6 + 8))(a2, v4);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  result = *(a1 + 25);
  *(v11 + 41) = result;
  *(v11 + 64) = v10;
  return result;
}

void sub_1C45D6588()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = (v8 - v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-v13 - 16];
  v15 = *(v6 + 16);
  v15(&v27[-v13 - 16], *(v3 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4, v12);
  (v15)(v10, *(v1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v16 = sub_1C4EF9C68();
  v17 = *(v6 + 8);
  v17(v10, v4);
  v17(v14, v4);
  if (v16)
  {
    v24 = *(v3 + 32);
    v26 = *(v3 + 16);
    *v27 = v24;
    *&v27[9] = *(v3 + 41);
    v25 = *(v1 + 32);
    v28 = *(v1 + 16);
    *v29 = v25;
    *&v29[9] = *(v1 + 41);
    sub_1C45D5A9C(&v26, &v28, v18, v19, v20, v21, v22, v23, v26, *(&v26 + 1), *v27, *&v27[8]);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C45D670C()
{
  sub_1C45A23B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t sub_1C45D6740()
{
  sub_1C45D670C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45D67E4()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes);
  }

  else
  {
    sub_1C4EFDAB8();
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C4403D50(&qword_1EDDEFFD0, MEMORY[0x1E69A9488]);
    v2 = sub_1C4F00F28();
    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C45D689C()
{
  sub_1C43FBD3C();
  v81 = v1;
  v3 = v2;
  v5 = v4;
  v95 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v88 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v94 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v77 - v11;
  v12 = sub_1C456902C(&qword_1EC0B9A50, &unk_1C4F10BB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v77 - v17;
  v18 = *v3;
  v19 = *(v3 + 8);
  v20 = *(v3 + 9);
  v21 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState;
  *v21 = 0;
  *(v21 + 8) = 256;
  v22 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_cachedContextIntervals;
  sub_1C456902C(&qword_1EC0B9A58, &unk_1C4F10E60);
  sub_1C45A2528();
  *(v0 + v22) = sub_1C4F00F28();
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes) = 0;
  v23 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  v24 = sub_1C4EF9CD8();
  v77 = *(v24 - 8);
  v78 = v24;
  v25 = *(v77 + 16);
  v93 = v0;
  v79 = v5;
  v25(v0 + v23, v5);
  if ((v20 & 1) == 0)
  {
    v26 = v93 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState;
    *v26 = v18;
    *(v26 + 8) = v19;
    *(v26 + 9) = 0;
  }

  if (!v81)
  {
    (*(v77 + 8))(v79, v78);
LABEL_27:
    sub_1C43FE9F0();
    return;
  }

  v27 = 0;
  v29 = v81 + 64;
  v28 = *(v81 + 64);
  v30 = 1 << *(v81 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v28;
  v83 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes;
  v84 = v81 + 64;
  v33 = (v30 + 63) >> 6;
  v87 = v88 + 16;
  v89 = (v88 + 32);
  v85 = (v88 + 8);
  v96 = v15;
  v82 = v33;
  if ((v31 & v28) != 0)
  {
    while (1)
    {
      v34 = v27;
LABEL_12:
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v36 = v35 | (v34 << 6);
      v38 = v80;
      v37 = v81;
      v39 = v88;
      v40 = v95;
      (*(v88 + 16))(v80, *(v81 + 48) + *(v88 + 72) * v36, v95);
      v41 = *(v37 + 56) + 48 * v36;
      v42 = *v41;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      v90 = *(v41 + 24);
      v91 = v44;
      v45 = *(v41 + 32);
      v92 = *(v41 + 40);
      v46 = sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20);
      v47 = v96 + *(v46 + 48);
      (*(v39 + 32))(v96, v38, v40);
      *v47 = v42;
      *(v47 + 8) = v43;
      v49 = v90;
      v48 = v91;
      *(v47 + 16) = v91;
      *(v47 + 24) = v49;
      *(v47 + 32) = v45;
      LOBYTE(v38) = v92;
      *(v47 + 40) = v92;
      v15 = v96;
      sub_1C440BAA8(v96, 0, 1, v46);
      sub_1C45D7F64(v42, v43, v48, v49, v45, v38);
LABEL_13:
      v50 = v86;
      sub_1C45D8084(v15, v86);
      v51 = sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20);
      if (sub_1C44157D4(v50, 1, v51) == 1)
      {
        break;
      }

      v52 = v50 + *(v51 + 48);
      v53 = *(v52 + 32);
      v90 = *(v52 + 24);
      v91 = v53;
      v92 = *(v52 + 40);
      (*v89)(v94, v50, v95);
      v54 = sub_1C45D67E4();
      swift_isUniquelyReferenced_nonNull_native();
      v97 = v54;
      sub_1C457AD28();
      if (__OFADD__(*(v54 + 16), (v56 & 1) == 0))
      {
        goto LABEL_29;
      }

      v57 = v55;
      v58 = v56;
      sub_1C456902C(&qword_1EC0B9A48, &unk_1C4F10BA0);
      if (sub_1C4F02458())
      {
        sub_1C457AD28();
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_31;
        }

        v57 = v59;
      }

      v61 = v97;
      if (v58)
      {
        sub_1C4431F38((v97[7] + 48 * v57));
        v63 = *(v62 + 40);
        *(v62 + 40) = v92;
        sub_1C45D8070(v64, v65, v66, v67, v68, v63);
        (*v85)(v94, v95);
      }

      else
      {
        v97[(v57 >> 6) + 8] |= 1 << v57;
        v69 = v88;
        v71 = v94;
        v70 = v95;
        (*(v88 + 16))(v61[6] + *(v88 + 72) * v57, v94, v95);
        sub_1C4431F38((v61[7] + 48 * v57));
        *(v72 + 40) = v92;
        (*(v69 + 8))(v71, v70);
        v73 = v61[2];
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_30;
        }

        v61[2] = v75;
      }

      *(v93 + v83) = v61;

      v15 = v96;
      v29 = v84;
      v33 = v82;
      if (!v32)
      {
        goto LABEL_8;
      }
    }

    (*(v77 + 8))(v79, v78);

    goto LABEL_27;
  }

LABEL_8:
  while (1)
  {
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v34 >= v33)
    {
      v76 = sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20);
      sub_1C440BAA8(v15, 1, 1, v76);
      v32 = 0;
      goto LABEL_13;
    }

    v32 = *(v29 + 8 * v34);
    ++v27;
    if (v32)
    {
      v27 = v34;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C45D6F00(uint64_t a1, uint64_t a2)
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v32 = v4;
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v30 = v6 - v5;
  v7 = sub_1C4428DA0(a2);
  v8 = 0;
  v9 = a2 & 0xC000000000000001;
  v37 = MEMORY[0x1E69E7CC0];
  while (v7 != v8)
  {
    if (v9)
    {
      v10 = MEMORY[0x1C6940F90](v8, a2);
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v12 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState);
    v13 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState + 8);
    v14 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState + 9);

    ++v8;
    if ((v14 & 1) == 0)
    {
      v15 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458AF6C();
        v15 = v19;
      }

      v16 = *(v15 + 16);
      v17 = v16 + 1;
      if (v16 >= *(v15 + 24) >> 1)
      {
        sub_1C458AF6C();
        v17 = v16 + 1;
        v15 = v20;
      }

      *(v15 + 16) = v17;
      v37 = v15;
      v18 = v15 + 16 * v16;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13 & 1;
      v8 = v11;
    }
  }

  v21 = *(v37 + 16);
  if (v21 <= 1)
  {
    if (v21)
    {
      v23 = *(v37 + 32);
      v24 = *(v37 + 40);
    }

    else
    {
      v23 = 0;
      v24 = 1;
    }

    v29 = v24;

    v25 = 0;
    v26 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v7 == v25)
      {

        (*(v32 + 16))(v30, a1, v33);
        v35 = v23;
        v36 = v29;
        swift_allocObject();
        sub_1C45D689C();
        (*(v32 + 8))(a1, v33);
        return;
      }

      sub_1C4431590(v25, v9 == 0, a2);
      if (v9)
      {
        MEMORY[0x1C6940F90](v25, a2);
      }

      else
      {
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_31;
      }

      v27 = sub_1C45D67E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v26;
      sub_1C45D7AAC(v27, sub_1C45D7A04, 0, isUniquelyReferenced_nonNull_native, &v35);
      if (v31)
      {
        break;
      }

      v26 = v35;
      ++v25;
    }

    (*(v32 + 8))(a1, v33);
  }

  else
  {

    sub_1C45D801C();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    (*(v32 + 8))(a1, v33);
  }
}

uint64_t sub_1C45D72D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1C45D67E4();
  if (*(v8 + 16) && (sub_1C457AD28(), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 48 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v18 = sub_1C43FFDB8();
    sub_1C45D7F64(v18, v19, v20, v21, v22, v23);
  }

  else
  {

    v24 = a2[3];
    v25 = a2[4];
    sub_1C4409678(a2, v24);
    v26 = (*(v25 + 16))(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, a1, v24, v25);
    if (v26)
    {
      v12 = *(v26 + 16);
      v13 = *(v26 + 24);
      v14 = *(v26 + 32);
      v15 = *(v26 + 40);
      v16 = *(v26 + 48);
      v17 = *(v26 + 56);
      v27 = sub_1C43FFDB8();
      sub_1C45D7F78(v27, v28, v29, v30, v31, v32);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = -1;
    }

    v33 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes;
    v34 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes);
    v35 = sub_1C43FFDB8();
    sub_1C45D7F64(v35, v36, v37, v38, v39, v40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660870();
    *(v4 + v33) = v34;
  }

  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  return result;
}

void sub_1C45D7464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &a9 - v29;
  v31 = (v23 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState);
  if (*(v23 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState + 9))
  {
    v32 = v25[3];
    v33 = v25[4];
    sub_1C4409678(v25, v32);
    v34 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
    sub_1C4EF9BE8();
    v35 = sub_1C4EF9CD8();
    sub_1C440BAA8(v30, 0, 1, v35);
    v36 = (*(v33 + 40))(v30, v23 + v34, 0, 1, v32, v33);
    sub_1C44686E4(v30);
    v37 = sub_1C4428DA0(v36);
    v38 = v37 == 0;
    if (v37)
    {
      sub_1C4431590(0, (v36 & 0xC000000000000001) == 0, v36);
      if ((v36 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1C6940F90](0, v36);

        v40 = *(v41 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = *(v36 + 32);

        v40 = *(v39 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
      }
    }

    else
    {

      v40 = 0;
    }

    *v31 = v40;
    *(v31 + 8) = v37 == 0;
    *(v31 + 9) = 0;
  }

  else
  {
    v40 = *v31;
    v38 = *(v31 + 8);
  }

  *v27 = v40;
  *(v27 + 8) = v38 & 1;
  sub_1C43FE9F0();
}

uint64_t sub_1C45D7654(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_cachedContextIntervals;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_1C457ADD8(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

uint64_t sub_1C45D76DC()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  v2 = sub_1C4EF9CD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C45D775C()
{
  sub_1C45D76DC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorContext(uint64_t a1)
{
  result = qword_1EDDF68C0;
  if (!qword_1EDDF68C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45D7808(uint64_t a1)
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

uint64_t sub_1C45D78B8(uint64_t a1)
{
  if ((*(a1 + 40) & 0x1Fu) <= 0x14)
  {
    return *(a1 + 40) & 0x1F;
  }

  else
  {
    return (*a1 + 21);
  }
}

__n128 sub_1C45D78D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C45D78E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEB && *(a1 + 41))
    {
      v2 = *a1 + 234;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 0x15)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C45D7928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 235;
    if (a3 >= 0xEB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C45D7978(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x15)
  {
    *result = a2 - 21;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 21;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1C45D79B0()
{
  result = qword_1EDDFA608;
  if (!qword_1EDDFA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA608);
  }

  return result;
}

double sub_1C45D7A04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20) + 48));
  v5 = a2 + *(sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90) + 48);
  v6 = v4[1];
  v14 = *v4;
  v15[0] = v6;
  *(v15 + 9) = *(v4 + 25);
  sub_1C46C3744(a2, a1, &v14, v11);
  v7 = v12;
  v8 = v13;
  result = *v11;
  v10 = v11[1];
  *v5 = v11[0];
  *(v5 + 16) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  return result;
}

void sub_1C45D7AAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v49 = a5;
  v8 = sub_1C4EFDAB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0B9A40, &qword_1C4F10B98);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v42 - v12;
  sub_1C46C3CC4();
  v42[3] = v53;
  v43 = v9;
  v48 = (v9 + 32);
  v42[2] = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v42[1] = a3;

  v44 = v8;
  while (1)
  {
    sub_1C45E709C(v13);
    v14 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
    if (sub_1C44157D4(v13, 1, v14) == 1)
    {
      sub_1C449BB0C();

      return;
    }

    v15 = &v13[*(v14 + 48)];
    v16 = *v48;
    v17 = v13;
    (*v48)(v50, v13, v8);
    v19 = *v15;
    v18 = *(v15 + 1);
    v20 = *(v15 + 2);
    v21 = *(v15 + 4);
    v45 = *(v15 + 3);
    v46 = v21;
    v47 = v15[40];
    v22 = *v49;
    sub_1C457AD28();
    v25 = v24;
    v26 = v22[2];
    v27 = (v23 & 1) == 0;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_20;
    }

    v28 = v23;
    if (v22[3] < v26 + v27)
    {
      break;
    }

    if (a4)
    {
      if (v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9A48, &unk_1C4F10BA0);
      sub_1C4F02468();
      if (v28)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v31 = v50;
    v32 = *v49;
    *(*v49 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v8 = v44;
    v16((v32[6] + *(v43 + 72) * v25), v31, v44);
    v33 = v32[7] + 48 * v25;
    *v33 = v19;
    *(v33 + 8) = v18;
    v35 = v45;
    v34 = v46;
    *(v33 + 16) = v20;
    *(v33 + 24) = v35;
    *(v33 + 32) = v34;
    *(v33 + 40) = v47;
    v36 = v32[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_18;
    }

    v32[2] = v38;
    a4 = 1;
    v13 = v17;
  }

  sub_1C4679760();
  sub_1C457AD28();
  if ((v28 & 1) != (v30 & 1))
  {
    goto LABEL_19;
  }

  v25 = v29;
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  sub_1C45D801C();
  v39 = swift_allocError();
  *v40 = 0;
  swift_willThrow();

  v54 = v39;
  v41 = v39;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C45D8070(v19, v18, v20, v45, v46, v47);
    (*(v43 + 8))(v50, v44);
    sub_1C449BB0C();

    return;
  }

LABEL_20:
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

uint64_t sub_1C45D7F64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1C45D7F78(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1C45D7F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 2:
    case 4:
    case 7:
    case 9:
    case 10:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      goto LABEL_2;
    case 1:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      goto LABEL_2;
    case 12:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_2:

      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C45D801C()
{
  result = qword_1EC0B9A28;
  if (!qword_1EC0B9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9A28);
  }

  return result;
}

uint64_t sub_1C45D8070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1C45A23B4(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1C45D8084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9A50, &unk_1C4F10BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for BehaviorContextError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45D81D4()
{
  result = qword_1EC0B9A60;
  if (!qword_1EC0B9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9A60);
  }

  return result;
}

uint64_t sub_1C45D8228()
{
  sub_1C4406748();
  result = sub_1C44BAADC();
  if (v0)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DDE0);

    v4 = v0;
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CD8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = sub_1C4408660();
      v16 = sub_1C43FFD34();
      *v7 = 136315394;
      v9 = sub_1C4404BB0();
      v12 = sub_1C441D828(v9, v10, v11);
      sub_1C43FD174(v12);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v13;
      *v8 = v13;
      sub_1C4416D88(&dword_1C43F8000, v14, v15, "BehaviorCountLimiter: Unable to retrieve count for %s: %@");
      sub_1C45B4B90(v8);
      sub_1C43FBE2C();
      sub_1C440962C(v16);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    return 0;
  }

  else if (v2)
  {
    return 0;
  }

  return result;
}

void sub_1C45D83AC()
{
  sub_1C4406748();
  sub_1C448B80C();
  if (v0)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDE2DDE0);

    v2 = v0;
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = sub_1C4408660();
      v14 = sub_1C43FFD34();
      *v5 = 136315394;
      v7 = sub_1C4404BB0();
      v10 = sub_1C441D828(v7, v8, v9);
      sub_1C43FD174(v10);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 14) = v11;
      *v6 = v11;
      sub_1C4416D88(&dword_1C43F8000, v12, v13, "BehaviorCountLimiter: Unable to write count for %s: %@");
      sub_1C45B4B90(v6);
      sub_1C43FBE2C();
      sub_1C440962C(v14);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }
}

void *sub_1C45D8548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  *(v6 + 48) = 0;
  sub_1C44098F0(a1, v13 - v12);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v15 = KeyValueStore.init(config:domain:)(v14, 0xD000000000000014, 0x80000001C4F10C80);
  if (v5)
  {

    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v15;
    sub_1C4467948(a1);
    *(v6 + 32) = a3;
    *(v6 + 40) = v16;
    *(v6 + 16) = a4;
    *(v6 + 24) = a2;
  }

  return v6;
}

uint64_t sub_1C45D86A0()
{
  if ((*(v0 + 48) & 1) != 0 || sub_1C45D8228() >= *(v0 + 16))
  {
    result = 1;
    *(v0 + 48) = 1;
  }

  else
  {
    v1 = sub_1C45D8228();
    v2 = __OFADD__(v1, 1);
    result = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_1C45D83AC();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45D871C()
{
  sub_1C45C5E78();

  return swift_deallocClassInstance();
}

void sub_1C45D87C0()
{
  sub_1C4406748();
  sub_1C44BAADC();
  if (v0)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDE2DDE0);

    v2 = v0;
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_1C43FFD34();
      v6 = sub_1C4408660();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v5 = 136315650;
      sub_1C4EFDAB8();
      sub_1C442C4A4(&qword_1EDDEFFB0);
      v7 = sub_1C4F02858();
      v9 = sub_1C441D828(v7, v8, &v27);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v10 = sub_1C4404BB0();
      v13 = sub_1C441D828(v10, v11, v12);
      sub_1C4431F4C(v13);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 24) = v14;
      *v6 = v14;
      sub_1C440DE84(&dword_1C43F8000, v15, v16, "BehaviorTypeCountLimiter: Unable to retrieve count for %s and %s: %@");
      sub_1C45B4B90(v6);
      sub_1C43FBE2C();
      sub_1C4402C14(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  sub_1C43FBF50();
}

void sub_1C45D89A8()
{
  sub_1C4406748();
  sub_1C448B80C();
  if (!v0)
  {
    goto LABEL_6;
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DDE0);

  v2 = v0;
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CD8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_1C43FFD34();
    v6 = sub_1C4408660();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v5 = 136315650;
    sub_1C4EFDAB8();
    sub_1C442C4A4(&qword_1EDDEFFB0);
    v7 = sub_1C4F02858();
    v9 = sub_1C441D828(v7, v8, &v29);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = sub_1C4404BB0();
    v13 = sub_1C441D828(v10, v11, v12);
    sub_1C4431F4C(v13);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v14;
    *v6 = v14;
    sub_1C440DE84(&dword_1C43F8000, v15, v16, "BehaviorTypeCountLimiter: Unable to write count for %s and %s: %@");
    sub_1C45B4B90(v6);
    sub_1C43FBE2C();
    sub_1C4402C14(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

LABEL_6:
    sub_1C43FBF50();
    return;
  }

  sub_1C43FBF50();
}

uint64_t *sub_1C45D8BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_reachedMaximum) = 0;
  sub_1C44098F0(a1, v12 - v11);
  sub_1C4F02248();

  v14 = sub_1C4EFDA48();
  MEMORY[0x1C6940010](v14);

  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v15 = KeyValueStore.init(config:domain:)(v13, 0xD000000000000019, 0x80000001C4F8C170);
  if (v6)
  {

    sub_1C4EFDAB8();
    sub_1C43FBCE0();
    (*(v16 + 8))(a4);
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v15;
    sub_1C4467948(a1);
    *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_kvStore) = v17;
    v18 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_uuid);
    *v18 = a2;
    v18[1] = a3;
    v19 = OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_type;
    sub_1C4EFDAB8();
    sub_1C43FBCE0();
    (*(v20 + 32))(v5 + v19, a4);
    *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_maximumBehaviors) = a5;
  }

  return v5;
}

uint64_t sub_1C45D8E08()
{
  v1 = sub_1C4EFDAB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  sub_1C45D5A24(v4 - v3);
  sub_1C4403D50(&qword_1EDDEFFB8, MEMORY[0x1E69A9498]);
  sub_1C4F01578();
  sub_1C4F01578();
  (*(v2 + 8))(v5, v1);
  if (v12 != v11)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_reachedMaximum;
  if ((*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_reachedMaximum) & 1) != 0 || (sub_1C45D87C0(), v7 >= *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_maximumBehaviors)))
  {
    result = 1;
    *(v0 + v6) = 1;
  }

  else
  {
    sub_1C45D87C0();
    v9 = __OFADD__(v8, 1);
    result = v8 + 1;
    if (!v9)
    {
      sub_1C45D89A8();
      return 0;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C45D8FE8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_type;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1C45D9064()
{
  sub_1C45D8FE8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorTypeCountLimiter(uint64_t a1)
{
  result = qword_1EC0B9A90;
  if (!qword_1EC0B9A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45D9110(uint64_t a1)
{
  result = sub_1C4EFDAB8();
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

uint64_t sub_1C45D921C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v8 = (a3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v10 = v8[1];
      v33[0] = *v8;
      v33[1] = v10;
      v11 = v8[3];
      v13 = *v8;
      v12 = v8[1];
      v33[2] = v8[2];
      v33[3] = v11;
      v29 = v13;
      v30 = v12;
      v14 = v8[3];
      v31 = v8[2];
      v32 = v14;
      sub_1C4571BB0(v33, &v23);
      sub_1C441C09C();
      v15 = a1();
      if (v3)
      {
        sub_1C4409A40(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      }

      sub_1C4409A40(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      if (!i)
      {
        break;
      }

      v8 += 4;
    }

    return v34;
  }

  return result;
}

uint64_t sub_1C45D9340(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v2, 0);
    v6 = sub_1C4703354();
    result = v32;
    v7 = 0;
    v8 = a1 + 64;
    v28 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(a1 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v4)
        {
          goto LABEL_24;
        }

        v29 = v5;
        v30 = v7;
        v31 = v4;
        v10 = (*(a1 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = result;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](v11, v12);

        result = v13;
        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C44CD9C0(v14 > 1, v15 + 1, 1);
          result = v13;
        }

        *(result + 16) = v15 + 1;
        v16 = result + 16 * v15;
        *(v16 + 32) = 58;
        *(v16 + 40) = 0xE100000000000000;
        v17 = 1 << *(a1 + 32);
        if (v6 >= v17)
        {
          goto LABEL_25;
        }

        v8 = a1 + 64;
        v18 = *(a1 + 64 + 8 * v9);
        if ((v18 & (1 << v6)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v31)
        {
          goto LABEL_27;
        }

        v19 = v18 & (-2 << (v6 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v20 = v28;
        }

        else
        {
          v21 = v9 << 6;
          v22 = v9 + 1;
          v20 = v28;
          v23 = (a1 + 72 + 8 * v9);
          while (v22 < (v17 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              v26 = result;
              sub_1C440951C(v6, v31, v29 & 1);
              result = v26;
              v17 = __clz(__rbit64(v24)) + v21;
              goto LABEL_18;
            }
          }

          v27 = result;
          sub_1C440951C(v6, v31, v29 & 1);
          result = v27;
        }

LABEL_18:
        v7 = v30 + 1;
        if (v30 + 1 == v20)
        {
          return result;
        }

        v5 = 0;
        v4 = *(a1 + 36);
        v6 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C45D95B4(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = a3;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1C459D238(0, v5, 0);
    v9 = sub_1C486C288();
    result = v52;
    v11 = v10;
    v12 = 0;
    v13 = v7 + 56;
    v40 = v7 + 64;
    v41 = v5;
    v42 = v7 + 56;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v7 + 32))
      {
        v14 = v9 >> 6;
        v15 = 1 << v9;
        if ((*(v13 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v7 + 36) != v8)
        {
          goto LABEL_26;
        }

        v44 = v12;
        v45 = v8;
        v16 = result;
        v17 = v7;
        v18 = (*(v7 + 48) + 16 * v9);
        v19 = v18[1];
        v46 = v9;
        v47[0] = *v18;
        v47[1] = v19;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        a1(&v48, v47);
        if (v4)
        {
          goto LABEL_30;
        }

        v4 = 0;

        v20 = v48;
        v21 = v49;
        v22 = v50;
        v23 = v51;
        result = v16;
        v52 = v16;
        v24 = *(v16 + 16);
        v25 = *(result + 24);
        if (v24 >= v25 >> 1)
        {
          v38 = v49;
          v39 = v48;
          v37 = v50;
          sub_1C459D238(v25 > 1, v24 + 1, 1);
          v22 = v37;
          v21 = v38;
          v20 = v39;
          result = v52;
        }

        *(result + 16) = v24 + 1;
        v26 = result + 48 * v24;
        *(v26 + 32) = v20;
        *(v26 + 48) = v21;
        *(v26 + 64) = v22;
        *(v26 + 72) = v23;
        if (v11)
        {
          goto LABEL_31;
        }

        v27 = 1 << *(v17 + 32);
        v13 = v42;
        if (v46 >= v27)
        {
          goto LABEL_27;
        }

        v28 = *(v42 + 8 * v14);
        if ((v28 & v15) == 0)
        {
          goto LABEL_28;
        }

        v7 = v17;
        if (*(v17 + 36) != v45)
        {
          goto LABEL_29;
        }

        v29 = v28 & (-2 << (v46 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v46 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v14 << 6;
          v31 = v14 + 1;
          v32 = (v40 + 8 * v14);
          while (v31 < (v27 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              v35 = result;
              sub_1C440951C(v46, v45, 0);
              result = v35;
              v27 = __clz(__rbit64(v33)) + v30;
              goto LABEL_20;
            }
          }

          v36 = result;
          sub_1C440951C(v46, v45, 0);
          result = v36;
        }

LABEL_20:
        v12 = v44 + 1;
        if (v44 + 1 == v41)
        {
          return result;
        }

        v11 = 0;
        v8 = *(v7 + 36);
        v9 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_1C45D9880()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = type metadata accessor for FeatureValue(0);
  v5 = sub_1C43FCF7C(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C4405820();
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C4F02128())
  {
    if (!i)
    {
LABEL_17:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    v16 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459D3D0();
    if (i < 0)
    {
      break;
    }

    v7 = 0;
    v15 = i;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6940F90](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = v9;
      sub_1C441C7E0();
      v11();
      if (v0)
      {

        goto LABEL_17;
      }

      v12 = *(v16 + 16);
      if (v12 >= *(v16 + 24) >> 1)
      {
        sub_1C459D3D0();
      }

      *(v16 + 16) = v12 + 1;
      sub_1C43FBF6C();
      sub_1C44DD748(v1, v16 + v13 + *(v14 + 72) * v12, type metadata accessor for FeatureValue);
      ++v7;
      if (v8 == v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
}

void sub_1C45D9A84()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = HIWORD(v1);
  v17 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = (v3 - v2);
  if (v3 < v2)
  {
    v9 = -(v2 - HIWORD(v2));
  }

  else
  {
    v9 = (v3 - v2);
  }

  if (v9)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459D270();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = v2;
      while (v9)
      {
        v11 = v7;
        sub_1C441C7E0();
        v12();
        if (v0)
        {
          goto LABEL_19;
        }

        v13 = *(v18 + 16);
        if (v13 >= *(v18 + 24) >> 1)
        {
          sub_1C459D270();
        }

        *(v18 + 16) = v13 + 1;
        sub_1C43FBF6C();
        v16 = v18 + v14 + *(v15 + 72) * v13;
        v7 = v11;
        (*(v15 + 32))(v16, v11, v17);
        if (v3 < v2)
        {
          goto LABEL_16;
        }

        if (v10 >= HIWORD(v2))
        {
          goto LABEL_17;
        }

        ++v10;
        --v9;
        if (!--v8)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

void sub_1C45D9C64()
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v30 = v2;
  v3 = type metadata accessor for TimeBasedBehaviorSample(0);
  v4 = sub_1C43FCF7C(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = *(v1 + 16);
  if (v8)
  {
    v33 = v0;
    v36 = MEMORY[0x1E69E7CC0];
    v31 = v7;
    sub_1C4402C34();
    sub_1C459D6A0();
    v9 = (v1 + 72);
    while (1)
    {
      v32 = v8;
      v10 = *(v9 - 4);
      v11 = *(v9 - 3);
      v12 = *(v9 - 2);
      v13 = *(v9 - 1);
      v14 = *v9;
      v34[0] = *(v9 - 5);
      v34[1] = v10;
      v34[2] = v11;
      v34[3] = v12;
      v34[4] = v13;
      LOBYTE(v35) = v14;
      v15 = sub_1C43FBF7C();
      sub_1C45D7F78(v15, v16, v17, v18, v19, v20);
      v30(v34);
      v21 = sub_1C43FBF7C();
      if (v33)
      {
        break;
      }

      sub_1C45A23B4(v21, v22, v23, v24, v25, v26);
      v27 = *(v36 + 16);
      if (v27 >= *(v36 + 24) >> 1)
      {
        sub_1C459D6A0();
      }

      v9 += 48;
      *(v36 + 16) = v27 + 1;
      sub_1C43FBF6C();
      sub_1C44DD748(v31, v36 + v28 + *(v29 + 72) * v27, type metadata accessor for TimeBasedBehaviorSample);
      v8 = v32 - 1;
      if (v32 == 1)
      {
        goto LABEL_7;
      }
    }

    sub_1C45A23B4(v21, v22, v23, v24, v25, v26);

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

void sub_1C45D9E24()
{
  sub_1C43FE96C();
  sub_1C4426A0C(v3, v4);
  v14 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C4405820();
  v8 = *(v1 + 16);
  if (v8)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459DAA8();
    v9 = v1 + 40;
    while (1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441C7E0();
      v10();
      if (v0)
      {
        break;
      }

      v11 = *(v15 + 16);
      if (v11 >= *(v15 + 24) >> 1)
      {
        sub_1C44148DC();
        sub_1C459DAA8();
      }

      *(v15 + 16) = v11 + 1;
      sub_1C440DEA4();
      (*(v6 + 32))(v12 + v13 * v11, v2, v14);
      v9 += 16;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

void sub_1C45D9F98()
{
  sub_1C43FE96C();
  v5 = v0;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4;
    v8 = v3;
    v20 = MEMORY[0x1E69E7CC0];
    v9 = sub_1C4402C34();
    sub_1C459DBD8(v9, v6, 0);
    v10 = v20;
    v11 = (v7 + 32);
    while (1)
    {
      memcpy(v19, v11, 0x92uLL);
      memcpy(__dst, v11, 0x92uLL);
      sub_1C45E8CE0(v19, v15);
      v8(__src, __dst, &v16);
      if (v5)
      {
        break;
      }

      v5 = 0;
      memcpy(v14, __dst, 0x92uLL);
      sub_1C45E8D3C(v14);
      memcpy(v15, __src, 0x92uLL);
      sub_1C443FA78();
      if (v13)
      {
        sub_1C459DBD8((v12 > 1), v1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v1;
      memcpy((v10 + 152 * v2 + 32), v15, 0x92uLL);
      v11 += 152;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    memcpy(v15, __dst, 0x92uLL);
    sub_1C45E8D3C(v15);
  }

LABEL_9:
  sub_1C43FBC80();
}

void sub_1C45DA100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v14 = type metadata accessor for EntityTriple(0);
  v15 = sub_1C43FCF7C(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C459DCC0();
    v16 = a10;
    v17 = (v13 + 40);
    while (1)
    {
      v18 = *v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441C7E0();
      v23(v19, v20, v21, v22);
      if (v10)
      {
        break;
      }

      sub_1C43FD194();
      if (v24)
      {
        sub_1C44109A4();
        sub_1C459DCC0();
        v16 = a10;
      }

      *(v16 + 16) = v18;
      sub_1C442C4C8();
      sub_1C44DD748(v11, v25, type metadata accessor for EntityTriple);
      v17 += 2;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

void sub_1C45DA250()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v16 = v6;
  v15 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C4405820();
  v8 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v8)
  {
LABEL_13:
    sub_1C4431F6C();
    sub_1C43FBC80();
    return;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1C4402C34();
  sub_1C459D270();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (v9 < v8)
    {
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v17 = v9 + 1;
      v18 = v5 + v9;
      v10 = v1;
      v16(&v18);
      if (v0)
      {
        goto LABEL_20;
      }

      v11 = *(v19 + 16);
      if (v11 >= *(v19 + 24) >> 1)
      {
        sub_1C4404BBC();
        sub_1C459D270();
      }

      *(v19 + 16) = v11 + 1;
      sub_1C43FBF6C();
      v14 = v19 + v12 + *(v13 + 72) * v11;
      v1 = v10;
      (*(v13 + 32))(v14, v10, v15);
      if (v3 < v5)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((v5 + v9 - 1) >= v3)
      {
        goto LABEL_17;
      }

      if (v17 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t sub_1C45DA434(void (*a1)(void *__return_ptr, _BYTE *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v11 = sub_1C4402C34();
    sub_1C459DFA8(v11, v7, 0);
    v8 = v22;
    for (i = (a3 + 32); ; i += 72)
    {
      memcpy(__dst, i, 0x48uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1C45E8ABC(__dst, v17);
      a1(v20, __src, &v18);
      if (v6)
      {
        break;
      }

      v6 = 0;
      memcpy(v16, __src, sizeof(v16));
      sub_1C45E8B18(v16);
      memcpy(v17, v20, sizeof(v17));
      sub_1C443FA78();
      if (v14)
      {
        sub_1C459DFA8((v13 > 1), v4, 1);
        v8 = v22;
      }

      *(v8 + 16) = v4;
      memcpy((v8 + 80 * v5 + 32), v17, 0x50uLL);
      if (!--v7)
      {
        return v8;
      }
    }

    memcpy(v17, __src, 0x48uLL);
    sub_1C45E8B18(v17);
  }

  return v8;
}

uint64_t sub_1C45DA5AC(void (*a1)(__int128 *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1C459E170(0, v3, 0);
    v4 = v52;
    v6 = (a3 + 72);
    while (1)
    {
      v42 = v3;
      v7 = *(v6 - 4);
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v45[0] = *(v6 - 5);
      v45[1] = v7;
      v45[2] = v9;
      v45[3] = v8;
      v45[4] = v10;
      v46 = v11;
      v12 = sub_1C4412C98();
      sub_1C45D7F78(v12, v13, v14, v15, v16, v17);
      a1(&v47, v45, &v44);
      if (v43)
      {
        break;
      }

      v43 = 0;
      v18 = sub_1C4412C98();
      sub_1C45A23B4(v18, v19, v20, v21, v22, v23);
      v24 = v47;
      v25 = v48;
      v26 = v49;
      v27 = v50;
      v28 = v51;
      v52 = v4;
      v30 = *(v4 + 16);
      v29 = *(v4 + 24);
      if (v30 >= v29 >> 1)
      {
        v39 = v48;
        v40 = v47;
        sub_1C459E170(v29 > 1, v30 + 1, 1);
        v25 = v39;
        v24 = v40;
        v4 = v52;
      }

      v6 += 48;
      *(v4 + 16) = v30 + 1;
      v31 = v4 + 56 * v30;
      *(v31 + 32) = v24;
      *(v31 + 48) = v25;
      *(v31 + 64) = v26;
      *(v31 + 72) = v27;
      *(v31 + 80) = v28;
      v3 = v42 - 1;
      if (v42 == 1)
      {
        return v4;
      }
    }

    v32 = sub_1C4412C98();
    sub_1C45A23B4(v32, v33, v34, v35, v36, v37);
  }

  return v4;
}

void sub_1C45DA728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v22 = v14;
  v15 = sub_1C456902C(&qword_1EC0B8BB8, &unk_1C4F10E70);
  sub_1C43FCF7C(v15);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C459E1D0();
    v17 = a10;
    v18 = (v13 + 32);
    while (1)
    {
      v19 = *v18++;
      v23 = v19;
      v22(&v23);
      if (v10)
      {
        break;
      }

      v10 = 0;
      sub_1C43FD194();
      if (v20)
      {
        sub_1C44109A4();
        sub_1C459E1D0();
        v17 = a10;
      }

      *(v17 + 16) = v13;
      sub_1C442C4C8();
      sub_1C44CD9E0(v11, v21, &qword_1EC0B8BB8, &unk_1C4F10E70);
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

void sub_1C45DA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v14 = sub_1C456902C(&qword_1EC0B8BC0, &unk_1C4F0DFF0);
  sub_1C43FCF7C(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C459E290();
    v16 = a10;
    v17 = (v13 + 40);
    while (1)
    {
      v18 = *v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441C7E0();
      v23(v19, v20, v21, v22);
      if (v10)
      {
        break;
      }

      sub_1C43FD194();
      if (v24)
      {
        sub_1C44109A4();
        sub_1C459E290();
        v16 = a10;
      }

      *(v16 + 16) = v18;
      sub_1C442C4C8();
      sub_1C44CD9E0(v11, v25, &qword_1EC0B8BC0, &unk_1C4F0DFF0);
      v17 += 2;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

void sub_1C45DA9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v24;
  v25 = v20;
  v26 = *(v23 + 16);
  if (v26)
  {
    v27 = v23;
    v28 = v22;
    a10 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459E530();
    v29 = a10;
    v30 = (v27 + 32);
    while (1)
    {
      v39 = *v30;

      v28(v40, &v39);
      if (v25)
      {
        break;
      }

      v25 = 0;

      a10 = v29;
      v31 = *(v29 + 16);
      if (v31 >= *(v29 + 24) >> 1)
      {
        sub_1C459E530();
      }

      v32 = v41;
      v33 = v42;
      v34 = sub_1C4418280(v40, v41);
      MEMORY[0x1EEE9AC00](v34);
      sub_1C43FBCC4();
      v37 = v36 - v35;
      (*(v38 + 16))(v36 - v35);
      sub_1C44FDC24(v31, v37, &a10, v32, v33);
      sub_1C440962C(v40);
      v29 = a10;
      ++v30;
      if (!--v26)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}