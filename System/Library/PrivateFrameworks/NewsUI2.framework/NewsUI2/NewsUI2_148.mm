void sub_21974BF90(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 24), v4);
  v5 = sub_219BF3CE4();
  v6 = [v5 audioSuggestionsMaxAge];

  v37 = v2;
  v7 = *(v2 + 72);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_34:
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  v38 = a1;
  if (v9)
  {
    v40 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      __break(1u);

      swift_unknownObjectRelease();

      __break(1u);
      return;
    }

    v35 = v8;
    v36 = v6;
    v11 = v40;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v12, v38);
        v13 = [swift_unknownObjectRetain() articleID];
        v14 = sub_219BF5414();
        v16 = v15;
        swift_unknownObjectRelease_n();

        v40 = v11;
        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21870B65C((v17 > 1), v18 + 1, 1);
          v11 = v40;
        }

        ++v12;
        *(v11 + 16) = v18 + 1;
        v19 = v11 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
      }

      while (v9 != v12);
    }

    else
    {
      v20 = a1 + 32;
      do
      {
        v21 = [swift_unknownObjectRetain_n() articleID];
        v22 = sub_219BF5414();
        v24 = v23;
        swift_unknownObjectRelease_n();

        v40 = v11;
        v26 = *(v11 + 16);
        v25 = *(v11 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21870B65C((v25 > 1), v26 + 1, 1);
          v11 = v40;
        }

        *(v11 + 16) = v26 + 1;
        v27 = v11 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v20 += 8;
        --v9;
      }

      while (v9);
    }

    a1 = v38;
    v8 = v35;
    v6 = v36;
    v10 = MEMORY[0x277D84F90];
  }

  v28 = sub_219BF5904();

  v29 = [v7 historyItemsByArticleIDForArticleIDs_];

  sub_2186D6710(0, &qword_280E8E1B0, &protocolRef_FCReadingHistoryItem);
  v7 = sub_219BF5214();

  v40 = v10;
  if (v8)
  {
    v30 = sub_219BF7214();
    if (v30)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_19:
      v31 = 0;
      v4 = 0;
      v32 = v6;
      v33 = a1 & 0xC000000000000001;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v33)
        {
          v34 = MEMORY[0x21CECE0F0](v31, a1);
          v6 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v31 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          v34 = *(a1 + 8 * v31 + 32);
          swift_unknownObjectRetain();
          v6 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
            goto LABEL_29;
          }
        }

        v39 = v34;
        if (sub_21974C848(&v39, v7, v37, v32))
        {
          sub_219BF73D4();
          sub_219BF7414();
          a1 = v38;
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v31;
      }

      while (v6 != v30);
    }
  }
}

uint64_t sub_21974C380(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BEE6E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 88), *(v2 + 112));
  v7 = sub_219BF0034();
  v8 = *(v7 + 16);
  if (v8)
  {
    v16 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v14[1] = v7;
    v15 = v10;
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v15(v6, v11, v3);
      sub_219BEE6D4();
      (*(v9 - 8))(v6, v3);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v11 += v12;
      --v8;
    }

    while (v8);

    return v16;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

double sub_21974C548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);
  v12 = objc_allocWithZone(MEMORY[0x277D30F20]);

  v13 = [v12 initWithContext_];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_218846958;
  v14[5] = v10;
  v17[4] = sub_21974D7D4;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21974C768;
  v17[3] = &block_descriptor_17_6;
  v15 = _Block_copy(v17);

  [v13 setFetchCompletionHandler_];
  _Block_release(v15);
  sub_219BE1F84();
  sub_219BE1F54();
  sub_219BE1F64();

  return result;
}

void sub_21974C6C8(uint64_t a1, uint64_t a2, id a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = a3;
    v8 = a3;
    v9 = v7;
  }

  else
  {
    if (a1)
    {
      a6(a1, a2);
      return;
    }

    sub_21974D7E0();
    v9 = swift_allocError();
    v7 = v9;
  }

  a4(v9);
}

double sub_21974C768(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    v6 = sub_219BF5924();
  }

  if (a3)
  {
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    a3 = sub_219BF5924();
  }

  v8 = a4;
  v7(v6, a3, a4);

  return result;
}

uint64_t sub_21974C848(id *a1, uint64_t a2, uint64_t a3, double a4)
{
  v71 = a3;
  sub_2186E832C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v66[-v8];
  v9 = sub_219BDBD34();
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v70 = &v66[-v12];
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v66[-v15];
  v17 = *a1;
  v18 = [*a1 articleID];
  v19 = sub_219BF5414();
  v21 = v20;

  if (*(a2 + 16))
  {
    v22 = sub_21870F700(v19, v21);
    v24 = v23;

    if (v24)
    {
      v25 = *(*(a2 + 56) + 8 * v22);
      sub_2186C66AC();
      swift_unknownObjectRetain_n();
      v26 = sub_219BF6F74();
      v67 = sub_219BF61E4();
      sub_2186E832C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_219C09EC0;
      v28 = [v17 identifier];
      v29 = sub_219BF5414();
      v31 = v30;

      *(v27 + 56) = MEMORY[0x277D837D0];
      v32 = sub_2186FC3BC();
      *(v27 + 64) = v32;
      *(v27 + 32) = v29;
      *(v27 + 40) = v31;
      v33 = [v25 description];
      v34 = sub_219BF5414();
      v36 = v35;

      *(v27 + 96) = MEMORY[0x277D837D0];
      *(v27 + 104) = v32;
      *(v27 + 72) = v34;
      *(v27 + 80) = v36;
      sub_219BE5314("AudioSuggestionsService: considering %@ with history=%@", 55, 2, &dword_2186C1000, v26, v67, v27);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
  }

  sub_2186C66AC();
  v26 = sub_219BF6F74();
  v37 = sub_219BF61E4();
  sub_2186E832C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09BA0;
  v39 = [v17 identifier];
  v40 = sub_219BF5414();
  v42 = v41;

  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = sub_2186FC3BC();
  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  sub_219BE5314("AudioSuggestionsService: considering %@ without any history", 59, 2, &dword_2186C1000, v26, v37, v38);
  v25 = 0;
LABEL_6:

  v43 = [v17 publishDate];
  if (v43)
  {
    v44 = v70;
    v45 = v43;
    sub_219BDBCA4();

    v47 = v72;
    v46 = v73;
    (*(v72 + 32))(v16, v44, v73);
    sub_219BDBC64();
    v49 = v48;
    (*(v47 + 8))(v16, v46);
    if (v49 < -a4)
    {
      goto LABEL_11;
    }
  }

  v50 = v71;
  v51 = *(v71 + 64);
  v52 = [v17 identifier];
  if (!v52)
  {
    sub_219BF5414();
    v52 = sub_219BF53D4();
  }

  v53 = [v51 containsArticleID_];

  if (v53)
  {
    goto LABEL_11;
  }

  if (v25)
  {
    v55 = [swift_unknownObjectRetain() lastListenedAt];
    swift_unknownObjectRelease();
    if (v55)
    {
      v56 = v68;
      sub_219BDBCA4();

      swift_unknownObjectRelease();
      v57 = v72;
      v58 = v69;
      v59 = v56;
      v60 = v73;
      (*(v72 + 32))(v69, v59, v73);
      (*(v57 + 56))(v58, 0, 1, v60);
      sub_2189DD39C(v58);
      return 0;
    }

    v61 = v69;
    (*(v72 + 56))(v69, 1, 1, v73);
    sub_2189DD39C(v61);
    if ([v25 hasArticleCompletedReading] || objc_msgSend(v25, sel_hasArticleBeenRemovedFromAudio) || objc_msgSend(v25, sel_articleLikingStatus) == 2)
    {
      goto LABEL_11;
    }
  }

  v62 = [v17 sourceChannelID];
  if (v62)
  {
    v63 = v62;
    v64 = [*(v50 + 80) hasMutedSubscriptionForTagID_];

    if (v64)
    {
LABEL_11:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  v65 = [v17 isBlockedExplicitContent];
  swift_unknownObjectRelease();
  return v65 ^ 1;
}

void sub_21974CEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 64);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2187A913C;
  *(v10 + 24) = v8;
  v12[4] = sub_21974D7CC;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218793E0C;
  v12[3] = &block_descriptor_165;
  v11 = _Block_copy(v12);

  [v9 ensureSyncedWithCompletion_];
  _Block_release(v11);
}

void sub_21974CFDC(void (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    sub_219BE1F84();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    sub_219BE1F74();
  }

  else
  {
    a1();
  }
}

char *sub_21974D0A0(unint64_t a1, uint64_t a2, void *a3)
{
  v61 = type metadata accessor for AudioSuggestionsStore();
  v62 = &off_282A86128;
  v60[0] = a2;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_38:
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  v57 = a1;
  if (v6)
  {
    v58 = MEMORY[0x277D84F90];

    result = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v55 = v5;
    v9 = v58;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v10, v57);
        v11 = [swift_unknownObjectRetain() articleID];
        v12 = sub_219BF5414();
        v14 = v13;
        swift_unknownObjectRelease_n();

        v16 = *(v58 + 16);
        v15 = *(v58 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21870B65C((v15 > 1), v16 + 1, 1);
        }

        ++v10;
        *(v58 + 16) = v16 + 1;
        v17 = v58 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v6 != v10);
    }

    else
    {
      v18 = a1 + 32;
      do
      {
        v19 = [swift_unknownObjectRetain_n() articleID];
        v20 = sub_219BF5414();
        v22 = v21;
        swift_unknownObjectRelease_n();

        v24 = *(v58 + 16);
        v23 = *(v58 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_21870B65C((v23 > 1), v24 + 1, 1);
        }

        *(v58 + 16) = v24 + 1;
        v25 = v58 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v18 += 8;
        --v6;
      }

      while (v6);
    }

    v5 = v55;
    a1 = v57;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v26 = sub_219771820(v9);

  sub_2186C66AC();
  v27 = sub_219BF6F74();
  sub_2186E832C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a3 + 3, a3[6]);
  v29 = sub_219BF3CE4();
  [v29 audioSuggestionsMaxIgnoreCount];

  v30 = sub_219BF7894();
  v32 = v31;
  v33 = MEMORY[0x277D837D0];
  *(v28 + 56) = MEMORY[0x277D837D0];
  v34 = sub_2186FC3BC();
  *(v28 + 64) = v34;
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v35 = sub_219BF5224();
  *(v28 + 96) = v33;
  *(v28 + 104) = v34;
  *(v28 + 72) = v35;
  *(v28 + 80) = v36;
  v37 = sub_219BF6214();
  sub_219BE5314("AudioSuggestionsService: removing ignored stories with maxIgnores=%{public}@, currentIgnores=%{public}@", 103, 2, &dword_2186C1000, v27, v37, v28);

  v59 = v7;
  if (v5)
  {
    v38 = sub_219BF7214();
    if (v38)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
LABEL_19:
      v39 = 0;
      v56 = a1 & 0xC000000000000001;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v56)
        {
          v40 = MEMORY[0x21CECE0F0](v39, a1);
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            v53 = v59;
            goto LABEL_36;
          }
        }

        else
        {
          if (v39 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v40 = *(a1 + 8 * v39 + 32);
          swift_unknownObjectRetain();
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_32;
          }
        }

        v42 = [v40 identifier];
        v43 = sub_219BF5414();
        v45 = v44;

        if (*(v26 + 16))
        {
          v46 = sub_21870F700(v43, v45);
          v48 = v47;

          if (v48)
          {
            v49 = *(*(v26 + 56) + 8 * v46);
            __swift_project_boxed_opaque_existential_1(a3 + 3, a3[6]);
            v50 = sub_219BF3CE4();
            v51 = [v50 audioSuggestionsMaxIgnoreCount];

            v52 = v49 < v51;
            a1 = v57;
            if (!v52)
            {
              swift_unknownObjectRelease();
              goto LABEL_22;
            }
          }
        }

        else
        {
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
LABEL_22:
        ++v39;
        if (v41 == v38)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_36:

  __swift_destroy_boxed_opaque_existential_1(v60);
  return v53;
}

char *sub_21974D5DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v21;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v5, a1);
        v6 = [swift_unknownObjectRetain() articleID];
        v7 = sub_219BF5414();
        v9 = v8;
        swift_unknownObjectRelease_n();

        v11 = *(v21 + 16);
        v10 = *(v21 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21870B65C((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v21 + 16) = v11 + 1;
        v12 = v21 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v13 = a1 + 32;
      do
      {
        v14 = [swift_unknownObjectRetain_n() articleID];
        v15 = sub_219BF5414();
        v17 = v16;
        swift_unknownObjectRelease_n();

        v19 = *(v21 + 16);
        v18 = *(v21 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21870B65C((v18 > 1), v19 + 1, 1);
        }

        *(v21 + 16) = v19 + 1;
        v20 = v21 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v13 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_21974D7E0()
{
  result = qword_27CC1EAE0;
  if (!qword_27CC1EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EAE0);
  }

  return result;
}

unint64_t sub_21974D848()
{
  result = qword_27CC1EAE8;
  if (!qword_27CC1EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EAE8);
  }

  return result;
}

uint64_t sub_21974D8BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E974E8;
  if (!qword_280E974E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21974D964(uint64_t a1)
{
  sub_2186E3594(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21974DA08(uint64_t a1)
{
  v1 = sub_219BF1934();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0);
  v21 = 2;
  sub_2186E3B14(0);
  v19 = sub_219BEE964();
  sub_2186E4D64(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v18 = v9;
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_2186E3594(0);
  sub_219BEDD14();
  (*(v2 + 16))(v4, &v8[*(v6 + 28)], v1);
  sub_218817794(v8, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
  v13 = sub_219BF1784();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_2186F9254(0, &unk_280E91220, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v12 + v11) = sub_219BEFB94();
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D32308], v18);
  v20 = v19;
  sub_2191EE154(v12);
  return v20;
}

uint64_t sub_21974DD44(uint64_t a1)
{
  v3 = type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21975040C(v1, v6, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_2197501C4(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v11 = v18[0];
  sub_21975040C(v18[0], v6, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_2197501C4(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218C5FB88(0);
  sub_219BE2F74();

  sub_21975040C(v11, v6, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_2197501C4(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_21974DFF4(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v106 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186E4D64(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v71 - v5;
  sub_2186E4D64(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v71 - v7;
  sub_2186E4D64(0, &unk_280E919B0, sub_2186E3B14, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v71 - v9;
  v10 = sub_219BF2AB4();
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x28223BE20](v10);
  v100 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2034();
  v101 = *(v12 - 8);
  v102 = v12;
  MEMORY[0x28223BE20](v12);
  v107 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BEF9C4();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_219BEF564();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4D64(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v71 - v17;
  v82 = sub_219BEFBD4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v19 - 8);
  v75 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4D64(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v21 - 8);
  v76 = &v71 - v22;
  v91 = sub_219BF2774();
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v109 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v24 - 8);
  v95 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0) - 8;
  v80 = v29;
  MEMORY[0x28223BE20](v29);
  v84 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v71 - v32;
  v34 = sub_219BF1934();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v105 = &v71 - v39;
  sub_2186E3594(0);
  v77 = v40;
  sub_219BEDD14();
  (*(v35 + 16))(v37, &v33[*(v29 + 28)], v34);
  v78 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
  sub_218817794(v33, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
  v41 = v2;
  sub_219BEDCA4();
  v42 = sub_219BEC004();
  (*(*(v42 - 8) + 56))(v28, 1, 1, v42);
  sub_218A42400(0);
  v44 = v95;
  (*(*(v43 - 8) + 56))(v95, 1, 1, v43);
  sub_219BF1764();

  sub_218817794(v44, sub_218A89A94);
  sub_218817794(v28, sub_2186FE720);
  v45 = *(v35 + 8);
  v94 = v35 + 8;
  v95 = v34;
  v85 = v45;
  v45(v37, v34);
  v46 = v106;
  sub_219BEF134();
  v73 = type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0);
  v72 = v41 + *(v73 + 20);
  v47 = v72;
  v74 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs(0);
  v108[3] = v74;
  v108[4] = sub_21974D8BC(&qword_280E99B50, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs, &unk_219C34F58);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v108);
  sub_21975040C(v47, boxed_opaque_existential_1, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  v49 = v76;
  sub_219BF2AC4();
  v50 = sub_219BF2AD4();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  sub_21974F944(v46);
  v51 = *(v96 + 8);
  (*(v81 + 104))(v79, *MEMORY[0x277D32930], v82);
  v52 = sub_219BF02F4();
  (*(*(v52 - 8) + 56))(v83, 1, 1, v52);
  (*(v87 + 104))(v86, *MEMORY[0x277D32670], v88);
  (*(v90 + 104))(v89, *MEMORY[0x277D32840], v92);
  swift_bridgeObjectRetain_n();
  v92 = v51;
  sub_219BF2764();
  sub_219B6CEDC(v105, v107);
  v53 = (v41 + *(v73 + 24));
  v54 = v53[3];
  v90 = v53[4];
  v96 = v54;
  v89 = __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_2186E3B14(0);
  v56 = v55;
  v57 = *(v55 - 8);
  v58 = v97;
  (*(v57 + 16))(v97, v72, v55);
  (*(v57 + 56))(v58, 0, 1, v56);
  v59 = sub_219BF35D4();
  (*(*(v59 - 8) + 56))(v98, 1, 1, v59);
  LOBYTE(v108[0]) = 2;
  sub_2186F9254(0, &qword_280E90058, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v60 = v91;
  v61 = v84;
  sub_219BEDD14();
  v62 = v99;
  sub_218817794(v61, v78);
  v63 = v93;
  (*(v93 + 16))(v62, v109, v60);
  v64 = v63;
  (*(v63 + 56))(v62, 0, 1, v60);
  v65 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v65 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v66 = v100;
  sub_219BF2A84();
  v67 = v105;
  v68 = v107;
  v69 = sub_219BF2184();
  (*(v103 + 8))(v66, v104);
  (*(v101 + 8))(v68, v102);
  (*(v64 + 8))(v109, v60);
  v85(v67, v95);
  return v69;
}

uint64_t sub_21974EE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_21974EEEC(a2, *a1, a3);
  sub_218C5FB88(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21974EEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v72 = a3;
  sub_2186E4D64(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v56 - v5;
  v61 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v61);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEF554();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v56 - v10;
  v11 = sub_219BED8D4();
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v13 - 8);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A90C(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A940(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A974(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF1904();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v56 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v56 - v35;
  sub_219BF2734();
  v37 = sub_219BDBD34();
  (*(*(v37 - 8) + 56))(v26, 1, 1, v37);
  v63 = a2;
  sub_219BF2734();
  v38 = sub_219BF18D4();
  v56 = *(v28 + 8);
  v57 = v27;
  v56(v30, v27);
  if (v38 >> 62)
  {
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:

      v40 = sub_219BF1AD4();
      (*(*(v40 - 8) + 56))(v23, 1, 1, v40);
      v41 = sub_219BEFC64();
      (*(*(v41 - 8) + 56))(v20, 1, 1, v41);
      v42 = sub_219BF4334();
      (*(*(v42 - 8) + 56))(v17, 1, 1, v42);
      v43 = sub_219BEC004();
      v44 = v58;
      (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
      sub_219BF1854();
      swift_unknownObjectRelease();
      sub_218817794(v44, sub_2186FE720);
      sub_218817794(v17, sub_218D7A90C);
      sub_218817794(v20, sub_218D7A940);
      sub_218817794(v23, sub_218D7A974);
      sub_218817794(v26, sub_2186DCF58);
      v45 = v33;
      v47 = v56;
      v46 = v57;
      v56(v45, v57);
      v63 = sub_219BF2744();
      v47(v36, v46);
      sub_2186E3594(0);
      v49 = v48;
      v50 = v71;
      v58 = sub_219BEDCB4();
      sub_219BEDCC4();
      v51 = v62;
      sub_219BEDD14();
      (*(v59 + 16))(v66, v51 + *(v61 + 28), v60);
      sub_218817794(v51, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
      type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0);
      sub_2186E3B14(0);
      sub_219BEE9B4();
      sub_219BEE984();
      sub_219BEE9D4();
      type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs(0);
      sub_2186F9254(0, &qword_280E91830, MEMORY[0x277D32318]);
      sub_219BEEC84();
      v55 = MEMORY[0x277D84F90];
      v52 = v65;
      sub_219BED834();
      v53 = v72;
      (*(*(v49 - 8) + 16))(v72, v50, v49);
      v54 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
      (*(v67 + 32))(v53 + *(v54 + 20), v52, v68);
      type metadata accessor for MagazineFeedGroup(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v38);
    goto LABEL_7;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21974F850(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup(0);
  sub_21974D8BC(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup, &unk_219C2DD50);
  return sub_219BEF194();
}

uint64_t sub_21974F944(uint64_t a1)
{
  v24 = a1;
  v1 = sub_219BF3924();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v20 = &v19 - v6;
  v23 = sub_219BF0BD4();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4D64(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D33F90];
  v22 = v3;
  v14 = *(v3 + 104);
  v14(v12 + v11, v13, v1);
  v14(v12 + v11 + v10, *MEMORY[0x277D33FA8], v1);
  v14(v12 + v11 + 2 * v10, *MEMORY[0x277D33FB0], v1);
  v15 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0);
  type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  (*(v7 + 8))(v9, v23);
  if (v25 == 1)
  {
    v16 = v21;
    v14(v21, *MEMORY[0x277D33F98], v1);
    v17 = v20;
    sub_2194995E4(v20, v16);
    (*(v22 + 8))(v17, v1);
  }

  return v26;
}

uint64_t sub_21974FC80()
{
  sub_2186E4D64(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21974FD00@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E3594(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000000;
  return result;
}

uint64_t sub_21974FD78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs(0);
  a2[4] = sub_21974D8BC(&qword_280E99B40, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs, &unk_219C34FE8);
  a2[5] = sub_21974D8BC(&qword_280E99B48, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs, &unk_219C34FC0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21975040C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
}

uint64_t sub_21974FE40()
{
  sub_2186E3594(0);

  return sub_219BEDCA4();
}

uint64_t sub_21974FE6C@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E4D64(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E3594(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218817794(inited + 32, sub_2188317B0);
  sub_219750474(0);
  a2[3] = v6;
  a2[4] = sub_21974D8BC(&qword_280EE7618, sub_219750474, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21974FFF0(uint64_t a1)
{
  sub_21974D8BC(&qword_280E97500, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter, &unk_219CA1320);

  return sub_219BE2324();
}

uint64_t sub_2197501C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219750228(_OWORD *a1)
{
  v3 = *(type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return sub_21974DFF4(v4, v8);
}

uint64_t sub_21975040C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_219750754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_21875FD34(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_218AB5BE8(a1, v18 - v8);
  v10 = sub_219BF5BF4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2187605DC(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_219BF5B44();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_219BF5BE4();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_219750948(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_2197509E4(a1);
}

uint64_t sub_2197509E4(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_219BE1814();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_219BE1924();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_219BE1804();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219750B68, 0, 0);
}

uint64_t sub_219750B68()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  v0[17] = __swift_project_value_buffer(v1, qword_280F62730);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) fetching user consent state", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BE18B4();
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_219750CD0;
  v6 = v0[16];

  return MEMORY[0x2821D0EC8](v6);
}

uint64_t sub_219750CD0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_219750FD8;
  }

  else
  {
    v3 = sub_219750E38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219750E38()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  sub_219BE17F4();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D6C400])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x277D6C410])
  {
    v5 = 3;
  }

  else
  {
    if (v4 != *MEMORY[0x277D6C408])
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
LABEL_2:
      v5 = 1;
      goto LABEL_7;
    }

    v5 = 2;
  }

LABEL_7:
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[6];
  *v10 = v5;
  type metadata accessor for SportsSyncSetting(0);
  sub_219BE17E4();
  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v6, v8);
  *(v10 + 8) = 0;

  v12 = v0[1];

  return v12();
}

uint64_t sub_219750FD8()
{
  v13 = v0;
  v1 = *(v0 + 152);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) failed to fetch user consent state, error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_219751174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE1804();
  v3[2] = v5;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_219751280;

  return sub_219751474(v6, a3);
}

uint64_t sub_219751280()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_219751410;
  }

  else
  {
    (*(v2[3] + 8))(v2[4], v2[2]);
    v3 = sub_2197513AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2197513AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219751410()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219751474(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_219BE17D4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_219BE1924();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  type metadata accessor for SportsSyncSetting(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197515D4, 0, 0);
}

uint64_t sub_2197515D4()
{
  v22 = v0;
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[7];
  v3 = sub_219BE5434();
  v0[17] = __swift_project_value_buffer(v3, qword_280F62730);
  sub_21975588C(v2, v1, type metadata accessor for SportsSyncSetting);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v10 = FCSportsSyncState.description.getter(*v7);
    v12 = v11;
    sub_2197558F4(v7, type metadata accessor for SportsSyncSetting);
    v13 = sub_2186D1058(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2186C1000, v4, v5, "Service(V2) set sports favorites user consent state to '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {

    sub_2197558F4(v7, type metadata accessor for SportsSyncSetting);
  }

  v14 = v0[15];
  v15 = v0[10];
  v16 = v0[7];
  sub_219BE18B4();
  sub_21975588C(v16, v14, type metadata accessor for SportsSyncSetting);
  sub_219754CFC(v14, v15);
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_2197519DC;
  v18 = v0[10];
  v19 = v0[6];

  return MEMORY[0x2821D0ED8](v19, v18);
}

uint64_t sub_2197519DC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[11];
  (*(v2[9] + 8))(v2[10], v2[8]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_219751D7C;
  }

  else
  {
    v6 = sub_219751BA0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219751BA0()
{
  v14 = v0;
  sub_21975588C(v0[7], v0[14], type metadata accessor for SportsSyncSetting);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = FCSportsSyncState.description.getter(*v4);
    v9 = v8;
    sub_2197558F4(v4, type metadata accessor for SportsSyncSetting);
    v10 = sub_2186D1058(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2186C1000, v1, v2, "Service(V2) successfully set sports favorites user consent state to '%{public}s'", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {

    sub_2197558F4(v4, type metadata accessor for SportsSyncSetting);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_219751D7C()
{
  v13 = v0;
  v1 = *(v0 + 152);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) failed to set sports favorites user consent state, error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_219751F1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219751FB8(a1);
}

uint64_t sub_219751FB8(uint64_t a1)
{
  v1[7] = a1;
  type metadata accessor for SportsSyncFavoritesFetchResult(0);
  v1[8] = swift_task_alloc();
  v2 = sub_219BE1894();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_219BE1924();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_219BE1914();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219752168, 0, 0);
}

uint64_t sub_219752168()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280F62730);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) syncing favorites", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  *(v0 + 160) = CACurrentMediaTime();
  sub_219BE18B4();
  *(v0 + 40) = MEMORY[0x277D84F90];
  sub_2197557AC();
  sub_21875FD34(0, &qword_27CC1EB00, MEMORY[0x277D6C438], MEMORY[0x277D83940]);
  sub_219755804();
  sub_219BF7164();
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_219752364;
  v6 = *(v0 + 144);
  v7 = *(v0 + 88);

  return MEMORY[0x2821D0EF8](v6, v7);
}

uint64_t sub_219752364()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[12];
  (*(v2[10] + 8))(v2[11], v2[9]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2197527AC;
  }

  else
  {
    v6 = sub_219752528;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219752528()
{
  v24 = v0;
  v1 = v0[17];
  v3 = v0[7];
  v2 = v0[8];
  (*(v0[16] + 16))(v1, v0[18], v0[15]);
  sub_219754A50(v1, v3);
  sub_21975588C(v3, v2, type metadata accessor for SportsSyncFavoritesFetchResult);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v22 = v0[18];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 134349314;
    sub_219BF5CD4();
    *(v9 + 4) = v11;
    *(v9 + 12) = 2082;
    v12 = MEMORY[0x21CECC6D0](*v8, MEMORY[0x277D837D0]);
    v14 = v13;
    sub_2197558F4(v8, type metadata accessor for SportsSyncFavoritesFetchResult);
    v15 = sub_2186D1058(v12, v14, &v23);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_2186C1000, v4, v5, "Service(V2) syncing favorites successful, visible duration=%{public}f, umcIDs=%{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v16 = v0[18];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[8];

    sub_2197558F4(v19, type metadata accessor for SportsSyncFavoritesFetchResult);
    (*(v18 + 8))(v16, v17);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_2197527AC()
{
  v14 = v0;
  v1 = *(v0 + 176);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    sub_219BF5CD4();
    *(v5 + 14) = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) syncing favorites failed, error=%{public}s, visible duration=%{public}f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

char *sub_219752974(void *a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    v3 = (*a1 + 40);
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);

      if (*(sub_219BF46F4() + 16))
      {
        sub_21870F700(v7, v6);
        v9 = v8;

        if (v9)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_218840D24(0, *(v5 + 2) + 1, 1, v5);
          }

          v11 = *(v5 + 2);
          v10 = *(v5 + 3);
          if (v11 >= v10 >> 1)
          {
            v5 = sub_218840D24((v10 > 1), v11 + 1, 1, v5);
          }

          *(v5 + 2) = v11 + 1;
          v12 = &v5[16 * v11];
LABEL_20:
          *(v12 + 4) = v7;
          *(v12 + 5) = v6;
          goto LABEL_4;
        }
      }

      else
      {
      }

      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
      if (*(sub_219BF4704() + 16))
      {
        sub_21870F700(v7, v6);
        if (v13)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_218840D24(0, *(v4 + 2) + 1, 1, v4);
          }

          v15 = *(v4 + 2);
          v14 = *(v4 + 3);
          if (v15 >= v14 >> 1)
          {
            v4 = sub_218840D24((v14 > 1), v15 + 1, 1, v4);
          }

          *(v4 + 2) = v15 + 1;
          v12 = &v4[16 * v15];
          goto LABEL_20;
        }
      }

LABEL_4:
      v3 += 2;
      if (!--v1)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_219752B78(void *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v4 - 1);
      v7 = *v4;
      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);

      if (*(sub_219BF46F4() + 16))
      {
        sub_21870F700(v8, v7);
        v10 = v9;

        if (v10)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_218840D24(0, *(v6 + 2) + 1, 1, v6);
          }

          v12 = *(v6 + 2);
          v11 = *(v6 + 3);
          if (v12 >= v11 >> 1)
          {
            v6 = sub_218840D24((v11 > 1), v12 + 1, 1, v6);
          }

          *(v6 + 2) = v12 + 1;
          v13 = &v6[16 * v12];
LABEL_20:
          *(v13 + 4) = v8;
          *(v13 + 5) = v7;
          goto LABEL_4;
        }
      }

      else
      {
      }

      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
      if (*(sub_219BF4704() + 16))
      {
        sub_21870F700(v8, v7);
        if (v14)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_218840D24(0, *(v5 + 2) + 1, 1, v5);
          }

          v16 = *(v5 + 2);
          v15 = *(v5 + 3);
          if (v16 >= v15 >> 1)
          {
            v5 = sub_218840D24((v15 > 1), v16 + 1, 1, v5);
          }

          *(v5 + 2) = v16 + 1;
          v13 = &v5[16 * v16];
          goto LABEL_20;
        }
      }

LABEL_4:
      v4 += 2;
      if (!--v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_219752D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_219752DA4, 0, 0);
}

uint64_t sub_219752DA4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_219752E9C;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v5, v6, v7, 0, 0, &unk_219CA1530, v2, v8);
}

uint64_t sub_219752E9C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219752FD8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219752FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21975303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  sub_21875FD34(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219753104, 0, 0);
}

uint64_t sub_219753104()
{
  v1 = v0[3];
  v2 = v0[4];
  if (*(v1 + 16) || *(v2 + 16))
  {
    v3 = v0[8];
    v4 = v0[5];
    v5 = sub_219BF5BF4();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v6[5] = v1;
    v6[6] = v2;

    sub_219750754(v3, &unk_219CA1540, v6);
    sub_2187605DC(v3);
  }

  v7 = v0[6];
  v8 = v0[7];
  if (*(v7 + 16) || *(v8 + 16))
  {
    v9 = v0[8];
    v10 = v0[5];
    v11 = sub_219BF5BF4();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v7;
    v12[6] = v8;

    sub_219750754(v9, &unk_219CA1550, v12);
    sub_2187605DC(v9);
  }

  v13 = swift_task_alloc();
  v0[9] = v13;
  sub_2197556A4(0);
  *v13 = v0;
  v13[1] = sub_21975334C;

  return MEMORY[0x2822004D0](v0 + 11, 0, 0, v14);
}

uint64_t sub_21975334C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_219752FD8;
  }

  else
  {
    v2 = sub_219753460;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219753460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2197534C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_219BE1914();
  v6[2] = v9;
  v6[3] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[4] = v10;
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_2197535D8;

  return sub_219753704(v10, a5, a6);
}

uint64_t sub_2197535D8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_219755B3C;
  }

  else
  {
    (*(v2[3] + 8))(v2[4], v2[2]);
    v3 = sub_219755B38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219753704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_219BE1924();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197537C8, 0, 0);
}

uint64_t sub_2197537C8()
{
  v28 = v0;
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 96) = __swift_project_value_buffer(v1, qword_280F62730);

  v2 = sub_219BE5414();
  v3 = sub_219BF6214();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446466;
    v8 = MEMORY[0x277D837D0];
    v9 = MEMORY[0x21CECC6D0](v5, MEMORY[0x277D837D0]);
    v11 = sub_2186D1058(v9, v10, &v27);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v12 = MEMORY[0x21CECC6D0](v4, v8);
    v14 = sub_2186D1058(v12, v13, &v27);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) syncing added favorites, team ids=%{public}s, league ids=%{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  *(v0 + 104) = CACurrentMediaTime();
  sub_219BE18B4();
  sub_21875FD34(0, &qword_27CC1EAF0, MEMORY[0x277D6C468], MEMORY[0x277D84560]);
  v17 = sub_219BE18E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v0 + 112) = v21;
  *(v21 + 16) = xmmword_219C09EC0;
  v22 = (v21 + v20);
  *v22 = v15;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x277D6C458], v17);
  *(v22 + v19) = v16;
  v23((v22 + v19), *MEMORY[0x277D6C460], v17);

  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_219753B44;
  v25 = *(v0 + 48);

  return MEMORY[0x2821D0EF0](v25, v21);
}

uint64_t sub_219753B44()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);

  if (v0)
  {
    v3 = sub_219753DC0;
  }

  else
  {
    v3 = sub_219753CC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219753CC8(uint64_t a1)
{
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    sub_219BF5CD4();
    *(v4 + 4) = v5;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) sync added favorites updated successfully, visible duration=%{public}f", v4, 0xCu);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_219753DC0()
{
  v14 = v0;
  v1 = *(v0 + 128);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    sub_219BF5CD4();
    *(v5 + 14) = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) sync added favorites resulted in error=%{public}s, visible duration=%{public}f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_219753F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_219BE1914();
  v6[2] = v9;
  v6[3] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[4] = v10;
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_2197535D8;

  return sub_219754070(v10, a5, a6);
}

uint64_t sub_219754070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_219BE1924();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219754134, 0, 0);
}

uint64_t sub_219754134()
{
  v28 = v0;
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 96) = __swift_project_value_buffer(v1, qword_280F62730);

  v2 = sub_219BE5414();
  v3 = sub_219BF6214();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446466;
    v8 = MEMORY[0x277D837D0];
    v9 = MEMORY[0x21CECC6D0](v5, MEMORY[0x277D837D0]);
    v11 = sub_2186D1058(v9, v10, &v27);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v12 = MEMORY[0x21CECC6D0](v4, v8);
    v14 = sub_2186D1058(v12, v13, &v27);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) syncing removed favorites, team ids=%{public}s, league ids=%{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  *(v0 + 104) = CACurrentMediaTime();
  sub_219BE18B4();
  sub_21875FD34(0, &qword_27CC1EAF0, MEMORY[0x277D6C468], MEMORY[0x277D84560]);
  v17 = sub_219BE18E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v0 + 112) = v21;
  *(v21 + 16) = xmmword_219C09EC0;
  v22 = (v21 + v20);
  *v22 = v15;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x277D6C458], v17);
  *(v22 + v19) = v16;
  v23((v22 + v19), *MEMORY[0x277D6C460], v17);

  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_2197544B0;
  v25 = *(v0 + 48);

  return MEMORY[0x2821D0F08](v25, v21);
}

uint64_t sub_2197544B0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);

  if (v0)
  {
    v3 = sub_21975472C;
  }

  else
  {
    v3 = sub_219754634;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219754634(uint64_t a1)
{
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    sub_219BF5CD4();
    *(v4 + 4) = v5;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) sync removed favorites successfully, visible duration=%f", v4, 0xCu);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_21975472C()
{
  v14 = v0;
  v1 = *(v0 + 128);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    sub_219BF5CD4();
    *(v5 + 14) = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) sync removed favorites resulted in error=%{public}s, visible duration=%{public}f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

double sub_2197548C8(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v11 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v10;
          v8 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        v1 = &v11;
        sub_219BF73E4();
      }

      ++v5;
      if (v6 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  v1[2] = v8;

  return result;
}

void sub_219754A50(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = sub_219BE18D4();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1904();
  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {

    v9 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
LABEL_4:
      v30 = a2;
      v31 = a1;
      v36 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v12, 0);
      v13 = v36;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = *(v14 + 64);
      v29 = v9;
      v17 = &v9[(v16 + 32) & ~v16];
      v32 = *(v14 + 56);
      v33 = v15;
      v18 = (v14 - 8);
      do
      {
        v20 = v34;
        v19 = v35;
        v21 = v14;
        v33(v34, v17, v35);
        v22 = sub_219BE18C4();
        v24 = v23;
        (*v18)(v20, v19);
        v36 = v13;
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21870B65C((v25 > 1), v26 + 1, 1);
          v13 = v36;
        }

        *(v13 + 16) = v26 + 1;
        v27 = v13 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v17 += v32;
        --v12;
        v14 = v21;
      }

      while (v12);

      a2 = v30;
      a1 = v31;
      goto LABEL_11;
    }

LABEL_10:

    v13 = MEMORY[0x277D84F90];
LABEL_11:
    *a2 = v13;
    type metadata accessor for SportsSyncFavoritesFetchResult(0);
    sub_219BE18F4();
    v28 = sub_219BE1914();
    (*(*(v28 - 8) + 8))(a1, v28);
    return;
  }

  v9 = sub_21947D66C(*(v6 + 16), 0);
  sub_2194ACA08(&v36, &v9[(*(v4 + 80) + 32) & ~*(v4 + 80)], v8, v7);
  v11 = v10;
  sub_21892DE98(v36);
  if (v11 == v8)
  {
    v12 = *(v9 + 2);
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_219754CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_219BE1814();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = sub_219BE17D4();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v26 = a1;
  v28 = &v40 - v27;
  v29 = *v26;
  v30 = *v26 >= 2;
  v31 = *v26 == 2;
  v41 = v33;
  v42 = v32;
  if (v30)
  {
    v34 = v3;
    v35 = v44;
    v36 = v26;
    if (v31)
    {
      (*(v4 + 104))(v11, *MEMORY[0x277D6C408], v34, v25);
      sub_219BE17C4();
      result = sub_2197558F4(v36, type metadata accessor for SportsSyncSetting);
      if (v35)
      {
        return result;
      }

      v20 = v23;
    }

    else if (v29 == 3)
    {
      (*(v4 + 104))(v14, *MEMORY[0x277D6C410], v34, v25);
      sub_219BE17C4();
      result = sub_2197558F4(v36, type metadata accessor for SportsSyncSetting);
      if (v35)
      {
        return result;
      }

      v20 = v28;
    }

    else
    {
      (*(v4 + 104))(v40, *MEMORY[0x277D6C400], v34, v25);
      sub_219BE17C4();
      result = sub_2197558F4(v36, type metadata accessor for SportsSyncSetting);
      if (v35)
      {
        return result;
      }

      v20 = v17;
    }

    return (*(v41 + 32))(v43, v20, v42);
  }

  v37 = v26;
  (*(v4 + 104))(v8, *MEMORY[0x277D6C400], v3, v25);
  v38 = v44;
  sub_219BE17C4();
  result = sub_2197558F4(v37, type metadata accessor for SportsSyncSetting);
  if (!v38)
  {
    return (*(v41 + 32))(v43, v20, v42);
  }

  return result;
}

uint64_t sub_2197550F4(uint64_t a1)
{
  v3 = type metadata accessor for SportsSyncSetting(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_21879D924();
  sub_21975588C(a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsSyncSetting);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  sub_219755954(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  return sub_219BE2F54();
}

uint64_t sub_219755258(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_21875FD34(0, a3, a4, MEMORY[0x277D6CF30]);

  return sub_219BE2F54();
}

uint64_t sub_2197552C4(void *a1)
{
  v3 = *v1;
  v4 = sub_219752974(a1);
  v6 = v5;
  v7 = sub_219752B78(a1);
  v9 = v8;
  sub_21879D924();
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v6;
  v10[4] = v3;
  v10[5] = v7;
  v10[6] = v9;

  return sub_219BE2F54();
}

uint64_t sub_219755374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219752D7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21975543C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2187609C8;

  return sub_21975303C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_219755514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_2197534C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2197555DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219753F5C(a1, v4, v5, v6, v7, v8);
}

void sub_2197556A4(uint64_t a1)
{
  if (!qword_280E8EA48)
  {
    sub_218A450F0();
    v1 = sub_219BF5C74();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EA48);
    }
  }
}

uint64_t sub_219755710(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219751F1C(a1);
}

unint64_t sub_2197557AC()
{
  result = qword_27CC1EAF8;
  if (!qword_27CC1EAF8)
  {
    sub_219BE1894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EAF8);
  }

  return result;
}

unint64_t sub_219755804()
{
  result = qword_27CC1EB08;
  if (!qword_27CC1EB08)
  {
    sub_21875FD34(255, &qword_27CC1EB00, MEMORY[0x277D6C438], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EB08);
  }

  return result;
}

uint64_t sub_21975588C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197558F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219755954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSyncSetting(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197559B8(uint64_t a1)
{
  v4 = *(type metadata accessor for SportsSyncSetting(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_219751174(a1, v6, v1 + v5);
}

uint64_t sub_219755A9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_219750948(a1);
}

uint64_t sub_219755B40(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 32) appConfiguration];
  sub_2186E5BB8(0, &qword_27CC19D10, type metadata accessor for RecipeBoxFeedConfigFetchResult, MEMORY[0x277D6CF30]);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  sub_219BE2F54();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;

  swift_unknownObjectRetain();
  v8 = sub_219BE2E54();
  type metadata accessor for RecipeBoxFeedServiceConfig(0);
  v9 = sub_219BE2F74();
  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_219755CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2187608D4;

  return sub_219755D60(a1);
}

uint64_t sub_219755D60(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  sub_2186E5BB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v2[7] = swift_task_alloc();
  v3 = sub_219BDB954();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219755EA4, 0, 0);
}

uint64_t sub_219755EA4()
{
  if (qword_27CC080D0 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    if (qword_27CC080C8 != -1)
    {
      swift_once();
    }

    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[7];
    sub_2187147DC(&qword_27CC1EB18, v1, type metadata accessor for RecipeBoxFeedServiceConfigFetcher, &unk_219CA1600);
    sub_219BDC7D4();
    sub_219BDB914();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_218838478(v0[7]);
      sub_2197567D4();
      swift_allocError();
      swift_willThrow();

      v5 = v0[1];

      return v5();
    }

    else
    {
      v9 = v0[5];
      (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
      __swift_project_boxed_opaque_existential_1((v9 + 40), *(v9 + 64));
      v10 = swift_task_alloc();
      v0[11] = v10;
      *v10 = v0;
      v10[1] = sub_219756194;
      v11 = v0[10];
      v12 = v0[4];

      return sub_219012AA4(v12, v11);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[5] + 40), *(v0[5] + 64));
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_2197563B8;
    v8 = v0[4];

    return sub_219012084(v8);
  }
}

uint64_t sub_219756194()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_219756330;
  }

  else
  {
    v2 = sub_2197562A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2197562A8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_219756330()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2197563B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_2197564EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecipeBoxFeedContentConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219756770(a1, v16);
  v17 = *(a1 + *(type metadata accessor for RecipeBoxFeedConfigFetchResult(0) + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for RecipeBoxFeedServiceConfig(0);
  sub_219756770(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[8]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_21913B308(v16);
  result = v20;
  *&a5[v18[9]] = v20;
  return result;
}

uint64_t sub_219756770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedContentConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197567D4()
{
  result = qword_27CC1EB20;
  if (!qword_27CC1EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EB20);
  }

  return result;
}

unint64_t sub_21975683C()
{
  result = qword_27CC1EB30;
  if (!qword_27CC1EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EB30);
  }

  return result;
}

uint64_t sub_219756890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D31490])
  {
    v10 = MEMORY[0x277D2D8D8];
LABEL_36:
    v17 = *v10;
    v18 = sub_219BDF134();
    v19 = *(*(v18 - 8) + 104);
    v20 = a1;
    v21 = v17;
    return v19(v20, v21, v18);
  }

  if (v9 == *MEMORY[0x277D314B8] || v9 == *MEMORY[0x277D314E0] || v9 == *MEMORY[0x277D31480] || v9 == *MEMORY[0x277D314C0] || v9 == *MEMORY[0x277D31498] || v9 == *MEMORY[0x277D314A0] || v9 == *MEMORY[0x277D314A8])
  {
    v10 = MEMORY[0x277D2D8F0];
    goto LABEL_36;
  }

  if (v9 == *MEMORY[0x277D314B0] || v9 == *MEMORY[0x277D314F0] || v9 == *MEMORY[0x277D31468] || v9 == *MEMORY[0x277D31470] || v9 == *MEMORY[0x277D31478] || v9 == *MEMORY[0x277D314E8] || v9 == *MEMORY[0x277D314C8] || v9 == *MEMORY[0x277D314D0] || v9 == *MEMORY[0x277D314D8])
  {
    v10 = MEMORY[0x277D2D8E8];
    goto LABEL_36;
  }

  if (v9 == *MEMORY[0x277D314F8])
  {
    v10 = MEMORY[0x277D2D8E0];
    goto LABEL_36;
  }

  v23 = *MEMORY[0x277D31460];
  v24 = v9;
  v18 = sub_219BDF134();
  v19 = *(*(v18 - 8) + 104);
  if (v24 != v23 && v24 != *MEMORY[0x277D31450] && v24 != *MEMORY[0x277D31458] && v24 != *MEMORY[0x277D31508] && v24 != *MEMORY[0x277D31538] && v24 != *MEMORY[0x277D31500] && v24 != *MEMORY[0x277D31520] && v24 != *MEMORY[0x277D31530] && v24 != *MEMORY[0x277D31518] && v24 != *MEMORY[0x277D31548] && v24 != *MEMORY[0x277D31510] && v24 != *MEMORY[0x277D31528] && v24 != *MEMORY[0x277D31540])
  {
    v19(a1, *MEMORY[0x277D2D8E8], v18);
    return (*(v5 + 8))(v8, v4);
  }

  v21 = *MEMORY[0x277D2D8F0];
  v20 = a1;
  return v19(v20, v21, v18);
}

id sub_219756CB8(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BDCAF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 > 5)
  {
    v10 = *(v1 + 16);
    v11 = [objc_opt_self() systemFontOfSize:11.0 weight:*MEMORY[0x277D74420]];
    v12 = [v10 scaledFontForFont:v11 maximumPointSize:48.0];

    return v12;
  }

  else
  {
    sub_219BF0CD4();
    v7 = [*(v1 + 16) scaledFontForFont:*(v1 + 40) maximumPointSize:48.0];
    (*(v4 + 104))(v6, *MEMORY[0x277D6D198], v3);
    v8 = sub_219BF0CB4();

    (*(v4 + 8))(v6, v3);
    return v8;
  }
}

id sub_219756E68(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BDCAF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 > 5)
  {
    v12 = *(v1 + 24);
    v13 = [objc_opt_self() systemFontOfSize:11.0 weight:*MEMORY[0x277D74418]];
    v14 = [v12 scaledFontForFont_];

    return v14;
  }

  else
  {
    sub_219BF0CD4();
    v7 = *(v1 + 24);
    v8 = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
    v9 = [v7 scaledFontForFont_];

    (*(v4 + 104))(v6, *MEMORY[0x277D6D198], v3);
    v10 = sub_219BF0CB4();

    (*(v4 + 8))(v6, v3);
    return v10;
  }
}

uint64_t sub_21975704C()
{

  return swift_deallocClassInstance();
}

void sub_2197570C0(uint64_t a1, void *a2)
{
  if (a1 > 5u)
  {
    v4 = objc_opt_self();
    v5 = &selRef_clearColor;
  }

  else
  {
    v3 = sub_219BED0C4();
    v4 = objc_opt_self();
    v5 = &selRef_systemBackgroundColor;
    if (v3)
    {
      v5 = &selRef_clearColor;
    }
  }

  v6 = [v4 *v5];
  [a2 setBackgroundColor_];
}

uint64_t sub_219757174(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_219758298(v6);
  return sub_219BF73E4();
}

uint64_t SportsNavigationTitleStringBuilder.sportsNavigationTitle(for:)(uint64_t a1, uint64_t a2)
{
  sub_219BF29D4();
  sub_219BE3204();
  sub_21975777C(v2, &v13);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v14;
  *(v5 + 32) = v13;
  *(v5 + 48) = v6;
  *(v5 + 64) = v15;
  *(v5 + 80) = v16;

  v7 = sub_219BE2E54();
  sub_2197593C0(0, &qword_280E8EC90, sub_2186D85DC, MEMORY[0x277D83940]);
  sub_219BE2F64();

  sub_21975777C(v2, &v13);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = v14;
  *(v8 + 32) = v13;
  *(v8 + 48) = v9;
  *(v8 + 64) = v15;
  *(v8 + 80) = v16;

  v10 = sub_219BE2E54();
  v11 = sub_219BE2F74();

  return v11;
}

uint64_t sub_2197573C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_219BF34F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197593C0(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - v14;
  v16 = *a1;
  sub_219BF29A4();
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_21927C08C(v15);
    sub_21975936C();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v34[3] = a4;
    v18 = sub_219BF34A4();
    v19 = *(v10 + 8);
    v38 = v10 + 8;
    v37 = v19;
    v19(v15, v9);
    v20 = *(v18 + 16);
    if (v20)
    {
      v34[1] = v18;
      v34[2] = v4;
      v22 = *(v10 + 16);
      v21 = v10 + 16;
      v23 = v18 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v35 = *(v21 + 56);
      v36 = v22;
      v24 = MEMORY[0x277D84F90];
      v34[4] = v21;
      v22(v12, v23, v9);
      while (1)
      {
        v26 = sub_219BF34D4();
        v28 = v27;
        v37(v12, v9);
        if (v28)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_218840D24(0, *(v24 + 2) + 1, 1, v24);
          }

          v30 = *(v24 + 2);
          v29 = *(v24 + 3);
          if (v30 >= v29 >> 1)
          {
            v24 = sub_218840D24((v29 > 1), v30 + 1, 1, v24);
          }

          *(v24 + 2) = v30 + 1;
          v25 = &v24[16 * v30];
          *(v25 + 4) = v26;
          *(v25 + 5) = v28;
        }

        v23 += v35;
        if (!--v20)
        {
          break;
        }

        v36(v12, v23, v9);
      }
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    v31 = off_282A4D758;
    type metadata accessor for TagService();
    v31(v24);

    v32 = sub_219BE2E54();
    sub_2186D85DC();
    sub_21926C200();
    v16 = sub_219BE30C4();
  }

  return v16;
}

void sub_2197577D4(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Swift::String *a4@<X8>)
{
  v7._rawValue = *a1;
  if (v7._rawValue >> 62)
  {
    rawValue = v7._rawValue;
    v9 = sub_219BF7214();
    v7._rawValue = rawValue;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else if (*((v7._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *a4 = SportsNavigationTitleStringBuilder.sportsNavigationTitle(for:)(v7);
    return;
  }

  sub_21975936C();
  swift_allocError();
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = 1;
  swift_willThrow();
}

Swift::String __swiftcall SportsNavigationTitleStringBuilder.sportsNavigationTitle(for:)(Swift::OpaquePointer a1)
{
  sub_219759240(0, &unk_27CC1EB40, MEMORY[0x277CC8B18]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v46 - v4;
  sub_219759240(0, &qword_27CC1EB60, MEMORY[0x277CC8AF8]);
  v7 = v6;
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v46 - v8;
  sub_219759220(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v57 = sub_219759134(v14, sub_2194B7E58, sub_218A33EA0);
  sub_219757174(&v57);
  v48 = 0;
  v15 = v57;
  v54 = v11;
  v55 = v10;
  v52 = v7;
  v53 = v5;
  v51 = v13;
  if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
  {
    v16 = sub_219BF7214();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_17:

    v18 = MEMORY[0x277D84F90];
    v29 = v2;
    goto LABEL_18;
  }

  v16 = *(v57 + 16);
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_4:
  v57 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);

    __break(1u);
    goto LABEL_24;
  }

  v46 = v3;
  v47 = v2;
  v17 = 0;
  v18 = v57;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x21CECE0F0](v17, v15);
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
      swift_unknownObjectRetain();
    }

    v20 = [v19 sportsTypePluralizedDisplayName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_219BF5414();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = sub_219757ECC([v19 sportsType]);
      v24 = v25;
      swift_unknownObjectRelease();
    }

    v57 = v18;
    v27 = *(v18 + 16);
    v26 = *(v18 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_21870B65C((v26 > 1), v27 + 1, 1);
      v18 = v57;
    }

    ++v17;
    *(v18 + 16) = v27 + 1;
    v28 = v18 + 16 * v27;
    *(v28 + 32) = v22;
    *(v28 + 40) = v24;
  }

  while (v16 != v17);

  v3 = v46;
  v29 = v47;
LABEL_18:
  v57 = v18;
  sub_2186D0BA8();
  sub_2197591D8(&qword_280E8EDE0, sub_2186D0BA8, MEMORY[0x277D83970]);
  v30 = sub_219BF56E4();

  v56 = v30;
  v32 = v49;
  v31 = v50;
  v33 = v52;
  (*(v50 + 104))(v49, *MEMORY[0x277CC8AF0], v52);
  v34 = v53;
  (*(v3 + 104))(v53, *MEMORY[0x277CC8B00], v29);
  v35 = v51;
  sub_219BDAF84();
  (*(v3 + 8))(v34, v29);
  (*(v31 + 8))(v32, v33);
  sub_2197591D8(&qword_27CC1EB70, sub_219759220, MEMORY[0x277CC8B28]);
  v36 = v55;
  sub_219BF5684();
  (*(v54 + 8))(v35, v36);

  v37 = v57;
  v38 = v58;
  v39 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v39 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = [objc_opt_self() bundleForClass_];
    v42 = sub_219BDB5E4();
    v44 = v43;

    v37 = v42;
    v38 = v44;
  }

LABEL_24:
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

uint64_t sub_219757ECC(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

void sub_219758298(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2186D85DC();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2197584CC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_21975839C(0, v2, 1, a1);
  }
}

uint64_t sub_21975839C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v18 = a3;
    v7 = *(v4 + 8 * a3);
    v16 = v6;
    v17 = v5;
    while (1)
    {
      v8 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 sportsType] - 1;
      if (v9 > 0xA)
      {
        v10 = -1;
      }

      else
      {
        v10 = qword_219CA18F8[v9];
      }

      v11 = [v8 sportsType] - 1;
      if (v11 > 0xA)
      {
        v12 = -1;
      }

      else
      {
        v12 = qword_219CA18F8[v11];
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v12 >= v10)
      {
LABEL_4:
        a3 = v18 + 1;
        v5 = v17 + 8;
        v6 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v13;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2197584CC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v92 = v4;
    }

    else
    {
LABEL_140:
      v92 = sub_218C81048(v4);
    }

    v4 = *(v92 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v93 = *&v92[16 * v4];
        v94 = v92;
        v95 = *&v92[16 * v4 + 24];
        sub_219758C38((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v4 + 16]), (*a3 + 8 * v95), v8);
        if (v6)
        {
          goto LABEL_118;
        }

        if (v95 < v93)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_218C81048(v94);
        }

        if (v4 - 2 >= *(v94 + 2))
        {
          goto LABEL_134;
        }

        v96 = &v94[16 * v4];
        *v96 = v93;
        *(v96 + 1) = v95;
        sub_218C80FBC(v4 - 1);
        v92 = v94;
        v4 = *(v94 + 2);
        if (v4 <= 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_144;
    }

LABEL_118:

    return;
  }

  v97 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v107 = v9;
    if (v8 + 1 >= v7)
    {
      goto LABEL_31;
    }

    v12 = *a3;
    ++v8;
    v13 = *(*a3 + 8 * v11);
    v14 = *(*a3 + 8 * v10);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = [v13 sportsType];
    if ((v15 - 1) > 0xA)
    {
      v16 = -1;
    }

    else
    {
      v16 = qword_219CA18F8[(v15 - 1)];
    }

    v105 = v16;
    v17 = [v14 sportsType];
    v98 = v6;
    if ((v17 - 1) > 0xA)
    {
      v18 = -1;
    }

    else
    {
      v18 = qword_219CA18F8[(v17 - 1)];
    }

    v104 = v18;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v100 = v10;
    v19 = 8 * v10;
    v20 = (v12 + v19 + 16);
    v21 = v19 + 8;
    v103 = v7;
    do
    {
      v6 = v11;
      v4 = v21;
      if (++v11 >= v7)
      {
        break;
      }

      v23 = *(v20 - 1);
      v24 = *v20;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v25 = [v24 sportsType];
      v26 = (v25 - 1) > 0xA ? -1 : qword_219CA18F8[(v25 - 1)];
      v27 = [v23 sportsType];
      v8 = (v27 - 1) <= 0xA ? qword_219CA18F8[(v27 - 1)] : -1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v22 = (v104 < v105) ^ (v8 >= v26);
      ++v20;
      v21 = v4 + 8;
      v7 = v103;
    }

    while ((v22 & 1) != 0);
    if (v104 < v105)
    {
      v28 = v100;
      if (v11 < v100)
      {
        goto LABEL_137;
      }

      if (v100 >= v11)
      {
        v6 = v98;
        v10 = v100;
        goto LABEL_31;
      }

      do
      {
        if (v28 != v6)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v29 = *(v31 + v19);
          *(v31 + v19) = *(v31 + v4);
          *(v31 + v4) = v29;
        }

        ++v28;
        v4 -= 8;
        v19 += 8;
      }

      while (v28 < v6--);
    }

    v6 = v98;
    v10 = v100;
LABEL_31:
    v32 = a3[1];
    if (v11 < v32)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_136;
      }

      if (v11 - v10 < v97)
      {
        if (__OFADD__(v10, v97))
        {
          goto LABEL_138;
        }

        if (v10 + v97 >= v32)
        {
          v33 = a3[1];
        }

        else
        {
          v33 = v10 + v97;
        }

        if (v33 < v10)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v11 != v33)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v11 < v10)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v107;
    }

    else
    {
      v9 = sub_2191F6B60(0, *(v107 + 2) + 1, 1, v107);
    }

    v4 = *(v9 + 2);
    v46 = *(v9 + 3);
    v47 = v4 + 1;
    if (v4 >= v46 >> 1)
    {
      v9 = sub_2191F6B60((v46 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v47;
    v48 = &v9[16 * v4];
    *(v48 + 4) = v10;
    *(v48 + 5) = v11;
    v49 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v8 = v11;
    if (v4)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v9 + 4);
          v52 = *(v9 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = &v9[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = &v9[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = &v9[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = &v9[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v88 = v9;
        v89 = *&v9[16 * v4 + 32];
        v90 = *&v9[16 * v50 + 40];
        sub_219758C38((*a3 + 8 * v89), (*a3 + 8 * *&v9[16 * v50 + 32]), (*a3 + 8 * v90), v49);
        if (v6)
        {
          goto LABEL_118;
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_218C81048(v88);
        }

        if (v4 >= *(v88 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v88[16 * v4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        sub_218C80FBC(v50);
        v9 = v88;
        v47 = *(v88 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v9[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = &v9[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = &v9[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v34 = v10;
  v35 = *a3;
  v36 = *a3 + 8 * v11 - 8;
  v99 = v6;
  v101 = v34;
  v4 = v34 - v11;
  v106 = v33;
LABEL_42:
  v109 = v11;
  v37 = *(v35 + 8 * v11);
  v38 = v4;
  v39 = v36;
  while (1)
  {
    v40 = *v39;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v41 = [v37 sportsType];
    if ((v41 - 1) > 0xA)
    {
      v8 = -1;
    }

    else
    {
      v8 = qword_219CA18F8[(v41 - 1)];
    }

    v42 = [v40 sportsType] - 1;
    if (v42 > 0xA)
    {
      v43 = -1;
    }

    else
    {
      v43 = qword_219CA18F8[v42];
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v43 >= v8)
    {
LABEL_41:
      v11 = v109 + 1;
      v36 += 8;
      --v4;
      if (v109 + 1 != v106)
      {
        goto LABEL_42;
      }

      v11 = v106;
      v6 = v99;
      v10 = v101;
      goto LABEL_55;
    }

    if (!v35)
    {
      break;
    }

    v44 = *v39;
    v37 = *(v39 + 8);
    *v39 = v37;
    *(v39 + 8) = v44;
    v39 -= 8;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_219758C38(void **__dst, void **__src, void **a3, void **a4)
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
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
      v36 = v4;
LABEL_33:
      v25 = v6 - 1;
      --v5;
      v26 = v14;
      v38 = v6 - 1;
      do
      {
        v27 = *--v26;
        v28 = *v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v29 = [v27 sportsType];
        if ((v29 - 1) > 0xA)
        {
          v30 = -1;
        }

        else
        {
          v30 = qword_219CA18F8[(v29 - 1)];
        }

        v31 = v6;
        v32 = [v28 sportsType] - 1;
        if (v32 > 0xA)
        {
          v33 = -1;
        }

        else
        {
          v33 = qword_219CA18F8[v32];
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v34 = v5 + 1;
        if (v33 < v30)
        {
          if (v34 != v31)
          {
            *v5 = *v38;
          }

          v4 = v36;
          if (v14 <= v36 || (v6 = v38, v38 <= v7))
          {
            v6 = v38;
            goto LABEL_50;
          }

          goto LABEL_33;
        }

        v6 = v31;
        v25 = v38;
        if (v34 != v14)
        {
          *v5 = *v26;
        }

        --v5;
        v14 = v26;
        v4 = v36;
      }

      while (v26 > v36);
      v14 = v26;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      v15 = &selRef_boldSystemFontOfSize_;
      v37 = &v4[v10];
      while (1)
      {
        v16 = *v6;
        v17 = *v4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 v15[234]] - 1;
        v19 = v18 > 0xA ? -1 : qword_219CA18F8[v18];
        v20 = v15;
        v21 = [v17 v15[234]] - 1;
        v22 = v21 > 0xA ? -1 : qword_219CA18F8[v21];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v22 >= v19)
        {
          break;
        }

        v23 = v6;
        v24 = v7 == v6++;
        v15 = v20;
        if (!v24)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v7;
        v14 = v37;
        if (v4 >= v37 || v6 >= v5)
        {
          goto LABEL_26;
        }
      }

      v23 = v4;
      v24 = v7 == v4++;
      v15 = v20;
      if (v24)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v7 = *v23;
      goto LABEL_24;
    }

LABEL_26:
    v6 = v7;
  }

LABEL_50:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

unint64_t sub_219759134(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_219BF7214();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2197591D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219759240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_219BDB094();
    sub_2186D0BA8();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_2197591D8(&unk_27CC1EB50, MEMORY[0x277CC8810], MEMORY[0x277CC8808]);
    v10[3] = sub_2197591D8(&qword_280E8EDE0, sub_2186D0BA8, MEMORY[0x277D83970]);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_21975936C()
{
  result = qword_27CC1EB78;
  if (!qword_27CC1EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EB78);
  }

  return result;
}

void sub_2197593C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2197594B8@<X0>(uint64_t a1@<X0>, void (*a2)(void, double)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDDC34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D2FC98] || v11 == *MEMORY[0x277D2FCA0] || v11 == *MEMORY[0x277D2FC88])
  {
    v14 = MEMORY[0x277D6CE70];
LABEL_14:
    v18 = *v14;
    v19 = sub_219BE2C74();
    return (*(*(v19 - 8) + 104))(a3, v18, v19);
  }

  if (v11 == *MEMORY[0x277D2FC90])
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v15 = qword_280F61728;
    v16 = sub_219BF6214();
    v17 = sub_219BE5314("Finished extended launch-to-article test", 40, 2, &dword_2186C1000, v15, v16, MEMORY[0x277D84F90]);
    a2(0, v17);
    v14 = MEMORY[0x277D6CE68];
    goto LABEL_14;
  }

  v21 = *MEMORY[0x277D6CE70];
  v22 = sub_219BE2C74();
  (*(*(v22 - 8) + 104))(a3, v21, v22);
  return (*(v7 + 8))(v10, v6);
}

void sub_21975990C(uint64_t a1)
{
  v54 = a1;
  sub_218954350(0);
  v57 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBF8(0);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BC64(0);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BCA0(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  (*(v10 + 16))(&v49 - v21, v1, v9, v20);
  v49 = v22;
  sub_21975AD40(v22, v18);
  (*(v10 + 32))(v12, v18, v9);
  sub_2186CC38C(&qword_280EE36E0, sub_218954408, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  sub_218B5B3A0(0);
  v24 = *(v23 + 36);
  v25 = sub_2186CC38C(&unk_280EE36D0, sub_218954408, MEMORY[0x277D6EC70]);
  sub_219BF5E84();
  if (*&v15[v24] == v59[0])
  {
    v26 = 0;
LABEL_20:
    v48 = *(v50 + 36);
    sub_218745C4C(v49, sub_21898BCA0);
    *&v15[v48] = v26;
    sub_218745C4C(v15, sub_21898BC64);
  }

  else
  {
    v27 = 0;
    v52 = (v3 + 32);
    v53 = (v3 + 16);
    v58 = MEMORY[0x277D84F90];
    while (1)
    {
      v28 = sub_219BF5EC4();
      v30 = v56;
      v29 = v57;
      (*v53)(v56);
      v28(v59, 0);
      sub_219BF5E94();
      v31 = *(v55 + 48);
      *v7 = v27;
      (*v52)(&v7[v31], v30, v29);
      v51 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v32 = v15;
      v33 = v25;
      v34 = v24;
      v35 = v9;
      v36 = sub_21975A860(v27, &v7[v31], v54);
      v37 = v7;
      sub_218745C4C(v7, sub_21898BBF8);
      v38 = *(v36 + 2);
      v39 = *(v58 + 2);
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_22;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v58;
      if (!isUniquelyReferenced_nonNull_native || v40 > *(v58 + 3) >> 1)
      {
        if (v39 <= v40)
        {
          v43 = v39 + v38;
        }

        else
        {
          v43 = v39;
        }

        v42 = sub_218840D24(isUniquelyReferenced_nonNull_native, v43, 1, v58);
      }

      v7 = v37;
      v9 = v35;
      v44 = *(v36 + 2);
      v24 = v34;
      v25 = v33;
      v58 = v42;
      if (v44)
      {
        if ((*(v42 + 3) >> 1) - *(v42 + 2) < v38)
        {
          goto LABEL_24;
        }

        v15 = v32;
        swift_arrayInitWithCopy();

        if (v38)
        {
          v45 = *(v58 + 2);
          v46 = __OFADD__(v45, v38);
          v47 = v45 + v38;
          if (v46)
          {
            goto LABEL_25;
          }

          *(v58 + 2) = v47;
        }
      }

      else
      {

        v15 = v32;
        if (v38)
        {
          goto LABEL_23;
        }
      }

      sub_219BF5E84();
      ++v27;
      if (*&v15[v34] == v59[0])
      {
        v26 = v51;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_219759E94()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218954408(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218745C4C(v2, sub_21880702C);
  }

  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186CC38C(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_219759FB8()
{
  v65 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v65);
  v66 = v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v64 = v52 - v3;
  sub_21898BF70(0);
  v63 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898C06C(0);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5B3A0(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v20 = v19;
  (*(*(v19 - 8) + 16))(v18, v0, v19);
  v21 = *(v16 + 44);
  v22 = sub_2186CC38C(&unk_280EE36D0, sub_218954408, MEMORY[0x277D6EC70]);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v18[v21] != v67[0])
  {
    v54 = (v5 + 16);
    v55 = v12;
    v24 = (v5 + 8);
    v25 = (v13 + 16);
    v62 = v24;
    v57 = v7;
    v58 = v18;
    v52[2] = v22;
    v53 = v21;
    v52[1] = v20;
    v56 = (v13 + 8);
    do
    {
      v61 = sub_219BF5EC4();
      v26 = *v25;
      v27 = v59;
      v28 = v55;
      (*v25)(v59);
      v61(v67, 0);
      sub_219BF5E94();
      (v26)(v10, v27, v28);
      v29 = *(v60 + 36);
      sub_2186CC38C(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
      sub_219BF5DF4();
      v30 = v27;
      v31 = v57;
      (*v56)(v30, v28);
      sub_219BF5E84();
      v32 = v54;
      if (*&v10[v29] != v67[0])
      {
        while (2)
        {
          v36 = sub_219BF5EC4();
          v37 = v63;
          (*v32)(v31);
          v36(v67, 0);
          sub_219BF5E94();
          v38 = v64;
          sub_219BE5FC4();
          (*v62)(v31, v37);
          v39 = v66;
          sub_21975A78C(v38, v66);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_218A128AC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
              v43 = v39;
              v45 = *(v44 + 48);
              v46 = sub_219BF1584();
              (*(*(v46 - 8) + 8))(v43 + v45, v46);
              v40 = type metadata accessor for TagFeedGapLocation;
              v41 = v43;
              goto LABEL_12;
            case 2u:
            case 3u:
            case 4u:
            case 5u:
            case 8u:
            case 9u:
            case 0xAu:
            case 0xBu:
            case 0xCu:
            case 0xDu:
            case 0xEu:
              v40 = type metadata accessor for TagFeedModel;
              v41 = v39;
LABEL_12:
              sub_218745C4C(v41, v40);
              goto LABEL_13;
            case 6u:
              v34 = type metadata accessor for TagFeedModel;
              v35 = v39;
              goto LABEL_8;
            case 7u:
              sub_218A128AC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
              v47 = v39;
              v49 = *(v48 + 48);
              sub_2186F0E54(0);
              (*(*(v50 - 8) + 8))(v47 + v49, v50);
              sub_2186EAD48(0);
              (*(*(v51 - 8) + 8))(v47, v51);
LABEL_13:
              sub_218745C4C(v10, sub_21898C06C);
              v23 = 1;
              v18 = v58;
              goto LABEL_14;
            default:

              sub_21975A7F0(0, &qword_280E8F9F0, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D837D0], "identifier location ");
              v34 = type metadata accessor for TagFeedGapLocation;
              v35 = v39 + *(v33 + 48);
LABEL_8:
              sub_218745C4C(v35, v34);
              sub_219BF5E84();
              if (*&v10[v29] != v67[0])
              {
                continue;
              }

              goto LABEL_5;
          }
        }
      }

LABEL_5:
      sub_218745C4C(v10, sub_21898C06C);
      v18 = v58;
      sub_219BF5E84();
    }

    while (*&v18[v53] != v67[0]);
  }

  v23 = 0;
LABEL_14:
  sub_218745C4C(v18, sub_218B5B3A0);
  return v23;
}

uint64_t sub_21975A78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21975A7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

char *sub_21975A860(uint64_t a1, char *a2, uint64_t a3)
{
  v41 = a2;
  v42 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v8 = v7;
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898C06C(0);
  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (!*(a3 + 16))
    {
      return MEMORY[0x277D84F90];
    }

    v21 = sub_219BF7A94();
    v22 = -1 << *(a3 + 32);
    v23 = v21 & ~v22;
    if (((*(a3 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }

    v24 = ~v22;
    result = MEMORY[0x277D84F90];
    while (*(*(a3 + 48) + 8 * v23) != a1)
    {
      v23 = (v23 + 1) & v24;
      if (((*(a3 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        return result;
      }
    }
  }

  (*(v13 + 16))(v15, v41, v12, v18);
  sub_2186CC38C(&unk_280EE5860, sub_218954350, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v26 = *(v17 + 36);
  sub_2186CC38C(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
  sub_219BF5E84();
  if (*&v20[v26] == v43[0])
  {
    v41 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = (v40 + 16);
    v28 = (v40 + 8);
    v41 = MEMORY[0x277D84F90];
    do
    {
      v29 = sub_219BF5EC4();
      (*v27)(v10);
      v29(v43, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v30 = sub_219BE5B24();
        v39 = v31;
        v40 = v30;

        (*v28)(v10, v8);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = v41;
        }

        else
        {
          v32 = sub_218840D24(0, *(v41 + 2) + 1, 1, v41);
        }

        v34 = *(v32 + 2);
        v33 = *(v32 + 3);
        v35 = (v34 + 1);
        if (v34 >= v33 >> 1)
        {
          v41 = (v34 + 1);
          v38 = sub_218840D24((v33 > 1), v34 + 1, 1, v32);
          v35 = v41;
          v32 = v38;
        }

        *(v32 + 2) = v35;
        v41 = v32;
        v36 = &v32[16 * v34];
        v37 = v39;
        *(v36 + 4) = v40;
        *(v36 + 5) = v37;
      }

      else
      {
        (*v28)(v10, v8);
        sub_218745C4C(v6, type metadata accessor for TagFeedModel);
      }

      sub_219BF5E84();
    }

    while (*&v20[v26] != v43[0]);
  }

  sub_218745C4C(v20, sub_21898C06C);
  return v41;
}

uint64_t sub_21975AD40(uint64_t a1, uint64_t a2)
{
  sub_21898BCA0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21975ADB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E955A0;
  if (!qword_280E955A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21975AE60(uint64_t a1)
{
  sub_21915A40C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C6148(319, &qword_280E8DE40, 0x277D31330);
      if (v3 <= 0x3F)
      {
        sub_2186D6710(319, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
        if (v4 <= 0x3F)
        {
          sub_2186C6148(319, &qword_280E8E370, 0x277D31190);
          if (v5 <= 0x3F)
          {
            sub_2186CFDE4(319, qword_280ECA990, &protocol descriptor for IssueModelFactoryType);
            if (v6 <= 0x3F)
            {
              sub_2186D6710(319, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
              if (v7 <= 0x3F)
              {
                sub_2186CFDE4(319, &unk_280EE6148, MEMORY[0x277D34BA0]);
                if (v8 <= 0x3F)
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

uint64_t sub_21975AFDC()
{
  sub_21975EB30(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21975B05C(uint64_t a1)
{
  v3 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21975EAC8(v1, v6, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21975B924(v6, v8 + v7);
  v9 = sub_219BE2E54();
  sub_2186E330C(0);
  sub_219BE2F74();

  v10 = v19;
  sub_21975EAC8(v19, v6, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
  v11 = swift_allocObject();
  sub_21975B924(v6, v11 + v7);
  *(v11 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v12 = sub_219BE2E54();
  type metadata accessor for MagazineFeedGroup(0);
  sub_219BE2F74();

  v13 = sub_219BE2E54();
  sub_21975EA48(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_21975EAC8(v10, v6, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_21975B924(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_21975B384@<X0>(unint64_t *a1@<X8>)
{
  sub_21915A40C(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x8000000000000000;
  return result;
}

uint64_t sub_21975B3FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(0);
  a2[4] = sub_21975ADB8(&qword_280E96B40, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs, &unk_219C3BE58);
  a2[5] = sub_21975ADB8(&qword_280E96B48, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs, &unk_219C3BE30);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21975EAC8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
}

uint64_t sub_21975B4C0(uint64_t a1, uint64_t a2)
{
  sub_21975EB30(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v8 = v7 + v6;
  v9 = *(v2 + *(a2 + 20) + 16);
  *v8 = 8;
  *(v8 + 8) = v9;
  (*(v5 + 104))();
  return v7;
}

uint64_t sub_21975B5E8()
{
  sub_21915A40C(0);

  return sub_219BEDCA4();
}

uint64_t sub_21975B614@<X0>(uint64_t *a2@<X8>)
{
  sub_21975EB30(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21915A40C(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21975EB94(inited + 32, sub_2188317B0);
  sub_21975EB30(0, &qword_280EE75E0, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_21975EBF4();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21975B798(uint64_t a1)
{
  sub_21975ADB8(&qword_280E955C8, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter, &unk_219CA19C8);

  return sub_219BE2324();
}

uint64_t sub_21975B924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21975B988(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0);
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  sub_21975BA28(v8);
  if (!v2)
  {
    *a2 = v7;
  }
}

void sub_21975BA28(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v115 = a1;
  v5 = sub_219BEEA24();
  v116 = *(v5 - 8);
  v117 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v113 = &v111 - v9;
  if (qword_280E8D840 != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v10 = qword_280F61738;
    v11 = sub_219BF6214();
    sub_219BE5314("Attempting to source recommendedIssues from Tabi", 48, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);
    v12 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0);
    __swift_project_boxed_opaque_existential_1((v4 + *(v12 + 44)), *(v4 + *(v12 + 44) + 24));
    v13 = v3;
    v14 = sub_219BE4F74();
    v15 = MEMORY[0x277D837D0];
    v120 = v12;
    v114 = v13;
    if (v13)
    {
      v119 = v7;
      v16 = sub_219BF61F4();
      sub_2186F20D4(0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_219C09BA0;
      v121 = 0;
      v122 = 0xE000000000000000;
      v123 = v13;
      sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
      sub_219BF7484();
      v18 = v12;
      v19 = v121;
      v20 = v122;
      *(v17 + 56) = v15;
      *(v17 + 64) = sub_2186FC3BC();
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      sub_219BE5314("Caught error when trying to source recommended issues from Tabi, proceeding with legacy approach. Error=%{public}@", 114, 2, &dword_2186C1000, v10, v16, v17);

      v21 = *(v4 + *(v18 + 40));
      v22 = [v21 possiblyUnfetchedAppConfiguration];
      if ([v22 respondsToSelector_])
      {
        v23 = v4;
        v24 = [v22 recommendedIssueAllowList];
        swift_unknownObjectRelease();
        if (v24)
        {
          v25 = sub_219BF5924();

          v26 = sub_218845F78(v25);
        }

        else
        {
          v26 = MEMORY[0x277D84FA0];
        }

        v49 = v119;
        v50 = [v21 possiblyUnfetchedAppConfiguration];
        v22 = &selRef__setPreferredLayout_;
        if ([v50 respondsToSelector_])
        {
          v51 = [v50 recommendedIssueDenyList];
          swift_unknownObjectRelease();
          if (v51)
          {
            v52 = sub_219BF5924();

            v53 = sub_218845F78(v52);
          }

          else
          {
            v53 = MEMORY[0x277D84FA0];
          }

          v54 = v23 + *(v120 + 20);
          v55 = *v54;
          if (v54[32] > 1u)
          {
            if (v54[32] == 2)
            {
              v56 = MEMORY[0x277D321C8];
            }

            else
            {
              *v49 = 0;
              *(v49 + 8) = 1;
              v56 = MEMORY[0x277D321C0];
            }
          }

          else if (v54[32])
          {
            v56 = MEMORY[0x277D321B8];
          }

          else
          {
            v56 = MEMORY[0x277D321D0];
          }

          v58 = v116;
          v57 = v117;
          (*(v116 + 104))(v49, *v56, v117);
          v59 = sub_219B6D6E4(v55, v49);
          (*(v58 + 8))(v49, v57);
          v121 = v59;
          sub_2186E330C(0);
          sub_21975ADB8(&qword_280E8EB38, sub_2186E330C, MEMORY[0x277D83970]);
          v60 = sub_219BF56E4();
          v61 = 0;

          MEMORY[0x28223BE20](v62);
          *(&v111 - 4) = v23;
          *(&v111 - 3) = v26;
          *(&v111 - 2) = v53;
          v63 = sub_2195EB2AC(sub_21975D444, (&v111 - 6), v60);
          v22 = 0;

          v65 = *(v54 + 1);
          if (v65 < 0)
          {
            __break(1u);
          }

          else
          {
            v64 = v63 & 0xFFFFFFFFFFFFFF8;
            v53 = v63 >> 62;
            if (!(v63 >> 62))
            {
              v66 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v66 >= v65)
              {
                v67 = *(v54 + 1);
              }

              else
              {
                v67 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v65)
              {
                v68 = v67;
              }

              else
              {
                v68 = 0;
              }

              if (v66 >= v68)
              {
                goto LABEL_43;
              }

              goto LABEL_114;
            }
          }

          if (v63 < 0)
          {
            v61 = v63;
          }

          else
          {
            v61 = v64;
          }

          v108 = sub_219BF7214();
          if ((sub_219BF7214() & 0x8000000000000000) == 0)
          {
            if (v108 >= v65)
            {
              v109 = v65;
            }

            else
            {
              v109 = v108;
            }

            if (v108 < 0)
            {
              v109 = v65;
            }

            if (v65)
            {
              v68 = v109;
            }

            else
            {
              v68 = 0;
            }

            if (sub_219BF7214() >= v68)
            {
LABEL_43:
              if ((v63 & 0xC000000000000001) != 0 && v68)
              {
                sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);

                v69 = 0;
                do
                {
                  v70 = v69 + 1;
                  sub_219BF7334();
                  v69 = v70;
                }

                while (v68 != v70);
              }

              else
              {
              }

              if (v53)
              {
                v61 = sub_219BF7564();
                v71 = v73;
                v53 = v74;
                v72 = v75;
              }

              else
              {
                v61 = v63 & 0xFFFFFFFFFFFFFF8;
                v71 = (v63 & 0xFFFFFFFFFFFFFF8) + 32;
                v72 = (2 * v68) | 1;
              }

              v76 = (v72 >> 1) - v53;
              if (!__OFSUB__(v72 >> 1, v53))
              {
                v77 = *(v54 + 3);
                if (v76 < v77)
                {
                  v78 = sub_219BEEDD4();
                  sub_21975ADB8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
                  swift_allocError();
                  *v79 = v77;
                  v79[1] = v76;
                  (*(*(v78 - 8) + 104))(v79, *MEMORY[0x277D32400], v78);
                  swift_willThrow();
                  swift_unknownObjectRelease();

                  return;
                }

                v80 = v114;
                if (v72)
                {
                  sub_219BF7934();
                  swift_unknownObjectRetain_n();
                  v81 = swift_dynamicCastClass();
                  if (!v81)
                  {
                    swift_unknownObjectRelease();
                    v81 = MEMORY[0x277D84F90];
                  }

                  v82 = *(v81 + 16);

                  if (v82 == v76)
                  {
                    v83 = swift_dynamicCastClass();
                    swift_unknownObjectRelease();
                    if (!v83)
                    {
                      swift_unknownObjectRelease();

                      goto LABEL_94;
                    }

                    goto LABEL_61;
                  }

                  swift_unknownObjectRelease_n();
                }

                sub_218B67194(v61, v71, v53, v72);
LABEL_61:

                goto LABEL_94;
              }

              goto LABEL_115;
            }

LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

LABEL_133:
          __break(1u);
          goto LABEL_134;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_133;
    }

    v27 = v14;
    v112 = v4;
    sub_2186F20D4(0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_219C09BA0;
    v29 = MEMORY[0x21CECC6D0](v27, v15);
    v119 = v27;
    v30 = v29;
    v32 = v31;
    *(v28 + 56) = v15;
    *(v28 + 64) = sub_2186FC3BC();
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v3 = v119;
    v33 = sub_219BF6214();
    sub_219BE5314("Sourced recommended issues publishers from Tabi: %{public}@", 59, 2, &dword_2186C1000, v10, v33, v28);

    v118 = *(v3 + 16);
    if (!v118)
    {
      break;
    }

    v34 = 0;
    v4 = (v3 + 40);
    v7 = MEMORY[0x277D84F98];
    while (v34 < *(v3 + 16))
    {
      v3 = *(v4 - 1);
      v35 = *v4;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = v7;
      v38 = sub_21870F700(v3, v35);
      v39 = v7[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_97;
      }

      v42 = v37;
      if (v7[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v12 = v120;
          if (v37)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_219492450();
          v12 = v120;
          if (v42)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_2194815A0(v41, isUniquelyReferenced_nonNull_native);
        v22 = v121;
        v43 = sub_21870F700(v3, v35);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_135;
        }

        v38 = v43;
        v12 = v120;
        if (v42)
        {
LABEL_8:

          v7 = v121;
          *(*(v121 + 56) + 8 * v38) = v34;

          goto LABEL_9;
        }
      }

      v7 = v121;
      *(v121 + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v45 = (v7[6] + 16 * v38);
      *v45 = v3;
      v45[1] = v35;
      *(v7[7] + 8 * v38) = v34;

      v46 = v7[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_98;
      }

      v7[2] = v48;
LABEL_9:
      ++v34;
      v4 += 2;
      v3 = v119;
      if (v118 == v34)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  v7 = MEMORY[0x277D84F98];
LABEL_63:

  v84 = *(v12 + 20);
  v85 = v112;
  v86 = v113;
  v63 = v112 + v84;
  v88 = v116;
  v87 = v117;
  v89 = *(v112 + v84);
  (*(v116 + 104))(v113, *MEMORY[0x277D321D0], v117);
  v90 = sub_219B6D6E4(v89, v86);
  (*(v88 + 8))(v86, v87);
  v121 = v90;
  sub_2186E330C(0);
  sub_21975ADB8(&qword_280E8EB38, sub_2186E330C, MEMORY[0x277D83970]);
  v91 = v114;
  v92 = sub_219BF56E4();
  v61 = v91;

  MEMORY[0x28223BE20](v93);
  *(&v111 - 2) = v85;
  v94 = sub_2195EB2AC(sub_21975D480, (&v111 - 4), v92);
  v22 = v91;

  v121 = sub_219759000(v95);
  sub_21975E99C(&v121, v7);
  if (v91)
  {
    goto LABEL_136;
  }

  swift_bridgeObjectRelease_n();
  v53 = *(v63 + 8);
  if (v53 < 0)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v61 = v121;
  if ((v121 & 0x8000000000000000) != 0)
  {
    v63 = 1;
  }

  else
  {
    v63 = (v121 >> 62) & 1;
  }

  if ((v63 & 1) == 0)
  {
    v96 = *(v121 + 16);
    if (v96 >= v53)
    {
      v97 = v53;
    }

    else
    {
      v97 = *(v121 + 16);
    }

    if (v53)
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    if (v96 >= v98)
    {
      goto LABEL_76;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    swift_unknownObjectRelease_n();
LABEL_86:
    sub_218B67194(v61, v63, v94, v98);
    goto LABEL_94;
  }

LABEL_117:
  v94 = sub_219BF7214();
  if ((sub_219BF7214() & 0x8000000000000000) == 0)
  {
    if (v94 >= v53)
    {
      v110 = v53;
    }

    else
    {
      v110 = v94;
    }

    if (v94 < 0)
    {
      v110 = v53;
    }

    if (v53)
    {
      v98 = v110;
    }

    else
    {
      v98 = 0;
    }

    if (sub_219BF7214() < v98)
    {
      goto LABEL_127;
    }

LABEL_76:
    if ((v61 & 0xC000000000000001) != 0 && v98)
    {
      sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);

      v99 = 0;
      do
      {
        v100 = v99 + 1;
        sub_219BF7334();
        v99 = v100;
      }

      while (v98 != v100);
    }

    else
    {
    }

    if (v63)
    {
      v101 = sub_219BF7564();
      v63 = v102;
      v94 = v103;
      v98 = v104;

      v61 = v101;
      if ((v98 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v94 = 0;
      v63 = v61 + 32;
      v98 = (2 * v98) | 1;
      if ((v98 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v105 = swift_dynamicCastClass();
    if (!v105)
    {
      swift_unknownObjectRelease();
      v105 = MEMORY[0x277D84F90];
    }

    v106 = *(v105 + 16);

    if (__OFSUB__(v98 >> 1, v94))
    {
      goto LABEL_128;
    }

    if (v106 != (v98 >> 1) - v94)
    {
      goto LABEL_129;
    }

    v107 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v107)
    {
      return;
    }

LABEL_94:
    swift_unknownObjectRelease();
    return;
  }

LABEL_134:
  __break(1u);
LABEL_135:
  sub_219BF79A4();
  __break(1u);
LABEL_136:

  __break(1u);
}

uint64_t sub_21975C858@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v3 = v2;
  v53 = a1;
  v5 = sub_219BEF554();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v51 - v8;
  v9 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  sub_21915A40C(0);
  v15 = sub_219BEDCA4();
  v59 = v16;
  v60 = v15;
  sub_219BEDD14();

  sub_21975EB94(v14, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
  v17 = sub_219BF53D4();

  v18 = objc_opt_self();
  v19 = [v18 colorWithHexString_];

  v58 = [v19 ne_color];
  sub_219BEDD14();

  sub_21975EB94(v14, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
  v20 = sub_219BF53D4();

  v21 = [v18 colorWithHexString_];

  v56 = [v21 ne_color];
  sub_219BEDD14();
  v22 = *(v14 + 5);
  v54 = *(v14 + 6);
  v55 = v22;

  sub_21975EB94(v14, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
  v23 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((v3 + *(v23 + 36)), *(v3 + *(v23 + 36) + 24));

  v25 = sub_219319C68(v24);
  v53 = sub_21945CCB8(v25);

  v52 = sub_219BEDCB4();
  v27 = v26;
  v28 = v61;
  sub_219BEDCC4();
  v29 = v57;
  sub_219BEDD14();
  v30 = *(v10 + 48);
  v32 = v63;
  v31 = v64;
  v33 = &v29[v30];
  v34 = v29;
  v35 = v62;
  (*(v63 + 16))(v62, v33, v64);
  sub_21975EB94(v34, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
  v36 = *(v3 + *(v23 + 20) + 40);
  v37 = v59;
  *a2 = v60;
  *(a2 + 1) = v37;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass_];
  v40 = sub_219BDB5E4();
  v42 = v41;

  *(a2 + 2) = v40;
  *(a2 + 3) = v42;
  v44 = v55;
  v43 = v56;
  *(a2 + 4) = v58;
  *(a2 + 5) = v43;
  v46 = v53;
  v45 = v54;
  *(a2 + 6) = v44;
  *(a2 + 7) = v45;
  v47 = v52;
  *(a2 + 8) = v46;
  *(a2 + 9) = v47;
  *(a2 + 10) = v27;
  v48 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  v49 = *(v32 + 32);
  v49(&a2[v48[11]], v28, v31);
  v49(&a2[v48[12]], v35, v31);
  *&a2[v48[13]] = v36;
  type metadata accessor for MagazineFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21975CD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21975EAC8(a1, a2, type metadata accessor for MagazineFeedGroup);
  sub_21975EA48(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21975CDA4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup(0);
  sub_218D827D0();
  return sub_219BEF194();
}

uint64_t sub_21975CEE4(id a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) || *(a3 + 16))
  {
    result = [a1 publisherID];
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = sub_219BF5414();
    v11 = v10;

    if (sub_2188537B8(v9, v11, a3))
    {

      return 0;
    }

    if (*(a2 + 16))
    {
      v12 = sub_2188537B8(v9, v11, a2);

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v13 = *(v3 + *(type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0) + 32));
  v14 = [a1 identifier];
  if (!v14)
  {
    sub_219BF5414();
    v14 = sub_219BF53D4();
  }

  v15 = [v13 sourceForIssueID_];

  if (v15 == 1 || (sub_21975D1C8(a1) & 1) == 0)
  {
    return 0;
  }

  result = [a1 coverImageAssetHandle];
  if (result)
  {

    return 1;
  }

  return result;
}

BOOL sub_21975D05C(id *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = [*a1 publisherID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v4 publisherID];
  if (!v10)
  {
    if (v9)
    {
      goto LABEL_12;
    }

    return 1;
  }

  v11 = v10;
  v12 = sub_219BF5414();
  v14 = v13;

  if (!v9)
  {
    if (v14)
    {

      return 0;
    }

    return 1;
  }

  if (!v14)
  {
LABEL_12:

    return 1;
  }

  if (!*(a3 + 16))
  {

LABEL_17:
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    if (!*(a3 + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v15 = sub_21870F700(v7, v9);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(*(a3 + 56) + 8 * v15);
  if (!*(a3 + 16))
  {
LABEL_10:

LABEL_20:
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    return v18 < v23;
  }

LABEL_18:
  v20 = sub_21870F700(v12, v14);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  v23 = *(*(a3 + 56) + 8 * v20);
  return v18 < v23;
}

uint64_t sub_21975D1C8(void *a1)
{
  v3 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0);
  if (*(v1 + *(v3 + 20) + 65) != 1)
  {
    return 1;
  }

  v4 = v3;
  v5 = [*(v1 + *(v3 + 28)) cachedSubscription];
  if (objc_getAssociatedObject(v5, v5 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_21975EB94(&v16, sub_21880702C);
    goto LABEL_10;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v6 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v6 = v13;
  v7 = [v13 integerValue];
  if (v7 == -1)
  {

    goto LABEL_22;
  }

  v8 = v7;
LABEL_11:
  if (objc_getAssociatedObject(v5, ~v8))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v9 = v13;
      v10 = [v9 integerValue];

      if (((v10 ^ v8) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    sub_21975EB94(&v16, sub_21880702C);
  }

  if ((v8 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v12 = [*(v1 + *(v4 + 24)) hasSubscriptionToTag_];
  swift_unknownObjectRelease();
  return v12 ^ 1;
}

uint64_t sub_21975D4C0(id *__src, id *__dst, id *a3, void **a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __dst - __src;
  v10 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, 8 * v14);
    }

    v82 = &v6[v14];
    if (v12 < 8 || v8 <= __src)
    {
      goto LABEL_88;
    }

LABEL_51:
    v77 = v8;
    v44 = v8 - 1;
    v45 = v7 - 1;
    v46 = v82;
    v73 = v44;
    while (1)
    {
      v47 = *--v46;
      v48 = *v44;
      v49 = v47;
      v50 = v48;
      v75 = v49;
      v51 = [v49 publisherID];
      v81 = v45;
      if (v51)
      {
        v52 = v51;
        v53 = sub_219BF5414();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v56 = v6;
      v57 = v50;
      v58 = [v50 publisherID];
      if (!v58)
      {
        v67 = v75;
        if (v55)
        {
          goto LABEL_78;
        }

LABEL_76:

LABEL_79:
        v6 = v56;
        v7 = v81;
LABEL_80:
        if (v7 + 1 != v77)
        {
          *v7 = *v73;
        }

        if (v82 <= v6 || (v8 = v73, v73 <= __src))
        {
          v8 = v73;
          goto LABEL_88;
        }

        goto LABEL_51;
      }

      v59 = v58;
      v60 = sub_219BF5414();
      v62 = v61;

      if (v55)
      {
        v50 = v57;
        if (!v62)
        {
          v67 = v75;
LABEL_78:

          goto LABEL_79;
        }

        if (*(a5 + 16))
        {
          v63 = sub_21870F700(v53, v55);
          v65 = v64;

          if (v65)
          {
            v66 = *(*(a5 + 56) + 8 * v63);
          }

          else
          {
            v66 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v50 = v57;
          if (!*(a5 + 16))
          {
LABEL_65:

            goto LABEL_72;
          }
        }

        else
        {

          v66 = 0x7FFFFFFFFFFFFFFFLL;
          if (!*(a5 + 16))
          {
            goto LABEL_65;
          }
        }

        v68 = sub_21870F700(v60, v62);
        v70 = v69;

        if ((v70 & 1) == 0)
        {

LABEL_72:
          v6 = v56;
          v7 = v81;
          if (v66 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v71 = *(*(a5 + 56) + 8 * v68);

        v6 = v56;
        v7 = v81;
        if (v66 < v71)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v50 = v57;
        v67 = v75;
        if (!v62)
        {
          goto LABEL_76;
        }

        v6 = v56;
        v7 = v81;
      }

LABEL_73:
      if (v7 + 1 != v82)
      {
        *v7 = *v46;
      }

      v45 = v7 - 1;
      v82 = v46;
      v44 = v73;
      if (v46 <= v6)
      {
        v82 = v46;
        v8 = v77;
        goto LABEL_88;
      }
    }
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 8 * v11);
  }

  v82 = &v6[v11];
  if (v9 < 8)
  {
    v8 = __src;
    goto LABEL_88;
  }

  v15 = __src;
  if (v8 < v7)
  {
    v16 = &selRef_filteredReasons;
    v80 = v7;
    do
    {
      v79 = v15;
      v17 = *v6;
      v18 = *v8;
      v19 = v17;
      v20 = [v18 v16[87]];
      v76 = v8;
      if (v20)
      {
        v21 = v20;
        v22 = sub_219BF5414();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = v6;
      v26 = [v19 v16[87]];
      if (!v26)
      {
        if (v24)
        {
          goto LABEL_27;
        }

LABEL_25:

LABEL_28:
        v6 = v25;
        v8 = v76;
        v35 = v79;
        v36 = v80;
LABEL_29:
        v37 = v8;
        v38 = v35 == v8++;
        if (v38)
        {
          goto LABEL_31;
        }

LABEL_30:
        *v35 = *v37;
        goto LABEL_31;
      }

      v27 = v16;
      v28 = v26;
      v74 = sub_219BF5414();
      v30 = v29;

      if (!v24)
      {
        v16 = v27;
        if (!v30)
        {
          goto LABEL_25;
        }

        v6 = v25;
        v8 = v76;
        v35 = v79;
        v36 = v80;
        goto LABEL_43;
      }

      if (!v30)
      {
        v16 = v27;
LABEL_27:

        goto LABEL_28;
      }

      if (*(a5 + 16))
      {
        v31 = sub_21870F700(v22, v24);
        v33 = v32;

        if (v33)
        {
          v34 = *(*(a5 + 56) + 8 * v31);
          goto LABEL_36;
        }
      }

      else
      {
      }

      v34 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_36:
      v35 = v79;
      v16 = v27;
      if (*(a5 + 16))
      {
        v39 = sub_21870F700(v74, v30);
        v41 = v40;

        if (v41)
        {
          v42 = *(*(a5 + 56) + 8 * v39);

          v43 = v34 < v42;
          v6 = v25;
          v8 = v76;
          v35 = v79;
          v36 = v80;
          if (v43)
          {
            goto LABEL_29;
          }

          goto LABEL_43;
        }

        v6 = v25;
        v35 = v79;
      }

      else
      {

        v6 = v25;
      }

      v8 = v76;
      v36 = v80;
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }

LABEL_43:
      v37 = v6;
      v38 = v35 == v6++;
      if (!v38)
      {
        goto LABEL_30;
      }

LABEL_31:
      v15 = v35 + 1;
    }

    while (v6 < v82 && v8 < v36);
  }

  v8 = v15;
LABEL_88:
  if (v8 != v6 || v8 >= (v6 + ((v82 - v6 + (v82 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v6, 8 * (v82 - v6));
  }

  return 1;
}

void sub_21975DAB4(uint64_t *a1, void **a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v23 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v23 = sub_218C81048(v23);
  }

  v19 = v6;
  *v6 = v23;
  v8 = (v23 + 16);
  v9 = *(v23 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v23;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v23[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_21975D4C0(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v19 = v23;

        return;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_12;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_13;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v23;
    __break(1u);
  }
}

void sub_21975DC5C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v155 = MEMORY[0x277D84F90];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_148:
    v132 = *a1;
    if (!*a1)
    {
      goto LABEL_179;
    }

    sub_21975DAB4(&v155, v132, a3, a5);
    if (!v143)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_152;
    }

LABEL_150:

LABEL_151:
    swift_bridgeObjectRelease_n();
LABEL_152:

    return;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &selRef_filteredReasons;
  v141 = a5;
  while (1)
  {
    v10 = v7;
    v137 = v7;
    if (v7 + 1 >= v6)
    {
      v144 = v7 + 1;
      goto LABEL_49;
    }

    v134 = v8;
    v11 = v7;
    v12 = *a3;
    v13 = *(*a3 + 8 * (v7 + 1));
    v153 = *(*a3 + 8 * v10);
    v14 = v153;
    v154 = v13;
    v15 = v13;
    v16 = v14;
    v150 = sub_21975D05C(&v154, &v153, a5);
    if (v143)
    {

      goto LABEL_151;
    }

    v17 = v11 + 2;
    if (v11 + 2 >= v6)
    {
      goto LABEL_40;
    }

    v144 = v11 + 2;
    v147 = v6;
    v18 = (v12 + 8 * v11 + 16);
    while (1)
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      v22 = v20;
      v23 = [v21 v9[87]];
      if (v23)
      {
        v24 = v23;
        v25 = sub_219BF5414();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = [v22 v9[87]];
      if (!v28)
      {
        v9 = &selRef_filteredReasons;
        if (v27)
        {
          goto LABEL_10;
        }

LABEL_24:

        v19 = v147;
        if (!v150)
        {
LABEL_38:
          v8 = v134;
          v10 = v137;
          goto LABEL_49;
        }

        goto LABEL_35;
      }

      v29 = v28;
      v30 = sub_219BF5414();
      v32 = v31;

      v9 = &selRef_filteredReasons;
      if (v27)
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_24;
      }

      v19 = v147;
      if (v150)
      {
        v8 = v134;
        v17 = v144;
        v10 = v137;
        if (v144 >= v137)
        {
          goto LABEL_42;
        }

        goto LABEL_174;
      }

LABEL_35:
      ++v18;
      if (v19 == ++v144)
      {
        v17 = v19;
        goto LABEL_40;
      }
    }

    if (!v32)
    {
LABEL_10:
      v19 = v147;

      if (!v150)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (*(a5 + 16))
    {
      v33 = sub_21870F700(v25, v27);
      v35 = v34;

      if (v35)
      {
        v36 = *(*(a5 + 56) + 8 * v33);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v36 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_28:
    v19 = v147;
    if (*(a5 + 16))
    {
      v37 = sub_21870F700(v30, v32);
      v39 = v38;

      if (v39)
      {
        v40 = *(*(a5 + 56) + 8 * v37);

        goto LABEL_34;
      }
    }

    else
    {
    }

    v40 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_34:
    v9 = &selRef_filteredReasons;
    if ((v150 ^ (v36 >= v40)))
    {
      goto LABEL_35;
    }

    v17 = v144;
LABEL_40:
    v8 = v134;
    v10 = v137;
    if (!v150)
    {
      v144 = v17;
      goto LABEL_49;
    }

    if (v17 < v137)
    {
      goto LABEL_174;
    }

LABEL_42:
    v144 = v17;
    if (v10 < v17)
    {
      v41 = 8 * v17 - 8;
      v42 = 8 * v10;
      v43 = v10;
      do
      {
        if (v43 != --v17)
        {
          v44 = *a3;
          if (!*a3)
          {
            goto LABEL_177;
          }

          v45 = *(v44 + v42);
          *(v44 + v42) = *(v44 + v41);
          *(v44 + v41) = v45;
        }

        ++v43;
        v41 -= 8;
        v42 += 8;
      }

      while (v43 < v17);
    }

LABEL_49:
    v46 = a3[1];
    if (v144 >= v46)
    {
      v48 = v144;
      if (v144 < v10)
      {
        goto LABEL_170;
      }

      goto LABEL_92;
    }

    if (__OFSUB__(v144, v10))
    {
      goto LABEL_171;
    }

    if (v144 - v10 >= a4)
    {
      v48 = v144;
LABEL_91:
      if (v48 < v10)
      {
        goto LABEL_170;
      }

      goto LABEL_92;
    }

    v47 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_172;
    }

    if (v47 >= v46)
    {
      v47 = a3[1];
    }

    if (v47 < v10)
    {
      break;
    }

    v48 = v144;
    if (v144 == v47)
    {
      goto LABEL_91;
    }

    v135 = v8;
    v151 = *a3;
    v49 = *a3 + 8 * v144 - 8;
    v50 = v144;
    v51 = v10 - v144;
    v138 = v47;
    while (2)
    {
      v145 = v50;
      v52 = v151[v50];
      v139 = v51;
      v140 = v49;
      while (2)
      {
        v53 = *v49;
        v54 = v52;
        v55 = v53;
        v56 = [v54 v9[87]];
        if (v56)
        {
          v57 = v56;
          v58 = sub_219BF5414();
          v60 = v59;
        }

        else
        {
          v58 = 0;
          v60 = 0;
        }

        v61 = v55;
        v62 = [v55 v9[87]];
        if (!v62)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          goto LABEL_74;
        }

        v63 = v62;
        v148 = sub_219BF5414();
        v65 = v64;

        if (v60)
        {
          if (v65)
          {
            if (*(a5 + 16))
            {
              v66 = sub_21870F700(v58, v60);
              v68 = v67;

              if (v68)
              {
                v69 = *(*(a5 + 56) + 8 * v66);
                if (!*(a5 + 16))
                {
                  goto LABEL_70;
                }

LABEL_79:
                v70 = sub_21870F700(v148, v65);
                v72 = v71;

                if (v72)
                {
                  v73 = *(*(a5 + 56) + 8 * v70);

                  v74 = v69 < v73;
                  v9 = &selRef_filteredReasons;
                  if (!v74)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_84;
                }

LABEL_83:
                v9 = &selRef_filteredReasons;
                if (v69 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_59;
                }

LABEL_84:
                if (!v151)
                {
                  goto LABEL_175;
                }

                v75 = *v49;
                v52 = *(v49 + 8);
                *v49 = v52;
                *(v49 + 8) = v75;
                v49 -= 8;
                if (__CFADD__(v51++, 1))
                {
                  goto LABEL_59;
                }

                continue;
              }
            }

            else
            {
            }

            v69 = 0x7FFFFFFFFFFFFFFFLL;
            if (*(a5 + 16))
            {
              goto LABEL_79;
            }

LABEL_70:

            goto LABEL_83;
          }

          v9 = &selRef_filteredReasons;
LABEL_76:

          goto LABEL_84;
        }

        break;
      }

      v9 = &selRef_filteredReasons;
      if (!v65)
      {
LABEL_74:

        goto LABEL_84;
      }

LABEL_59:
      v50 = v145 + 1;
      v49 = v140 + 8;
      v51 = v139 - 1;
      if (v145 + 1 != v138)
      {
        continue;
      }

      break;
    }

    v48 = v138;
    v8 = v135;
    if (v138 < v137)
    {
      goto LABEL_170;
    }

LABEL_92:
    v146 = v48;
    v77 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v77;
    }

    else
    {
      v8 = sub_2191F6B60(0, *(v77 + 2) + 1, 1, v77);
    }

    v79 = *(v8 + 2);
    v78 = *(v8 + 3);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      v8 = sub_2191F6B60((v78 > 1), v79 + 1, 1, v8);
    }

    *(v8 + 2) = v80;
    v81 = v8 + 32;
    v82 = &v8[16 * v79 + 32];
    *v82 = v137;
    *(v82 + 1) = v146;
    v155 = v8;
    v152 = *a1;
    if (!*a1)
    {
      goto LABEL_178;
    }

    if (v79)
    {
      v149 = v8 + 32;
      while (1)
      {
        v83 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v84 = *(v8 + 4);
          v85 = *(v8 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_112:
          if (v87)
          {
            goto LABEL_161;
          }

          v100 = &v8[16 * v80];
          v102 = *v100;
          v101 = *(v100 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_164;
          }

          v106 = &v81[16 * v83];
          v108 = *v106;
          v107 = *(v106 + 1);
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_167;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_168;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v80 - 2;
            }

            goto LABEL_133;
          }

          goto LABEL_126;
        }

        v110 = &v8[16 * v80];
        v112 = *v110;
        v111 = *(v110 + 1);
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_126:
        if (v105)
        {
          goto LABEL_163;
        }

        v113 = &v81[16 * v83];
        v115 = *v113;
        v114 = *(v113 + 1);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_166;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_133:
        if (v83 - 1 >= v80)
        {
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v121 = *a3;
        if (!*a3)
        {
          goto LABEL_176;
        }

        v122 = v8;
        v123 = &v81[16 * v83 - 16];
        v124 = *v123;
        v125 = v83;
        v126 = &v81[16 * v83];
        v127 = *(v126 + 1);
        v128 = (v121 + 8 * *v123);
        v129 = (v121 + 8 * *v126);
        v130 = (v121 + 8 * v127);

        sub_21975D4C0(v128, v129, v130, v152, v141);
        if (v143)
        {
          goto LABEL_150;
        }

        if (v127 < v124)
        {
          goto LABEL_156;
        }

        v131 = *(v122 + 2);
        if (v125 > v131)
        {
          goto LABEL_157;
        }

        *v123 = v124;
        *(v123 + 1) = v127;
        if (v125 >= v131)
        {
          goto LABEL_158;
        }

        v80 = v131 - 1;
        memmove(v126, v126 + 16, 16 * (v131 - 1 - v125));
        v8 = v122;
        *(v122 + 2) = v131 - 1;
        v74 = v131 > 2;
        v9 = &selRef_filteredReasons;
        v81 = v149;
        if (!v74)
        {
LABEL_3:
          v155 = v8;
          goto LABEL_4;
        }
      }

      v88 = &v81[16 * v80];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_159;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_160;
      }

      v95 = &v8[16 * v80];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_162;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_165;
      }

      if (v99 >= v91)
      {
        v117 = &v81[16 * v83];
        v119 = *v117;
        v118 = *(v117 + 1);
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_169;
        }

        if (v86 < v120)
        {
          v83 = v80 - 2;
        }

        goto LABEL_133;
      }

      goto LABEL_112;
    }

LABEL_4:
    a5 = v141;
    v6 = a3[1];
    v7 = v146;
    if (v146 >= v6)
    {
      goto LABEL_148;
    }
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_176:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_177:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_178:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_179:
  swift_bridgeObjectRelease_n();
  __break(1u);
}

void sub_21975E5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v37 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    v8 = &selRef_filteredReasons;
LABEL_6:
    v34 = v6;
    v35 = a3;
    v9 = *(v37 + 8 * a3);
    v33 = v7;
    while (1)
    {
      v10 = *v6;
      v11 = v9;
      v12 = v10;
      v13 = [v11 v8[87]];
      if (v13)
      {
        v14 = v13;
        v15 = sub_219BF5414();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v12 v8[87]];
      if (!v18)
      {
        if (!v17)
        {
          goto LABEL_20;
        }

LABEL_18:

LABEL_21:
        v8 = &selRef_filteredReasons;
        goto LABEL_22;
      }

      v19 = v18;
      v36 = sub_219BF5414();
      v21 = v20;

      if (!v17)
      {
        if (v21)
        {

          v8 = &selRef_filteredReasons;
LABEL_5:
          a3 = v35 + 1;
          v6 = v34 + 8;
          v7 = v33 - 1;
          if (v35 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

LABEL_20:

        goto LABEL_21;
      }

      if (!v21)
      {
        goto LABEL_18;
      }

      if (*(a5 + 16))
      {
        v22 = sub_21870F700(v15, v17);
        v24 = v23;

        if (v24)
        {
          v25 = *(*(a5 + 56) + 8 * v22);
          if (!*(a5 + 16))
          {
            goto LABEL_16;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v25 = 0x7FFFFFFFFFFFFFFFLL;
      if (!*(a5 + 16))
      {
LABEL_16:

        goto LABEL_32;
      }

LABEL_28:
      v28 = sub_21870F700(v36, v21);
      v30 = v29;

      if (v30)
      {
        v31 = *(*(a5 + 56) + 8 * v28);

        v8 = &selRef_filteredReasons;
        if (v25 >= v31)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }

LABEL_32:
      v8 = &selRef_filteredReasons;
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_5;
      }

LABEL_22:
      if (!v37)
      {
        __break(1u);
        return;
      }

      v26 = *v6;
      v9 = *(v6 + 8);
      *v6 = v9;
      *(v6 + 8) = v26;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_21975E830(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = sub_219BF7884();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
        v8 = sub_219BF5A34();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_21975DC5C(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21975E5F8(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21975E99C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_218C82C04(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_21975E830(v8, a2);

  sub_219BF73E4();
  return swift_bridgeObjectRelease_n();
}

void sub_21975EA48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_21975EAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21975EB30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21975EB94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21975EBF4()
{
  result = qword_280EE75E8;
  if (!qword_280EE75E8)
  {
    sub_21975EB30(255, &qword_280EE75E0, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE75E8);
  }

  return result;
}

uint64_t sub_21975EC7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WebViewerModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for WebViewerModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21975ED2C()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WebViewerViewController(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1EBA0, &protocol descriptor for WebViewerStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1EBA8, &protocol descriptor for WebViewerRouterType, 1);
  sub_219BE2914();
  type metadata accessor for WebViewerRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1EBB0, &protocol descriptor for WebViewerEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1EBB8, &protocol descriptor for WebViewerInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1EBC0, &protocol descriptor for WebViewerTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1EBC8, &protocol descriptor for WebViewerDataManagerType, 0);
  sub_219BE2914();

  sub_21975FC8C(0);
  sub_219BE2904();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF08], v0);
  sub_219BE19F4();

  return (*(v1 + 8))(v3, v0);
}

char *sub_21975F080(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBA0, &protocol descriptor for WebViewerStylerType, 1);
  result = sub_219BE1E34();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_27CC1EBB0, &protocol descriptor for WebViewerEventHandlerType, 0);
    result = sub_219BE1E34();
    v3 = v21;
    if (v21)
    {
      v4 = v22;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v19 = type metadata accessor for WebViewerStyler();
      v20 = &off_282A4E398;
      v18[0] = v10;
      v11 = objc_allocWithZone(type metadata accessor for WebViewerViewController(0));
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      v13 = MEMORY[0x28223BE20](v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = sub_21975FF44(*v15, v3, v4, v11);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21975F300@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_218725FE8();
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for WebViewerStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    *(v13 + 40) = v10;
    *(v13 + 48) = v11;
    *(v13 + 16) = v19;
    *(v13 + 56) = 0;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A4E398;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21975F534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WebViewerRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A647A8;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21975F5F0(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebViewerViewController(0);
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_21975F670@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBB8, &protocol descriptor for WebViewerInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBA8, &protocol descriptor for WebViewerRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBC0, &protocol descriptor for WebViewerTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_21975FCE8(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A86E08;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_21975F918@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBC8, &protocol descriptor for WebViewerDataManagerType, 0);
  result = sub_219BE1E34();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21975FC8C(0);
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      type metadata accessor for WebViewerInteractor();
      v6 = swift_allocObject();
      v6[3] = 0;
      result = swift_unknownObjectWeakInit();
      v6[4] = v7;
      v6[5] = v8;
      v6[6] = v5;
      *a2 = v6;
      a2[1] = &off_282A74838;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21975FA20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WebViewerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A71DA0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21975FAA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebViewerConfig(0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EC2CC8, &protocol descriptor for WebViewerEventObserving, 0);
    sub_219BE1E34();
    type metadata accessor for WebViewerDataManager(0);
    v6 = swift_allocObject();
    *(v6 + 32) = 0;
    swift_unknownObjectWeakInit();
    v7 = OBJC_IVAR____TtC7NewsUI220WebViewerDataManager_startDate;
    v8 = sub_219BDBD34();
    (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
    *(v6 + 16) = v5;
    *(v6 + 32) = v9;
    swift_unknownObjectWeakAssign();
    result = swift_unknownObjectRelease();
    *a2 = v6;
    a2[1] = &off_282A4FA18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21975FBFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_21975FC8C(0);
    v3 = objc_allocWithZone(v2);
    return sub_219BF1B04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21975FC8C(uint64_t a1)
{
  if (!qword_27CC1EBD0)
  {
    sub_2194DD4B0();
    v1 = sub_219BF1B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1EBD0);
    }
  }
}

void *sub_21975FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for WebViewerRouter();
  v34[3] = v9;
  v34[4] = &off_282A647A8;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_282A71DA0;
  v31[0] = a4;
  type metadata accessor for WebViewerEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_282A647A8;
  v27 = &off_282A71DA0;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v28, (v10 + 6));
  sub_2186CB1F0(&v25, (v10 + 11));
  *(a1 + 24) = &off_282A86DF8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

char *sub_21975FF44(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v17[3] = type metadata accessor for WebViewerStyler();
  v17[4] = &off_282A4E398;
  v17[0] = a1;
  v9 = OBJC_IVAR____TtC7NewsUI223WebViewerViewController_coverViewManager;
  sub_219BE6C14();
  swift_allocObject();
  *&a4[v9] = sub_219BE6C04();
  *&a4[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_webView] = 0;
  v10 = OBJC_IVAR____TtC7NewsUI223WebViewerViewController_url;
  v11 = sub_219BDB954();
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  *&a4[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_config] = 0;
  sub_218718690(v17, &a4[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_styler]);
  v12 = &a4[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_eventHandler];
  *v12 = a2;
  *(v12 + 1) = a3;
  v16.receiver = a4;
  v16.super_class = ObjectType;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_eventHandler] + 24) = &off_282AA0CB8;
  swift_unknownObjectWeakAssign();
  v14 = v13;

  sub_219BE6BF4();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_2197600E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218729EA8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_21875D3C8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D30138])
    {
      sub_219BDE7C4();
      sub_2197602DC(v6);

      return sub_219761358(v6, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    }

    else
    {

      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

void sub_2197602DC(uint64_t a1)
{
  v3 = sub_219BDE924();
  v104 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for CampaignRouteModel(0);
  MEMORY[0x28223BE20](v108);
  v109 = (&v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218729EA8(0, &unk_280EE8E70, MEMORY[0x277D2F9F0]);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v92 - v8;
  sub_218729EA8(0, &qword_280EE6350, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = &v92 - v12;
  sub_218729EA8(0, &qword_280EE8AE0, MEMORY[0x277D30210]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v92 - v14;
  sub_218729EA8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v92 - v17;
  v19 = type metadata accessor for AudioFeedTrack(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v110 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 applicationState];

  if (v23 == 2)
  {
    sub_218EE3208(a1, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_219761358(v18, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_9:
      sub_2186C66AC();
      v27 = sub_219BF6F74();
      v28 = sub_219BF6214();
      sub_219BE5314("Listening session ended for track that doesn't require an upsell.  No post listening session updates will be made.", 114, 2, &dword_2186C1000, v27, v28, MEMORY[0x277D84F90]);

      return;
    }

    v26 = v110;
    sub_21872D114(v18, v110, type metadata accessor for AudioFeedTrack);
    if ((*(v26 + 24) & 8) == 0)
    {
      sub_218EB8BCC(v26);
      goto LABEL_9;
    }

    v29 = sub_2186C66AC();
    v103 = v1;
    v30 = sub_219BF6F74();
    v31 = v103;
    v32 = v30;
    v33 = sub_219BF6214();
    sub_219BE5314("Audio listening session ended in the background.  Proceeding with post-session handling.", 88, 2, &dword_2186C1000, v32, v33, MEMORY[0x277D84F90]);

    v34 = [*(v31 + 32) configuration];
    if (v34)
    {
      v35 = v34;
      if ([v34 respondsToSelector_])
      {
        v36 = [v35 paidBundleConfig];
        swift_unknownObjectRelease();
        v37 = [v36 audioUpsellArticleID];
        if (v37)
        {
          v38 = v37;
          v100 = sub_219BF5414();
          v40 = v39;

          v41 = sub_219761104(v31, v36);
          v42 = [v36 audioUpsellMaxDisplayCount];
          v101 = v41;
          if (v41 >= v42 && [v36 audioUpsellMaxDisplayCount] != -1)
          {

            v43 = sub_219BF6F74();
            sub_219BF6214();
            sub_2186F20D4(0);
            v44 = swift_allocObject();
            *(v44 + 16) = xmmword_219C09EC0;
            v45 = MEMORY[0x277D83C10];
            *(v44 + 56) = MEMORY[0x277D83B88];
            *(v44 + 64) = v45;
            *(v44 + 32) = v101;
            v46 = [v36 audioUpsellMaxDisplayCount];
            v47 = MEMORY[0x277D84A90];
            *(v44 + 96) = MEMORY[0x277D84A28];
            *(v44 + 104) = v47;
            *(v44 + 72) = v46;
            sub_219BE5314("Audio Upsell Display Count is %d and the Max Display Count is %d.  No upsell will be displayed.", v92, v93);

LABEL_20:
            v54 = v26;
LABEL_33:
            sub_218EB8BCC(v54);
            return;
          }

          v94 = v40;
          v111 = *(v31 + 24);
          v48 = v111;
          v113 = 0xF000000000000000;
          sub_2186CF94C(0);
          v50 = v49;
          v51 = sub_218707A38(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
          v102 = v48;

          v96 = v51;
          v97 = v50;
          sub_219BEB484();
          v98 = v29;
          v99 = v36;
          v95 = 0;
          v111 = v102;
          v55 = v104;
          (*(v104 + 56))(v15, 1, 1, v3);
          v56 = sub_219BE4394();
          v57 = *(v56 - 8);
          v58 = *(v57 + 56);
          v93 = v57 + 56;
          v92 = v58;
          v58(v106, 1, 1, v56);
          v59 = sub_219BDD4D4();
          (*(*(v59 - 8) + 56))(v107, 1, 1, v59);
          v60 = v109;
          v61 = v109 + *(v108 + 56);
          *(v61 + 1) = 0;
          swift_unknownObjectWeakInit();
          v62 = v94;
          *v60 = v100;
          v60[1] = v62;
          v63 = *(v55 + 48);
          if (v63(v15, 1, v3) == 1)
          {
            v64 = *MEMORY[0x277D301F8];
            v65 = sub_219BDE914();
            (*(*(v65 - 8) + 104))(v5, v64, v65);
            (*(v55 + 104))(v5, *MEMORY[0x277D30200], v3);
            if (v63(v15, 1, v3) != 1)
            {
              sub_219761358(v15, &qword_280EE8AE0, MEMORY[0x277D30210]);
            }
          }

          else
          {
            (*(v55 + 32))(v5, v15, v3);
          }

          v67 = v108;
          v66 = v109;
          (*(v55 + 32))(v109 + *(v108 + 20), v5, v3);
          v68 = &v66[v67[6]];
          *v68 = 0;
          *(v68 + 1) = 0;
          v69 = &v66[v67[7]];
          *v69 = 0;
          *(v69 + 1) = 0;
          *&v66[v67[8]] = MEMORY[0x277D84F90];
          *&v66[v67[9]] = 0;
          v66[v67[11]] = 0;
          *(v61 + 1) = 0;
          swift_unknownObjectWeakAssign();
          v70 = *(v57 + 48);
          v71 = v106;
          if (v70(v106, 1, v56) == 1)
          {
            v72 = *MEMORY[0x277D34D80];
            v73 = sub_219BE3D74();
            v74 = v105;
            (*(*(v73 - 8) + 104))(v105, v72, v73);
            (*(v57 + 104))(v74, *MEMORY[0x277D35068], v56);
            if (v70(v71, 1, v56) != 1)
            {
              sub_219761358(v71, &qword_280EE6350, MEMORY[0x277D35078]);
            }
          }

          else
          {
            v74 = v105;
            (*(v57 + 32))(v105, v71, v56);
          }

          v75 = v108;
          v76 = swift_allocBox();
          v78 = v77;
          v92(v74, 0, 1, v56);
          v79 = v109;
          sub_2197613B4(v74, v109 + v75[10], &qword_280EE6350, MEMORY[0x277D35078]);
          *(v79 + v75[13]) = 0;
          sub_2197613B4(v107, v79 + v75[12], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
          sub_21872D114(v79, v78, type metadata accessor for CampaignRouteModel);
          v113 = v76 | 0x1000000000000006;
          v80 = v95;
          sub_219BEB484();
          sub_218932F9C(v113);

          if (v80)
          {
            v81 = sub_219BF61F4();
            sub_2186F20D4(0);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_219C09BA0;
            v111 = 0;
            v112 = 0xE000000000000000;
            v113 = v80;
            sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
            sub_219BF7484();
            v83 = v111;
            v84 = v112;
            *(v82 + 56) = MEMORY[0x277D837D0];
            *(v82 + 64) = sub_2186FC3BC();
            *(v82 + 32) = v83;
            *(v82 + 40) = v84;
            v85 = sub_219BF6F44();
            sub_219BE5314("Error while trying to navigate to campaign landing page: %{public}@", 67, 2, &dword_2186C1000, v85, v81, v82);
          }

          v86 = v110;
          v87 = v99;
          v88 = [objc_opt_self() standardUserDefaults];
          v89 = v101 + 1;
          if (!__OFADD__(v101, 1))
          {
            v90 = v88;
            v91 = sub_219BF53D4();
            [v90 setInteger:v89 forKey:v91];

            v54 = v86;
            goto LABEL_33;
          }

          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v52 = sub_219BF6F74();
      v53 = sub_219BF6214();
      sub_219BE5314("Failed to retrieve Paid Bundle Configuration or upsell Article ID.  No post listening session updates will be made.", 115, 2, &dword_2186C1000, v52, v53, MEMORY[0x277D84F90]);

      goto LABEL_20;
    }

LABEL_35:
    __break(1u);
    return;
  }

  sub_2186C66AC();
  v110 = sub_219BF6F74();
  v24 = sub_219BF6214();
  sub_219BE5314("Listening session completed in the foreground.  No post listening session updates will be made.", 95, 2, &dword_2186C1000, v110, v24, MEMORY[0x277D84F90]);
  v25 = v110;
}

id sub_219761104(void *a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_219BF53D4();
  v6 = [v4 integerForKey_];

  v7 = [a2 audioUpsellInstanceID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_219BF5414();
    v11 = v10;
    v12 = [v3 standardUserDefaults];
    v13 = sub_219BF53D4();
    v14 = [v12 stringForKey_];

    if (v14)
    {
      v15 = sub_219BF5414();
      v17 = v16;

      if (v15 == v9 && v17 == v11)
      {

        return v6;
      }

      v18 = sub_219BF78F4();

      if (v18)
      {

        return v6;
      }
    }

    else
    {
    }

    v19 = [v3 standardUserDefaults];
    v20 = sub_219BF53D4();
    [v19 setObject:v8 forKey:v20];

    return 0;
  }

  return v6;
}

uint64_t sub_2197612F8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219761358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218729EA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2197613B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218729EA8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_219761420(uint64_t a1, void *a2)
{
  result = [v2 userInfo];
  if (result)
  {
    v5 = result;
    v6 = sub_219BF5214();

    v7 = [v2 activityType];
    v8 = sub_219BF5414();
    v10 = v9;

    [v2 _executionContext];
    v11 = [v2 interaction];
    sub_218D16ED0(v8, v10, v6, v11, &v16);

    v12 = v16;
    if (((v16 >> 58) & 0x3C | (v16 >> 1) & 3) == 0xC)
    {
      v13 = [objc_opt_self() currentDevice];
      v14 = [v13 userInterfaceIdiom];

      if (v14 > 1 || v14 == -1)
      {
LABEL_10:
        sub_218932F9C(v12);
        return 0;
      }

      if (v14)
      {
        if (v14 == 1)
        {
          v15 = [a2 horizontalSizeClass];
          sub_218932F9C(v12);
          return v15 == 1;
        }

        goto LABEL_10;
      }
    }

    sub_218932F9C(v12);
    return 1;
  }

  return result;
}

void sub_219761638(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C8129C(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_219767FEC(v4);
  *a1 = v2;
}

void sub_2197616A4(uint64_t a1@<X8>)
{
  v25 = a1;
  sub_21976A0A4(0, &qword_280EE5ED0, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C850]);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = MEMORY[0x277D6C860];
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C860]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  sub_219769C48(0, &qword_280EE5EB0, &qword_280EE5EB8, v6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v18 = OBJC_IVAR____TtC7NewsUI220RecipeBoxSearchStore_loadedTable;
  swift_beginAccess();
  sub_219769CBC(v1 + v18, v17);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    sub_219769F70(v17, &qword_280EE5EB0, &qword_280EE5EB8, MEMORY[0x277D6C860]);
    v22 = v1;
    sub_219BE2CF4();
    sub_218FABB04();
    sub_219BE5764();

    if (v2)
    {
      return;
    }

    sub_219BE54F4();
    v19 = v24;
    sub_219BE54C4();
    (*(v23 + 8))(v5, v19);
    (*(v9 + 16))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
    v20 = v22;
    swift_beginAccess();
    sub_219769D44(v14, v20 + v18);
    swift_endAccess();
    sub_219761AA4(v11);
    v17 = v11;
  }

  (*(v9 + 32))(v25, v17, v8);
}

void sub_219761AA4(char *a1)
{
  v227 = a1;
  sub_21976A0A4(0, &qword_280EE5EE8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C840]);
  v215 = v1;
  v211 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v214 = &v181 - v2;
  sub_21976987C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v205 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21976A0A4(0, &qword_280EE5EC8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C850]);
  v216 = v5;
  v198 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v201 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v199 = &v181 - v8;
  MEMORY[0x28223BE20](v9);
  v210 = &v181 - v10;
  v221 = sub_219BE5454();
  v197 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v204 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v203 = &v181 - v13;
  sub_21976A0A4(0, &qword_280EE5EC0, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C858]);
  v209 = v14;
  j = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v193 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v207 = &v181 - v17;
  sub_219767930(0);
  MEMORY[0x28223BE20](v18 - 8);
  v219 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v218 = &v181 - v21;
  MEMORY[0x28223BE20](v22);
  v212 = &v181 - v23;
  MEMORY[0x28223BE20](v24);
  v208 = &v181 - v25;
  v26 = MEMORY[0x277D6C848];
  sub_21976A0A4(0, &qword_280EE5ED8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C848]);
  v28 = *(v27 - 8);
  v224 = v27;
  v225 = v28;
  MEMORY[0x28223BE20](v27);
  v220 = &v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v222 = &v181 - v31;
  v32 = MEMORY[0x277D6C860];
  sub_21976A0A4(0, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
  v226 = v33;
  v223 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v202 = &v181 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v213 = &v181 - v36;
  MEMORY[0x28223BE20](v37);
  v194 = &v181 - v38;
  MEMORY[0x28223BE20](v39);
  v217 = &v181 - v40;
  MEMORY[0x28223BE20](v41);
  v206 = &v181 - v42;
  MEMORY[0x28223BE20](v43);
  v200 = &v181 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v181 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v181 - v49;
  sub_21976A0A4(0, &qword_280EE5EE0, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v26);
  v52 = v51;
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v55 = &v181 - v54;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v32);
  sub_219BE54B4();
  v56 = v243;
  v57 = sub_219BE5484();
  v58 = v56;
  if (v56)
  {
    (*(v53 + 8))(v55, v52);
    return;
  }

  v59 = v57;
  v227 = v50;
  v189 = v47;
  (*(v53 + 8))(v55, v52);
  v60 = *(v59 + 16);
  v61 = MEMORY[0x277D84F90];
  v195 = v59;
  if (v60)
  {
    v243 = 0;
    *&v229 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v60, 0);
    v61 = v229;
    v62 = (v59 + 32);
    do
    {
      v239[0] = *v62;
      v63 = v62[1];
      v64 = v62[2];
      v65 = v62[4];
      v239[3] = v62[3];
      v239[4] = v65;
      v239[1] = v63;
      v239[2] = v64;
      v66 = sub_218AD7F58(v239, &v234);
      v67 = MEMORY[0x21CEBC2B0](v66);
      v69 = v68;
      sub_218FACF88(v239);
      *&v229 = v61;
      v71 = *(v61 + 16);
      v70 = *(v61 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_21870B65C((v70 > 1), v71 + 1, 1);
        v61 = v229;
      }

      *(v61 + 16) = v71 + 1;
      v72 = v61 + 16 * v71;
      *(v72 + 32) = v67;
      *(v72 + 40) = v69;
      v62 += 5;
      --v60;
    }

    while (v60);
    v58 = v243;
  }

  v73 = v227;
  sub_21976338C(v227);
  v74 = v224;
  v75 = v225;
  v76 = v222;
  v77 = v223;
  if (v58)
  {

    return;
  }

  v78 = v73;
  v79 = v226;
  sub_219BE54B4();
  v80 = v77 + 8;
  v81 = *(v77 + 1);
  v82 = v79;
  v83 = v80;
  v81(v78, v82);
  v84 = sub_219BE5484();
  v191 = v81;
  v85 = *(v75 + 8);
  v86 = v84;
  v225 = v75 + 8;
  v183 = v85;
  v85(v76, v74);
  v87 = *(v86 + 2);
  v192 = v83;
  v243 = 0;
  if (v87)
  {
    *&v229 = MEMORY[0x277D84F90];
    v222 = v86;
    sub_21870B65C(0, v87, 0);
    v88 = v222;
    v89 = v229;
    v227 = (v87 - 1);
    for (i = 32; ; i += 80)
    {
      v91 = &v88[i];
      v239[0] = *v91;
      v92 = *(v91 + 1);
      v93 = *(v91 + 2);
      v94 = *(v91 + 4);
      v239[3] = *(v91 + 3);
      v239[4] = v94;
      v239[1] = v92;
      v239[2] = v93;
      v95 = sub_218AD7EA8(v239, &v234);
      v96 = MEMORY[0x21CEBC2B0](v95);
      v98 = v97;
      sub_218FACFB8(v239);
      *&v229 = v89;
      v100 = *(v89 + 16);
      v99 = *(v89 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_21870B65C((v99 > 1), v100 + 1, 1);
        v89 = v229;
      }

      *(v89 + 16) = v100 + 1;
      v101 = v89 + 16 * v100;
      *(v101 + 32) = v96;
      *(v101 + 40) = v98;
      if (!v227)
      {
        break;
      }

      --v227;
      v88 = v222;
    }
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
  }

  v102 = v228;
  v103 = sub_218845F78(v89);

  v104 = sub_218EB58BC(v61, v103);

  v105 = *(v104 + 56);
  v184 = v104 + 56;
  v106 = 1 << *(v104 + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v108 = v107 & v105;
  v109 = OBJC_IVAR____TtC7NewsUI220RecipeBoxSearchStore_secondaryLoadedTable;
  v187 = v104;

  v227 = v109;
  swift_beginAccess();
  v110 = 0;
  v111 = (v106 + 63) >> 6;
  v222 = v223 + 48;
  v190 = (v223 + 32);
  v188 = v198 + 1;
  v186 = (v223 + 16);
  v185 = (v223 + 56);
  v112 = v197 + 1;
  v197 = (j + 8);
  v198 = v112;
  v113 = v210;
  v114 = v203;
  for (j = v111; ; v111 = j)
  {
    v115 = v211;
    if (!v108)
    {
      break;
    }

    v116 = v110;
LABEL_27:
    v117 = *(v187 + 48) + ((v116 << 10) | (16 * __clz(__rbit64(v108))));
    v118 = *(v117 + 8);
    v223 = *v117;
    v119 = v208;
    sub_21976990C(&v227[v228], v208, sub_219767930);
    v120 = v226;
    if ((*v222)(v119, 1, v226) == 1)
    {
      v121 = v118;

      sub_219769BE8(v119, sub_219767930);
      sub_219BE2CF4();
      sub_218FAC78C();
      v122 = v200;
      v123 = v243;
      sub_219BE5764();

      if (v123)
      {

        return;
      }

      v182 = v121;
      v120 = v226;
      sub_219BE54F4();
      v124 = v216;
      sub_219BE54C4();
      v243 = 0;
      (*v188)(v113, v124);
      v125 = v212;
      (*v186)(v212, v122, v120);
      (*v185)(v125, 0, 1, v120);
      v127 = v227;
      v126 = v228;
      swift_beginAccess();
      sub_219769974(v125, &v127[v126]);
      swift_endAccess();
      v128 = v189;
      (*v190)(v189, v122, v120);
      v114 = v203;
      v118 = v182;
    }

    else
    {
      v128 = v189;
      (*v190)(v189, v119, v120);
    }

    v129 = v207;
    sub_219BE5504();
    v191(v128, v120);
    *(&v239[1] + 1) = MEMORY[0x277D837D0];
    *&v239[2] = MEMORY[0x277D6C998];
    *&v239[0] = v223;
    *(&v239[0] + 1) = v118;

    sub_219BE56F4();
    __swift_destroy_boxed_opaque_existential_1(v239);
    v130 = v209;
    v131 = v243;
    sub_219BE54D4();
    v243 = v131;
    if (v131)
    {

      (*v198)(v114, v221);
      (*v197)(v129, v130);

      return;
    }

    v108 &= v108 - 1;

    (*v198)(v114, v221);
    (*v197)(v129, v130);
    v110 = v116;
    v102 = v228;
    v113 = v210;
  }

  while (1)
  {
    v116 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      break;
    }

    if (v116 >= v111)
    {

      v132 = v195;
      v208 = *(v195 + 16);
      if (!v208)
      {
LABEL_58:

        return;
      }

      swift_beginAccess();
      v133 = 0;
      v207 = (v115 + 8);
      v134 = 32;
      v136 = v217;
      v135 = v218;
      v137 = v220;
      v138 = v226;
      while (2)
      {
        if (v133 >= *(v132 + 16))
        {
          __break(1u);
          return;
        }

        v242[0] = *(v132 + v134);
        v139 = *(v132 + v134 + 16);
        v140 = *(v132 + v134 + 32);
        v141 = *(v132 + v134 + 64);
        v242[3] = *(v132 + v134 + 48);
        v242[4] = v141;
        v242[1] = v139;
        v242[2] = v140;
        sub_218AD7F58(v242, v239);
        sub_218AD7F58(v242, v239);
        sub_218FACC0C(v242, v240);
        sub_21976990C(&v227[v102], v135, sub_219767930);
        v223 = *v222;
        if ((v223)(v135, 1, v138) == 1)
        {
          sub_219769BE8(v135, sub_219767930);
          sub_219BE2CF4();
          sub_218FAC78C();
          v142 = v243;
          sub_219BE5764();
          if (v142)
          {

            v243 = 0;
            v143 = v191;
            v158 = v219;

            break;
          }

          v156 = v199;
          sub_219BE54F4();
          v157 = v216;
          sub_219BE54C4();
          v243 = 0;
          (*v188)(v156, v157);
          v174 = v212;
          (*v186)(v212, v136, v138);
          (*v185)(v174, 0, 1, v138);
          v175 = v227;
          v176 = v228;
          swift_beginAccess();
          sub_219769974(v174, &v175[v176]);
          swift_endAccess();
          v144 = v136;
          v137 = v220;
        }

        else
        {
          v144 = v135;
        }

        v145 = v206;
        (*v190)(v206, v144, v138);
        sub_219BE54B4();
        v143 = v191;
        v146 = (v191)(v145, v138);
        v147 = MEMORY[0x21CEBC2B0](v146);
        *(&v235 + 1) = MEMORY[0x277D837D0];
        *&v236 = MEMORY[0x277D6C998];
        *&v234 = v147;
        *(&v234 + 1) = v148;
        v149 = v137;
        v150 = v204;
        sub_219BE56F4();
        __swift_destroy_boxed_opaque_existential_1(&v234);
        sub_21976A0A4(0, &qword_280EE5EF8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C838]);
        v152 = v205;
        (*(*(v151 - 8) + 56))(v205, 1, 1, v151);
        v153 = v224;
        v154 = v243;
        sub_219BE5494();
        if (v154)
        {

          sub_219769BE8(v152, sub_21976987C);
          (*v198)(v150, v221);
          v183(v149, v153);
          v243 = 0;
          v138 = v226;
          goto LABEL_42;
        }

        v243 = 0;
        sub_219769BE8(v152, sub_21976987C);
        (*v198)(v150, v221);
        v183(v149, v153);
        v234 = v239[0];
        v235 = v239[1];
        v236 = v239[2];
        v237 = v239[3];
        v238 = v239[4];
        v158 = v219;
        if (*&v239[0])
        {
          *v241 = *&v239[0];
          *&v241[24] = *(&v239[1] + 8);
          *&v241[40] = *(&v239[2] + 8);
          *&v241[56] = *(&v239[3] + 8);
          *&v241[72] = *(&v239[4] + 1);
          *&v241[8] = *(v239 + 8);
          v155 = sub_218FADFFC(v241, v240);
          v138 = v226;
          if (v155)
          {
            sub_219769DCC(&v234, &qword_27CC1EC40, &type metadata for RecipeBoxSearchEntity2);
            sub_218FACFB8(v240);
            sub_218FACF88(v242);
            v137 = v220;
            v102 = v228;
LABEL_53:
            ++v133;
            v134 += 80;
            v136 = v217;
            v135 = v218;
            v132 = v195;
            if (v208 == v133)
            {
              goto LABEL_58;
            }

            continue;
          }

          v177 = v194;
          v178 = v243;
          sub_21976338C(v194);
          if (v178)
          {
            goto LABEL_64;
          }

          v179 = v193;
          sub_219BE5504();
          v191(v177, v138);
          v143 = v191;
          v231 = *&v241[32];
          v232 = *&v241[48];
          v233 = *&v241[64];
          v229 = *v241;
          v230 = *&v241[16];
          v180 = v209;
          sub_219BE54E4();
          v243 = 0;
          (*v197)(v179, v180);
          sub_219769DCC(&v234, &qword_27CC1EC40, &type metadata for RecipeBoxSearchEntity2);
LABEL_42:
          v158 = v219;
        }

        else
        {
          v138 = v226;
        }

        break;
      }

      v102 = v228;
      sub_21976990C(&v227[v228], v158, sub_219767930);
      v159 = (v223)(v158, 1, v138);
      v210 = v134;
      v211 = v133;
      if (v159 == 1)
      {
        sub_219769BE8(v158, sub_219767930);
        sub_219BE2CF4();
        sub_218FAC78C();
        v160 = v202;
        v161 = v243;
        sub_219BE5764();
        v162 = v216;
        if (v161)
        {

          sub_218FACF88(v242);
          sub_218FACFB8(v240);
          return;
        }

        v163 = v201;
        v164 = v226;
        sub_219BE54F4();
        sub_219BE54C4();
        v243 = 0;
        (*v188)(v163, v162);
        v165 = v212;
        (*v186)(v212, v160, v164);
        (*v185)(v165, 0, 1, v164);
        v166 = v227;
        v167 = v228;
        swift_beginAccess();
        sub_219769974(v165, &v166[v167]);
        swift_endAccess();
        v168 = v160;
        v102 = v167;
        v138 = v164;
        v169 = v220;
        v143 = v191;
      }

      else
      {
        v168 = v158;
        v169 = v220;
      }

      v170 = v213;
      (*v190)(v213, v168, v138);
      v171 = v214;
      sub_219BE5474();
      v143(v170, v138);
      v239[2] = v240[2];
      v239[3] = v240[3];
      v239[4] = v240[4];
      v239[0] = v240[0];
      v239[1] = v240[1];
      v172 = v215;
      v173 = v243;
      sub_219BE5464();
      v243 = v173;
      if (v173)
      {
        (*v207)(v171, v172);
        sub_218FACF88(v242);

        sub_218FACFB8(v240);
        return;
      }

      (*v207)(v171, v172);
      sub_218FACF88(v242);
      sub_218FACFB8(v240);
      v133 = v211;
      v137 = v169;
      v134 = v210;
      goto LABEL_53;
    }

    v108 = *(v184 + 8 * v116);
    ++v110;
    if (v108)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_64:

  sub_218FACF88(v242);
  sub_219769DCC(&v234, &qword_27CC1EC40, &type metadata for RecipeBoxSearchEntity2);
  sub_218FACFB8(v240);
}

void sub_21976338C(uint64_t a1@<X8>)
{
  v24 = a1;
  sub_21976A0A4(0, &qword_280EE5EC8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C850]);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  sub_21976A0A4(0, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_219767930(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  v17 = OBJC_IVAR____TtC7NewsUI220RecipeBoxSearchStore_secondaryLoadedTable;
  swift_beginAccess();
  sub_21976990C(v1 + v17, v16, sub_219767930);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    sub_219769BE8(v16, sub_219767930);
    v21 = v1;
    sub_219BE2CF4();
    sub_218FAC78C();
    sub_219BE5764();

    if (v2)
    {
      return;
    }

    sub_219BE54F4();
    v18 = v23;
    sub_219BE54C4();
    (*(v22 + 8))(v5, v18);
    (*(v8 + 16))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
    v19 = v21;
    swift_beginAccess();
    sub_219769974(v13, v19 + v17);
    swift_endAccess();
  }

  else
  {
    v10 = v16;
  }

  (*(v8 + 32))(v24, v10, v7);
}

void sub_219763764(uint64_t a1)
{
  v64 = a1;
  sub_219769C48(0, &qword_27CC1EC28, &qword_27CC1EC30, MEMORY[0x277D6C838]);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v45 - v4;
  v5 = sub_219BE5454();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21976A0A4(0, &qword_280EE5EE0, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C848]);
  v48 = v7;
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C860]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v50 = v1;
  sub_2197616A4(&v45 - v13);
  if (!v2)
  {
    v16 = v5;
    sub_219BE54B4();
    v17 = (*(v12 + 8))(v14, v11);
    v18 = v64;
    v19 = MEMORY[0x21CEBC2B0](v17);
    *(&v53 + 1) = MEMORY[0x277D837D0];
    *&v54 = MEMORY[0x277D6C998];
    *&v52 = v19;
    *(&v52 + 1) = v20;
    sub_219BE56F4();
    __swift_destroy_boxed_opaque_existential_1(&v52);
    sub_21976A0A4(0, &qword_27CC1EC30, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C838]);
    v22 = v47;
    (*(*(v21 - 8) + 56))(v47, 1, 1, v21);
    sub_219BE5494();
    v23 = (v46 + 8);
    v24 = (v45 + 8);
    sub_219769F70(v22, &qword_27CC1EC28, &qword_27CC1EC30, MEMORY[0x277D6C838]);
    (*v23)(v49, v16);
    (*v24)(v9, v48);
    v52 = v57[0];
    v53 = v57[1];
    v54 = v57[2];
    v55 = v57[3];
    v56 = v57[4];
    if (!*&v57[0])
    {
      v15 = v18;
      goto LABEL_5;
    }

    v60 = *(&v57[1] + 8);
    v61 = *(&v57[2] + 8);
    v62 = *(&v57[3] + 8);
    v58 = *&v57[0];
    v63 = *(&v57[4] + 1);
    v59 = *(v57 + 8);
    if (sub_218FADFFC(&v58, v18))
    {
      if (qword_280EE5F38 != -1)
      {
        swift_once();
      }

      v33 = sub_219BE5434();
      __swift_project_value_buffer(v33, qword_280F62568);
      sub_218AD7F58(v18, v51);
      v26 = sub_219BE5414();
      v34 = sub_219BF61E4();
      sub_218FACF88(v18);
      if (!os_log_type_enabled(v26, v34))
      {
        goto LABEL_16;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51[0] = v36;
      *v35 = 136315138;
      v37 = MEMORY[0x21CEBC2B0]();
      v39 = sub_2186D1058(v37, v38, v51);

      *(v35 + 4) = v39;
      v40 = "RecipeBoxSearchStore will not add a recipe that is already in the store, recipeID=%s";
    }

    else
    {
      sub_2197641B4(&v58);
      sub_21976463C(v18);
      if (qword_280EE5F38 != -1)
      {
        swift_once();
      }

      v41 = sub_219BE5434();
      __swift_project_value_buffer(v41, qword_280F62568);
      sub_218AD7F58(v18, v51);
      v26 = sub_219BE5414();
      v34 = sub_219BF6214();
      sub_218FACF88(v18);
      if (!os_log_type_enabled(v26, v34))
      {
        goto LABEL_16;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51[0] = v36;
      *v35 = 136446210;
      v42 = MEMORY[0x21CEBC2B0]();
      v44 = sub_2186D1058(v42, v43, v51);

      *(v35 + 4) = v44;
      v40 = "RecipeBoxSearchStore successfully updated recipeID=%{public}s";
    }

    _os_log_impl(&dword_2186C1000, v26, v34, v40, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x21CECF960](v36, -1, -1);
    MEMORY[0x21CECF960](v35, -1, -1);
LABEL_16:
    sub_219769DCC(&v52, &qword_27CC1EC80, &type metadata for RecipeBoxSearchEntity);
    goto LABEL_17;
  }

  v15 = v64;
LABEL_5:
  sub_21976463C(v15);
  if (qword_280EE5F38 != -1)
  {
    swift_once();
  }

  v25 = sub_219BE5434();
  __swift_project_value_buffer(v25, qword_280F62568);
  sub_218AD7F58(v15, v57);
  v26 = sub_219BE5414();
  v27 = sub_219BF6214();
  sub_218FACF88(v15);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v57[0] = v29;
    *v28 = 136446210;
    v30 = MEMORY[0x21CEBC2B0]();
    v32 = sub_2186D1058(v30, v31, v57);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2186C1000, v26, v27, "RecipeBoxSearchStore successfully added recipeID=%{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x21CECF960](v29, -1, -1);
    MEMORY[0x21CECF960](v28, -1, -1);
  }

LABEL_17:
}