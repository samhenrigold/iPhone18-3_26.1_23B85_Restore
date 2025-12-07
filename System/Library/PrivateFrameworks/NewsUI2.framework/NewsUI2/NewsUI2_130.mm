uint64_t sub_21952DA90@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_219BF04A4();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v6 = v5;
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0F34();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v13 = v12;
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v1, v18, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v26 = v31;
      (*(v31 + 32))(v15, v18, v13);
      sub_219BF07D4();
      sub_219BF0F04();
      (*(v32 + 8))(v11, v9);
      return (*(v26 + 8))(v15, v13);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v20 = v33;
      (*(v33 + 32))(v8, v18, v6);
      sub_219BF07D4();
      sub_219BF0454();
      (*(v34 + 8))(v4, v35);
      return (*(v20 + 8))(v8, v6);
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_8:
    v25 = type metadata accessor for AudioFeedModel;
LABEL_11:
    v23 = v25;
    v24 = v18;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_2186FB36C(0);
    v28 = *(v27 + 48);
    v29 = sub_219BF1584();
    (*(*(v29 - 8) + 8))(&v18[v28], v29);
    v25 = type metadata accessor for AudioFeedGapLocation;
    goto LABEL_11;
  }

  sub_2186F151C(0);
  v23 = type metadata accessor for AudioFeedGapLocation;
  v24 = &v18[*(v22 + 48)];
LABEL_12:
  sub_219531104(v24, v23);
  v30 = sub_219BEAF84();
  return (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
}

void *sub_21952DF24()
{
  v59 = sub_219BF04A4();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v61 = *(v2 - 1);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ED9BA0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE6364();
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  MEMORY[0x28223BE20](v6);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v52 - v10;
  v58 = sub_219BF2B34();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0F34();
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v17 = v16;
  v18 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v0, v23, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v32 = type metadata accessor for AudioFeedGapLocation;
        v33 = &v23[*(v31 + 48)];
LABEL_13:
        sub_219531104(v33, v32);
        return MEMORY[0x277D84F90];
      }

      sub_2186FB36C(0);
      v46 = *(v45 + 48);
      v47 = sub_219BF1584();
      (*(*(v47 - 8) + 8))(&v23[v46], v47);
      v34 = type metadata accessor for AudioFeedGapLocation;
LABEL_12:
      v32 = v34;
      v33 = v23;
      goto LABEL_13;
    }

LABEL_8:
    v34 = type metadata accessor for AudioFeedModel;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v60;
      v25 = v61;
      v27 = v62;
      (*(v61 + 32))(v60, v23, v62);
      v28 = v55;
      sub_219BF07D4();
      sub_219BF0404();
      (*(v57 + 8))(v28, v59);
      sub_219531164(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_219C09EC0;
      sub_219BE6334();
      sub_219BE6324();
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v27);
      return v29;
    }

    goto LABEL_8;
  }

  v61 = v18;
  (*(v18 + 32))(v20, v23, v17);
  v59 = v20;
  v60 = v17;
  sub_219BF07D4();
  sub_219BF0F14();
  (*(v54 + 8))(v15, v13);
  sub_219531164(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  v35 = v65;
  v36 = *(v65 + 72);
  v37 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v57 = 2 * v36;
  v55 = (v37 + 3 * v36);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C0B8C0;
  v62 = v38;
  swift_unknownObjectRetain();
  sub_21952CB7C();
  sub_219BF2B14();
  sub_219BE62F4();
  v39 = *(v56 + 8);
  v40 = v58;
  v39(v12, v58);
  swift_unknownObjectRetain();
  sub_21952CB7C();
  sub_219BF2B14();
  v41 = v35;
  sub_219BE6344();
  v39(v12, v40);
  sub_219BE6314();
  v42 = v63;
  sub_219BE62E4();
  v43 = *(v35 + 48);
  v44 = v64;
  if (v43(v42, 1, v64) == 1)
  {
    (*(v61 + 8))(v59, v60);
    swift_unknownObjectRelease();
    sub_219531104(v42, sub_218ED9BA0);
    return v62;
  }

  else
  {
    v48 = *(v41 + 32);
    v49 = v52;
    v48(v52, v42, v44);
    v50 = v53;
    (*(v41 + 16))(v53, v49, v44);
    v51 = sub_2191F976C(1, 4, 1, v62);
    swift_unknownObjectRelease();
    (*(v41 + 8))(v49, v44);
    (*(v61 + 8))(v59, v60);
    v51[2] = 4;
    v48(&v55[v51], v50, v44);
    return v51;
  }
}

uint64_t sub_21952E7EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v2, v6, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = type metadata accessor for AudioFeedModel;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v10 = type metadata accessor for AudioFeedGapLocation;
        v11 = &v6[*(v9 + 48)];
LABEL_9:
        sub_219531104(v11, v10);
        v8 = MEMORY[0x277D6D5D8];
        goto LABEL_10;
      }

      sub_2186FB36C(0);
      v14 = *(v13 + 48);
      v15 = sub_219BF1584();
      (*(*(v15 - 8) + 8))(&v6[v14], v15);
      v12 = type metadata accessor for AudioFeedGapLocation;
    }

    v10 = v12;
    v11 = v6;
    goto LABEL_9;
  }

  sub_219531104(v6, type metadata accessor for AudioFeedModel);
  v8 = MEMORY[0x277D6D5E0];
LABEL_10:
  v16 = *v8;
  v17 = sub_219BE63D4();
  return (*(*(v17 - 8) + 104))(a1, v16, v17);
}

uint64_t sub_21952E9C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v2, v6, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = type metadata accessor for AudioFeedModel;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v10 = type metadata accessor for AudioFeedGapLocation;
        v11 = &v6[*(v9 + 48)];
LABEL_9:
        sub_219531104(v11, v10);
        v8 = MEMORY[0x277D6D580];
        goto LABEL_10;
      }

      sub_2186FB36C(0);
      v14 = *(v13 + 48);
      v15 = sub_219BF1584();
      (*(*(v15 - 8) + 8))(&v6[v14], v15);
      v12 = type metadata accessor for AudioFeedGapLocation;
    }

    v10 = v12;
    v11 = v6;
    goto LABEL_9;
  }

  sub_219531104(v6, type metadata accessor for AudioFeedModel);
  v8 = MEMORY[0x277D6D588];
LABEL_10:
  v16 = *v8;
  v17 = sub_219BE6244();
  return (*(*(v17 - 8) + 104))(a1, v16, v17);
}

uint64_t sub_21952EB9C()
{
  v1 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v0, v3, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    v7 = type metadata accessor for AudioFeedModel;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {

      sub_2186F151C(0);
      sub_219531104(&v3[*(v5 + 48)], type metadata accessor for AudioFeedGapLocation);
      return 1;
    }

    sub_2186FB36C(0);
    v9 = *(v8 + 48);
    v10 = sub_219BF1584();
    (*(*(v10 - 8) + 8))(&v3[v9], v10);
    v7 = type metadata accessor for AudioFeedGapLocation;
  }

  sub_219531104(v3, v7);
  return 0;
}

uint64_t sub_21952ED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v58 = a1;
  sub_2186EB018(0);
  v55 = *(v18 - 8);
  v56 = v18;
  MEMORY[0x28223BE20](v18);
  v54 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v66 = a9;
  v23 = sub_219BE57D4();
  v57 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  sub_2186EAB88(0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v53 - v32;
  v34 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v34);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v10, v36, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v28 + 32))(v33, v36, v27);
      (*(v28 + 16))(v30, v33, v27);
      (*(v57 + 16))(v25, v58, v23);
      WitnessTable = swift_getWitnessTable();
      v42 = sub_2198765DC(v30, v25, MEMORY[0x277D84FA0], v23, WitnessTable, v48);
      (*(v28 + 8))(v33, v27);
      return v42;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v39 = v55;
      v38 = v56;
      (*(v55 + 32))(v22, v36, v56);
      v40 = v54;
      (*(v39 + 16))(v54, v22, v38);
      (*(v57 + 16))(v25, v58, v23);
      v41 = swift_getWitnessTable();
      v42 = sub_2198765A8(v40, v25, v23, v41);
      (*(v39 + 8))(v22, v38);
      return v42;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_8:
    v46 = type metadata accessor for AudioFeedModel;
LABEL_12:
    v44 = v46;
    v45 = v36;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_2186FB36C(0);
    v51 = *(v50 + 48);
    v52 = sub_219BF1584();
    (*(*(v52 - 8) + 8))(&v36[v51], v52);
    v46 = type metadata accessor for AudioFeedGapLocation;
    goto LABEL_12;
  }

  sub_2186F151C(0);
  v44 = type metadata accessor for AudioFeedGapLocation;
  v45 = &v36[*(v43 + 48)];
LABEL_13:
  sub_219531104(v45, v44);
  return 0;
}

uint64_t sub_21952F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v55 = a4;
  v56 = a8;
  v57 = a1;
  v58 = a2;
  v59 = a3;
  v60 = a6;
  v61 = a7;
  v16 = sub_219BEB334();
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v10, v21, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v30 = type metadata accessor for AudioFeedGapLocation;
        v31 = &v21[*(v29 + 48)];
LABEL_11:
        sub_219531104(v31, v30);
        return 0;
      }

      sub_2186FB36C(0);
      v34 = *(v33 + 48);
      v35 = sub_219BF1584();
      (*(*(v35 - 8) + 8))(&v21[v34], v35);
      v32 = type metadata accessor for AudioFeedGapLocation;
LABEL_10:
      v30 = v32;
      v31 = v21;
      goto LABEL_11;
    }

LABEL_8:
    v32 = type metadata accessor for AudioFeedModel;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload >= 2)
  {
    goto LABEL_8;
  }

  v51 = a5;
  sub_219531104(v21, type metadata accessor for AudioFeedModel);
  sub_219531164(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_219C09BA0;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C0D560;
  v24 = sub_219BE6684();
  v25 = v51;
  v26 = sub_219BE6654();
  if (v26)
  {
    v27 = MEMORY[0x277D6D630];
    v28 = v24;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
  }

  *(v23 + 32) = v26;
  *(v23 + 56) = v28;
  *(v23 + 64) = v27;
  v37 = sub_219BE6634();
  if (v37)
  {
    v38 = MEMORY[0x277D6D630];
    v39 = v24;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    *(v23 + 80) = 0;
    *(v23 + 88) = 0;
  }

  *(v23 + 72) = v37;
  *(v23 + 96) = v39;
  *(v23 + 104) = v38;
  v40 = sub_219BE6614();
  if (v40)
  {
    v41 = MEMORY[0x277D6D630];
    v42 = v24;
  }

  else
  {
    v42 = 0;
    v41 = 0;
    *(v23 + 120) = 0;
    *(v23 + 128) = 0;
  }

  *(v23 + 112) = v40;
  *(v23 + 136) = v42;
  *(v23 + 144) = v41;
  v43 = sub_219BE6664();
  if (v43)
  {
    v44 = MEMORY[0x277D6D630];
    v45 = v24;
  }

  else
  {
    v45 = 0;
    v44 = 0;
    *(v23 + 160) = 0;
    *(v23 + 168) = 0;
  }

  *(v23 + 152) = v43;
  *(v23 + 176) = v45;
  *(v23 + 184) = v44;
  v58 = a2;
  v59 = a3;
  v60 = v55;
  v61 = v25;
  v62 = a6;
  v63 = a7;
  v64 = v56;
  v65 = a9;
  sub_219BE57D4();
  sub_219BE57C4();
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2186EFD84(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
  v46 = v54;
  v47 = sub_219BEB284();
  (*(v53 + 8))(v18, v46);
  sub_219BE57B4();
  v48 = sub_219BE6624();

  sub_218ED1AFC(v47);
  if (v48)
  {
    v49 = MEMORY[0x277D6D630];
  }

  else
  {
    v24 = 0;
    v49 = 0;
    *(v23 + 200) = 0;
    *(v23 + 208) = 0;
  }

  *(v23 + 192) = v48;
  *(v23 + 216) = v24;
  *(v23 + 224) = v49;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  return sub_219BE59D4();
}

uint64_t sub_21952F768@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_219BF2B34();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF0F34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v1, v16, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v19 = type metadata accessor for AudioFeedGapLocation;
        v20 = &v16[*(v18 + 48)];
LABEL_12:
        sub_219531104(v20, v19);
LABEL_13:
        v34 = 1;
        v33 = v47;
        goto LABEL_14;
      }

      sub_2186FB36C(0);
      v36 = *(v35 + 48);
      v37 = sub_219BF1584();
      (*(*(v37 - 8) + 8))(&v16[v36], v37);
      v21 = type metadata accessor for AudioFeedGapLocation;
LABEL_11:
      v19 = v21;
      v20 = v16;
      goto LABEL_12;
    }

LABEL_7:
    v21 = type metadata accessor for AudioFeedModel;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  v44 = v1;
  (*(v11 + 32))(v13, v16, v10);
  sub_219BF07D4();
  v22 = sub_219BF0F24();
  v23 = *(v6 + 8);
  v23(v8, v5);
  if ((v22 & 1) == 0)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_13;
  }

  sub_219BF07D4();
  v24 = sub_219BF0F14();
  v23(v8, v5);
  sub_219531164(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
  sub_218C3F224(0);
  v26 = *(v25 - 8);
  v42 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v43 = v28;
  *(v28 + 16) = xmmword_219C09EC0;
  v29 = v28 + v27;
  v40 = v24;
  swift_unknownObjectRetain();
  sub_21952CB7C();
  sub_219BF2B14();
  sub_219BE5C34();
  v41 = *(v45 + 8);
  v45 = v11;
  v41(v4, v46);
  v30 = sub_219BE5C44();
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 0, 1, v30);
  swift_unknownObjectRetain();
  sub_21952CB7C();
  sub_219BF2B14();
  v32 = v42;
  sub_219BE5C04();
  v41(v4, v46);
  v31(v29 + v32, 0, 1, v30);
  v33 = v47;
  sub_219BE68A4();
  swift_unknownObjectRelease();
  (*(v45 + 8))(v13, v10);
  v34 = 0;
LABEL_14:
  v38 = sub_219BE6894();
  return (*(*(v38 - 8) + 56))(v33, v34, 1, v38);
}

uint64_t sub_21952FD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = v10;
  v104 = a8;
  v102 = a5;
  v101 = a4;
  v107 = a1;
  v115 = a9;
  v124 = *MEMORY[0x277D85DE8];
  v86 = sub_219BE5C44();
  v111 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for AudioFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v87);
  v88 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a2;
  v117 = a3;
  v118 = a6;
  v119 = a7;
  v106 = sub_219BE6A54();
  v90 = sub_219BF6FB4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v105 = &v80 - v18;
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v92 = v22;
  v91 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BDC104();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a2;
  v116 = a2;
  v117 = a3;
  v103 = a6;
  v118 = a6;
  v119 = a7;
  v98 = sub_219BEB334();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v80 - v26;
  v27 = sub_219BE5FE4();
  v109 = *(v27 - 8);
  v110 = v27;
  MEMORY[0x28223BE20](v27);
  v108 = &v80 - v28;
  v29 = sub_219BF0F34();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v113 = *(v33 - 8);
  v114 = v33;
  MEMORY[0x28223BE20](v33);
  v112 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v11;
  sub_219531B60(v11, v37, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v39 = v115;
      v40 = type metadata accessor for AudioFeedModel;
LABEL_12:
      v42 = v40;
      v43 = v37;
      goto LABEL_13;
    }

    v84 = v21;
    v83 = v24;
    v45 = v112;
    v44 = v113;
    v46 = v114;
    (*(v113 + 32))(v112, v37, v114);
    sub_219BF07D4();
    v47 = sub_219BF0F24();
    v48 = *(v30 + 8);
    v48(v32, v29);
    if (v47)
    {
      sub_219BF07D4();
      v49 = sub_219BF0F14();
      v48(v32, v29);
      sub_219531164(0, &qword_27CC17388, MEMORY[0x277D6D330], MEMORY[0x277D84560]);
      v50 = v111;
      v51 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v81 = *(v111 + 72);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_219C09BA0;
      sub_21952CB7C();
      v82 = v52;
      v80 = v51;
      v99 = v49;
      sub_219BE5C24();

      v116 = v100;
      v117 = a3;
      v118 = v101;
      v119 = v102;
      v120 = v103;
      v121 = a7;
      v122 = v104;
      v123 = a10;
      sub_219BE84C4();
      v53 = v94;
      sub_219BE84A4();
      v54 = v93;
      sub_219BE84B4();
      v55 = v108;
      v56 = v98;
      sub_219BEB344();
      (*(v95 + 8))(v54, v96);
      v57 = *(v97 + 8);
      v57(v53, v56);
      sub_219BE84A4();
      v58 = v110;
      sub_219BE5F84();
      v59 = v105;
      sub_219BEB244();

      v57(v53, v56);
      if ((*(*(v106 - 8) + 48))(v59, 1, v106) == 1)
      {
        (*(v89 + 8))(v59, v90);
        v60 = v84;
        (*(v91 + 56))(v84, 1, 1, v92);
      }

      else
      {
        v60 = v84;
        v65 = v92;
        v66 = swift_dynamicCast();
        v67 = v91;
        (*(v91 + 56))(v60, v66 ^ 1u, 1, v65);
        if ((*(v67 + 48))(v60, 1, v65) != 1)
        {
          (*(v67 + 32))(v83, v60, v65);
          v60 = v88;
          sub_219BE6934();
          v76 = swift_getEnumCaseMultiPayload();
          if (v76 > 2)
          {
            v69 = v114;
            v39 = v115;
            v70 = v109;
            v72 = v112;
            v71 = v113;
            if (v76 == 3)
            {
              (*(v67 + 8))(v83, v65);
              sub_219531104(v60, type metadata accessor for AudioFeedSectionDescriptor);
            }

            else
            {
              (*(v67 + 8))(v83, v65);
            }

            goto LABEL_19;
          }

          if (v76 < 2)
          {
            sub_219531104(v60, type metadata accessor for AudioFeedSectionDescriptor);
            v77 = v85;
            sub_219BE5BE4();
            v78 = sub_2191FAD60(1, 2, 1, v82);
            v79 = v65;
            v73 = v78;
            (*(v67 + 8))(v83, v79);
            *(v73 + 2) = 2;
            (*(v50 + 32))(&v73[v80 + v81], v77, v86);
            v69 = v114;
            v39 = v115;
            v70 = v109;
            v72 = v112;
            v71 = v113;
            goto LABEL_20;
          }

          (*(v67 + 8))(v83, v65);
          v68 = type metadata accessor for AudioFeedSectionDescriptor;
LABEL_18:
          sub_219531104(v60, v68);
          v69 = v114;
          v39 = v115;
          v70 = v109;
          v72 = v112;
          v71 = v113;
LABEL_19:
          v73 = v82;
LABEL_20:
          sub_218ACF340(v73);

          sub_219BE68A4();
          swift_unknownObjectRelease();
          (*(v70 + 8))(v55, v58);
          (*(v71 + 8))(v72, v69);
          v64 = 0;
          goto LABEL_21;
        }
      }

      v68 = sub_21929BEC4;
      goto LABEL_18;
    }

    (*(v44 + 8))(v45, v46);
LABEL_15:
    v64 = 1;
    v39 = v115;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_219531104(v37, type metadata accessor for AudioFeedModel);
    goto LABEL_15;
  }

  v39 = v115;
  if (EnumCaseMultiPayload != 4)
  {
    sub_2186FB36C(0);
    v62 = *(v61 + 48);
    v63 = sub_219BF1584();
    (*(*(v63 - 8) + 8))(&v37[v62], v63);
    v40 = type metadata accessor for AudioFeedGapLocation;
    goto LABEL_12;
  }

  sub_2186F151C(0);
  v42 = type metadata accessor for AudioFeedGapLocation;
  v43 = &v37[*(v41 + 48)];
LABEL_13:
  sub_219531104(v43, v42);
  v64 = 1;
LABEL_21:
  v74 = sub_219BE6894();
  return (*(*(v74 - 8) + 56))(v39, v64, 1, v74);
}

uint64_t sub_219530A78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE6894();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_219530AF0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_219BF04A4();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0F34();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v1, v20, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v29 = type metadata accessor for AudioFeedGapLocation;
        v30 = &v20[*(v28 + 48)];
LABEL_13:
        result = sub_219531104(v30, v29);
        v38 = v48;
        *(v48 + 32) = 0;
        *v38 = 0u;
        v38[1] = 0u;
        return result;
      }

      sub_2186FB36C(0);
      v36 = *(v35 + 48);
      v37 = sub_219BF1584();
      (*(*(v37 - 8) + 8))(&v20[v36], v37);
      v31 = type metadata accessor for AudioFeedGapLocation;
LABEL_12:
      v29 = v31;
      v30 = v20;
      goto LABEL_13;
    }

LABEL_8:
    v31 = type metadata accessor for AudioFeedModel;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v46;
      v22 = v47;
      v24 = v43;
      (*(v46 + 32))(v43, v20, v47);
      sub_219BF07D4();
      sub_219BF0404();
      (*(v44 + 8))(v4, v45);
      v25 = sub_219BF09E4();
      v26 = v48;
      *(v48 + 24) = v25;
      v26[4] = sub_2186EFD84(&qword_280E90CA8, MEMORY[0x277D32FA8], MEMORY[0x277D32F98]);
      __swift_allocate_boxed_opaque_existential_1(v26);
      sub_219BF09D4();
      return (*(v23 + 8))(v24, v22);
    }

    goto LABEL_8;
  }

  (*(v15 + 32))(v17, v20, v14);
  sub_219BF07D4();
  sub_219BF0F14();
  (*(v42 + 8))(v9, v7);
  sub_219BF1624();
  v32 = sub_219BF1634();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    (*(v15 + 8))(v17, v14);
    result = sub_219531104(v12, sub_218AC1C94);
    v34 = v48;
    *v48 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0;
  }

  else
  {
    v39 = v48;
    *(v48 + 24) = v32;
    v39[4] = sub_2186EFD84(&qword_280E90860, MEMORY[0x277D33410], MEMORY[0x277D33408]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(v33 + 32))(boxed_opaque_existential_1, v12, v32);
    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_219531104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219531164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195311C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1584();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v73 - v7;
  sub_2186EAE28(0);
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v73 - v11;
  sub_2186EB018(0);
  v79 = *(v12 - 8);
  v80 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  sub_2186EAB88(0);
  v19 = v18;
  v78 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  sub_219531B00(0, qword_280EDCB28, type metadata accessor for AudioFeedModel);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v73 - v26;
  v29 = &v73 + *(v28 + 56) - v26;
  sub_219531B60(a1, &v73 - v26, type metadata accessor for AudioFeedModel);
  sub_219531B60(a2, v29, type metadata accessor for AudioFeedModel);
  type metadata accessor for AudioFeedModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v32 = v79;
          v31 = v80;
          v33 = *(v79 + 32);
          v33(v17, v27, v80);
          v33(v14, v29, v31);
          sub_219BF04A4();
          v34 = MEMORY[0x277D32CE0];
          sub_2186EFD84(&unk_280E90F10, MEMORY[0x277D32CE0], MEMORY[0x277D32CE8]);
          sub_2186EFD84(&unk_280E90F20, v34, MEMORY[0x277D32C98]);
          v35 = sub_219BF07C4();
          v36 = *(v32 + 8);
          v36(v14, v31);
          v36(v17, v31);
          return v35 & 1;
        }

        v66 = v79;
        v65 = v80;
        goto LABEL_32;
      }

      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v66 = v83;
        v65 = v84;
LABEL_32:
        (*(v66 + 8))(v27, v65);
        goto LABEL_34;
      }

      v48 = v83;
      v19 = v84;
      v49 = *(v83 + 32);
      v50 = v76;
      v49(v76, v27, v84);
      v51 = v77;
      v49(v77, v29, v19);
      v52 = sub_219BF07B4();
      v54 = v53;
      if (v52 == sub_219BF07B4() && v54 == v55)
      {
        v35 = 1;
      }

      else
      {
        v35 = sub_219BF78F4();
      }

      v70 = *(v48 + 8);
      v70(v51, v19);
      v71 = v50;
LABEL_40:
      v70(v71, v19);
      return v35 & 1;
    }

    if (!swift_getEnumCaseMultiPayload())
    {
      v67 = v78;
      v68 = *(v78 + 32);
      v68(v24, v27, v19);
      v68(v21, v29, v19);
      sub_219BF0F34();
      v69 = MEMORY[0x277D33058];
      sub_2186EFD84(&unk_280E90A40, MEMORY[0x277D33058], MEMORY[0x277D33060]);
      sub_2186EFD84(&qword_280E90A50, v69, MEMORY[0x277D33050]);
      v35 = sub_219BF07C4();
      v70 = *(v67 + 8);
      v70(v21, v19);
      v71 = v24;
      goto LABEL_40;
    }

    (*(v78 + 8))(v27, v19);
LABEL_34:
    sub_219531104(v29, type metadata accessor for AudioFeedModel);
    v35 = 0;
    return v35 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v38 = *v27;
      v37 = *(v27 + 1);
      sub_2186F151C(0);
      v40 = v39;
      v41 = *(v39 + 48);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_219531104(&v27[v41], type metadata accessor for AudioFeedGapLocation);

        goto LABEL_34;
      }

      if (v38 == *v29 && v37 == *(v29 + 1))
      {
        v35 = 1;
      }

      else
      {
        v35 = sub_219BF78F4();
      }

      sub_219531104(&v29[*(v40 + 48)], type metadata accessor for AudioFeedGapLocation);
      v64 = &v27[v41];
    }

    else
    {
      sub_2186FB36C(0);
      v57 = *(v56 + 48);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v81 + 8))(&v27[v57], v82);
        sub_219531104(v27, type metadata accessor for AudioFeedGapLocation);
        goto LABEL_34;
      }

      v59 = v81;
      v58 = v82;
      v60 = *(v81 + 32);
      v61 = v74;
      v60(v74, &v27[v57], v82);
      v62 = v75;
      v60(v75, &v29[v57], v58);
      v35 = MEMORY[0x21CEC82E0](v61, v62);
      v63 = *(v59 + 8);
      v63(v62, v58);
      v63(v61, v58);
      sub_219531104(v29, type metadata accessor for AudioFeedGapLocation);
      v64 = v27;
    }

    sub_219531104(v64, type metadata accessor for AudioFeedGapLocation);
    return v35 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_34;
  }

  v43 = sub_219BE5B24();
  v45 = v44;
  if (v43 == sub_219BE5B24() && v45 == v46)
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_219BF78F4();
  }

  return v35 & 1;
}

void sub_219531B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_219531B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219531BC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a4;
  v5 = sub_219BF04A4();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219532A44(0, &unk_280E90DE0, sub_2186EB018);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  sub_2189539F0(0);
  sub_219BE5FC4();
  sub_218AF3ED4(v22, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_219532A98(v19, type metadata accessor for SearchModel);
    sub_218AF3ED4(v22, v16);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2186EAB88(0);
      v28 = v27;
    }

    else
    {
      sub_219532A98(v16, type metadata accessor for SearchModel);
      sub_218AF3ED4(v22, v13);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_219532A98(v13, type metadata accessor for SearchModel);
        return sub_219532A98(v22, type metadata accessor for SearchModel);
      }

      sub_2186EB308(0);
      v28 = v29;
      v16 = v13;
    }

    (*(*(v28 - 8) + 8))(v16);
    goto LABEL_10;
  }

  sub_2186EB018(0);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 8);
  v26(v19, v23);
  if (v39)
  {
LABEL_10:
    if (!a3)
    {
      return sub_219532A98(v22, type metadata accessor for SearchModel);
    }

LABEL_13:
    v30 = v40;
    v31 = *(v40 + 112);
    ObjectType = swift_getObjectType();
    v33 = sub_219BF5494();
    v35 = v34;

    (*(v31 + 16))(v33, v35, *(v30 + 120), ObjectType, v31);

    return sub_219532A98(v22, type metadata accessor for SearchModel);
  }

  sub_218ABEBCC(v10);
  if ((*(v25 + 48))(v10, 1, v24) != 1)
  {
    sub_219BF07D4();
    v26(v10, v24);
    sub_219BF0424();
    (*(v37 + 8))(v7, v38);
    goto LABEL_13;
  }

  sub_219532AF8(v10, &unk_280E90DE0, sub_2186EB018);
  return sub_219532A98(v22, type metadata accessor for SearchModel);
}

double sub_219532060(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = *(v3 + 112);
      swift_getObjectType();
      v6 = sub_219BF5494();
      (*(v5 + 16))(v6);
    }
  }

  return result;
}

uint64_t sub_219532118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v24 = sub_219BDE294();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219532A44(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v23 = type metadata accessor for SearchRouteModel(0);
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 8);
  v16 = *(a3 + 32);
  v17 = *(a3 + 40);
  *&v26[0] = *a3;
  *(&v26[0] + 1) = v15;
  v26[1] = *(a3 + 16);
  v27 = v16;
  v28 = v17;
  sub_21989C160(a1, v26);
  v18 = *(v3 + 40);
  v22 = v3;
  ObjectType = swift_getObjectType();
  v20 = v24;
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v24);
  (*(v18 + 80))(a1, v25, 0, v8, ObjectType, v18);
  (*(v6 + 8))(v8, v20);
  if ((*(v12 + 48))(v11, 1, v23) == 1)
  {
    return sub_219532AF8(v11, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  }

  sub_2195329E0(v11, v14);
  __swift_project_boxed_opaque_existential_1((v22 + 48), *(v22 + 72));
  sub_219844B48(v14);
  return sub_219532A98(v14, type metadata accessor for SearchRouteModel);
}

uint64_t sub_219532400(uint64_t a1)
{
  v18 = a1;
  v2 = sub_219BDE294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219532A44(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v17 = type metadata accessor for SearchRouteModel(0);
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v16 = v1;
  ObjectType = swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D2FEF8], v2);
  (*(v12 + 80))(v18, 0, 1, v5, ObjectType, v12);
  (*(v3 + 8))(v5, v2);
  if ((*(v9 + 48))(v8, 1, v17) == 1)
  {
    return sub_219532AF8(v8, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  }

  sub_2195329E0(v8, v11);
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  sub_219844B48(v11);
  return sub_219532A98(v11, type metadata accessor for SearchRouteModel);
}

uint64_t sub_2195326AC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = sub_219BDE294();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219532A44(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for SearchRouteModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v18 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v13 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  (*(v4 + 104))(v6, *MEMORY[0x277D2FF08], v3);
  (*(v13 + 80))(v20, v21, 0, v6, ObjectType, v13);
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219532AF8(v9, &qword_27CC12648, type metadata accessor for SearchRouteModel);
    return 0;
  }

  else
  {
    v16 = v18;
    sub_2195329E0(v9, v18);
    __swift_project_boxed_opaque_existential_1((v19 + 48), *(v19 + 72));
    v17 = sub_2198454D4(v16);
    sub_219532A98(v16, type metadata accessor for SearchRouteModel);
    return v17;
  }
}

uint64_t sub_219532964()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2195329E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchRouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219532A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219532A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219532AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219532A44(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_219532B54()
{
  v23 = MEMORY[0x277D84560];
  sub_219534800(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v0 = sub_219BE2644();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C870B0;
  v5 = (v4 + v3);
  *v5 = 76;
  *(v5 + 1) = 0xE100000000000000;
  v6 = *(v1 + 104);
  (v6)(v5, *MEMORY[0x277D6CC80], v0);
  strcpy(&v5[v2], "alternate_feed");
  v5[v2 + 15] = -18;
  v6();
  v7 = &v5[2 * v2];
  *v7 = 0x6E676961706D6163;
  *(v7 + 1) = 0xEB0000000064695FLL;
  v6();
  v8 = &v5[3 * v2];
  strcpy(v8, "campaign_type");
  *(v8 + 7) = -4864;
  v6();
  v9 = &v5[4 * v2];
  *v9 = 0x6576697461657263;
  *(v9 + 1) = 0xEB0000000064695FLL;
  v6();
  v10 = &v5[5 * v2];
  *v10 = 0x6569766572706461;
  *(v10 + 1) = 0xEB00000000646977;
  v6();
  v11 = &v5[6 * v2];
  strcpy(v11, "adpreviewlimit");
  v11[15] = -18;
  v6();
  v12 = &v5[7 * v2];
  *v12 = 0x6E656B6F7471;
  *(v12 + 1) = 0xE600000000000000;
  v6();
  v13 = &v5[8 * v2];
  strcpy(v13, "presentAsModal");
  v13[15] = -18;
  v6();
  sub_219534800(0, &unk_280E8B6F0, sub_218A38BBC, v23);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x4449676174;
  *(inited + 40) = 0xE500000000000000;
  sub_219534800(0, &unk_280E8C0A0, MEMORY[0x277D6CCB8], v23);
  v15 = sub_219BE26C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09EC0;
  v20 = (v19 + v18);
  *v20 = 84;
  v20[1] = 0xE100000000000000;
  v21 = *(v16 + 104);
  v21(v19 + v18, *MEMORY[0x277D6CCA8], v15);
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v20 + v17) = *MEMORY[0x277D30A00];
    v21(v20 + v17, *MEMORY[0x277D6CCB0], v15);
    *(inited + 48) = v19;
    sub_2194AE704(inited);
    swift_setDeallocating();
    sub_218F0559C(inited + 32);
    v22 = sub_219BE2684();

    qword_280F61958 = v22;
  }
}

uint64_t sub_219533008(uint64_t a1)
{
  sub_219534800(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v61 - v5;
  MEMORY[0x28223BE20](v6);
  v64 = &v61 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  v11 = sub_219BE22B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE22F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219534800(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v16 + 8))(v18, v15);
  v19 = sub_219BE22C4();
  v21 = v20;
  (*(v12 + 8))(v14, v11);
  if (!v21)
  {
    return 0;
  }

  v22 = sub_219BF5554();
  if (v22 < 0 || v22 != *MEMORY[0x277D30A00])
  {

    return 0;
  }

  v23 = sub_218FA86C8(a1);
  v24 = sub_219533FC4();

  v25 = sub_218DB24B0();
  v26 = *(v66 + 24);
  v63 = v24;
  if (v25)
  {
    *&v79 = v19;
    *(&v79 + 1) = v21;
    *&v80 = v23;
    *(&v80 + 1) = v24;
    LOBYTE(v81) = 1;
    sub_219534200(&v79, a1, v19, v21, &v82);

    v27 = v82;
    v28 = v10;
    sub_219BE2564();
    v29 = sub_219BDFA44();
    (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v75 = v26;
    sub_2187B16A8(&v76, &v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    v62 = v23;
    if (*(&v71 + 1))
    {
      sub_21875F93C(&v70, &v72);
      *&v70 = v27;
      v30 = sub_2194DA78C(&v72);
      v32 = v31;
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(&v72);
    }

    else
    {
      sub_218744C30(&v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v30 = qword_280ED32D8;
      v32 = qword_280ED32E0;
      v34 = qword_280ED32E8;

      sub_2188202A8(v32);
    }

    v69 = v27;
    v71 = 0u;
    v70 = 0u;
    v68 = v27;
    v44 = v64;
    sub_2187B16A8(v28, v64, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_219534800);
    sub_2187B16A8(&v79, &v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v45 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v46 = (v3 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 47) & 0xFFFFFFFFFFFFFFF8;
    v67 = v28;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    sub_2189B4EAC(v44, v48 + v45);
    v49 = v48 + v46;
    v50 = v73;
    *v49 = v72;
    *(v49 + 16) = v50;
    *(v49 + 32) = v74;
    v51 = (v48 + v47);
    v52 = (v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v51 = 0;
    v51[1] = 0;
    *v52 = v30;
    v52[1] = v32;
    v52[2] = v34;

    sub_2188202A8(v32);
    sub_2186CF94C(0);
    sub_219534948(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v32, v34);
    sub_218744C30(&v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744C30(&v79, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218744C30(v67, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_219534800);
    sub_218744C30(&v70, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    v60 = &v84;
  }

  else
  {
    *&v79 = v19;
    *(&v79 + 1) = v21;
    *&v80 = v23;
    *(&v80 + 1) = v24;
    LOBYTE(v81) = 1;
    sub_219534200(&v79, a1, v19, v21, &v82);

    v36 = v82;
    v37 = v68;
    sub_219BE2564();
    v38 = sub_219BDFA44();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v75 = v26;
    sub_2187B16A8(&v76, &v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v71 + 1))
    {
      sub_21875F93C(&v70, &v72);
      *&v70 = v36;
      v39 = sub_2194DA78C(&v72);
      v41 = v40;
      v43 = v42;
      __swift_destroy_boxed_opaque_existential_1(&v72);
    }

    else
    {
      sub_218744C30(&v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v39 = qword_280ED32D8;
      v41 = qword_280ED32E0;
      v43 = qword_280ED32E8;

      sub_2188202A8(v41);
    }

    v69 = v36;
    v71 = 0u;
    v70 = 0u;
    v66 = v36;
    v53 = v65;
    sub_2187B16A8(v37, v65, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_219534800);
    sub_2187B16A8(&v79, &v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v54 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v55 = (v3 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    sub_2189B4EAC(v53, v56 + v54);
    v57 = v56 + v55;
    v58 = v73;
    *v57 = v72;
    *(v57 + 16) = v58;
    *(v57 + 32) = v74;
    v59 = (v56 + ((v55 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v59 = v39;
    v59[1] = v41;
    v59[2] = v43;

    sub_2188202A8(v41);
    sub_2186CF94C(0);
    sub_219534948(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB474();

    sub_2187FABEC(v41, v43);
    sub_218744C30(&v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744C30(&v79, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218744C30(v68, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_219534800);
    sub_218744C30(&v70, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    v60 = &v83;
  }

  sub_218932F9C(*(v60 - 32));
  return 1;
}

void *sub_219533FC4()
{
  v0 = sub_219BE22B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE22F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219534800(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v5 + 8))(v7, v4);
  v8 = sub_219BE22C4();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  if (v8 == 1702195828 && v10 == 0xE400000000000000)
  {
  }

  else
  {
    v12 = sub_219BF78F4();

    if ((v12 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return &unk_282A27F88;
}

uint64_t sub_219534200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v6 = v5;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v9 = sub_219BDB954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE22F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v56 = *(a1 + 8);
  v18 = *(a1 + 24);
  v52 = *(a1 + 16);
  v50 = v17;
  v51 = v18;
  v19 = *(a1 + 32);
  sub_219534800(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v49 = a2;
  sub_219BE2594();
  sub_219BE22A4();
  (*(v14 + 8))(v16, v13);
  v20 = sub_219BDB7B4();
  v22 = v21;
  (*(v10 + 8))(v12, v9);
  if (v22)
  {
    v22 = qword_219C87150[sub_219534A84(v20, v22)];
  }

  v23 = *(v6 + 40);
  v24 = [objc_msgSend(v23 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v25 = v19;
  v27 = v53;
  v26 = v54;
  if (v24)
  {
    v28 = sub_219BF5414();
    v30 = v29;

    if (v28 == v27 && v30 == v26)
    {

LABEL_8:
      v32 = swift_allocObject();
      *(v32 + 16) = v22;
      if (!v25 || (v56 = v52, v25 == 1))
      {
        v33 = v56;
        *(v32 + 24) = v56;
        *(v32 + 32) = 2;
        v34 = v32 | 0x7000000000000000;
LABEL_19:
        *v55 = v34;

        return v33;
      }

      goto LABEL_27;
    }

    v31 = sub_219BF78F4();

    if (v31)
    {
      goto LABEL_8;
    }
  }

  v35 = [objc_msgSend(v23 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v36 = [v35 puzzleHubTagID];

  if (v36)
  {
    v37 = sub_219BF5414();
    v39 = v38;

    if (v37 == v27 && v39 == v26)
    {

LABEL_16:
      if (!v25 || (v56 = v52, v25 == 1))
      {
        v41 = swift_allocObject();
        *(v41 + 24) = 0;
        *(v41 + 32) = 0;
        v33 = v56;
        *(v41 + 16) = v56;
        *(v41 + 40) = 1;
        v34 = v41 | 0xE000000000000002;
        goto LABEL_19;
      }

LABEL_27:
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v40 = sub_219BF78F4();

    if (v40)
    {
      goto LABEL_16;
    }
  }

  v44 = v50;
  v43 = v51;
  v45 = v52;
  sub_21908FD7C(v50, v56, v52, v51, v25);
  if (v22 - 3) <= 4 && (sub_218DB26B0())
  {
    result = swift_allocObject();
    v46 = v56;
    *(result + 16) = v44;
    *(result + 24) = v46;
    *(result + 32) = v45;
    *(result + 40) = v43;
    *(result + 48) = v25;
    *(result + 56) = v22;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = -1;
    v47 = 0x9000000000000004;
  }

  else
  {
    result = swift_allocObject();
    v48 = v56;
    *(result + 16) = v44;
    *(result + 24) = v48;
    *(result + 32) = v45;
    *(result + 40) = v43;
    *(result + 48) = v25;
    *(result + 56) = v22;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = -1;
    v47 = 0x2000000000000006;
  }

  *v55 = result | v47;
  return result;
}

void sub_219534800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219534864(void *a1)
{
  sub_219534800(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2194DAE0C(a1, v7, v1 + v5, v1 + v6, v9, v10);
}

uint64_t sub_219534948(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_219534990(void *a1)
{
  sub_219534800(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_219534A84(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

id sub_219534AD0(char a1)
{
  v3 = *(v1 + 16);
  v4 = objc_opt_self();
  v5 = 17.0;
  if (a1)
  {
    v5 = 13.0;
  }

  v6 = [v4 systemFontOfSize:v5 weight:*MEMORY[0x277D74418]];
  v7 = [v3 scaledFontForFont_];

  return v7;
}

void sub_219534B5C(char a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v9 = [v7 scaledFontForFont_];

  [a2 setFont_];
  [a2 setLineBreakMode_];
  if (a3)
  {

    [a2 setTextColor_];
  }

  else
  {
    v10 = objc_opt_self();
    if (a1)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
      v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.658823529 green:0.658823529 blue:0.678431373 alpha:1.0];
      v14 = [v11 ts:v12 dynamicColor:v13 withDarkStyleVariant:?];
    }

    else
    {
      v14 = [v10 secondaryLabelColor];
    }

    [a2 setTextColor_];
  }
}

uint64_t sub_219534D54()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_219534DC0(void *a1, char a2, char a3)
{
  v6 = objc_opt_self();
  v7 = &selRef_whiteColor;
  if ((a3 & 1) == 0)
  {
    v7 = &selRef_labelColor;
  }

  if ((a2 & 1) == 0)
  {
    v7 = &selRef_placeholderTextColor;
  }

  v8 = [v6 *v7];
  [a1 setTextColor_];
}

void sub_219534E68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for WebEmbedResource(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDB954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  sub_2187C5110(0);
  v17 = v16;
  sub_219BEA7A4();
  v18 = v46[0];
  if (((v18 >> 58) & 0x3C | (v18 >> 1) & 3) == 0x2B)
  {
    v42 = v8;
    v43 = a2;
    v19 = swift_projectBox();
    v40 = v10;
    v20 = v17;
    v21 = *(v10 + 16);
    v21(v15, v19, v9);
    sub_218932F9C(v18);
    v39[0] = v9;
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_219535300();
    v39[1] = v20;
    v41 = a1;
    sub_219BEA794();
    sub_219BE1E14();

    if (v45)
    {
      sub_2186CB1F0(&v44, v46);
      v22 = v39[0];
      v21(v12, v15, v39[0]);
      v23 = [objc_opt_self() effectWithStyle_];
      v24 = v42;
      sub_218FA0DBC(v12, v23, v42);
      v25 = v47;
      v26 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v27 = (*(v26 + 8))(v24, v25, v26);
      [v27 setModalPresentationStyle_];
      v28 = [v27 presentationController];
      v29 = v40;
      if (v28)
      {
        v30 = v28;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          [v31 _setWantsBottomAttachedInCompactHeight_];
          [v32 _setWidthFollowsPreferredContentSizeWhenBottomAttached_];
          [v32 _setShouldDismissWhenTappedOutside_];
        }
      }

      v33 = sub_219BEA784();
      v33(v27);

      (*(v29 + 8))(v15, v22);
      sub_219535290(0);
      v35 = v34;
      v36 = *(v34 + 48);
      v37 = v43;
      sub_2190972A8(v24, v43);
      *(v37 + v36) = v27;
      (*(*(v35 - 8) + 56))(v37, 0, 1, v35);
      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_218932F9C(v46[0]);
    sub_219535290(0);
    (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
  }
}

void sub_219535290(uint64_t a1)
{
  if (!qword_280ED6F98[0])
  {
    type metadata accessor for WebEmbedResource(255);
    sub_218805E54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280ED6F98);
    }
  }
}

unint64_t sub_219535300()
{
  result = qword_280ED20E0;
  if (!qword_280ED20E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED20E0);
  }

  return result;
}

uint64_t sub_219535364(void **a1)
{
  sub_218932F34(0);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF1324();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF1C74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2A04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v20 = *a1;
  v32 = v20;
  (*(v11 + 104))(v13, *MEMORY[0x277D33A68], v10, v17);
  (*(v7 + 104))(v9, *MEMORY[0x277D33570], v6);
  LOBYTE(v10) = [v20 respondsToSelector_];
  swift_unknownObjectRetain();
  v21 = MEMORY[0x277D33298];
  if ((v10 & 1) != 0 && [v20 role] == 8)
  {
    v21 = MEMORY[0x277D33268];
  }

  (*(v25 + 104))(v27, *v21, v26);
  sub_218731D50();
  v30 = 0u;
  v31 = 0u;
  sub_219BF2564();
  if ((v28[3] & 0x10) != 0)
  {
    sub_219BEAC64();
  }

  else
  {
    sub_219BEABE4();
  }

  v22 = v29;
  swift_getObjectType();
  (*(v16 + 16))(v22, v19, v15);
  (*(v16 + 56))(v22, 0, 1, v15);
  sub_219BE7094();

  sub_219535BD4(v22, sub_218932F34);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_21953579C()
{
  sub_218CFB62C(0);
  MEMORY[0x28223BE20](v0 - 8);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1324();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1C74();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EEDBB8();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277D33A68], v8, v15);
  v18 = v22;
  (*(v5 + 104))(v7, *MEMORY[0x277D33570], v21);
  v24 = 0u;
  v25 = 0u;
  (*(v2 + 104))(v4, *MEMORY[0x277D33290], v23);
  sub_219BF2564();
  swift_getObjectType();
  sub_219BEAC94();
  (*(v14 + 16))(v18, v17, v13);
  (*(v14 + 56))(v18, 0, 1, v13);
  sub_219BE7094();

  sub_219535BD4(v18, sub_218CFB62C);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_219535B68()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219535BD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SearchPrewarmBlueprintModifier(uint64_t a1)
{
  result = qword_27CC1B738;
  if (!qword_27CC1B738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219535CA8(uint64_t a1)
{
  result = type metadata accessor for SearchPrewarmResult(319);
  if (v2 <= 0x3F)
  {
    result = sub_219535D2C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_219535D2C()
{
  result = qword_280EC0430;
  if (!qword_280EC0430)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EC0430);
  }

  return result;
}

uint64_t sub_219535D90(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v92 = a3;
  v93 = a2;
  sub_219536DD0(0, &qword_280EE4B28, MEMORY[0x277D6DF88]);
  v91 = v4;
  v90 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v89 = &v79 - v5;
  v82 = type metadata accessor for SearchFeedGapLocation(0);
  MEMORY[0x28223BE20](v82);
  v83 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_219BF0BD4();
  v80 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953A84(0);
  v9 = v8;
  v95 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v94 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchFeedGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v79 - v15;
  sub_218AF3D94(0);
  MEMORY[0x28223BE20](v16 - 8);
  sub_219536DD0(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v18 = v17;
  v88 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - v19;
  v21 = sub_219536D40(&qword_280EE58A0, sub_218953A84, MEMORY[0x277D6D720]);
  v22 = sub_219536D40(&qword_280EE58A8, sub_218953A84, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v9, v21, v22);
  v23 = type metadata accessor for SearchSectionDescriptor(0);
  v24 = type metadata accessor for SearchModel(0);
  v25 = sub_219536D40(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
  v26 = sub_219536D40(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
  v27 = v20;
  v87 = v23;
  v86 = v24;
  v85 = v25;
  v84 = v26;
  sub_219BEB2D4();
  v28 = v3;
  v29 = v3 + *(type metadata accessor for SearchPrewarmResult(0) + 20);
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);
  v33 = *(v29 + 32);
  v32 = *(v29 + 40);
  v35 = *(v29 + 48);
  v34 = *(v29 + 56);
  v36 = *(v29 + 64);
  v37 = *(v29 + 72);
  v38 = v31 >> 61;
  v108 = v9;
  v109 = v18;
  if ((v31 >> 61) > 1)
  {
    if (v38 != 2)
    {
      v39 = v12;
      v40 = v33;
      v41 = v94;
      v42 = v27;
      if (v38 != 3)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    v100 = v32;
    v101 = v30;
    v105 = v37;
    v104 = v36;
    v102 = v35;
    v103 = v34;
    sub_219536F24(0);
    v58 = swift_projectBox();
    sub_218EDF938(v58, v99);
    v59 = type metadata accessor for SearchPrewarmBlueprintModifier(0);
    __swift_project_boxed_opaque_existential_1((v3 + *(v59 + 20)), *(v3 + *(v59 + 20) + 24));
    type metadata accessor for SearchFeedServiceConfig(0);
    sub_219536D40(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);

    v60 = v81;
    sub_219BEE7A4();
    v110 = v101;
    v111 = v33;
    v112 = v100;
    v113 = v102;
    v114 = v103;
    v115 = v104;

    v41 = v94;
    v47 = v99;
    sub_219126E74(v99, v105, v60, &v110, v94);

    (*(v80 + 8))(v60, v107);
    v42 = v27;
    sub_219BEB1E4();

    (*(v95 + 8))(v41, v9);
LABEL_12:
    sub_219536EC4(v47, type metadata accessor for SearchFeedGroup);
    goto LABEL_13;
  }

  v39 = v12;
  v40 = v33;
  v41 = v94;
  v42 = v27;
  if (!v38)
  {
    v43 = v32;
    v105 = v37;
    v104 = v36;
    v102 = v35;
    v103 = v34;
    v101 = v30;
    sub_219536F24(0);
    v44 = swift_projectBox();
    sub_218EDF938(v44, v99);
    v45 = type metadata accessor for SearchPrewarmBlueprintModifier(0);
    v106 = __swift_project_boxed_opaque_existential_1((v28 + *(v45 + 20)), *(v28 + *(v45 + 20) + 24));
    type metadata accessor for SearchFeedServiceConfig(0);
    sub_219536D40(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);

    v46 = v81;
    sub_219BEE7A4();
    v110 = v101;
    v111 = v40;
    v112 = v43;
    v113 = v102;
    v114 = v103;
    v115 = v104;

    v47 = v99;
    sub_219126E74(v99, v105, v46, &v110, v41);

    (*(v80 + 8))(v46, v107);
    sub_219BEB1E4();

    (*(v95 + 8))(v41, v108);
    goto LABEL_12;
  }

LABEL_7:
  v48 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v49 = *(v48 + 16);
  if (v49)
  {
    v79 = v31;
    v50 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v100 = v32;
    v101 = v30;
    v105 = v37;
    v104 = v36;
    v102 = v35;
    v103 = v34;
    v97 = (v28 + *(type metadata accessor for SearchPrewarmBlueprintModifier(0) + 20));
    v98 = v42;
    v51 = v39;
    v52 = v48 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v96 = *(v51 + 72);
    v53 = (v80 + 8);
    v54 = (v95 + 8);
    v80 = v48;

    v99 = v50;

    v55 = v81;
    v56 = v106;
    v57 = v100;
    do
    {
      sub_218EDF938(v52, v56);
      __swift_project_boxed_opaque_existential_1(v97, v97[3]);
      type metadata accessor for SearchFeedServiceConfig(0);
      sub_219536D40(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
      v56 = v106;
      sub_219BEE7A4();
      v110 = v101;
      v111 = v40;
      v112 = v57;
      v113 = v102;
      v114 = v103;
      v115 = v104;

      sub_219126E74(v56, v105, v55, &v110, v41);
      sub_219536EC4(v56, type metadata accessor for SearchFeedGroup);

      (*v53)(v55, v107);
      sub_219BEB1E4();
      (*v54)(v41, v108);
      v52 += v96;
      --v49;
    }

    while (v49);

    v42 = v98;
  }

LABEL_13:
  type metadata accessor for SearchFeedServiceConfig(0);
  sub_219536D40(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
  sub_219BEF3D4();
  if (sub_219BEF394())
  {
    v61 = v42;
    v62 = sub_219BEE854();
    v63 = v91;
    v64 = v90;
    if (v62)
    {
      v65 = swift_allocObject();
      sub_219536FB0(0, &qword_27CC1B750, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v65 + 16) = sub_219BEE874();
      v66 = v83;
      *v83 = v65;
      v67 = *MEMORY[0x277D33068];
      sub_219536FB0(0, &qword_280E909F8, MEMORY[0x277D33098]);
      (*(*(v68 - 8) + 104))(v66, v67, v68);
      swift_storeEnumTagMultiPayload();
      v69 = v94;
      sub_219B51140(v66, v94);
      sub_219536EC4(v66, type metadata accessor for SearchFeedGapLocation);
      sub_219BEB1E4();
      (*(v95 + 8))(v69, v108);
    }
  }

  else
  {
    v70 = swift_allocObject();
    sub_219536FB0(0, &qword_27CC1B750, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v70 + 16) = sub_219BEE874();
    v71 = v83;
    *v83 = v70;
    v72 = *MEMORY[0x277D33090];
    sub_219536FB0(0, &qword_280E909F8, MEMORY[0x277D33098]);
    (*(*(v73 - 8) + 104))(v71, v72, v73);
    swift_storeEnumTagMultiPayload();
    sub_219B51140(v71, v41);
    sub_219536EC4(v71, type metadata accessor for SearchFeedGapLocation);
    v61 = v42;
    sub_219BEB1E4();
    (*(v95 + 8))(v41, v108);
    v63 = v91;
    v64 = v90;
  }

  sub_219BEEFF4();

  sub_219BEEFE4();
  v74 = sub_219BEEFC4();

  v75 = 0;
  if (v74)
  {
    v75 = sub_219BEDC74();
  }

  else
  {
    v111 = 0;
    v112 = 0;
  }

  v76 = v109;
  v110 = v74;
  v113 = v75;
  sub_219BEB2C4();

  v77 = v89;
  sub_219BE8584();
  v93(v77);

  (*(v64 + 8))(v77, v63);
  return (*(v88 + 8))(v61, v76);
}

uint64_t sub_219536C44(uint64_t a1)
{
  v2 = sub_219536D40(&qword_27CC126C0, type metadata accessor for SearchPrewarmBlueprintModifier, &unk_219C872D8);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_219536D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219536DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_219536D40(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_219536D40(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219536EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219536F24(uint64_t a1)
{
  if (!qword_27CC1B758)
  {
    type metadata accessor for SearchFeedGroup(255);
    sub_219536FB0(255, &qword_27CC1B760, MEMORY[0x277D32170]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1B758);
    }
  }
}

void sub_219536FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchFeedServiceConfig(255);
    v7 = sub_219536D40(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21953704C()
{
  v1 = sub_219BED184();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_appConfigManager);
  sub_2187D9028();
  (*(v2 + 104))(v4, *MEMORY[0x277D851A8], v1);
  v6 = sub_219BF66E4();
  (*(v2 + 8))(v4, v1);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_219538214;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C1CBB4;
  aBlock[3] = &block_descriptor_8_1;
  v8 = _Block_copy(aBlock);

  [v5 fetchAppConfigurationIfNeededWithCompletionQueue:v6 completion:v8];
  _Block_release(v8);
}

void sub_219537214(void *a1, void *a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v73[-v13];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  if (a2)
  {
    v17 = a2;
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v18 = qword_280F61750;
    v19 = sub_219BF61F4();
    sub_2186F20D4(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v80 = 0xE000000000000000;
    v78 = a2;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v21 = aBlock;
    v22 = v80;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2186FC3BC();
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    sub_219BE5314("Error fetching app configuration from NotificationAppExtensionCommunicator: %{public}@", 86, 2, &dword_2186C1000, v18, v19, v20);

LABEL_6:
    return;
  }

  if (!a1)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v28 = qword_280F61750;
    v29 = sub_219BF61F4();
    sub_219BE5314("Error fetching app configuration from NotificationAppExtensionCommunicator, no error and no config", 98, 2, &dword_2186C1000, v28, v29, MEMORY[0x277D84F90]);
    goto LABEL_6;
  }

  v76 = v6;
  v23 = OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults;
  v24 = *(Strong + OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults);
  v25 = [a1 respondsToSelector_];
  swift_unknownObjectRetain();
  v26 = v24;
  if (v25)
  {
    [a1 notificationEnableAssetPrefetching];
    v27 = sub_219BF5B34();
  }

  else
  {
    v27 = 0;
  }

  v30 = sub_219BF53D4();
  [v26 setValue:v27 forKey:v30];

  swift_unknownObjectRelease();
  v31 = *&v16[v23];
  v32 = [a1 respondsToSelector_];
  v33 = v31;
  if (v32)
  {
    [a1 notificationAssetPrefetchingRequiresWatch];
    v34 = sub_219BF5B34();
  }

  else
  {
    v34 = 0;
  }

  v35 = sub_219BF53D4();
  [v33 setValue:v34 forKey:v35];

  swift_unknownObjectRelease();
  v36 = *&v16[v23];
  v37 = [a1 respondsToSelector_];
  v38 = v36;
  v77 = v23;
  if (v37)
  {
    [a1 clientSideEngagementBoostEnabled];
  }

  v39 = sub_219BF5B34();
  v40 = sub_219BF53D4();
  [v38 setValue:v39 forKey:v40];

  v41 = [a1 personalizationTreatment];
  v42 = [v41 treatmentDictionary];

  if (v42)
  {
    sub_219BF5214();

    v43 = objc_opt_self();
    v44 = sub_219BF5204();

    aBlock = 0;
    v45 = [v43 archivedDataWithRootObject:v44 requiringSecureCoding:0 error:&aBlock];

    v46 = aBlock;
    if (v45)
    {
      v75 = sub_219BDBA04();
      v48 = v47;

      v49 = *&v16[v77];
      v50 = sub_219BDB9E4();
      v51 = sub_219BF53D4();
      [v49 setValue:v50 forKey:v51];

      sub_2186C6190(v75, v48);
    }

    else
    {
      v52 = v46;
      v53 = sub_219BDB724();

      swift_willThrow();
      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      v75 = qword_280F61750;
      v74 = sub_219BF61F4();
      sub_2186F20D4(0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_219C09BA0;
      aBlock = 0;
      v80 = 0xE000000000000000;
      v78 = v53;
      sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
      sub_219BF7484();
      v55 = aBlock;
      v56 = v80;
      *(v54 + 56) = MEMORY[0x277D837D0];
      *(v54 + 64) = sub_2186FC3BC();
      *(v54 + 32) = v55;
      *(v54 + 40) = v56;
      sub_219BE5314("Error archiving treatment data: %{public}@", 42, 2, &dword_2186C1000, v75, v74, v54);
    }
  }

  EndpointEnvironment = FCDefaultsReadEndpointEnvironment();
  if ([a1 respondsToSelector_])
  {
    v58 = [a1 appAnalyticsNotificationReceiptEndpointUrlForEnvironment_];
    v59 = v76;
    if (v58)
    {
      v60 = v58;
      sub_219BDB8B4();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    (*(v59 + 56))(v11, v61, 1, v5);
    sub_218AB007C(v11, v14);
    if ((*(v59 + 48))(v14, 1, v5) != 1)
    {
      sub_219BDB804();
      (*(v59 + 8))(v14, v5);
      v64 = *&v16[v77];
      v62 = sub_219BF53D4();

      v63 = sub_219BF53D4();
      [v64 setValue:v62 forKey:v63];

      goto LABEL_33;
    }

    sub_218838478(v14);
  }

  v62 = *&v16[v77];
  v63 = sub_219BF53D4();
  [v62 removeObjectForKey_];
LABEL_33:

  if ([a1 respondsToSelector_])
  {
    v65 = [a1 appAnalyticsEndpointUrlForEnvironment_];
    sub_219BDB8B4();

    sub_219BDB804();
    (*(v76 + 8))(v8, v5);
    v66 = *&v16[v77];
    v67 = sub_219BF53D4();

    v68 = sub_219BF53D4();
    [v66 setValue:v67 forKey:v68];
  }

  else
  {
    v67 = *&v16[v77];
    v68 = sub_219BF53D4();
    [v67 removeObjectForKey_];
  }

  v69 = *&v16[OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_bundleSubscriptionManager];
  v70 = swift_allocObject();
  *(v70 + 16) = v16;
  v83 = sub_21953821C;
  v84 = v70;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = sub_218B66540;
  v82 = &block_descriptor_14_1;
  v71 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v72 = v16;

  [v69 refreshBundleSubscriptionWithCachePolicy:1 completion:v71];
  _Block_release(v71);
  swift_unknownObjectRelease();
  sub_219537EDC();

  swift_unknownObjectRelease();
}

uint64_t sub_219537D04(void *a1, uint64_t a2)
{
  v4 = sub_219BE12E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_219BE12D4();
  sub_219BDB084();
  swift_allocObject();
  sub_219BDB074();
  sub_2187AFC94(&qword_280EE8088, MEMORY[0x277D2F130], MEMORY[0x277D2F138]);
  v9 = sub_219BDB064();
  v11 = v10;

  v12 = *(a2 + OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults);
  v13 = sub_219BDB9E4();
  v14 = sub_219BF53D4();
  [v12 setObject:v13 forKey:v14];
  sub_2186C6190(v9, v11);

  return (*(v5 + 8))(v7, v4);
}

void sub_219537EDC()
{
  v1 = v0;
  v9 = MEMORY[0x277D84F98];
  v10 = MEMORY[0x277D84F98];
  v2 = sub_218E940FC();

  v3 = v1;
  sub_219538370(v2, v3, &v10, &v9);

  v4 = *&v3[OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults];
  v5 = sub_219BF5204();
  v6 = sub_219BF53D4();
  [v4 setObject:v5 forKey:v6];

  v7 = sub_219BF5204();
  v8 = sub_219BF53D4();
  [v4 setObject:v7 forKey:v8];
}

id NotificationAppExtensionCommunicator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationAppExtensionCommunicator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_219538224(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v5;
  v15 = sub_21870F700(a3, a4);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v16;
  if (v14[3] < v20)
  {
    sub_219487690(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_21870F700(a3, a4);
    if ((v6 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = sub_219BF79A4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v24 = v15;
    sub_219496524();
    v15 = v24;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_21948FC00(v15, a3, a4, a1, a2, v14);

    v23 = xmmword_219C87330;
    goto LABEL_11;
  }

LABEL_6:
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v22 = v14[7] + 16 * v15;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
LABEL_11:
  *a5 = v23;
  *v7 = v14;
}

void sub_219538370(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v45 = a2;
  v54 = sub_219BE09E4();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB024();
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BDF104();
  v12 = *(v52 - 8);
  v13 = MEMORY[0x28223BE20](v52);
  v51 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v16 = 0;
    v47 = v15 & 0xFFFFFFFFFFFFFF8;
    v48 = v15 & 0xC000000000000001;
    v42 = (v7 + 8);
    v43 = OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_channelDataFactory;
    v40 = v15;
    v41 = (v12 + 8);
    v7 = i;
    v44 = v9;
    while (v48)
    {
      v17 = MEMORY[0x21CECE0F0](v16, v15, v13);
      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_16;
      }

LABEL_9:
      v18 = *(v17 + 16);
      v57 = &unk_282B7DDA8;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        v55 = v17;
        v49 = v18;
        v50 = v12;
        v19 = *(v45 + v43);
        swift_unknownObjectRetain();
        sub_219BE01F4();
        sub_219BDB084();
        swift_allocObject();
        sub_219BDB074();
        sub_219BDB014();
        sub_219BDB034();
        sub_2187AFC94(&qword_280EE8888, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8C0]);
        v20 = sub_219BDB064();
        if (v5)
        {
        }

        else
        {
          v22 = v20;
          v23 = v21;

          v24 = *(v55 + 16);
          sub_218B87528(v22, v23);
          v25 = [v24 identifier];
          v26 = sub_219BF5414();
          v39 = v19;
          v28 = v27;

          sub_219538224(v22, v23, v26, v28, &v56);

          sub_2186C6190(v22, v23);
          sub_218822A58(v56, *(&v56 + 1));
        }

        v9 = v44;
        sub_219BE01E4();
        swift_allocObject();
        sub_219BDB074();
        sub_219BDB014();
        sub_219BDB034();
        sub_2187AFC94(&unk_280EE8260, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9C8]);
        v29 = sub_219BDB064();
        v31 = v30;

        v32 = *(v55 + 16);
        sub_218B87528(v29, v31);
        v33 = [v32 identifier];
        v34 = sub_219BF5414();
        v36 = v35;

        sub_219538224(v29, v31, v34, v36, &v56);

        v5 = 0;
        swift_unknownObjectRelease();
        v15 = v40;
        sub_2186C6190(v29, v31);
        sub_218822A58(v56, *(&v56 + 1));
        (*v42)(v9, v54);
        (*v41)(v51, v52);

        v7 = i;
        v12 = v50;
      }

      else
      {
      }

      ++v16;
      if (v12 == v7)
      {
        return;
      }
    }

    if (v16 >= *(v47 + 16))
    {
      goto LABEL_17;
    }

    v17 = *(v15 + 8 * v16 + 32);

    v12 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_219538940(__n128 a1)
{
  sub_219BEF0B4();
  v1 = *(v8 + 16);

  v2 = *(v1 + 32);

  v3 = [v2 backingTag];

  LODWORD(v2) = [v3 isMySports];
  swift_unknownObjectRelease();
  if (v2)
  {

    return 1;
  }

  else
  {
    sub_219BEF0B4();
    v5 = *(v8 + 16);

    v6 = *(v5 + 32);

    v7 = sub_219BF6394();

    LODWORD(v6) = [v7 isSportsEvent];
    swift_unknownObjectRelease();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

char *sub_219538A6C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_21953929C(0, &qword_280EE39F0, MEMORY[0x277D6EBB0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = (&v31.receiver - v13);
  v15 = OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v16 = OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = OBJC_IVAR____TtC7NewsUI29TitleView_chevron;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v19 = OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for SeeMoreButton(0)) initWithFrame_];
  v20 = OBJC_IVAR____TtC7NewsUI29TitleView_action;
  sub_21953929C(0, &qword_280EE39E0, MEMORY[0x277D6EBB8]);
  *&v4[v20] = [objc_allocWithZone(v21) init];
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView;
  v24 = *&v22[OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView];
  v25 = v22;
  [v25 addSubview_];
  [v25 sendSubviewToBack_];
  v26 = OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel;
  [v25 addSubview_];
  v27 = OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel;
  [v25 addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];
  v28 = *&v25[OBJC_IVAR____TtC7NewsUI29TitleView_action];
  *v14 = 1;
  (*(v12 + 104))(v14, *MEMORY[0x277D6EBA8], v11);
  v29 = v28;

  (*(v12 + 8))(v14, v11);
  [*&v25[v26] setNumberOfLines_];
  [*&v25[v27] setNumberOfLines_];

  return v25;
}

void sub_219538EE4(uint64_t a1)
{
  v2 = *v1;

  v3 = *(*(v2 + OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton) + qword_280EDD8D8);
}

void sub_219538F64()
{
  sub_2195390C8(&qword_280E92810, &unk_219C87464);

  JUMPOUT(0x21CEC1E40);
}

BOOL sub_219538FF0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_219BF5414();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 && ![*(v0 + OBJC_IVAR____TtC7NewsUI29TitleView_chevron) isHidden];
}

uint64_t sub_2195390C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TitleView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219539108()
{
  v1 = OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC7NewsUI29TitleView_chevron;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for SeeMoreButton(0)) initWithFrame_];
  v6 = OBJC_IVAR____TtC7NewsUI29TitleView_action;
  sub_21953929C(0, &qword_280EE39E0, MEMORY[0x277D6EBB8]);
  *(v0 + v6) = [objc_allocWithZone(v7) init];
  sub_219BF7514();
  __break(1u);
}

void sub_21953929C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA00C0;
  if (!qword_280EA00C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219539368(uint64_t a1)
{
  sub_2186F0704(319, &qword_280E8F220, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2189AE994(319);
    if (v2 <= 0x3F)
    {
      sub_2189AE9B4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_219539438@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_2189AE9B4(0);
  v69 = v3;
  v66 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v62 = v5;
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v68);
  v61 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v54 - v12;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v71 = &v54 - v17;
  sub_21953A260(0, &qword_280E8C938, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953A1A8();
  v23 = v70;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v70 = v15;
  v55 = v20;
  v57 = 0;
  v58 = v10;
  v59 = a1;
  v77 = 0;
  sub_219BF7674();
  v25 = v78;
  v26 = v79;
  v75 = 1;
  sub_219BF7674();
  v27 = v76;
  v74 = 2;
  sub_218B824E4();
  v28 = sub_219BF7684();
  v73 = 3;
  sub_2186DF908(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v29 = v62;
  sub_219BF7674();
  v72 = 4;
  sub_2186DF908(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  v30 = v60;
  v56 = v19;
  v54 = v22;
  sub_219BF7674();
  v31 = 43200.0;
  if (!v26)
  {
    v31 = v25;
  }

  v32 = v61;
  *v61 = v31;
  *(v32 + 8) = (v27 == 2) | v27 & 1;
  if (v28)
  {
    v33 = v68;
    v34 = v64;
    v36 = v70;
    v35 = v71;
  }

  else
  {
    sub_2186F0704(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_219C09EC0;
    v33 = v68;
    v34 = v64;
    v36 = v70;
    if (qword_280EB0610 != -1)
    {
      swift_once();
      v36 = v70;
    }

    v37 = byte_280F61A98 | 0x80;
    *(v28 + 32) = qword_280F61A90;
    *(v28 + 40) = v37;
    *(v28 + 48) = 5;
    *(v28 + 56) = 0;
    v35 = v71;
  }

  *(v32 + 2) = v28;
  sub_2189AF794(v35, v36, sub_2189AF720);
  v38 = *(v34 + 48);
  if (v38(v36, 1, v29) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v39 = v63;
    sub_219BEE974();
    v40 = v38(v36, 1, v29);
    v41 = v39;
    v42 = v58;
    v43 = v29;
    if (v40 != 1)
    {
      sub_2189AF7FC(v36, sub_2189AF720);
      v43 = v29;
    }
  }

  else
  {
    v41 = v63;
    (*(v34 + 32))(v63, v36, v29);
    v42 = v58;
    v43 = v29;
  }

  v44 = v32;
  (*(v34 + 32))(v32 + *(v33 + 28), v41, v43);
  sub_2189AF794(v30, v42, sub_2189AF700);
  v45 = v66;
  v46 = *(v66 + 48);
  v47 = v69;
  if (v46(v42, 1, v69) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    v48 = v30;
    v49 = v42;
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v50 = v65;
    sub_219BEEC74();
    sub_2189AF7FC(v48, sub_2189AF700);
    sub_2189AF7FC(v71, sub_2189AF720);
    (*(v55 + 8))(v54, v56);
    v51 = v46(v42, 1, v47);
    v52 = v67;
    v53 = v59;
    if (v51 != 1)
    {
      sub_2189AF7FC(v49, sub_2189AF700);
    }
  }

  else
  {
    sub_2189AF7FC(v30, sub_2189AF700);
    sub_2189AF7FC(v71, sub_2189AF720);
    (*(v55 + 8))(v54, v56);
    v50 = v65;
    (*(v45 + 32))(v65, v42, v47);
    v52 = v67;
    v53 = v59;
  }

  (*(v45 + 32))(v44 + *(v68 + 32), v50, v47);
  sub_21953A1FC(v44, v52);
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_219539D60(void *a1)
{
  v3 = v1;
  sub_21953A260(0, &qword_27CC1B7D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953A1A8();
  sub_219BF7B44();
  v14 = 0;
  sub_219BF7814();
  if (!v2)
  {
    v13 = 1;
    sub_219BF7804();
    v12 = *(v3 + 16);
    v11[15] = 2;
    sub_2186F0704(0, &qword_280E8F220, MEMORY[0x277D83940]);
    sub_218B82734();
    sub_219BF7834();
    type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs(0);
    v11[14] = 3;
    sub_2189AE994(0);
    sub_2186DF908(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
    sub_219BF7834();
    v11[13] = 4;
    sub_2189AE9B4(0);
    sub_2186DF908(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_21953A02C()
{
  v1 = *v0;
  v2 = 0x6E69576863746566;
  v3 = 0xD000000000000015;
  v4 = 0x73656C7572;
  if (v1 != 3)
  {
    v4 = 0x6C6F6F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x456F54706D616C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21953A0D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21953A3DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21953A100(uint64_t a1)
{
  v2 = sub_21953A1A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21953A13C(uint64_t a1)
{
  v2 = sub_21953A1A8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21953A1A8()
{
  result = qword_280EA00E8;
  if (!qword_280EA00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA00E8);
  }

  return result;
}

uint64_t sub_21953A1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21953A260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21953A1A8();
    v7 = a3(a1, &type metadata for LegacyNewspaperTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21953A2D8()
{
  result = qword_27CC1B7D8;
  if (!qword_27CC1B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B7D8);
  }

  return result;
}

unint64_t sub_21953A330()
{
  result = qword_280EA00D8;
  if (!qword_280EA00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA00D8);
  }

  return result;
}

unint64_t sub_21953A388()
{
  result = qword_280EA00E0;
  if (!qword_280EA00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA00E0);
  }

  return result;
}

uint64_t sub_21953A3DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x456F54706D616C63 && a2 == 0xEE006E6F69746964 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CE9730 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_21953A598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = sub_21927DBBC;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;
  v16[4] = sub_21953A9F8;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_218C1CBB4;
  v16[3] = &block_descriptor_135;
  v15 = _Block_copy(v16);

  [v13 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v15);
}

void sub_21953A6D8(id a1, id a2, uint64_t a3, void (*a4)(uint64_t, unint64_t), uint64_t a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        swift_unknownObjectRetain();
        sub_219BF7974();
        __break(1u);
        return;
      }

      if ([a1 respondsToSelector_])
      {
        v16 = [swift_unknownObjectRetain() issueArticleRecirculationConfig];
        if (v16)
        {
          v17 = v16;
          v18 = sub_219BF5414();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0xE000000000000000;
        }

        a4(v18, v20);
        goto LABEL_21;
      }

      sub_21953AA08();
      v21 = swift_allocError();
      *v22 = 2;
      swift_unknownObjectRetain();
      v23 = v21;
    }

    else
    {
      v8 = [swift_unknownObjectRetain() articleRecirculationConfigJSON];
      if (v8)
      {
        v9 = v8;
        v10 = sub_219BF5414();
        v12 = v11;

        a4(v10, v12);
LABEL_21:

        swift_unknownObjectRelease();
        return;
      }

      sub_21953AA08();
      v23 = swift_allocError();
      v21 = v23;
      *v26 = 1;
    }

    a6(v23);
    swift_unknownObjectRelease();
    v25 = v21;
  }

  else
  {
    if (a2)
    {
      v13 = a2;
      v14 = a2;
      v15 = v13;
    }

    else
    {
      sub_21953AA08();
      v15 = swift_allocError();
      v13 = v15;
      *v24 = 0;
    }

    a6(v15);
    v25 = v13;
  }
}

uint64_t sub_21953A940(uint64_t a1)
{
  sub_21953A9A8();
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_21953A9A8()
{
  if (!qword_280EE6B80)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6B80);
    }
  }
}

unint64_t sub_21953AA08()
{
  result = qword_27CC1B7E8;
  if (!qword_27CC1B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B7E8);
  }

  return result;
}

unint64_t sub_21953AA70()
{
  result = qword_27CC1B7F0;
  if (!qword_27CC1B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B7F0);
  }

  return result;
}

uint64_t sub_21953AAD4(uint64_t a1)
{
  v2 = sub_21953ACB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21953AB10(uint64_t a1)
{
  v2 = sub_21953ACB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21953AB4C(void *a1)
{
  sub_21953AC58(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953ACB4();
  sub_219BF7B44();
  return (*(v4 + 8))(v6, v3);
}

void sub_21953AC58(uint64_t a1)
{
  if (!qword_27CC1B800)
  {
    sub_21953ACB4();
    v1 = sub_219BF7864();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1B800);
    }
  }
}

unint64_t sub_21953ACB4()
{
  result = qword_27CC1B808;
  if (!qword_27CC1B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B808);
  }

  return result;
}

unint64_t sub_21953AD1C()
{
  result = qword_27CC1B810;
  if (!qword_27CC1B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B810);
  }

  return result;
}

unint64_t sub_21953AD74()
{
  result = qword_27CC1B818;
  if (!qword_27CC1B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B818);
  }

  return result;
}

unint64_t sub_21953ADDC()
{
  result = qword_27CC1B820;
  if (!qword_27CC1B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B820);
  }

  return result;
}

uint64_t sub_21953AE30()
{
  v0 = sub_219BDF464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB804();
  sub_219BDF454();
  sub_21953AF64();
  sub_219BDCCC4();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_21953AF64()
{
  result = qword_280EE87C0;
  if (!qword_280EE87C0)
  {
    sub_219BDF464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE87C0);
  }

  return result;
}

double sub_21953AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 40))(a1, ObjectType, v9);
  if (v11)
  {
    v13 = v11;
    sub_2189A407C(0);
    if (a4)
    {

      v14 = sub_219BE5F84();
      v16 = v15;
      v17 = 2;
    }

    else
    {
      a3 = sub_219BE5F84();
      a4 = v18;
      v14 = 0;
      v16 = 0;
      v17 = 0;
    }

    __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
    v19 = a3;
    v20 = a4;
    v21 = v14;
    v22 = v16;
    v23 = v17;
    sub_2194E2860(v13, &v19);

    return sub_21896FC30(v19, v20, v21, v22, v23);
  }

  return result;
}

void *sub_21953B0F8(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_21953B21C();
  result = sub_219BE1E34();
  if (v9)
  {
    sub_2186CB1F0(&v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v4 = sub_219BDE9E4();
    v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    v6 = v5;
    [v6 setModalPresentationStyle_];
    sub_2187C5110(0);
    v7 = sub_219BEA784();
    v7(v6);

    __swift_destroy_boxed_opaque_existential_1(v10);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21953B21C()
{
  result = qword_27CC1B828;
  if (!qword_27CC1B828)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC1B828);
  }

  return result;
}

uint64_t sub_21953B2D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BEB674();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_219BEB594();
}

uint64_t sub_21953B330()
{
  v0 = sub_219BEB674();
  __swift_allocate_value_buffer(v0, qword_280F62410);
  __swift_project_value_buffer(v0, qword_280F62410);
  return sub_219BEB594();
}

uint64_t sub_21953B398(void *a1)
{
  v2 = sub_219BDE294();
  v57 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C19FB4(0);
  v58 = v5;
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E5AF0(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_219BDD534();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for UserNotification.DeliveryStatus(0);
  *&v18 = MEMORY[0x28223BE20](v17 - 8).n128_u64[0];
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 notification];
  v22 = [v21 request];

  sub_218C1A090();
  (*(*(v23 - 8) + 56))(v20, 2, 2, v23);
  v24 = objc_allocWithZone(type metadata accessor for UserNotification(0));
  v25 = sub_2196575B8(v22, v20);

  sub_218A7A6E8(v25 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v16);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v51 = v25;
    v52 = v2;
    v53 = v7;
    v26 = *v16;
    v27 = v16[1];
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v28 = qword_280F61750;
    sub_2186E5AF0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C09BA0;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_2186FC3BC();
    *(v29 + 32) = v26;
    *(v29 + 40) = v27;

    v30 = sub_219BF6214();
    sub_219BE5314("Received end of track notification response for article: %{public}@", 67, 2, &dword_2186C1000, v28, v30, v29);

    v31 = sub_219BDB954();
    v32 = *(*(v31 - 8) + 56);
    v32(v10, 1, 1, v31);
    sub_219BDD514();
    sub_2187B2C48(0);
    v34 = v33;
    v35 = swift_allocBox();
    v37 = v36;
    v38 = *(v34 + 48);
    sub_2187B2DA0(0);
    v40 = *(v39 + 48);
    v32(v10, 1, 1, v31);
    v41 = v57;
    v42 = v52;
    (*(v57 + 104))(v4, *MEMORY[0x277D2FF08], v52);
    sub_219BDD894();
    (*(v41 + 8))(v4, v42);
    sub_218838478(v10);
    *(v37 + v40) = &unk_282A27FB0;
    *(v37 + v38) = MEMORY[0x277D84F90];
    v43 = v53;
    *v53 = v35 | 2;
    (*(v56 + 104))(v43, *MEMORY[0x277D6E710], v58);
    sub_2186E5AF0(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v44 = sub_219BE3014();

    (*(v54 + 8))(v13, v55);
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v45 = qword_280F61750;
    v46 = sub_219BF61F4();
    sub_219BE5314("EndOfTrackNotificationResponseHandler cannot handle non-endOfTrack notification responses", 89, 2, &dword_2186C1000, v45, v46, MEMORY[0x277D84F90]);
    v47 = sub_219BE8DC4();
    sub_21953BAF0(v48);
    swift_allocError();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D6E2B0], v47);
    sub_2186E5AF0(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v44 = sub_219BE2FF4();

    sub_2187ADBD4(v16);
  }

  return v44;
}

unint64_t sub_21953BAF0(double a1)
{
  result = qword_27CC0F1E0;
  if (!qword_27CC0F1E0)
  {
    sub_219BE8DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F1E0);
  }

  return result;
}

uint64_t type metadata accessor for WeatherTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280EADD08;
  if (!qword_280EADD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21953BBBC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953C0EC(0, &qword_27CC1B830, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953C098();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 5;
    v13 = type metadata accessor for WeatherTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21953BE24(void *a1)
{
  v3 = v1;
  sub_21953C0EC(0, &qword_27CC1B840, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953C098();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for WeatherTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21953BFF0(uint64_t a1)
{
  v2 = sub_21953C098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21953C02C(uint64_t a1)
{
  v2 = sub_21953C098();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21953C098()
{
  result = qword_27CC1B838;
  if (!qword_27CC1B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B838);
  }

  return result;
}

void sub_21953C0EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21953C098();
    v7 = a3(a1, &type metadata for WeatherTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21953C164()
{
  result = qword_27CC1B848;
  if (!qword_27CC1B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B848);
  }

  return result;
}

unint64_t sub_21953C1BC()
{
  result = qword_27CC1B850;
  if (!qword_27CC1B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B850);
  }

  return result;
}

unint64_t sub_21953C214()
{
  result = qword_27CC1B858;
  if (!qword_27CC1B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B858);
  }

  return result;
}

Swift::Void __swiftcall CachePreFlushTask.finish()()
{
  v1 = (v0 + OBJC_IVAR___TSCachePreFlushTask_block);
  v2 = *(v0 + OBJC_IVAR___TSCachePreFlushTask_block);
  if (v2)
  {
    v3 = v1[1];

    v2(v4);
    sub_2187FABEC(v2, v3);
    v5 = *v1;
  }

  else
  {
    v5 = 0;
  }

  v6 = v1[1];
  *v1 = 0;
  v1[1] = 0;

  sub_2187FABEC(v5, v6);
}

uint64_t sub_21953C2F0(uint64_t a1, uint64_t a2)
{

  v2 = sub_219BE2E54();
  sub_219BE21A4();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void sub_21953C36C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    _s7NewsUI220CacheFlushingManagerC06enableD0yyF_0();
  }
}

double _s7NewsUI220CacheFlushingManagerC06enableD0yyF_0()
{
  v1 = sub_219BED174();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR___TSCacheFlushingManager_preFlushGroup);
  v13[1] = *(v0 + OBJC_IVAR___TSCacheFlushingManager_updateQueue);
  v13[2] = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21953CCE4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_30_3;
  v11 = _Block_copy(aBlock);

  sub_219BED1A4();
  v13[3] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
  sub_219BF7164();
  sub_219BF6654();
  _Block_release(v11);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  return result;
}

id CacheFlushingManager.createPreFlushTask()()
{
  dispatch_group_enter(*(v0 + OBJC_IVAR___TSCacheFlushingManager_preFlushGroup));
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for CachePreFlushTask();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___TSCachePreFlushTask_block];
  *v4 = sub_2187E8A60;
  *(v4 + 1) = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

double sub_21953C790(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR___TSCacheFlushingManager_storageLevelProvider), *(Strong + OBJC_IVAR___TSCacheFlushingManager_storageLevelProvider + 24));

    sub_219BE2CF4();

    sub_219BE2184();

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = 2 - v6;

    sub_219BE3494();
  }

  return result;
}

char *sub_21953C888(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR___TSCacheFlushingManager_cacheFlusher];
    v5 = result;
    swift_unknownObjectRetain();

    [v4 enableFlushingWithFlushingThreshold_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id CacheFlushingManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CachePreFlushTask.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR___TSCachePreFlushTask_block];
  v4 = *&v0[OBJC_IVAR___TSCachePreFlushTask_block];
  if (v4)
  {
    v5 = v3[1];

    v4(v6);
    sub_2187FABEC(v4, v5);
    v7 = *v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_2187FABEC(v7, v8);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

id CachePreFlushTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21953CD2C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21953CE28(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21953CF10(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21953D008@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21953D148(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21953D038(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x637461427473616CLL;
  v4 = 0xEB00000000686374;
  v5 = 0x6142646E61707865;
  v6 = 0xED00006863746142;
  v7 = 0x70696B536C6F6F70;
  if (v2 != 3)
  {
    v7 = 0x7461427974706D65;
    v6 = 0xEA00000000006863;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x637461427478656ELL;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xE900000000000068;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

unint64_t sub_21953D0F4()
{
  result = qword_27CC1B890;
  if (!qword_27CC1B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B890);
  }

  return result;
}

unint64_t sub_21953D148(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21953D1AC(uint64_t a1)
{
  v2 = sub_21953E014();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21953D1EC()
{
  result = qword_27CC1B8A0;
  if (!qword_27CC1B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B8A0);
  }

  return result;
}

void *sub_21953D288(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a5;
  v86 = a3;
  v87 = a2;
  v88 = a1;
  v97 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v97);
  v90 = (&v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v91 = &v71 - v7;
  sub_21898BF70(0);
  v9 = v8;
  v94 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v99 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = &v71 - v12;
  v82 = sub_219BE6DF4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953DEA0(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v85 = v14;
  v84 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v71 - v15);
  sub_21953DEA0(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  v18 = v17;
  v79 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v78 = &v71 - v19;
  sub_21898BEA4(0);
  v96 = v20;
  v75 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v76 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - v23;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953DEA0(0, &qword_280EE5840, MEMORY[0x277D6D710]);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v77 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v71 - v33;
  sub_219BEA8B4();
  v83 = v18;
  sub_219BEB244();

  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_21953DFB4(v27, sub_21898BBC4);
    sub_21953DF60();
    *v16 = swift_allocError();
    v35 = v84;
    v36 = v85;
    (*(v84 + 104))(v16, *MEMORY[0x277D6DF68], v85);
    v87(v16);
    return (*(v35 + 8))(v16, v36);
  }

  v73 = v16;
  (*(v30 + 32))(v34, v27, v29);
  sub_219BE6974();
  sub_2186CC2FC(&qword_280EE7568, sub_21898BEA4, MEMORY[0x277D6CC48]);
  v38 = sub_219BF5E44();
  v74 = v29;
  v72 = v30;
  v93 = v34;
  if (v38)
  {
    v39 = v38;
    v101 = MEMORY[0x277D84F90];
    sub_218C342A8(0, v38 & ~(v38 >> 63), 0);
    v40 = v101;
    v92 = v24;
    result = sub_219BF5DF4();
    if ((v39 & 0x8000000000000000) == 0)
    {
      v41 = (v94 + 16);
      v42 = (v94 + 32);
      v89 = (v94 + 8);
      v43 = v91;
      while (1)
      {
        v44 = sub_219BF5EC4();
        (*v41)(v99);
        v44(v100, 0);
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v45 = sub_219BE5B24();
          v47 = v46;

          if (v45 == sub_219BE5B24() && v47 == v48)
          {

LABEL_16:
            *v90 = v95;
            swift_storeEnumTagMultiPayload();
            sub_2186CC2FC(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
            sub_219BE5FB4();

            (*v89)(v99, v9);
            v43 = v91;
            goto LABEL_17;
          }

          v50 = sub_219BF78F4();

          if (v50)
          {
            goto LABEL_16;
          }

          v43 = v91;
        }

        else
        {
          sub_21953DFB4(v43, type metadata accessor for TagFeedModel);
        }

        (*v42)(v98, v99, v9);
LABEL_17:
        v101 = v40;
        v52 = *(v40 + 16);
        v51 = *(v40 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_218C342A8((v51 > 1), v52 + 1, 1);
          v40 = v101;
        }

        *(v40 + 16) = v52 + 1;
        (*(v94 + 32))(v40 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v52, v98, v9);
        v53 = v92;
        v54 = v96;
        sub_219BF5E94();
        if (!--v39)
        {
          (*(v75 + 8))(v53, v54);
          v55 = v83;
          v56 = v79;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
    (*(v75 + 8))(v24, v96);
    v40 = MEMORY[0x277D84F90];
    v55 = v83;
    v56 = v79;
LABEL_22:
    sub_219BE6934();
    v57 = v100[0];
    v58 = sub_219BE5B94();
    v59 = sub_219444A98(v58, v57);

    v100[0] = v59;
    v60 = sub_2186CC2FC(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
    v61 = sub_2186CC2FC(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v40, v9, v60, v61);
    sub_2186F7410();
    sub_2186CC2FC(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v62 = v77;
    sub_219BE6924();
    v63 = v78;
    (*(v56 + 16))(v78, v88, v55);
    sub_219BEB234();
    v64 = v56;
    v65 = v81;
    v66 = v80;
    v67 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x277D6D868], v82);
    sub_218D5BF28();
    v68 = v73;
    sub_219BE85A4();
    (*(v65 + 8))(v66, v67);
    v87(v68);
    (*(v84 + 8))(v68, v85);
    (*(v64 + 8))(v63, v83);
    v69 = *(v72 + 8);
    v70 = v74;
    v69(v62, v74);
    return (v69)(v93, v70);
  }

  return result;
}

void sub_21953DEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186CC2FC(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21953DF60()
{
  result = qword_27CC1B8A8;
  if (!qword_27CC1B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B8A8);
  }

  return result;
}

uint64_t sub_21953DFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21953E014()
{
  result = qword_27CC1B8B0;
  if (!qword_27CC1B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B8B0);
  }

  return result;
}

unint64_t sub_21953E07C()
{
  result = qword_27CC1B8B8;
  if (!qword_27CC1B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B8B8);
  }

  return result;
}

uint64_t sub_21953E0E0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v79 = a3;
  v80 = a2;
  sub_218C6994C(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v81 = v5;
  v78 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v77 = (v62 - v6);
  v69 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v69);
  v67 = (v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C6994C(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v9 = v8;
  v75 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = v62 - v10;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v14 = v13;
  v76 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v70 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v74 = v62 - v17;
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v73 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (v62 - v26);
  v68 = v3;
  v66 = *v3;
  swift_beginAccess();

  sub_219BEB1C4();
  v28 = v23;

  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    v29 = sub_218A7BA30;
    v30 = v20;
LABEL_5:
    sub_21953ED40(v30, v29);
    sub_21953ECEC();
    v33 = swift_allocError();
    v35 = v77;
    v34 = v78;
    *v77 = v33;
    v36 = v81;
    (*(v34 + 104))(v35, *MEMORY[0x277D6DF68], v81);
    v80(v35);
    return (*(v34 + 8))(v35, v36);
  }

  (*(v23 + 32))(v27, v20, v22);

  v31 = v72;
  sub_219BEB244();

  v32 = v76;
  if ((*(v76 + 48))(v31, 1, v14) == 1)
  {
    (*(v28 + 8))(v27, v22);
    v29 = sub_218A2D984;
    v30 = v31;
    goto LABEL_5;
  }

  v64 = v28;
  v65 = v22;
  v38 = v74;
  (*(v32 + 32))(v74, v31, v14);
  v39 = v70;
  (*(v32 + 16))(v70, v38, v14);
  v40 = *(v75 + 16);
  v41 = v71;
  v62[1] = v75 + 16;
  v62[0] = v40;
  v40(v71, a1, v9);
  v42 = v68;
  v43 = sub_21953E99C(v68);
  v44 = v42[1];
  v45 = v42[2];
  v63 = v9;
  v46 = v41;
  v47 = sub_2189B8010(v66, v44, v45, v43 & 1);
  *v67 = v47;
  swift_storeEnumTagMultiPayload();
  sub_218C698F4();
  v66 = v47;

  sub_219BE5FB4();
  v68 = v27;
  v48 = v46;
  v72 = v14;
  sub_219BE69E4();
  v49 = v63;
  sub_219BEB234();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  if (sub_219BE6E54())
  {
    v50 = MEMORY[0x277D6DF80];
    v51 = v77;
  }

  else
  {
    sub_218A2DA58(0);
    v53 = *(v52 + 48);
    v51 = v77;
    (v62[0])(v77, v48, v49);
    v54 = *MEMORY[0x277D6D868];
    v55 = sub_219BE6DF4();
    (*(*(v55 - 8) + 104))(v51 + v53, v54, v55);
    v50 = MEMORY[0x277D6DF70];
  }

  v56 = v78;
  v57 = v81;
  (*(v78 + 104))(v51, *v50, v81);
  v80(v51);

  (*(v56 + 8))(v51, v57);
  v58 = *(v64 + 8);
  v59 = v65;
  v58(v73, v65);
  (*(v75 + 8))(v48, v49);
  v60 = *(v76 + 8);
  v61 = v72;
  v60(v39, v72);
  v60(v74, v61);
  v58(v68, v59);
  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t sub_21953E99C(uint64_t *a1)
{
  v2 = sub_219BF2CB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BF2634();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v11 = OBJC_IVAR___TSEditorialItem_backingTag;
  swift_beginAccess();
  v12 = *(v10 + v11);
  __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
  if (v12)
  {
    *v5 = v12;
    (*(v3 + 104))(v5, *MEMORY[0x277D33B98], v2);
    swift_unknownObjectRetain_n();
    sub_219BF4794();
    (*(v3 + 8))(v5, v2);
    v13 = sub_219BF2614();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = (v10 + OBJC_IVAR___TSEditorialItem_identifier);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    *v5 = v15;
    v5[1] = v16;
    (*(v3 + 104))(v5, *MEMORY[0x277D33B80], v2);

    sub_219BF4794();
    (*(v3 + 8))(v5, v2);
    v13 = sub_219BF2614();
  }

  (*(v7 + 8))(v9, v6);
  return v13 & 1;
}

uint64_t sub_21953EC58(uint64_t a1)
{
  v2 = sub_218B12988();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21953EC98()
{
  result = qword_27CC1B8C0;
  if (!qword_27CC1B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B8C0);
  }

  return result;
}

unint64_t sub_21953ECEC()
{
  result = qword_27CC1B8C8;
  if (!qword_27CC1B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B8C8);
  }

  return result;
}

uint64_t sub_21953ED40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21953EDB4()
{
  result = qword_27CC1B8D0;
  if (!qword_27CC1B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B8D0);
  }

  return result;
}

uint64_t sub_21953EE08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953F618(0, &qword_27CC1B900, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ForYouRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953F560();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21953F67C(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21953F5B4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21953F0B4(uint64_t a1)
{
  v2 = sub_21953F560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21953F0F0(uint64_t a1)
{
  v2 = sub_21953F560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21953F16C(void *a1)
{
  sub_21953F618(0, &qword_27CC1B910, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953F560();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21953F67C(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21953F3CC(uint64_t a1)
{
  result = sub_21953F67C(&unk_27CC1C600, type metadata accessor for ForYouRecipesTagFeedGroup, &unk_219C881F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21953F424(void *a1)
{
  a1[1] = sub_21953F67C(&qword_27CC1B8E8, type metadata accessor for ForYouRecipesTagFeedGroup, &unk_219C8811C);
  a1[2] = sub_21953F67C(&qword_27CC1B8F0, type metadata accessor for ForYouRecipesTagFeedGroup, &unk_219C881C8);
  result = sub_21953F67C(&qword_27CC1B8F8, type metadata accessor for ForYouRecipesTagFeedGroup, &unk_219C881A0);
  a1[3] = result;
  return result;
}

uint64_t sub_21953F4D0(uint64_t a1)
{
  v2 = sub_21953F67C(&qword_27CC1B8E8, type metadata accessor for ForYouRecipesTagFeedGroup, &unk_219C8811C);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_21953F560()
{
  result = qword_27CC1B908;
  if (!qword_27CC1B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B908);
  }

  return result;
}

uint64_t sub_21953F5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouRecipesTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21953F618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21953F560();
    v7 = a3(a1, &type metadata for ForYouRecipesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21953F67C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21953F6D8()
{
  result = qword_27CC1B918;
  if (!qword_27CC1B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B918);
  }

  return result;
}

unint64_t sub_21953F730()
{
  result = qword_27CC1B920;
  if (!qword_27CC1B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B920);
  }

  return result;
}

unint64_t sub_21953F788()
{
  result = qword_27CC1B928;
  if (!qword_27CC1B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B928);
  }

  return result;
}

uint64_t type metadata accessor for ForYouRecipesTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9D878;
  if (!qword_280E9D878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21953F850@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FD80(0, &qword_280E8C8D0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953FD2C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 27;
    v13 = type metadata accessor for ForYouRecipesTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21953FAB8(void *a1)
{
  v3 = v1;
  sub_21953FD80(0, &qword_27CC1B930, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21953FD2C();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for ForYouRecipesTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21953FC84(uint64_t a1)
{
  v2 = sub_21953FD2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21953FCC0(uint64_t a1)
{
  v2 = sub_21953FD2C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21953FD2C()
{
  result = qword_280E9D8A8;
  if (!qword_280E9D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D8A8);
  }

  return result;
}

void sub_21953FD80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21953FD2C();
    v7 = a3(a1, &type metadata for ForYouRecipesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21953FDF8()
{
  result = qword_27CC1B938;
  if (!qword_27CC1B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B938);
  }

  return result;
}

unint64_t sub_21953FE50()
{
  result = qword_280E9D898;
  if (!qword_280E9D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D898);
  }

  return result;
}

unint64_t sub_21953FEA8()
{
  result = qword_280E9D8A0;
  if (!qword_280E9D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D8A0);
  }

  return result;
}

void sub_21953FF10(uint64_t a1)
{
  if (!qword_280E92280)
  {
    type metadata accessor for ForYouRecipesTagFeedGroupConfigData(255);
    sub_21953FFDC(&qword_280E9D888, type metadata accessor for ForYouRecipesTagFeedGroupConfigData, &unk_219C883BC);
    sub_21953FFDC(&qword_280E9D890, type metadata accessor for ForYouRecipesTagFeedGroupConfigData, &unk_219C88394);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92280);
    }
  }
}

uint64_t sub_21953FFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ForYouRecipesTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA6870;
  if (!qword_280EA6870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219540084(uint64_t a1)
{
  sub_21953FF10(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ForYouRecipesTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510, MEMORY[0x277D33778], 1);
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EBE990, &protocol descriptor for FoodClusteringServiceType, 1);
        if (v4 <= 0x3F)
        {
          sub_2186C709C(319, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
          if (v5 <= 0x3F)
          {
            sub_2186C709C(319, &qword_280EE9E00, MEMORY[0x277D33810], 1);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2195401C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_219540268(a1, a2);
}

uint64_t sub_219540268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_219BF2034();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_219540360;

  return sub_219541230(a2);
}

uint64_t sub_219540360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;

  if (v3)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2195404B4, 0, 0);
  }
}

uint64_t sub_2195404B4()
{
  v1 = v0[4];
  v2 = (v1 + *(type metadata accessor for ForYouRecipesTagFeedGroupEmitter(0) + 36));
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_219540584;
  v6 = v0[9];

  return MEMORY[0x282192288](v6, v4, v3);
}

uint64_t sub_219540584(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_219540AAC;
  }

  else
  {
    v4 = sub_219540698;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219540698()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[11];
  if (v2 >= v3)
  {
    sub_2195421BC(v0[13], v0[7]);

    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2195408A0;
    v9 = v0[7];
    v10 = v0[3];

    return sub_2195426A0(v10, v9);
  }

  else
  {

    v4 = sub_219BEEDD4();
    sub_21953FFDC(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v5 = v3;
    v5[1] = v2;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D32400], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2195408A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_219540B20;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_2195409C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2195409C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_219542C34(v0[17], v0[2]);

  (*(v2 + 8))(v1, v3);
  sub_218A59C84(0);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_219540AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219540B20()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219540BBC@<X0>(uint64_t *a1@<X8>)
{
  sub_21953FF10(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x6000000000000006;
  return result;
}

uint64_t sub_219540C3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  a2[4] = sub_21953FFDC(&qword_280EACA40, type metadata accessor for ForYouRecipesTagFeedGroupKnobs, &unk_219C89B50);
  a2[5] = sub_21953FFDC(&qword_27CC1B960, type metadata accessor for ForYouRecipesTagFeedGroupKnobs, &unk_219C89B28);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_219542F38(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_219540CFC(uint64_t a1)
{
  type metadata accessor for ForYouRecipesTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_2186E4B0C(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_218C6FAA0(0);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_219540EAC()
{
  sub_21953FF10(0);

  return sub_219BEDCA4();
}

uint64_t sub_219540ED8@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E4B0C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21953FF10(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21942FE88(inited + 32, sub_2188317B0);
  sub_219542F9C(0);
  a2[3] = v6;
  a2[4] = sub_21953FFDC(&qword_27CC1B970, sub_219542F9C, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21954105C(uint64_t a1)
{
  sub_21953FFDC(&qword_27CC1B950, type metadata accessor for ForYouRecipesTagFeedGroupEmitter, &unk_219C8854C);

  return sub_219BE2324();
}

uint64_t sub_219541230(uint64_t a1)
{
  v2[109] = v1;
  v2[108] = a1;
  v3 = sub_219BF0354();
  v2[110] = v3;
  v2[111] = *(v3 - 8);
  v2[112] = swift_task_alloc();
  v4 = sub_219BF0BD4();
  v2[113] = v4;
  v2[114] = *(v4 - 8);
  v2[115] = swift_task_alloc();
  v5 = sub_219BEF9C4();
  v2[116] = v5;
  v2[117] = *(v5 - 8);
  v2[118] = swift_task_alloc();
  v2[119] = type metadata accessor for FoodBestOfRecipesClusteringRequest(0);
  v2[120] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195413DC, 0, 0);
}

uint64_t sub_2195413DC()
{
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 968) = __swift_project_value_buffer(v1, qword_280F62598);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "ForYouRecipes emitter fetching clusters...", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BEF164();
  v5 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v5;
  v6 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v6;
  v7 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v7;
  v8 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v8;
  *(v0 + 976) = *(v0 + 176);

  sub_218A410EC(v0 + 144);
  v9 = swift_task_alloc();
  *(v0 + 984) = v9;
  *v9 = v0;
  v9[1] = sub_2195415F0;

  return MEMORY[0x2821D23D8](v0 + 784);
}

uint64_t sub_2195415F0()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_21942F2BC;
  }

  else
  {

    v2 = sub_21954170C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21954170C(uint64_t a1)
{
  v2 = *(v1 + 784);
  *(v1 + 1000) = v2;
  v3 = *(v1 + 792);
  *(v1 + 1008) = v3;
  v4 = *(v1 + 800);
  *(v1 + 1016) = v4;
  v5 = *(v1 + 808);
  *(v1 + 1024) = v5;
  if (v5 < 0)
  {
    swift_willThrow();
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    goto LABEL_5;
  }

  if (v5)
  {
    sub_218F98174();
    swift_allocError();
    swift_willThrow();
LABEL_5:
    sub_218C6F990(v2, v3, v4, v5);
LABEL_9:

    v24 = *(v1 + 8);

    return v24();
  }

  v49 = v5;
  v51 = v3;
  v53 = v4;
  v7 = *(v1 + 920);
  v8 = *(v1 + 912);
  v9 = *(v1 + 904);
  v55 = *(v1 + 992);
  (*(*(v1 + 936) + 104))(*(v1 + 944), *MEMORY[0x277D32840], *(v1 + 928));
  v48 = type metadata accessor for ForYouRecipesTagFeedGroupEmitter(0);
  type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  v57 = v2;

  sub_219BEF134();
  sub_219BEF524();
  v10 = *(v8 + 8);
  v10(v7, v9);
  v47 = *(v1 + 816);
  sub_219BEF134();
  sub_219BEF524();
  v10(v7, v9);
  v46 = *(v1 + 824);
  sub_219BEF1F4();
  sub_219BEF134();
  sub_219BEF524();

  v10(v7, v9);
  v45 = *(v1 + 832);
  sub_219BEF1B4();
  sub_219BEF134();
  sub_219BEF524();

  v10(v7, v9);
  v56 = *(v1 + 840);
  sub_219BEF1D4();
  sub_219BEF134();
  sub_219BEF524();

  v10(v7, v9);
  sub_219BEF134();
  v11 = v10;
  sub_219BEF524();
  v10(v7, v9);
  v12 = *(v1 + 1072);
  sub_219BEF164();
  if (v55)
  {
    v13 = *(v1 + 944);
    v14 = *(v1 + 936);
    v15 = *(v1 + 928);
    v16 = *(v1 + 896);
    v17 = *(v1 + 888);
    v18 = *(v1 + 880);

    sub_218C6F990(v57, v51, v53, v49);

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
    goto LABEL_9;
  }

  v19 = *(v1 + 384);
  *(v1 + 496) = *(v1 + 368);
  *(v1 + 512) = v19;
  v20 = *(v1 + 352);
  *(v1 + 464) = *(v1 + 336);
  *(v1 + 480) = v20;
  v21 = *(v1 + 288);
  *(v1 + 400) = *(v1 + 272);
  *(v1 + 416) = v21;
  v22 = *(v1 + 320);
  *(v1 + 432) = *(v1 + 304);
  *(v1 + 448) = v22;
  v23 = *(v1 + 488);

  sub_218A410EC(v1 + 400);
  sub_219BEF164();
  v54 = v23;
  v26 = *(v1 + 608);
  *(v1 + 720) = *(v1 + 592);
  *(v1 + 736) = v26;
  v27 = *(v1 + 640);
  *(v1 + 752) = *(v1 + 624);
  *(v1 + 768) = v27;
  v28 = *(v1 + 544);
  *(v1 + 656) = *(v1 + 528);
  *(v1 + 672) = v28;
  v29 = *(v1 + 576);
  *(v1 + 688) = *(v1 + 560);
  *(v1 + 704) = v29;
  v52 = *(v1 + 768);

  sub_218A410EC(v1 + 656);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v30 = *(v1 + 960);
  v31 = *(v1 + 952);
  v38 = *(v1 + 936);
  v39 = *(v1 + 928);
  v40 = *(v1 + 944);
  v32 = *(v1 + 920);
  v33 = *(v1 + 904);
  v44 = *(v1 + 896);
  v41 = *(v1 + 888);
  v42 = *(v1 + 880);
  v50 = *(v1 + 872);
  v43 = qword_280F61708;
  sub_219BEF234();
  sub_219BEF134();
  sub_219BEF524();

  v11(v32, v33);
  v37 = *(v1 + 848);
  sub_219BEF224();
  sub_219BEF134();
  sub_219BEF524();

  v11(v32, v33);
  v34 = *(v1 + 856);
  *v30 = v57;
  (*(v38 + 32))(v30 + v31[5], v40, v39);
  *(v30 + v31[6]) = v47;
  *(v30 + v31[7]) = v46;
  *(v30 + v31[8]) = v45;
  *(v30 + v31[9]) = v56;
  (*(v41 + 32))(v30 + v31[10], v44, v42);
  *(v30 + v31[11]) = v12;
  *(v30 + v31[12]) = v54;
  *(v30 + v31[13]) = v52;
  *(v30 + v31[14]) = v43;
  *(v30 + v31[15]) = v37;
  *(v30 + v31[16]) = v34;
  __swift_project_boxed_opaque_existential_1((v50 + *(v48 + 28)), *(v50 + *(v48 + 28) + 24));
  v35 = swift_task_alloc();
  *(v1 + 1032) = v35;
  *v35 = v1;
  v35[1] = sub_219541E64;
  v36 = *(v1 + 960);

  return sub_2194FF428(v36);
}

uint64_t sub_219541E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[130] = a1;
  v5[131] = a2;
  v5[132] = a3;
  v5[133] = v3;

  if (v3)
  {
    v6 = sub_21942F1F8;
  }

  else
  {
    v6 = sub_219541F84;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219541F84()
{
  v24 = v0;

  v1 = sub_219BE5414();
  v2 = sub_219BF6214();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[132];
    v4 = v0[131];
    v5 = v0[130];
    v20 = v0[127];
    v21 = v0[128];
    v6 = v0[126];
    v7 = v0[125];
    v22 = v0[120];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = sub_2194FD4A0(v5, v4, v3);
    v12 = sub_2186D1058(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v1, v2, "ForYouRecipes emitter fetched recipes for you cluster=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);

    sub_218C6F990(v7, v6, v20, v21);
    v13 = v22;
  }

  else
  {
    v14 = v0[120];
    sub_218C6F990(v0[125], v0[126], v0[127], v0[128]);

    v13 = v14;
  }

  sub_21942FE88(v13, type metadata accessor for FoodBestOfRecipesClusteringRequest);

  v15 = v0[1];
  v16 = v0[132];
  v17 = v0[131];
  v18 = v0[130];

  return v15(v18, v17, v16);
}

void *sub_2195421BC@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_2186E4B0C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_219BF3C84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_219BF3E84();
  v28 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v6;
  v30 = a2;
  if (!v12)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_14:
    sub_218F0B984(v21);
    sub_218F0BA7C(v21);
    sub_218F0BB90(v21);
    v22 = v31;
    sub_219BF3E74();
    sub_2186E4B0C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v23 = v28;
    v24 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09BA0;
    (*(v23 + 16))(v25 + v24, v22, v32);
    v26 = sub_219BEC004();
    (*(*(v26 - 8) + 56))(v29, 1, 1, v26);
    sub_219A95188(v21);
    sub_219A95188(v21);
    sub_219A951A0(v21);
    sub_219A951B8(v21);
    sub_219A952CC(v21);
    sub_219A952E4(v21);
    sub_219A953F8(v21);
    sub_219BF2024();
    return (*(v23 + 8))(v31, v32);
  }

  v13 = a1;
  v36 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v36;
    v17 = v13;
    v35 = v13 & 0xC000000000000001;
    v34 = *MEMORY[0x277D34120];
    v33 = v8 + 32;
    do
    {
      if (v35)
      {
        v18 = MEMORY[0x21CECE0F0](v15, v17);
      }

      else
      {
        v18 = *(v17 + 8 * v15 + 32);
      }

      *v10 = v18;
      (*(v8 + 104))(v10, v34, v7);
      v36 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C34A88((v19 > 1), v20 + 1, 1);
        v16 = v36;
      }

      ++v15;
      *(v16 + 16) = v20 + 1;
      (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v10, v7);
      v17 = v13;
    }

    while (v12 != v15);
    v21 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2195426A0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E4B0C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[8] = swift_task_alloc();
  sub_2186E4B0C(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[9] = swift_task_alloc();
  sub_2186E4B0C(0, &qword_280E91A70, sub_2189AD5C8, v4);
  v3[10] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for ForYouRecipesTagFeedGroupConfigData(0);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21954288C, 0, 0);
}

uint64_t sub_21954288C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v21 = *(v0 + 64);
  v6 = type metadata accessor for ForYouRecipesTagFeedGroupEmitter(0);
  v7 = (v5 + *(v6 + 24));
  v23 = v7[4];
  v24 = v7[3];
  __swift_project_boxed_opaque_existential_1(v7, v24);
  sub_21953FF10(0);
  v25 = v2;
  sub_219BEDD14();
  v22 = *(v1 + 20);
  *(v0 + 144) = v22;
  v8 = *(v6 + 20);
  sub_2189AD5C8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v4, v5 + v8, v9);
  (*(v11 + 56))(v4, 0, 1, v10);
  sub_219BEF0B4();
  v12 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v13 = sub_219BF35D4();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  *(v0 + 148) = 27;
  sub_218C6F8FC(0);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v14 = *(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v15 = sub_219BF2774();
  (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  v16 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v16 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_218C6F2E0;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);

  return MEMORY[0x2821921B8](v25 + v22, v19, v18, v24, v23);
}

uint64_t sub_219542C34@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v12 = a1;
  v15 = a3;
  sub_2186E4B0C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v13 = &v12 - v4;
  v5 = sub_219BEF554();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v14 = sub_219BED8D4();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FF10(0);

  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for ForYouRecipesTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v10 = sub_219BEE5D4();
  (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
  sub_219BED844();
  (*(v7 + 32))(v15, v9, v14);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219542F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_219542FD0(uint64_t a1)
{
  sub_21896FA3C(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *(v1 + 64);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v30 = v11;
  v12 = v11 | 0x7000000000000004;
  v13 = *(v1 + 72);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v10;
  sub_2187B14CC(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    v15 = qword_280ED32D0;

    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {

    sub_21874504C(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v12;
  v33 = sub_219BDD274();
  *&v32 = v13;
  sub_2189B4E2C(v9, v6);
  sub_2187B14CC(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  sub_2189B4EAC(v6, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v16, v18);
  sub_21874504C(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_21874504C(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v29);
  sub_21874504C(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t sub_2195435A0(uint64_t a1)
{
  sub_21896FA3C(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = *(v1 + 64);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = v11 | 0x7000000000000004;
  v13 = *(v1 + 72);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27[5] = v10;
  sub_219BDC8D4();

  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v27[4] = v12;
  v27[3] = sub_219BDD274();
  v27[0] = v13;
  sub_2189B4E2C(v9, v6);
  v15 = MEMORY[0x277D2D578];
  sub_2187B14CC(v28, v25, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_2189B4EAC(v6, v18 + v16);
  v19 = v18 + v17;
  v20 = v25[1];
  *v19 = v25[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v26;
  v21 = (v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v21 = 0;
  v21[1] = 0;
  sub_2186CF94C(0);
  sub_2189B4DD4();
  swift_retain_n();
  v22 = sub_219BEB454();

  sub_21874504C(v28, &qword_280EE33A0, &qword_280EE33B0, v15, sub_2186C6F70);
  sub_218A42D80(v9);
  sub_21874504C(v27, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return v22;
}

uint64_t sub_21954393C(_BYTE *a1)
{
  *(v2 + 64) = v1;
  sub_21875FCD0(0, &qword_27CC1B990, type metadata accessor for MyRecipeItem.Resolved, MEMORY[0x277D83D88]);
  *(v2 + 72) = swift_task_alloc();
  v4 = type metadata accessor for MyRecipeItem.Resolved(0);
  *(v2 + 80) = v4;
  *(v2 + 88) = *(v4 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *(type metadata accessor for MyRecipeItem(0) - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 209) = *a1;

  return MEMORY[0x2822009F8](sub_219543AC8, 0, 0);
}

uint64_t sub_219543AC8()
{
  v14 = v0;
  if (qword_27CC085D8 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_27CCD8B10);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 209);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0x6F42657069636552;
    }

    else
    {
      v7 = 0x6948657069636552;
    }

    if (v4)
    {
      v8 = 0xE900000000000078;
    }

    else
    {
      v8 = 0xED000079726F7473;
    }

    v9 = sub_2186D1058(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v2, v3, "Fetching recipes for dataSource=%s...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v10 = *(v0 + 209);
  *(v0 + 136) = CACurrentMediaTime();
  *(v0 + 208) = v10;
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v11[1] = sub_219543CD8;

  return sub_219544A58((v0 + 208));
}

uint64_t sub_219543CD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_2195448AC;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_219543E00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219543E00()
{
  v40 = v0;
  v4 = sub_219A781D0(*(*(*(v0 + 64) + 152) + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_maxNumberOfItems), *(v0 + 160));
  if ((v3 & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = v3;
  v8 = v2;
  v9 = v1;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v7 >> 1, v8))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v11 != (v7 >> 1) - v8)
  {
LABEL_30:
    swift_unknownObjectRelease();
    v3 = v7;
    v2 = v8;
    v1 = v9;
LABEL_2:
    sub_218B67490(v4, v1, v2, v3);
    v6 = v5;
    goto LABEL_9;
  }

  v6 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v6)
  {
    goto LABEL_10;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:

  v12 = sub_219BE5414();
  v13 = sub_219BF6214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 209);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 134218242;
    *(v15 + 4) = *(v6 + 16);

    *(v15 + 12) = 2080;
    if (v14)
    {
      v17 = 0x6F42657069636552;
    }

    else
    {
      v17 = 0x6948657069636552;
    }

    if (v14)
    {
      v18 = 0xE900000000000078;
    }

    else
    {
      v18 = 0xED000079726F7473;
    }

    v19 = sub_2186D1058(v17, v18, &v39);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_2186C1000, v12, v13, "Fetching (%ld) recipes for dataSource=%s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CECF960](v16, -1, -1);
    MEMORY[0x21CECF960](v15, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 64);
  *(v0 + 56) = v6;
  sub_21875FCD0(0, &qword_27CC1B978, type metadata accessor for MyRecipeItem, MEMORY[0x277D83940]);
  sub_219547890();
  sub_219547918();
  *(v0 + 168) = sub_219BF56C4();
  sub_218718690(v20 + 96, v0 + 16);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  v23 = *(v6 + 16);
  if (v23)
  {
    v37 = v22;
    v38 = v21;
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    v39 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v23, 0);
    v26 = v39;
    v27 = v6 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v28 = *(v24 + 72);
    do
    {
      v29 = *(v0 + 120);
      sub_219547970(v27, v29);
      v30 = *v29;
      v31 = *(v25 + 8);

      sub_2195479D4(v29);
      v39 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21870B65C((v32 > 1), v33 + 1, 1);
        v26 = v39;
      }

      *(v26 + 16) = v33 + 1;
      v34 = v26 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      v27 += v28;
      --v23;
    }

    while (v23);

    v22 = v37;
    v21 = v38;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  *(v0 + 176) = v26;
  v35 = swift_task_alloc();
  *(v0 + 184) = v35;
  *v35 = v0;
  v35[1] = sub_219544244;

  return MEMORY[0x282192298](v26, v21, v22);
}

uint64_t sub_219544244(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {

    v4 = sub_219544938;
  }

  else
  {
    v4 = sub_219544390;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219544390()
{
  v44 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 209);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v43[0] = v5;
    *v4 = 136315394;
    if (v3)
    {
      v6 = 0x6F42657069636552;
    }

    else
    {
      v6 = 0x6948657069636552;
    }

    if (v3)
    {
      v7 = 0xE900000000000078;
    }

    else
    {
      v7 = 0xED000079726F7473;
    }

    v8 = sub_2186D1058(v6, v7, v43);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    sub_219BF5CD4();
    *(v4 + 14) = v9;
    _os_log_impl(&dword_2186C1000, v1, v2, "Fetched recipes for dataSource=%s, time elapsed=%f", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x21CECF960](v5, -1, -1);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v10 = *(v0 + 192);
  v43[0] = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
LABEL_25:
    v11 = sub_219BF7214();
    v12 = *(v0 + 192);
    if (v11)
    {
LABEL_11:
      v13 = 0;
      v14 = *(v0 + 64);
      v40 = v10 & 0xFFFFFFFFFFFFFF8;
      v41 = v10 & 0xC000000000000001;
      v15 = v12 + 32;
      do
      {
        if (v41)
        {
          v16 = MEMORY[0x21CECE0F0](v13, *(v0 + 192));
        }

        else
        {
          if (v13 >= *(v40 + 16))
          {
            goto LABEL_24;
          }

          v16 = *(v15 + 8 * v13);
        }

        v17 = v16;
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v10 = __swift_project_boxed_opaque_existential_1((v14 + 160), *(v14 + 184));
        if (sub_219BF37D4())
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          v10 = v43;
          sub_219BF73E4();
        }

        ++v13;
      }

      while (v18 != v11);
      v19 = v43[0];

      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v10;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v19 = MEMORY[0x277D84F90];

  if ((v19 & 0x8000000000000000) == 0)
  {
LABEL_27:
    if ((v19 & 0x4000000000000000) == 0)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        goto LABEL_29;
      }

      goto LABEL_46;
    }
  }

LABEL_45:
  while (1)
  {
    v20 = sub_219BF7214();
    if (!v20)
    {
      break;
    }

LABEL_29:
    v21 = 0;
    v39 = *(v0 + 88);
    v42 = v19 & 0xC000000000000001;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v42)
      {
        v23 = MEMORY[0x21CECE0F0](v21, v19);
      }

      else
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_44;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v26 = v19;
      v27 = v20;
      v28 = *(v0 + 168);
      v30 = *(v0 + 72);
      v29 = *(v0 + 80);
      v43[0] = v23;
      sub_2195456A8(v43, v28, v30);

      if ((*(v39 + 48))(v30, 1, v29) == 1)
      {
        sub_219547A30(*(v0 + 72), &qword_27CC1B990, type metadata accessor for MyRecipeItem.Resolved);
        v20 = v27;
        v19 = v26;
      }

      else
      {
        v32 = *(v0 + 96);
        v31 = *(v0 + 104);
        sub_219547AA0(*(v0 + 72), v31, type metadata accessor for MyRecipeItem.Resolved);
        sub_219547AA0(v31, v32, type metadata accessor for MyRecipeItem.Resolved);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2191FADC8(0, v22[2] + 1, 1, v22);
        }

        v34 = v22[2];
        v33 = v22[3];
        v20 = v27;
        if (v34 >= v33 >> 1)
        {
          v22 = sub_2191FADC8((v33 > 1), v34 + 1, 1, v22);
        }

        v19 = v26;
        v35 = *(v0 + 96);
        v22[2] = v34 + 1;
        sub_219547AA0(v35, v22 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34, type metadata accessor for MyRecipeItem.Resolved);
      }

      ++v21;
      if (v25 == v20)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

LABEL_46:
  v22 = MEMORY[0x277D84F90];
LABEL_47:

  v36 = v22[2];

  v37 = *(v0 + 8);

  return v37(v22, v36);
}

uint64_t sub_2195448AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219544938()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195449CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  sub_218774F78((v0 + 25));

  return swift_deallocClassInstance();
}

uint64_t sub_219544A58(_BYTE *a1)
{
  *(v2 + 16) = v1;
  v4 = sub_219BED284();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  sub_21875FCD0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  *(v2 + 48) = swift_task_alloc();
  v5 = sub_219BDBD34();
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  v6 = type metadata accessor for MyRecipeItem(0);
  *(v2 + 80) = v6;
  *(v2 + 88) = *(v6 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  v7 = sub_219BED384();
  *(v2 + 120) = v7;
  *(v2 + 128) = *(v7 - 8);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 176) = *a1;

  return MEMORY[0x2822009F8](sub_219544CAC, 0, 0);
}

uint64_t sub_219544CAC()
{
  v1 = *(v0 + 16);
  if (*(v0 + 176))
  {
    v2 = v1[10];
    v3 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_2195452D0;

    return MEMORY[0x28218EA08](v2, v3);
  }

  else
  {
    v6 = v1[5];
    v5 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_219544DF8;

    return MEMORY[0x28218EA98](v6, v5);
  }
}

uint64_t sub_219544DF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219544F98, 0, 0);
  }
}

uint64_t sub_219544F98()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v32 = v0[11];
    v33 = v0[13];
    v31 = v0[10];
    v4 = v0[8];
    v6 = *(v3 + 16);
    v3 += 16;
    v5 = v6;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v8 = *(v3 + 56);
    v39 = (v4 + 48);
    v28 = (v4 + 32);
    v38 = (v3 - 8);
    v9 = MEMORY[0x277D84F90];
    v29 = v8;
    v30 = v6;
    do
    {
      v12 = v0[6];
      v11 = v0[7];
      v5(v0[17], v7, v0[15]);
      sub_219BED364();
      v13 = (*v39)(v12, 1, v11);
      v14 = v0[17];
      v15 = v0[15];
      if (v13 == 1)
      {
        v10 = v0[6];
        (*v38)(v0[17], v0[15]);
        sub_219547A30(v10, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }

      else
      {
        v36 = v0[14];
        v37 = v9;
        v16 = v0[13];
        v17 = v0[9];
        v18 = v0[7];
        v19 = *v28;
        (*v28)(v17, v0[6], v18);
        v20 = sub_219BED374();
        v34 = v21;
        v35 = v20;
        (*v38)(v14, v15);
        v19(v16 + *(v31 + 20), v17, v18);
        *v16 = v35;
        *(v33 + 8) = v34;
        v22 = v16;
        v9 = v37;
        sub_219547AA0(v22, v36, type metadata accessor for MyRecipeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2191FAD94(0, v37[2] + 1, 1, v37);
        }

        v24 = v9[2];
        v23 = v9[3];
        v8 = v29;
        v5 = v30;
        if (v24 >= v23 >> 1)
        {
          v9 = sub_2191FAD94((v23 > 1), v24 + 1, 1, v9);
        }

        v25 = v0[14];
        v9[2] = v24 + 1;
        sub_219547AA0(v25, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, type metadata accessor for MyRecipeItem);
      }

      v7 += v8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v26 = v0[1];

  return v26(v9);
}

uint64_t sub_2195452D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219545470, 0, 0);
  }
}

uint64_t sub_219545470()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v21 = v0[11];
    v22 = v0[12];
    v3 = v0[4];
    v23 = MEMORY[0x277D84F90];
    sub_218C379E0(0, v2, 0);
    v4 = v23;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v19 = *(v3 + 56);
    v20 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = v0[12];
      v9 = v0[5];
      v10 = v0[3];
      v20(v9, v6, v10);
      v11 = sub_219BED264();
      v13 = v12;
      sub_219BED274();
      (*v7)(v9, v10);
      *v8 = v11;
      *(v22 + 8) = v13;
      v15 = *(v23 + 16);
      v14 = *(v23 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_218C379E0((v14 > 1), v15 + 1, 1);
      }

      v16 = v0[12];
      *(v23 + 16) = v15 + 1;
      sub_219547AA0(v16, v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15, type metadata accessor for MyRecipeItem);
      v6 += v19;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v17 = v0[1];

  return v17(v4);
}

id sub_2195456A8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for MyRecipeItem(0);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v40 - v13;
  v15 = *a1;
  v16 = [*a1 identifier];
  v17 = sub_219BF5414();
  v19 = v18;

  if (*(a2 + 16))
  {
    v20 = sub_21870F700(v17, v19);
    v22 = v21;

    if (v22)
    {
      sub_219547970(*(a2 + 56) + *(v41 + 72) * v20, v7);
      v23 = v43;
      (*(v43 + 16))(v10, &v7[*(v42 + 20)], v8);
      sub_2195479D4(v7);
      v24 = *(v23 + 32);
      v24(v14, v10, v8);
      v25 = type metadata accessor for MyRecipeItem.Resolved(0);
      v26 = v44;
      v24(v44 + *(v25 + 20), v14, v8);
      *v26 = v15;
      (*(*(v25 - 8) + 56))(v26, 0, 1, v25);
      return v15;
    }
  }

  else
  {
  }

  if (qword_27CC085D8 != -1)
  {
    swift_once();
  }

  v28 = sub_219BE5434();
  __swift_project_value_buffer(v28, qword_27CCD8B10);
  v29 = v15;
  v30 = sub_219BE5414();
  v31 = sub_219BF61F4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v45 = v33;
    *v32 = 136315138;
    v34 = [v29 identifier];
    v35 = sub_219BF5414();
    v37 = v36;

    v38 = sub_2186D1058(v35, v37, &v45);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_2186C1000, v30, v31, "Recipe item does not have a date in history, id=%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x21CECF960](v33, -1, -1);
    MEMORY[0x21CECF960](v32, -1, -1);
  }

  v39 = type metadata accessor for MyRecipeItem.Resolved(0);
  return (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
}

void sub_219545ABC(unsigned __int8 *a1)
{
  v2 = v1;
  sub_21875FCD0(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = *a1;
  if (qword_27CC085D8 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_27CCD8B10);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    if (v7)
    {
      v13 = 0x6F42657069636552;
    }

    else
    {
      v13 = 0x6948657069636552;
    }

    if (v7)
    {
      v14 = 0xE900000000000078;
    }

    else
    {
      v14 = 0xED000079726F7473;
    }

    v15 = sub_2186D1058(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2186C1000, v9, v10, "Updating recipes for dataSource=%s...", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CECF960](v12, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  v16 = CACurrentMediaTime();
  v17 = sub_219BF5BF4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v2;
  *(v18 + 40) = v7;
  *(v18 + 48) = v16;

  sub_218AB3D80(0, 0, v6, &unk_219C88808, v18);
}

uint64_t sub_219545D70(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a1;
  *(v6 + 329) = a6;
  *(v6 + 64) = a5;
  sub_21875FCD0(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  *(v6 + 80) = swift_task_alloc();
  v7 = sub_219BDBD34();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v8 = type metadata accessor for MyRecipeItem.Resolved(0);
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v9 = type metadata accessor for MyRecipeItem(0);
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219545F70, 0, 0);
}

uint64_t sub_219545F70()
{
  v1 = *(*(v0 + 64) + 152);
  *(v0 + 184) = v1;
  *(v0 + 328) = *(v1 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_dataSource);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_219546028;

  return sub_219544A58((v0 + 328));
}

uint64_t sub_219546028(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_2195470CC;
  }

  else
  {
    v4 = sub_21954613C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21954613C()
{
  v50 = v0;
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_maxNumberOfItems;
  v3 = sub_219A781D0(*(v1 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_maxNumberOfItems), *(v0 + 200));
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((v8 & 1) == 0)
  {

LABEL_3:
    sub_218B67490(v3, v5, v7, v9);
    v11 = v10;
    goto LABEL_10;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v7))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v13 != (v9 >> 1) - v7)
  {
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v11)
  {
    goto LABEL_11;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  *(v0 + 56) = v11;
  sub_21875FCD0(0, &qword_27CC1B978, type metadata accessor for MyRecipeItem, MEMORY[0x277D83940]);
  sub_219547890();
  sub_219547918();
  *(v0 + 216) = sub_219BF56C4();
  if (qword_27CC085D8 != -1)
  {
    swift_once();
  }

  v14 = sub_219BE5434();
  *(v0 + 224) = __swift_project_value_buffer(v14, qword_27CCD8B10);
  swift_retain_n();

  v15 = sub_219BE5414();
  v16 = sub_219BF6214();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 200);
  v48 = v11;
  if (v17)
  {
    v19 = *(v0 + 329);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = v21;
    *v20 = 134218498;
    v46 = v2;
    v22 = v1;
    v23 = *(v18 + 16);

    *(v20 + 4) = v23;

    *(v20 + 12) = 2080;
    if (v19)
    {
      v24 = 0x6F42657069636552;
    }

    else
    {
      v24 = 0x6948657069636552;
    }

    if (v19)
    {
      v25 = 0xE900000000000078;
    }

    else
    {
      v25 = 0xED000079726F7473;
    }

    v26 = sub_2186D1058(v24, v25, &v49);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2048;
    v27 = *(v22 + v46);

    *(v20 + 24) = v27;

    _os_log_impl(&dword_2186C1000, v15, v16, "Updating (%ld) recipes for dataSource=%s, with maxNumberOfItems=%ld", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v28 = v21;
    v11 = v48;
    MEMORY[0x21CECF960](v28, -1, -1);
    MEMORY[0x21CECF960](v20, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_218718690(*(v0 + 64) + 96, v0 + 16);
  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
  v31 = *(v11 + 16);
  if (v31)
  {
    v45 = v30;
    v47 = v29;
    v32 = *(v0 + 176);
    v33 = *(v0 + 160);
    v49 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v31, 0);
    v34 = v49;
    v35 = v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v36 = *(v33 + 72);
    do
    {
      v37 = *(v0 + 176);
      sub_219547970(v35, v37);
      v38 = *v37;
      v39 = *(v32 + 8);

      sub_2195479D4(v37);
      v49 = v34;
      v41 = *(v34 + 16);
      v40 = *(v34 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_21870B65C((v40 > 1), v41 + 1, 1);
        v34 = v49;
      }

      *(v34 + 16) = v41 + 1;
      v42 = v34 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;
      v35 += v36;
      --v31;
    }

    while (v31);

    v30 = v45;
    v29 = v47;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  *(v0 + 232) = v34;
  v43 = swift_task_alloc();
  *(v0 + 240) = v43;
  *v43 = v0;
  v43[1] = sub_219546648;

  return MEMORY[0x282192298](v34, v29, v30);
}

uint64_t sub_219546648(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {

    v4 = sub_219547248;
  }

  else
  {
    v4 = sub_219546794;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219546794()
{
  v64 = v0;
  v1 = *(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v63 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v2; i = v0)
  {
    v3 = v0;
    v4 = 0;
    v0 = *(v0 + 64);
    v61 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v3 + 248) + 32;
    while (1)
    {
      if (v61)
      {
        v7 = MEMORY[0x21CECE0F0](v4, *(i + 248));
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v1 = __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
      if (sub_219BF37D4())
      {
      }

      else
      {
        v1 = &v63;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v4;
      if (v9 == v2)
      {
        v10 = v63;
        v0 = i;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v2 = sub_219BF7214();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_39;
  }

  for (j = *(v10 + 16); j; j = sub_219BF7214())
  {
    v12 = 0;
    v62 = *(v0 + 216);
    v54 = *(v0 + 152);
    v55 = *(v0 + 160);
    v52 = *(v0 + 120);
    v53 = *(v0 + 128);
    v13 = *(v0 + 96);
    v59 = v10 & 0xC000000000000001;
    v50 = (v13 + 32);
    v51 = (v13 + 16);
    v60 = MEMORY[0x277D84F90];
    v56 = j;
    v57 = v10;
    while (1)
    {
      if (v59)
      {
        v14 = MEMORY[0x21CECE0F0](v12, v10);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_38;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v14 identifier];
      v18 = sub_219BF5414();
      v20 = v19;

      if (*(v62 + 16))
      {
        v21 = sub_21870F700(v18, v20);
        v23 = v22;

        if (v23)
        {
          v24 = *(v0 + 168);
          v26 = *(v0 + 136);
          v25 = *(v0 + 144);
          v28 = *(v0 + 104);
          v27 = *(v0 + 112);
          v29 = *(v0 + 88);
          sub_219547970(*(v62 + 56) + *(v55 + 72) * v21, v24);
          (*v51)(v28, v24 + *(v54 + 20), v29);
          sub_2195479D4(v24);
          v30 = *v50;
          (*v50)(v27, v28, v29);
          v30(v26 + *(v52 + 20), v27, v29);
          *v26 = v15;
          sub_219547AA0(v26, v25, type metadata accessor for MyRecipeItem.Resolved);
          v31 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_2191FADC8(0, v60[2] + 1, 1, v60);
          }

          v33 = v31[2];
          v32 = v31[3];
          v60 = v31;
          v0 = i;
          j = v56;
          if (v33 >= v32 >> 1)
          {
            v60 = sub_2191FADC8((v32 > 1), v33 + 1, 1, v31);
          }

          v34 = *(i + 144);
          v60[2] = v33 + 1;
          sub_219547AA0(v34, v60 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v33, type metadata accessor for MyRecipeItem.Resolved);
          v10 = v57;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v12;
      if (v16 == j)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_41:
  *(v0 + 264) = v60;

  *(v0 + 272) = v60[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 280) = Strong;
  if (Strong)
  {
    v36 = *(*(v0 + 64) + 208);
    *(v0 + 288) = v36;
    *(v0 + 296) = swift_getObjectType();
    *(v0 + 304) = *(v36 + 8);
    *(v0 + 312) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x188B000000000000;
    sub_219BF5BD4();
    *(v0 + 320) = sub_219BF5BC4();
    v38 = sub_219BF5B44();

    return MEMORY[0x2822009F8](sub_219546E38, v38, v37);
  }

  else
  {

    v39 = sub_219BE5414();
    v40 = sub_219BF6214();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 329);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136315394;
      if (v41)
      {
        v44 = 0x6F42657069636552;
      }

      else
      {
        v44 = 0x6948657069636552;
      }

      if (v41)
      {
        v45 = 0xE900000000000078;
      }

      else
      {
        v45 = 0xED000079726F7473;
      }

      v46 = sub_2186D1058(v44, v45, &v63);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2048;
      sub_219BF5CD4();
      *(v42 + 14) = v47;
      _os_log_impl(&dword_2186C1000, v39, v40, "Updated recipes for dataSource=%s, time elapsed=%f", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x21CECF960](v43, -1, -1);
      v0 = i;
      MEMORY[0x21CECF960](v42, -1, -1);
    }

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_219546E38()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[8];

  v2(v6, &off_282A77D08, v5, v4, v1, v3);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_219546EF8, 0, 0);
}

uint64_t sub_219546EF8(uint64_t a1)
{
  v14 = v1;
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 329);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    if (v4)
    {
      v7 = 0x6F42657069636552;
    }

    else
    {
      v7 = 0x6948657069636552;
    }

    if (v4)
    {
      v8 = 0xE900000000000078;
    }

    else
    {
      v8 = 0xED000079726F7473;
    }

    v9 = sub_2186D1058(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    sub_219BF5CD4();
    *(v5 + 14) = v10;
    _os_log_impl(&dword_2186C1000, v2, v3, "Updated recipes for dataSource=%s, time elapsed=%f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_2195470CC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 80);
  v3 = *(v0 + 329);
  v4 = sub_219BF5BF4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_219BF5BD4();
  v5 = v1;
  v6 = sub_219BF5BC4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v3 & 1;
  *(v7 + 40) = v1;
  sub_218AB3D80(0, 0, v2, &unk_219C88820, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_219547248()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 256);
  v2 = *(v0 + 80);
  v3 = *(v0 + 329);
  v4 = sub_219BF5BF4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_219BF5BD4();
  v5 = v1;
  v6 = sub_219BF5BC4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v3 & 1;
  *(v7 + 40) = v1;
  sub_218AB3D80(0, 0, v2, &unk_219C88820, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2195473CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  sub_219BF5BD4();
  *(v5 + 24) = sub_219BF5BC4();
  v7 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_219547468, v7, v6);
}

uint64_t sub_219547468()
{
  v19 = v0;

  if (qword_27CC085D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B10);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    if (v7)
    {
      v11 = 0x6F42657069636552;
    }

    else
    {
      v11 = 0x6948657069636552;
    }

    if (v7)
    {
      v12 = 0xE900000000000078;
    }

    else
    {
      v12 = 0xED000079726F7473;
    }

    v13 = sub_2186D1058(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_2186C1000, v4, v5, "Failed to fetch recipes after user recipe fetch update event was observed, dataSource=%s, error=%@", v8, 0x16u);
    sub_219547A30(v9, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2195476F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_219545D70(v8, a1, v4, v5, v6, v7);
}

uint64_t sub_2195477CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_2195473CC(a1, v4, v5, v6, v7);
}

unint64_t sub_219547890()
{
  result = qword_27CC1B980;
  if (!qword_27CC1B980)
  {
    sub_21875FCD0(255, &qword_27CC1B978, type metadata accessor for MyRecipeItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B980);
  }

  return result;
}

unint64_t sub_219547918()
{
  result = qword_27CC1B988;
  if (!qword_27CC1B988)
  {
    type metadata accessor for MyRecipeItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B988);
  }

  return result;
}

uint64_t sub_219547970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyRecipeItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195479D4(uint64_t a1)
{
  v2 = type metadata accessor for MyRecipeItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219547A30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21875FCD0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219547AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_219547B08(uint64_t a1, char a2)
{
  if (a2 == 4 || a2 == 2)
  {
    v4 = v2;
    v6 = *(a1 + 16);
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v22 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v6, 0);
      v7 = v22;
      v8 = a1 + 40;
      do
      {
        v9 = *(v8 - 8);
        v10 = *(v9 + 16);
        j__swift_retain();
        j__swift_retain();
        j__swift_retain();
        v11 = [v10 identifier];
        v12 = sub_219BF5414();
        v14 = v13;

        j__swift_release(v9);
        j__swift_release(v9);
        j__swift_release(v9);
        v16 = *(v22 + 16);
        v15 = *(v22 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21870B65C((v15 > 1), v16 + 1, 1);
        }

        v8 += 16;
        *(v22 + 16) = v16 + 1;
        v17 = v22 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        --v6;
      }

      while (v6);
    }

    v18 = sub_218845F78(v7);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v4 + 208);
      ObjectType = swift_getObjectType();
      (*(v19 + 16))(v4, v18, ObjectType, v19);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_219547D4C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    v5[2] = v3;
    v5[3] = sub_219547E3C;
    v5[4] = v4;
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_219BE3494();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219547F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219547F4C@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v17[1] = a1;
  v17[2] = a3;
  v18 = a4;
  v4 = sub_219BEF2A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF974();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MyRecipesLayoutModel(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F258(0);
  sub_219BE75E4();
  (*(v9 + 32))(v11, v14, v8);
  swift_getObjectType();
  sub_219BEED04();
  v15 = sub_219BEF294();
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v11, v8);
  *v18 = v15;
  return result;
}

unint64_t sub_2195481A4()
{
  result = qword_27CC1AE10;
  if (!qword_27CC1AE10)
  {
    type metadata accessor for MyRecipesModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AE10);
  }

  return result;
}

uint64_t sub_2195481FC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 56);
  sub_218718690(v5 + 16, &v11);
  v10[0] = 0x657461647055;
  v10[1] = 0xE600000000000000;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v6;
  sub_219548508(v10, &v9);
  sub_2195483D8(0);
  swift_allocObject();
  sub_219548564();

  v7 = sub_219BE6E64();
  sub_2195485B8(v10);
  return v7;
}

uint64_t sub_2195482C8(uint64_t a1)
{
  sub_218718690(*v1 + 16, &v7);
  v6[0] = 0x64616F6C6552;
  v6[1] = 0xE600000000000000;
  v6[2] = a1;
  sub_21954837C(v6, &v5);
  sub_2195483D8(0);
  swift_allocObject();
  sub_219548460();

  v3 = sub_219BE6E64();
  sub_2195484B4(v6);
  return v3;
}

void sub_2195483D8(uint64_t a1)
{
  if (!qword_27CC1B998)
  {
    type metadata accessor for MyRecipesModel(255);
    sub_21895406C();
    sub_2195481A4();
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1B998);
    }
  }
}

unint64_t sub_219548460()
{
  result = qword_27CC1B9A0;
  if (!qword_27CC1B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B9A0);
  }

  return result;
}

unint64_t sub_219548564()
{
  result = qword_27CC1B9A8;
  if (!qword_27CC1B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B9A8);
  }

  return result;
}

uint64_t sub_21954860C()
{
  v1 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_feedContext;
  v2 = sub_219BF0BD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_formatContent;
  v4 = sub_219BF1904();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_feedKind;
  v6 = sub_219BF0634();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MyRecipesConfig(uint64_t a1)
{
  result = qword_27CC1B9B0;
  if (!qword_27CC1B9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2195487AC(uint64_t a1)
{
  result = sub_219BF0BD4();
  if (v2 <= 0x3F)
  {
    result = sub_219BF1904();
    if (v3 <= 0x3F)
    {
      result = sub_219BF0634();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2195488E0()
{
  if (*(*v0 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_dataSource))
  {
    return 0x6552206465766153;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_2195489D0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v62 = a2;
  sub_21954928C(0, &qword_27CC1B9C8, MEMORY[0x277D6DF88]);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = v53 - v7;
  sub_2195491F8(0);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953FB4(0);
  v12 = v11;
  v63 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v54 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = v53 - v15;
  sub_21954934C(0);
  MEMORY[0x28223BE20](v16 - 8);
  sub_2189540C0(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219549418(&qword_27CC1B9E0, sub_218953FB4, MEMORY[0x277D6D720]);
  v23 = sub_219549418(&qword_27CC1B9E8, sub_218953FB4, MEMORY[0x277D6D718]);
  v66 = v12;
  v24 = v22;
  v25 = a1;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v12, v24, v23);
  v26 = type metadata accessor for MyRecipesModel(0);
  v27 = sub_21895406C();
  v28 = sub_219549418(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
  v67 = v21;
  v55 = v28;
  v56 = v26;
  sub_219BEB2D4();
  v29 = sub_219549418(&qword_27CC0B188, sub_2189540C0, MEMORY[0x277D6EC70]);
  sub_219BF5DF4();
  sub_219BF5E84();
  v57 = v19;
  if (v69[0] == v70)
  {
    v30 = v60;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    v31 = v65;
    sub_21954F984(v3[2], v3[3], v3[4], v65);
    v32 = v67;
    sub_219BEB1E4();
    v63[1](v31, v66);
    v33 = v62;
  }

  else
  {
    v34 = v63;
    v53[1] = v27;
    (*(v19 + 16))(v10, v25, v18);
    v35 = *(v68 + 36);
    v53[2] = v25;
    sub_219BF5DF4();
    sub_219BF5E84();
    v36 = v54;
    v37 = v10;
    if (*&v10[v35] != v69[0])
    {
      v63 = v34 + 1;
      v64 = (v34 + 2);
      v68 = v35;
      do
      {
        v38 = sub_219BF5EC4();
        v39 = v66;
        (*v64)(v36);
        v38(v69, 0);
        sub_219BF5E94();
        __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
        v40 = v29;
        v41 = v36;
        v42 = v65;
        sub_2195506A8(v41, v4[2], v4[3], v4[4], v65);
        v43 = *v63;
        (*v63)(v41, v39);
        sub_219BEB1E4();
        v44 = v42;
        v36 = v41;
        v29 = v40;
        v43(v44, v39);
        sub_219BF5E84();
      }

      while (*(v37 + v68) != v69[0]);
    }

    sub_219549460(v37);
    v33 = v62;
    v30 = v60;
    v32 = v67;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v45 = v57;
  v46 = v58;
  if (v69[0] == v70)
  {
    sub_219BE85C4();
    v47 = v59;
  }

  else
  {
    sub_2195494BC(0);
    v49 = *(v48 + 64);
    (*(v45 + 16))(v46, v32, v18);
    sub_219549548();
    sub_219BE78F4();
    v50 = *MEMORY[0x277D6D868];
    v51 = sub_219BE6DF4();
    (*(*(v51 - 8) + 104))(&v46[v49], v50, v51);
    v47 = v59;
    (*(v59 + 104))(v46, *MEMORY[0x277D6DF78], v30);
  }

  v33(v46);
  (*(v47 + 8))(v46, v30);
  return (*(v45 + 8))(v32, v18);
}

unint64_t sub_21954915C()
{
  result = qword_27CC1B9C0;
  if (!qword_27CC1B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B9C0);
  }

  return result;
}

void sub_2195491F8(uint64_t a1)
{
  if (!qword_27CC1B9D0)
  {
    sub_2189540C0(255);
    sub_219549418(&qword_27CC0B188, sub_2189540C0, MEMORY[0x277D6EC70]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1B9D0);
    }
  }
}

void sub_21954928C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyRecipesSectionDescriptor;
    v8[1] = type metadata accessor for MyRecipesModel(255);
    v8[2] = sub_21895406C();
    v8[3] = sub_219549418(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21954934C(uint64_t a1)
{
  if (!qword_27CC1B9D8)
  {
    sub_218953FB4(255);
    sub_219549418(&qword_27CC1B9E0, sub_218953FB4, MEMORY[0x277D6D720]);
    sub_219549418(&qword_27CC1B9E8, sub_218953FB4, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1B9D8);
    }
  }
}

uint64_t sub_219549418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219549460(uint64_t a1)
{
  sub_2195491F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2195494BC(uint64_t a1)
{
  if (!qword_27CC1B9F0)
  {
    sub_2189540C0(255);
    sub_218A7BBF4();
    sub_219BE6DF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1B9F0);
    }
  }
}

unint64_t sub_219549548()
{
  result = qword_27CC1B9F8[0];
  if (!qword_27CC1B9F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1B9F8);
  }

  return result;
}

uint64_t sub_21954959C(uint64_t a1)
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

double sub_219549654(uint64_t a1, uint64_t a2)
{
  sub_21954B0B0(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_219BF5BF4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_218AB3D80(0, 0, v7, &unk_219C88DB0, v9);

  return result;
}

uint64_t sub_219549788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21954B0B0(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  v6[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219549838, 0, 0);
}

uint64_t sub_219549838()
{
  *(v0 + 80) = *(*(*(*(v0 + 16) + *(**(v0 + 16) + 136)) + 152) + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_dataSource);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_219549900;

  return sub_21954393C((v0 + 80));
}

uint64_t sub_219549900(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_219549B78;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_219549A34;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_219549A34()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_219BF5BF4();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_219BF5BD4();

  v8 = sub_219BF5BC4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v5;
  v9[5] = v1;
  v9[6] = v2;
  v9[7] = v6;
  v9[8] = v4;
  sub_218AB3D80(0, 0, v3, &unk_219C88DD0, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_219549B78()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_219BF5BF4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_219BF5BD4();

  v6 = v1;
  v7 = sub_219BF5BC4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  v8[5] = v4;
  v8[6] = v3;
  sub_218AB3D80(0, 0, v2, &unk_219C88DC0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_219549CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[8] = *a4;
  sub_219BF5BD4();
  v8[9] = sub_219BF5BC4();
  v10 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_219549D88, v10, v9);
}

uint64_t sub_219549D88()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  v0[2] = (*(*(v1 + 88) + 40))(v5, v4, *(v1 + 80));
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  sub_2195483D8(0);
  sub_2186EF78C(&qword_27CC1BA80, sub_2195483D8, MEMORY[0x277D6D890]);

  sub_219BE6EF4();

  v7 = v0[1];

  return v7();
}

uint64_t sub_219549EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_219BF5BD4();
  v6[5] = sub_219BF5BC4();
  v8 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_219549F90, v8, v7);
}

uint64_t sub_219549F90()
{

  if (qword_27CC085D8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B10);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, v4, v5, "Failed to fetch user's recipes, error=%@", v7, 0xCu);
    sub_218962D30(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  v11 = v0[3];

  v11();
  v12 = v0[1];

  return v12();
}

double sub_21954A120(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219BE6F24();

  return result;
}

uint64_t sub_21954A1A4()
{
  v78 = *v0;
  v1 = sub_219BDEA14();
  v79 = *(v1 - 8);
  v80 = v1;
  MEMORY[0x28223BE20](v1);
  v77 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF0634();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21954B0B0(0, &unk_280E90F00, MEMORY[0x277D32EE8]);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v56 - v6;
  sub_21954B0B0(0, &qword_280EE8D20, MEMORY[0x277D2FD40]);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v56 - v8;
  sub_21954B0B0(0, &unk_280EE8C40, MEMORY[0x277D30018]);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v56 - v10;
  v67 = sub_219BF0B74();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v56 - v13;
  v14 = sub_219BDEB14();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21954B0B0(0, &qword_280EE8E10, MEMORY[0x277D2FB40]);
  MEMORY[0x28223BE20](v16 - 8);
  v58 = &v56 - v17;
  v56 = sub_219BDDED4();
  v18 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_219BDDBF4();
  v82 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v56 - v23;
  sub_218C40320(0);
  v25 = v24;
  v66 = *(v24 - 8);
  v26 = v66;
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F1E48(0);
  sub_219BE5FC4();
  (*(v26 + 32))(v28, v31, v25);
  v57 = *(v0 + *(*v0 + 136));
  v32 = sub_219BF17D4();
  v34 = v33;
  v35 = sub_219BE5F84();
  *v20 = v32;
  v20[1] = v34;
  v20[2] = v35;
  v20[3] = v36;
  (*(v18 + 104))(v20, *MEMORY[0x277D2FDC0], v56);
  v37 = sub_219BDD944();
  (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
  v38 = v81;
  sub_219BDDBD4();
  v39 = v63;
  v61 = v25;
  v60 = v28;
  sub_219BF07D4();
  v58 = sub_219BF0AF4();
  v40 = *(v65 + 8);
  v41 = v67;
  v40(v39, v67);
  v42 = v64;
  sub_219BF07D4();
  sub_219BF0B44();
  v40(v42, v41);
  v43 = v62;
  (*(v82 + 16))(v59, v38, v62);
  v44 = *MEMORY[0x277D2FD28];
  v45 = sub_219BDDD94();
  v46 = *(v45 - 8);
  v47 = v69;
  (*(v46 + 104))(v69, v44, v45);
  (*(v46 + 56))(v47, 0, 1, v45);
  v49 = v74;
  v48 = v75;
  (*(v74 + 56))(v71, 1, 1, v75);
  v50 = v70;
  sub_219BDE4B4();
  v51 = sub_219BDE4D4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  (*(v49 + 16))(v76, *(v57 + 152) + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_feedKind, v48);
  v52 = v68;
  sub_219BDEB04();
  swift_getWitnessTable();
  v53 = v77;
  sub_219BDE2F4();
  sub_219BDEA04();
  sub_219BDEBC4();

  v54 = sub_219BDE9F4();
  (*(v79 + 8))(v53, v80);
  (*(v72 + 8))(v52, v73);
  (*(v82 + 8))(v81, v43);
  (*(v66 + 8))(v60, v61);
  return v54;
}

uint64_t *sub_21954ABBC()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21954AC98()
{
  sub_21954ABBC();

  return swift_deallocClassInstance();
}

double sub_21954AD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      type metadata accessor for MyRecipesInteractor(0, a3, a4, v8);

      sub_219547D4C(v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21954ADEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_219549788(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_3Tm_13(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_21954AF0C(uint64_t a1)
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

  return sub_219549EF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21954AFD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187609C8;

  return sub_219549CC0(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_21954B0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21954B104(uint64_t a1)
{
  v2 = sub_219BDD374();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC085D8 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_27CCD8B10);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_219BDD314();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_2186D1058(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2186C1000, v7, v8, "Did show viewer recipe, recipe=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

double sub_21954B338(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 80);
  (*(v3 + 40))(a1, a2, v4, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  sub_2195483D8(0);
  sub_2186EF78C(&qword_27CC1BA80, sub_2195483D8, MEMORY[0x277D6D890]);

  sub_219BE6EF4();

  return result;
}

double sub_21954B4AC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  (*(v2 + 48))(a1, v3, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  sub_2195483D8(0);
  sub_2186EF78C(&qword_27CC1BA80, sub_2195483D8, MEMORY[0x277D6D890]);

  sub_219BE6EF4();

  return result;
}

uint64_t sub_21954B644(uint64_t a1)
{
  result = sub_219BF0634();
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

uint64_t sub_21954B708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v41 = a1;
  v4 = *v2;
  v5 = sub_219BF0634();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BF1904();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_219BF0BD4();
  v11 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v4 + 80);
  v15 = *(v4 + 88);
  sub_219BEF9A4();
  sub_219BEF984();
  (*(v8 + 16))(v10, v38, v7);
  v38 = sub_219BEF994();
  v37 = v2[10];
  v16 = v41;
  v36 = sub_21954BB20(v41, v14, v15);
  v35 = v17;
  v34 = sub_21954BF6C(v16, v14, v15);
  v33 = v18;
  v20 = v42;
  v19 = v43;
  v21 = v40;
  (*(v42 + 16))(v40, v3 + qword_280EAFE60, v43);
  LODWORD(v41) = *(v3 + 32);
  type metadata accessor for MyRecipesConfig(0);
  v22 = swift_allocObject();
  (*(v11 + 32))(v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_feedContext, v13, v39);
  (*(v8 + 32))(v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_formatContent, v10, v7);
  v23 = (v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_layoutOptionsProvider);
  v24 = MEMORY[0x277D6E490];
  *v23 = v38;
  v23[1] = v24;
  v25 = v36;
  *(v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_log) = v37;
  v26 = 12;
  if ((v35 & 1) == 0)
  {
    v26 = v25;
  }

  *(v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_maxNumberOfItems) = v26;
  v27 = *&v34;
  if (v33)
  {
    v27 = 2592000.0;
  }

  *(v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_maxAge) = v27;
  (*(v20 + 32))(v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_feedKind, v21, v19);
  *(v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_dataSource) = v41;
  v28 = (v22 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_trackerObserver);
  *v28 = v3;
  v28[1] = &off_282A781D0;
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);

  sub_219554FE0(v22);
  v30 = v29;

  return v30;
}

uint64_t sub_21954BB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = type metadata accessor for SavedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v30 - v12;
  v14 = type metadata accessor for TagFeedGroup(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness, v19);
  v22 = swift_dynamicCast();
  v23 = *(v15 + 56);
  if (!v22)
  {
    v23(v9, 1, 1, v14);
    sub_21954C548(v9, sub_218A1299C);
    return 0;
  }

  v23(v9, 0, 1, v14);
  sub_21954C4E0(v9, v21, type metadata accessor for TagFeedGroup);
  sub_21954C4E0(v21, v17, type metadata accessor for TagFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 43)
  {
    v29 = v32;
    sub_21954C4E0(v17, v32, type metadata accessor for SavedRecipesTagFeedGroup);
    v25 = *(v29 + *(v33 + 20));
    v26 = type metadata accessor for SavedRecipesTagFeedGroup;
    v27 = v29;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 29)
  {
    sub_21954C4E0(v17, v6, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
    v25 = *&v6[*(v31 + 20)];
    v26 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
    v27 = v6;
LABEL_7:
    sub_21954C548(v27, v26);
    return v25;
  }

  sub_21954C548(v17, type metadata accessor for TagFeedGroup);
  return 0;
}

uint64_t sub_21954BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v25 - v11;
  v13 = type metadata accessor for TagFeedGroup(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v25 - v19;
  (*(v10 + 16))(v12, a1, AssociatedTypeWitness, v18);
  v21 = swift_dynamicCast();
  v22 = *(v14 + 56);
  if (v21)
  {
    v22(v8, 0, 1, v13);
    sub_21954C4E0(v8, v20, type metadata accessor for TagFeedGroup);
    sub_21954C4E0(v20, v16, type metadata accessor for TagFeedGroup);
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_21954C4E0(v16, v5, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v23 = *&v5[*(v26 + 24)];
      sub_21954C548(v5, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      return v23;
    }

    else
    {
      sub_21954C548(v16, type metadata accessor for TagFeedGroup);
      return 0;
    }
  }

  else
  {
    v22(v8, 1, 1, v13);
    sub_21954C548(v8, sub_218A1299C);
    return 0;
  }
}

uint64_t sub_21954C31C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  v1 = qword_280EAFE60;
  v2 = sub_219BF0634();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218774F78(v0 + qword_280EAFE68);
  return v0;
}

uint64_t sub_21954C3A4()
{
  sub_21954C31C();

  return swift_deallocClassInstance();
}

uint64_t sub_21954C438(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = v2 + qword_280EAFE68;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = v4;
    (*(v7 + 8))(a1, &v9, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}