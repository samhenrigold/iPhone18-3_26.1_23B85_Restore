void *sub_2195820F4(uint64_t a1, uint64_t a2)
{
  sub_2187335C8(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioFeedTrack(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (v31 - v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_21875D788(a1, v5, sub_2187335C8);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      v15 = sub_2187335C8;
      v16 = v5;
    }

    else
    {
      sub_2195837C4(v5, v12, type metadata accessor for AudioFeedTrack);
      v17 = [*v12 articleID];
      if (v17)
      {
        v18 = v17;
        v19 = sub_219BF5414();
        v21 = v20;

        if ((*(v12 + 25) & 2) != 0)
        {
          sub_219BDE994();
          v22 = [objc_opt_self() mainScreen];
          v32 = v19;
          v23 = v22;
          [v22 scale];

          sub_2187078D4(&unk_280EDCA20, &protocol conformance descriptor for AudioFeedTrack);
          sub_219BDE974();
          v24 = v14[8];
          v31[2] = v14[9];
          v31[1] = __swift_project_boxed_opaque_existential_1(v14 + 5, v24);
          v25 = swift_allocObject();
          swift_weakInit();
          sub_21875D788(v12, v9, type metadata accessor for AudioFeedTrack);
          v26 = (*(v7 + 80) + 24) & ~*(v7 + 80);
          v27 = (v26 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
          v28 = (v26 + v8 + 31) & 0xFFFFFFFFFFFFFFF8;
          v29 = swift_allocObject();
          *(v29 + 16) = v25;
          sub_2195837C4(v9, v29 + v26, type metadata accessor for AudioFeedTrack);
          v30 = v29 + v27;
          *v30 = v32;
          *(v30 + 8) = v21;
          *(v30 + 16) = 0;
          *(v29 + v28) = vdupq_n_s64(0x4060000000000000uLL);

          sub_219BE6254();

          __swift_destroy_boxed_opaque_existential_1(v33);
        }

        else
        {
        }
      }

      v15 = type metadata accessor for AudioFeedTrack;
      v16 = v12;
    }

    return sub_21875D7F0(v16, v15);
  }

  return result;
}

void sub_2195824F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double a8, double a9)
{
  v15 = type metadata accessor for AudioFeedTrack(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v52 = a7;
    v51 = a5;
    if (a1)
    {
      v21 = a1;
      v22 = UIImagePNGRepresentation(v21);
      if (v22)
      {
        v23 = v16;
        v24 = v22;
        v25 = sub_219BDBA04();
        v27 = v26;

        sub_21875D788(a4, &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedTrack);
        v28 = (*(v23 + 80) + 24) & ~*(v23 + 80);
        v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 16) = v20;
        sub_2195837C4(v18, v30 + v28, type metadata accessor for AudioFeedTrack);
        v31 = (v30 + v29);
        *v31 = v51;
        v31[1] = a6;
        v32 = v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v32 = v25;
        *(v32 + 8) = v27;
        *(v32 + 16) = v52 & 1;

        sub_218B87528(v25, v27);
        sub_219BE3494();

        sub_2186C6190(v25, v27);

LABEL_10:

        return;
      }
    }

    v49 = v16;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v33 = sub_219BF6F74();
    v34 = sub_219BF61F4();
    sub_21875D490(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_219C09BA0;
    v53 = 0;
    v54 = 0xE000000000000000;
    v50 = a4;
    if (a2)
    {
      swift_getErrorValue();
      v36 = sub_219BF7A04();
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    v55 = v36;
    v56 = v37;
    v38 = MEMORY[0x277D837D0];
    sub_219583830(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v39 = sub_219BF5484();
    MEMORY[0x21CECC330](v39);

    v40 = v53;
    v41 = v54;
    *(v35 + 56) = v38;
    *(v35 + 64) = sub_2186FC3BC();
    *(v35 + 32) = v40;
    *(v35 + 40) = v41;
    sub_219BE5314("AudioIntentsDataProvider: Encountered an error fetching artwork, using fallback %{public}@", 90, 2, &dword_2186C1000, v33, v34, v35);

    sub_219BDE994();
    v42 = [objc_opt_self() mainScreen];
    [v42 scale];

    sub_219BDE984();
    __swift_project_boxed_opaque_existential_1((v20 + 40), *(v20 + 64));
    v43 = swift_allocObject();
    swift_weakInit();
    sub_21875D788(v50, &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedTrack);
    v44 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v45 = (v17 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    sub_2195837C4(v18, v46 + v44, type metadata accessor for AudioFeedTrack);
    v47 = v46 + v45;
    *v47 = v51;
    *(v47 + 8) = a6;
    *(v47 + 16) = v52 & 1;

    sub_219BE6254();

    __swift_destroy_boxed_opaque_existential_1(&v53);
    goto LABEL_10;
  }
}

double sub_219582A14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = type metadata accessor for AudioFeedTrack(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a1)
    {
      v41 = a5;
      v19 = a1;
      v20 = UIImagePNGRepresentation(v19);
      if (v20)
      {
        v21 = v20;
        v22 = sub_219BDBA04();
        v40 = a7;
        v24 = v23;

        sub_21875D788(a4, &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AudioFeedTrack);
        v25 = (*(v14 + 80) + 24) & ~*(v14 + 80);
        v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
        v27 = swift_allocObject();
        *(v27 + 16) = v18;
        sub_2195837C4(&v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v27 + v25, type metadata accessor for AudioFeedTrack);
        v28 = (v27 + v26);
        *v28 = v41;
        v28[1] = a6;
        v29 = v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v29 = v22;
        *(v29 + 8) = v24;
        *(v29 + 16) = v40 & 1;

        sub_218B87528(v22, v24);
        sub_219BE3494();

        sub_2186C6190(v22, v24);
LABEL_10:

        return result;
      }
    }

    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v30 = sub_219BF6F74();
    v31 = sub_219BF61F4();
    sub_21875D490(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09BA0;
    v44 = 0;
    v45 = 0xE000000000000000;
    if (a2)
    {
      swift_getErrorValue();
      v33 = sub_219BF7A04();
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v42 = v33;
    v43 = v34;
    v35 = MEMORY[0x277D837D0];
    sub_219583830(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v36 = sub_219BF5484();
    MEMORY[0x21CECC330](v36);

    v37 = v44;
    v38 = v45;
    *(v32 + 56) = v35;
    *(v32 + 64) = sub_2186FC3BC();
    *(v32 + 32) = v37;
    *(v32 + 40) = v38;
    sub_219BE5314("AudioIntentsDataProvider: Encountered an error fetching artwork %{public}@", 74, 2, &dword_2186C1000, v30, v31, v32);

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_219582D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_21875D45C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875D788(a2, v13, type metadata accessor for AudioFeedTrack);

  v14 = sub_219BDB9E4();
  v15 = [objc_opt_self() imageWithImageData_];

  v16 = type metadata accessor for AudioIntentsData(0);
  v17 = &v13[v16[5]];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v13[v16[6]] = v15;
  v13[v16[7]] = a7;
  (*(*(v16 - 1) + 56))(v13, 0, 1, v16);
  sub_219BE20C4();
  return sub_21875D7F0(v13, sub_21875D45C);
}

uint64_t sub_219582F14(uint64_t a1)
{
  sub_21875D45C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioIntentsData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21875D788(a1, v4, sub_21875D45C);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_21875D45C;
    v10 = v4;
    return sub_21875D7F0(v10, v9);
  }

  sub_2195837C4(v4, v8, type metadata accessor for AudioIntentsData);
  v11 = *v8;
  v12 = [*v8 sourceChannelID];
  if (v12)
  {
    v13 = v12;
    sub_219BF5414();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v11 sourceName];
  if (v16)
  {
    v17 = v16;
    sub_219BF5414();
    v19 = v18;

    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = 0;
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v19 = 0;
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = sub_219BF53D4();

  if (v19)
  {
LABEL_9:
    v21 = sub_219BF53D4();

    goto LABEL_13;
  }

LABEL_12:
  v21 = 0;
LABEL_13:
  v52 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v20 title:v21 type:6 artwork:0];

  if (!*(v8 + *(type metadata accessor for AudioFeedTrack(0) + 32) + 8))
  {
    v22 = [v11 title];
    if (v22)
    {
      v23 = v22;
      sub_219BF5414();
    }
  }

  v24 = *(v8 + *(v5 + 24));

  v25 = v24;
  v26 = [v11 sourceName];
  if (v26)
  {
    v27 = v26;
    sub_219BF5414();
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_219BF53D4();
  v31 = sub_219BF53D4();

  if (v29)
  {
    v32 = sub_219BF53D4();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v30 title:v31 type:7 artwork:v25 artist:v32];

  v34 = sub_2186C6148(0, &unk_280E8E408, 0x277CD3EC0);
  sub_219583830(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_219C146A0;
  *(v35 + 32) = v33;
  v36 = v33;
  v37 = v52;
  v38 = sub_219BF6634();
  if (*(v8 + *(v5 + 28)) == 1)
  {
    v39 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v38 response:0];
    v40 = sub_219BF53D4();
    [v39 setGroupIdentifier_];

    aBlock[4] = sub_2195835C8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218E29720;
    aBlock[3] = &block_descriptor_139;
    v41 = _Block_copy(aBlock);
    [v39 donateInteractionWithCompletion_];

    _Block_release(v41);
    v36 = v39;
  }

  else
  {
    v42 = objc_opt_self();
    v43 = [v42 sharedManager];
    [v43 setPredictionMode:1 forType:7];

    v44 = [v42 sharedManager];
    sub_219583830(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_219C09BA0;
    *(v45 + 56) = v34;
    *(v45 + 32) = v38;
    v46 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v47 = v38;
    v48 = sub_219BF5904();

    v49 = [v46 initWithArray_];

    [v44 setSuggestedMediaIntents_];
  }

  v9 = type metadata accessor for AudioIntentsData;
  v10 = v8;
  return sub_21875D7F0(v10, v9);
}

void sub_2195835C8(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_219BDB714();
    sub_21875D490(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_219C09BA0;
    *(v2 + 56) = sub_2186C6148(0, &qword_27CC18100, 0x277CCA9B8);
    *(v2 + 64) = sub_21958374C();
    *(v2 + 32) = v1;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v3 = v1;
    v6 = sub_219BF6F44();
    v4 = sub_219BF6214();
    sub_219BE5314("Could not donate interaction %@", 31, 2, &dword_2186C1000, v6, v4, v2);
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v6 = sub_219BF6F44();
    v5 = sub_219BF6214();
    sub_219BE5314("Play request interaction donation succeeded", 43, 2, &dword_2186C1000, v6, v5, MEMORY[0x277D84F90]);
  }
}

unint64_t sub_21958374C()
{
  result = qword_27CC23590;
  if (!qword_27CC23590)
  {
    sub_2186C6148(255, &qword_27CC18100, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC23590);
  }

  return result;
}

uint64_t sub_2195837C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219583830(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_219583880(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);

  return sub_219582A14(a1, a2, v7, v2 + v6, v9, v10, v11);
}

uint64_t objectdestroy_24Tm_0()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  swift_unknownObjectRelease();

  v4 = v0 + v2 + v1[8];

  if (*(v4 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v4 + 32));
  }

  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v6 = v5[7];
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v5[8] + 8) != 1)
  {
  }

  v9 = v5[9];
  v10 = sub_219BE7434();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v3 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270(0);
    v15 = *(v14 + 48);
    v16 = sub_219BDE3B4();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  v17 = (((v19 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  sub_2186C6190(*(v0 + v17), *(v0 + v17 + 8));

  return swift_deallocObject();
}

uint64_t sub_219583C44(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v1 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v5);
  v11 = *(v1 + v5 + 8);
  v12 = *(v1 + v5 + 16);

  return a1(v6, v1 + v3, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_12Tm_3()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  swift_unknownObjectRelease();

  v4 = v0 + v2 + v1[8];

  if (*(v4 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v4 + 32));
  }

  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v6 = v5[7];
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v5[8] + 8) != 1)
  {
  }

  v9 = v5[9];
  v10 = sub_219BE7434();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v3 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270(0);
    v15 = *(v14 + 48);
    v16 = sub_219BDE3B4();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  return swift_deallocObject();
}

void sub_219583FE8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = (v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  sub_2195824F4(a1, a2, v8, v2 + v6, v10, v11, v12, v14, v15);
}

uint64_t sub_2195840B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(v3 + 16, v12);
  v7 = *(v3 + 56);
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v12[5] = v7;
  v13 = *(v3 + 64);
  sub_21958423C(v11, v10);
  sub_2189C018C(0);
  swift_allocObject();
  sub_2194527DC();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v8 = sub_219BE6E64();
  sub_219584298(v11);
  return v8;
}

unint64_t sub_2195841C0()
{
  result = qword_27CC0B0A0;
  if (!qword_27CC0B0A0)
  {
    type metadata accessor for ChannelIssuesModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B0A0);
  }

  return result;
}

uint64_t type metadata accessor for SponsoredBannerTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA4AA0;
  if (!qword_280EA4AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219584360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    sub_2189ADEC8(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2189ADEC8(v6);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_2195845A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219584A00(0, &qword_27CC1BFC8, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195849AC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_219584360(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219584794(uint64_t a1)
{
  v2 = sub_2195849AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195847D0(uint64_t a1)
{
  v2 = sub_2195849AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219584824(void *a1)
{
  sub_219584A00(0, &qword_27CC1BFD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195849AC();
  sub_219BF7B44();
  sub_2189AD5C8(0);
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2195849AC()
{
  result = qword_27CC1BFD0;
  if (!qword_27CC1BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BFD0);
  }

  return result;
}

void sub_219584A00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195849AC();
    v7 = a3(a1, &type metadata for SponsoredBannerTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219584A78()
{
  result = qword_27CC1BFE0;
  if (!qword_27CC1BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BFE0);
  }

  return result;
}

unint64_t sub_219584AD0()
{
  result = qword_27CC1BFE8;
  if (!qword_27CC1BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BFE8);
  }

  return result;
}

unint64_t sub_219584B28()
{
  result = qword_27CC1BFF0;
  if (!qword_27CC1BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BFF0);
  }

  return result;
}

uint64_t sub_219584B8C(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_219584CF0()
{
  v1 = 0x746E65636572;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E676E6964616572;
  }
}

uint64_t sub_219584D54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

void sub_219584D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v98 = a7;
  v99 = a8;
  *&v95 = a5;
  v82 = a4;
  v100 = a1;
  v11 = sub_219BDBD34();
  v94 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v93 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEC064();
  MEMORY[0x28223BE20](v13 - 8);
  v89 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE0104();
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x28223BE20](v15);
  v90 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_219BDF604();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BDF5F4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BDF7C4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BDEEF4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BDF624();
  v78 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219585DEC(0, &unk_280EE32D8, MEMORY[0x277D2D680], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v68 - v25;
  v27 = sub_219BEC4B4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v97 = Strong;
    v101 = a6;
    v102 = v98;
    v103 = v99;
    v104 = a9;
    v32 = sub_219BEBCF4();
    sub_219BEBCD4();
    v33 = (*(v28 + 48))(v26, 1, v27);
    v34 = &unk_219C09000;
    v74 = v11;
    v73 = a3;
    v96 = v32;
    if (v33 == 1)
    {
      sub_219585D60(v26);
      LODWORD(v99) = *MEMORY[0x277CEAD18];
      v35 = 0x8000000219D27340;
LABEL_14:
      v98 = v35;

      v49 = v79;
      sub_219BDF7B4();
      sub_219585DEC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v51 = v50;
      v52 = sub_219BDCD44();
      v77 = v52;
      v53 = *(v52 - 8);
      v82 = *(v53 + 72);
      v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v76 = v51;
      v55 = swift_allocObject();
      v95 = v34[186];
      *(v55 + 16) = v95;
      v78 = *(v53 + 104);
      v56 = v99;
      (v78)(v55 + v54, v99, v52);
      sub_219585E50(&qword_280EE8680, MEMORY[0x277D2DD68], MEMORY[0x277D2DD60]);
      v57 = v81;
      sub_219BDCCC4();

      (*(v80 + 8))(v49, v57);
      (*(v84 + 16))(v83, v97 + qword_280EA7470, v85);
      LODWORD(v99) = v56;
      v58 = v86;
      sub_219BDF5E4();
      v59 = swift_allocObject();
      *(v59 + 16) = v95;
      v60 = v77;
      v61 = v78;
      (v78)(v59 + v54, v56, v77);
      sub_219585E50(&unk_280EE8728, MEMORY[0x277D2DC48], MEMORY[0x277D2DC40]);
      v62 = v88;
      sub_219BDCCC4();

      (*(v87 + 8))(v58, v62);
      v63 = v89;
      sub_219BEBCE4();
      v64 = v90;
      sub_2198D3AE0(v63, v90);
      v65 = swift_allocObject();
      *(v65 + 16) = v95;
      v61(v65 + v54, v99, v60);
      sub_219585E50(&qword_280EE84B0, MEMORY[0x277D2E350], MEMORY[0x277D2E348]);
      v66 = v92;
      sub_219BDCCC4();

      (*(v91 + 8))(v64, v66);
      sub_219BE0344();
      v67 = v93;
      sub_219BEBCC4();
      sub_219585E50(&qword_280EE8438, MEMORY[0x277D2E4B0], MEMORY[0x277D2E4A8]);
      sub_219BDCC74();

      (*(v94 + 8))(v67, v74);
      return;
    }

    (*(v28 + 32))(v30, v26, v27);
    sub_219BEC4A4();
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v36 > -2147483650.0)
    {
      if (v36 < 2147483650.0)
      {
        sub_219BDF614();
        sub_219585DEC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v38 = v37;
        v39 = sub_219BDCD44();
        v40 = *(v39 - 8);
        v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v70 = *(v40 + 72);
        v71 = v38;
        v42 = swift_allocObject();
        v68 = xmmword_219C09BA0;
        *(v42 + 16) = xmmword_219C09BA0;
        v43 = *(v40 + 104);
        LODWORD(v99) = *MEMORY[0x277CEAD18];
        v72 = v39;
        v69 = v43;
        v43(v42 + v41);
        sub_219585E50(&unk_280EE8708, MEMORY[0x277D2DC78], MEMORY[0x277D2DC70]);
        v98 = 0x8000000219D27340;
        sub_219BDCCC4();

        (*(v78 + 8))(v23, v21);
        sub_219BEC494();
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v44 > -2147483650.0)
          {
            if (v44 < 2147483650.0)
            {
              sub_219BEC494();
              if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v45 > -2147483650.0)
                {
                  if (v45 < 2147483650.0)
                  {
                    v46 = v75;
                    sub_219BDEEE4();
                    v47 = swift_allocObject();
                    *(v47 + 16) = v68;
                    v69(v47 + v41, v99, v72);
                    sub_219585E50(&qword_280EE8928, MEMORY[0x277D2D760], MEMORY[0x277D2D758]);
                    v35 = v98;
                    v48 = v77;
                    sub_219BDCCC4();

                    (*(v76 + 8))(v46, v48);
                    (*(v28 + 8))(v30, v27);
                    v34 = &unk_219C09000;
                    goto LABEL_14;
                  }

LABEL_24:
                  __break(1u);
                  return;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_219585BB4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = qword_280EA7470;
  v2 = sub_219BDF604();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_219585C24()
{
  sub_219585BB4();

  return swift_deallocClassInstance();
}

void sub_219585C8C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_219BEBCF4() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_219584D90(a1, v1[6], v1 + v8, *v9, v9[1], v3, v4, v5, v6);
}

uint64_t sub_219585D60(uint64_t a1)
{
  sub_219585DEC(0, &unk_280EE32D8, MEMORY[0x277D2D680], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219585DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219585E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double ChannelPickerAssembly.load(in:)(uint64_t a1)
{
  sub_219BE2044();
  sub_2186C709C(0, qword_280EB8F70, &protocol descriptor for ChannelPickerMainModuleType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EB5058, &protocol descriptor for ChannelPickerDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EB66D0, &protocol descriptor for SubscriptionServiceObserver, 0);
  sub_219BE19C4();

  sub_219BE2054();
  sub_219BE28F4();

  return result;
}

uint64_t sub_219586000@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ChannelPickerMainModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for ChannelPickerMainModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2195860B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (!v60)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6100, MEMORY[0x277D34BE8], 1);
  result = sub_219BE1E34();
  if (!v59)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAD3B0, &protocol descriptor for ChannelPickerConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v57)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3480, &protocol descriptor for MagazineCategoryConfigServiceType, 1);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90230, MEMORY[0x277D33C58], 1);
  result = sub_219BE1E34();
  if (!v53)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v5;
  v37 = v61;
  v38 = v60;
  v39 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (v51)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v35[1] = v35;
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v35[0] = v35;
    v12 = MEMORY[0x28223BE20](v11);
    v14 = (v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = *v9;
    v17 = *v14;
    v18 = type metadata accessor for ChannelPickerConfigManager();
    v49[3] = v18;
    v49[4] = &off_282A45268;
    v49[0] = v16;
    v19 = type metadata accessor for MagazineCategoryConfigService(0);
    v47 = v19;
    v48 = &off_282A6EDE8;
    v46[0] = v17;
    type metadata accessor for ChannelPickerDataManager();
    v20 = swift_allocObject();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v49, v18);
    v22 = MEMORY[0x28223BE20](v21);
    v24 = (v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v27 = MEMORY[0x28223BE20](v26);
    v29 = (v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = *v24;
    v32 = *v29;
    v44 = v18;
    v45 = &off_282A45268;
    v42 = &off_282A6EDE8;
    *&v43 = v31;
    v41 = v19;
    *&v40 = v32;
    v20[4] = 0;
    swift_unknownObjectWeakInit();
    v20[32] = MEMORY[0x277D84F98];
    v33 = v37;
    v20[10] = v38;
    v20[11] = v33;
    sub_2186CB1F0(&v58, (v20 + 12));
    sub_2186CB1F0(&v43, (v20 + 5));
    v20[2] = v36;
    sub_2186CB1F0(&v40, (v20 + 17));
    sub_2186CB1F0(&v52, (v20 + 22));
    sub_2186CB1F0(&v50, (v20 + 27));
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v54);
    result = __swift_destroy_boxed_opaque_existential_1(v56);
    v34 = v39;
    *v39 = v20;
    v34[1] = &off_282A605F0;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

double sub_2195866CC()
{
  type metadata accessor for ChannelPickerViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_27CC1C000, &protocol descriptor for ChannelPickerStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1C008, &protocol descriptor for ChannelPickerRouterType, 1);
  sub_219BE2914();
  type metadata accessor for ChannelPickerRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1C010, &protocol descriptor for ChannelPickerEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1C018, &protocol descriptor for ChannelPickerInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC1C020, &protocol descriptor for ChannelPickerTrackerType, 1);
  sub_219BE2914();

  sub_218BEF91C(0);
  sub_219BE2904();

  type metadata accessor for ChannelPickerBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1C030, &protocol descriptor for ChannelPickerSectionFactoryType, 1);
  sub_219BE2914();

  sub_21958B7DC(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958BEE4(0);
  sub_219BE2904();

  sub_21958B8C8(0);
  sub_219BE2904();

  sub_218BF0358(0);
  sub_219BE2904();

  sub_218BEFE7C(0);
  sub_219BE2904();

  type metadata accessor for ChannelPickerBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_21958C020(0);
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_218BF0580(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958B9D0(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21958BB4C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958BD64(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218BF0130(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  type metadata accessor for ChannelPickerBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958C334(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_21958C15C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21958C248(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  return result;
}

char *sub_2195870C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C000, &protocol descriptor for ChannelPickerStylerType, 1);
  result = sub_219BE1E34();
  if (!v75)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C010, &protocol descriptor for ChannelPickerEventHandlerType, 0);
  result = sub_219BE1E34();
  if (!v72)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C020(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED7980, &protocol descriptor for SearchModuleType, 1);
  result = sub_219BE1E34();
  if (!v71)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v69 == 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v52 = v69;
  v53 = v73;
  v54 = v3;
  v55 = v72;
  v51 = v68;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  v50 = v67;
  if (v67 != 2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_27CC15058, MEMORY[0x277D35368], 0);
    sub_219BE1E34();
    v46 = v65;
    v47 = v66;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    v49 = &v44;
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v48 = &v44;
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v7;
    v15 = *v12;
    v16 = type metadata accessor for ChannelPickerStyler();
    v63 = v16;
    v64 = &off_282A736D8;
    v62[0] = v14;
    v17 = type metadata accessor for SearchModule();
    v60 = v17;
    v61 = &off_282A75F38;
    v59[0] = v15;
    v18 = type metadata accessor for ChannelPickerViewController();
    v19 = objc_allocWithZone(v18);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v45 = &v44;
    v21 = MEMORY[0x28223BE20](v20);
    v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
    v44 = &v44;
    v26 = MEMORY[0x28223BE20](v25);
    v28 = (&v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28, v26);
    v30 = *v23;
    v31 = *v28;
    v58[3] = v16;
    v58[4] = &off_282A736D8;
    v57[4] = &off_282A75F38;
    v58[0] = v30;
    v57[3] = v17;
    v57[0] = v31;
    *&v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchController] = 0;
    swift_unknownObjectWeakInit();
    *&v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_selectionProvider + 8] = 0;
    swift_unknownObjectWeakInit();
    v32 = &v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_postPurchaseOnboardingTransitionDelegate];
    *v32 = 0;
    v32[1] = 0;
    *&v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController____lazy_storage___closeBarButtonItem] = 0;
    sub_218718690(v58, &v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_styler]);
    v33 = &v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler];
    v34 = v54;
    v35 = v53;
    *v33 = v55;
    v33[1] = v35;
    *&v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_blueprintViewController] = v34;
    sub_218718690(v57, &v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_searchModule]);
    v36 = &v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_pickerType];
    v37 = v52;
    *v36 = v51;
    v36[1] = v37;
    v19[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_useAlternateTitle] = v50 & 1;
    v38 = v47;
    *v32 = v46;
    v32[1] = v38;
    v56.receiver = v19;
    v56.super_class = v18;
    swift_unknownObjectRetain();
    v39 = v34;
    swift_unknownObjectRetain();
    v40 = objc_msgSendSuper2(&v56, sel_initWithNibName_bundle_, 0, 0, v44, v45);
    *(*(v40 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler) + 24) = &off_282A5F4A0;
    swift_unknownObjectWeakAssign();
    v41 = *(v40 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_blueprintViewController);
    v42 = v40;
    v43 = v41;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v74);
    return v42;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_2195877D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21958C248(0);
  if (sub_219BE1E24())
  {
    *(v2 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_selectionProvider + 8) = sub_21958BD1C(&qword_27CC1C198, sub_21958C248, MEMORY[0x277D6E7F8]);
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void *sub_219587898@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_21958BD1C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for ChannelPickerStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A736D8;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219587AF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for ChannelPickerRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A51E38;
      *a2 = v8;
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

void sub_219587C04(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_219587C84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C018, &protocol descriptor for ChannelPickerInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C008, &protocol descriptor for ChannelPickerRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC1C020, &protocol descriptor for ChannelPickerTrackerType, 1);
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
    v17 = sub_21958CA08(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A81BB8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219587F34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB5058, &protocol descriptor for ChannelPickerDataManagerType, 0);
  result = sub_219BE1E34();
  v5 = v25;
  if (!v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B7DC(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v21 = v26;
  v22 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v23[0])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v24[3] = v8;
  v24[4] = sub_21958BD1C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v24[0] = v9;
  sub_219BE89E4();
  swift_allocObject();
  v10 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60, &protocolRef_TSLocationDetectionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530, &protocol descriptor for EngagementUpsellTriggerStateManagerType, 1);
  result = sub_219BE1E34();
  if (v23[3])
  {
    sub_21958C87C(0, v12);
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v13 + 168) = xmmword_219C43500;
    *(v13 + 48) = v5;
    *(v13 + 56) = v21;
    *(v13 + 32) = v6;
    *(v13 + 40) = v7;
    *(v13 + 64) = v10;
    sub_218718690(v24, v13 + 72);
    *(v13 + 112) = v11;
    sub_218718690(v23, v13 + 120);
    sub_21876EF88(0);
    v14 = sub_219BE3514();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C0B8C0;
    v19 = v18 + v17;
    v20 = *(v15 + 104);
    v20(v19, *MEMORY[0x277D314F0], v14);
    v20(v19 + v16, *MEMORY[0x277D31468], v14);
    v20(v19 + 2 * v16, *MEMORY[0x277D31470], v14);
    *(v13 + 160) = v18;
    *(v5 + 32) = &off_282AA0DD0;
    swift_unknownObjectWeakAssign();
    [*(v13 + 112) addObserver_];
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    *v22 = v13;
    v22[1] = &off_282AA0DE0;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2195883D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ChannelPickerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282AA0500;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219588484(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1C030, &protocol descriptor for ChannelPickerSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
    result = sub_219BE1E34();
    v3 = v20;
    if (v20)
    {
      v4 = v21;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for ChannelPickerSectionFactory();
      v19[3] = v11;
      v19[4] = &off_282A654A0;
      v19[0] = v10;
      type metadata accessor for ChannelPickerBlueprintModifierFactory();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      v14 = MEMORY[0x28223BE20](v13);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16, v14);
      v18 = *v16;
      v12[5] = v11;
      v12[6] = &off_282A654A0;
      v12[2] = v18;
      v12[7] = v3;
      v12[8] = v4;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2195886FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21958B8C8(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21958B7DC(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2195887E4(uint64_t a1, void *a2)
{
  sub_218BF0B54(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_21958C7BC(0, &unk_27CC1C170, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_21958BD1C(&qword_27CC0EF40, sub_218BF0B54, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21958BEE4(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_21958BD1C(&qword_27CC1C180, sub_21958BEE4, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_21958897C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0358(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21958BEE4(0);
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_219588B74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_21958B8C8(0);
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219588CA0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_219588D10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E99CF0, &protocol descriptor for ChannelTagLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (!v121)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E98568, &protocol descriptor for ChannelCoinLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (!v119)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E950C0, &protocol descriptor for ChannelCategoryLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (!v117)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E94038, &protocol descriptor for ChannelEngagementLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (!v115)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E93180, &protocol descriptor for ChannelPickerHeaderViewLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (!v113)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v111)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
    v93 = v78;
    v4 = MEMORY[0x28223BE20](v3);
    v6 = (v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v118, v119);
    v92 = v78;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
    v91 = v78;
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
    v90 = v78;
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
    v89 = v78;
    v24 = MEMORY[0x28223BE20](v23);
    v26 = (v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
    v88 = v78;
    v29 = MEMORY[0x28223BE20](v28);
    v31 = (v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31, v29);
    v33 = *v6;
    v34 = *v11;
    v35 = *v16;
    v36 = *v21;
    v37 = *v26;
    v38 = *v31;
    v39 = type metadata accessor for ChannelTagLayoutAttributesFactory();
    v109[3] = v39;
    v109[4] = &off_282A664E8;
    v109[0] = v33;
    v87 = type metadata accessor for ChannelCoinLayoutAttributesFactory();
    v107 = v87;
    v108 = &off_282A4EBC0;
    v106[0] = v34;
    v86 = type metadata accessor for ChannelCategoryLayoutAttributesFactory();
    v104 = v86;
    v105 = &off_282A8E198;
    v103[0] = v35;
    v85 = type metadata accessor for ChannelEngagementLayoutAttributesFactory();
    v101 = v85;
    v102 = &off_282A35A88;
    v100[0] = v36;
    v84 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributesFactory();
    v98 = v84;
    v99 = &off_282A59FA0;
    v97[0] = v37;
    v83 = type metadata accessor for BaseStyler(0);
    v95 = v83;
    v81 = sub_21958BD1C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v96 = v81;
    v94[0] = v38;
    type metadata accessor for ChannelPickerBlueprintLayoutBuilder();
    v40 = swift_allocObject();
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v109, v39);
    v82 = v78;
    v79 = v39;
    v42 = MEMORY[0x28223BE20](v41);
    v44 = (v78 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44, v42);
    v46 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
    v80 = v78;
    v47 = MEMORY[0x28223BE20](v46);
    v49 = (v78 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49, v47);
    v51 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
    v78[3] = v78;
    v52 = MEMORY[0x28223BE20](v51);
    v54 = (v78 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54, v52);
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    v78[2] = v78;
    v57 = MEMORY[0x28223BE20](v56);
    v59 = (v78 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v60 + 16))(v59, v57);
    v61 = __swift_mutable_project_boxed_opaque_existential_1(v97, v98);
    v78[1] = v78;
    v62 = MEMORY[0x28223BE20](v61);
    v64 = (v78 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))(v64, v62);
    v66 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
    v67 = MEMORY[0x28223BE20](v66);
    v69 = (v78 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69, v67);
    v71 = *v44;
    v72 = *v49;
    v73 = *v54;
    v74 = *v59;
    v75 = *v64;
    v76 = *v69;
    v40[5] = v79;
    v40[6] = &off_282A664E8;
    v40[2] = v71;
    v40[10] = v87;
    v40[11] = &off_282A4EBC0;
    v40[7] = v72;
    v40[15] = v86;
    v40[16] = &off_282A8E198;
    v40[12] = v73;
    v40[20] = v85;
    v40[21] = &off_282A35A88;
    v40[17] = v74;
    v40[25] = v84;
    v40[26] = &off_282A59FA0;
    v40[27] = v76;
    v40[22] = v75;
    v77 = v81;
    v40[30] = v83;
    v40[31] = v77;
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(v97);
    __swift_destroy_boxed_opaque_existential_1(v100);
    __swift_destroy_boxed_opaque_existential_1(v103);
    __swift_destroy_boxed_opaque_existential_1(v106);
    __swift_destroy_boxed_opaque_existential_1(v109);
    __swift_destroy_boxed_opaque_existential_1(v110);
    __swift_destroy_boxed_opaque_existential_1(v112);
    __swift_destroy_boxed_opaque_existential_1(v114);
    __swift_destroy_boxed_opaque_existential_1(v116);
    __swift_destroy_boxed_opaque_existential_1(v118);
    __swift_destroy_boxed_opaque_existential_1(v120);
    return v40;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_21958991C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C334(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21958BD1C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_21958C020(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_219589C44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0580(0);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219589CF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218BF0580(0);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219589D8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958BB4C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958BD64(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0130(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21958B9D0(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219589F00(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerViewController();
  result = sub_219BE1E24();
  if (result)
  {
    return sub_219BE7BD4();
  }

  __break(1u);
  return result;
}

uint64_t sub_219589F64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21958A01C()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

void sub_21958A0EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_21958BB4C(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_21958A288(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_21958A3A0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21958A47C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEFE7C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C334(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_21958BD1C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_21958BD64(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21958A6E8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21958C15C(0);
  if (sub_219BE1E24())
  {
    sub_21958BD1C(&unk_27CC1C160, sub_21958C15C, MEMORY[0x277D6E3F0]);
  }

  return sub_219BE9774();
}

void *sub_21958A820(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC8910, &protocol descriptor for ChannelTagRendererType, 1);
  result = sub_219BE1E34();
  if (!v31)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC5938, &protocol descriptor for ChannelCoinRendererType, 1);
  result = sub_219BE1E34();
  if (!v29)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9030, &protocol descriptor for ChannelCategoryRendererType, 1);
  result = sub_219BE1E34();
  if (!v27)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB1258, &protocol descriptor for ChannelEngagementRendererType, 1);
  result = sub_219BE1E34();
  if (v25)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v4 = MEMORY[0x28223BE20](v3);
    v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = sub_21958C3D0(*v6, *v11, *v16, *v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v23;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_21958AC60(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A5F490;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_21958ACF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9E068, &protocol descriptor for ChannelPickerHeaderViewRendererType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for ChannelPickerHeaderViewRenderer();
    v16[3] = v8;
    v16[4] = &off_282A99498;
    v16[0] = v7;
    type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[7] = v8;
    v9[8] = &off_282A99498;
    v9[3] = 0;
    v9[4] = v15;
    swift_unknownObjectWeakInit();
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21958AF10(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelPickerViewController();
  v3 = sub_219BE1E24();
  if (v3)
  {
    *(v2 + 24) = &off_282A5F480;
    v4 = v3;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21958AFA4(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21958C334(0, &unk_27CC1C150, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21958C334(0, &qword_27CC1C100, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21958B230(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C15C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_21958BD1C(&qword_27CC1C148, sub_21958C15C, MEMORY[0x277D6E3F8]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21958B374(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BEF91C(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21958B9D0(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21958C15C(0);
      swift_allocObject();
      return sub_219BE9094();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21958B490(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218BEF91C(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21958C248(0);
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21958B5A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958B9D0(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21958B660(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21958C020(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21958BD1C(a3, sub_21958C020, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_21958B714@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958C020(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_21958BD1C(&qword_27CC1C128, sub_21958C020, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21958B7DC(uint64_t a1)
{
  if (!qword_27CC1C038)
  {
    sub_218BEF91C(255);
    sub_21958B8C8(255);
    sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C, MEMORY[0x277D6D8C8]);
    sub_21958BD1C(&qword_27CC1C0C8, sub_21958B8C8, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C038);
    }
  }
}

void sub_21958B8C8(uint64_t a1)
{
  if (!qword_27CC1C040)
  {
    type metadata accessor for ChannelPickerElementModel(255);
    sub_21958B9D0(255);
    sub_218951A90();
    sub_21958BD1C(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
    sub_21958BD1C(&qword_27CC1C0C0, sub_21958B9D0, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C040);
    }
  }
}

void sub_21958B9D0(uint64_t a1)
{
  if (!qword_27CC1C048)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_21958BB4C(255);
    sub_21958BD64(255);
    sub_218BF0130(255);
    type metadata accessor for ChannelPickerViewController();
    sub_21958BD1C(&qword_27CC1C0A8, sub_21958BB4C, MEMORY[0x277D6E820]);
    sub_21958BD1C(&unk_27CC1C0B0, sub_21958BD64, MEMORY[0x277D6E738]);
    sub_21958BD1C(&qword_27CC0EED0, sub_218BF0130, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C048);
    }
  }
}

void sub_21958BB4C(uint64_t a1)
{
  if (!qword_27CC1C058)
  {
    sub_218BEF91C(255);
    sub_218BEFE7C(255);
    type metadata accessor for ChannelPickerBlueprintViewCellProvider();
    type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider();
    sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C, MEMORY[0x277D6D8C8]);
    sub_21958BD1C(&qword_27CC1C070, sub_218BEFE7C, MEMORY[0x277D6DF38]);
    sub_21958BD1C(&qword_27CC1C078, type metadata accessor for ChannelPickerBlueprintViewCellProvider, &unk_219C2CB78);
    sub_21958BD1C(&unk_27CC1C080, type metadata accessor for ChannelPickerBlueprintViewSupplementaryViewProvider, &unk_219CAC4D4);
    sub_21958BD1C(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel, &unk_219C15474);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C058);
    }
  }
}

uint64_t sub_21958BD1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21958BD64(uint64_t a1)
{
  if (!qword_27CC1C090)
  {
    sub_218BEF91C(255);
    sub_218BEFE7C(255);
    type metadata accessor for ChannelPickerViewController();
    sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C, MEMORY[0x277D6D8C8]);
    sub_21958BD1C(&qword_27CC1C070, sub_218BEFE7C, MEMORY[0x277D6DF38]);
    sub_21958BD1C(&qword_27CC1C098, type metadata accessor for ChannelPickerViewController, &unk_219C5EB64);
    sub_21958BD1C(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel, &unk_219C15474);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C090);
    }
  }
}

void sub_21958BEE4(uint64_t a1)
{
  if (!qword_27CC1C0D0)
  {
    sub_218BEFE7C(255);
    type metadata accessor for ChannelPickerBlueprintLayoutBuilder();
    sub_218BF0358(255);
    sub_21958BD1C(&qword_27CC1C070, sub_218BEFE7C, MEMORY[0x277D6DF38]);
    sub_21958BD1C(&qword_27CC1C0E8, type metadata accessor for ChannelPickerBlueprintLayoutBuilder, &unk_219C4C0C0);
    sub_21958BD1C(&qword_27CC1C0F0, sub_218BF0358, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C0D0);
    }
  }
}

void sub_21958C020(uint64_t a1)
{
  if (!qword_27CC1C0F8)
  {
    sub_218BEF91C(255);
    sub_21958B9D0(255);
    type metadata accessor for ChannelPickerViewController();
    sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C, MEMORY[0x277D6D8C8]);
    sub_21958BD1C(&qword_27CC1C0C0, sub_21958B9D0, MEMORY[0x277D6DC88]);
    sub_21958BD1C(&qword_27CC1C098, type metadata accessor for ChannelPickerViewController, &unk_219C5EB64);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C0F8);
    }
  }
}

void sub_21958C15C(uint64_t a1)
{
  if (!qword_27CC1C108)
  {
    sub_218BEF91C(255);
    sub_21958B9D0(255);
    sub_21958BD1C(&qword_27CC1C110, sub_218BEF91C, MEMORY[0x277D6D8C0]);
    sub_21958BD1C(&qword_27CC1C0C0, sub_21958B9D0, MEMORY[0x277D6DC88]);
    v1 = sub_219BE90A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C108);
    }
  }
}

void sub_21958C248(uint64_t a1)
{
  if (!qword_27CC1C118)
  {
    sub_21958B9D0(255);
    sub_218BEF91C(255);
    sub_21958BD1C(&qword_27CC1C0C0, sub_21958B9D0, MEMORY[0x277D6DC88]);
    sub_21958BD1C(&qword_27CC1C110, sub_218BEF91C, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C118);
    }
  }
}

void sub_21958C334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218BEF91C(255);
    v7 = v6;
    v8 = sub_21958BD1C(&qword_27CC0EE98, sub_218BEF91C, MEMORY[0x277D6D8C8]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_21958C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for ChannelTagRenderer();
  v48[3] = v9;
  v48[4] = &off_282A662E8;
  v48[0] = a1;
  v10 = type metadata accessor for ChannelCoinRenderer();
  v46 = v10;
  v47 = &off_282A91088;
  v45[0] = a2;
  v11 = type metadata accessor for ChannelCategoryRenderer();
  v43 = v11;
  v44 = &off_282A600C0;
  v42[0] = a3;
  v40 = v8;
  v41 = &off_282A69648;
  v39[0] = a4;
  type metadata accessor for ChannelPickerBlueprintViewCellProvider();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v48, v9);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v39[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v39[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v39[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (&v39[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v33 = *v16;
  v34 = *v21;
  v35 = *v26;
  v36 = *v31;
  v12[7] = v9;
  v12[8] = &off_282A662E8;
  v12[12] = v10;
  v12[13] = &off_282A91088;
  v12[9] = v34;
  v12[17] = v11;
  v12[18] = &off_282A600C0;
  v12[14] = v35;
  v12[22] = v8;
  v12[23] = &off_282A69648;
  v12[19] = v36;
  v12[3] = 0;
  v12[4] = v33;
  swift_unknownObjectWeakInit();
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v12;
}

void sub_21958C7BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelPickerSectionDescriptor;
    v8[1] = type metadata accessor for ChannelPickerElementModel(255);
    v8[2] = sub_218951A90();
    v8[3] = sub_21958BD1C(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21958C87C(uint64_t a1, __n128 a2)
{
  if (!qword_27CC1C188)
  {
    v3 = type metadata accessor for ChannelPickerBlueprintModifierFactory();
    v4 = sub_21958BD1C(&qword_27CC1C190, type metadata accessor for ChannelPickerBlueprintModifierFactory, &unk_219C8E4B8);
    v6 = type metadata accessor for ChannelPickerInteractor(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27CC1C188);
    }
  }
}

void *sub_21958C910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for ChannelPickerRouter();
  v15[4] = &off_282A51E38;
  v15[0] = a3;
  v14[3] = type metadata accessor for ChannelPickerTracker();
  v14[4] = &off_282AA0500;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A81B80, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_21958CA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for ChannelPickerRouter();
  v27 = &off_282A51E38;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282AA0500;
  v22[0] = a4;
  type metadata accessor for ChannelPickerEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_21958C910(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

uint64_t type metadata accessor for TopicRecipesTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9E300;
  if (!qword_280E9E300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21958CC88@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958D1B8(0, &qword_280E8C8E8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958D164();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 45;
    v13 = type metadata accessor for TopicRecipesTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21958CEF0(void *a1)
{
  v3 = v1;
  sub_21958D1B8(0, &qword_27CC1C1A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958D164();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for TopicRecipesTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21958D0BC(uint64_t a1)
{
  v2 = sub_21958D164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21958D0F8(uint64_t a1)
{
  v2 = sub_21958D164();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21958D164()
{
  result = qword_280E9E338[0];
  if (!qword_280E9E338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9E338);
  }

  return result;
}

void sub_21958D1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21958D164();
    v7 = a3(a1, &type metadata for TopicRecipesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21958D230()
{
  result = qword_27CC1C1A8[0];
  if (!qword_27CC1C1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1C1A8);
  }

  return result;
}

unint64_t sub_21958D288()
{
  result = qword_280E9E328;
  if (!qword_280E9E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E328);
  }

  return result;
}

unint64_t sub_21958D2E0()
{
  result = qword_280E9E330;
  if (!qword_280E9E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E330);
  }

  return result;
}

uint64_t sub_21958D334(uint64_t a1)
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

uint64_t sub_21958D3F8(uint64_t a1)
{
  sub_21958F610();
  swift_allocObject();

  swift_unknownObjectRetain();

  return sub_219BE3014();
}

void sub_21958D4B8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v2 = (v0 + *(*v0 + 136));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 40))(v3, v4);
  if (qword_280EE98D8 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  sub_219BDCA54();
  sub_219BE3204();
  sub_2187D9028();
  v5 = sub_219BF66A4();
  sub_219BE2F94();

  v6 = sub_219BF66A4();
  sub_219BE2FE4();
}

uint64_t sub_21958D718(uint64_t a1)
{
  sub_219BE3204();
  v1 = sub_219BE2CC4();
  sub_21958F530(0);
  type metadata accessor for SportsManagementDataManager();
  swift_unknownObjectRetain();
  sub_219BE2F84();

  v2 = sub_219BE2E54();
  sub_219BE2F64();

  v3 = sub_219BE2E54();
  v4 = sub_219BE2FD4();

  return v4;
}

void sub_21958D870(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v3;
  v6 = *(a1 + 64);
  v4 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v4;
  v7 = (*(*(v2 + 88) + 40))(v5, *(v2 + 80));
  sub_218BB5768(0);
  sub_21958F1E4(&qword_27CC1C238, sub_218BB5768, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

uint64_t sub_21958D9B4(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21958DA6C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21958DB24(uint64_t a1)
{
  v2 = *v1;
  sub_219BE6EC4();
  v3 = sub_2189828F0();

  if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v2 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 32) = v5;
  *(v6 + 40) = HIBYTE(v3) & 1;

  sub_219BE6F24();

  return result;
}

double sub_21958DCBC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21958DDA4()
{
  if (qword_280EE98D8 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  sub_219BDCA54();
  sub_219BE3204();
  v0 = sub_219BE1C44();
  v1 = sub_219BE3034();

  return v1;
}

void sub_21958DED0(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v29 = *v2;
  v31 = type metadata accessor for SportsManagementModel(0);
  MEMORY[0x28223BE20](v31);
  v32 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F28C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189525B0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F2C0(0, &qword_27CC0AFB0, MEMORY[0x277D6EC60]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  v30 = v2;
  v28 = v2[4];
  sub_219BE6EC4();
  v35 = v36;
  sub_218987380(0);
  sub_21958F1E4(&qword_27CC15100, sub_218987380, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v17 = v9;

  sub_219BEB1D4();
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v18 = sub_21958F28C;
LABEL_9:
    sub_21958F22C(v6, v18);
    return;
  }

  v27 = v14;
  (*(v9 + 32))(v11, v6, v8);
  v6 = v32;
  v19 = v33;
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v17 + 8))(v11, v8);
    (*(v27 + 8))(v16, v13);
    v18 = type metadata accessor for SportsManagementModel;
    goto LABEL_9;
  }

  v31 = v16;
  v20 = *v6;
  v21 = __swift_project_boxed_opaque_existential_1((v30 + *(*v30 + 144)), *(v30 + *(*v30 + 144) + 24));
  v32 = v11;
  sub_219BE5F84();
  v22 = *(*(*v21 + 16) + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);
  v26[1] = v20;
  v23 = [*(v20 + 16) identifier];
  if (!v23)
  {
    sub_219BF5414();
    v23 = sub_219BF53D4();
  }

  v24 = sub_219BF53D4();
  v25 = [v22 moveSubscriptionForTagID:v23 beforeTagID:v24];

  if (v25)
  {
    v36 = (*(*(v29 + 88) + 48))(v19, v34, *(v29 + 80));
    sub_218BB5768(0);
    sub_21958F1E4(&qword_27CC1C238, sub_218BB5768, MEMORY[0x277D6D890]);
    sub_219BE6EF4();

    (*(v17 + 8))(v32, v8);
    (*(v27 + 8))(v31, v13);
  }

  else
  {

    (*(v17 + 8))(v32, v8);
    (*(v27 + 8))(v31, v13);
  }
}

uint64_t sub_21958E460(uint64_t a1)
{
  sub_2189525B0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219113A7C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE91F4();
  v19 = *(v10 - 8);
  v20 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958E76C(v1, v12);
  v18[2] = sub_219BE9034();
  v18[1] = *(v1 + *(*v1 + 128));
  sub_219BEAF14();
  sub_219BE9054();
  v13 = sub_219BE5F84();
  v15 = v14;
  (*(v4 + 8))(v6, v3);
  v16 = sub_218E969B8(v13, v15, 0);

  if (v16)
  {
    swift_unknownObjectRetain();
  }

  sub_219BF3314();
  sub_219BE89E4();
  sub_219BE7094();
  sub_21958F22C(v9, sub_219113A7C);

  sub_219BE9204();

  return (*(v19 + 8))(v12, v20);
}

uint64_t sub_21958E76C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  sub_218BA1CA4(0);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189525B0(0);
  v5 = v4;
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F2C0(0, &qword_27CC0AFB0, MEMORY[0x277D6EC60]);
  v9 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  sub_218D1CD20(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189522EC(0);
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x28223BE20](v15);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE7634();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9064();
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x277D6DA60])
  {
    (*(v18 + 96))(v20, v17);
    sub_218AEF9F8(0);
    v23 = *(v22 + 48);
    v24 = sub_219BDC104();
    v25 = *(*(v24 - 8) + 8);
    v25(&v20[v23], v24);
    v25(v20, v24);
  }

  else if (v21 == *MEMORY[0x277D6DA68])
  {
    (*(v18 + 8))(v20, v17);
  }

  else if (v21 == *MEMORY[0x277D6DA70])
  {
    sub_219BE6EC4();
    v48 = v49;
    sub_218987380(0);
    sub_21958F1E4(&qword_27CC15100, sub_218987380, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    sub_219BE9054();
    sub_219BE5F84();
    (*(v44 + 8))(v7, v5);
    sub_219BEB244();

    (*(v43 + 8))(v11, v9);
    v31 = v45;
    v30 = v46;
    if ((*(v45 + 48))(v14, 1, v46) == 1)
    {
      sub_21958F22C(v14, sub_218D1CD20);
    }

    else
    {
      v34 = v38;
      (*(v31 + 32))(v38, v14, v30);
      v35 = v39;
      sub_219BE6974();
      sub_21958F1E4(&qword_27CC1C230, sub_218BA1CA4, MEMORY[0x277D6CC48]);
      v36 = v41;
      sub_219BF5DF4();
      sub_219BF5E84();
      v37 = sub_219BF5E74();
      (*(v40 + 8))(v35, v36);
      (*(v31 + 8))(v34, v30);
      if (v37 >= 2)
      {
        v26 = MEMORY[0x277D6E440];
        goto LABEL_6;
      }
    }
  }

  else if (v21 != *MEMORY[0x277D6DA78])
  {
    v32 = *MEMORY[0x277D6E448];
    v33 = sub_219BE91F4();
    (*(*(v33 - 8) + 104))(v47, v32, v33);
    return (*(v18 + 8))(v20, v17);
  }

  v26 = MEMORY[0x277D6E448];
LABEL_6:
  v27 = *v26;
  v28 = sub_219BE91F4();
  return (*(*(v28 - 8) + 104))(v47, v27, v28);
}

uint64_t sub_21958EE54(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, _UNKNOWN **))
{
  v4 = v2;
  v6 = *v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2(a1, result, v6, &off_282A79B20);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_21958EEF8()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 136)));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 144)));
  return v0;
}

uint64_t sub_21958EFF0()
{
  sub_21958EEF8();

  return swift_deallocClassInstance();
}

double sub_21958F0F0(uint64_t a1)
{
  (*(*(*v1 + 88) + 56))(a1, *(*v1 + 80));
  sub_218BB5768(0);
  sub_21958F1E4(&qword_27CC1C238, sub_218BB5768, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_21958F1E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21958F22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21958F2C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SportsManagementSectionDescriptor(255);
    v8[1] = type metadata accessor for SportsManagementModel(255);
    v8[2] = sub_21958F1E4(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor, &unk_219C21994);
    v8[3] = sub_21958F1E4(&qword_27CC0AF90, type metadata accessor for SportsManagementModel, &unk_219CB52F8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21958F3B4()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  return (*(v3 + 32))(v2, v3);
}

uint64_t sub_21958F428(uint64_t a1)
{
  v1 = (a1 + *(*a1 + 136));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 48))(v2, v3);
}

void sub_21958F530(uint64_t a1)
{
  if (!qword_27CC1C240)
  {
    v1 = MEMORY[0x277D83940];
    sub_218846DC4(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_218846DC4(255, &qword_27CC177A8, type metadata accessor for SportsManagementSection, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC1C240);
    }
  }
}

void sub_21958F610()
{
  if (!qword_27CC1C248)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C248);
    }
  }
}

uint64_t sub_21958F68C(uint64_t a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = -1;
  v5 = v4 | 0x6000000000000006;
  type metadata accessor for AlertMagazineContentUnavailableInStoreFront();
  v6 = swift_allocObject();
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;

  sub_218C4E47C(a1, v6, sub_218C4E474, v8, v7);

  return 1;
}

unint64_t sub_21958F788()
{
  result = qword_280EC7BA0;
  if (!qword_280EC7BA0)
  {
    type metadata accessor for MagazineFeedURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7BA0);
  }

  return result;
}

void sub_21958F7F0(uint64_t a1)
{
  if (!qword_280E923F8)
  {
    type metadata accessor for DateRangeTagFeedGroupConfigData(255);
    sub_219595000(&qword_280EA9740, type metadata accessor for DateRangeTagFeedGroupConfigData, &unk_219C15118);
    sub_219595000(qword_280EA9748, type metadata accessor for DateRangeTagFeedGroupConfigData, &unk_219C150F0);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E923F8);
    }
  }
}

uint64_t type metadata accessor for DateRangeTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EB4928;
  if (!qword_280EB4928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21958F91C(uint64_t a1)
{
  sub_21958F7F0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateRangeTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21958F9D0()
{
  sub_219593758(0, &qword_27CC133D0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31C68]);
  sub_219BED904();
  v0 = sub_219BE2E54();
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  sub_2186DEF40(0, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  v2 = sub_219BE2F74();

  return v2;
}

uint64_t sub_21958FB00(uint64_t a1)
{
  v3 = type metadata accessor for DateRangeTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219590D54(0);
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_21959106C(0);
  sub_219BE2F64();

  v24 = type metadata accessor for DateRangeTagFeedGroupEmitter;
  sub_219595048(v1, v6, type metadata accessor for DateRangeTagFeedGroupEmitter);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = v8 + v5;
  v9 = (v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_219594F18(v6, v10 + v8, type metadata accessor for DateRangeTagFeedGroupEmitter);
  *(v10 + v9) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2195912F8;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_219592F9C(0);
  sub_219BE2F64();

  v13 = v22;
  sub_219595048(v22, v6, v24);
  v14 = swift_allocObject();
  sub_219594F18(v6, v14 + v8, type metadata accessor for DateRangeTagFeedGroupEmitter);
  *(v14 + v9) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21959329C;
  *(v15 + 24) = v14;

  v16 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F64();

  sub_219595048(v13, v6, v24);
  v17 = swift_allocObject();
  sub_219594F18(v6, v17 + v8, type metadata accessor for DateRangeTagFeedGroupEmitter);
  v18 = sub_219BE2E54();
  v19 = sub_219BE3064();

  return v19;
}

uint64_t sub_21958FE70@<X0>(uint64_t *a1@<X8>)
{
  sub_21958F7F0(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x7000000000000004;
  return result;
}

uint64_t sub_21958FEF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for DateRangeTagFeedGroupKnobs(0);
  a2[4] = sub_219595000(qword_280EBB9B0, type metadata accessor for DateRangeTagFeedGroupKnobs, &unk_219C5EFDC);
  a2[5] = sub_219595000(&qword_27CC1C2A8, type metadata accessor for DateRangeTagFeedGroupKnobs, &unk_219C5EFB4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219595048(v2 + v4, boxed_opaque_existential_1, type metadata accessor for DateRangeTagFeedGroupKnobs);
}

uint64_t sub_21958FFB8(uint64_t a1)
{
  type metadata accessor for DateRangeTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_219593918(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(swift_allocObject() + 16) = 31;
  sub_219593758(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_2195901D0()
{
  sub_21958F7F0(0);

  return sub_219BEDCA4();
}

uint64_t sub_2195901FC@<X0>(uint64_t *a2@<X8>)
{
  sub_219593918(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21958F7F0(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2195950B0(inited + 32, sub_2188317B0);
  sub_219593918(0, &qword_27CC1C2B0, type metadata accessor for DateRangeTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219595110();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_219590380(uint64_t a1)
{
  sub_219595000(&unk_27CC1C270, type metadata accessor for DateRangeTagFeedGroupEmitter, &unk_219C8D038);

  return sub_219BE2324();
}

uint64_t sub_219590528@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_219590590(*a1);
  a2[3] = type metadata accessor for DateRangeTagFeedGroupCursor(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  result = sub_219BDBD24();
  *boxed_opaque_existential_1 = v3;
  return result;
}

unint64_t sub_219590590(uint64_t a1)
{
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  sub_218731D50();
  sub_219595000(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v14 = sub_219BF5964();
  result = sub_218B197A8(v14, v15);
  v17 = result;
  if (!(result >> 62))
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_9:
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_10;
  }

  result = sub_219BF7214();
  v18 = result;
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    while (1)
    {
      swift_getObjectType();
      sub_2195946EC(v6);
      swift_unknownObjectRelease();
      v19 = *(v8 + 48);
      if (v19(v6, 1, v7) == 1)
      {
LABEL_10:
        sub_219BDBBB4();
        v19 = *(v8 + 48);
        if (v19(v6, 1, v7) != 1)
        {
          sub_219594EA8(v6, &qword_280EE9C40, MEMORY[0x277CC9578]);
        }

        if (!v18)
        {

          (*(v8 + 56))(v3, 1, 1, v7);
          goto LABEL_21;
        }
      }

      else
      {
        (*(v8 + 32))(v13, v6, v7);
      }

      v20 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v20 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        swift_unknownObjectRetain();
        goto LABEL_18;
      }

      __break(1u);
LABEL_45:
      MEMORY[0x21CECE0F0](0, v17);
    }

    __break(1u);
LABEL_42:
    MEMORY[0x21CECE0F0](v20, v17);
LABEL_18:

    swift_getObjectType();
    sub_2195946EC(v3);
    swift_unknownObjectRelease();
    if (v19(v3, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v3, v7);
      goto LABEL_23;
    }

LABEL_21:
    sub_219BDBBB4();
    if (v19(v3, 1, v7) != 1)
    {
      sub_219594EA8(v3, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

LABEL_23:
    sub_219BDBBE4();
    v22 = v21;
    sub_219BF5CE4();
    if (v22 <= v23)
    {
      v26 = 0;
    }

    else
    {
      sub_219BF5CE4();
      if (v22 <= v24 * 7.0)
      {
        v26 = 1;
      }

      else
      {
        sub_219BF5CE4();
        if (v22 > v25 * 30.0)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }
      }
    }

    v52 = v13;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v50 = qword_280F61708;
    v51 = v10;
    sub_2186F20D4(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C0B8C0;
    v54 = 0;
    v55 = 0xE000000000000000;
    v53 = v26;
    sub_219BF7484();
    v28 = v54;
    v29 = v55;
    v30 = MEMORY[0x277D837D0];
    *(v27 + 56) = MEMORY[0x277D837D0];
    v31 = sub_2186FC3BC();
    *(v27 + 64) = v31;
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    v32 = MEMORY[0x277D83A80];
    *(v27 + 96) = MEMORY[0x277D839F8];
    *(v27 + 104) = v32;
    *(v27 + 72) = v22;
    if (qword_27CC08698 != -1)
    {
      swift_once();
    }

    v33 = qword_27CC1C250;
    v34 = v52;
    v35 = sub_219BDBC04();
    v36 = v51;
    v37 = sub_219BDBC04();
    v38 = [v33 stringFromDate:v35 toDate:v37];

    v39 = sub_219BF5414();
    v41 = v40;

    *(v27 + 136) = v30;
    *(v27 + 144) = v31;
    *(v27 + 112) = v39;
    *(v27 + 120) = v41;
    v42 = sub_219BF6214();
    sub_219BE5314("DateRange emitter estimated flow of %{public}@ base on interval %.0f seconds between %{public}@", 95, 2, &dword_2186C1000, v50, v42, v27);

    sub_219BF5CE4();
    if (v22 <= v43)
    {
      v48 = *(v8 + 8);
      v48(v36, v7);
      v48(v34, v7);
      return 0;
    }

    else
    {
      sub_219BF5CE4();
      if (v22 <= v44 * 7.0)
      {
        v49 = *(v8 + 8);
        v49(v51, v7);
        v49(v52, v7);
        return 1;
      }

      else
      {
        sub_219BF5CE4();
        v46 = v45;
        v47 = *(v8 + 8);
        v47(v51, v7);
        v47(v52, v7);
        if (v22 > v46 * 30.0)
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219590CC8()
{
  sub_219BEF0C4();
  type metadata accessor for DateRangeTagFeedGroupCursor(0);
  sub_219BEF054();
  v0 = sub_219BE31C4();

  return v0;
}

void sub_219590D54(uint64_t a1)
{
  if (!qword_27CC1C288)
  {
    type metadata accessor for DateRangeTagFeedGroupCursor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1C288);
    }
  }
}

uint64_t sub_219590DBC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v12 = a1[4];
  v11 = a1[5];
  sub_21959106C(0);
  v14 = *(v13 + 64);
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
  *(a4 + 32) = v12;
  *(a4 + 40) = v11;
  v15 = a2[5];
  *(a4 + 112) = a2[4];
  *(a4 + 128) = v15;
  v16 = a2[7];
  *(a4 + 144) = a2[6];
  *(a4 + 160) = v16;
  v17 = a2[1];
  *(a4 + 48) = *a2;
  *(a4 + 64) = v17;
  v18 = a2[3];
  *(a4 + 80) = a2[2];
  *(a4 + 96) = v18;
  sub_219595048(a3, a4 + v14, type metadata accessor for DateRangeTagFeedGroupCursor);

  sub_2189EEB80(v9, v12);
  return sub_218A80CA4(a2, &v20);
}

uint64_t sub_219590EA8(__int128 *a1)
{
  v2 = type metadata accessor for DateRangeTagFeedGroupCursor(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = a1[5];
  v24 = a1[4];
  v25 = v5;
  v6 = a1[7];
  v26 = a1[6];
  v27 = v6;
  v7 = a1[1];
  v20 = *a1;
  v21 = v7;
  v8 = a1[3];
  v22 = a1[2];
  v23 = v8;
  sub_219590D54(0);
  sub_219595048(a1 + *(v9 + 48), &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DateRangeTagFeedGroupCursor);
  v10 = (*(v3 + 80) + 144) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = v25;
  v11[5] = v24;
  v11[6] = v12;
  v13 = v27;
  v11[7] = v26;
  v11[8] = v13;
  v14 = v21;
  v11[1] = v20;
  v11[2] = v14;
  v15 = v23;
  v11[3] = v22;
  v11[4] = v15;
  sub_219594F18(&v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for DateRangeTagFeedGroupCursor);
  sub_218A80CA4(&v20, v19);
  v16 = sub_219BE2E54();
  sub_21959106C(0);
  v17 = sub_219BE2F74();

  return v17;
}

void sub_21959106C(uint64_t a1)
{
  if (!qword_27CC1C290)
  {
    type metadata accessor for DateRangeTagFeedGroupCursor(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1C290);
    }
  }
}

char *sub_2195910DC(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DateRangeTagFeedGroupEmitterBatch(0);
  v22 = *(v10 - 8);
  v11 = *(v22 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - v14);
  sub_2195913A8(a5, a2, a1, a3, &v21 - v14);
  if (!v5)
  {
    v16 = v22;
    sub_219591D18(a5, v15);
    sub_219595048(v15, v12, type metadata accessor for DateRangeTagFeedGroupEmitterBatch);
    v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v19 = swift_allocObject();
    sub_219594F18(v12, v19 + v18, type metadata accessor for DateRangeTagFeedGroupEmitterBatch);
    v20 = sub_219BE2E54();
    sub_219592F9C(0);
    v12 = sub_219BE2F74();

    sub_2195950B0(v15, type metadata accessor for DateRangeTagFeedGroupEmitterBatch);
  }

  return v12;
}

char *sub_2195912F8(unint64_t *a1, unint64_t a2, unsigned __int8 *a3)
{
  v7 = *(type metadata accessor for DateRangeTagFeedGroupEmitter(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_2195910DC(a1, a2, a3, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_2195913A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a3;
  v79 = a4;
  v76 = a2;
  v73 = a5;
  v7 = sub_219BDBD34();
  v74 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v81 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateRangeTagFeedGroupEmitter(0);
  type metadata accessor for DateRangeTagFeedGroupKnobs(0);
  v80 = a1;
  sub_219BEF134();
  sub_219BEF524();
  (*(v10 + 8))(v12, v9);
  if (v82 < 1)
  {
    sub_219BEEDD4();
    sub_219595000(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    sub_219BEEDC4();
    return swift_willThrow();
  }

  v75 = v5;
  v72 = v82;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61708;
  sub_2186F20D4(0);
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  v17 = type metadata accessor for DateRangeTagFeedGroupCursor(0);
  sub_219595000(&qword_280EE9C60, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v18 = v79;
  v19 = sub_219BF7894();
  v21 = v20;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v22 = sub_2186FC3BC();
  *(v16 + 64) = v22;
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  v23 = sub_219BF6214();
  sub_219BE5314("DateRange group starting from timestamp %{public}@", 50, 2, &dword_2186C1000, v13, v23, v16);

  v24 = v77;
  result = sub_2195939F8(v81, v78, v80, v76, v18);
  if (!v24)
  {
    v26 = result;
    v67 = v17;
    v68 = v22;
    v69 = v13;
    v70 = v15;
    v27 = result >> 62;
    v75 = v7;
    if (result >> 62)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        v18 = result;
      }

      else
      {
        v18 = result & 0xFFFFFFFFFFFFFF8;
      }

      v38 = sub_219BF7214();
      if (v38 >= v72)
      {
        v65 = v72;
      }

      else
      {
        v65 = v38;
      }

      if (v38 >= 0)
      {
        v28 = v65;
      }

      else
      {
        v28 = v72;
      }

      if (v28 < 0)
      {
        goto LABEL_101;
      }

      v16 = v38;
      v38 = sub_219BF7214();
      if (v38 < 0)
      {
        goto LABEL_102;
      }

      v77 = v16 >> 63;
      if (sub_219BF7214() >= v28)
      {
LABEL_10:
        v71 = v26 & 0xC000000000000001;
        if ((v26 & 0xC000000000000001) != 0 && v28)
        {
          sub_218731D50();

          v29 = 0;
          do
          {
            v30 = v29 + 1;
            sub_219BF7334();
            v29 = v30;
          }

          while (v28 != v30);
          if (!v27)
          {
LABEL_15:
            v22 = 0;
            v18 = v26 & 0xFFFFFFFFFFFFFF8;
            v31 = (v26 & 0xFFFFFFFFFFFFFF8) + 32;
            v28 = (2 * v28) | 1;
            v76 = v27;
            if ((v28 & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_21:
            v66 = v31;
            sub_219BF7934();
            swift_unknownObjectRetain_n();
            v35 = swift_dynamicCastClass();
            if (!v35)
            {
              swift_unknownObjectRelease();
              v35 = MEMORY[0x277D84F90];
            }

            v36 = *(v35 + 16);

            if (!__OFSUB__(v28 >> 1, v22))
            {
              if (v36 == (v28 >> 1) - v22)
              {
                v22 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v22)
                {
                  goto LABEL_28;
                }

                v22 = MEMORY[0x277D84F90];
                goto LABEL_27;
              }

              goto LABEL_100;
            }

            goto LABEL_99;
          }
        }

        else
        {

          if (!v27)
          {
            goto LABEL_15;
          }
        }

        v18 = sub_219BF7564();
        v22 = v32;
        v28 = v33;
        v76 = v27;
        if ((v33 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v77 = 0;
      v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= v72)
      {
        v28 = v72;
      }

      else
      {
        v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v16 >= v28)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    while (1)
    {
      v38 = sub_219BF7214();
      if (v38 < 0)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        v47 = MEMORY[0x21CECE0F0](0, v22);
LABEL_65:
        LODWORD(v79) = *v79;
        v48 = sub_218BFBCBC(v47, v79);
        v50 = v49;
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_219C09EC0;
        v52 = MEMORY[0x277D83C10];
        *(v51 + 56) = MEMORY[0x277D83B88];
        *(v51 + 64) = v52;
        *(v51 + 32) = v28;
        v53 = v68;
        *(v51 + 96) = MEMORY[0x277D837D0];
        *(v51 + 104) = v53;
        v76 = v48;
        *(v51 + 72) = v48;
        *(v51 + 80) = v50;
        v71 = v50;

        v54 = sub_219BF6214();
        sub_219BE5314("DateRange group emitting with %ld headlines.  Group header: %{public}@", 70, 2, &dword_2186C1000, v69, v54, v51);

        sub_219BEF0B4();
        swift_unknownObjectRelease();
        v28 = v82;
        v26 = *(v82 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);
        swift_unknownObjectRelease();

        v55 = v16 - v18;
        if (!__OFSUB__(v16, v18))
        {
          v56 = v75;
          v57 = v81;
          if (v55)
          {
            v58 = 1;
            if (v55 < 1 || v55 >= v72)
            {
LABEL_75:
              v61 = type metadata accessor for DateRangeTagFeedGroupEmitterBatch(0);
              v62 = v73;
              v63 = (v73 + *(v61 + 32));
              result = (*(v74 + 32))(&v63[*(v67 + 20)], v57, v56);
              *v63 = v79;
              *v62 = v22;
              *(v62 + 8) = v26;
              *(v62 + 16) = v58;
              v64 = v71;
              *(v62 + 24) = v76;
              *(v62 + 32) = v64;
              return result;
            }
          }

          else
          {
            v58 = 0;
          }

          if (v78[3])
          {
            v58 = 2;
          }

          goto LABEL_75;
        }

        __break(1u);
      }

      else
      {
        while (1)
        {
          v28 = v38;
LABEL_33:
          if (v16 >= v28)
          {
            v37 = v28;
          }

          else
          {
            v37 = v16;
          }

          if (v77)
          {
            v37 = v28;
          }

          if (v28)
          {
            v18 = v37;
          }

          else
          {
            v18 = 0;
          }

          if (v16 < v18)
          {
            goto LABEL_92;
          }

          if (v76)
          {
            if (sub_219BF7214() < v18)
            {
              goto LABEL_93;
            }

            v38 = sub_219BF7214();
          }

          else
          {
            v38 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v38 < v18)
            {
              goto LABEL_93;
            }
          }

          if (v38 < v16)
          {
            goto LABEL_94;
          }

          if (v77)
          {
            goto LABEL_95;
          }

          if (!v71 || v18 == v16)
          {

            goto LABEL_57;
          }

          if (v18 < v16)
          {
            break;
          }

          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
        }

        sub_218731D50();

        v39 = v18;
        do
        {
          v40 = v39 + 1;
          sub_219BF7334();
          v39 = v40;
        }

        while (v16 != v40);
LABEL_57:

        if (v76)
        {
          v41 = sub_219BF7564();
          v18 = v42;
          v44 = v43;

          v16 = v44 >> 1;
        }

        else
        {
          v41 = v26 & 0xFFFFFFFFFFFFFF8;
        }

        v45 = v75;
        v46 = v81;
        if (v27)
        {
          if (!sub_219BF7214())
          {
            goto LABEL_71;
          }
        }

        else if (!*(v22 + 16))
        {
LABEL_71:

          v59 = sub_219BEEDD4();
          sub_219595000(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
          swift_allocError();
          (*(*(v59 - 8) + 104))(v60, *MEMORY[0x277D323A8], v59);
          swift_willThrow();
          swift_unknownObjectRelease();
          return (*(v74 + 8))(v46, v45);
        }

        v77 = v41;
        if ((v22 & 0xC000000000000001) != 0)
        {
          goto LABEL_96;
        }

        v26 = v70;
        if (*(v22 + 16))
        {
          v47 = *(v22 + 32);
          swift_unknownObjectRetain();
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      swift_unknownObjectRelease();
      v31 = v66;
LABEL_20:
      sub_218B667DC(v18, v31, v22, v28);
      v22 = v34;
LABEL_27:
      swift_unknownObjectRelease();
LABEL_28:
      LOBYTE(v27) = v22 < 0 || (v22 & 0x4000000000000000) != 0;
      if ((v27 & 1) == 0)
      {
        v28 = *(v22 + 16);
        goto LABEL_33;
      }
    }
  }

  return result;
}

void *sub_219591D18(uint64_t a1, uint64_t *a2)
{
  v118 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_219593918(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v88 - v5;
  sub_219593918(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v88 - v7;
  sub_219593918(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v88 - v9;
  v98 = sub_219BF2AB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BF2034();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v109 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BF3C84();
  v119 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF2124();
  MEMORY[0x28223BE20](v13 - 8);
  v117 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF3E84();
  v107 = *(v15 - 8);
  v108 = v15;
  MEMORY[0x28223BE20](v15);
  v113 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v114 = &v88 - v18;
  v116 = sub_218A42400;
  sub_219593918(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v19 - 8);
  v102 = &v88 - v20;
  v103 = MEMORY[0x277D2D4E0];
  sub_219593918(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v88 - v22;
  v24 = sub_219BDBD64();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DateRangeTagFeedGroupConfigData(0);
  v29 = v28 - 8;
  MEMORY[0x28223BE20](v28);
  v101 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BF1934();
  v115 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  sub_219BEF0B4();
  v32 = *(v120 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v33 = sub_219BF6394();

  sub_21958F7F0(0);
  sub_219BEDD14();
  v100 = *(v29 + 28);
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_219BF7314();

  v120 = 0x706F742D776F6C66;
  v121 = 0xEB000000002D6369;
  v34 = [v33 identifier];
  v35 = sub_219BF5414();
  v37 = v36;

  MEMORY[0x21CECC330](v35, v37);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  sub_219BDBD54();
  v38 = sub_219BDBD44();
  v40 = v39;
  (*(v25 + 8))(v27, v24);
  MEMORY[0x21CECC330](v38, v40);

  v106 = v33;
  v41 = [v33 identifier];
  sub_219BF5414();

  v42 = sub_219BEC004();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v90 = v42;
  v89 = v44;
  v88 = v43 + 56;
  (v44)(v23, 1, 1);
  sub_218A42400(0);
  v46 = v102;
  (*(*(v45 - 8) + 56))(v102, 1, 1, v45);
  v47 = v100;
  v48 = v101;
  sub_219BF1764();

  sub_219594EA8(v46, &unk_280E8FF30, v116);
  v102 = v23;
  sub_219594EA8(v23, &qword_280EE33F0, v103);
  v49 = *(v115 + 8);
  v115 += 8;
  v103 = v49;
  (v49)(&v48[v47], v112);
  sub_219593918(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  v50 = v118;
  sub_219BF20F4();
  sub_219BF14A4();
  v51 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v51);
  sub_218F0BB90(v51);
  sub_219BF3E74();
  v52 = *v50;
  if (*v50 >> 62)
  {
    v86 = *v50;
    v87 = sub_219BF7214();
    v52 = v86;
    v53 = v87;
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = MEMORY[0x277D84F90];
  v56 = v104;
  v55 = v105;
  if (v53)
  {
    v57 = v52;
    v120 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v53 & ~(v53 >> 63), 0);
    if (v53 < 0)
    {
      __break(1u);
      return result;
    }

    v59 = 0;
    v117 = (v57 & 0xC000000000000001);
    v118 = v53;
    LODWORD(v116) = *MEMORY[0x277D34128];
    v60 = v120;
    v61 = (v119 + 104);
    do
    {
      if (v117)
      {
        v62 = MEMORY[0x21CECE0F0](v59);
      }

      else
      {
        v62 = swift_unknownObjectRetain();
      }

      *v56 = v62;
      (*v61)(v56, v116, v55);
      v120 = v60;
      v64 = *(v60 + 16);
      v63 = *(v60 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_218C34A88((v63 > 1), v64 + 1, 1);
        v60 = v120;
      }

      v59 = (v59 + 1);
      *(v60 + 16) = v64 + 1;
      (*(v119 + 32))(v60 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v64, v56, v55);
    }

    while (v118 != v59);
    v54 = MEMORY[0x277D84F90];
  }

  sub_218F0B984(v54);
  sub_218F0BA7C(v54);
  sub_218F0BB90(v54);
  sub_219BF3E74();
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v65 = swift_allocObject();
  v119 = v65;
  *(v65 + 16) = xmmword_219C146A0;
  *(v65 + 32) = v106;
  sub_219593918(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v66 = v107;
  v67 = *(v107 + 72);
  v68 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_219C09EC0;
  v70 = v69 + v68;
  v71 = *(v66 + 16);
  v72 = v108;
  v71(v70, v114, v108);
  v71(v70 + v67, v113, v72);
  v89(v102, 1, 1, v90);
  swift_unknownObjectRetain();
  sub_219A95188(v54);
  sub_219A95188(v54);
  sub_219A951A0(v54);
  sub_219A951B8(v54);
  sub_219A952CC(v54);
  sub_219A952E4(v54);
  sub_219A953F8(v54);
  sub_219BF2024();
  v73 = type metadata accessor for DateRangeTagFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((v110 + *(v73 + 24)), *(v110 + *(v73 + 24) + 24));
  sub_2189AD5C8(0);
  (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
  sub_219BEF0B4();
  v75 = *(v120 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v76 = sub_219BF35D4();
  (*(*(v76 - 8) + 56))(v92, 1, 1, v76);
  LOBYTE(v122) = 31;
  sub_219593758(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v77 = *(v122 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v78 = sub_219BF2774();
  (*(*(v78 - 8) + 56))(v99, 1, 1, v78);
  v79 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v79 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v80 = v94;
  sub_219BF2A84();
  v81 = v111;
  v82 = v109;
  v83 = sub_219BF2194();
  swift_unknownObjectRelease();
  (*(v97 + 8))(v80, v98);
  (*(v95 + 8))(v82, v96);
  v84 = v108;
  v85 = *(v107 + 8);
  v85(v113, v108);
  v85(v114, v84);
  (v103)(v81, v112);
  return v83;
}

uint64_t sub_219592E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219592F9C(0);
  v7 = *(v6 + 48);
  v8 = sub_219BF1904();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  return sub_219595048(a2, a3 + v7, type metadata accessor for DateRangeTagFeedGroupEmitterBatch);
}

uint64_t sub_219592F10(char *a1)
{
  v3 = *(a1 + 1);
  v13[0] = *a1;
  v13[1] = v3;
  v4 = *(a1 + 3);
  v13[2] = *(a1 + 2);
  v14[0] = v4;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 6);
  v14[4] = *(a1 + 7);
  v14[5] = v5;
  v8 = *(a1 + 10);
  v14[6] = v6;
  v14[7] = v8;
  v9 = *(a1 + 5);
  v14[1] = *(a1 + 4);
  v14[2] = v9;
  v10 = *(v1 + 16);
  v14[3] = v7;
  sub_21959106C(0);
  return v10(v13, v14, &a1[*(v11 + 64)]);
}

void sub_219592F9C(uint64_t a1)
{
  if (!qword_27CC1C2A0)
  {
    sub_219BF1904();
    type metadata accessor for DateRangeTagFeedGroupEmitterBatch(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1C2A0);
    }
  }
}

uint64_t sub_21959300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219593348(a1, v11);
  if (*(a2 + 16))
  {
    sub_218ACC140(0);
    v13 = &v8[*(v12 + 48)];
    sub_219595048(v11, v8, type metadata accessor for TagFeedGroup);
    v14 = *(type metadata accessor for DateRangeTagFeedGroupEmitterBatch(0) + 32);
    v13[3] = type metadata accessor for DateRangeTagFeedGroupCursor(0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    sub_219595048(a2 + v14, boxed_opaque_existential_1, type metadata accessor for DateRangeTagFeedGroupCursor);
  }

  else
  {
    sub_219595048(v11, v8, type metadata accessor for TagFeedGroup);
  }

  swift_storeEnumTagMultiPayload();
  sub_219593918(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v16 = sub_219BE3014();
  sub_2195950B0(v11, type metadata accessor for TagFeedGroup);
  return v16;
}

uint64_t sub_21959329C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DateRangeTagFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21959300C(a1, a2, v2 + v6, v7);
}

uint64_t sub_219593348@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v30 = a3;
  sub_219593918(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = v25 - v5;
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v25[0] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BED8D4();
  v13 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF17D4();
  v26 = v17;
  v27 = v16;
  (*(v10 + 16))(v12, a1, v9);
  sub_21958F7F0(0);
  v18 = sub_219BEDCB4();
  v25[1] = v19;
  v25[2] = v18;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for DateRangeTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v20 = sub_219BEE5D4();
  (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
  sub_219BED854();
  v21 = v30;
  v22 = v26;
  *v30 = v27;
  v21[1] = v22;
  v23 = type metadata accessor for DateRangeTagFeedGroup(0);
  (*(v13 + 32))(v21 + *(v23 + 20), v15, v28);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219593708(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_219592F9C(0);
  return v3(a1, a1 + *(v4 + 48));
}

void sub_219593758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2195937D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DateRangeTagFeedGroupEmitter(0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_21877D2B0();
  return sub_219BEF194();
}

void sub_219593918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195939F8(unint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v100 = a4;
  v93 = sub_219BDBD34();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v82 - v11;
  v12 = *a2;
  v13 = (*a2 >> 62);
  v88 = *a2;
  if (v13)
  {
LABEL_50:
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v15 = qword_280F61708;
  sub_2186F20D4(0);
  v95 = v16;
  v17 = swift_allocObject();
  v94 = xmmword_219C09EC0;
  *(v17 + 16) = xmmword_219C09EC0;
  v18 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v18;
  v87 = v14;
  *(v17 + 32) = v14;
  v101 = 0;
  v102 = 0xE000000000000000;
  v86 = a5;
  v84 = *a5;
  LOBYTE(v103) = v84;
  sub_219BF7484();
  v19 = v101;
  v20 = v102;
  v21 = MEMORY[0x277D837D0];
  *(v17 + 96) = MEMORY[0x277D837D0];
  v92 = sub_2186FC3BC();
  *(v17 + 104) = v92;
  *(v17 + 72) = v19;
  *(v17 + 80) = v20;
  v22 = sub_219BF6214();
  v96 = v15;
  sub_219BE5314("DateRange selecting from %ld available headlines.  Flow estimated as %{public}@", 79, 2, &dword_2186C1000, v15, v22, v17);

  if (!v13)
  {
    a5 = v88;
    v99 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v99)
    {
      v83 = a1;
      v103 = MEMORY[0x277D84F90];
LABEL_10:
      a1 = 0;
      v97 = a5 & 0xFFFFFFFFFFFFFF8;
      v98 = a5 & 0xC000000000000001;
      v23 = a5 + 32;
      while (1)
      {
        if (v98)
        {
          v21 = MEMORY[0x21CECE0F0](a1, v88);
          v24 = __OFADD__(a1++, 1);
          if (v24)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          if (a1 >= *(v97 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v21 = *(v23 + 8 * a1);
          swift_unknownObjectRetain();
          v24 = __OFADD__(a1++, 1);
          if (v24)
          {
            goto LABEL_29;
          }
        }

        a5 = *(v100 + 88);
        v25 = [v21 identifier];
        v26 = sub_219BF5414();
        v5 = v27;

        if (*(a5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v28 = sub_219BF7AE4(), v13 = (a5 + 56), v29 = -1 << *(a5 + 32), v30 = v28 & ~v29, ((*(a5 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
        {
          v31 = ~v29;
          while (1)
          {
            v32 = (*(a5 + 48) + 16 * v30);
            v33 = *v32 == v26 && v32[1] == v5;
            if (v33 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v30 = (v30 + 1) & v31;
            if (((*(v13 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_11:

          v13 = &v103;
          sub_219BF73D4();
          v5 = *(v103 + 16);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        v21 = MEMORY[0x277D837D0];
        if (a1 == v99)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_37;
  }

  a5 = v88;
  if (!sub_219BF7214())
  {
LABEL_37:
    v62 = sub_219BEEDD4();
    sub_219595000(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v62 - 8) + 104))(v63, *MEMORY[0x277D32428], v62);
    swift_willThrow();
    return v62;
  }

  v83 = a1;
  v13 = MEMORY[0x277D84F90];
  v103 = MEMORY[0x277D84F90];
  v99 = sub_219BF7214();
  if (v99)
  {
    goto LABEL_10;
  }

LABEL_30:
  v34 = sub_218731D50();
  v35 = sub_219595000(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v36 = sub_219BF5964();

  v38 = sub_218B197A8(v36, v37);
  v39 = swift_allocObject();
  *(v39 + 16) = v94;
  v40 = v87;
  if (!(v38 >> 62))
  {
    v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = v87 - v41;
    if (!__OFSUB__(v87, v41))
    {
      goto LABEL_32;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v41 = sub_219BF7214();
  v42 = v40 - v41;
  if (__OFSUB__(v40, v41))
  {
    goto LABEL_53;
  }

LABEL_32:
  v43 = MEMORY[0x277D83B88];
  *(v39 + 56) = MEMORY[0x277D83B88];
  v44 = MEMORY[0x277D83C10];
  *(v39 + 64) = MEMORY[0x277D83C10];
  *(v39 + 72) = v41;
  *(v39 + 32) = v42;
  *(v39 + 96) = v43;
  *(v39 + 104) = v44;
  sub_219BF6214();
  sub_219BE5314("DateRange Filtered %ld headlines that have been consumed.  %ld headlines remain.", v82, v83);

  MEMORY[0x28223BE20](v45);
  v39 = v86;
  *(&v82 - 2) = v86;
  v46 = v85;
  v47 = sub_2195EB294(sub_219594E68, &v82 - 4, v38);
  v40 = v46;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  if (!(v47 >> 62))
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v41 - v48;
    if (!__OFSUB__(v41, v48))
    {
      goto LABEL_34;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
    goto LABEL_43;
  }

LABEL_54:
  v48 = sub_219BF7214();
  v49 = v41 - v48;
  if (__OFSUB__(v41, v48))
  {
    goto LABEL_56;
  }

LABEL_34:
  v100 = v40;
  v98 = v34;
  v99 = v35;
  v50 = MEMORY[0x277D83B88];
  *(v5 + 56) = MEMORY[0x277D83B88];
  v51 = MEMORY[0x277D83C10];
  *(v5 + 64) = MEMORY[0x277D83C10];
  *(v5 + 32) = v49;
  v52 = *(type metadata accessor for DateRangeTagFeedGroupCursor(0) + 20);
  v53 = sub_219BDBA74();
  v54 = v92;
  *(v5 + 96) = v21;
  *(v5 + 104) = v54;
  *(v5 + 72) = v53;
  *(v5 + 80) = v55;
  *(v5 + 136) = v50;
  *(v5 + 144) = v51;
  *(v5 + 112) = v48;
  v56 = sub_219BF6214();
  sub_219BE5314("DateRange Filtered %ld headlines newer than %{public}@.  %ld headlines remain.", 78, 2, &dword_2186C1000, v96, v56, v5);

  v57 = v93;
  v58 = sub_219BF5964();

  v99 = sub_218B197A8(v58, v59);
  v21 = v89;
  (*(v91 + 16))(v89, v39 + v52, v57);
  if (v84 > 1)
  {
    v5 = v90;
    if (v84 == 2)
    {
      sub_219BF5CE4();
      v60 = 0xE400000000000000;
      v61 = 1801807191;
    }

    else
    {
      sub_219BF5CE4();
      v60 = 0xE500000000000000;
      v61 = 0x68746E6F4DLL;
    }
  }

  else
  {
    v5 = v90;
    if (v84)
    {
      sub_219BF5CE4();
      v60 = 0xE300000000000000;
      v61 = 7954756;
    }

    else
    {
      sub_219BF5CF4();
      v60 = 0xE400000000000000;
      v61 = 1920298824;
    }
  }

  v34 = MEMORY[0x277D837D0];
  v40 = v92;
  sub_219BDBBF4();
  v35 = swift_allocObject();
  *(v35 + 16) = v94;
  *(v35 + 56) = v34;
  *(v35 + 64) = v40;
  *(v35 + 32) = v61;
  *(v35 + 40) = v60;
  if (qword_27CC08698 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v64 = qword_27CC1C250;
  v65 = sub_219BDBC04();
  v66 = sub_219BDBC04();
  v67 = [v64 stringFromDate:v65 toDate:v66];

  v68 = sub_219BF5414();
  v70 = v69;

  *(v35 + 96) = v34;
  *(v35 + 104) = v40;
  *(v35 + 72) = v68;
  *(v35 + 80) = v70;
  v71 = sub_219BF6214();
  sub_219BE5314("DateRange %{public}@ chunk time interval: %{public}@", 52, 2, &dword_2186C1000, v96, v71, v35);

  MEMORY[0x28223BE20](v72);
  *(&v82 - 2) = v21;
  *(&v82 - 1) = v5;
  v73 = v99;

  v62 = sub_2195EB294(sub_219594E88, &v82 - 4, v73);
  v74 = swift_allocObject();
  *(v74 + 16) = v94;
  if (v73 >> 62)
  {
    v75 = sub_219BF7214();
  }

  else
  {
    v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v62 >> 62)
  {
    result = sub_219BF7214();
    v77 = v75 - result;
    if (!__OFSUB__(v75, result))
    {
      goto LABEL_47;
    }
  }

  else
  {
    result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v77 = v75 - result;
    if (!__OFSUB__(v75, result))
    {
LABEL_47:
      v78 = MEMORY[0x277D83B88];
      *(v74 + 56) = MEMORY[0x277D83B88];
      v79 = MEMORY[0x277D83C10];
      *(v74 + 64) = MEMORY[0x277D83C10];
      *(v74 + 72) = result;
      *(v74 + 32) = v77;
      *(v74 + 96) = v78;
      *(v74 + 104) = v79;
      sub_219BF6214();
      sub_219BE5314("DateRange Filtered %ld headlines outside of chunk interval.  %ld headlines remain.", v82, v83);

      v80 = v91;
      v81 = v93;
      (*(v91 + 32))(v83, v90, v93);
      (*(v80 + 8))(v89, v81);
      return v62;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2195944FC(uint64_t a1, uint64_t a2)
{
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_2195946EC(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_219594EA8(v4, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    type metadata accessor for DateRangeTagFeedGroupCursor(0);
    v9 = sub_219BDBC14();
    (*(v6 + 8))(v8, v5);
  }

  return v9 & 1;
}

uint64_t sub_2195946EC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v24 - v13;
  v15 = [v2 displayDate];
  if (v15)
  {
    v16 = v15;
    sub_219BDBCA4();

    v17 = *(v5 + 32);
    v17(v14, v7, v4);
    v18 = *(v5 + 56);
    v18(v14, 0, 1, v4);
    v17(a1, v14, v4);
    return (v18)(a1, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v21 = 1;
    v20(v14, 1, 1, v4);
    v22 = [v2 publishDate];
    if (v22)
    {
      v23 = v22;
      sub_219BDBCA4();

      v21 = 0;
    }

    v20(v10, v21, 1, v4);
    sub_218A5DD60(v10, a1);
    result = (*(v5 + 48))(v14, 1, v4);
    if (result != 1)
    {
      return sub_219594EA8(v14, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  return result;
}

uint64_t sub_2195949AC(void **a1, uint64_t a2, uint64_t a3)
{
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_getObjectType();
  sub_2195946EC(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_219594EA8(v6, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v12 = qword_280F61708;
    sub_2186F20D4(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    v14 = [v11 identifier];
    v15 = sub_219BF5414();
    v17 = v16;

    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    v18 = sub_219BF6214();
    sub_219BE5314("DateRange filtering out %{public}@ due to missing date.", 55, 2, &dword_2186C1000, v12, v18, v13);

    v19 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (sub_219BDBC24())
    {
      v19 = sub_219BDBC14();
    }

    else
    {
      v19 = 0;
    }

    (*(v8 + 8))(v10, v7);
  }

  return v19 & 1;
}

uint64_t sub_219594C80@<X0>(uint64_t a1@<X8>)
{
  sub_219593918(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_getObjectType();
  sub_2195946EC(v4);
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_219BDBBB4();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return sub_219594EA8(v4, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  return result;
}

id sub_219594E04()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27CC1C250 = v0;
  return result;
}

uint64_t sub_219594EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219593918(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219594F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219595000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219595048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195950B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219595110()
{
  result = qword_27CC1C2B8;
  if (!qword_27CC1C2B8)
  {
    sub_219593918(255, &qword_27CC1C2B0, type metadata accessor for DateRangeTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2B8);
  }

  return result;
}

void sub_219595198(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v9 = sub_2195C990C(a3, 0, v8);
  v10 = [objc_allocWithZone(MEMORY[0x277D355E8]) initWithTextColor_];

  v11 = *(a1 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView);
  [v11 setStyler_];

  if ([a3 feedConfiguration] == 3)
  {
    v12 = sub_219BF63C4();
    v13 = v4[14];
    v14 = v4[15];
    v15 = v4[16];
    v4[14] = v12;
    v4[15] = v16;
    v4[16] = 0;

    sub_219596E50(v13, v14, v15);
    v17 = sub_219BF53D4();
    v18 = [objc_opt_self() feedTitleViewUpdateForFeedName_];

    v42 = v18;
    v19 = sub_219BF53D4();
    [v42 setAccessibilityLabel_];

    [v11 applyFeedTitleViewUpdate:v42 animation:0];
  }

  else
  {
    v20 = [a2 traitCollection];
    [v20 displayScale];
    v22 = v21;
    v23 = [a2 navigationBar];
    [v23 frameUsingCenterAndBounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = a3;
    v33[4] = v20;
    v33[5] = v25;
    v33[6] = v27;
    v33[7] = v29;
    v33[8] = v31;
    v33[9] = v22;
    sub_219596EC0(0, &qword_280EE72F8, sub_2189EB4C0, MEMORY[0x277D6CE60]);
    objc_allocWithZone(v34);
    v35 = a3;
    v36 = v20;
    v42 = sub_219BE2C64();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    v39[2] = v37;
    v39[3] = v38;
    v39[4] = v35;
    v40 = v35;
    sub_219BE1FF4();
    v41 = v4[12];
    [v41 cancelAllOperations];
    [v41 addOperation_];
  }
}

uint64_t sub_219595544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    sub_2189EB4C0(0);
    sub_219BE3204();
    sub_218718690(a1, v17);
    v11 = swift_allocObject();
    sub_2186CB1F0(v17, v11 + 16);
    v12 = sub_219BE2E54();
    v13 = sub_219BE2F74();

    return v13;
  }

  else
  {
    v15 = sub_219BE1D94();
    sub_21874E258(&qword_27CC0B2F0, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D6CAE0], v15);
    sub_219596EC0(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_2195957AC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  swift_allocObject();
  swift_weakInit();
  sub_219596EC0(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE30B4();

  return v8;
}

id sub_2195958CC@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_219BE26E4())
  {
    v5 = sub_219BE27E4();
    sub_21874E258(&unk_280EE73E0, MEMORY[0x277D6CD00], MEMORY[0x277D6CD08]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D6CCF8], v5);
    return swift_willThrow();
  }

  else
  {
    *a3 = v4;
    return v4;
  }
}

double sub_2195959D8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a4;
  v5 = sub_219BED174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v28 = v6;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v26 = sub_219BF66A4();
      v19 = swift_allocObject();
      *(v19 + 16) = v12;
      *(v19 + 24) = v13;
      v27 = v9;
      v20 = v29;
      *(v19 + 32) = v16;
      *(v19 + 40) = v20;
      *(v19 + 48) = v18;
      aBlock[4] = sub_219596EA0;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218793E0C;
      aBlock[3] = &block_descriptor_140;
      v21 = _Block_copy(aBlock);
      sub_219596EB4(v12);

      v22 = v20;
      v23 = v18;

      sub_219BED1A4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21874E258(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_219596EC0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      sub_219BF7164();
      v24 = v26;
      MEMORY[0x21CECD460](0, v11, v8, v21);
      _Block_release(v21);

      (*(v28 + 8))(v8, v5);
      (*(v30 + 8))(v11, v27);
    }

    else
    {
    }
  }

  return result;
}

double sub_219595D70(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_219596EC0(0, &qword_280EE73D8, MEMORY[0x277D6CD00], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v42 - v10;
  if (a2)
  {
    v42[1] = a1;
    v12 = a1;
    sub_218A450F0();
    v13 = sub_219BE27E4();
    v14 = swift_dynamicCast();
    v15 = *(*(v13 - 8) + 56);
    if (v14)
    {
      v16 = *(v13 - 8);
      v15(v11, 0, 1, v13);
      v17 = (*(v16 + 88))(v11, v13);
      v18 = *MEMORY[0x277D6CCF8];
      (*(v16 + 8))(v11, v13);
      if (v17 == v18)
      {
        return result;
      }
    }

    else
    {
      v15(v11, 1, 1, v13);
      sub_219596F24(v11);
    }

    v27 = sub_219BF63C4();
    v28 = a3[14];
    v29 = a3[15];
    v30 = a3[16];
    a3[14] = v27;
    a3[15] = v31;
    a3[16] = 0;

    sub_219596E50(v28, v29, v30);
    v32 = sub_219BF53D4();
    v33 = [objc_opt_self() feedTitleViewUpdateForFeedName_];

    v34 = v33;
    v35 = sub_219BF53D4();
    [v34 setAccessibilityLabel_];

    [*(a5 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView) applyFeedTitleViewUpdate:v34 animation:0];
  }

  else if (a1)
  {
    v20 = a1;
    v21 = sub_219BF63C4();
    v23 = v22;
    v24 = a3[14];
    v25 = a3[15];
    v26 = a3[16];
    a3[14] = v21;
    a3[15] = v22;
    a3[16] = a1;
    sub_219596EB4(a1);
    sub_219596EB4(a1);

    sub_219596E50(v24, v25, v26);
    sub_219596CE8(a5, v21, v23, a1, 0);

    sub_219596E94(a1);

    sub_219596E94(a1);
  }

  else
  {
    v36 = sub_219BF63C4();
    v38 = v37;
    v39 = a3[14];
    v40 = a3[15];
    v41 = a3[16];
    a3[14] = v36;
    a3[15] = v37;
    a3[16] = 0;

    sub_219596E50(v39, v40, v41);
    sub_219596CE8(a5, v36, v38, 0, 0);
  }

  return result;
}

void sub_219596134(uint64_t a1, uint64_t a2, id a3)
{
  v7 = [a3 feedConfiguration];
  v8 = [a3 alternativeFeedDescriptor];
  if ((v7 - 9) < 3 || v7 == 3)
  {
    goto LABEL_6;
  }

  if (v7 == 12)
  {
    v16 = v8;
    v11 = [*(v3 + 104) useFood];
    v12 = objc_opt_self();
    if (v11)
    {
      v13 = [v12 feedTitleViewUpdateForCheckingForUpdates];
    }

    else
    {
      v13 = [v12 feedTitleViewUpdateForCheckingForNewStories];
    }

    v15 = v13;
    [*(a1 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView) applyFeedTitleViewUpdate:v15 animation:a2];

    goto LABEL_9;
  }

  if (v8)
  {
LABEL_6:
  }

  else if (v7 != 13)
  {
    v14 = [sub_219BF6394() asSports];
    swift_unknownObjectRelease();
    if (v14)
    {
      swift_unknownObjectRelease();
      v10 = [objc_opt_self() feedTitleViewUpdateForCheckingForUpdates];
    }

    else
    {
      v10 = [objc_opt_self() feedTitleViewUpdateForCheckingForNewStories];
    }

    goto LABEL_8;
  }

  v10 = [objc_opt_self() feedTitleViewUpdateForCheckingForUpdates];
LABEL_8:
  v16 = v10;
  [*(a1 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView) applyFeedTitleViewUpdate:v16 animation:a2];
LABEL_9:
}

uint64_t sub_219596314()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  swift_unknownObjectRelease();
  sub_219596E50(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

void sub_219596394(void (*a1)(void *), void (*a2)(void *), void (*a3)(void *), uint64_t a4, uint64_t a5, void *a6, void *a7, double a8, double a9, double a10, double a11, double a12)
{
  v42 = a7;
  v44 = a6;
  v38 = a4;
  v39 = a3;
  v14 = sub_219BF4A54();
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2894();
  MEMORY[0x28223BE20](v17 - 8);
  v45 = sub_219BF40F4();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF40E4();
  v41 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  v26 = swift_allocObject();
  v40 = a1;
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = v41;
    (*(v41 + 104))(v25, *MEMORY[0x277D342D8], v20);
    v39 = a2;

    v30 = v42;
    sub_219BF2884();
    (*(v29 + 16))(v22, v25, v20);
    sub_219BF40D4();
    sub_219BF4A44();
    v31 = sub_219596984(v44, v16, v28, v19);
    v32 = v29;
    if (v31)
    {
      v36 = v31;
      (*(v46 + 8))(v16, v47);
      (*(v43 + 8))(v19, v45);
      (*(v32 + 8))(v25, v20);
      __swift_project_boxed_opaque_existential_1(v28 + 2, v28[5]);
      v48[3] = sub_219BF4144();
      v48[4] = sub_21874E258(&qword_280E8FF00, MEMORY[0x277D342E8], MEMORY[0x277D342E0]);
      v48[0] = v36;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_2189EB59C;
      *(v37 + 24) = v26;

      sub_219BE6254();

      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    else
    {

      (*(v46 + 8))(v16, v47);
      (*(v43 + 8))(v19, v45);
      (*(v29 + 8))(v25, v20);
      v48[0] = 0;
      v40(v48);
    }
  }

  else
  {

    v33 = sub_219BE1D94();
    sub_21874E258(&qword_27CC0B2F0, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
    v34 = swift_allocError();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D6CAE0], v33);
    v39(v34);
  }
}

uint64_t sub_219596984(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_219BF40F4();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 feedConfiguration] == 10)
  {
    v13 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    if (v13)
    {
      v37 = sub_219BF4144();
      v14 = a4;
      v15 = sub_219BF4A54();
      v35 = v15;
      v36 = MEMORY[0x277D34598];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
      (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a2, v15);
      v17 = a3[10];
      v18 = a3[11];
      v19 = __swift_project_boxed_opaque_existential_1(a3 + 7, v17);
      v32 = v17;
      v33 = *(v18 + 8);
      v20 = __swift_allocate_boxed_opaque_existential_1(v31);
      (*(*(v17 - 8) + 16))(v20, v19, v17);
      (*(v9 + 16))(v12, v14, v8);
      return sub_219BF4114();
    }

    v29 = 2;
  }

  else
  {
    if ([a1 backingChannel])
    {
      v37 = sub_219BF4144();
      v22 = a4;
      v23 = sub_219BF4A54();
      v35 = v23;
      v36 = MEMORY[0x277D34598];
      v24 = __swift_allocate_boxed_opaque_existential_1(v34);
      (*(*(v23 - 8) + 16))(v24, a2, v23);
      v25 = a3[10];
      v26 = a3[11];
      v27 = __swift_project_boxed_opaque_existential_1(a3 + 7, v25);
      v32 = v25;
      v33 = *(v26 + 8);
      v28 = __swift_allocate_boxed_opaque_existential_1(v31);
      (*(*(v25 - 8) + 16))(v28, v27, v25);
      (*(v9 + 16))(v12, v22, v8);
      return sub_219BF4124();
    }

    v29 = 1;
  }

  sub_219597010();
  swift_allocError();
  *v30 = v29;
  return swift_willThrow();
}

void sub_219596CE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    v7 = a4;
    v8 = sub_219BF53D4();
    v9 = [objc_opt_self() feedTitleViewUpdateForFeedImage:v7 accessibilityTitle:v8];
  }

  else
  {
    v8 = sub_219BF53D4();
    v9 = [objc_opt_self() feedTitleViewUpdateForFeedName_];
  }

  v11 = v9;
  v10 = sub_219BF53D4();
  [v11 setAccessibilityLabel_];

  [*(a1 + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView) applyFeedTitleViewUpdate:v11 animation:a5];
}

void sub_219596E50(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_219596EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219596F24(uint64_t a1)
{
  sub_219596EC0(0, &qword_280EE73D8, MEMORY[0x277D6CD00], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_219597010()
{
  result = qword_280EAA6D0;
  if (!qword_280EAA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA6D0);
  }

  return result;
}

unint64_t sub_219597078()
{
  result = qword_27CC1C2C0;
  if (!qword_27CC1C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2C0);
  }

  return result;
}

uint64_t sub_2195970DC()
{
  sub_2195975C8(v0, v5);
  v3[8] = v5[8];
  v4[0] = v6[0];
  *(v4 + 9) = *(v6 + 9);
  v3[4] = v5[4];
  v3[5] = v5[5];
  v3[6] = v5[6];
  v3[7] = v5[7];
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v5[3];
  v1 = *&v5[0];

  sub_218C113E0(v3);
  return v1;
}

uint64_t sub_219597164(uint64_t a1, uint64_t a2)
{
  v4 = sub_2195973B0();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2195971B0(uint64_t a1, uint64_t a2)
{
  sub_2195975C8(a1, v9);
  sub_2195975C8(a2, v11);
  v7[8] = v9[8];
  v8[0] = v10[0];
  *(v8 + 9) = *(v10 + 9);
  v7[4] = v9[4];
  v7[5] = v9[5];
  v7[6] = v9[6];
  v7[7] = v9[7];
  v7[0] = v9[0];
  v7[1] = v9[1];
  v7[2] = v9[2];
  v7[3] = v9[3];
  v5[8] = v11[8];
  v6[0] = v12[0];
  *(v6 + 9) = *(v12 + 9);
  v5[4] = v11[4];
  v5[5] = v11[5];
  v5[6] = v11[6];
  v5[7] = v11[7];
  v5[0] = v11[0];
  v5[1] = v11[1];
  v5[2] = v11[2];
  v5[3] = v11[3];
  if (v9[0] == v11[0])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_219BF78F4();
  }

  sub_218C113E0(v5);
  sub_218C113E0(v7);
  return v3 & 1;
}

unint64_t sub_2195972A8()
{
  result = qword_27CC1C2C8;
  if (!qword_27CC1C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2C8);
  }

  return result;
}

unint64_t sub_219597300()
{
  result = qword_27CC1C2D0;
  if (!qword_27CC1C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2D0);
  }

  return result;
}

unint64_t sub_219597358()
{
  result = qword_27CC1C2D8;
  if (!qword_27CC1C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2D8);
  }

  return result;
}

unint64_t sub_2195973B0()
{
  result = qword_27CC1C2E0;
  if (!qword_27CC1C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C2E0);
  }

  return result;
}

unint64_t sub_219597408()
{
  result = qword_27CC1C2E8[0];
  if (!qword_27CC1C2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1C2E8);
  }

  return result;
}

uint64_t sub_21959745C@<X0>(uint64_t a1@<X8>)
{
  sub_2195975C8(v1, v14);
  v12[0] = v14[7];
  v12[1] = v14[8];
  v13[0] = v15[0];
  *(v13 + 9) = *(v15 + 9);
  v10[1] = v14[3];
  v11[0] = v14[4];
  v11[1] = v14[5];
  v11[2] = v14[6];
  v9[0] = v14[0];
  v9[1] = v14[1];
  v10[0] = v14[2];
  sub_218AB7A30(v10, v8);
  sub_218AB7A30(v11 + 8, v7);
  sub_218AB7A30(v12, v6);

  sub_219BF0D84();
  sub_218C113E0(v9);
  v3 = *MEMORY[0x277D32E08];
  v4 = sub_219BF0614();
  return (*(*(v4 - 8) + 104))(a1, v3, v4);
}

uint64_t sub_21959759C(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_219597608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RecipeFilterSectionContainerView.PaddingBehavior(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2195976B0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_2195977F8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 17) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_219597A14(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_219BED144();
}

uint64_t sub_219597C1C(char a1)
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](a1 & 1);
  return sub_219BF7AE4();
}

uint64_t sub_219597C80(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219597BF4(v3, *v1);
  return sub_219BF7AE4();
}

uint64_t sub_219597D04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  sub_2195985E8(255);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_219BED134();
  swift_getWitnessTable();
  v4 = sub_219BED034();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = sub_219BEC724();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  sub_219BEC974();
  v14 = *(a1 + 24);
  v22 = v3;
  v23 = v14;
  v24 = v19[1];
  sub_219BED024();
  sub_219BECB94();
  WitnessTable = swift_getWitnessTable();
  sub_219BECEC4();
  (*(v20 + 8))(v6, v4);
  v25 = WitnessTable;
  v26 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v16 = *(v8 + 16);
  v16(v13, v10, v7);
  v17 = *(v8 + 8);
  v17(v10, v7);
  v16(v21, v13, v7);
  return (v17)(v13, v7);
}

uint64_t sub_219598018@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v63 = a4;
  v64 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v52 - v8;
  v57 = sub_219BEC954();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BECC84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195985E8(0);
  v58 = v14;
  MEMORY[0x28223BE20](v14);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v52 - v17;
  v53 = a1;
  v18 = *a1;
  v19 = a1[1];
  *&v72[0] = v18;
  *(&v72[0] + 1) = v19;
  sub_2187F3BD4();

  v20 = sub_219BECDA4();
  v22 = v21;
  v24 = v23;
  sub_219BECC64();
  sub_219BECBF4();

  (*(v11 + 104))(v13, *MEMORY[0x277CE0A10], v10);
  sub_219BECC94();

  (*(v11 + 8))(v13, v10);
  sub_219BECC04();

  v25 = sub_219BECD74();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v24 & 1;
  v33 = v53;
  v34 = v22;
  v35 = v54;
  sub_2189A0BC8(v20, v34, v32);

  LOBYTE(v19) = sub_219BECB94();
  v37 = type metadata accessor for RecipeFilterSectionContainerView(0, a2, v35, v36);
  sub_219BEC5A4();
  LOBYTE(v67[0]) = v29 & 1;
  LOBYTE(v65) = 0;
  *&v68 = v25;
  *(&v68 + 1) = v27;
  LOBYTE(v69) = v29 & 1;
  *(&v69 + 1) = v31;
  LOBYTE(v70) = v19;
  *(&v70 + 1) = v38;
  *v71 = v39;
  *&v71[8] = v40;
  *&v71[16] = v41;
  v71[24] = 0;
  v42 = v55;
  sub_219BEC944();
  sub_219598650();
  sub_2195986B4();
  v43 = v59;
  sub_219BECE84();
  (*(v56 + 8))(v42, v57);
  v72[1] = v69;
  v72[2] = v70;
  *v73 = *v71;
  *&v73[9] = *&v71[9];
  v72[0] = v68;
  sub_219598868(v72, sub_219598650);
  v44 = v64;
  v45 = *(v64 + 16);
  v46 = v33 + *(v37 + 40);
  v47 = v61;
  v45(v61, v46, a2);
  v48 = v60;
  sub_21959872C(v43, v60);
  *&v68 = v48;
  v49 = v62;
  v45(v62, v47, a2);
  *(&v68 + 1) = v49;
  v67[0] = v58;
  v67[1] = a2;
  v65 = sub_219598790();
  v66 = v35;
  sub_219597A14(&v68, 2uLL, v67);
  v50 = *(v44 + 8);
  v50(v47, a2);
  sub_219598868(v43, sub_2195985E8);
  v50(v49, a2);
  return sub_219598868(v48, sub_2195985E8);
}

void sub_2195985E8(uint64_t a1)
{
  if (!qword_27CC1C3F0)
  {
    sub_219598650();
    sub_219BECB24();
    v1 = sub_219BEC724();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1C3F0);
    }
  }
}

void sub_219598650()
{
  if (!qword_27CC1C3F8)
  {
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1C3F8);
    }
  }
}

unint64_t sub_2195986B4()
{
  result = qword_27CC1C400;
  if (!qword_27CC1C400)
  {
    sub_219598650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C400);
  }

  return result;
}

uint64_t sub_21959872C(uint64_t a1, uint64_t a2)
{
  sub_2195985E8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219598790()
{
  result = qword_27CC1C408;
  if (!qword_27CC1C408)
  {
    sub_2195985E8(255);
    sub_2195986B4();
    sub_219598810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C408);
  }

  return result;
}

unint64_t sub_219598810()
{
  result = qword_27CC0BAF8;
  if (!qword_27CC0BAF8)
  {
    sub_219BECB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BAF8);
  }

  return result;
}

uint64_t sub_219598868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2195988C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195990D4(0, &qword_280E8CD98, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959901C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219599138(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219599070(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219598B74(uint64_t a1)
{
  v2 = sub_21959901C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219598BB0(uint64_t a1)
{
  v2 = sub_21959901C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219598C2C(void *a1)
{
  sub_2195990D4(0, &qword_280E8C560, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959901C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219599138(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219598E8C(uint64_t a1)
{
  result = sub_219599138(&qword_27CC0B9B0, type metadata accessor for MoreForYouTodayFeedGroup, &unk_219C8D8F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219598EE4(uint64_t a1)
{
  v2 = sub_219599138(&qword_27CC1C420, type metadata accessor for MoreForYouTodayFeedGroup, &unk_219C8D7DC);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219598F70(void *a1)
{
  a1[1] = sub_219599138(&qword_27CC1C420, type metadata accessor for MoreForYouTodayFeedGroup, &unk_219C8D7DC);
  a1[2] = sub_219599138(&qword_280EC0F78, type metadata accessor for MoreForYouTodayFeedGroup, &unk_219C8D8D0);
  result = sub_219599138(&qword_280EC0F80, type metadata accessor for MoreForYouTodayFeedGroup, &unk_219C8D8A8);
  a1[3] = result;
  return result;
}

unint64_t sub_21959901C()
{
  result = qword_280EC0FA0;
  if (!qword_280EC0FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0FA0);
  }

  return result;
}

uint64_t sub_219599070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2195990D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21959901C();
    v7 = a3(a1, &type metadata for MoreForYouTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219599138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219599194()
{
  result = qword_27CC1C428;
  if (!qword_27CC1C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C428);
  }

  return result;
}

unint64_t sub_2195991EC()
{
  result = qword_280EC0F90;
  if (!qword_280EC0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0F90);
  }

  return result;
}

unint64_t sub_219599244()
{
  result = qword_280EC0F98;
  if (!qword_280EC0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0F98);
  }

  return result;
}

uint64_t EngagementJourneyURLHandlerProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t EngagementJourneyURLHandlerProcessor.patterns.getter()
{
  sub_2195993B8(0);
  sub_219BE26D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BE2664();
  return v0;
}

void sub_2195993B8(uint64_t a1)
{
  if (!qword_280E8C098)
  {
    sub_219BE26D4();
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8C098);
    }
  }
}

void EngagementJourneyURLHandlerProcessor.processURL(for:)()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_219BE7174();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootViewController];

    if (v3)
    {
      v4 = sub_219BF6534();

      sub_219599584();
      sub_219BF6584();
      if (v9)
      {

        if (qword_27CC08628 != -1)
        {
          swift_once();
        }

        v5 = sub_219BE5434();
        __swift_project_value_buffer(v5, qword_27CCD8BA0);
        v6 = sub_219BE5414();
        v7 = sub_219BF6214();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_2186C1000, v6, v7, "EngagementJourneyURLHandlerProcessor: Dismissing presented AMSUIEngagementViewController...", v8, 2u);
          MEMORY[0x21CECF960](v8, -1, -1);
        }

        [v4 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

unint64_t sub_219599584()
{
  result = qword_280E8DCB8;
  if (!qword_280E8DCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DCB8);
  }

  return result;
}

uint64_t sub_2195995D0()
{
  sub_2195993B8(0);
  sub_219BE26D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BE2664();
  return v0;
}

unint64_t sub_2195996C0(uint64_t a1, uint64_t a2)
{
  result = qword_280E9BB08;
  if (!qword_280E9BB08)
  {
    type metadata accessor for EngagementJourneyURLHandlerProcessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BB08);
  }

  return result;
}

uint64_t sub_219599774(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v118 = a3;
  v119 = a2;
  v109 = sub_219BE6DF4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21959A85C(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v116 = *(v7 - 8);
  v117 = v7;
  MEMORY[0x28223BE20](v7);
  v115 = &v100 - v8;
  v9 = type metadata accessor for MagazineFeedGapLocation(0);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = (&v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = sub_219BF0BD4();
  v111 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MagazineFeedGroup(0);
  v110 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v126 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v100 - v15;
  v123 = type metadata accessor for MagazineFeedExpandResult.Result(0);
  MEMORY[0x28223BE20](v123);
  v18 = (&v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21959A85C(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v20 = v19;
  v112 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v124 = &v100 - v21;
  sub_218D51CC0(0);
  MEMORY[0x28223BE20](v22 - 8);
  v122 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v100 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v100 - v28;
  sub_21959A85C(0, &qword_280EE5930, MEMORY[0x277D6D710]);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v106 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v104 = &v100 - v35;
  MEMORY[0x28223BE20](v36);
  v120 = &v100 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v100 - v39;
  v121 = v4;
  v125 = v20;
  sub_219BEB244();
  v129 = *(v32 + 48);
  v130 = v32 + 48;
  if (v129(v29, 1, v31) == 1)
  {
    sub_2192234F0(v29, sub_218D51CC0);
LABEL_5:
    v45 = v116;
    v44 = v117;
    v46 = v115;
    (*(v116 + 104))(v115, *MEMORY[0x277D6DF80], v117);
    v119(v46);
    return (*(v45 + 8))(v46, v44);
  }

  v41 = *(v32 + 32);
  v114 = v32 + 32;
  v113 = v41;
  v41(v40, v29, v31);
  v42 = sub_218E66480(v40);
  if (v43)
  {
    (*(v32 + 8))(v40, v31);
    goto LABEL_5;
  }

  v127 = v42;
  v101 = v40;
  v128 = v31;
  (*(v112 + 16))(v124, a1, v125);
  v48 = type metadata accessor for MagazineFeedExpandResult(0);
  v49 = v121;
  sub_2192233EC(v121 + *(v48 + 20), v18, type metadata accessor for MagazineFeedExpandResult.Result);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v102 = a1;
  v103 = v32;
  if (EnumCaseMultiPayload == 1)
  {
    sub_218D52054(0);
    v51 = v126;
    sub_219223388(v18, v126);
    v52 = type metadata accessor for MagazineFeedExpandBlueprintModifier(0);
    __swift_project_boxed_opaque_existential_1((v49 + *(v52 + 20)), *(v49 + *(v52 + 20) + 24));
    v53 = *(v49 + *(v48 + 24));
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_21959A9EC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v54 = v131;
    sub_219BEE7A4();
    v55 = v122;
    sub_21997FEC4(v51, v53, v54, v122);
    (*(v111 + 8))(v54, v132);
    v56 = v128;
    if (v129(v55, 1, v128) == 1)
    {
      sub_2192234F0(v55, sub_218D51CC0);
      v57 = v124;
    }

    else
    {
      v80 = v106;
      v113(v106, v55, v56);
      v57 = v124;
      sub_219BEB1E4();
      (*(v103 + 8))(v80, v56);
    }

    sub_219BEEFF4();
    sub_219BEEFE4();
    v81 = sub_219BEEFC4();

    v82 = 0;
    if (v81)
    {
      v82 = sub_219BEDC74();
    }

    else
    {
      v134 = 0;
      v135 = 0;
    }

    v133 = v81;
    v136 = v82;
    v94 = v125;
    sub_219BEB2C4();

    sub_2192234F0(v126, type metadata accessor for MagazineFeedGroup);
    v95 = v57;
  }

  else
  {
    v58 = *v18;
    v59 = type metadata accessor for MagazineFeedServiceConfig(0);
    v60 = sub_21959A9EC(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v126 = sub_219BEF3D4();
    sub_219BEB204();
    v122 = v60;
    v123 = v59;
    v61 = sub_219BEF3E4();
    v62 = *(v61 + 16);
    if (v62)
    {
      v106 = v58;
      v63 = type metadata accessor for MagazineFeedExpandBlueprintModifier(0);
      v64 = v48;
      v65 = (v121 + *(v63 + 20));
      v66 = *(v121 + *(v64 + 24));
      v67 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v100 = v61;
      v68 = v61 + v67;
      v69 = v110[9];
      v70 = (v111 + 8);
      v111 = v32 + 8;
      v110 = v70;
      while (1)
      {
        sub_2192233EC(v68, v16, type metadata accessor for MagazineFeedGroup);
        __swift_project_boxed_opaque_existential_1(v65, v65[3]);
        v71 = v131;
        sub_219BEE7A4();
        sub_21997FEC4(v16, v66, v71, v26);
        sub_2192234F0(v16, type metadata accessor for MagazineFeedGroup);
        (*v70)(v71, v132);
        v72 = v128;
        if (v129(v26, 1, v128) == 1)
        {
          sub_2192234F0(v26, sub_218D51CC0);
        }

        else
        {
          v121 = v62;
          v73 = v69;
          v74 = v65;
          v75 = v16;
          v76 = v66;
          v77 = v120;
          v78 = v26;
          v113(v120, v26, v72);
          v79 = v127;
          sub_219BEB1F4();
          result = (*v111)(v77, v72);
          v127 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            __break(1u);
            return result;
          }

          v66 = v76;
          v16 = v75;
          v26 = v78;
          v65 = v74;
          v69 = v73;
          v62 = v121;
          v70 = v110;
        }

        v68 += v69;
        if (!--v62)
        {

          v58 = v106;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    v83 = v124;
    v84 = v128;
    if (!(v58 >> 62))
    {
      v85 = swift_allocObject();
      sub_21959A950(0, &qword_280E91AD0, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v85 + 16) = sub_219BEE874();
      v86 = v105;
      *v105 = v85;
      v87 = *MEMORY[0x277D33090];
      sub_21959A950(0, &qword_280E909E0, MEMORY[0x277D33098]);
      v89 = v88;
      v90 = *(v88 - 8);
      (*(v90 + 104))(v86, v87, v88);
      (*(v90 + 56))(v86, 0, 1, v89);
      v91 = v104;
      sub_218BB8230(v86, v104);
      sub_2192234F0(v86, type metadata accessor for MagazineFeedGapLocation);
      sub_219BEB1F4();
      (*(v103 + 8))(v91, v84);
    }

    sub_219BEEFF4();
    sub_219BEEFE4();
    v92 = sub_219BEEFC4();

    v93 = 0;
    if (v92)
    {
      v93 = sub_219BEDC74();
    }

    else
    {
      v134 = 0;
      v135 = 0;
    }

    v133 = v92;
    v136 = v93;
    v94 = v125;
    sub_219BEB2C4();

    v95 = v83;
  }

  v96 = v108;
  v97 = v107;
  v98 = v109;
  (*(v108 + 104))(v107, *MEMORY[0x277D6D868], v109);
  type metadata accessor for MagazineFeedSectionDescriptor(0);
  type metadata accessor for MagazineFeedModel(0);
  sub_21959A9EC(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  sub_21959A9EC(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  sub_21959A9EC(&unk_280EB0340, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C70);
  v99 = v115;
  sub_219BE85E4();
  (*(v96 + 8))(v97, v98);
  v119(v99);
  (*(v116 + 8))(v99, v117);
  (*(v112 + 8))(v95, v94);
  return (*(v103 + 8))(v101, v128);
}

uint64_t sub_21959A6CC(uint64_t a1)
{
  v2 = sub_21959A9EC(&unk_280E9D578, type metadata accessor for MagazineFeedExpandBlueprintModifier, &unk_219C8DB58);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t type metadata accessor for MagazineFeedExpandBlueprintModifier(uint64_t a1)
{
  result = qword_280E9D560;
  if (!qword_280E9D560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21959A85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_21959A9EC(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_21959A9EC(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21959A950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MagazineFeedServiceConfig(255);
    v7 = sub_21959A9EC(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21959A9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21959AA5C(uint64_t a1, uint64_t a2)
{
  sub_218D57484(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21959AAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D57484(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SportsManagementLayoutSectionDescriptor(uint64_t a1)
{
  result = qword_27CC1C430;
  if (!qword_27CC1C430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21959AB90(uint64_t a1)
{
  sub_218D57484(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for TitleViewLayoutAttributes(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

double sub_21959AC64()
{
  v1 = v0;
  v2 = type metadata accessor for TitleViewLayoutAttributes(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21959ADA8(v1, v8);
  v9 = *(v8 + 6);

  sub_218D57484(0);
  sub_218A52EFC(&v8[*(v10 + 48)], v5);
  Height = CGRectGetHeight(*&v5[*(v3 + 28)]);
  sub_218D57660(v5);
  return Height;
}

uint64_t sub_21959ADA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementLayoutSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21959AE1C()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

void sub_21959AE4C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21959AF24(uint64_t a1)
{
  v2 = sub_21959B2A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21959AF60(uint64_t a1)
{
  v2 = sub_21959B2A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21959AF9C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_21959B2FC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_21959B000(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = a2[5];
  sub_2186C6148(0, &qword_280E8DA00, 0x277D82BB8);
  if ((sub_219BF6DD4() & 1) == 0 || (sub_219BF6DD4() & 1) == 0 || (v2 != v4 || v3 != v5) && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  if (v9 == v6 && v10 == v8)
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t sub_21959B128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_21959B540(0, &qword_27CC1C440, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959B2A8();
  sub_219BF7B44();
  v15 = 0;
  sub_219BF77F4();
  if (!v5)
  {
    v14 = 1;
    sub_219BF77F4();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_21959B2A8()
{
  result = qword_27CC1C448;
  if (!qword_27CC1C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C448);
  }

  return result;
}

uint64_t sub_21959B2FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21959B540(0, &qword_27CC1C450, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959B2A8();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v10 = sub_219BF76F4();
  v12 = v11;
  v22 = v10;
  v23 = 1;
  v13 = sub_219BF76F4();
  v15 = v14;
  v21 = v13;
  sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);

  v20 = sub_219BF6D54();
  v16 = sub_219BF6D54();
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v20;
  a2[1] = v16;
  v18 = v21;
  a2[2] = v22;
  a2[3] = v12;
  a2[4] = v18;
  a2[5] = v15;
  return result;
}

void sub_21959B540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21959B2A8();
    v7 = a3(a1, &type metadata for ShortcutIconColor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21959B5B8()
{
  result = qword_27CC1C458;
  if (!qword_27CC1C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C458);
  }

  return result;
}

unint64_t sub_21959B610()
{
  result = qword_27CC1C460;
  if (!qword_27CC1C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C460);
  }

  return result;
}

unint64_t sub_21959B668()
{
  result = qword_27CC1C468;
  if (!qword_27CC1C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C468);
  }

  return result;
}

uint64_t sub_21959B6BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657461727563;
  }

  else
  {
    v3 = 0x6C616E6F73726570;
  }

  if (v2)
  {
    v4 = 0xEC00000064657A69;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657461727563;
  }

  else
  {
    v5 = 0x6C616E6F73726570;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC00000064657A69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21959B76C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21959B7F8(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21959B870(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_21959B8F8(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21959B958(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E6F73726570;
  if (*v1)
  {
    v2 = 0x64657461727563;
  }

  v3 = 0xEC00000064657A69;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21959BA50(void *a1, uint64_t a2, char a3)
{
  sub_21959E0DC(0, &qword_280E8C608, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21959E034();
  sub_219BF7B44();
  v14 = a2;
  v13[15] = 0;
  sub_2186E2394();
  sub_218B9F868(&unk_280E8E9D0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_219BF7834();
  if (!v3)
  {
    v13[14] = a3 & 1;
    v13[13] = 1;
    sub_21959E140();
    sub_219BF7834();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21959BC28()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_21959BC70(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D27800 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21959BD58(uint64_t a1)
{
  v2 = sub_21959E034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21959BD94(uint64_t a1)
{
  v2 = sub_21959E034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21959BDD0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_21959DDF8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_21959BE24(uint64_t a1, double a2)
{
  type metadata accessor for ChannelHeroResult();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0;
  qword_27CCD8D20 = result;
  return result;
}

uint64_t sub_21959BE60()
{

  return swift_deallocClassInstance();
}

void sub_21959BEBC(id *a1, unint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    v21 = *(a1 + *(type metadata accessor for ChannelHeroServiceRequest(0) + 24));
    sub_2186F20D4(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09EC0;
    v7 = [*a1 identifier];
    v8 = sub_219BF5414();
    v10 = v9;

    v11 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    v12 = sub_2186FC3BC();
    *(v6 + 64) = v12;
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    v13 = sub_219572AEC(v4, v5);
    *(v6 + 96) = v11;
    *(v6 + 104) = v12;
    *(v6 + 72) = v13;
    *(v6 + 80) = v14;
    v15 = sub_219BF6214();
    sub_219BE5314("Channel hero selection channel %{public}@ attempting strategy %{public}@", 72, 2, &dword_2186C1000, v21, v15, v6);

    if (v5 < 0)
    {
      sub_21959C92C(a1, a2, v5 & 1);
    }

    else
    {
      sub_21959C094(a1, a2, v4, v5 & 1);
    }
  }

  else
  {
    v16 = [*a1 identifier];
    v17 = sub_219BF5414();
    v19 = v18;

    sub_21959DCB8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    swift_willThrow();
  }
}

void sub_21959C094(id *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v76 = a2;
  v11 = [objc_opt_self() screens];
  sub_2186C6148(0, &unk_280E8D9A0, 0x277D759A0);
  v12 = sub_219BF5924();

  if (v12 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v77 = v7;
    v80 = a1;
    v82 = v6;
    v83 = a3;
    if (!i)
    {

      v17 = 1.0;
      goto LABEL_11;
    }

    v14 = v12 & 0xC000000000000001;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x21CECE0F0](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_69;
      }

      v15 = *(v12 + 32);
    }

    v11 = v15;
    LODWORD(v81) = a4;
    v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    if (i == 1)
    {
      break;
    }

    a4 = v12 & 0xFFFFFFFFFFFFFF8;
    a1 = 1;
    while (1)
    {
      if (v14)
      {
        v43 = MEMORY[0x21CECE0F0](a1, v12);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        if (a1 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v43 = *(v12 + 8 * a1 + 32);
      }

      v6 = v43;
      a3 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      [v11 scale];
      v45 = v44;
      [v6 scale];
      if (v46 < v45)
      {

        v11 = v6;
        a1 = (a1 + 1);
        if (a3 == i)
        {
          goto LABEL_9;
        }
      }

      else
      {

        a1 = (a1 + 1);
        if (a3 == i)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_8:
  v6 = v11;
LABEL_9:

  [v6 scale];
  v17 = v16;

  v7 = v77;
  a1 = v80;
  a4 = v81;
LABEL_11:
  v18 = type metadata accessor for ChannelHeroServiceRequest(0);
  v19 = *(a1 + v18[6]);
  sub_2186F20D4(0);
  v79 = v20;
  v6 = swift_allocObject();
  v75 = xmmword_219C0B8C0;
  *(v6 + 16) = xmmword_219C0B8C0;
  v21 = *(a1 + *(type metadata accessor for ChannelSectionsGroupModel(0) + 20) + 48);
  a3 = a4;
  if (v21 >> 62)
  {
    v22 = sub_219BF7214();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D83B88];
  v24 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v24;
  *(v6 + 32) = v22;
  *(v6 + 96) = MEMORY[0x277D85048];
  *(v6 + 104) = sub_21959DD0C();
  *(v6 + 72) = v17;
  v25 = (*(a1 + v18[10]))[2];
  *(v6 + 136) = v23;
  *(v6 + 144) = v24;
  *(v6 + 112) = v25;
  sub_219BF6214();
  v78 = v19;
  sub_219BE5314("Channel sections hero running personalized hero selection candidates=%ld, scale=%f, consumedHeadlineIdentifiers=%ld", v73, v74, v75);

  MEMORY[0x28223BE20](v26);
  v72[2] = a1;

  v27 = *&v82;
  v28 = sub_2195EB294(sub_21959DD60, v72, v21);
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v29 = sub_219BA81E8(v28, v83, a1 + v18[8]);

  v30 = a3;
  v31 = sub_21959CF28(a1, v29, a3 & 1);

  v11 = (v31 >> 62);
  v81 = v31;
  if (v31 >> 62)
  {
    v32 = sub_219BF7214();
    if (v32)
    {
      goto LABEL_15;
    }

LABEL_63:

    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_219C09EC0;
    v62 = [*a1 identifier];
    v63 = sub_219BF5414();
    v65 = v64;

    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = sub_2186FC3BC();
    *(v61 + 32) = v63;
    *(v61 + 40) = v65;
    v66 = MEMORY[0x277D839F0];
    *(v61 + 96) = MEMORY[0x277D839B0];
    *(v61 + 104) = v66;
    *(v61 + 72) = v30 & 1;
    v67 = sub_219BF6214();
    sub_219BE5314("Channel sections hero failed to get hero from personalized articles, channel=%{public}@ allowedPaywalledArticles=%d. Trying next strategy.", 138, 2, &dword_2186C1000, v78, v67, v61);

    v68 = v76;
    v69 = *(v76 + 16);
    if (v69)
    {
      sub_218B66BCC(v76, v76 + 32, 1, (2 * v69) | 1);
      v68 = v70;
    }

    else
    {
    }

    v59 = a1;
    v60 = v68;
    goto LABEL_66;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_63;
  }

LABEL_15:
  v73 = v31 >> 62;
  v74 = v27;
  a4 = 0;
  v12 = v81;
  v84 = MEMORY[0x277D84F90];
  v82 = v81 & 0xC000000000000001;
  v83 = v81 & 0xFFFFFFFFFFFFFF8;
  a1 = &selRef__setPreferredLayout_;
  while (v82)
  {
    v11 = MEMORY[0x21CECE0F0](a4, v12);
    v6 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      goto LABEL_28;
    }

LABEL_22:
    v33 = FCThumbnailForHeadlineMinimumSize();
    a3 = 0x4092C00000000000;
    if (v33)
    {
      v34 = v33;
      v7 = &selRef__setPreferredLayout_;
      [v33 thumbnailSize];
      if (v35 < 1200.0)
      {
      }

      else
      {
        [v34 &selRef_todayPerformanceAlertSpinnerThreshold];
        v37 = v36;

        if (v37 >= 800.0)
        {
          sub_219BF73D4();
          sub_219BF7414();
          v12 = v81;
          sub_219BF7424();
          sub_219BF73E4();
          goto LABEL_18;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_18:
    ++a4;
    if (v6 == v32)
    {
      goto LABEL_29;
    }
  }

  if (a4 >= *(v83 + 16))
  {
    __break(1u);
    goto LABEL_57;
  }

  v11 = *(v12 + 8 * a4 + 32);
  swift_unknownObjectRetain();
  v6 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v14 = v84;
  v11 = swift_allocObject();
  *(v11 + 1) = v75;
  i = *v80;
  v38 = [*v80 identifier];
  v39 = sub_219BF5414();
  v41 = v40;

  *(v11 + 7) = MEMORY[0x277D837D0];
  a4 = sub_2186FC3BC();
  *(v11 + 8) = a4;
  *(v11 + 4) = v39;
  *(v11 + 5) = v41;
  if (v73)
  {
    v42 = sub_219BF7214();
  }

  else
  {
    v42 = *(v83 + 16);
  }

  a3 = MEMORY[0x277D83B88];
  a1 = MEMORY[0x277D83C10];

  *(v11 + 12) = a3;
  *(v11 + 13) = a1;
  *(v11 + 9) = v42;
  LODWORD(v7) = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v7 != 1)
  {
    v47 = *(v14 + 16);
    goto LABEL_49;
  }

LABEL_69:
  v47 = sub_219BF7214();
LABEL_49:
  v48 = v78;
  *(v11 + 17) = a3;
  *(v11 + 18) = a1;
  *(v11 + 14) = v47;
  v49 = sub_219BF6214();
  sub_219BE5314("Hero selection strategy channelID=%{public}@ filtered %ld accessible headlines to %ld high quality thumbnail headlines", 118, 2, &dword_2186C1000, v48, v49, v11);

  if (v7)
  {
    if (sub_219BF7214())
    {
      goto LABEL_51;
    }

LABEL_53:

    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_219C09BA0;
    v52 = [i identifier];
    v53 = sub_219BF5414();
    v55 = v54;

    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = a4;
    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    v56 = sub_219BF6214();
    sub_219BE5314("Failed to get hero from personalized articles channelID=%{public}@. None of the articles have quality thumbnails. Trying next strategy.", 135, 2, &dword_2186C1000, v48, v56, v51);

    v57 = v76;
    v58 = *(v76 + 16);
    if (v58)
    {
      sub_218B66BCC(v76, v76 + 32, 1, (2 * v58) | 1);
      v57 = v71;
    }

    else
    {
    }

    v59 = v80;
    v60 = v57;
LABEL_66:
    sub_21959BEBC(v59, v60);
  }

  else
  {
    if (!*(v14 + 16))
    {
      goto LABEL_53;
    }

LABEL_51:
    type metadata accessor for ChannelHeroResult();
    v50 = swift_allocObject();
    *(v50 + 16) = v14;
    *(v50 + 24) = 0;
  }
}

uint64_t sub_21959C92C(id *a1, unint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  v53 = type metadata accessor for ChannelHeroServiceRequest(0);
  v6 = *(a1 + *(v53 + 20));
  if (v6 >> 62)
  {
LABEL_38:
    v49 = v6;
    v7 = sub_219BF7214();
    v6 = v49;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v54 = a1;
  if (v7)
  {
    v9 = sub_21959CF28(a1, v6, v3 & 1);
    v10 = v9;
    v56 = MEMORY[0x277D84F90];
    v52 = v9 >> 62;
    if (v9 >> 62)
    {
      v11 = sub_219BF7214();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = a2;
    if (v11)
    {
      a2 = 0;
      v3 = v10 & 0xC000000000000001;
      v55 = v11;
      while (1)
      {
        if (v3)
        {
          v12 = MEMORY[0x21CECE0F0](a2, v10);
          v13 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v14 = v56;
            a1 = v54;
            v8 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
            goto LABEL_21;
          }
        }

        else
        {
          if (a2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_38;
          }

          v12 = *(v10 + 8 * a2 + 32);
          swift_unknownObjectRetain();
          v13 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_17;
          }
        }

        if ([v12 hasThumbnail])
        {
          sub_219BF73D4();
          a1 = (v10 & 0xC000000000000001);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v11 = v55;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++a2;
        if (v13 == v11)
        {
          goto LABEL_18;
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_21:
    v17 = *(a1 + *(v53 + 24));
    sub_2186F20D4(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C0EE20;
    v15 = *a1;
    v19 = [*a1 v8[278]];
    v20 = sub_219BF5414();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_2186FC3BC();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    v23 = v17;
    if (v52)
    {
      v24 = sub_219BF7214();
    }

    else
    {
      v24 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = MEMORY[0x277D83B88];
    v26 = MEMORY[0x277D83C10];
    *(v18 + 96) = MEMORY[0x277D83B88];
    *(v18 + 104) = v26;
    *(v18 + 72) = v24;
    v27 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
    if (v27)
    {
      v28 = sub_219BF7214();
    }

    else
    {
      v28 = *(v14 + 16);
    }

    *(v18 + 136) = v25;
    *(v18 + 144) = v26;
    *(v18 + 112) = v28;
    sub_2187E7248(0);
    *(v18 + 176) = v29;
    *(v18 + 184) = sub_21959DDA0();
    *(v18 + 152) = v14;

    v30 = sub_219BF6214();
    sub_219BE5314("Hero selection strategy channelID=%{public}@ filtered %ld to %ld headlines with thumbnails, keeping: %@", 103, 2, &dword_2186C1000, v23, v30, v18);

    if (v27)
    {
      a1 = v54;
      if (sub_219BF7214())
      {
LABEL_31:
        type metadata accessor for ChannelHeroResult();
        result = swift_allocObject();
        *(result + 16) = v14;
        *(result + 24) = 1;
        return result;
      }
    }

    else
    {
      a1 = v54;
      if (*(v14 + 16))
      {
        goto LABEL_31;
      }
    }

    v16 = 4;
    a2 = v51;
  }

  else
  {
    v15 = *a1;
    v16 = 1;
  }

  v32 = [v15 identifier];
  v33 = sub_219BF5414();
  v35 = v34;

  sub_21959DCB8();
  v36 = swift_allocError();
  *v37 = v33;
  *(v37 + 8) = v35;
  *(v37 + 16) = v16;
  swift_willThrow();
  v38 = *(a1 + *(v53 + 24));
  sub_2186F20D4(0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09EC0;
  v40 = [v15 &_OBJC_LABEL_PROTOCOL___FCPrivateChannelMembershipObserving];
  v41 = sub_219BF5414();
  v43 = v42;

  v44 = MEMORY[0x277D837D0];
  *(v39 + 56) = MEMORY[0x277D837D0];
  v45 = sub_2186FC3BC();
  *(v39 + 64) = v45;
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v39 + 96) = v44;
  *(v39 + 104) = v45;
  *(v39 + 72) = 0;
  *(v39 + 80) = 0xE000000000000000;
  v46 = sub_219BF6214();
  sub_219BE5314("Failed to get hero from promoted articles channel=%{public}@. Trying next strategy. error=%{public}@", 100, 2, &dword_2186C1000, v38, v46, v39);

  v47 = *(a2 + 16);
  if (v47)
  {
    sub_218B66BCC(a2, a2 + 32, 1, (2 * v47) | 1);
    a2 = v50;
  }

  else
  {
  }

  v48 = sub_21959BEBC(v54, a2);

  return v48;
}

BOOL sub_21959CE8C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ChannelHeroServiceRequest(0) + 40));
  v4 = [v2 identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  LOBYTE(v3) = sub_2188537B8(v5, v7, v3);

  return (v3 & 1) == 0;
}

unint64_t sub_21959CF28(id *a1, unint64_t a2, char a3)
{
  v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v8 = MEMORY[0x277D837D0];
  if (a3)
  {
LABEL_32:
    v29 = *(a1 + *(type metadata accessor for ChannelHeroServiceRequest(0) + 24));
    sub_2186F20D4(0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C0B8C0;
    v31 = [*a1 v7[278]];
    v32 = sub_219BF5414();
    v34 = v33;

    *(v30 + 56) = v8;
    *(v30 + 64) = sub_2186FC3BC();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    if (a2 >> 62)
    {
      v35 = sub_219BF7214();
    }

    else
    {
      v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = MEMORY[0x277D83C10];
    *(v30 + 96) = MEMORY[0x277D83B88];
    *(v30 + 104) = v36;
    *(v30 + 72) = v35;
    v37 = MEMORY[0x277D839F0];
    *(v30 + 136) = MEMORY[0x277D839B0];
    *(v30 + 144) = v37;
    *(v30 + 112) = a3 & 1;
    v38 = sub_219BF6214();
    sub_219BE5314("Channel hero selection channelID=%{public}@ allowed all %ld headlines, allowPaywalledArticles=%d", 96, 2, &dword_2186C1000, v29, v38, v30);

    return a2;
  }

  v9 = *(v3 + 56);
  v10 = *a1;
  swift_unknownObjectRetain();
  v11 = [v9 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v12 = [v10 asSection];
    if (!v12 || (v13 = [v12 parentID], swift_unknownObjectRelease(), !v13))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [v10 identifier];
  }

  v14 = sub_219BF5414();
  v16 = v15;

  v17 = [v11 purchasedTagIDs];
  v18 = sub_219BF5D44();

  LOBYTE(v17) = sub_2188537B8(v14, v16, v18);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v17)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D837D0];
    v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    goto LABEL_32;
  }

LABEL_9:
  v19 = [objc_msgSend(v9 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v19, v19 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v59 = v57;
  v60 = v58;
  if (!*(&v58 + 1))
  {
    sub_218806FD0(&v59);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v20 = 0;
    v22 = 0;
    goto LABEL_18;
  }

  v20 = v56;
  v21 = [v56 integerValue];
  if (v21 == -1)
  {

    v8 = MEMORY[0x277D837D0];
    goto LABEL_29;
  }

  v22 = v21;
LABEL_18:
  if (objc_getAssociatedObject(v19, ~v22))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v59 = v57;
  v60 = v58;
  if (!*(&v58 + 1))
  {
    sub_218806FD0(&v59);
LABEL_26:

    v8 = MEMORY[0x277D837D0];
    if (v22)
    {
      goto LABEL_29;
    }

LABEL_27:
    v25 = swift_unknownObjectRelease();
    goto LABEL_35;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v23 = v56;
  v24 = [v23 integerValue];

  v8 = MEMORY[0x277D837D0];
  if (((v24 ^ v22) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v26 = [objc_msgSend(v9 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v27 = [v10 identifier];
  if (!v27)
  {
    sub_219BF5414();
    v27 = sub_219BF53D4();
  }

  v28 = [v26 containsTagID_];

  v25 = swift_unknownObjectRelease();
  if (v28)
  {
    goto LABEL_32;
  }

LABEL_35:
  MEMORY[0x28223BE20](v25);
  v55[2] = a1;
  v55[3] = v39;

  v40 = sub_2195EB294(sub_21959DD80, v55, a2);
  v41 = *(a1 + *(type metadata accessor for ChannelHeroServiceRequest(0) + 24));
  sub_2186F20D4(0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_219C0EE20;
  v43 = [v10 identifier];
  v44 = sub_219BF5414();
  v46 = v45;

  *(v42 + 56) = v8;
  *(v42 + 64) = sub_2186FC3BC();
  *(v42 + 32) = v44;
  *(v42 + 40) = v46;
  if (a2 >> 62)
  {
    v47 = sub_219BF7214();
  }

  else
  {
    v47 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = MEMORY[0x277D83B88];
  v49 = MEMORY[0x277D83C10];
  *(v42 + 96) = MEMORY[0x277D83B88];
  *(v42 + 104) = v49;
  *(v42 + 72) = v47;
  if (v40 >> 62)
  {
    v50 = sub_219BF7214();
  }

  else
  {
    v50 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v42 + 136) = v48;
  *(v42 + 144) = v49;
  v51 = MEMORY[0x277D839B0];
  *(v42 + 112) = v50;
  v52 = MEMORY[0x277D839F0];
  *(v42 + 176) = v51;
  *(v42 + 184) = v52;
  *(v42 + 152) = 0;
  v53 = sub_219BF6214();
  sub_219BE5314("Channel hero selection channelID=%{public}@ filtered %ld headlines to %ld headlines, allowPaywalledArticles=%d", 110, 2, &dword_2186C1000, v41, v53, v42);

  return v40;
}