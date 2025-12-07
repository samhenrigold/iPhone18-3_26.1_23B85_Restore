uint64_t PuzzleProgress.encode(to:)(void *a1)
{
  sub_1D5F14438(0, &qword_1EC880EA0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v17 - v7;
  v9 = *v1;
  v19 = v1[1];
  v18 = *(v1 + 16);
  v10 = v1[3];
  v11 = v1[4];
  v24 = v1[5];
  v25 = v9;
  v29 = *(v1 + 48);
  v23 = *(v1 + 49);
  v12 = v1[7];
  v21 = v1[8];
  v22 = v12;
  v20 = *(v1 + 72);
  v13 = v1[11];
  v17[1] = v1[10];
  v17[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F13DE4(v10, v11);
  sub_1D5F13D90();
  sub_1D7264B5C();
  v27 = v10;
  v28 = v11;
  v30 = 0;
  sub_1D5F13DF8();
  v14 = v26;
  sub_1D72643BC();
  if (v14)
  {
    sub_1D5B952E4(v27, v28);
  }

  else
  {
    v15 = v23;
    sub_1D5B952E4(v27, v28);
    LOBYTE(v27) = 1;
    sub_1D726442C();
    LOBYTE(v27) = 2;
    sub_1D72643AC();
    LOBYTE(v27) = v15;
    v30 = 3;
    sub_1D5F13E4C();
    sub_1D72643BC();
    LOBYTE(v27) = 4;
    sub_1D726437C();
    LOBYTE(v27) = 5;
    sub_1D726440C();
    LOBYTE(v27) = 6;
    sub_1D726442C();
    LOBYTE(v27) = 7;
    sub_1D726440C();
    LOBYTE(v27) = 8;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D5F13D90()
{
  result = qword_1EC880EA8;
  if (!qword_1EC880EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EA8);
  }

  return result;
}

double sub_1D5F13DE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D5E3E824(a1, a2);
  }

  return result;
}

unint64_t sub_1D5F13DF8()
{
  result = qword_1EC880EB0;
  if (!qword_1EC880EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EB0);
  }

  return result;
}

unint64_t sub_1D5F13E4C()
{
  result = qword_1EC880EB8;
  if (!qword_1EC880EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EB8);
  }

  return result;
}

uint64_t PuzzleProgress.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5F14438(0, &qword_1EC880EC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F13D90();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  sub_1D5F1449C();
  sub_1D726427C();
  v12 = v42;
  v11 = v43;
  LOBYTE(v42) = 1;
  v35 = sub_1D72642FC();
  LOBYTE(v42) = 2;
  v34 = sub_1D726425C();
  v63 = v13 & 1;
  LOBYTE(v36) = 3;
  sub_1D5F144F0();
  sub_1D726427C();
  v33 = v42;
  LOBYTE(v42) = 4;
  v32 = sub_1D726422C();
  v65 = v14;
  LOBYTE(v42) = 5;
  v31 = sub_1D72642CC();
  LOBYTE(v42) = 6;
  v30 = sub_1D72642FC();
  LOBYTE(v42) = 7;
  v27 = sub_1D72642CC();
  v59 = 8;
  v29 = sub_1D726422C();
  v28 = v15;
  v31 &= 1u;
  v27 &= 1u;
  v16 = v27;
  (*(v7 + 8))(v10, v6);
  *&v36 = v35;
  *(&v36 + 1) = v30;
  LOBYTE(v37) = v16;
  *(&v37 + 1) = v64[0];
  DWORD1(v37) = *(v64 + 3);
  *(&v37 + 1) = v12;
  *&v38 = v11;
  *(&v38 + 1) = v34;
  v26 = v63;
  LOBYTE(v39) = v63;
  v17 = v33;
  BYTE1(v39) = v33;
  *(&v39 + 2) = v61;
  WORD3(v39) = v62;
  v18 = v32;
  v19 = v65;
  *(&v39 + 1) = v32;
  *&v40 = v65;
  BYTE8(v40) = v31;
  *(&v40 + 9) = *v60;
  HIDWORD(v40) = *&v60[3];
  v20 = v28;
  *&v41 = v29;
  *(&v41 + 1) = v28;
  v21 = v39;
  a2[2] = v38;
  a2[3] = v21;
  v22 = v37;
  *a2 = v36;
  a2[1] = v22;
  v23 = v41;
  a2[4] = v40;
  a2[5] = v23;
  sub_1D5F14544(&v36, &v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42 = v35;
  v43 = v30;
  v44 = v27;
  *v45 = v64[0];
  *&v45[3] = *(v64 + 3);
  v46 = v12;
  v47 = v11;
  v48 = v34;
  v49 = v26;
  v50 = v17;
  v51 = v61;
  v52 = v62;
  v53 = v18;
  v54 = v19;
  v55 = v31;
  *&v56[3] = *&v60[3];
  *v56 = *v60;
  v57 = v29;
  v58 = v20;
  return sub_1D5F1457C(&v42);
}

void sub_1D5F14438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F13D90();
    v7 = a3(a1, &type metadata for PuzzleProgress.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5F1449C()
{
  result = qword_1EC880EC8;
  if (!qword_1EC880EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EC8);
  }

  return result;
}

unint64_t sub_1D5F144F0()
{
  result = qword_1EC880ED0;
  if (!qword_1EC880ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880ED0);
  }

  return result;
}

uint64_t PuzzleProgress.debugDescription.getter()
{
  v1 = *(v0 + 88);
  if (*(v0 + 64))
  {
    v19 = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  else
  {
    v2 = 0xE400000000000000;
    v19 = 1819047278;
  }

  v22 = *(v0 + 16);
  v3 = *(v0 + 49);
  v20 = *(v0 + 72);
  v4 = *(v0 + 80);
  if (*(v0 + 48))
  {

    v5 = 0xE400000000000000;
    v6 = 1819047278;
  }

  else
  {

    v6 = sub_1D72644BC();
    v5 = v7;
  }

  if (v1)
  {
    v8 = v4;
  }

  else
  {
    v1 = 0xE400000000000000;
    v8 = 1819047278;
  }

  v21 = v8;
  v9 = 0x746C7561666564;
  if (v3)
  {
    v9 = 0x74636566726570;
  }

  if (v3 == 2)
  {
    v10 = 1819047278;
  }

  else
  {
    v10 = v9;
  }

  if (v3 == 2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x73736572676F7270, 0xEE003D6C6576654CLL);
  v12 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v12);

  MEMORY[0x1DA6F9910](0x3D65726F637320, 0xE700000000000000);
  MEMORY[0x1DA6F9910](v6, v5);

  MEMORY[0x1DA6F9910](0x795465726F637320, 0xEB000000003D6570);
  MEMORY[0x1DA6F9910](v10, v11);

  MEMORY[0x1DA6F9910](0x3D44496B6E617220, 0xE800000000000000);
  MEMORY[0x1DA6F9910](v19, v2);

  MEMORY[0x1DA6F9910](0x7665526465737520, 0xEC0000003D6C6165);
  if (v20)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v20)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v13, v14);

  MEMORY[0x1DA6F9910](0x72754479616C7020, 0xEE003D6E6F697461);
  v15 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v15);

  MEMORY[0x1DA6F9910](0x65766C6F53736920, 0xEA00000000003D64);
  if (v22)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v22)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v16, v17);

  MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73C2240);
  MEMORY[0x1DA6F9910](v21, v1);

  return 0;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5F149B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D5F14A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_1D5F14BB4()
{
  result = qword_1EC880EE8;
  if (!qword_1EC880EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EE8);
  }

  return result;
}

unint64_t sub_1D5F14C0C()
{
  result = qword_1EC880EF0;
  if (!qword_1EC880EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EF0);
  }

  return result;
}

unint64_t sub_1D5F14C64()
{
  result = qword_1EC880EF8;
  if (!qword_1EC880EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EF8);
  }

  return result;
}

unint64_t sub_1D5F14CB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5F14D04(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (v4)
  {
    swift_unknownObjectRetain();
    if (sub_1D5FE2C40())
    {
      v5 = (a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
      v6 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
      v7 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
      __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v6);
      v8 = [v4 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      v12 = (*(*(v7 + 8) + 8))(v9, v11, v6);

      if ((v12 & 1) == 0)
      {
        v13 = v5[3];
        v14 = v5[4];
        __swift_project_boxed_opaque_existential_1(v5, v13);
        v15 = [v4 identifier];
        v51 = sub_1D726207C();
        v17 = v16;

        v18 = [objc_msgSend(v4 puzzleType)];
        swift_unknownObjectRelease();
        v19 = sub_1D726207C();
        v21 = v20;

        (*(v14 + 24))(v51, v17, v19, v21, v13, v14);

        v22 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleNotificationAutoEnableManager + 24);
        v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleNotificationAutoEnableManager + 32);
        __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleNotificationAutoEnableManager), v22);
        (*(v23 + 8))(v22, v23);
      }

      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725C42C();
      __swift_project_value_buffer(v24, qword_1EDFFCFA8);
      swift_unknownObjectRetain();
      sub_1D5F14544(a1, &v53);
      v25 = sub_1D725C3FC();
      v26 = sub_1D7262EDC();
      swift_unknownObjectRelease();
      sub_1D5F1457C(a1);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v59[0] = v52;
        *v27 = 136315394;
        v28 = [v4 identifier];
        v29 = sub_1D726207C();
        v31 = v30;

        v32 = sub_1D5BC5100(v29, v31, v59);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v33 = a1[3];
        v55 = a1[2];
        v56 = v33;
        v34 = a1[5];
        v57 = a1[4];
        v58 = v34;
        v35 = a1[1];
        v53 = *a1;
        v54 = v35;
        v36 = PuzzleProgress.debugDescription.getter();
        v38 = sub_1D5BC5100(v36, v37, v59);

        *(v27 + 14) = v38;
        _os_log_impl(&dword_1D5B42000, v25, v26, "Submitting puzzle progress for the puzzle=%s progress=[%s]", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6FD500](v52, -1, -1);
        MEMORY[0x1DA6FD500](v27, -1, -1);
      }

      v39 = v5[3];
      v40 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v39);
      v41 = a1[3];
      v55 = a1[2];
      v56 = v41;
      v42 = a1[5];
      v57 = a1[4];
      v58 = v42;
      v43 = a1[1];
      v53 = *a1;
      v54 = v43;
      (*(v40 + 32))(&v53, v4, v39, v40);
      swift_unknownObjectRelease();
      return sub_1D5FE2B70(a2, a1);
    }

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = result + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = *(v45 + 8);
      ObjectType = swift_getObjectType();
      v48 = a1[3];
      v55 = a1[2];
      v56 = v48;
      v49 = a1[5];
      v57 = a1[4];
      v58 = v49;
      v50 = a1[1];
      v53 = *a1;
      v54 = v50;
      (*(v46 + 40))(&v53, ObjectType, v46);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D5F151B4(void *a1)
{
  v2 = [a1 body];
  v3 = sub_1D7261D3C();

  v4 = sub_1D71BC9D8(v3);

  if (v4)
  {
    if (*(v4 + 16) && (v5 = sub_1D5B69D90(0x7461745379616C70, 0xE900000000000065), (v6 & 1) != 0))
    {
      sub_1D5B76B10(*(v4 + 56) + 32 * v5, v34);

      sub_1D5BB0DB0();
      if (swift_dynamicCast())
      {
        sub_1D5F12D18(v33, &v28);
        if (*v32 != 1)
        {
          v35[0] = v28;
          v35[1] = v29;
          v35[2] = v30;
          v35[3] = v31;
          v37 = *&v32[8];
          v36 = *v32;
          v38 = *&v32[24];
          if ((*(&v28 + 1) & 0x8000000000000000) == 0)
          {
            if (qword_1EDF3B838 != -1)
            {
              swift_once();
            }

            v7 = sub_1D725C42C();
            __swift_project_value_buffer(v7, qword_1EDFFCFA8);
            v27[2] = v30;
            v27[3] = v31;
            v27[4] = *v32;
            v27[5] = *&v32[16];
            v27[0] = v28;
            v27[1] = v29;
            sub_1D5F14544(v27, v26);
            v8 = sub_1D725C3FC();
            v9 = sub_1D7262EDC();
            sub_1D5F15694(&v28, sub_1D5F15644);
            if (os_log_type_enabled(v8, v9))
            {
              v10 = swift_slowAlloc();
              v11 = swift_slowAlloc();
              v26[0] = v11;
              *v10 = 136315138;
              v12 = PuzzleProgress.debugDescription.getter();
              v14 = sub_1D5BC5100(v12, v13, v26);

              *(v10 + 4) = v14;
              _os_log_impl(&dword_1D5B42000, v8, v9, "PuzzleProgressMessageHandler received progress=%s", v10, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v11);
              MEMORY[0x1DA6FD500](v11, -1, -1);
              MEMORY[0x1DA6FD500](v10, -1, -1);
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              sub_1D5F14D04(v35, Strong);
              swift_unknownObjectRelease();
            }

            sub_1D5F15694(&v28, sub_1D5F15644);
            return;
          }

          sub_1D5F15694(&v28, sub_1D5F15644);
        }
      }
    }

    else
    {
    }
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725C42C();
  __swift_project_value_buffer(v16, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v17 = sub_1D725C3FC();
  v18 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v28 = v20;
    *v19 = 136315138;
    v21 = [a1 body];
    sub_1D7261D3C();

    v22 = sub_1D7261D4C();
    v24 = v23;

    v25 = sub_1D5BC5100(v22, v24, &v28);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_1D5B42000, v17, v18, "PuzzleProgressMessageHandler received invalid message %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1DA6FD500](v20, -1, -1);
    MEMORY[0x1DA6FD500](v19, -1, -1);
  }
}

void sub_1D5F15644()
{
  if (!qword_1EC880F08)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880F08);
    }
  }
}

uint64_t sub_1D5F15694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5F156F4(uint64_t a1)
{
  if (!qword_1EDF04360)
  {
    sub_1D5F1574C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04360);
    }
  }
}

unint64_t sub_1D5F1574C()
{
  result = qword_1EDF1A650;
  if (!qword_1EDF1A650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A650);
  }

  return result;
}

void sub_1D5F15878()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_tableView];
  [v2 setDelegate_];
  [v2 setDataSource_];
  [v2 setAlwaysBounceVertical_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTintColor_];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v2 setTableFooterView_];

  type metadata accessor for DebugFormatTableViewCell();
  sub_1D7262DAC();
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 navigationItem];
    v8 = sub_1D726203C();
    [v7 setTitle_];

    v9 = [v1 navigationItem];
    sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D72816C0;
    type metadata accessor for DebugFormatBarButtonItem();
    v11 = sub_1D726203C();
    v12 = [objc_opt_self() systemImageNamed_];

    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v12 style:0 target:v1 action:sel_doDismiss];
    *(v10 + 32) = v13;
    sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
    v14 = sub_1D726265C();

    [v9 setRightBarButtonItems_];

    sub_1D5F15BAC(0);
    v15 = sub_1D726265C();

    [v1 setToolbarItems_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D5F15BAC(char a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v2 startAnimating];
    type metadata accessor for DebugFormatBarButtonItem();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];
    sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D72816D0;
    *(v5 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
    *(v5 + 40) = v4;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v21[3] = ObjectType;
    v21[0] = v1;
    v7 = v1;
    v8 = sub_1D726203C();
    if (ObjectType)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v21, ObjectType);
      v10 = *(ObjectType - 8);
      v11 = MEMORY[0x1EEE9AC00](v9, v9);
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_1D72646AC();
      (*(v10 + 8))(v13, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v14 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v15 = swift_getObjCClassFromMetadata();
    v16 = objc_allocWithZone(v15);
    v17 = [v16 initWithTitle:v8 style:0 target:v14 action:{sel_doUploadWithSender_, v21[0]}];

    swift_unknownObjectRelease();
    v18 = objc_opt_self();
    v2 = v17;
    v19 = [v18 systemBlueColor];
    [v2 setTintColor_];

    sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D72816D0;
    *(v5 + 32) = [objc_allocWithZone(v15) initWithBarButtonSystemItem:5 target:0 action:0];
    *(v5 + 40) = v2;
  }

  return v5;
}

uint64_t sub_1D5F16148(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_uploadService);
  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_entries);
  if (qword_1EC87D678 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugFormatUploadService();
  sub_1D5F1829C();
  sub_1D725964C();
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  *(v3 + 24) = v1;
  *(v3 + 32) = v2;

  v4 = sub_1D725BDAC();

  return v4;
}

__n128 sub_1D5F16268(char *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D67B85E0();
    swift_unknownObjectRelease();
  }

  v5[0] = v2;
  v6 = v4;
  sub_1D5F162E8(v5);
  return result;
}

void sub_1D5F162E8(char *a1)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections;
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections);
  v7 = *(v6 + 16);
  if (v7)
  {
    v65 = OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections;
    v86 = MEMORY[0x1E69E7CC0];
    v8 = v6;

    sub_1D6997FB4(0, v7, 0);
    v9 = 0;
    v10 = v86;
    v67 = v8;
    v68 = v8 + 32;
    v75 = v4;
    v76 = v3;
    v11 = v8;
    v70 = v2;
    v69 = v7;
    while (v9 < *(v11 + 16))
    {
      v73 = v9;
      v74 = v10;
      v12 = (v68 + 24 * v9);
      v71 = v12[1];
      v72 = *v12;
      v13 = v12[2];
      v14 = *(v13 + 16);
      if (v14)
      {
        v85 = MEMORY[0x1E69E7CC0];

        sub_1D6997F84(0, v14, 0);
        v15 = v85;
        v16 = v13 + 32;
        while (1)
        {
          sub_1D5F17D1C(v16, v87);
          sub_1D5F17D1C(v87, v77);
          if (v81)
          {
            break;
          }

          sub_1D5F17D78(v87);
          v18 = 0;
          v17 = v77[0];
          v19 = v77[1];
          v82 = v78;
          v83 = v79;
          v84 = v80;
LABEL_26:
          v85 = v15;
          v43 = *(v15 + 16);
          v42 = *(v15 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_1D6997F84((v42 > 1), v43 + 1, 1);
            v15 = v85;
          }

          *(v15 + 16) = v43 + 1;
          v44 = v15 + (v43 << 6);
          *(v44 + 32) = v17;
          *(v44 + 40) = v19;
          v45 = v82;
          v46 = v83;
          *(v44 + 80) = v84;
          *(v44 + 48) = v45;
          *(v44 + 64) = v46;
          *(v44 + 88) = v18;
          v16 += 64;
          --v14;
          v3 = v76;
          if (!v14)
          {

            v11 = v67;
            goto LABEL_31;
          }
        }

        v17 = v77[0];
        if (v81 != 1)
        {
        }

        v20 = *(v17 + 16);
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v23 = *(v3 + 16);

        if (v23 && (v24 = sub_1D5B69D90(v22, v21), (v25 & 1) != 0))
        {
          v26 = (*(v3 + 56) + 16 * v24);
          v27 = *v26;
          v28 = v26[1];
          sub_1D5F18250(*v26, v28);
          v19 = sub_1D69906D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v30 = *(v19 + 2);
          v29 = *(v19 + 3);
          v31 = v30 + 1;
          if (v30 >= v29 >> 1)
          {
            v47 = sub_1D69906D0((v29 > 1), v30 + 1, 1, v19);
            v31 = v30 + 1;
            v19 = v47;
          }

          *(v19 + 2) = v31;
          v32 = &v19[16 * v30];
          *(v32 + 4) = v27;
          *(v32 + 5) = v28;
          v4 = v75;
          if (!*(v75 + 16))
          {
LABEL_16:

            goto LABEL_24;
          }
        }

        else
        {
          v19 = MEMORY[0x1E69E7CC0];
          if (!*(v4 + 16))
          {
            goto LABEL_16;
          }
        }

        v33 = sub_1D5B69D90(v22, v21);
        v35 = v34;

        if (v35)
        {
          v36 = (*(v4 + 56) + 16 * v33);
          v37 = *v36;
          v38 = v36[1];
          sub_1D5F18250(*v36, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1D69906D0(0, *(v19 + 2) + 1, 1, v19);
          }

          v40 = *(v19 + 2);
          v39 = *(v19 + 3);
          if (v40 >= v39 >> 1)
          {
            v19 = sub_1D69906D0((v39 > 1), v40 + 1, 1, v19);
          }

          sub_1D5F17D78(v87);
          *(v19 + 2) = v40 + 1;
          v41 = &v19[16 * v40];
          *(v41 + 4) = v37;
          *(v41 + 5) = v38;
        }

        else
        {
LABEL_24:
          sub_1D5F17D78(v87);
        }

        v18 = 2;
        goto LABEL_26;
      }

      v15 = MEMORY[0x1E69E7CC0];
LABEL_31:
      v10 = v74;
      v86 = v74;
      v49 = *(v74 + 16);
      v48 = *(v74 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D6997FB4((v48 > 1), v49 + 1, 1);
        v10 = v86;
      }

      v9 = v73 + 1;
      *(v10 + 16) = v49 + 1;
      v50 = (v10 + 24 * v49);
      v50[4] = v72;
      v50[5] = v71;
      v50[6] = v15;
      v2 = v70;
      if (v73 + 1 == v69)
      {

        v5 = v65;
        v1 = v66;
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_36:
  *(v1 + v5) = v10;
  v51 = v1;

  [*(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_tableView) reloadData];
  if (*(v3 + 16) <= *(v4 + 16))
  {
    v52 = *(v4 + 16);
  }

  else
  {
    v52 = *(v3 + 16);
  }

  v87[0] = v2;
  v88[0] = v4;
  v88[1] = v3;
  sub_1D7247118();
  v54 = __OFSUB__(v52, v53);
  v55 = v52 - v53;
  if (v54)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v87[0] = v2;
  v88[0] = v4;
  v88[1] = v3;
  sub_1D7247118();
  v57 = v56;
  v58 = sub_1D5F177B4(v56, v55);
  v60 = v59;
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v57;
  *(v62 + 24) = v61;
  v87[0] = 0;
  strcpy(v88, "Update Result");
  HIWORD(v88[1]) = -4864;
  v88[2] = v58;
  v88[3] = v60;
  v88[4] = sub_1D5F18248;
  v88[5] = v62;
  v88[6] = 0;
  v88[7] = 0;
  v63 = *(v51 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_editor);
  v64 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v63 + v64))
  {

    sub_1D6AD3108(v87);
    sub_1D5F181F4(v87);
  }

  else
  {
    sub_1D5F181F4(v87);
  }
}

void sub_1D5F16868(uint64_t a1)
{
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D726491C();

  LOBYTE(v4[0]) = 0;
  v4[1] = 0x726F727245;
  v4[2] = 0xE500000000000000;
  v4[3] = 0;
  v4[4] = 0xE000000000000000;
  v5 = 0u;
  v6 = 0u;
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_editor);
  v3 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v2 + v3))
  {

    sub_1D6AD3108(v4);
    sub_1D5F181F4(v4);
  }

  else
  {
    sub_1D5F181F4(v4);
  }
}

void sub_1D5F1697C(void *a1)
{
  sub_1D5F15BAC(0);
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v2 = sub_1D726265C();

  [a1 setToolbarItems_];

  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];

    if (v5)
    {
      [v5 setUserInteractionEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1D5F16B30(__n128 a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v5 = *(v3 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections);
  if (result >= *(v5 + 16))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v6 = *(v5 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (result >= *(v6 + 16))
  {
LABEL_54:
    __break(1u);
    return result;
  }

  sub_1D5F17D1C(v6 + (result << 6) + 32, v74);

  sub_1D5F17D1C(v74, v69);
  if (v73)
  {
    if (v73 == 1)
    {
      type metadata accessor for DebugFormatTableViewCell();
      v7 = sub_1D7262D8C();
      v8 = [v7 textLabel];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1D5DF5E68();
        [v9 setAttributedText_];
      }

      v11 = [v7 textLabel];
      if (v11)
      {
        v12 = v11;
        [v11 setNumberOfLines_];
      }

      v13 = [v7 detailTextLabel];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1D5DF6328();
        [v14 setAttributedText_];
      }

      v16 = [v7 detailTextLabel];
      if (v16)
      {
        v17 = v16;
        [v16 setNumberOfLines_];
      }
    }

    else
    {
      v21 = v69[1];
      type metadata accessor for DebugFormatTableViewCell();
      v7 = sub_1D7262D8C();
      v22 = [v7 textLabel];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1D5DF5E68();
        [v23 setAttributedText_];
      }

      v25 = [v7 textLabel];
      if (v25)
      {
        v26 = v25;
        [v25 setNumberOfLines_];
      }

      v27 = [v7 detailTextLabel];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D5DF6328();
        [v28 setAttributedText_];
      }

      v30 = [v7 detailTextLabel];
      if (v30)
      {
        v31 = v30;
        [v30 setNumberOfLines_];
      }

      v32 = *(v21 + 16);
      v33 = v32 + 1;
      v34 = 40;
      while (--v33)
      {
        v35 = *(v21 + v34);
        v34 += 16;
        if (v35 < 0)
        {

          v36 = [objc_opt_self() systemRedColor];
          v37 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor;
          v38 = *&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor];
          *&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor] = v36;
          v39 = v36;

          v40 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
          [*&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView] setBackgroundColor_];
          [*&v7[v40] setHidden_];

          [v7 setAccessoryType_];
          goto LABEL_42;
        }
      }

      v41 = v32 + 1;
      v42 = 40;
      while (--v41)
      {
        v43 = *(v21 + v42);
        v42 += 16;
        if ((v43 & 0x8000000000000000) == 0)
        {

          v44 = [objc_opt_self() systemGreenColor];
          v45 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor;
          v46 = *&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor];
          *&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor] = v44;
          v47 = v44;

          v48 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
          [*&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView] setBackgroundColor_];
          [*&v7[v48] setHidden_];

          goto LABEL_41;
        }
      }
    }

    v53 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor;
    v54 = *&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor];
    *&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor] = 0;

    v55 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
    [*&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView] setBackgroundColor_];
    [*&v7[v55] setHidden_];
LABEL_41:
    [v7 setAccessoryType_];
LABEL_42:
  }

  else
  {
    v67[0] = v70;
    v67[1] = v71;
    v68 = v72;
    type metadata accessor for DebugFormatTableViewCell();
    v7 = sub_1D7262D8C();
    v18 = [v7 textLabel];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1D726203C();

      [v19 setText_];
    }

    else
    {
    }

    v49 = [v7 textLabel];
    if (v49)
    {
      v50 = v49;
      [v49 setNumberOfLines_];
    }

    v51 = [v7 detailTextLabel];
    if (v51)
    {
      v52 = v51;
      sub_1D5F17E90(v67, v65);
      if (v66)
      {
        __swift_project_boxed_opaque_existential_1(v65, v66);
        sub_1D72644BC();
        __swift_destroy_boxed_opaque_existential_1(v65);
      }

      else
      {
        sub_1D5F17DCC(v65);
      }

      v56 = sub_1D726203C();

      [v52 setText_];
    }

    v57 = [v7 detailTextLabel];
    if (v57)
    {
      v58 = v57;
      v59 = [objc_opt_self() secondaryLabelColor];
      [v58 setTextColor_];
    }

    v60 = [v7 detailTextLabel];
    if (v60)
    {
      v61 = v60;
      [v60 setNumberOfLines_];
    }

    v62 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor;
    v63 = *&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor];
    *&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor] = 0;

    v64 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
    [*&v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView] setBackgroundColor_];
    [*&v7[v64] setHidden_];
    [v7 setAccessoryType_];

    sub_1D5F17DCC(v67);
  }

  sub_1D5F17D78(v74);
  return v7;
}

unint64_t sub_1D5F17428(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7262D6C();
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections];
  if (result >= *(v6 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v6 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *(v7 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_1D5F17D1C(v7 + (result << 6) + 32, v23);

  sub_1D5F17D1C(v23, v20);
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1D5F17D78(v23);
      v8 = v20;
    }

    else
    {
      v9 = v20[1];

      type metadata accessor for DebugFormatInspectorPaneViewController();
      v10 = *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_editor];
      sub_1D5B5D358(0, &qword_1EC88ECE0, &type metadata for FormatInspection);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;

      v12 = sub_1D6F4FDF4(v9);

      *(inited + 32) = v12;
      sub_1D6A6ED08(v10, inited, 0, 0);
      v14 = v13;
      [v14 setModalPresentationStyle_];
      v15 = [v14 popoverPresentationController];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1D7258D4C();
        v18 = [a1 cellForRowAtIndexPath_];

        [v16 setSourceView_];
      }

      v19 = [v14 popoverPresentationController];

      if (v19)
      {
        [v19 setPermittedArrowDirections_];
      }

      [v3 presentViewController:v14 animated:1 completion:0];

      v8 = v23;
    }

    return sub_1D5F17D78(v8);
  }

  else
  {
    sub_1D5F17D78(v23);

    return sub_1D5F17DCC(&v21);
  }
}

uint64_t sub_1D5F177B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x646564616F6C7055, 0xE900000000000020);
      v2 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v2);

      MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73C22F0);
    }

    else
    {
      sub_1D7263D4C();

      strcpy(v8, "Upload failed ");
      HIBYTE(v8[1]) = -18;
    }

    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    v5 = 0x7364616F6C707520;
    v4 = 0xE800000000000000;
  }

  else
  {
    sub_1D7263D4C();

    strcpy(v8, "Uploaded ");
    WORD1(v8[1]) = 0;
    HIDWORD(v8[1]) = -385875968;
    v3 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v3);

    v4 = 0x80000001D73C2310;
    v5 = 0xD000000000000013;
  }

  MEMORY[0x1DA6F9910](v5, v4);
  return v8[0];
}

void sub_1D5F179BC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_1D5F17A2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_uploadService;
  type metadata accessor for DebugFormatUploadService();
  swift_allocObject();
  *&v2[v7] = sub_1D67D7E10();
  v8 = OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_tableView;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_editor] = a1;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_entries] = a2;
  swift_retain_n();

  v43[5] = sub_1D69F4DA8();
  v43[6] = v9;
  v44[0] = v10;
  LOBYTE(v43[0]) = 0;

  v44[1] = sub_1D69F4F5C(v11, v43);
  v44[2] = v12;
  v44[3] = v13;
  LOBYTE(v43[0]) = 1;

  v44[4] = sub_1D69F4F5C(v14, v43);
  v44[5] = v15;
  v44[6] = v16;
  LOBYTE(v43[0]) = 2;

  v44[7] = sub_1D69F4F5C(v17, v43);
  v44[8] = v18;
  v44[9] = v19;
  LOBYTE(v43[0]) = 4;

  v44[10] = sub_1D69F4F5C(v20, v43);
  v44[11] = v21;
  v44[12] = v22;
  LOBYTE(v43[0]) = 6;

  v44[13] = sub_1D69F4F5C(v23, v43);
  v44[14] = v24;
  v44[15] = v25;
  LOBYTE(v43[0]) = 3;
  result = sub_1D69F4F5C(a2, v43);
  v27 = 0;
  v44[16] = result;
  v44[17] = v28;
  v44[18] = v29;
  v30 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v27 <= 7)
  {
    v31 = 7;
  }

  else
  {
    v31 = v27;
  }

  v32 = v31 + 1;
  v33 = &v44[3 * v27];
  while (1)
  {
    if (v27 == 7)
    {
      swift_arrayDestroy();
      *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections] = v30;
      v42.receiver = v3;
      v42.super_class = ObjectType;
      return objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
    }

    if (v32 == ++v27)
    {
      break;
    }

    v34 = v33 + 3;
    v35 = *v33;
    v36 = *(*v33 + 16);
    v33 += 3;
    if (v36)
    {
      v38 = *(v34 - 5);
      v37 = *(v34 - 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v30;
      if ((result & 1) == 0)
      {
        result = sub_1D6997FB4(0, *(v30 + 16) + 1, 1);
        v30 = v43[0];
      }

      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1D6997FB4((v39 > 1), v40 + 1, 1);
        v30 = v43[0];
      }

      *(v30 + 16) = v40 + 1;
      v41 = (v30 + 24 * v40);
      v41[4] = v38;
      v41[5] = v37;
      v41[6] = v35;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F17DCC(uint64_t a1)
{
  sub_1D5F17E28(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F17E28(uint64_t a1)
{
  if (!qword_1EC880F40)
  {
    sub_1D5B49474(255, &qword_1EC884160, MEMORY[0x1E69E6F68]);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC880F40);
    }
  }
}

uint64_t sub_1D5F17E90(uint64_t a1, uint64_t a2)
{
  sub_1D5F17E28(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5F17EF4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v2 startAnimating];
  type metadata accessor for DebugFormatBarButtonItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];
  sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D72816D0;
  *(v5 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
  *(v5 + 40) = v4;

  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v6 = sub_1D726265C();

  [v1 setToolbarItems_];

  v7 = [v1 navigationController];
  if (!v7)
  {
    goto LABEL_4;
  }

  v9 = v7;
  v10 = [v7 view];

  if (v10)
  {
    [v10 setUserInteractionEnabled_];

LABEL_4:
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1D725BDCC();
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v11 = sub_1D726308C();
    sub_1D725BAAC();

    v12 = sub_1D726308C();
    sub_1D725BADC();

    v13 = sub_1D726308C();
    sub_1D725BB3C();

    return;
  }

  __break(1u);
}

void sub_1D5F18250(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {

    v4 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

unint64_t sub_1D5F1829C()
{
  result = qword_1EC880F50;
  if (!qword_1EC880F50)
  {
    type metadata accessor for DebugFormatUploadService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880F50);
  }

  return result;
}

uint64_t sub_1D5F1834C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5F18394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FeedGroupConfigDataKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F18480()
{
  result = qword_1EC880FC0;
  if (!qword_1EC880FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880FC0);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatUploadRemotePackage(uint64_t a1)
{
  result = qword_1EC880FC8;
  if (!qword_1EC880FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5F18530(uint64_t a1)
{
  sub_1D5F185A4(319);
  if (v1 <= 0x3F)
  {
    sub_1D5F18638(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5F185A4(uint64_t a1)
{
  if (!qword_1EC880FD8)
  {
    v2 = type metadata accessor for DebugNewsroomLayoutData(255);
    v3 = sub_1D5F186CC(&qword_1EC880FE0, type metadata accessor for DebugNewsroomLayoutData, &unk_1D72B03B8);
    v5 = type metadata accessor for DebugNewsroomContainer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC880FD8);
    }
  }
}

void sub_1D5F18638(uint64_t a1)
{
  if (!qword_1EC880FE8)
  {
    v2 = type metadata accessor for DebugNewsroomThemeData(255);
    v3 = sub_1D5F186CC(qword_1EC880FF0, type metadata accessor for DebugNewsroomThemeData, &unk_1D729FE58);
    v5 = type metadata accessor for DebugNewsroomContainer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC880FE8);
    }
  }
}

uint64_t sub_1D5F186CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5F18714()
{
  sub_1D5F18638(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F185A4(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DebugFormatUploadRemotePackage(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F188A4(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5F18908(v12, v4, sub_1D5F18638);
    v13 = v4[16];
    v14 = v4;
    v15 = sub_1D5F18638;
  }

  else
  {
    sub_1D5F18908(v12, v8, sub_1D5F185A4);
    v13 = v8[88];
    v14 = v8;
    v15 = sub_1D5F185A4;
  }

  sub_1D5F18970(v14, v15);
  return v13 & 1;
}

uint64_t sub_1D5F188A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatUploadRemotePackage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F18908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F18970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FeedGroupKnobsRuleValue.__allocating_init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 112), a1);
  *(v4 + *(*v4 + 120)) = a2;
  return v4;
}

uint64_t static FeedGroupKnobsRuleValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = *(v3 + 104);
  if (sub_1D7261FBC())
  {
    v8 = v4;
    v9 = *(v3 + 88);
    v10 = v5;
    type metadata accessor for FeedGroupKnobsRuleValue.Selector(0, &v8);
    swift_getWitnessTable();
    v6 = sub_1D726280C();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t FeedGroupKnobsRuleValue.value(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 120));
  v13[4] = v4;
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[13];
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  type metadata accessor for FeedGroupKnobsRuleValue.Selector(255, v13);
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    return (*(*(v5 - 8) + 16))(a1, v1 + *(*v1 + 112), v5);
  }

  v10 = type metadata accessor for FeedContext(0);
  v12[1] = v12;
  v13[0] = v4;
  MEMORY[0x1EEE9AC00](v10, v11);

  swift_getWitnessTable();
  sub_1D726249C();
}

uint64_t FeedGroupKnobsRuleValue.init(from:)(void *a1)
{
  v3 = v1;
  v33 = *v3;
  v6 = v33[11];
  v7 = v33[12];
  v8 = v33[13];
  v41 = v33[10];
  v5 = v41;
  v42 = v6;
  v36 = v8;
  v37 = v7;
  v43 = v7;
  v44 = v8;
  type metadata accessor for FeedGroupKnobsRuleValue.CodingKeys(255, &v41);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1D726435C();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v28 - v11;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - v17;
  v19 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D7264AEC();
  if (v2)
  {
    v34 = v2;
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_1D7264B0C();
    LOBYTE(v41) = 0;
    v21 = v5;
    sub_1D726431C();
    v41 = v5;
    v42 = v6;
    v43 = v37;
    v44 = v36;
    type metadata accessor for FeedGroupKnobsRuleValue.Selector(255, &v41);
    sub_1D72627FC();
    LOBYTE(v41) = 1;
    v45 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D726427C();
    v26 = v40[0];
    if (!v40[0])
    {
      v26 = sub_1D726275C();
    }

    v25 = v39;
    v27 = v32;
    (*(v29 + 8))(v38, v30);
    (*(v31 + 32))(v3 + *(*v3 + 112), v27, v21);
    *(v3 + *(*v3 + 120)) = v26;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v41, v44);
    sub_1D726472C();
    v20 = v5;
    v23 = v31;
    (*(v31 + 16))(v3 + *(*v3 + 112), v18, v20);
    v40[0] = v20;
    v40[1] = v6;
    v40[2] = v37;
    v40[3] = v36;
    type metadata accessor for FeedGroupKnobsRuleValue.Selector(0, v40);
    v24 = sub_1D726275C();
    (*(v23 + 8))(v18, v20);
    *(v3 + *(*v3 + 120)) = v24;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v25 = v39;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v3;
}

uint64_t sub_1D5F19518()
{
  v1 = v0;
  v107 = *v0;
  *&v106 = v107;
  v2 = *(v107 + 80);
  v3 = sub_1D726393C();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3, v6);
  v98 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v97 = &v82 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v94 = &v82 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v100 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v99 = &v82 - v19;
  v108 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v86 = &v82 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v85 = &v82 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v104 = &v82 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v84 = &v82 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v102 = &v82 - v37;
  sub_1D72644CC();
  v38 = *(v4 + 72);
  swift_allocObject();
  v39 = sub_1D726270C();
  v41 = v40;
  v42 = *(*v1 + 120);
  v105 = v5;
  v43 = v5 + 16;
  v44 = *(v5 + 16);
  v90 = v42;
  v44(v40, &v1[v42], v3);
  v88 = *(*v1 + 112);
  v44(v41 + v38, &v1[v88], v3);
  v91 = *(*v1 + 128);
  v44(v41 + 2 * v38, &v1[v91], v3);
  v95 = *(*v1 + 136);
  v89 = v44;
  v44(v41 + 3 * v38, &v1[v95], v3);
  *&v112 = sub_1D5BFCB60(v39, v3);
  v109 = v2;
  v107 = *(v107 + 88);
  v110 = v107;
  v106 = *(v106 + 96);
  v111 = v106;
  sub_1D72627FC();
  swift_getWitnessTable();
  v45 = v103;
  v46 = sub_1D726242C();
  v96 = v45;

  *&v112 = v46;
  v47 = v2;
  sub_1D72627FC();
  swift_getWitnessTable();
  v48 = v99;
  sub_1D7262C9C();
  v49 = v108 + 48;
  v50 = *(v108 + 48);
  v51 = v48;
  if (v50(v48, 1, v47) == 1)
  {
    (*(v105 + 8))(v48, v3);

    *&v52 = v47;
    *(&v52 + 1) = v107;
    v113 = v106;
    v112 = v52;
    type metadata accessor for LegacyFeedGroupKnobsRuleValue.Errors(0, &v112);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v54 = v47;
    v103 = v50;
    v101 = v49;
    v55 = v108 + 32;
    v56 = v51;
    v57 = *(v108 + 32);
    v57(v102, v56, v47);

    *&v112 = v47;
    *(&v112 + 1) = v107;
    v113 = v106;
    v58 = type metadata accessor for FeedGroupKnobsRuleValue.Selector(0, &v112);
    v114 = sub_1D7261CFC();
    v59 = &v1[v88];
    v60 = v100;
    v83 = v3;
    v88 = v43;
    v61 = v89;
    v89(v100, v59, v3);
    v62 = v103(v60, 1, v54);
    v99 = v58;
    v93 = v55;
    v92 = v57;
    if (v62 == 1)
    {
      v63 = v83;
      (*(v105 + 8))(v100, v83);
      v64 = v94;
    }

    else
    {
      v65 = v84;
      v57(v84, v100, v54);
      v66 = v104;
      (*(v108 + 16))(v104, v65, v54);
      *&v112 = 0xD00000000000001ELL;
      *(&v112 + 1) = 0x80000001D73C2470;
      *&v112 = FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(v66, &v112);
      sub_1D72627FC();
      sub_1D72627BC();
      (*(v108 + 8))(v65, v54);
      v64 = v94;
      v63 = v83;
    }

    v61(v64, &v1[v90], v63);
    if (v103(v64, 1, v54) == 1)
    {
      v67 = v105;
      (*(v105 + 8))(v64, v63);
    }

    else
    {
      v68 = v85;
      v92(v85, v64, v54);
      v69 = v104;
      (*(v108 + 16))(v104, v68, v54);
      *&v112 = 0xD000000000000022;
      *(&v112 + 1) = 0x80000001D73C2440;
      *&v112 = FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(v69, &v112);
      sub_1D72627FC();
      sub_1D72627BC();
      (*(v108 + 8))(v68, v54);
      v67 = v105;
    }

    v70 = v97;
    v61(v97, &v1[v91], v63);
    v71 = v103;
    if (v103(v70, 1, v54) == 1)
    {
      (*(v67 + 8))(v70, v63);
    }

    else
    {
      v72 = v86;
      v92(v86, v70, v54);
      v73 = v104;
      (*(v108 + 16))(v104, v72, v54);
      *&v112 = 0xD00000000000001BLL;
      *(&v112 + 1) = 0x80000001D73C2420;
      *&v112 = FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(v73, &v112);
      sub_1D72627FC();
      sub_1D72627BC();
      v74 = v72;
      v71 = v103;
      (*(v108 + 8))(v74, v54);
    }

    v75 = &v1[v95];
    v76 = v98;
    v61(v98, v75, v63);
    if (v71(v76, 1, v54) == 1)
    {
      (*(v67 + 8))(v76, v63);
      v77 = v104;
      v78 = v102;
      v79 = v92;
    }

    else
    {
      v80 = v87;
      v79 = v92;
      v92(v87, v76, v54);
      v81 = v108;
      v77 = v104;
      (*(v108 + 16))(v104, v80, v54);
      *&v112 = 0xD000000000000019;
      *(&v112 + 1) = 0x80000001D73C2400;
      *&v112 = FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(v77, &v112);
      sub_1D72627FC();
      sub_1D72627BC();
      (*(v81 + 8))(v80, v54);
      v78 = v102;
    }

    *&v112 = v54;
    *(&v112 + 1) = v107;
    v113 = v106;
    type metadata accessor for FeedGroupKnobsRuleValue(0, &v112);
    v79(v77, v78, v54);
    return FeedGroupKnobsRuleValue.__allocating_init(value:selectors:)(v77, v114);
  }
}

uint64_t FeedGroupKnobsRuleValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v6 = v4[11];
  v7 = v4[12];
  v8 = v4[13];
  v24 = v4[10];
  v5 = v24;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  type metadata accessor for FeedGroupKnobsRuleValue.CodingKeys(255, &v24);
  swift_getWitnessTable();
  v9 = sub_1D726446C();
  v20 = *(v9 - 8);
  v21 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v19 = v17 - v11;
  v18 = *(v2 + v4[15]);
  v29 = v18;
  v22 = v5;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v12 = type metadata accessor for FeedGroupKnobsRuleValue.Selector(255, &v24);
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(&v24, v27);
    sub_1D726476C();
    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    v17[1] = v12;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = v19;
    sub_1D7264B5C();
    LOBYTE(v24) = 0;
    v15 = v21;
    v16 = v23;
    sub_1D726443C();
    if (!v16)
    {
      v24 = v18;
      LOBYTE(v29) = 1;
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1D726443C();
    }

    return (*(v20 + 8))(v14, v15);
  }
}

uint64_t sub_1D5F1A428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1D726393C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  sub_1D5F1A624(a2, &v16 - v11);
  v13 = *(a3 - 8);
  v14 = *(v13 + 48);
  if (v14(v12, 1, a3) != 1)
  {
    return (*(v13 + 32))(a4, v12, a3);
  }

  (*(v13 + 16))(a4, a1, a3);
  result = (v14)(v12, 1, a3);
  if (result != 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1D5F1A624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    swift_once();
  }

  v7 = *(v3 + 3);
  *&v22[0] = *(v3 + 2);
  *(&v22[0] + 1) = v7;

  v8 = sub_1D6844380(v22);

  v9 = -*(v8 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = v8 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v23 = *(v13 + 48);
    v22[1] = v15;
    v22[2] = v16;
    v22[0] = v14;
    sub_1D5E3B610(v22, v21);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v22);
    v11 = v12;
    if (v17)
    {

      v18 = *(v6 + 80);
      v19 = *(v18 - 8);
      (*(v19 + 16))(a2, &v3[*(*v3 + 120)], v18);
      return (*(v19 + 56))(a2, 0, 1, v18);
    }
  }

  return (*(*(*(v6 + 80) - 8) + 56))(a2, 1, 1);
}

uint64_t FeedGroupKnobsRuleValue.value<A>(for:rules:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v21 = a1;
  v7 = *v5;
  v8 = *(a2 + 24);
  v9 = *(v5 + *(*v5 + 120));
  v24[4] = v9;
  v10 = v7[10];
  v11 = v7[11];
  v12 = v7[12];
  v13 = v7[13];
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  type metadata accessor for FeedGroupKnobsRuleValue.Selector(255, v24);
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    return (*(*(v10 - 8) + 16))(a5, v5 + *(*v5 + 112), v10);
  }

  v20 = a5;
  if (v8)
  {
    v15 = v21;
    v16 = sub_1D5F1AAD8(v21);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
    v15 = v21;
  }

  v17 = *(v15 + *(type metadata accessor for FeedContext(0) + 40));

  v18 = sub_1D5D6021C(v16, v17);
  v21 = &v20;
  v24[0] = v9;
  MEMORY[0x1EEE9AC00](v18, v19);

  swift_getWitnessTable();
  sub_1D726249C();
}

uint64_t sub_1D5F1AAD8(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v5 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
      a1 = *(v1 + 16);
      if (v4)
      {
        v4 = sub_1D7263BFC();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v4)
      {
        return a1;
      }

      v6 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1DA6FB460](v6, v3);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }

LABEL_13:
        v8 = sub_1D5F1DE88(v5);
        if (v8)
        {
          v9 = v8;

          a1 = v9;
        }

        else
        {
        }

        ++v6;
        if (v7 == v4)
        {
          return a1;
        }
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v1 = *(v3 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (sub_1D7263BFC());
  }

  a1 = *(v1 + 16);

  return a1;
}

uint64_t sub_1D5F1AC24(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v5 = *(a1 + *(type metadata accessor for FeedContext(0) + 40));
      a1 = *(v1 + 16);
      if (v4)
      {
        v4 = sub_1D7263BFC();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v4)
      {
        return a1;
      }

      v6 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1DA6FB460](v6, v3);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }

LABEL_13:
        v8 = sub_1D5E3A010(v5);
        if (v8)
        {
          v9 = v8;

          a1 = v9;
        }

        else
        {
        }

        ++v6;
        if (v7 == v4)
        {
          return a1;
        }
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v1 = *(v3 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (sub_1D7263BFC());
  }

  a1 = *(v1 + 16);

  return a1;
}

char *FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v6 = *a2;
  v5 = a2[1];
  (*(*(*(*v4 + 80) - 8) + 32))(&v4[*(*v4 + 120)], a1);
  *(v4 + 2) = v6;
  *(v4 + 3) = v5;
  return v4;
}

char *FeedGroupKnobsRuleValue.Selector.init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  (*(*(*(*v2 + 80) - 8) + 32))(&v2[*(*v2 + 120)], a1);
  *(v2 + 2) = v3;
  *(v2 + 3) = v4;
  return v2;
}

uint64_t static FeedGroupKnobsRuleValue.Selector.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v2 || (sub_1D72646CC() & 1) != 0)
  {
    return sub_1D7261FBC() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FeedGroupKnobsRuleValue.Selector.description.getter()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x726F7463656C6553, 0xE90000000000003CLL);
  swift_getMetatypeMetadata();
  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0x65756C6176203A3ELL, 0xE90000000000003DLL);
  sub_1D726465C();
  MEMORY[0x1DA6F9910](0x7463656C6573202CLL, 0xEB000000003D726FLL);
  MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
  return 0;
}

uint64_t sub_1D5F1B078(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5F1B140(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

uint64_t sub_1D5F1B1B4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D5DEA254(v3, *v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F1B248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5F1B29C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

char *FeedGroupKnobsRuleValue.Selector.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t FeedGroupKnobsRuleValue.Selector.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v13[0] = *(*v2 + 96);
  v13[1] = v4;
  v15[0] = v4;
  v15[1] = v13[0];
  type metadata accessor for FeedGroupKnobsRuleValue.Selector.CodingKeys(255, v15);
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v10 = v2[3];
  *&v15[0] = v2[2];
  *(&v15[0] + 1) = v10;
  v16 = 0;
  sub_1D5D3E60C();

  v11 = v14;
  sub_1D726443C();

  if (!v11)
  {
    LOBYTE(v15[0]) = 1;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D5F1B5D4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

char *FeedGroupKnobsRuleValue.Selector.init(from:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v22 = &v18 - v6;
  v8 = *(v7 + 104);
  v25 = v5;
  v20 = *(v4 + 88);
  v26 = v20;
  v27 = v8;
  type metadata accessor for FeedGroupKnobsRuleValue.Selector.CodingKeys(255, &v25);
  swift_getWitnessTable();
  v23 = sub_1D726435C();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v24;
  v13 = a1;
  sub_1D7264B0C();
  if (v12)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v21;
    v15 = v22;
    v28 = 0;
    sub_1D5C36978();
    sub_1D726431C();
    v16 = v26;
    *(v2 + 2) = v25;
    *(v2 + 3) = v16;
    LOBYTE(v25) = 1;
    sub_1D726431C();
    (*(v14 + 8))(v11, v23);
    (*(v19 + 32))(&v2[*(*v2 + 120)], v15, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v2;
}

uint64_t sub_1D5F1B990(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5F1B9E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleValue.Selector.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5F1BA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5F1BAD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D5F1BB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5F1BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5F1BC24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5F1B990(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D5F1BC60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5D70384(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5F1BCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F1B990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F1BD00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5F1BD54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRuleValue.description.getter()
{
  v1 = *v0;
  v2 = *v0;
  v6 = 0;
  *&v7 = 0xE000000000000000;
  sub_1D7263D4C();
  v10 = 0;
  v11 = 0xE000000000000000;
  MEMORY[0x1DA6F9910](0xD000000000000018, 0x80000001D73C23C0);
  v6 = *(v1 + 80);
  swift_getMetatypeMetadata();
  v3 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x65756C6176203A3ELL, 0xE90000000000003DLL);
  sub_1D726465C();
  MEMORY[0x1DA6F9910](0x7463656C6573202CLL, 0xEC0000003D73726FLL);
  v9 = *(v0 + *(*v0 + 120));
  v4 = *(v1 + 104);
  v7 = *(v2 + 88);
  v8 = v4;
  type metadata accessor for FeedGroupKnobsRuleValue.Selector(255, &v6);
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D726466C();
  return v10;
}

uint64_t FeedGroupKnobsRuleValue.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_1D5F1C024(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F1C080@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleValue.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_1D5F1C100(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = sub_1D726393C();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v80 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v81 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v82 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v83 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v84 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v88 = &v75 - v29;
  v95 = v1;
  v30 = *(v3 + 88);
  v92 = v4;
  v31 = *(v4 + 96);
  *&v96 = v5;
  *(&v96 + 1) = v30;
  v77 = v31;
  v97 = v31;
  type metadata accessor for LegacyFeedGroupKnobsRuleValue.CodingKeys(255, &v96);
  swift_getWitnessTable();
  v91 = sub_1D726435C();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v32);
  v93 = &v75 - v33;
  v85 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v75 - v36;
  v38 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v39 = v94;
  sub_1D7264AEC();
  v90 = v30;
  if (v39)
  {
    v94 = v39;
    __swift_project_boxed_opaque_existential_1(v98, v98[3]);
    sub_1D7264B0C();
    LOBYTE(v96) = 0;
    v40 = v88;
    sub_1D726427C();
    v51 = v40;
    v52 = v95;
    v53 = v5;
    v54 = *(v86 + 32);
    v76 = *(*v95 + 112);
    v54(v95 + v76, v51, v87);
    LOBYTE(v96) = 1;
    v55 = v84;
    v88 = v53;
    sub_1D726427C();
    v75 = *(*v52 + 120);
    v54(v52 + v75, v55, v87);
    LOBYTE(v96) = 2;
    v56 = v83;
    sub_1D726427C();
    v84 = *(*v52 + 128);
    v54(&v84[v52], v56, v87);
    LOBYTE(v96) = 3;
    v57 = v82;
    sub_1D726427C();
    v83 = *(*v52 + 136);
    v59 = v57;
    v60 = v87;
    v54(&v83[v52], v59, v87);
    v61 = v86;
    v62 = *(v86 + 16);
    v63 = v81;
    v62(v81, v52 + v76, v60);
    v64 = v85 + 48;
    v65 = *(v85 + 48);
    if (v65(v63, 1, v88) == 1)
    {
      v66 = v87;
      v92 = *(v61 + 8);
      v92(v63, v87);
      v67 = v80;
      v62(v80, v52 + v75, v66);
      if (v65(v67, 1, v88) == 1 && (v68 = v87, v92(v67, v87), v67 = v79, v62(v79, &v84[v52], v68), v85 = v64, v65(v67, 1, v88) == 1))
      {
        v69 = v67;
        v70 = v87;
        v71 = v92;
        v92(v69, v87);
        v72 = v78;
        v62(v78, &v83[v52], v70);
        v73 = v88;
        if (v65(v72, 1, v88) == 1)
        {
          v71(v72, v87);
          *&v74 = v73;
          *(&v74 + 1) = v90;
          v96 = v74;
          v97 = v77;
          type metadata accessor for LegacyFeedGroupKnobsRuleValue.Errors(0, &v96);
          swift_getWitnessTable();
          swift_allocError();
          swift_willThrow();

          (*(v89 + 8))(v93, v91);

          v50 = v52;
          goto LABEL_4;
        }

        v71(v72, v87);
      }

      else
      {

        v92(v67, v87);
      }
    }

    else
    {

      (*(v61 + 8))(v63, v87);
    }

    (*(v89 + 8))(v93, v91);
    v50 = v95;
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
  sub_1D726472C();
  v41 = v95;
  v42 = *(*v95 + 112);
  v43 = v85;
  v93 = *(v85 + 16);
  (v93)(v95 + v42, v37, v5);
  v44 = *(v43 + 56);
  v44(&v41[v42], 0, 1, v5);
  v45 = *(*v41 + 120);
  v94 = 0;
  v46 = v93;
  (v93)(&v41[v45], v37, v5);
  v44(&v41[v45], 0, 1, v5);
  v47 = *(*v41 + 128);
  (v46)(&v41[v47], v37, v5);
  v44(&v41[v47], 0, 1, v5);
  v48 = *(*v41 + 136);
  (*(v43 + 32))(&v41[v48], v37, v5);
  v49 = v5;
  v50 = v41;
  v44(&v41[v48], 0, 1, v49);
  __swift_destroy_boxed_opaque_existential_1(&v96);
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v98);
  return v50;
}

uint64_t sub_1D5F1CC70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v102 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v96 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v90 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v91 = &v85[-v13];
  MEMORY[0x1EEE9AC00](v14, v15);
  v93 = &v85[-v16];
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v85[-v19];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v100 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v22);
  v89 = &v85[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v85[-v26];
  MEMORY[0x1EEE9AC00](v27, v28);
  v95 = &v85[-v29];
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v85[-v33];
  v35 = *(*a1 + 112);
  v36 = *(*a2 + 112);
  v101 = v37;
  v38 = *(v37 + 48);
  v99 = v8;
  v39 = *(v8 + 16);
  v97 = a1;
  v39(&v85[-v33], a1 + v35, v7, v32);
  v98 = a2;
  (v39)(&v34[v38], a2 + v36, v7);
  v40 = *(v102 + 48);
  if (v40(v34, 1, v5) == 1)
  {
    if (v40(&v34[v38], 1, v5) == 1)
    {
      v94 = v40;
      v41 = *(v99 + 8);
      v41(v34, v7);
      goto LABEL_8;
    }

LABEL_6:
    (*(v100 + 8))(v34, v101);
    goto LABEL_20;
  }

  (v39)(v20, v34, v7);
  if (v40(&v34[v38], 1, v5) == 1)
  {
    (*(v102 + 8))(v20, v5);
    goto LABEL_6;
  }

  v94 = v40;
  v42 = v102;
  v43 = v96;
  (*(v102 + 32))(v96, &v34[v38], v5);
  LODWORD(v88) = sub_1D7261FBC();
  v44 = *(v42 + 8);
  v44(v43, v5);
  v44(v20, v5);
  v41 = *(v99 + 8);
  v41(v34, v7);
  if ((v88 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  v88 = v41;
  v45 = v98;
  v46 = *(*v98 + 120);
  v47 = *(v101 + 48);
  v48 = v95;
  (v39)(v95, v97 + *(*v97 + 120), v7);
  (v39)(&v48[v47], v45 + v46, v7);
  v49 = v94;
  if (v94(v48, 1, v5) == 1)
  {
    if (v49(&v48[v47], 1, v5) != 1)
    {
      goto LABEL_19;
    }

    v94 = v49;
    v88(v48, v7);
  }

  else
  {
    v50 = v93;
    (v39)(v93, v48, v7);
    if (v49(&v48[v47], 1, v5) == 1)
    {
      (*(v102 + 8))(v50, v5);
      goto LABEL_19;
    }

    v94 = v49;
    v51 = v102;
    v52 = &v48[v47];
    v53 = v96;
    (*(v102 + 32))(v96, v52, v5);
    v86 = sub_1D7261FBC();
    v54 = *(v51 + 8);
    v54(v53, v5);
    v54(v50, v5);
    v88(v48, v7);
    if ((v86 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v55 = v98;
  v56 = *(*v98 + 128);
  v57 = v7;
  v58 = v39;
  v59 = *(v101 + 48);
  v48 = v92;
  v58(v92, v97 + *(*v97 + 128), v57);
  v58(&v48[v59], v55 + v56, v57);
  v60 = v94;
  v61 = v94(v48, 1, v5);
  v87 = v58;
  if (v61 != 1)
  {
    v65 = v91;
    v58(v91, v48, v57);
    if (v60(&v48[v59], 1, v5) != 1)
    {
      v68 = v102;
      v69 = v96;
      (*(v102 + 32))(v96, &v48[v59], v5);
      v70 = sub_1D7261FBC();
      v71 = *(v68 + 8);
      v71(v69, v5);
      v71(v65, v5);
      v72 = v48;
      v64 = v88;
      v88(v72, v57);
      v63 = v57;
      if ((v70 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    (*(v102 + 8))(v65, v5);
LABEL_19:
    (*(v100 + 8))(v48, v101);
    goto LABEL_20;
  }

  if (v60(&v48[v59], 1, v5) != 1)
  {
    goto LABEL_19;
  }

  v62 = v48;
  v63 = v57;
  v64 = v88;
  v88(v62, v57);
LABEL_23:
  v73 = v98;
  v74 = *(*v98 + 136);
  v75 = *(v101 + 48);
  v76 = v89;
  v77 = v63;
  v78 = v63;
  v79 = v87;
  v87(v89, v97 + *(*v97 + 136), v77);
  v79(&v76[v75], v73 + v74, v78);
  v80 = v94;
  if (v94(v76, 1, v5) == 1)
  {
    if (v80(&v76[v75], 1, v5) == 1)
    {
      v64(v76, v78);
      v66 = 1;
      return v66 & 1;
    }
  }

  else
  {
    v79(v90, v76, v78);
    if (v80(&v76[v75], 1, v5) != 1)
    {
      v81 = v102;
      v82 = v96;
      (*(v102 + 32))(v96, &v76[v75], v5);
      v83 = v90;
      v66 = sub_1D7261FBC();
      v84 = *(v81 + 8);
      v84(v82, v5);
      v84(v83, v5);
      v64(v76, v78);
      return v66 & 1;
    }

    (*(v102 + 8))(v90, v5);
  }

  (*(v100 + 8))(v76, v101);
LABEL_20:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_1D5F1D674(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6373627553746F6ELL && a2 == 0xED00006465626972 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657269707865 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61697274 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D5F1D7E4(unsigned __int8 a1)
{
  v1 = 0x6269726373627573;
  v2 = 0x64657269707865;
  if (a1 != 2)
  {
    v2 = 0x6C61697274;
  }

  if (a1)
  {
    v1 = 0x6373627553746F6ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5F1D8A4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D5DEA28C(v3, *v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F1D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1D5F1D96C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F1D9A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5F1D9FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D5F1DA50()
{
  v1 = *(*v0 + 112);
  v2 = sub_1D726393C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 120), v2);
  v3(v0 + *(*v0 + 128), v2);
  v3(v0 + *(*v0 + 136), v2);
  return v0;
}

uint64_t sub_1D5F1DB60()
{
  sub_1D5F1DA50();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F1DBB4(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v12[0] = *(*v2 + 96);
  v12[1] = v4;
  v13[0] = v4;
  v13[1] = v12[0];
  type metadata accessor for LegacyFeedGroupKnobsRuleValue.CodingKeys(255, v13);
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  LOBYTE(v13[0]) = 0;
  v10 = v14;
  sub_1D72643BC();
  if (!v10)
  {
    LOBYTE(v13[0]) = 1;
    sub_1D72643BC();
    LOBYTE(v13[0]) = 2;
    sub_1D72643BC();
    LOBYTE(v13[0]) = 3;
    sub_1D72643BC();
  }

  return (*(v6 + 8))(v9, v5);
}

char *sub_1D5F1DE2C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_1D5F194CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5F1DE88(uint64_t a1)
{
  v2 = v1;
  v48[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v4 = v2[3];
    v48[0] = v2[2];
    v48[1] = v4;

    v5 = sub_1D6844380(v48);

    v43 = *(v5 + 16);
    if (!v43)
    {
LABEL_91:

      return 0;
    }

    v39[1] = v2;
    v40 = a1;
    v6 = 0;
    v47 = 0;
    v42 = v5 + 32;
    v44 = v5;
LABEL_7:
    if (v6 < *(v5 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  v45 = v6;
  v8 = (v42 + 56 * v6);
  v9 = v8[1];
  v11 = v8[3];
  v10 = v8[4];
  v13 = v8[5];
  v12 = v8[6];
  LOBYTE(v8) = *(v11 + 32);
  v14 = v8 & 0x3F;
  v15 = ((1 << v8) + 63) >> 6;
  v16 = (8 * v15);
  swift_bridgeObjectRetain_n();

  v46 = v9;

  if (v14 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v16 = swift_slowAlloc();

      v36 = v47;
      v2 = sub_1D5FB8818(v16, v15, v11, a1);

      v47 = v36;
      if (v36)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v16, -1, -1);
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v18);
  bzero(v39 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);
  v19 = v47;
  sub_1D5FB88DC((v39 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0)), v15, v11, a1);
  v47 = v19;
  if (!v19)
  {
    v2 = v20;

LABEL_11:
    v21 = v12;
    v22 = sub_1D5BFC390(v2, v11);

    if ((v22 & 1) == 0 || (sub_1D670EDB8(a1, v10), (v23 & 1) == 0))
    {

LABEL_49:
      v5 = v44;
      v7 = v45;
      goto LABEL_6;
    }

    v24 = *(v13 + 16);
    v41 = v10;
    if (!v24)
    {
      v29 = *(v12 + 16);
      if (!v29)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v25 = 0;
    v26 = (v13 + 40);
    while (v25 < *(v13 + 16))
    {
      v2 = *v26;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v27 = sub_1D726203C();
          v28 = [objc_opt_self() systemImageNamed_];

          if (!v28)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v40;
            goto LABEL_49;
          }

LABEL_45:
          ++v25;
          v26 += 2;
          if (v24 == v25)
          {

            v29 = *(v21 + 16);
            if (!v29)
            {
LABEL_92:
            }

LABEL_53:

            v30 = 0;
            v31 = (v21 + 40);
            while (1)
            {
              if (v30 >= *(v21 + 16))
              {
                goto LABEL_95;
              }

              v32 = *(v31 - 1);
              v2 = *v31;
              swift_bridgeObjectRetain_n();
              v33 = sub_1D61E05F4(v32, v2);
              if (v33 != 13)
              {
                break;
              }

              v34 = sub_1D726203C();
              v35 = [objc_opt_self() systemImageNamed_];

              if (v35)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              ++v30;
              v31 += 2;
              if (v29 == v30)
              {

                goto LABEL_92;
              }
            }

            a1 = v40;
            v5 = v44;
            switch(v33)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v7 = v45;
LABEL_6:
            v6 = v7 + 1;
            if (v6 == v43)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v38 = v47;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v16, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5F1EA44(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1D5F1EB38(uint64_t a1)
{
  result = sub_1D726393C();
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

void sub_1D5F1ED9C(uint64_t a1)
{
  v2 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v121 = (v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v115 = (v110 - v7);
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v124 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v118 = (v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = (v110 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v110 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v110 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v112 = (v110 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v111 = (v110 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v114 = (v110 - v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v113 = v110 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v116 = v110 - v36;
  v37 = *(a1 + 16);
  v131 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v37, 0);
  v38 = v131;
  v39 = a1 + 56;
  v40 = -1;
  v41 = -1 << *(a1 + 32);
  if (-v41 < 64)
  {
    v40 = ~(-1 << -v41);
  }

  v42 = v40 & *(a1 + 56);
  v43 = (63 - v41) >> 6;
  v122 = a1;
  v123 = v43;
  v125 = v8;
  v120 = v37;
  if (!v37)
  {

    v45 = 0;
    v75 = v122;
    if (v42)
    {
      goto LABEL_62;
    }

    do
    {
LABEL_63:
      v76 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_118;
      }

      if (v76 >= v43)
      {

        return;
      }

      v42 = *(v39 + 8 * v76);
      ++v45;
    }

    while (!v42);
    v127 = v38;
    v45 = v76;
    while (1)
    {
      v77 = v113;
      sub_1D5F23584(*(v75 + 48) + *(v124 + 72) * (__clz(__rbit64(v42)) | (v45 << 6)), v113, type metadata accessor for WebEmbedDataVisualization);
      v78 = v77;
      v79 = v116;
      sub_1D5F2364C(v78, v116, type metadata accessor for WebEmbedDataVisualization);
      v80 = v114;
      sub_1D5F23584(v79, v114, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D5F2364C(v80, v115, type metadata accessor for GenericDataVisualization);
      v81 = v112;
      sub_1D5F23584(v79, v112, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5F235EC(v81, type metadata accessor for WebEmbedDataVisualization);
        v82 = 0xE700000000000000;
        v83 = 0x636972656E6567;
        v84 = v116;
      }

      else
      {
        v94 = *v81 >> 61;

        if (v94 <= 2)
        {
          v84 = v116;
          if (v94)
          {
            if (v94 == 1)
            {
              v82 = 0xE800000000000000;
              v83 = 0x676E69646E617473;
            }

            else
            {
              v82 = 0xE700000000000000;
              v83 = 0x74656B63617262;
            }
          }

          else
          {
            v82 = 0xE500000000000000;
            v83 = 0x65726F6373;
          }
        }

        else
        {
          v84 = v116;
          if (v94 > 4)
          {
            if (v94 == 5)
            {
              v83 = 0x65527972756A6E69;
              v82 = 0xEC00000074726F70;
            }

            else
            {
              v82 = 0xE900000000000072;
              v83 = 0x6579616C5079656BLL;
            }
          }

          else if (v94 == 3)
          {
            v82 = 0xE800000000000000;
            v83 = 0x65726F6353786F62;
          }

          else
          {
            v83 = 0x726F6353656E696CLL;
            v82 = 0xE900000000000065;
          }
        }
      }

      v129 = v83;
      v130 = v82;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      v85 = v115;
      MEMORY[0x1DA6F9910](*v115, v115[1]);
      v86 = v129;
      v87 = v130;
      sub_1D5F235EC(v85, type metadata accessor for GenericDataVisualization);
LABEL_88:
      sub_1D5F235EC(v84, type metadata accessor for WebEmbedDataVisualization);
      v38 = v127;
      v131 = v127;
      v102 = *(v127 + 16);
      v101 = *(v127 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_1D5BFC364((v101 > 1), v102 + 1, 1);
        v38 = v131;
      }

      v42 &= v42 - 1;
      *(v38 + 16) = v102 + 1;
      v103 = v38 + 16 * v102;
      *(v103 + 32) = v86;
      *(v103 + 40) = v87;
      v43 = v123;
      if (!v42)
      {
        goto LABEL_63;
      }

LABEL_62:
      v127 = v38;
    }

    v88 = *v80;
    v89 = v79;
    v90 = v111;
    sub_1D5F23584(v89, v111, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5F235EC(v90, type metadata accessor for WebEmbedDataVisualization);
      v91 = 0xE700000000000000;
      v92 = 0x636972656E6567;
      v84 = v116;
    }

    else
    {
      v95 = *v90 >> 61;

      if (v95 <= 2)
      {
        v84 = v116;
        if (v95)
        {
          if (v95 == 1)
          {
            v91 = 0xE800000000000000;
            v92 = 0x676E69646E617473;
          }

          else
          {
            v91 = 0xE700000000000000;
            v92 = 0x74656B63617262;
          }
        }

        else
        {
          v91 = 0xE500000000000000;
          v92 = 0x65726F6373;
        }
      }

      else
      {
        v84 = v116;
        if (v95 > 4)
        {
          if (v95 == 5)
          {
            v92 = 0x65527972756A6E69;
            v91 = 0xEC00000074726F70;
          }

          else
          {
            v91 = 0xE900000000000072;
            v92 = 0x6579616C5079656BLL;
          }
        }

        else if (v95 == 3)
        {
          v91 = 0xE800000000000000;
          v92 = 0x65726F6353786F62;
        }

        else
        {
          v92 = 0x726F6353656E696CLL;
          v91 = 0xE900000000000065;
        }
      }
    }

    v129 = v92;
    v130 = v91;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v93 = v88 >> 61;
    if ((v88 >> 61) <= 2)
    {
      if (v93)
      {
        v96 = v88 & 0x1FFFFFFFFFFFFFFFLL;
        if (v93 != 1)
        {
          v105 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
          sub_1D5E4CF90(0);

          v126 = v105;
          sub_1D725BE8C();
          v106 = v128[8];
          swift_unknownObjectRetain();

          if (v106 && (v107 = [v106 asSports], swift_unknownObjectRelease(), v107) && (v108 = objc_msgSend(v107, sel_UMCCanonicalID), swift_unknownObjectRelease(), v108))
          {
            v99 = sub_1D726207C();
            v100 = v109;
          }

          else
          {
            sub_1D725BE8C();
            v99 = v128[5];
            v100 = v128[6];
          }

          goto LABEL_87;
        }

        v97 = *(v96 + 16);
        v99 = *(v97 + 40);
        v100 = *(v97 + 48);
      }

      else
      {
        v104 = *(v88 + 16);
        v99 = *(v104 + 40);
        v100 = *(v104 + 48);
      }
    }

    else
    {
      v98 = *((v88 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v99 = *(v98 + 32);
      v100 = *(v98 + 40);
    }

LABEL_87:
    MEMORY[0x1DA6F9910](v99, v100);

    v86 = v129;
    v87 = v130;
    v75 = v122;
    goto LABEL_88;
  }

  v44 = 0;
  v45 = 0;
  v119 = v17;
  v126 = v21;
  while (v42)
  {
LABEL_10:
    sub_1D5F23584(*(v122 + 48) + *(v124 + 72) * (__clz(__rbit64(v42)) | (v45 << 6)), v21, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5F23584(v21, v17, type metadata accessor for WebEmbedDataVisualization);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v127 = v38;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5F2364C(v17, v121, type metadata accessor for GenericDataVisualization);
      v48 = v118;
      sub_1D5F23584(v21, v118, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5F235EC(v48, type metadata accessor for WebEmbedDataVisualization);
        v49 = 0xE700000000000000;
        v50 = 0x636972656E6567;
      }

      else
      {
        v59 = *v48 >> 61;

        if (v59 <= 2)
        {
          if (v59)
          {
            if (v59 == 1)
            {
              v49 = 0xE800000000000000;
              v50 = 0x676E69646E617473;
            }

            else
            {
              v49 = 0xE700000000000000;
              v50 = 0x74656B63617262;
            }
          }

          else
          {
            v49 = 0xE500000000000000;
            v50 = 0x65726F6373;
          }
        }

        else if (v59 > 4)
        {
          if (v59 == 5)
          {
            v50 = 0x65527972756A6E69;
            v49 = 0xEC00000074726F70;
          }

          else
          {
            v49 = 0xE900000000000072;
            v50 = 0x6579616C5079656BLL;
          }
        }

        else if (v59 == 3)
        {
          v49 = 0xE800000000000000;
          v50 = 0x65726F6353786F62;
        }

        else
        {
          v50 = 0x726F6353656E696CLL;
          v49 = 0xE900000000000065;
        }
      }

      v129 = v50;
      v130 = v49;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      v51 = v121;
      MEMORY[0x1DA6F9910](*v121, v121[1]);
      v52 = v129;
      v53 = v130;
      sub_1D5F235EC(v51, type metadata accessor for GenericDataVisualization);
      goto LABEL_31;
    }

    v54 = *v17;
    v55 = v117;
    sub_1D5F23584(v21, v117, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5F235EC(v55, type metadata accessor for WebEmbedDataVisualization);
      v56 = 0xE700000000000000;
      v57 = 0x636972656E6567;
    }

    else
    {
      v60 = *v55 >> 61;

      if (v60 <= 2)
      {
        if (v60)
        {
          if (v60 == 1)
          {
            v56 = 0xE800000000000000;
            v57 = 0x676E69646E617473;
          }

          else
          {
            v56 = 0xE700000000000000;
            v57 = 0x74656B63617262;
          }
        }

        else
        {
          v56 = 0xE500000000000000;
          v57 = 0x65726F6373;
        }
      }

      else if (v60 > 4)
      {
        if (v60 == 5)
        {
          v57 = 0x65527972756A6E69;
          v56 = 0xEC00000074726F70;
        }

        else
        {
          v56 = 0xE900000000000072;
          v57 = 0x6579616C5079656BLL;
        }
      }

      else if (v60 == 3)
      {
        v56 = 0xE800000000000000;
        v57 = 0x65726F6353786F62;
      }

      else
      {
        v57 = 0x726F6353656E696CLL;
        v56 = 0xE900000000000065;
      }
    }

    v129 = v57;
    v130 = v56;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v58 = v54 >> 61;
    if ((v54 >> 61) <= 2)
    {
      if (v58)
      {
        v61 = v54 & 0x1FFFFFFFFFFFFFFFLL;
        if (v58 != 1)
        {
          v70 = *(v61 + 16);
          sub_1D5E4CF90(0);

          v110[2] = v70;
          sub_1D725BE8C();
          v71 = v128[8];
          swift_unknownObjectRetain();

          if (v71 && (v72 = [v71 asSports], swift_unknownObjectRelease(), v72) && (v73 = objc_msgSend(v72, sel_UMCCanonicalID), swift_unknownObjectRelease(), v73))
          {
            v65 = sub_1D726207C();
            v64 = v74;
          }

          else
          {
            sub_1D725BE8C();
            v65 = v128[5];
            v64 = v128[6];
          }

          goto LABEL_30;
        }

        v62 = *(v61 + 16);
        v65 = *(v62 + 40);
        v64 = *(v62 + 48);
      }

      else
      {
        v69 = *(v54 + 16);
        v65 = *(v69 + 40);
        v64 = *(v69 + 48);
      }
    }

    else
    {
      v63 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *(v63 + 32);
      v64 = *(v63 + 40);
    }

LABEL_30:
    MEMORY[0x1DA6F9910](v65, v64);

    v52 = v129;
    v53 = v130;
LABEL_31:
    sub_1D5F235EC(v126, type metadata accessor for WebEmbedDataVisualization);
    v38 = v127;
    v131 = v127;
    v67 = *(v127 + 16);
    v66 = *(v127 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_1D5BFC364((v66 > 1), v67 + 1, 1);
      v38 = v131;
    }

    ++v44;
    v42 &= v42 - 1;
    *(v38 + 16) = v67 + 1;
    v68 = v38 + 16 * v67;
    *(v68 + 32) = v52;
    *(v68 + 40) = v53;
    v17 = v119;
    v21 = v126;
    v43 = v123;
    if (v44 == v120)
    {
      v75 = v122;
      if (v42)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      goto LABEL_119;
    }

    v42 = *(v39 + 8 * v46);
    ++v45;
    if (v42)
    {
      v45 = v46;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:

  __break(1u);
}

uint64_t sub_1D5F1FC7C(uint64_t a1)
{
  v2 = v1;
  sub_1D725A76C();
  v4 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = sub_1D6D62B84(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  sub_1D725A77C();
  return v8;
}

uint64_t sub_1D5F1FD24(uint64_t a1, uint64_t a2)
{
  v2 = &OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_genericTokenManager;
  if (!*(a2 + 16))
  {
    v2 = &OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_sportsTokenManager;
  }

  sub_1D5B68374(a1 + *v2, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v3 = sub_1D725B44C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D5F1FDD4(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v62 = a4;
  v63 = a2;
  v67 = a1;
  v64 = sub_1D72577EC();
  v61 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v5);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B54408(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v68 = &v53 - v10;
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = &v53 - v17;
  v18 = sub_1D7257B5C();
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54408(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v7);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v53 - v24;
  v26 = sub_1D7257C7C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) + 24);
  sub_1D7257BCC();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1D5F237E8(v25, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    v32 = type metadata accessor for WebEmbedDataVisualizationDataServiceError(0);
    sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError, &unk_1D733349C);
    swift_allocError();
    (*(v12 + 16))(v33, &a3[v31], v11);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v56 = v11;
    v57 = a3;
    v34 = *(v27 + 32);
    v55 = v26;
    v34(v30, v25, v26);
    sub_1D7257BAC();
    sub_1D7257BBC();
    v35 = sub_1D7257B9C();
    if (*v36)
    {
      v37 = v36;
      v54 = v35;
      sub_1D725BF1C();
      sub_1D7257B2C();

      v38 = *v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1D698BCB0(0, v38[2] + 1, 1, v38);
        *v37 = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1D698BCB0((v40 > 1), v41 + 1, 1, v38);
        *v37 = v38;
      }

      v42 = v12;
      v38[2] = v41 + 1;
      (*(v65 + 32))(v38 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v41, v21, v66);
      v54(v69, 0);
    }

    else
    {
      v35(v69, 0);
      v42 = v12;
    }

    v43 = v68;
    sub_1D7257BDC();
    v44 = v56;
    v45 = (*(v42 + 48))(v43, 1, v56);
    v46 = v57;
    if (v45 == 1)
    {
      sub_1D5F237E8(v43, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v47 = v42;
      v32 = type metadata accessor for WebEmbedDataVisualizationDataServiceError(0);
      sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError, &unk_1D733349C);
      swift_allocError();
      (*(v47 + 16))(v48, v46 + v31, v44);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v49 = v59;
      (*(v42 + 32))(v59, v43, v44);
      (*(v42 + 16))(v58, v49, v44);
      v50 = v60;
      sub_1D72577AC();
      sub_1D72577DC();
      v51 = v42;
      v32 = sub_1D5F205A0(v46, v50, v62 & 1);
      (*(v61 + 8))(v50, v64);
      (*(v51 + 8))(v49, v44);
    }

    (*(v27 + 8))(v30, v55);
  }

  return v32;
}

uint64_t sub_1D5F205A0(uint64_t a1, uint64_t a2, int a3)
{
  v83 = a3;
  v86 = a2;
  v88 = *v3;
  v87 = sub_1D72577EC();
  v80 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v5);
  v85 = v6;
  v90 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725891C();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v78 = v9;
  v79 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v89 = v70 - v12;
  v13 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13, v16);
  v77 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v70 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v70 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (v70 - v27);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725C42C();
  __swift_project_value_buffer(v29, qword_1EDF17598);
  sub_1D5F23584(a1, v28, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  sub_1D5F23584(a1, v24, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v84 = a1;
  sub_1D5F23584(a1, v20, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v30 = sub_1D725C3FC();
  v31 = sub_1D7262E9C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v13;
    v33 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v92[0] = v75;
    *v33 = 136446722;
    v76 = v14;
    v34 = *v28;
    v35 = v28[1];

    LODWORD(v74) = v31;
    sub_1D5F235EC(v28, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    v36 = sub_1D5BC5100(v34, v35, v92);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;
    v37 = sub_1D5F215E4(*&v24[*(v32 + 32)]);
    v39 = v38;
    sub_1D5F235EC(v24, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    v40 = sub_1D5BC5100(v37, v39, v92);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2082;
    v14 = v76;
    sub_1D72585BC();
    sub_1D5F23AEC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v41 = sub_1D72644BC();
    v43 = v42;
    sub_1D5F235EC(v20, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    v44 = sub_1D5BC5100(v41, v43, v92);

    *(v33 + 24) = v44;
    _os_log_impl(&dword_1D5B42000, v30, v74, "WebEmbedDataVisualizationDataService executing fetch with identifier=%{public}s; visualizations=%{public}s, url=%{public}s", v33, 0x20u);
    v45 = v75;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v45, -1, -1);
    MEMORY[0x1DA6FD500](v33, -1, -1);
  }

  else
  {

    sub_1D5F235EC(v20, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    sub_1D5F235EC(v28, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    sub_1D5F235EC(v24, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  }

  v46 = sub_1D725890C();
  MEMORY[0x1EEE9AC00](v46, v47);
  v48 = v86;
  v49 = v91;
  v70[-2] = v86;
  v70[-1] = v49;
  v50 = v49;
  sub_1D5F23530(0, &unk_1EDF17B38, MEMORY[0x1E69D68E0]);
  v70[1] = sub_1D725BDCC();
  v75 = *(v50 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_networkQueue);
  v51 = v77;
  sub_1D5F23584(v84, v77, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v52 = v80;
  v76 = *(v80 + 16);
  v53 = v48;
  v54 = v87;
  (v76)(v90, v53, v87);
  v55 = *(v14 + 80);
  v72 = (v55 + 16) & ~v55;
  v73 = v72 + v15;
  v56 = v72;
  v57 = *(v52 + 80);
  v58 = (v72 + v15 + v57) & ~v57;
  v74 = v55 | v57 | 7;
  v59 = swift_allocObject();
  v71 = type metadata accessor for WebEmbedDataVisualizationDataRequest;
  sub_1D5F2364C(v51, v59 + v56, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v80 = *(v52 + 32);
  v60 = v90;
  (v80)(v59 + v58, v90, v54);
  type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  v70[2] = sub_1D725BA9C();

  sub_1D5F23584(v84, v51, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v62 = v81;
  v61 = v82;
  v63 = v79;
  (*(v81 + 16))(v79, v89, v82);
  (v76)(v60, v86, v54);
  v64 = (v73 + *(v62 + 80)) & ~*(v62 + 80);
  v65 = (v78 + v57 + v64) & ~v57;
  v66 = v65 + v85;
  v67 = swift_allocObject();
  sub_1D5F2364C(v51, v67 + v72, v71);
  (*(v62 + 32))(v67 + v64, v63, v61);
  (v80)(v67 + v65, v90, v87);
  *(v67 + v66) = v83 & 1;
  v68 = sub_1D725BB7C();

  (*(v62 + 8))(v89, v61);
  return v68;
}

uint64_t sub_1D5F20DFC(uint64_t a1)
{
  v2 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v59 = (v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WebEmbedDataVisualization(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v56 = (v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = (v54 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v54 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v54 - v18;
  v64 = 91;
  v65 = 0xE100000000000000;
  v20 = *(a1 + 16);
  v63 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v20, 0);
  v21 = v63;
  if (v20)
  {
    v22 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v57 = *(v6 + 72);
    v58 = v5;
    while (1)
    {
      sub_1D5F23584(v22, v19, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5F23584(v19, v15, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D5F2364C(v15, v59, type metadata accessor for GenericDataVisualization);
      v23 = v56;
      sub_1D5F23584(v19, v56, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5F235EC(v23, type metadata accessor for WebEmbedDataVisualization);
        v24 = 0xE700000000000000;
        v25 = 0x636972656E6567;
      }

      else
      {
        v34 = *v23 >> 61;

        if (v34 <= 2)
        {
          if (v34)
          {
            if (v34 == 1)
            {
              v24 = 0xE800000000000000;
              v25 = 0x676E69646E617473;
            }

            else
            {
              v24 = 0xE700000000000000;
              v25 = 0x74656B63617262;
            }
          }

          else
          {
            v24 = 0xE500000000000000;
            v25 = 0x65726F6373;
          }
        }

        else if (v34 > 4)
        {
          if (v34 == 5)
          {
            v25 = 0x65527972756A6E69;
            v24 = 0xEC00000074726F70;
          }

          else
          {
            v24 = 0xE900000000000072;
            v25 = 0x6579616C5079656BLL;
          }
        }

        else if (v34 == 3)
        {
          v24 = 0xE800000000000000;
          v25 = 0x65726F6353786F62;
        }

        else
        {
          v25 = 0x726F6353656E696CLL;
          v24 = 0xE900000000000065;
        }
      }

      v61 = v25;
      v62 = v24;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      v26 = v59;
      MEMORY[0x1DA6F9910](*v59, v59[1]);
      v27 = v61;
      v28 = v62;
      sub_1D5F235EC(v26, type metadata accessor for GenericDataVisualization);
LABEL_24:
      sub_1D5F235EC(v19, type metadata accessor for WebEmbedDataVisualization);
      v63 = v21;
      v42 = *(v21 + 16);
      v41 = *(v21 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D5BFC364((v41 > 1), v42 + 1, 1);
        v21 = v63;
      }

      *(v21 + 16) = v42 + 1;
      v43 = v21 + 16 * v42;
      *(v43 + 32) = v27;
      *(v43 + 40) = v28;
      v22 += v57;
      if (!--v20)
      {
        goto LABEL_52;
      }
    }

    v29 = *v15;
    v30 = v55;
    sub_1D5F23584(v19, v55, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5F235EC(v30, type metadata accessor for WebEmbedDataVisualization);
      v31 = 0xE700000000000000;
      v32 = 0x636972656E6567;
    }

    else
    {
      v35 = *v30 >> 61;

      if (v35 <= 2)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            v31 = 0xE800000000000000;
            v32 = 0x676E69646E617473;
          }

          else
          {
            v31 = 0xE700000000000000;
            v32 = 0x74656B63617262;
          }
        }

        else
        {
          v31 = 0xE500000000000000;
          v32 = 0x65726F6373;
        }
      }

      else if (v35 > 4)
      {
        if (v35 == 5)
        {
          v32 = 0x65527972756A6E69;
          v31 = 0xEC00000074726F70;
        }

        else
        {
          v31 = 0xE900000000000072;
          v32 = 0x6579616C5079656BLL;
        }
      }

      else if (v35 == 3)
      {
        v31 = 0xE800000000000000;
        v32 = 0x65726F6353786F62;
      }

      else
      {
        v32 = 0x726F6353656E696CLL;
        v31 = 0xE900000000000065;
      }
    }

    v61 = v32;
    v62 = v31;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v33 = v29 >> 61;
    if ((v29 >> 61) <= 2)
    {
      if (v33)
      {
        v36 = v29 & 0x1FFFFFFFFFFFFFFFLL;
        if (v33 != 1)
        {
          v45 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
          sub_1D5E4CF90(0);

          v54[1] = v45;
          sub_1D725BE8C();
          v46 = v60[8];
          swift_unknownObjectRetain();

          if (v46 && (v47 = [v46 asSports], swift_unknownObjectRelease(), v47) && (v48 = objc_msgSend(v47, sel_UMCCanonicalID), swift_unknownObjectRelease(), v48))
          {
            v40 = sub_1D726207C();
            v39 = v49;
          }

          else
          {
            sub_1D725BE8C();
            v40 = v60[5];
            v39 = v60[6];
          }

          goto LABEL_23;
        }

        v37 = *(v36 + 16);
        v40 = *(v37 + 40);
        v39 = *(v37 + 48);
      }

      else
      {
        v44 = *(v29 + 16);
        v40 = *(v44 + 40);
        v39 = *(v44 + 48);
      }
    }

    else
    {
      v38 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *(v38 + 32);
      v39 = *(v38 + 40);
    }

LABEL_23:
    MEMORY[0x1DA6F9910](v40, v39);

    v27 = v61;
    v28 = v62;
    goto LABEL_24;
  }

LABEL_52:
  v61 = v21;

  sub_1D5F81CCC(&v61);

  sub_1D5F23530(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v50 = sub_1D7261F3C();
  v52 = v51;

  MEMORY[0x1DA6F9910](v50, v52);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  return v64;
}

uint64_t sub_1D5F215E4(uint64_t a1)
{
  v7 = 91;
  v8 = 0xE100000000000000;
  sub_1D5F1ED9C(a1);
  v6 = v1;

  sub_1D5F81CCC(&v6);

  sub_1D5F23530(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v2 = sub_1D7261F3C();
  v4 = v3;

  MEMORY[0x1DA6F9910](v2, v4);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  return v7;
}

uint64_t sub_1D5F216E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725AA5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72577EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AC4C();
  (*(v10 + 16))(v13, a1, v9);
  (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_networkProxy, v4);
  sub_1D5F23858(0);
  v15 = objc_allocWithZone(v14);
  v16 = sub_1D725B6CC();
  v17 = sub_1D725AC1C();

  return v17;
}

uint64_t sub_1D5F218A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v67 = a2;
  v75 = a3;
  v68 = type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  MEMORY[0x1EEE9AC00](v68, v4);
  v6 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D725B2CC();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B54408(0, &qword_1EDF18B00, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v62 - v13;
  v74 = sub_1D72577EC();
  v15 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v16);
  v73 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D72585BC();
  v18 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v19);
  v76 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54408(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v10);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v62 - v27;
  sub_1D5F23530(0, &unk_1EDF17B38, MEMORY[0x1E69D68E0]);
  v29 = sub_1D725B58C();
  if (!v29)
  {
LABEL_7:
    type metadata accessor for WebEmbedDataVisualizationDataServiceError(0);
    sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError, &unk_1D733349C);
    swift_allocError();
    v38 = v37;
    v39 = sub_1D725B58C();
    if (v39)
    {
      v40 = v39;
      v41 = [v39 URL];

      if (v41)
      {
        sub_1D72584EC();

        v42 = *(v18 + 56);
        v43 = v24;
        v44 = 0;
      }

      else
      {
        v42 = *(v18 + 56);
        v43 = v24;
        v44 = 1;
      }

      v45 = v79;
      v42(v43, v44, 1, v79);
      sub_1D5EB8540(v24, v28);
      if ((*(v18 + 48))(v28, 1, v45) != 1)
      {
        (*(v18 + 32))(v38, v28, v45);
LABEL_21:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return v45;
      }
    }

    else
    {
      v45 = v79;
      (*(v18 + 56))(v28, 1, 1, v79);
    }

    v60 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
    (*(v18 + 16))(v38, v75 + *(v60 + 24), v45);
    if ((*(v18 + 48))(v28, 1, v45) != 1)
    {
      sub_1D5F237E8(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    }

    goto LABEL_21;
  }

  v30 = v29;
  objc_opt_self();
  v72 = swift_dynamicCastObjCClass();
  if (!v72)
  {

    goto LABEL_7;
  }

  v31 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) + 24);
  v64 = v18;
  v32 = *(v18 + 16);
  v33 = v75 + v31;
  v75 = v18 + 16;
  v63 = v32;
  v32(v76, v33, v79);
  sub_1D725B57C();
  v34 = *(v15 + 48);
  v35 = v74;
  v36 = v34(v14, 1, v74);
  v65 = v15;
  if (v36 == 1)
  {
    (*(v15 + 16))(v73, v66, v35);
    if (v34(v14, 1, v35) != 1)
    {
      sub_1D5F237E8(v14, &qword_1EDF18B00, MEMORY[0x1E6967EC8]);
    }
  }

  else
  {
    (*(v15 + 32))(v73, v14, v35);
  }

  sub_1D725B56C();
  v66 = v77;
  v62 = v78;
  sub_1D725A76C();
  swift_beginAccess();
  sub_1D5F22E5C(v76, v46);
  swift_endAccess();

  sub_1D725A77C();
  v47 = v30;
  v48 = v69;
  sub_1D725B2BC();
  sub_1D725B2AC();
  v49 = v64;
  if (v50)
  {
    v51 = 60;
  }

  else
  {
    v51 = sub_1D7264BAC();
  }

  v52 = v65;
  v53 = v68;
  v54 = v6 + *(v68 + 24);
  v55 = v6;
  v56 = v76;
  v63(v54, v76, v79);
  v58 = v73;
  v57 = v74;
  (*(v52 + 16))(v55 + *(v53 + 28), v73, v74);
  v59 = v62;
  *v55 = v66;
  v55[1] = v59;
  v55[2] = v51;
  *(v55 + *(v53 + 32)) = v72;
  sub_1D5B54408(0, &qword_1EDF17A78, type metadata accessor for WebEmbedDataVisualizationDataResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v45 = sub_1D725BB1C();
  (*(v70 + 8))(v48, v71);
  (*(v52 + 8))(v58, v57);
  (*(v49 + 8))(v56, v79);
  return v45;
}

uint64_t sub_1D5F220A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v83 = a6;
  v91 = a4;
  v92 = a5;
  v94 = a3;
  v99 = a2;
  v90 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v80 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v7);
  v81 = v8;
  v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54408(0, &qword_1EDF17B00, MEMORY[0x1E69D6950], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v93 = &v79 - v11;
  v101 = sub_1D72577EC();
  v88 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101, v12);
  v100 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725891C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725B2CC();
  v98 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D725B72C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v84 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v85 = &v79 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v79 - v32);
  v102 = a1;
  v89 = a1;
  v34 = a1;
  v87 = sub_1D5BA6EF4();
  v35 = swift_dynamicCast();
  v36 = MEMORY[0x1E69D6948];
  v95 = v24;
  v96 = v23;
  if (v35)
  {
    if ((*(v24 + 88))(v33, v23) == *v36)
    {
      (*(v24 + 96))(v33, v23);
      v37 = *v33;
      sub_1D725B2BC();
      sub_1D725B2AC();
      v39 = v38;
      if (v38)
      {

        v40 = 0;
      }

      else
      {
        v40 = sub_1D7264BAC();
      }

      v97 = v40;
      (*(v98 + 8))(v22, v19);
      LODWORD(v98) = v39;
      goto LABEL_9;
    }

    (*(v24 + 8))(v33, v23);
  }

  v97 = 0;
  LODWORD(v98) = 1;
LABEL_9:

  v41 = v99;
  v86 = *(v99 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lock);
  sub_1D725A76C();
  v90 = *(v90 + 24);
  v42 = *(v15 + 16);
  v43 = v14;
  v42(v18, v91, v14);
  v44 = v88;
  (*(v88 + 16))(v100, v92, v101);
  type metadata accessor for WebEmbedDataVisualizationDataServiceFailure(0);
  v45 = swift_allocObject();
  v46 = v89;
  *(v45 + 16) = v89;
  v42((v45 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate), v18, v43);
  v47 = v46;
  sub_1D725890C();
  (*(v15 + 8))(v18, v43);
  (*(v44 + 32))(v45 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_request, v100, v101);
  v48 = v45 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_maxAge;
  *v48 = v97;
  *(v48 + 8) = v98 & 1;
  v49 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103 = *(v41 + v49);
  *(v41 + v49) = 0x8000000000000000;
  v51 = v94;
  sub_1D6D78410(v45, v94 + v90, isUniquelyReferenced_nonNull_native);
  *(v41 + v49) = v103;
  swift_endAccess();
  sub_1D725A77C();
  v52 = v46;
  v102 = v46;
  v53 = v46;
  v54 = v93;
  v55 = v96;
  v56 = swift_dynamicCast();
  v57 = v95;
  v58 = *(v95 + 56);
  if (v56)
  {
    v58(v54, 0, 1, v55);
    v59 = v85;
    (*(v57 + 32))(v85, v54, v55);
    v60 = *(v57 + 16);
    v61 = v84;
    v60(v84, v59, v55);
    if ((*(v57 + 88))(v61, v55) == *MEMORY[0x1E69D6948])
    {
      (*(v57 + 96))(v61, v55);
      v62 = *v61;
      if ([v62 statusCode] == 403 && (v83 & 1) != 0)
      {
        MEMORY[0x1EEE9AC00](403, v63);
        *(&v79 - 2) = v99;
        *(&v79 - 1) = v51;
        sub_1D72585BC();
        sub_1D725BDCC();
        v64 = v51;
        v65 = v82;
        sub_1D5F23584(v64, v82, type metadata accessor for WebEmbedDataVisualizationDataRequest);
        v66 = (*(v80 + 80) + 16) & ~*(v80 + 80);
        v67 = swift_allocObject();
        sub_1D5F2364C(v65, v67 + v66, type metadata accessor for WebEmbedDataVisualizationDataRequest);
        v68 = v57;
        v69 = sub_1D725B92C();
        type metadata accessor for WebEmbedDataVisualizationDataResult(0);
        type metadata accessor for WebEmbedDataVisualizationDataService(0);
        v51 = sub_1D725BA9C();

        (*(v68 + 8))(v59, v55);
      }

      else
      {
        type metadata accessor for WebEmbedDataVisualizationDataServiceError(0);
        sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError, &unk_1D733349C);
        swift_allocError();
        v51 = v76;
        v77 = [v62 statusCode];
        *v51 = v97;
        *(v51 + 8) = v98 & 1;
        *(v51 + 16) = v77;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v57 + 8))(v59, v55);
      }
    }

    else
    {
      v101 = *(v57 + 8);
      v101(v61, v55);
      type metadata accessor for WebEmbedDataVisualizationDataServiceError(0);
      sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError, &unk_1D733349C);
      swift_allocError();
      v73 = v72;
      sub_1D5F23AEC(&qword_1EC881078, MEMORY[0x1E69D6950], MEMORY[0x1E69D6958]);
      v51 = swift_allocError();
      v74 = v85;
      v60(v75, v85, v55);
      *v73 = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v101(v74, v55);
    }
  }

  else
  {
    v58(v54, 1, 1, v55);
    sub_1D5F237E8(v54, &qword_1EDF17B00, MEMORY[0x1E69D6950]);
    type metadata accessor for WebEmbedDataVisualizationDataServiceError(0);
    sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError, &unk_1D733349C);
    swift_allocError();
    *v70 = v52;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v71 = v52;
  }

  return v51;
}

uint64_t sub_1D5F22BEC(uint64_t a1, uint64_t a2)
{
  v2 = &OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_genericTokenManager;
  if (!*(a2 + 16))
  {
    v2 = &OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_sportsTokenManager;
  }

  sub_1D5B68374(a1 + *v2, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v3 = sub_1D725B43C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D5F22C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v15 = a2;
  v16 = a3;
  sub_1D725BF2C();
  sub_1D725BDCC();
  sub_1D5F23584(a3, &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1D5F2364C(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  *(v10 + v9 + v7) = 0;
  v11 = sub_1D725B92C();
  type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  type metadata accessor for WebEmbedDataVisualizationDataService(0);
  v12 = sub_1D725BA9C();

  return v12;
}

uint64_t sub_1D5F22E5C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_1D6D62B84(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v13 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D7FF3C();
    v8 = v13;
  }

  v9 = *(v8 + 48);
  v10 = sub_1D72585BC();
  (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
  v11 = *(*(v8 + 56) + 8 * v6);
  sub_1D6713B30(v6, v8);
  *v3 = v8;
  return v11;
}

double sub_1D5F22F24@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D5B91830(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D86960();
      v9 = v12;
    }

    sub_1D5B808F0(*(v9 + 56) + 16 * v7, a2);
    sub_1D671588C(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1D7279980;
  }

  return result;
}

uint64_t sub_1D5F22FBC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_networkProxy;
  v2 = sub_1D725AA5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_sportsTokenManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_genericTokenManager));

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F230B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v14 = *v2;
  v15 = a1;
  sub_1D725BF2C();
  sub_1D725BDCC();
  sub_1D5F23584(a1, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1D5F2364C(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  *(v9 + v8 + v6) = 1;
  v10 = sub_1D725B92C();
  type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  v11 = sub_1D725BA9C();

  return v11;
}

uint64_t sub_1D5F232F4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D72577EC() - 8);
  return sub_1D5F218A0(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_1D5F233D4(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D725891C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D72577EC() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  return sub_1D5F220A0(a1, a2, v2 + v6, v2 + v9, v2 + v12, *(v2 + v12 + *(v11 + 64)));
}

void sub_1D5F23530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5F23584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F235EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5F2364C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F2374C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D5F1FDD4(a1, a2, (v2 + v6), *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_1D5F237E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B54408(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D5F23858(uint64_t a1)
{
  if (!qword_1EDF17B08)
  {
    sub_1D725B39C();
    v1 = sub_1D725B6DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17B08);
    }
  }
}

unint64_t sub_1D5F238E0(uint64_t a1)
{
  result = sub_1D72585BC();
  if (v2 <= 0x3F)
  {
    result = sub_1D72577EC();
    if (v3 <= 0x3F)
    {
      result = sub_1D5B60C04();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D5F239BC(uint64_t a1)
{
  sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    sub_1D5F23A58(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5F23A58(uint64_t a1)
{
  if (!qword_1EDF04808)
  {
    type metadata accessor for WebEmbedDataVisualization(255);
    sub_1D5F23AEC(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
    v1 = sub_1D7262BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04808);
    }
  }
}

uint64_t sub_1D5F23AEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL static FormatSupplementaryNodeRubberbandTrait.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_1D5F23BEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t FormatSupplementaryNodeRubberbandTraitTransform.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F23CD4(uint64_t a1)
{
  result = sub_1D5F23CFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F23CFC()
{
  result = qword_1EC881080;
  if (!qword_1EC881080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881080);
  }

  return result;
}

unint64_t sub_1D5F23D90()
{
  result = qword_1EDF1C9E8;
  if (!qword_1EDF1C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C9E8);
  }

  return result;
}

unint64_t sub_1D5F23DE4()
{
  result = qword_1EDF06620;
  if (!qword_1EDF06620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06620);
  }

  return result;
}

unint64_t sub_1D5F23E38()
{
  result = qword_1EC881088;
  if (!qword_1EC881088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881088);
  }

  return result;
}

unint64_t sub_1D5F23E90()
{
  result = qword_1EC881090;
  if (!qword_1EC881090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881090);
  }

  return result;
}

unint64_t sub_1D5F23EE4(uint64_t a1)
{
  result = sub_1D5F23F0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F23F0C()
{
  result = qword_1EC881098;
  if (!qword_1EC881098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881098);
  }

  return result;
}

uint64_t sub_1D5F23FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F23FF4()
{
  result = qword_1EDF05FE8;
  if (!qword_1EDF05FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FE8);
  }

  return result;
}

unint64_t sub_1D5F24048()
{
  result = qword_1EC8810A0;
  if (!qword_1EC8810A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8810A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatSupplementaryNodeRubberbandTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FormatSupplementaryNodeRubberbandTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D5F24254(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D5F24268(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *sub_1D5F24298(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 2)
  {
    v12 = MEMORY[0x1E69E6F90];
    sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v5 = inited + 32;
    sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v12);
    sub_1D5EA74B8(0);
    v7 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v10 = 0x45206F54206E6950;
    v11 = 0xEB00000000656764;
    v9 = (v8 + v7);
    goto LABEL_5;
  }

  if (v2 == 3)
  {
    v3 = MEMORY[0x1E69E6F90];
    sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v5 = inited + 32;
    sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v3);
    sub_1D5EA74B8(0);
    v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = (v8 + v7);
    v10 = 1701736270;
    v11 = 0xE400000000000000;
LABEL_5:
    sub_1D711F844(1701869908, 0xE400000000000000, v10, v11, v9);
    v14 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v14 - 8) + 56))(v8 + v7, 0, 1, v14);
    sub_1D6795150(0x6162726562627552, 0xEA0000000000646ELL, 0, 0, v8, v29);
    swift_setDeallocating();
    sub_1D5EF5F0C(v8 + v7, sub_1D5EA74B8);
    goto LABEL_10;
  }

  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v5 = inited + 32;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v15);
  sub_1D5EA74B8(0);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  v20 = (v19 + v18);
  sub_1D711F844(1701869908, 0xE400000000000000, 0xD000000000000011, 0x80000001D73C2550, v20);
  v21 = type metadata accessor for FormatInspectionItem(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 0, 1, v21);
  if (v2)
  {
    v23 = 0xEB00000000592065;
  }

  else
  {
    v23 = 0xE900000000000065;
  }

  v24 = sub_1D711F844(0x726F66736E617254, 0xE90000000000006DLL, 0x6C61635320706F54, v23, &v20[v17]);
  (v22)(&v20[v17], 0, 1, v21, v24);
  sub_1D6795150(0x6162726562627552, 0xEA0000000000646ELL, 0, 0, v19, v29);
  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_10:
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v25 = swift_allocObject();
  *(inited + 32) = v25;
  *(v25 + 48) = v30;
  v26 = v29[1];
  *(v25 + 16) = v29[0];
  *(v25 + 32) = v26;
  v27 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v5, sub_1D5E4F358);
  return v27;
}

void sub_1D5F24888(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for DebugFormatLayoutTreePackage(0);
  sub_1D5F25C74(&qword_1EC8810A8, type metadata accessor for DebugFormatLayoutTreePackage, &unk_1D7347ED8);
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  sub_1D5F25F40(0, &qword_1EC8810B0, sub_1D5F256CC, sub_1D5F25A44);
  sub_1D5F26288(0, &qword_1EC881100, sub_1D5F25AF4, MEMORY[0x1E69E6720]);
  sub_1D5F25CBC();
  sub_1D5F25DCC();

  sub_1D7260FFC();
  sub_1D726185C();
  v10 = sub_1D726199C();
  sub_1D5F25F40(0, &qword_1EC881158, sub_1D5F25FB4, sub_1D5F260A0);
  *(a5 + *(v11 + 36)) = v10;
}

uint64_t sub_1D5F24AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D5F25AF4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v23 >> 62)
  {
    v20 = sub_1D7263BFC();

    if (v20)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 1;
    return (*(v12 + 56))(a5, v19, 1, v11);
  }

  v16 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_1D5F26288(0, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
  v22 = v18;
  sub_1D725895C();
  sub_1D5F25BEC();
  sub_1D5F25EEC();
  sub_1D5F25C74(&qword_1EC881180, type metadata accessor for DebugFormatLayoutTreeItem, &unk_1D735EA88);

  sub_1D72619EC();
  (*(v12 + 32))(a5, v15, v11);
  v19 = 0;
  return (*(v12 + 56))(a5, v19, 1, v11);
}

uint64_t sub_1D5F24DFC@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for DebugFormatLayoutTree(0);
  sub_1D5F25C74(&qword_1EC881188, type metadata accessor for DebugFormatLayoutTree, &unk_1D72F7CA0);

  v4 = sub_1D7260F8C();
  v6 = v5;
  type metadata accessor for DebugFormatLayoutTreeItem(0);
  sub_1D5F25C74(&qword_1EC881190, type metadata accessor for DebugFormatLayoutTreeItem, &unk_1D735EAC0);
  result = sub_1D7260F8C();
  *a3 = v4;
  a3[1] = v6;
  a3[2] = result;
  a3[3] = v8;
  return result;
}

double sub_1D5F24EF8@<D0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = sub_1D72611CC();
  v22 = 1;
  sub_1D5F25058(a4, &v14);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v30[0] = v14;
  v30[1] = v15;
  v30[2] = v16;
  v30[3] = v17;
  v30[4] = v18;
  v30[5] = v19;
  v30[6] = v20;
  sub_1D5F26134(&v23, &v13);
  sub_1D5F262EC(v30, &qword_1EC8810C0, sub_1D5F25780, MEMORY[0x1E6981F40]);
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[103] = v29;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[39] = v25;
  v8 = *&v21[80];
  *(a5 + 81) = *&v21[64];
  *(a5 + 97) = v8;
  *(a5 + 113) = *&v21[96];
  v9 = *&v21[16];
  *(a5 + 17) = *v21;
  *(a5 + 33) = v9;
  result = *&v21[32];
  v11 = *&v21[48];
  *(a5 + 49) = *&v21[32];
  v12 = v22;
  *a5 = v7;
  *(a5 + 8) = 0;
  *(a5 + 16) = v12;
  *(a5 + 128) = *&v21[111];
  *(a5 + 65) = v11;
  *(a5 + 136) = 0;
  return result;
}

double sub_1D5F25058@<D0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = sub_1D72618CC();
  v8 = sub_1D726188C();
  KeyPath = swift_getKeyPath();
  v10 = sub_1D726125C();
  LOBYTE(v23[0]) = 1;
  sub_1D5F25220(a4, v19);
  *&v18[55] = v20;
  *&v18[39] = v19[2];
  *&v18[23] = v19[1];
  *&v18[7] = v19[0];
  v11 = v23[0];
  v21 = v10;
  v22[0] = v23[0];
  v12 = *&v18[16];
  *&v22[1] = *v18;
  *&v22[64] = *(&v20 + 1);
  *&v22[49] = *&v18[48];
  v13 = *&v18[32];
  *&v22[33] = *&v18[32];
  v14 = *v18;
  *&v22[17] = *&v18[16];
  *(a5 + 40) = *v22;
  *(a5 + 24) = v10;
  *(a5 + 88) = *&v22[48];
  v15 = *&v22[16];
  *(a5 + 72) = *&v22[32];
  *(a5 + 56) = v15;
  *a5 = v7;
  *(a5 + 8) = KeyPath;
  *(a5 + 16) = v8;
  *(a5 + 104) = *&v22[64];
  v23[0] = v10;
  v23[1] = 0;
  v24 = v11;
  v25 = v14;
  *&v28[15] = *&v18[63];
  *v28 = *&v18[48];
  v27 = v13;
  v26 = v12;

  sub_1D5F261C8(&v21, &v17);
  sub_1D5F2622C(v23);

  return result;
}

uint64_t sub_1D5F25220@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v62 = a2;
  sub_1D5F26288(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v52 - v5;
  v61 = *(a1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_layoutResult);
  v7 = *(v61 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory);
  v8 = (v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = *(v7 + 16);
  }

  v64 = v9;
  v65 = v10;
  v57 = sub_1D5BF4D9C();

  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  v55 = sub_1D726163C();
  v16 = *(v55 - 8);
  v54 = *(v16 + 56);
  v56 = v16 + 56;
  v54(v6, 1, 1, v55);
  sub_1D726167C();
  v53 = MEMORY[0x1E6980E30];
  v52 = MEMORY[0x1E69E6720];
  sub_1D5F262EC(v6, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  v17 = sub_1D72616DC();
  v19 = v18;
  v21 = v20;

  sub_1D5F26348(v11, v13, v15 & 1);

  sub_1D726187C();
  v22 = sub_1D72616BC();
  v59 = v23;
  v60 = v22;
  v25 = v24;
  v58 = v26;

  sub_1D5F26348(v17, v19, v21 & 1);

  v27 = *(v61 + 24);
  v64 = *(v61 + 16);
  v65 = v27;

  v28 = sub_1D726171C();
  v30 = v29;
  LOBYTE(v17) = v31;
  v54(v6, 1, 1, v55);
  sub_1D726167C();
  sub_1D5F262EC(v6, &qword_1EC881178, v53, v52);
  v32 = sub_1D72616DC();
  v34 = v33;
  v36 = v35;

  sub_1D5F26348(v28, v30, v17 & 1);

  v37 = sub_1D72616AC();
  v39 = v38;
  LOBYTE(v17) = v40;
  sub_1D5F26348(v32, v34, v36 & 1);

  sub_1D726188C();
  v41 = sub_1D72616BC();
  v43 = v42;
  LOBYTE(v34) = v44;
  v46 = v45;

  sub_1D5F26348(v37, v39, v17 & 1);

  v47 = v58 & 1;
  v63 = v58 & 1;
  LOBYTE(v64) = v58 & 1;
  LOBYTE(v37) = v34 & 1;
  v66 = v34 & 1;
  v48 = v62;
  v49 = v59;
  v50 = v60;
  *v62 = v60;
  v48[1] = v25;
  *(v48 + 16) = v47;
  v48[3] = v49;
  v48[4] = v41;
  v48[5] = v43;
  *(v48 + 48) = v37;
  v48[7] = v46;
  sub_1D5F26358(v50, v25, v47);

  sub_1D5F26358(v41, v43, v37);

  sub_1D5F26348(v41, v43, v37);

  sub_1D5F26348(v50, v25, v63);
}

void sub_1D5F256CC(uint64_t a1)
{
  if (!qword_1EC8810B8)
  {
    sub_1D5F26288(255, &qword_1EC8810C0, sub_1D5F25780, MEMORY[0x1E6981F40]);
    sub_1D5F259E0(&qword_1EC8810F0, &qword_1EC8810C0, sub_1D5F25780);
    v1 = sub_1D726197C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8810B8);
    }
  }
}

void sub_1D5F25780(uint64_t a1)
{
  if (!qword_1EC8810C8)
  {
    sub_1D5F257F0(255);
    sub_1D5F258D0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8810C8);
    }
  }
}

void sub_1D5F257F0(uint64_t a1)
{
  if (!qword_1EC87E040)
  {
    sub_1D5F26288(255, &qword_1EC87E048, sub_1D5F25880, MEMORY[0x1E6980A08]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC87E040);
    }
  }
}

void sub_1D5F25880()
{
  if (!qword_1EC87E050)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E050);
    }
  }
}

void sub_1D5F258D0(uint64_t a1)
{
  if (!qword_1EC8810D0)
  {
    sub_1D5F26288(255, &qword_1EC8810D8, sub_1D5F25984, MEMORY[0x1E6981F40]);
    sub_1D5F259E0(&qword_1EC8810E8, &qword_1EC8810D8, sub_1D5F25984);
    v1 = sub_1D726198C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8810D0);
    }
  }
}

void sub_1D5F25984()
{
  if (!qword_1EC8810E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8810E0);
    }
  }
}

uint64_t sub_1D5F259E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5F26288(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5F25A44(uint64_t a1)
{
  if (!qword_1EC89AE80)
  {
    sub_1D5F25AA0();
    v1 = sub_1D726140C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC89AE80);
    }
  }
}

unint64_t sub_1D5F25AA0()
{
  result = qword_1EC8810F8;
  if (!qword_1EC8810F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8810F8);
  }

  return result;
}

void sub_1D5F25AF4(uint64_t a1)
{
  if (!qword_1EC881108)
  {
    sub_1D5F26288(255, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
    sub_1D725895C();
    sub_1D5F25BEC();
    sub_1D5F25C74(&qword_1EC881120, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC881108);
    }
  }
}

unint64_t sub_1D5F25BEC()
{
  result = qword_1EC881118;
  if (!qword_1EC881118)
  {
    sub_1D5F26288(255, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881118);
  }

  return result;
}

uint64_t sub_1D5F25C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5F25CBC()
{
  result = qword_1EC881128;
  if (!qword_1EC881128)
  {
    sub_1D5F25F40(255, &qword_1EC8810B0, sub_1D5F256CC, sub_1D5F25A44);
    sub_1D5F25C74(&qword_1EC881130, sub_1D5F256CC, MEMORY[0x1E69817F8]);
    sub_1D5F25C74(&qword_1EC881138, sub_1D5F25A44, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881128);
  }

  return result;
}

unint64_t sub_1D5F25DCC()
{
  result = qword_1EC881140;
  if (!qword_1EC881140)
  {
    sub_1D5F26288(255, &qword_1EC881100, sub_1D5F25AF4, MEMORY[0x1E69E6720]);
    sub_1D5F25E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881140);
  }

  return result;
}

unint64_t sub_1D5F25E74()
{
  result = qword_1EC881148;
  if (!qword_1EC881148)
  {
    sub_1D5F25AF4(255);
    sub_1D5F25EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881148);
  }

  return result;
}

unint64_t sub_1D5F25EEC()
{
  result = qword_1EC881150;
  if (!qword_1EC881150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881150);
  }

  return result;
}

void sub_1D5F25F40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5F25FB4(uint64_t a1)
{
  if (!qword_1EC881160)
  {
    sub_1D5F25F40(255, &qword_1EC8810B0, sub_1D5F256CC, sub_1D5F25A44);
    sub_1D5F26288(255, &qword_1EC881100, sub_1D5F25AF4, MEMORY[0x1E69E6720]);
    sub_1D5F25CBC();
    sub_1D5F25DCC();
    v1 = sub_1D726100C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC881160);
    }
  }
}

void sub_1D5F260A0(uint64_t a1)
{
  if (!qword_1EC881168)
  {
    sub_1D72614BC();
    sub_1D5F25C74(&qword_1EC881170, MEMORY[0x1E697C9E8], MEMORY[0x1E697C9E0]);
    v1 = sub_1D726141C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC881168);
    }
  }
}

uint64_t sub_1D5F26134(uint64_t a1, uint64_t a2)
{
  sub_1D5F26288(0, &qword_1EC8810C0, sub_1D5F25780, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F261C8(uint64_t a1, uint64_t a2)
{
  sub_1D5F258D0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F2622C(uint64_t a1)
{
  sub_1D5F258D0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F26288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5F262EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D5F26288(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D5F26348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1D5F26358(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1D5F26374()
{
  result = qword_1EC881198;
  if (!qword_1EC881198)
  {
    sub_1D5F25F40(255, &qword_1EC881158, sub_1D5F25FB4, sub_1D5F260A0);
    sub_1D5F25C74(&qword_1EC8811A0, sub_1D5F25FB4, MEMORY[0x1E697C158]);
    sub_1D5F25C74(&qword_1EC8811A8, sub_1D5F260A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881198);
  }

  return result;
}

uint64_t type metadata accessor for FormatSharedItemData(uint64_t a1)
{
  result = qword_1EDF0EDE0;
  if (!qword_1EDF0EDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F264D0(uint64_t a1)
{
  result = type metadata accessor for SharedItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F26530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SharedItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatSharedItemData(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF2EB38 != -1)
  {
    swift_once();
  }

  sub_1D5F267D0(v3, v11, type metadata accessor for FormatSharedItemData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D5F2676C(v11, v7);
  if (EnumCaseMultiPayload == 1)
  {
    SharedItemManager.hideContextMenuItem(for:)(v17);
  }

  else
  {
    SharedItemManager.replyContextMenuItem(for:)(v7, v17);
  }

  sub_1D5F268F4(v7, type metadata accessor for SharedItem);
  sub_1D5F267D0(v17, v15, sub_1D5F26838);
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v13 = sub_1D725DF5C();
    sub_1D5F268F4(v17, sub_1D5F26838);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_1D5F268F4(v17, sub_1D5F26838);
    sub_1D5F268F4(v15, sub_1D5F26838);
    return 0;
  }

  return v13;
}

uint64_t sub_1D5F2676C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F267D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5F26838(uint64_t a1)
{
  if (!qword_1EDF3B530)
  {
    sub_1D5F26890();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B530);
    }
  }
}

unint64_t sub_1D5F26890()
{
  result = qword_1EDF3B540;
  if (!qword_1EDF3B540)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3B540);
  }

  return result;
}

uint64_t sub_1D5F268F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s8NewsFeed27FormatImageAdjustmentFilterO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    switch(*&v2)
    {
      case 1:
        if (*&v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (*&v3 != 2)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (*&v3 != 3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (*&v3 != 4)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (*&v3 != 5)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (*&v3 != 6)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (*&v3 != 7)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (*&v3 != 8)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (*&v3 != 9)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xALL:
        if (*&v3 != 10)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xBLL:
        if (*&v3 != 11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xCLL:
        if (*&v3 != 12)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xDLL:
        if (*&v3 != 13)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xELL:
        if (*&v3 != 14)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xFLL:
        if (*&v3 <= 0xEuLL)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v3 != 0.0)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && v2 == v3;
  }

  return result;
}

unint64_t sub_1D5F26B28(uint64_t a1)
{
  result = sub_1D5F26B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F26B50()
{
  result = qword_1EC8811B0;
  if (!qword_1EC8811B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811B0);
  }

  return result;
}

unint64_t sub_1D5F26BA4(void *a1)
{
  a1[1] = sub_1D5F26BDC();
  a1[2] = sub_1D5F26C30();
  result = sub_1D5F26C84();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F26BDC()
{
  result = qword_1EDF225F8;
  if (!qword_1EDF225F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF225F8);
  }

  return result;
}

unint64_t sub_1D5F26C30()
{
  result = qword_1EDF0AFF8;
  if (!qword_1EDF0AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFF8);
  }

  return result;
}

unint64_t sub_1D5F26C84()
{
  result = qword_1EC8811B8;
  if (!qword_1EC8811B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811B8);
  }

  return result;
}

uint64_t sub_1D5F26CE8(uint64_t a1)
{
  v17 = a1;
  v16 = sub_1D726307C();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D5B5DA7C();
  v15[1] = "canvasRenderQueue";
  v15[2] = v10;
  sub_1D7261AFC();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D5B71010(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v11 = MEMORY[0x1E69E8030];
  sub_1D5B6D284(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D5B6321C(&qword_1EDF1AE80, &unk_1EDF1AE90, v11);
  sub_1D7263B6C();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v16);
  v12 = sub_1D72630BC();
  v13 = v17;
  *(v1 + 16) = v12;
  *(v1 + 24) = v13;
  return v1;
}

double sub_1D5F26F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v30 = a3;
  v36 = sub_1D7261ABC();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v6);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D7261B2C();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F2AF78(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10, v14);
  v15 = type metadata accessor for DebugFormatCanvasBindRequest(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v18);
  v19 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 + 16);
  sub_1D5F2B48C(v30, v19, type metadata accessor for DebugFormatCanvasBindRequest);
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v12 + 80) + v21 + 8) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  sub_1D5F2B424(v19, v23 + v20, type metadata accessor for DebugFormatCanvasBindRequest);
  *(v23 + v21) = v32;
  (*(v12 + 32))(v23 + v22, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_1D5F2AFF8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_5;
  v24 = _Block_copy(aBlock);

  v25 = v31;
  sub_1D7261AEC();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D5B71010(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v26 = MEMORY[0x1E69E7F60];
  sub_1D5B6D284(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5B6321C(&qword_1EDF1B560, &qword_1EDF1B570, v26);
  v27 = v34;
  v28 = v36;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v25, v27, v24);
  _Block_release(v24);
  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v25, v37);

  return result;
}

uint64_t sub_1D5F27414(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for DebugFormatCanvasBindResult(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v14 - v11;
  sub_1D5F2754C(a2, a3, v14 - v11);
  sub_1D5F2B48C(v12, v8, type metadata accessor for DebugFormatCanvasBindResult);
  sub_1D5F2AF78(0);
  sub_1D726287C();
  return sub_1D5F2B188(v12, type metadata accessor for DebugFormatCanvasBindResult);
}

void sub_1D5F2754C(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v168 = a2;
  v149 = a3;
  v9 = sub_1D7259CFC();
  v154 = *(v9 - 8);
  v155 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v152 = (&v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = sub_1D7259F5C();
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v12);
  v150 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725BD1C();
  v147 = *(v14 - 8);
  v148 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v146 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v145 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v180 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for FormatDebuggerWorkspaceStackFrame(0);
  MEMORY[0x1EEE9AC00](v161, v23);
  v160 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v176 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = a1;
  v29 = *a1;
  if (*a1 >= 2uLL)
  {

    sub_1D6D2C438(v30);
    sub_1D5F2B1E8(v29);
  }

  v170 = v25;
  v225 = MEMORY[0x1E69E7CC0];
  v144 = type metadata accessor for DebugFormatCanvasBindRequest(0);
  v31 = v178 + *(v144 + 28);
  v32 = *(v31 + 25);
  if (v32 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v34 = MEMORY[0x1E69E7CC0];
    v157 = v29;
    v226 = v26;
    if (i)
    {
      *&v214 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      if (i < 0)
      {
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_49;
      }

      v35 = 0;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v35, v32);
        }

        else
        {
        }

        ++v35;

        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      while (i != v35);
      v34 = v214;
      v29 = v157;
    }

    v172 = v34;
    v224 = v34;
    v222 = MEMORY[0x1E69E7CD0];
    v223 = MEMORY[0x1E69E7CD0];
    type metadata accessor for FormatContentSubgroupNeighborsResolver();
    v36 = *(v31 + 3);
    v216 = *(v31 + 2);
    v217 = v36;
    v218 = *(v31 + 4);
    v37 = *(v31 + 1);
    v214 = *v31;
    v215 = v37;
    v38 = *(v31 + 10);
    v25 = *(v31 + 11);
    v3 = *(v31 + 12);
    *(v220 + 8) = *(v31 + 104);
    *(&v220[1] + 8) = *(v31 + 120);
    *(&v220[2] + 8) = *(v31 + 136);
    v39 = *(v31 + 152);
    v40 = *(v31 + 168);
    *(&v220[5] + 8) = *(v31 + 184);
    *(&v220[4] + 8) = v40;
    *(&v220[3] + 8) = v39;
    v41 = *(v31 + 25);
    v26 = *(v31 + 26);
    *&v219 = v38;
    *(&v219 + 1) = v25;
    *(&v220[6] + 1) = v41;
    *&v220[0] = v3;
    v221 = v26;
    v42 = sub_1D6C567D4();
    sub_1D5CE998C(v42, v212);

    v156 = *(v26 + 16);
    if (!v156)
    {
      break;
    }

    v43 = v26;
    v169 = *&v212[0];
    v44 = *(v31 + 11);
    v220[4] = *(v31 + 10);
    v220[5] = v44;
    v220[6] = *(v31 + 12);
    v221 = *(v31 + 26);
    v45 = *(v31 + 7);
    v220[0] = *(v31 + 6);
    v220[1] = v45;
    v46 = *(v31 + 9);
    v220[2] = *(v31 + 8);
    v220[3] = v46;
    v47 = *(v31 + 3);
    v216 = *(v31 + 2);
    v217 = v47;
    v48 = *(v31 + 5);
    v218 = *(v31 + 4);
    v219 = v48;
    v49 = *(v31 + 1);
    v214 = *v31;
    v215 = v49;
    v32 = v176;
    if (*(v26 + 16))
    {
      v26 = 0;
      v179 = 0;
      v162 = *(&v219 + 1);
      v159 = *&v220[0];
      v167 = BYTE3(v220[6]);
      v50 = v43 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
      v163 = *(v226 + 72);
      v165 = v156 - 1;
      height = 0.0;
      v51 = 1;
      v171 = MEMORY[0x1E69E7CC0];
      width = 0.0;
      y = 0.0;
      x = 0.0;
      v52 = 0.0;
      v164 = v43;
      v158 = v31;
      while (1)
      {
        v174 = v51;
        v173 = v50;
        sub_1D5F2B48C(v50, v32, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v208 = v220[4];
        v209 = v220[5];
        v210 = v220[6];
        v211 = v221;
        v204 = v220[0];
        v205 = v220[1];
        v206 = v220[2];
        v207 = v220[3];
        v200 = v216;
        v201 = v217;
        v202 = v218;
        v203 = v219;
        v198 = v214;
        v199 = v215;
        sub_1D5F2B0D8(&v214, v190);
        v226 = sub_1D6912660(&v198);
        v212[10] = v208;
        v212[11] = v209;
        v212[12] = v210;
        v213 = v211;
        v212[6] = v204;
        v212[7] = v205;
        v212[8] = v206;
        v212[9] = v207;
        v212[2] = v200;
        v212[3] = v201;
        v212[4] = v202;
        v212[5] = v203;
        v212[0] = v198;
        v212[1] = v199;
        sub_1D5F2B134(v212);
        v53 = v167;
        if (v29 >= 2)
        {
          v54 = *(v31 + 5);
          v202 = *(v31 + 4);
          v203 = v54;
          v55 = *(v31 + 3);
          v200 = *(v31 + 2);
          v201 = v55;
          v56 = *(v31 + 9);
          v206 = *(v31 + 8);
          v207 = v56;
          v57 = *(v31 + 7);
          v204 = *(v31 + 6);
          v205 = v57;
          v211 = *(v31 + 26);
          v58 = *(v31 + 12);
          v209 = *(v31 + 11);
          v210 = v58;
          v208 = *(v31 + 10);
          v59 = *(v31 + 1);
          v198 = *v31;
          v199 = v59;
          v162 = *(&v203 + 1);
          v159 = v204;
          v60 = v26;
          v61 = BYTE3(v58);
          v63 = v160;
          v62 = v161;
          sub_1D5F2B48C(v32, &v160[*(v161 + 20)], type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v64 = v203;
          *(v63 + 64) = v202;
          *(v63 + 80) = v64;
          v65 = v201;
          *(v63 + 32) = v200;
          *(v63 + 48) = v65;
          v66 = v207;
          *(v63 + 128) = v206;
          *(v63 + 144) = v66;
          v67 = v205;
          *(v63 + 96) = v204;
          *(v63 + 112) = v67;
          *(v63 + 208) = v211;
          v68 = v210;
          *(v63 + 176) = v209;
          *(v63 + 192) = v68;
          *(v63 + 160) = v208;
          v69 = v199;
          *v63 = v198;
          *(v63 + 16) = v69;
          *(v63 + *(v62 + 24)) = v226;
          sub_1D5F2B27C(v29);
          sub_1D5F2B0D8(&v198, v190);
          v53 = v61;
          v26 = v60;
          v31 = v158;

          sub_1D725A76C();
          swift_beginAccess();
          sub_1D5B6D284(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
          sub_1D725B8BC();
          swift_endAccess();
          sub_1D725A77C();
          sub_1D5F2B188(v63, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
          sub_1D5F2B1E8(v29);
        }

        v70 = v170;
        v166 = *(v32 + *(v170 + 24));

        MEMORY[0x1DA6F9CE0](v71);
        if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v32 = v176;
        }

        sub_1D726278C();
        v172 = v224;
        v72 = *(v32 + *(v70 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;

        sub_1D5D63A8C(v73);
        sub_1D5B68374(v72 + 8, &v198);
        v74 = *(&v199 + 1);
        v75 = v32;
        v76 = v200;
        __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
        v77 = (*(v76 + 80))(v74, v76);
        sub_1D5B886D0(v77);
        __swift_destroy_boxed_opaque_existential_1(&v198);
        sub_1D5F29604(v178, v179, v180);
        v78 = v169;
        if (*(v169 + 16) && (v79 = sub_1D5B69D90(*v75, v75[1]), (v80 & 1) != 0))
        {
          v81 = (*(v78 + 56) + 16 * v79);
          v83 = *v81;
          v82 = v81[1];
        }

        else
        {
          v83 = MEMORY[0x1E69E7CD0];
          v82 = MEMORY[0x1E69E7CC0];
        }

        if (qword_1EDF34BB8 != -1)
        {
          swift_once();
        }

        LOBYTE(v198) = v53 == 33;
        swift_task_localValuePush();
        *&v198 = v83;
        *(&v198 + 1) = v82;
        v84 = v175;
        v85 = sub_1D5F29A08(v178, v176, v226, v180, &v198, v168);
        v86 = v84;
        if (v84)
        {

          swift_task_localValuePop();

          goto LABEL_40;
        }

        v87 = v85;
        v175 = 0;
        swift_task_localValuePop();
        v3 = (v87 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes);
        v86 = *(v87 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 72);
        if (v86)
        {
          break;
        }

        MEMORY[0x1DA6F9CE0](v88);
        if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v89 = v3[1];
        v90 = v3[2];
        v91 = v3[3];
        v92 = v3[4];
        v32 = v176;
        v171 = v225;
        if (v174)
        {
          x = v89;
          y = v90;
          width = v91;
          height = v92;
        }

        else
        {
          v227.origin.x = x;
          v227.origin.y = y;
          v227.size.width = width;
          v227.size.height = height;
          v228 = CGRectUnion(v227, *&v89);
          x = v228.origin.x;
          y = v228.origin.y;
          width = v228.size.width;
          height = v228.size.height;
          v89 = v3[1];
          v90 = v3[2];
          v91 = v3[3];
          v92 = v3[4];
        }

        v229.origin.x = v89;
        v229.origin.y = v90;
        v229.size.width = v91;
        v229.size.height = v92;
        v93 = CGRectGetHeight(v229);

        sub_1D5F2B188(v180, type metadata accessor for GroupLayoutContext);
        v94 = *(v3 + 5);

        v25 = *(v94 + 16);

        v95 = __OFADD__(v179, v25);
        v179 += v25;
        if (v95)
        {
          goto LABEL_59;
        }

        sub_1D5F2B188(v32, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        if (v165 == v26)
        {

          v3 = v159;
          goto LABEL_43;
        }

        v51 = 0;
        ++v26;
        v52 = v52 + v93;
        v50 = v173 + v163;
        if (v26 >= *(v164 + 16))
        {
          goto LABEL_58;
        }
      }

      v96 = v86;

      swift_willThrow();

LABEL_40:

      v97 = v176;
      v98 = (v176 + *(v170 + 28));
      v99 = v98[5];
      v100 = v98[7];
      v195 = v98[6];
      v196 = v100;
      v101 = v98[7];
      v197 = v98[8];
      v102 = v98[1];
      v103 = v98[3];
      v191 = v98[2];
      v192 = v103;
      v104 = v98[3];
      v105 = v98[5];
      v193 = v98[4];
      v194 = v105;
      v106 = v98[1];
      v190[0] = *v98;
      v190[1] = v106;
      v187 = v195;
      v188 = v101;
      v189 = v98[8];
      v183 = v191;
      v184 = v104;
      v185 = v193;
      v186 = v99;
      v181 = v190[0];
      v182 = v102;
      v107 = *(v177 + 24);
      sub_1D5D65D5C(v190, &v198);
      sub_1D6A12C54(v166, &v181, v107, v86);
      v204 = v187;
      v205 = v188;
      v206 = v189;
      v200 = v183;
      v201 = v184;
      v202 = v185;
      v203 = v186;
      v198 = v181;
      v199 = v182;
      sub_1D5D68304(&v198);
      swift_willThrow();

      sub_1D5F2B188(v180, type metadata accessor for GroupLayoutContext);
      sub_1D5F2B188(v97, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      if (v29 < 2)
      {
        return;
      }

      sub_1D6D2CBFC();
      v108 = v29;
      goto LABEL_56;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v162 = v25;

  v171 = MEMORY[0x1E69E7CC0];
  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
LABEL_43:
  type metadata accessor for FormatNodeDebugData();
  i = swift_allocObject();
  type metadata accessor for FormatNodeDebugRecords();
  v109 = swift_allocObject();
  v110 = MEMORY[0x1E69E7CC0];
  *(v109 + 16) = MEMORY[0x1E69E7CC0];
  *(i + 16) = v109;
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  *(i + 24) = v111;
  type metadata accessor for FormatSourceMapCollection();
  v112 = swift_allocObject();
  v113 = MEMORY[0x1E69E7CC8];
  *(v112 + 16) = MEMORY[0x1E69E7CC8];
  *(v112 + 24) = v113;
  *(i + 32) = v112;
  v25 = *(v177 + 24);
  v226 = v223;
  if (v29 == 1)
  {
    v114 = type metadata accessor for FormatLogger();
    inited = swift_initStaticObject();
    *&v216 = &protocol witness table for FormatLogger;
    *(&v215 + 1) = v114;
    *&v214 = inited;
  }

  else
  {
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v116 = qword_1EC9BA710;
    v117 = type metadata accessor for DebugFormatLogger();
    *&v216 = &off_1F5125BB8;
    *(&v215 + 1) = v117;
    *&v214 = v116;
  }

  v118 = *(*(v25 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_fontManager) + 16);
  sub_1D72596FC();

  v29 = v118;
  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    goto LABEL_62;
  }

LABEL_49:
  sub_1D72596CC();

  v119 = v212[0];
  v120 = *(v25 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_defaultSystemFactory);
  swift_weakInit();
  swift_weakAssign();

  v121 = v145;
  sub_1D725972C();

  v122 = v146;
  sub_1D60D74F0(v146);
  sub_1D5F2B188(v121, type metadata accessor for FormatVersioningModeSelection);
  v123 = sub_1D6AA5460(v212, v122, v120);
  (*(v147 + 8))(v122, v148);
  sub_1D5F2B1F8(v212);
  type metadata accessor for FormatDecorationProvider();
  v124 = swift_allocObject();
  *(v124 + 16) = v172;
  *(v124 + 24) = v29;
  *(v124 + 32) = 0;
  *(v124 + 33) = v119;
  *(v124 + 40) = 0u;
  *(v124 + 56) = 0u;
  *(v124 + 72) = 0u;
  *(v124 + 88) = 0u;
  *(v124 + 104) = 0u;
  v125 = v226;
  *(v124 + 120) = MEMORY[0x1E69E7CC0];
  *(v124 + 128) = v125;
  *(v124 + 136) = v123;
  sub_1D5B63F14(&v214, v124 + 144);
  v226 = i;
  *(v124 + 184) = i;
  v126 = v144;
  v127 = v178;
  (*(v151 + 16))(v150, v178 + *(v144 + 20), v153);
  (*(v154 + 16))(v152, v127 + *(v126 + 24), v155);

  v128._countAndFlagsBits = v162;
  v128._object = v3;
  FeedKind.init(rawValue:)(v128);
  if (LOBYTE(v212[0]) == 30)
  {
    v129 = 0;
  }

  else
  {
    v129 = v212[0];
  }

  v180 = v222;
  if (!v156)
  {
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
  }

  LOBYTE(v198) = v129;
  *&v212[0] = MEMORY[0x1E69E7CD0];
  *(&v212[0] + 1) = MEMORY[0x1E69E7CC0];
  v130 = *(v124 + 168);
  v131 = *(v124 + 176);
  v132 = __swift_project_boxed_opaque_existential_1((v124 + 144), v130);
  v133 = v150;
  v134 = v152;
  v135 = sub_1D6C33A98(v150, v152, &v198, v132, v212, v123, v130, v131);

  MEMORY[0x1EEE9AC00](v136, v137);
  *(&v143 - 10) = v134;
  *(&v143 - 9) = v124;
  v138 = v180;
  *(&v143 - 8) = v135;
  *(&v143 - 7) = v138;
  *(&v143 - 6) = v133;
  *(&v143 - 40) = v129;
  *(&v143 - 4) = x;
  *(&v143 - 3) = y;
  *(&v143 - 2) = width;
  *(&v143 - 1) = height;
  v139 = sub_1D71962D0(sub_1D5F2B24C, (&v143 - 12), v172);

  swift_setDeallocating();
  FormatDecorationProvider.deinit();
  swift_deallocClassInstance();
  (*(v154 + 8))(v134, v155);
  (*(v151 + 8))(v133, v153);
  v140 = v149;
  sub_1D5F2B48C(v178, v149, type metadata accessor for DebugFormatCanvasBindRequest);
  v141 = type metadata accessor for DebugFormatCanvasBindResult(0);
  *(v140 + v141[5]) = v171;
  *(v140 + v141[6]) = v139;
  *(v140 + v141[7]) = v226;
  v142 = v157;
  if (v157 >= 2)
  {

    sub_1D6D2CBFC();
    v108 = v142;
LABEL_56:
    sub_1D5F2B1E8(v108);
  }
}

void sub_1D5F2882C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DebugFormatCanvasBindResult(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &aBlock[-1] - v13;
  v27 = 0;
  v15 = objc_opt_self();
  sub_1D5F2B48C(a1, v14, type metadata accessor for DebugFormatCanvasBindResult);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v17[2] = &v27;
  v17[3] = a2;
  v17[4] = v3;
  sub_1D5F2B424(v14, v17 + v16, type metadata accessor for DebugFormatCanvasBindResult);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D5F2B4F4;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1D5DF8E8C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D69C9704;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);

  [v15 performWithoutAnimation_];
  _Block_release(v19);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_1D5F2B48C(a1, v10, type metadata accessor for DebugFormatCanvasBindResult);
    v20 = v27;
    if (v27)
    {
      type metadata accessor for DebugFormatCanvasViewResult(0);
      v21 = swift_allocObject();
      *(v21 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_viewMap) = MEMORY[0x1E69E7CC8];
      sub_1D5F2B48C(v10, v21 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_bindResult, type metadata accessor for DebugFormatCanvasBindResult);
      *(v21 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView) = v20;
      v22 = *&v20[OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView];
      v23 = v20;
      sub_1D6CDA440(v22, v21);
      sub_1D5F2B188(v10, type metadata accessor for DebugFormatCanvasBindResult);

      v24 = v27;

      return;
    }
  }

  __break(1u);
}

void sub_1D5F28B84(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D5F2941C(2, 0, 0, sub_1D5F2B55C);
  v8 = *a1;
  *a1 = v7;

  if (*a4 == 1)
  {
    if (*a1)
    {
      [*a1 setUserInteractionEnabled_];
      v9 = *a1;
      if (*a1)
      {
        v10 = a4 + *(type metadata accessor for DebugFormatCanvasBindRequest(0) + 28);
        v11 = *(v10 + 10);
        v12 = *(v10 + 8);
        v42 = *(v10 + 9);
        v43 = v11;
        v13 = *(v10 + 10);
        v44[0] = *(v10 + 11);
        v14 = *(v10 + 6);
        v15 = *(v10 + 4);
        v38 = *(v10 + 5);
        v39 = v14;
        v16 = *(v10 + 6);
        v17 = *(v10 + 8);
        v40 = *(v10 + 7);
        v41 = v17;
        v18 = *(v10 + 2);
        v19 = *(v10 + 4);
        v36 = *(v10 + 3);
        v37 = v19;
        v20 = *(v10 + 2);
        v35[0] = *(v10 + 1);
        v35[1] = v20;
        v32 = v42;
        v33 = v13;
        *v34 = *(v10 + 11);
        v28 = v38;
        v29 = v16;
        v30 = v40;
        v31 = v12;
        v24 = v35[0];
        v25 = v18;
        *(v44 + 15) = *(v10 + 191);
        *&v34[15] = *(v10 + 191);
        v26 = v36;
        v27 = v15;
        v21 = *(a3 + 24);
        v22 = v9;
        sub_1D5ECF1C0(v35, v45);
        v23 = sub_1D62D78BC(v21);
        v45[8] = v32;
        v45[9] = v33;
        v46[0] = *v34;
        *(v46 + 15) = *&v34[15];
        v45[4] = v28;
        v45[5] = v29;
        v45[6] = v30;
        v45[7] = v31;
        v45[0] = v24;
        v45[1] = v25;
        v45[2] = v26;
        v45[3] = v27;
        sub_1D5ECF21C(v45);
        [v22 setBackgroundColor_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_1D5F28D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D5B6D284(0, &qword_1EC899B20, MEMORY[0x1E69D74E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v79 = v64 - v8;
  v74 = type metadata accessor for DebugGroupDirectionalLayoutAttributes(0);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v9);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(a1 + 24);
  sub_1D5B68374(v65 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_factory, v77);
  v64[1] = __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  v12 = type metadata accessor for DebugFormatCanvasBindResult(0);
  v13 = *(v12 + 20);
  v66 = a2;
  v14 = *(a2 + v13);
  if (v14 >> 62)
  {
    v63 = v12;
    v15 = sub_1D7263BFC();
    v12 = v63;
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  v67 = a3;
  if (v15)
  {
    v64[0] = v12;
    v78[0] = MEMORY[0x1E69E7CC0];
    result = sub_1D6998164(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v16 = v78[0];
    v19 = v14;
    v70 = v14 & 0xC000000000000001;
    v69 = *MEMORY[0x1E69D74D0];
    v68 = *MEMORY[0x1E69D74D8];
    v72 = v14;
    v71 = v15;
    do
    {
      if (v70)
      {
        v20 = MEMORY[0x1DA6FB460](v18, v19);
      }

      else
      {
        v20 = *(v19 + 8 * v18 + 32);
      }

      v21 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes);
      v22 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 40);
      v23 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 48);
      v24 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory);
      v25 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
      v76 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 8);
      v75 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 24);
      swift_beginAccess();
      LODWORD(v24) = *(v24 + v25);

      v26 = sub_1D725A5BC();
      v27 = *(v26 - 8);
      if (v24 == 4)
      {
        v28 = v68;
      }

      else
      {
        v28 = v69;
      }

      v29 = v79;
      (*(*(v26 - 8) + 104))(v79, v28, v26);
      (*(v27 + 56))(v29, 0, 1, v26);
      *v11 = v21;
      *(v11 + 24) = v75;
      *(v11 + 8) = v76;
      *(v11 + 5) = v22;
      *(v11 + 6) = v23;
      sub_1D5F2B578(v29, &v11[*(v74 + 20)]);
      v78[0] = v16;
      v31 = *(v16 + 16);
      v30 = *(v16 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D6998164((v30 > 1), v31 + 1, 1);
        v16 = v78[0];
      }

      ++v18;
      *(v16 + 16) = v31 + 1;
      sub_1D5F2B424(v11, v16 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v31, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
      v19 = v72;
    }

    while (v71 != v18);
    v12 = v64[0];
  }

  v32 = v66;
  v33 = *(v66 + *(v12 + 24));
  v34 = type metadata accessor for DebugFormatCanvasBindRequest(0);
  sub_1D7259E8C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1D7259E9C();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v32 + *(v34 + 28);
  v52 = *(v51 + 195);
  v53 = *(v51 + 196);
  v54 = sub_1D7259EBC();
  v55 = [v54 userInterfaceStyle];

  if (v53)
  {
    v56 = 256;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56 | v52;
  v58 = v65;
  sub_1D67F6CC8(v55, 0, 0, 0, 2u, v57, v78);
  v59 = sub_1D7259EBC();
  v60 = *(v58 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_resizingProvider);

  sub_1D705E828(v16, v33, v78, v59, v60, sub_1D5F29330, 0, v36, v38, v40, v42, v44, v46, v48, v50);
  v62 = v61;

  *v67 = v62;
  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_1D5F29330(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73C2750);
  type metadata accessor for FeedActionSender(0);
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(3, 0, 0, 0, 0xE000000000000000);
}

void *sub_1D5F2941C(char a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  v10 = CACurrentMediaTime();
  result = a4(&v25);
  if (!v5)
  {
    v12 = *(v4 + 16);
    os_unfair_lock_lock((v12 + 24));
    v13 = CACurrentMediaTime();
    v14 = objc_opt_self();
    if (a1)
    {
      v15 = &selRef_systemPurpleColor;
      if (a1 != 1)
      {
        v15 = &selRef_systemBlueColor;
      }

      v16 = 0xE600000000000000;
      if (a1 == 1)
      {
        v17 = 0x74756F79614CLL;
      }

      else
      {
        v17 = 0x7265646E6552;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      v15 = &selRef_systemYellowColor;
      v17 = 1684957506;
    }

    v18 = [v14 *v15];
    v19 = *(v12 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 16) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = *(v19 + 2);

      *(v12 + 16) = sub_1D69954E4(0, v24 + 1, 1, v19);

      v19 = *(v12 + 16);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1D69954E4((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[48 * v22];
    *(v23 + 4) = v17;
    *(v23 + 5) = v16;
    *(v23 + 6) = a2;
    *(v23 + 7) = a3;
    *(v23 + 8) = (v13 - v10) * 1000.0;
    *(v23 + 9) = v18;
    *(v12 + 16) = v19;
    os_unfair_lock_unlock((v12 + 24));
    return v25;
  }

  return result;
}

uint64_t sub_1D5F29604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v8 = type metadata accessor for FeedLayoutSolverOptions(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7259CFC();
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7259F5C();
  v54 = *(v16 - 8);
  v55 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DebugFormatCanvasBindRequest(0);
  v51 = v20[5];
  v21 = *(v5 + 24);

  sub_1D725972C();

  v53 = v19;
  v22 = v50;
  sub_1D7259F4C();
  v23 = *(v22 + 16);
  v24 = a1 + v20[6];
  v56 = v15;
  v57 = v12;
  v23(v15, v24, v12);
  v25 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_key;
  v26 = v21 + *(type metadata accessor for DebugGroupLayoutKey(0) + 28) + v25;
  v27 = type metadata accessor for GroupLayoutContext(0);
  v28 = *(v26 + v27[10]);
  v29 = v26 + v27[6];
  v58 = v11;
  sub_1D5F2B48C(v29, v11, type metadata accessor for FeedLayoutSolverOptions);
  v52 = v28;

  sub_1D7259C1C();
  v31 = v30;
  v32 = a1 + v20[7];
  v33 = *(v32 + 192);
  v34 = *(v32 + 88);
  v35 = *(v32 + 96);

  v36._countAndFlagsBits = v34;
  v36._object = v35;
  FeedKind.init(rawValue:)(v36);
  v37 = v60[0];
  v38 = *(v21 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_resizingProvider);

  sub_1D7259E7C();
  v40 = v39;
  v42 = v41;
  sub_1D725A76C();
  swift_beginAccess();
  v43 = *(v38 + 24);
  if (*(v43 + 16) && (v44 = sub_1D6D62C64(v40, v42), (v45 & 1) != 0))
  {
    v46 = *(*(v43 + 56) + 8 * v44);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v46 = sub_1D5BC9514(MEMORY[0x1E69E7CC0]);
  }

  if (v37 == 30)
  {
    v47 = 0;
  }

  else
  {
    v47 = v37;
  }

  sub_1D725A77C();

  (*(v54 + 32))(a3, v53, v55);
  (*(v22 + 32))(a3 + v27[5], v56, v57);
  *(a3 + v27[10]) = v52;
  result = sub_1D5F2B424(v58, a3 + v27[6], type metadata accessor for FeedLayoutSolverOptions);
  *(a3 + v27[7]) = v59;
  *(a3 + v27[8]) = v31;
  *(a3 + v27[9]) = v33;
  *(a3 + v27[11]) = v47;
  *(a3 + v27[12]) = v46;
  return result;
}

_OWORD *sub_1D5F29A08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v164 = a6;
  v184 = a4;
  v223 = a3;
  v185 = a1;
  v186 = a2;
  v7 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v161 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F2B28C(0);
  v157 = *(v10 - 8);
  v158 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v165 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for FormatGroupLayoutFactory.Bound(0);
  MEMORY[0x1EEE9AC00](v171, v13);
  v162 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v170 = &v154 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v166 = &v154 - v20;
  v21 = sub_1D7259CFC();
  v154 = *(v21 - 8);
  v155 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v163 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6D284(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v175 = &v154 - v26;
  v27 = sub_1D7259D1C();
  v172 = *(v27 - 8);
  v173 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v167 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v168 = &v154 - v32;
  v169 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v169, v33);
  v160 = &v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v178 = &v154 - v37;
  v38 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v159 = &v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v174 = &v154 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v177 = (&v154 - v46);
  v47 = sub_1D725BD1C();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v154 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v55 = &v154 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *a5;
  v57 = a5[1];
  v176 = v7;
  v58 = (v186 + *(v7 + 28));
  v59 = v58[7];
  v220 = v58[6];
  v221 = v59;
  v222 = v58[8];
  v60 = v58[3];
  v216 = v58[2];
  v217 = v60;
  v61 = v58[5];
  v218 = v58[4];
  v219 = v61;
  v63 = *v58;
  v62 = v58[1];
  v156 = v58;
  v214 = v63;
  v215 = v62;
  v64 = *(v182 + 24);

  sub_1D5D65D5C(&v214, &v194);
  v181 = v56;

  v182 = v57;

  v65 = v185;
  v180 = sub_1D6A9DB5C(v185);
  v66 = *v65;
  if (*v65 == 1)
  {
    v67 = type metadata accessor for FormatLogger();
    inited = swift_initStaticObject();
    *&v196 = &protocol witness table for FormatLogger;
    *(&v195 + 1) = v67;
    *&v194 = inited;
  }

  else
  {
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v69 = qword_1EC9BA710;
    v70 = type metadata accessor for DebugFormatLogger();
    *&v196 = &off_1F5125BB8;
    *(&v195 + 1) = v70;
    *&v194 = v69;
  }

  v71 = *(v64 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_defaultSystemFactory);
  swift_weakInit();
  swift_weakAssign();

  sub_1D725972C();

  sub_1D60D74F0(v51);
  sub_1D5F2B188(v55, type metadata accessor for FormatVersioningModeSelection);
  v179 = sub_1D6AA5460(&v187, v51, v71);
  (*(v48 + 8))(v51, v47);
  sub_1D5F2B1F8(&v187);
  v72 = type metadata accessor for FeedLayoutTracker();
  v73 = swift_allocObject();
  v188 = v72;
  v189 = &off_1F512CC20;
  *&v187 = v73;
  if (v66 == 1)
  {
    v74 = type metadata accessor for FormatLogger();
    v75 = swift_initStaticObject();
    v76 = 0;
    v77 = &protocol witness table for FormatLogger;
    v193 = &protocol witness table for FormatLogger;
    v192 = v74;
    v191[0] = v75;
  }

  else
  {
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v78 = qword_1EC9BA710;
    v74 = type metadata accessor for DebugFormatLogger();
    v77 = &off_1F5125BB8;
    v193 = &off_1F5125BB8;
    v192 = v74;
    v191[0] = v78;

    v76 = v66;
  }

  v79 = type metadata accessor for FormatOptionConverter();
  v80 = __swift_mutable_project_boxed_opaque_existential_1(v191, v74);
  v81 = MEMORY[0x1EEE9AC00](v80, v80);
  v83 = &v154 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v84 + 16))(v83, v81);
  v85 = v223;

  v87 = sub_1D6AC4F3C(v86, v83, v79, v74, v77);
  __swift_destroy_boxed_opaque_existential_1(v191);
  v203[6] = v220;
  v203[7] = v221;
  v204 = v222;
  v203[2] = v216;
  v203[3] = v217;
  v203[4] = v218;
  v203[5] = v219;
  v203[0] = v214;
  v203[1] = v215;
  v206 = xmmword_1D72825A0;
  v205 = v85;
  v207 = 0;
  v208 = 0;
  v209 = v181;
  v210 = v182;
  v211 = v180;
  sub_1D5B63F14(&v194, v212);
  v212[5] = v179;
  sub_1D5B63F14(&v187, v213);
  v213[5] = v87;
  v213[6] = v76;
  sub_1D5F2B27C(v66);
  v88 = v203;
  v89 = v183;
  v90 = v184;
  sub_1D5F2AE14(v184);
  v91 = v89;
  if (v89)
  {
    if (v66 == 1)
    {
LABEL_18:
      swift_willThrow();
      sub_1D5F2B344(v203);
      return v88;
    }

    *&v194 = 0;
    *(&v194 + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD0000000000000A4, 0x80000001D73C25F0);
    *&v187 = v89;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    v93 = *(&v194 + 1);
    v92 = v194;
    if (qword_1EC87D498 != -1)
    {
      v150 = v194;
      swift_once();
      v92 = v150;
    }

    sub_1D5F5EBA0(4, 0, 0, v92, v93);

    v91 = 0;
  }

  v94 = sub_1D6FEC3CC();
  LOBYTE(v187) = v204;
  FormatContentSizeCategory.groupLayoutContentSizeCategory.getter(&v194);
  v95 = v194;
  v96 = BYTE8(v194);
  type metadata accessor for GroupLayoutFactoryValidator();
  v88 = swift_allocObject();
  *(v88 + 2) = v94;
  *(v88 + 3) = v95;
  *(v88 + 32) = v96;
  sub_1D5BEEB24(v90);
  if (v91)
  {

    swift_setDeallocating();
    sub_1D5BEEACC(*(v88 + 3), *(v88 + 32));
    swift_deallocClassInstance();
    v97 = v178;
    v98 = v186;
    if (v66 == 1)
    {
      goto LABEL_18;
    }

    *&v194 = 0;
    *(&v194 + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD0000000000000A2, 0x80000001D73C26A0);
    *&v187 = v91;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    v100 = *(&v194 + 1);
    v99 = v194;
    if (qword_1EC87D498 != -1)
    {
      v151 = v194;
      swift_once();
      v99 = v151;
    }

    sub_1D5F5EBA0(4, 0, 0, v99, v100);
  }

  else
  {

    swift_setDeallocating();
    sub_1D5BEEACC(*(v88 + 3), *(v88 + 32));
    swift_deallocClassInstance();
    v97 = v178;
    v98 = v186;
  }

  v101 = v174;
  sub_1D5F2B48C(*(v98 + *(v176 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v174, type metadata accessor for GroupLayoutBindingContext);
  v102 = v185 + *(type metadata accessor for DebugFormatCanvasBindRequest(0) + 28);
  v103 = v102[193];
  LOBYTE(v194) = v102[192];
  v104 = v177;
  sub_1D62EFCE4(v103, &v194, v177);
  sub_1D5F2B188(v101, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5F2B48C(v90, v97, type metadata accessor for GroupLayoutContext);
  v105 = v175;
  sub_1D6FC10DC(v104, v90, v175);
  v106 = v172;
  v107 = v173;
  if ((*(v172 + 48))(v105, 1, v173) == 1)
  {
    sub_1D5F2B398(v105);
  }

  else
  {
    v108 = v168;
    (*(v106 + 32))(v168, v105, v107);
    v109 = v106;
    v110 = v167;
    sub_1D7259BFC();
    sub_1D5B71010(&unk_1EDF3C090, MEMORY[0x1E69D7138], MEMORY[0x1E69D7140]);
    v111 = sub_1D7261FBC();
    v112 = *(v109 + 8);
    v112(v110, v107);
    if (v111)
    {
      v112(v108, v107);
    }

    else
    {
      v113 = v163;
      sub_1D7259D0C();
      v112(v108, v173);
      (*(v154 + 40))(&v97[*(v169 + 20)], v113, v155);
    }

    v104 = v177;
  }

  v114 = v214;
  v115 = CACurrentMediaTime();
  sub_1D6FC14D8(v104, v97, &v194);
  sub_1D5B49474(0, qword_1EDF22AA0, &protocol descriptor for BoundGroupLayoutFactoryType);
  swift_dynamicCast();
  v117 = *(v164 + 16);
  os_unfair_lock_lock((v117 + 24));
  v118 = CACurrentMediaTime();
  v119 = objc_opt_self();
  v120 = [v119 systemYellowColor];
  v121 = *(v117 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v117 + 16) = v121;
  v185 = v114;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v152 = *(v121 + 2);

    *(v117 + 16) = sub_1D69954E4(0, v152 + 1, 1, v121);

    v121 = *(v117 + 16);
  }

  v124 = *(v121 + 2);
  v123 = *(v121 + 3);
  if (v124 >= v123 >> 1)
  {
    v121 = sub_1D69954E4((v123 > 1), v124 + 1, 1, v121);
  }

  *(v121 + 2) = v124 + 1;
  v125 = &v121[48 * v124];
  *(v125 + 4) = 1684957506;
  *(v125 + 5) = 0xE400000000000000;
  *(v125 + 6) = v185;
  *(v125 + 7) = *(&v114 + 1);
  *(v125 + 8) = (v118 - v115) * 1000.0;
  *(v125 + 9) = v120;
  *(v117 + 16) = v121;
  os_unfair_lock_unlock((v117 + 24));
  v126 = v166;
  sub_1D5F2B424(v170, v166, type metadata accessor for FormatGroupLayoutFactory.Bound);
  v127 = CACurrentMediaTime();
  v128 = v165;
  sub_1D725A4BC();
  sub_1D6FED4C0(v128, v190);
  (*(v157 + 8))(v128, v158);
  os_unfair_lock_lock((v117 + 24));
  v129 = CACurrentMediaTime();
  v130 = [v119 systemPurpleColor];
  v131 = *(v117 + 16);

  v132 = swift_isUniquelyReferenced_nonNull_native();
  *(v117 + 16) = v131;
  if ((v132 & 1) == 0)
  {
    v153 = *(v131 + 2);

    *(v117 + 16) = sub_1D69954E4(0, v153 + 1, 1, v131);

    v131 = *(v117 + 16);
  }

  v134 = *(v131 + 2);
  v133 = *(v131 + 3);
  if (v134 >= v133 >> 1)
  {
    v131 = sub_1D69954E4((v133 > 1), v134 + 1, 1, v131);
  }

  *(v131 + 2) = v114 + 1;
  v135 = &v131[48 * v114];
  *(v135 + 4) = 0x74756F79614CLL;
  *(v135 + 5) = 0xE600000000000000;
  *(v135 + 6) = v185;
  *(v135 + 7) = *(&v114 + 1);
  *(v135 + 8) = (v129 - v127) * 1000.0;
  *(v135 + 9) = v130;
  *(v117 + 16) = v131;
  os_unfair_lock_unlock((v117 + 24));
  v136 = v156[7];
  v200 = v156[6];
  v201 = v136;
  v202 = v156[8];
  v137 = v156[3];
  v196 = v156[2];
  v197 = v137;
  v138 = v156[5];
  v198 = v156[4];
  v199 = v138;
  v139 = v156[1];
  v194 = *v156;
  v195 = v139;
  v140 = v161;
  sub_1D5F2B48C(v186, v161, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  v141 = v160;
  sub_1D5F2B48C(v184, v160, type metadata accessor for GroupLayoutContext);
  v142 = v159;
  sub_1D5F2B424(v177, v159, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5F2B48C(v126, v162, type metadata accessor for FormatGroupLayoutFactory.Bound);
  type metadata accessor for DebugFormatCanvasLayoutResult(0);
  v88 = swift_allocObject();
  v143 = v201;
  v88[7] = v200;
  v88[8] = v143;
  v88[9] = v202;
  v144 = v197;
  v88[3] = v196;
  v88[4] = v144;
  v145 = v199;
  v88[5] = v198;
  v88[6] = v145;
  v146 = v195;
  v88[1] = v194;
  v88[2] = v146;
  sub_1D5F2B424(v140, v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_workspaceGroup, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  *(v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory) = v223;
  v147 = (v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes);
  v148 = v190[3];
  v147[2] = v190[2];
  v147[3] = v148;
  v147[4] = v190[4];
  v149 = v190[1];
  *v147 = v190[0];
  v147[1] = v149;
  sub_1D5F2B424(v141, v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_groupLayoutContext, type metadata accessor for GroupLayoutContext);
  sub_1D5F2B424(v142, v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_groupLayoutBindings, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5F2B424(v162, v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory, type metadata accessor for FormatGroupLayoutFactory.Bound);

  sub_1D5D65D5C(&v194, &v187);
  sub_1D5F2B188(v126, type metadata accessor for FormatGroupLayoutFactory.Bound);
  sub_1D5F2B188(v178, type metadata accessor for GroupLayoutContext);
  sub_1D5F2B344(v203);
  return v88;
}

void sub_1D5F2AE14(uint64_t a1)
{
  sub_1D6FEC3CC();
  FormatContentSizeCategory.groupLayoutContentSizeCategory.getter(&v9);
  v1 = v9;
  v2 = v10;
  v7 = v9;
  v8 = v10;
  sub_1D5BEE8A0(v9, v10);
  v3 = sub_1D7259EEC();
  v4 = sub_1D5BEE8E4(v3);

  sub_1D5BEEACC(v7, v8);
  if ((v4 & 1) == 0)
  {
    sub_1D5C17350();
    swift_allocError();
    v6 = v5;
    *v5 = sub_1D7259EEC();
    *(v6 + 40) = 1;
    swift_willThrow();
  }

  sub_1D5BEEACC(v1, v2);
}

uint64_t sub_1D5F2AF14()
{

  return swift_deallocClassInstance();
}

void sub_1D5F2AF78(uint64_t a1)
{
  if (!qword_1EC8811C0)
  {
    type metadata accessor for DebugFormatCanvasBindResult(255);
    sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    v1 = sub_1D726288C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8811C0);
    }
  }
}

uint64_t sub_1D5F2AFF8()
{
  v1 = *(type metadata accessor for DebugFormatCanvasBindRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D5F2AF78(0);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);

  return sub_1D5F27414(v4, (v0 + v2), v5);
}

uint64_t sub_1D5F2B188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D5F2B1E8(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_1D5F2B27C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

void sub_1D5F2B28C(uint64_t a1)
{
  if (!qword_1EDF3BF58)
  {
    type metadata accessor for FormatLayoutAttributes();
    sub_1D5EB5218();
    sub_1D5B71010(&qword_1EDF28608, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
    v1 = sub_1D725A4AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BF58);
    }
  }
}

uint64_t sub_1D5F2B398(uint64_t a1)
{
  sub_1D5B6D284(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F2B424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F2B48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5F2B4F4()
{
  v1 = *(type metadata accessor for DebugFormatCanvasBindResult(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = (v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  sub_1D5F28B84(v2, v3, v4, v5);
}

uint64_t sub_1D5F2B578(uint64_t a1, uint64_t a2)
{
  sub_1D5B6D284(0, &qword_1EC899B20, MEMORY[0x1E69D74E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatSlotItemOrdering.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F2B6A4()
{
  result = qword_1EC8811D0;
  if (!qword_1EC8811D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811D0);
  }

  return result;
}

unint64_t sub_1D5F2B6F8(uint64_t a1)
{
  result = sub_1D5F2B720();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2B720()
{
  result = qword_1EC8811D8;
  if (!qword_1EC8811D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811D8);
  }

  return result;
}

unint64_t sub_1D5F2B774(void *a1)
{
  a1[1] = sub_1D5F2B7AC();
  a1[2] = sub_1D5F2B800();
  result = sub_1D5F2B6A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F2B7AC()
{
  result = qword_1EDF27FD0;
  if (!qword_1EDF27FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27FD0);
  }

  return result;
}

unint64_t sub_1D5F2B800()
{
  result = qword_1EDF0D9F8;
  if (!qword_1EDF0D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D9F8);
  }

  return result;
}

void *sub_1D5F2B894@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v5 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if (v9)
  {
    v12 = *(v11 + 32);
    v13 = sub_1D5EE5AA4();
    result = v12(v61, &type metadata for FeedIssue, &type metadata for FeedIssue, v13, v10, v11);
    if (!v3)
    {
      v59 = v61[6];
      v60[0] = v62[0];
      *(v60 + 9) = *(v62 + 9);
      v53 = v61[0];
      v54 = v61[1];
      v55 = v61[2];
      v56 = v61[3];
      v57 = v61[4];
      v58 = v61[5];
      v15 = *&v61[0];
      v16 = [*&v61[0] layeredCoverJSON];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1D726207C();
        v20 = v19;

        [v15 layeredCoverAspectRatio];
        v22 = v21;
        result = sub_1D5ECF320(&v53);
        v23 = v42;
        *v42 = v18;
        v23[1] = v20;
        v23[2] = v22;
      }

      else
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B571E0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v36 = v35;
        v51 = 0;
        v52 = 0xE000000000000000;
        v49 = v59;
        v50[0] = v60[0];
        *(v50 + 9) = *(v60 + 9);
        v45 = v55;
        v46 = v56;
        v47 = v57;
        v48 = v58;
        v43 = v53;
        v44 = v54;
        sub_1D7263F9C();
        v37 = v52;
        *v36 = v51;
        v36[1] = v37;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return sub_1D5ECF320(&v53);
      }
    }
  }

  else
  {
    v24 = *(v11 + 32);
    v25 = sub_1D5B571E0(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
    result = v24(v5, v5, v25, v10, v11);
    if (v3)
    {
      return result;
    }

    v26 = *(v8 + 5);
    if ([v26 respondsToSelector_])
    {
      v27 = [v26 layeredThumbnailJSON];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D726207C();
        v31 = v30;

        if ([v26 respondsToSelector_])
        {
          [v26 layeredThumbnailAspectRatio];
          v33 = v32;
          result = sub_1D5C10040(v8);
          v34 = v42;
          *v42 = v29;
          v34[1] = v31;
          v34[2] = v33;
          return result;
        }
      }
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5B571E0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    v39 = v38;
    *&v61[0] = 0;
    *(&v61[0] + 1) = 0xE000000000000000;
    sub_1D7263F9C();
    v40 = *(&v61[0] + 1);
    *v39 = *&v61[0];
    v39[1] = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1D5C10040(v8);
  }

  return result;
}

uint64_t static FormatLayeredMediaNodeBinding.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1D5F2BCD8(uint64_t a1)
{
  result = sub_1D5F2BD00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2BD00()
{
  result = qword_1EC8811E0;
  if (!qword_1EC8811E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811E0);
  }

  return result;
}

unint64_t sub_1D5F2BD54(void *a1)
{
  a1[1] = sub_1D5F2BD8C();
  a1[2] = sub_1D5F2BDE0();
  result = sub_1D5F2BE34();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F2BD8C()
{
  result = qword_1EDF21258;
  if (!qword_1EDF21258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21258);
  }

  return result;
}

unint64_t sub_1D5F2BDE0()
{
  result = qword_1EDF0A480;
  if (!qword_1EDF0A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A480);
  }

  return result;
}

unint64_t sub_1D5F2BE34()
{
  result = qword_1EC8811E8;
  if (!qword_1EC8811E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811E8);
  }

  return result;
}

uint64_t sub_1D5F2BEB8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if ((*a2 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for FormatLayeredMediaNodeBinding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}