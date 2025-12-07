void sub_218D91DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D91E10(uint64_t a1, uint64_t a2)
{
  sub_218D91DAC(0, &unk_280EE87F0, MEMORY[0x277D2D9E8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D91EA4(uint64_t a1)
{
  sub_218D91DAC(0, &unk_280EE87F0, MEMORY[0x277D2D9E8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218D91F68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_218C71780(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  *(inited + 32) = 0x656C6269736976;
  *(inited + 40) = 0xE700000000000000;
  v4 = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 72) = v4;
  strcpy((inited + 80), "isPresenting");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 120) = v4;
  *(inited + 96) = v2;
  v5 = sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  return v5;
}

uint64_t getEnumTagSinglePayload for PuzzleVisibilityChangedEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PuzzleVisibilityChangedEvent(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_218D921B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

void sub_218D9221C(uint64_t a1, double *a2, char *a3)
{
  sub_21881ACB0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v43 - v7;
  v8 = sub_219BEC004();
  v48 = *(v8 - 8);
  v49 = v8;
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a3[qword_27CC1F030];
  [v11 setAdjustsFontSizeToFitWidth_];
  v47 = *&a3[qword_27CC1F038];
  [v47 setAdjustsFontSizeToFitWidth_];
  v12 = *a2;
  v13 = a2[1];
  [a3 setFrame_];
  if (sub_219BED0C4())
  {
    v14 = *&a3[qword_27CC1F020];
    v15 = type metadata accessor for NameLogoMastheadViewLayoutAttributes(0);
    [v14 setFrame_];
    [*&a3[qword_27CC1F018] setFrame_];
  }

  [*&a3[qword_280EC9828] setFrame_];
  v16 = *&a3[qword_280EC9820];
  v17 = (a2 + *(type metadata accessor for NameLogoMastheadViewLayoutAttributes(0) + 44));
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v45 = v17;
  [v16 setFrame_];
  [*&a3[qword_280EC9818] setFrame_];
  v22 = a2[15];
  v23 = a2[16];
  v24 = a2[17];
  v25 = a2[18];
  v46 = *&a3[qword_280EC9810];
  [v46 setFrame_];
  [a3 setAccessibilityIgnoresInvertColors_];
  [*&a3[qword_27CC1F028] setFrame_];
  v26 = [a3 traitCollection];
  sub_21950F57C(v26, &v52);

  if (v53)
  {
    sub_2186CB1F0(&v52, v55);
    sub_218718690(v55, &v52);
    v27 = sub_219BE7D54();
    swift_allocObject();
    v28 = sub_219BE7D44();
    v53 = v27;
    v54 = MEMORY[0x277D6DD38];
    *&v52 = v28;

    sub_219BEB3A4();

    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  else
  {
    sub_218D92854(&v52, &qword_280EE5A68, sub_2189A7118);
  }

  [v11 setNumberOfLines_];
  v29 = [a3 traitCollection];
  v30 = sub_218F959F4(a1, v29, *(a2 + 80));

  [v11 setAttributedText_];
  [v11 setFrame_];
  v31 = v47;
  [v47 setNumberOfLines_];
  v32 = [a3 traitCollection];
  v33 = sub_218F95C74(a1, v32);

  [v31 setAttributedText_];
  [v31 setFrame_];
  v34 = sub_21950F7B8();
  [v46 setBackgroundColor_];

  v35 = *&a3[qword_27CC1F040];
  [v35 setFrame_];
  v36 = type metadata accessor for NameLogoMastheadModel(0);
  v37 = v50;
  sub_21881AC1C(a1 + *(v36 + 24), v50);
  v39 = v48;
  v38 = v49;
  if ((*(v48 + 48))(v37, 1, v49) == 1)
  {
    sub_218D92854(v37, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
LABEL_10:
    v42 = 1;
    goto LABEL_11;
  }

  v40 = v44;
  (*(v39 + 32))(v44, v37, v38);
  v41 = sub_219BEBFF4();
  (*(v39 + 8))(v40, v38);
  if (!v41)
  {
    goto LABEL_10;
  }

  v42 = 0;
LABEL_11:
  [v35 setHidden_];
  sub_218F95E6C(v35);
  sub_219AF91F0(a3, (v51 + 56));
}

uint64_t sub_218D92854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21881ACB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218D928B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218D928F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218D92948(uint64_t a1)
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

double sub_218D92A0C(uint64_t a1)
{
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61768;
  v2 = sub_219BF6214();
  sub_219BE5314("Audio playlist feed starting prewarming", 39, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  v3 = CACurrentMediaTime();
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

  sub_219BF5054();
  sub_219BE3204();
  sub_2187D9028();
  v5 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v6 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v3;
  sub_219BE2F94();

  v7 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v3;
  sub_219BE2FE4();

  return result;
}

uint64_t sub_218D92CD8(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 8))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_218D95688(0);
  sub_218D9556C(&qword_27CC11C00, sub_218D95688, MEMORY[0x277D6D890]);
  v2 = sub_219BE6E84();

  return v2;
}

uint64_t sub_218D92DE0(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = sub_219BE61B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v12 = MEMORY[0x277D83A80];
  *(v11 + 56) = MEMORY[0x277D839F8];
  *(v11 + 64) = v12;
  *(v11 + 32) = v13;
  sub_219BF6214();
  sub_219BE5314("Audio playlist feed successfully loaded duration %fms", v19);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_219BE6EC4();
    sub_219BE6F74();

    (*(v5 + 104))(v7, *MEMORY[0x277D6D518], v4);
    sub_218D9556C(&qword_280EE5AF0, MEMORY[0x277D6D528], MEMORY[0x277D6D530]);
    v16 = sub_219BF53A4();
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
    type metadata accessor for AudioPlaylistFeedInteractor(0, *(v3 + 80), *(v3 + 88), v18);
    sub_219363A20((v16 & 1) == 0, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218D930B0(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  v3 = qword_280F61768;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = sub_2186FC3BC();
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_219BE5314("Error while prewarming audio playlist feed with visible duration %fms, error=%{public}@", 87, 2, &dword_2186C1000, v3, v4, v5);

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

double sub_218D93284(uint64_t a1)
{
  v2 = *v1;
  sub_219BE6EC4();
  v3 = sub_218982870();

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

double sub_218D9341C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_219BE61B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v17 = Strong;

      sub_219BE6EC4();
      sub_219BE6F74();

      (*(v9 + 104))(v11, *MEMORY[0x277D6D518], v8);
      sub_218D9556C(&qword_280EE5AF0, MEMORY[0x277D6D528], MEMORY[0x277D6D530]);
      v18 = sub_219BF53A4();
      v19 = *(v9 + 8);
      v19(v11, v8);
      v19(v14, v8);
      type metadata accessor for AudioPlaylistFeedInteractor(0, a4, a5, v20);
      sub_219363A20((v18 & 1) == 0, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218D93658()
{
  v40 = sub_219BDC104();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v36 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v37 = &v36 - v2;
  sub_218D95618(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE7634();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_219BE7654();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9084();
  sub_219BE9064();
  v18 = &v6[*(v4 + 56)];
  (*(v15 + 32))(v6, v17, v14);
  (*(v8 + 32))(v18, v13, v7);
  v19 = (*(v15 + 88))(v6, v14);
  if (v19 == *MEMORY[0x277D6DAB8] || v19 == *MEMORY[0x277D6DAA8] || v19 == *MEMORY[0x277D6DAB0] || v19 == *MEMORY[0x277D6DA98])
  {
    return (*(v8 + 8))(v18, v7);
  }

  if (v19 == *MEMORY[0x277D6DAA0])
  {
    if ((*(v8 + 88))(v18, v7) == *MEMORY[0x277D6DA60])
    {
      (*(v8 + 96))(v18, v7);
      sub_218AEF9F8(0);
      v22 = *(v21 + 48);
      v23 = v39;
      v24 = *(v39 + 32);
      v25 = v37;
      v26 = v40;
      v24(v37, v18, v40);
      v27 = &v18[v22];
      v28 = v38;
      v24(v38, v27, v26);
      sub_218D93BC8(v25, v28);
      v29 = *(v23 + 8);
      v29(v28, v26);
      return (v29)(v25, v26);
    }

    else
    {
      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      v30 = qword_280F61768;
      v31 = sub_219BF61F4();
      sub_2186F20D4(0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_219C09BA0;
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_219BE9064();
      sub_219BF7484();
      v33 = *(v8 + 8);
      v33(v10, v7);
      v34 = v41;
      v35 = v42;
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_2186FC3BC();
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_219BE5314("Asked to handle a blueprint view action with a .drop source and an invalid action %{public}@", 92, 2, &dword_2186C1000, v30, v31, v32);

      return (v33)(v18, v7);
    }
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218D93BC8(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v27 = a1;
  v30 = *v2;
  sub_218985EAC(0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioPlaylistFeedModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D956A8(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  sub_218B7E48C(0);
  v24 = v13;
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2[4];
  sub_219BE6EC4();
  v33 = v34;
  sub_218987004(0);
  sub_218D9556C(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_219BEB344();
  (*(v10 + 8))(v12, v9);
  sub_219BE5FC4();
  v17 = v28;
  v16 = v29;
  v18 = v26;
  (*(v28 + 32))(v26, v7, v29);
  v34 = (*(*(v30 + 88) + 24))(v15, v32, *(v30 + 80));
  sub_218D95688(0);
  sub_218D9556C(&qword_27CC11C00, sub_218D95688, MEMORY[0x277D6D890]);
  sub_219BE6EF4();
  v19 = v18;
  sub_219BF07D4();
  v20 = *(v34 + 16);
  swift_unknownObjectRetain();

  v21 = sub_219BDC0E4();
  sub_2196E6C70(v20, v21);
  swift_unknownObjectRelease();

  (*(v17 + 8))(v19, v16);
  return (*(v31 + 8))(v15, v24);
}

uint64_t sub_218D9402C()
{
  sub_218D955B4(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v54 = &v37 - v1;
  v2 = sub_219BDE294();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDEE04();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AudioPlaylistFeedRouteModel(0);
  MEMORY[0x28223BE20](v51);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1324();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BF1C74();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BF2A04();
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D955B4(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
  v15 = v14;
  v55 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v18 = type metadata accessor for AudioPlaylistFeedModel(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E48C(0);
  sub_219BE5FC4();
  v42 = v23;
  (*(v23 + 32))(v25, v20, v22);
  v43 = v22;
  sub_219BF07D4();
  v26 = *(v56 + 16);
  swift_unknownObjectRetain();

  v58 = v26;
  (*(v11 + 104))(v13, *MEMORY[0x277D33A68], v38);
  (*(v9 + 104))(v39, *MEMORY[0x277D33570], v40);
  (*(v45 + 13))(v41, *MEMORY[0x277D33298], v46);
  v56 = 0u;
  v57 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_unknownObjectRetain();
  v27 = v44;
  sub_219BDEDE4();
  v28 = *(v55 + 16);
  v29 = v48;
  v45 = v17;
  v46 = v15;
  v28(v48, v17, v15);
  v31 = v49;
  v30 = v50;
  (*(v49 + 104))(v29, *MEMORY[0x277D2FF00], v50);
  v32 = sub_219BDB954();
  v33 = v54;
  (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
  v34 = v47;
  sub_219BDD904();
  sub_218838478(v33);
  (*(v31 + 8))(v29, v30);
  (*(v52 + 8))(v27, v53);
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    sub_218F9EB3C(v34);
    swift_unknownObjectRelease();
    sub_218D95874(v34, type metadata accessor for AudioPlaylistFeedRouteModel);
    (*(v55 + 8))(v45, v46);
    (*(v42 + 8))(v25, v43);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_218D95874(v34, type metadata accessor for AudioPlaylistFeedRouteModel);
    (*(v55 + 8))(v45, v46);
    return (*(v42 + 8))(v25, v43);
  }
}

uint64_t sub_218D94810()
{
  v0 = type metadata accessor for AudioPlaylistFeedRouteModel(0);
  MEMORY[0x28223BE20](v0);
  v2 = (v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for AudioPlaylistFeedModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E48C(0);
  sub_219BE5FC4();
  (*(v8 + 32))(v10, v5, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v12 = Strong;
  sub_219BF07D4();
  v13 = *(v15[1] + 16);
  swift_unknownObjectRetain();

  *v2 = v13;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
  sub_218F9EB3C(v2);
  sub_218D95874(v2, type metadata accessor for AudioPlaylistFeedRouteModel);
  (*(v8 + 8))(v10, v7);
  return swift_unknownObjectRelease();
}

char *sub_218D94A48()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218D94B08()
{
  sub_218D94A48();

  return swift_deallocClassInstance();
}

void sub_218D94B8C(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v28 = *v2;
  v3 = sub_219BDBD64();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshRequest(0);
  MEMORY[0x28223BE20](refreshed);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218D956A8(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_219BE6EC4();
  v29 = v30;
  sub_218987004(0);
  sub_218D9556C(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v14 = sub_2197266D4();
  (*(v11 + 8))(v13, v10);
  if ((~v14 & 0xF000000000000007) != 0)
  {
    type metadata accessor for AudioPlaylistFeedServiceConfig(0);
    sub_218D9556C(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig, &unk_219C95088);
    sub_219BEE7A4();
    sub_219BDBD54();
    v17 = sub_219BDBD44();
    v19 = v18;
    v20 = (*(v24 + 8))(v5, v25);
    *v8 = v17;
    v8[1] = v19;
    MEMORY[0x28223BE20](v20);
    v21 = v27;
    *(&v23 - 4) = v26;
    *(&v23 - 3) = v21;
    *(&v23 - 2) = v8;
    type metadata accessor for AudioPlaylistFeedRefreshResult(0);
    sub_219BE3204();
    sub_2187D9028();
    v22 = sub_219BF66A4();

    sub_219BE2F94();
    sub_21885AB78(v14);

    sub_218D95874(v8, type metadata accessor for AudioPlaylistFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D8A0 != -1)
    {
      swift_once();
    }

    v15 = qword_280F61768;
    v16 = sub_219BF61F4();
    sub_219BE5314("Audio playlist feed attempting to refresh with a blueprint that has no cursor", 77, 2, &dword_2186C1000, v15, v16, MEMORY[0x277D84F90]);
  }
}

uint64_t sub_218D94FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshRequest(0);
  v5 = *(refreshed - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v7 = CACurrentMediaTime();
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61768;
  v9 = sub_219BF6214();
  sub_219BE5314("Audio playlist feed will refresh", 32, 2, &dword_2186C1000, v8, v9, MEMORY[0x277D84F90]);
  sub_218D955B4(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_218D95978(a3, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlaylistFeedRefreshRequest);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  sub_218D959E0(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for AudioPlaylistFeedRefreshRequest);
  v12 = sub_219BE2E54();
  type metadata accessor for AudioPlaylistFeedRefreshResult(0);
  v13 = sub_219BE2F64();

  return v13;
}

double sub_218D9521C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshResult(0);
  v15 = *(refreshed - 8);
  v6 = *(v15 + 64);
  v7 = MEMORY[0x28223BE20](refreshed - 8);
  v8 = *(v4 + 88);
  v9 = *(v4 + 80);
  v16 = (*(v8 + 16))(a1, v9, v8, v7);
  v17 = v16;
  v10 = swift_allocObject();
  swift_weakInit();
  sub_218D95978(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlaylistFeedRefreshResult);
  v11 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;
  sub_218D959E0(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AudioPlaylistFeedRefreshResult);
  sub_218D95688(0);
  sub_218D9556C(&qword_27CC11C00, sub_218D95688, MEMORY[0x277D6D890]);

  sub_219BE6EF4();

  return result;
}

double sub_218D95468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v12 = *(a3 + *(type metadata accessor for AudioPlaylistFeedRefreshResult(0) + 24));
      if (v12 >> 62)
      {
        v13 = sub_219BF7214();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v13 == 0;
      type metadata accessor for AudioPlaylistFeedInteractor(0, a4, a5, v11);

      sub_219363A20(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_218D9556C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218D955B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218D95618(uint64_t a1)
{
  if (!qword_27CC11BC8)
  {
    sub_219BE7654();
    sub_219BE7634();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11BC8);
    }
  }
}

void sub_218D956A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioPlaylistFeedModel(255);
    v8[2] = sub_218D9556C(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor, &unk_219C3085C);
    v8[3] = sub_218D9556C(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F008);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218D95874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_218D958D4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for AudioPlaylistFeedRefreshResult(0) - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_218D95468(a1, v6, v7, v3, v4);
}

uint64_t sub_218D95978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D959E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D95ABC(uint64_t a1)
{
  v1 = sub_219BF1984();
  MEMORY[0x28223BE20](v1);
  swift_unknownObjectRetain();
  sub_219BF1974();
  sub_218D98E40(&qword_280E907E8, MEMORY[0x277D334B0], MEMORY[0x277D334A8]);
  return sub_219BF1994();
}

uint64_t sub_218D95B90()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218D95C1C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (**a7)(uint64_t, uint64_t))
{
  v223 = a7;
  v218 = a4;
  v210 = sub_219BE5C64();
  v208 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v209 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_219BE60B4();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v213 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v217 = v16;
  v17 = *(v16 + 16);
  v222 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = a6;
  v17(v14);
  v18 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v18 setAccessibilityLabel_];
  v19 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v19 setText_];
  v20 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v20 setText_];
  [a2 setAccessibilityLabel_];
  v21 = type metadata accessor for TagView();
  v229.receiver = a2;
  v229.super_class = v21;
  objc_msgSendSuper2(&v229, sel_setAccessibilityValue_, 0);
  v22 = *(a3 + 40);
  v23 = *(a3 + 48);
  v24 = *(a3 + 56);
  v25 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v25 = *(a3 + 32);
  *(v25 + 1) = v22;
  *(v25 + 2) = v23;
  *(v25 + 3) = v24;
  [v20 setFrame_];
  v26 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v27 = *(a3 + 80);
  *v26 = *(a3 + 64);
  *(v26 + 1) = v27;
  v29 = *(a3 + 200);
  v28 = *(a3 + 208);
  [v18 setFrame_];
  v30 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v30 setFrame_];
  v31 = *(a3 + 128);
  v32 = *(a3 + 136);
  v33 = *(a3 + 144);
  v34 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v34 = *(a3 + 120);
  *(v34 + 1) = v31;
  *(v34 + 2) = v32;
  *(v34 + 3) = v33;
  [v19 setFrame_];
  v35 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v36 = *(a3 + 168);
  *v35 = *(a3 + 152);
  *(v35 + 1) = v36;
  v37 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v38 = *(a3 + 248);
  v39 = *(a3 + 256);
  v40 = *(a3 + 264);
  v41 = *(a3 + 272);
  [v37 setFrame_];
  v42 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v42 setFrame_];
  v219 = a2;
  v43 = *(a3 + 312);
  v44 = *(a3 + 320);
  v45 = *(a3 + 328);
  v46 = *(a3 + 336);
  v216 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v216 setFrame_];
  [v20 setNumberOfLines_];
  [v19 setNumberOfLines_];
  LODWORD(v47) = *(a3 + 112);
  [v20 ts:v47 setHyphenationFactor:?];
  LODWORD(v48) = *(a3 + 116);
  v220 = v19;
  [v19 ts:v48 setHyphenationFactor:?];
  v49 = [v37 layer];
  v230.origin.x = v38;
  v230.origin.y = v39;
  v230.size.width = v40;
  v230.size.height = v41;
  [v49 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v50 = *(a3 + 489);
  v51 = sub_219534AD0(v50);
  [v20 setFont_];

  v52 = objc_opt_self();
  v53 = [v52 labelColor];
  [v20 setTextColor_];

  v212 = v20;
  [v20 setLineBreakMode_];
  v211 = v18;
  [v18 setContentMode_];
  if ((v50 & 1) == 0)
  {
    v54 = *__swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
    v55 = [v52 systemBackgroundColor];
    [v30 setBackgroundColor_];

    v56 = [v30 layer];
    [*(v54 + 32) cornerRadius];
    [v56 setCornerRadius_];
  }

  v57 = a5[10];
  v221 = a5;
  __swift_project_boxed_opaque_existential_1(a5 + 7, v57);
  v58 = (v223[5])(v224);
  sub_219534B5C(v50, v220, v58);

  v59 = [v52 systemPinkColor];
  v60 = *&v37[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v37[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v59;
  v61 = v59;

  if (v61)
  {
    v62 = [v37 traitCollection];
    v63 = [v61 resolvedColorWithTraitCollection_];

    [v37 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1(v221 + 7, v221[10]);
  v64 = sub_219534AD0(v50);
  [v42 setFont_];

  v65 = [v52 secondaryLabelColor];
  [v42 setTextColor_];

  v66 = v219;
  sub_218C5949C(a3, v219);
  CGRectGetHeight(*a3);
  v67 = objc_allocWithZone(sub_219BE7F64());
  v68 = sub_219BE7F44();
  v69 = *(a3 + 472);
  sub_219BE7F54();
  v70 = v216;
  v216 = v68;
  [v70 addSubview_];
  v71 = (v223[7])(v224);
  v72 = (v71 >> 21) & 3;
  v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  v74 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  if (v72 > 1)
  {
    if (v72 == 2)
    {
      if (sub_219093144(2u, *(v69 + 16)))
      {
        v80 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
        v81 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        if (v81)
        {
          v82 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        }

        else
        {
          v95 = sub_218EC4E8C(1u);
          v96 = *&v66[v80];
          *&v66[v80] = v95;
          v82 = v95;
        }

        v97 = (v208 + 8);
        if (v71)
        {
          v98 = MEMORY[0x277D6D338];
        }

        else
        {
          v98 = MEMORY[0x277D6D340];
        }

        v99 = v209;
        v100 = v210;
        (*(v208 + 104))(v209, *v98, v210);
        type metadata accessor for AccessoryButton(0);
        sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
        v101 = v81;
        sub_219BEB694();
        (*v97)(v99, v100);

        v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      }
    }

    else
    {
      v83 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v83)
      {
        [v83 setHidden_];
      }
    }
  }

  else
  {
    if (v72)
    {
      goto LABEL_35;
    }

    v75 = *(v69 + 16);
    v76 = sub_219093144(0, v75);
    v207 = v75;
    if (v76)
    {
      v77 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v78 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      if (v78)
      {
        v79 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      }

      else
      {
        v84 = sub_218EC4E8C(0);
        v85 = *&v66[v77];
        *&v66[v77] = v84;
        v79 = v84;
      }

      v86 = v208;
      v87 = MEMORY[0x277D6D338];
      if ((v71 & 0x800000) != 0)
      {
        v87 = MEMORY[0x277D6D340];
      }

      v88 = v209;
      v89 = v210;
      (*(v208 + 104))(v209, *v87, v210);
      type metadata accessor for AccessoryButton(0);
      sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
      v90 = v78;
      sub_219BEB694();
      (*(v86 + 8))(v88, v89);

      v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v74 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v75 = v207;
    }

    if (sub_219093144(1u, v75))
    {
      v91 = sub_218C5824C();
      [v91 setHidden_];
    }

    if (sub_219093144(2u, v75))
    {
      v92 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v93 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      if (v93)
      {
        v94 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      }

      else
      {
        v102 = sub_218EC4E8C(1u);
        v103 = *&v66[v92];
        *&v66[v92] = v102;
        v94 = v102;
      }

      v104 = v208;
      v105 = MEMORY[0x277D6D340];
      if ((v71 & 0x100) != 0)
      {
        v105 = MEMORY[0x277D6D338];
      }

      v106 = v209;
      v107 = v210;
      (*(v208 + 104))(v209, *v105, v210);
      type metadata accessor for AccessoryButton(0);
      sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
      v108 = v93;
      sub_219BEB694();
      (*(v104 + 8))(v106, v107);

      v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v74 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v75 = v207;
    }

    if (sub_219093144(3u, v75))
    {
LABEL_35:
      v109 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
      v110 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v110)
      {
        v111 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      }

      else
      {
        v112 = sub_219608868();
        v113 = *&v66[v109];
        *&v66[v109] = v112;
        v111 = v112;
      }

      v114 = v110;
      if (v71)
      {
        [v111 setHidden_];
        if (v71 == 1)
        {
          v115 = MEMORY[0x277D6D338];
        }

        else
        {
          v115 = MEMORY[0x277D6D340];
        }

        v116 = v208;
        v117 = v209;
        v118 = v210;
        (*(v208 + 104))(v209, *v115, v210);
        type metadata accessor for NotificationSwitch(0);
        sub_218D98E40(&qword_27CC11C08, type metadata accessor for NotificationSwitch, &unk_219C92824);
        sub_219BE68E4();

        (*(v116 + 8))(v117, v118);
      }

      else
      {
        [v111 setHidden_];
      }
    }
  }

  v119 = v74[484];
  v120 = *&v66[v119];
  if (v120)
  {
    [v120 setIsAccessibilityElement_];
  }

  if (*&v66[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v121 = *&v66[v119];
    if (v121)
    {
      v122 = *&v66[v119];
    }

    else
    {
      v123 = sub_218EC4E8C(0);
      v124 = *&v66[v119];
      *&v66[v119] = v123;
      v122 = v123;

      v121 = 0;
    }

    v125 = v121;
    [v122 setIsAccessibilityElement_];
  }

  v126 = *&v66[v73[486]];
  if (v126)
  {
    [v126 setIsAccessibilityElement_];
  }

  v127 = v223;
  v128 = v223[2];
  v129 = v224;
  v128(v224, v223);
  v130 = sub_219BF53D4();

  [v212 setText_];

  v127[4](v129, v127);
  if (v131)
  {
    v132 = sub_219BF53D4();
  }

  else
  {
    v132 = 0;
  }

  v133 = v221;
  [v220 setText_];

  v134 = v223;
  v135 = v224;
  sub_218D98318(v222, v66, a3, v224, v223);
  v209 = v133[12];
  v136 = v134[6](v135, v134);
  v220 = v137;
  v139 = v138;
  v212 = v128(v135, v134);
  v221 = v140;
  __swift_project_boxed_opaque_existential_1(v133 + 2, v133[5]);
  v141 = MEMORY[0x277D6D488];
  sub_218D98F10(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
  v142 = v214;
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_219C09EC0;
  sub_219BE60A4();
  sub_219BE6094();
  v228 = v143;
  sub_218D98E40(&qword_280EE5B00, MEMORY[0x277D6D488], MEMORY[0x277D6D490]);
  sub_218D98F10(0, &qword_280E8F508, v141, MEMORY[0x277D83940]);
  sub_218D98E88();
  v144 = v213;
  v145 = v215;
  sub_219BF7164();
  LODWORD(v210) = sub_219BE87F4();
  (*(v142 + 8))(v144, v145);
  if (v139 > 1u)
  {
    if (v139 != 2)
    {
      v184 = v136;
      v185 = [v136 tagType];
      v186 = v220;
      if ((v185 - 1) >= 2)
      {
        sub_218A264C8(v184, v220, 3u);

        goto LABEL_72;
      }

      v187 = [v184 groupTitleColor];
      v188 = *(v209 + 7);
      swift_unknownObjectRetain();
      if (v187)
      {
        v189 = [v187 ne_color];

        type metadata accessor for TopicColorFeedNavImageStyler();
        v190 = swift_allocObject();
        *(v190 + 16) = v189;
        *(v190 + 24) = v188;
        v188 = v190;
      }

      swift_unknownObjectRetain();
      v191 = v211;
      v192 = [v211 traitCollection];
      [v192 displayScale];
      v194 = v193;

      v195 = type metadata accessor for FeedNavImageAssetHandle();
      v196 = objc_allocWithZone(v195);
      v197 = &v196[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
      *v197 = 0;
      *(v197 + 1) = 0;
      *&v196[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
      *&v196[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v184;
      v198 = swift_unknownObjectRetain();
      v199 = sub_219352488(v198);
      v200 = &v196[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
      *v200 = v199;
      v200[1] = v201;
      v202 = &v196[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
      *v202 = v29;
      v202[1] = v28;
      *&v196[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v188;
      *&v196[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v194;
      *&v196[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
      v226.receiver = v196;
      v226.super_class = v195;
      v164 = objc_msgSendSuper2(&v226, sel_init);
      sub_218A462FC(v164, v191, v212, v221, v210 & 1, v29, v28, 1.0);
      sub_218A264C8(v184, v186, 3u);
      swift_unknownObjectRelease();
      goto LABEL_69;
    }

    v165 = v211;
    [v211 setImage_];
    v166 = sub_219BF53D4();

    [v165 setAccessibilityLabel_];
    sub_218A264C8(v136, v220, 2u);
  }

  else
  {
    if (!v139)
    {
      v146 = v220;

      v147 = sub_219BF53D4();
      v148 = [objc_opt_self() imageNamed_];

      v149 = v148;
      if (!v148)
      {
        v150 = [objc_opt_self() welcomeToNewsIcon];
        if (!v150)
        {

          v203 = sub_218A264C8(v136, v146, 0);
          [v211 setImage_];
          sub_218A264C8(v136, v146, 0);
          goto LABEL_72;
        }

        v149 = v150;
      }

      v151 = v148;

      v152 = *(v209 + 7);
      v153 = v149;
      v154 = v211;
      v155 = [v211 traitCollection];
      [v155 displayScale];
      v157 = v156;

      v158 = type metadata accessor for FeedNavImageAssetHandle();
      v159 = objc_allocWithZone(v158);
      v160 = &v159[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
      *v160 = 0;
      *(v160 + 1) = 0;
      v161 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
      *&v159[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
      swift_beginAccess();
      *&v159[v161] = v153;
      v162 = &v159[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
      *v162 = v136;
      *(v162 + 1) = v146;
      v163 = &v159[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
      *v163 = v29;
      v163[1] = v28;
      *&v159[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v152;
      *&v159[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
      *&v159[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v157;
      *&v159[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
      v225.receiver = v159;
      v225.super_class = v158;
      swift_unknownObjectRetain();
      v164 = objc_msgSendSuper2(&v225, sel_init);
      sub_218A462FC(v164, v154, v212, v221, v210 & 1, v29, v28, 1.0);
      sub_218A264C8(v136, v146, 0);

LABEL_69:

      goto LABEL_72;
    }

    v167 = *(v209 + 7);
    v168 = v211;
    v169 = [v211 traitCollection];
    [v169 displayScale];
    v171 = v170;

    v172 = type metadata accessor for FeedNavImageAssetHandle();
    v173 = objc_allocWithZone(v172);
    v174 = &v173[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v174 = 0;
    *(v174 + 1) = 0;
    v175 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
    *&v173[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    swift_beginAccess();
    v176 = v136;
    *&v173[v175] = v136;
    v177 = &v173[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    v178 = v212;
    v179 = v221;
    *v177 = v212;
    *(v177 + 1) = v179;
    v180 = &v173[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v180 = v29;
    v180[1] = v28;
    *&v173[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v167;
    *&v173[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
    *&v173[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v171;
    *&v173[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
    v181 = v136;
    v182 = v220;
    sub_218A472B0(v181, v220, 1u);
    v227.receiver = v173;
    v227.super_class = v172;

    swift_unknownObjectRetain();
    v183 = objc_msgSendSuper2(&v227, sel_init);
    sub_218A462FC(v183, v168, v178, v179, v210 & 1, v29, v28, 1.0);
    sub_218A264C8(v176, v182, 1u);
  }

LABEL_72:
  v204 = v222;
  v205 = v224;
  sub_218D97C8C(v222, v219, v218, v224, v223);

  return (*(v217 + 8))(v204, v205);
}

uint64_t sub_218D972A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v14 = *(a7 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  v18 = *(sub_219BF69C4() + 16);

  if (v18 || sub_219093144(2u, *(*(a3 + 472) + 16)) || (a5 & 1) == 0)
  {
    if ([*(a6 + 224) useOfflineMode] && ((*(a8 + 96))(v9, a8) & 1) == 0)
    {
      v19 = a2;
      v20 = 0;
    }

    else
    {
      v19 = a2;
      v20 = 1;
    }

    sub_218D978D0(v19, v20);
  }

  else
  {
    v21 = sub_219BE8284();
    v22 = *&v21[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

    [v22 setEnabled_];
  }

  v23 = sub_219BE8284();
  v24 = *&v23[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

  v25 = [v24 isEnabled];
  v26 = sub_219BE8284();
  v27 = *MEMORY[0x277D76580];
  v28 = TagView.accessibilityTraits.getter();
  v29 = v28 & v27;
  if (v25)
  {
    if (v29)
    {
      v30 = ~v27;
    }

    else
    {
      v30 = -1;
    }

    v31 = type metadata accessor for TagView();
    v91.receiver = v26;
    v91.super_class = v31;
    objc_msgSendSuper2(&v91, sel_setAccessibilityTraits_, v30 & v28);
  }

  else
  {
    if (v29 == v27)
    {
      v27 = 0;
    }

    v32 = type metadata accessor for TagView();
    v92.receiver = v26;
    v92.super_class = v32;
    objc_msgSendSuper2(&v92, sel_setAccessibilityTraits_, v27 | v28);
  }

  v33 = sub_219BE8284();
  v34 = *&v33[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

  v90 = a5;
  v35 = a5 & 1;
  v36 = 32;
  if (v35)
  {
    v36 = 64;
  }

  v37 = 40;
  if (v35)
  {
    v37 = 72;
  }

  v38 = 48;
  if (v35)
  {
    v38 = 80;
  }

  v39 = 56;
  if (v35)
  {
    v39 = 88;
  }

  [v34 setFrame_];

  v40 = sub_219BE8284();
  v41 = *&v40[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];

  v42 = 176;
  v43 = 168;
  v44 = 160;
  v45 = 152;
  if (!v35)
  {
    v45 = 120;
    v44 = 128;
    v43 = 136;
    v42 = 144;
  }

  [v41 setFrame_];

  v46 = *(*(a3 + 472) + 16);
  if (sub_219093144(8u, v46))
  {
    v47 = sub_219BE8284();
    v48 = *&v47[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

    v49 = v90 & 1;
    v50 = 32;
    if (v90)
    {
      v50 = 376;
    }

    v51 = 40;
    if (v90)
    {
      v51 = 384;
    }

    v52 = 48;
    if (v90)
    {
      v52 = 392;
    }

    v53 = 56;
    if (v90)
    {
      v53 = 400;
    }

    [v48 setFrame_];

    v54 = sub_219BE8284();
    v55 = *&v54[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];

    v56 = 432;
    v57 = 424;
    v58 = 416;
    v59 = 408;
    v60 = v49;
    v61 = v49 == 0;
    if (v49)
    {
      v62 = 464;
    }

    else
    {
      v62 = 208;
    }

    v63 = v9;
    if (v61)
    {
      v64 = 200;
    }

    else
    {
      v64 = 456;
    }

    v88 = v17;
    v89 = v14;
    if (v61)
    {
      v65 = 192;
    }

    else
    {
      v65 = 448;
    }

    if (v61)
    {
      v66 = 184;
    }

    else
    {
      v66 = 440;
    }

    if (v61)
    {
      v59 = 32;
    }

    if (!v60)
    {
      v58 = 40;
      v57 = 48;
      v56 = 56;
    }

    [v55 setFrame_];

    v67 = sub_219BE8284();
    v68 = *&v67[OBJC_IVAR____TtC7NewsUI27TagView_imageView];

    v69 = *(a3 + v64);
    v9 = v63;
    v70 = *(a3 + v65);
    v71 = *(a3 + v66);
    v17 = v88;
    v14 = v89;
    [v68 setFrame_];
  }

  v72 = sub_219093144(2u, v46);
  v73 = v90;
  if (v72)
  {
    v74 = sub_219BE8284();
    v75 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v76 = *&v74[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
    if (v76)
    {
      v77 = v76;
    }

    else
    {
      v78 = sub_218EC4E8C(1u);
      v79 = *&v74[v75];
      *&v74[v75] = v78;
      v77 = v78;

      v74 = v79;
      v73 = v90;
    }

    [v77 setHidden_];
  }

  v80 = sub_219BE8284();
  v81 = *&v80[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];

  v82 = 312;
  if (v73)
  {
    v82 = 344;
  }

  v83 = 320;
  if (v73)
  {
    v83 = 352;
  }

  v84 = 328;
  if (v73)
  {
    v84 = 360;
  }

  v85 = 336;
  if (v73)
  {
    v85 = 368;
  }

  [v81 setFrame_];

  return (*(v14 + 8))(v17, v9);
}

void sub_218D978D0(uint64_t a1, char a2)
{
  v3 = sub_219BE8284();
  v4 = *&v3[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

  if (a2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.4;
  }

  [v4 setEnabled_];

  v6 = sub_219BE8284();
  v7 = *&v6[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];

  [v7 setEnabled_];
  v8 = sub_219BE8284();
  v9 = *&v8[OBJC_IVAR____TtC7NewsUI27TagView_imageView];

  [v9 setAlpha_];
  v10 = sub_219BE8284();
  v11 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v12 = *&v10[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = sub_218EC4E8C(0);
    v15 = *&v10[v11];
    *&v10[v11] = v14;
    v13 = v14;

    v10 = v15;
  }

  v16 = *&v13[qword_280F620F0];
  [v16 setAlpha_];

  v17 = sub_219BE8284();
  v18 = OBJC_IVAR____TtC7NewsUI27TagView_isSelectable;
  swift_beginAccess();
  v19 = a2 & 1;
  v17[v18] = a2 & 1;

  v20 = sub_219BE8284();
  v21 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlightable;
  swift_beginAccess();
  v20[v21] = v19;
}

uint64_t sub_218D97AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v24) = a3;
  v27 = a4;
  v28 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = v27;
  v11 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v12 = *(a5 + 64);
  v13 = v12(a4, a5);
  if ((v15 & 0x100) != 0)
  {
    if (v13 | v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15 == 0;
    }

    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = v24 & 1;
    }

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  else
  {
    v16 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v17 = v12(v10, v11);
    sub_2190D8F20(v17, v19, v18 & 0x1FF);
    v20 = sub_219BF53D4();

    [v16 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v16 setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_218D97C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v12;
  (*(v12 + 16))(v11, v9);
  sub_218D98194(a3, v38);
  v13 = v39;
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(v38, v39);
    swift_beginAccess();
    swift_beginAccess();
    v13 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_218D9828C(v38);
  }

  v14 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v15 = a5[9];
  v16 = v15(a4, a5);
  sub_219534DC0(v14, v16 & 1, v13 & 1);
  v17 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v36 = v15;
  v18 = v15(a4, a5);
  LODWORD(v14) = [v14 isEnabled];
  v19 = a5[10](a4, a5);
  if (v14)
  {
    v20 = 0.7;
    if (v18)
    {
      v20 = 1.0;
    }

    [v17 setAlpha_];
    if (v13)
    {
      v21 = [objc_opt_self() whiteColor];
      [v17 setTintColor_];
    }

    else
    {
      [v17 setTintColor_];
    }
  }

  else
  {
    v22 = [v17 image];
    if (v22)
    {
      v23 = v22;
      if ([v22 renderingMode] == 2)
      {
        v24 = [objc_opt_self() placeholderTextColor];
        [v17 setTintColor_];

        [v17 setAlpha_];
        goto LABEL_15;
      }
    }

    [v17 setAlpha_];
  }

LABEL_15:

  v25 = a5[6](a4, a5);
  v27 = 4u >> (v26 & 0xF);
  sub_218A264C8(v25, v28, v26);
  sub_218D97AB4(v11, a2, v13 & 1, a4, a5);
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v29 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);

  LOBYTE(v27) = v36(a4, a5);
  v30 = objc_opt_self();
  if (v27)
  {
    v31 = [v30 secondaryLabelColor];
    if (v13)
    {
      v32 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v33 = [v31 resolvedColorWithTraitCollection_];

      v31 = [v33 colorWithAlphaComponent_];
    }
  }

  else
  {
    v31 = [v30 placeholderTextColor];
  }

  [v29 setTextColor_];

  return (*(v37 + 8))(v11, a4);
}

uint64_t sub_218D98194(uint64_t a1, uint64_t a2)
{
  sub_218D98F10(0, &qword_280EE5158, sub_218D98228, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218D98228()
{
  result = qword_280EE5160;
  if (!qword_280EE5160)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE5160);
  }

  return result;
}

uint64_t sub_218D9828C(uint64_t a1)
{
  sub_218D98F10(0, &qword_280EE5158, sub_218D98228, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D98318(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = sub_219BE5C64();
  v10 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v97 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v97, a1, a4, v15);
  v17 = *(a5 + 48);
  v96 = a4;
  v18 = v17(a4, a5);
  v102 = a2;
  v93 = a5;
  v94 = v13;
  if (v20 >= 3u)
  {
    MEMORY[0x28223BE20](v18);
    v22 = v21;
    v24 = v23;
    sub_218D98F7C(0);
    sub_218D98E40(&qword_280E907E0, sub_218D98F7C, MEMORY[0x277D334B8]);
    sub_219BF6C74();
    v25 = v22;
    a2 = v102;
    sub_218A264C8(v25, v24, 3u);
  }

  else
  {
    [a2 setAccessibilityIdentifier_];
  }

  v95 = *(*(a3 + 472) + 16);
  v26 = *(v95 + 16);
  if (v26)
  {
    v103 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v104 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v27 = (v95 + 32);
    v100 = *MEMORY[0x277D6D340];
    v98 = (v10 + 8);
    v99 = (v10 + 104);
    do
    {
      v33 = *v27++;
      v32 = v33;
      if (v33 == 2)
      {
        v28 = *&a2[v104];
        if (!v28)
        {
          type metadata accessor for AccessoryButton(0);
          v41 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v42 = qword_280EDB508;
          v43 = v41[qword_280EDB508];
          v41[qword_280EDB508] = 1;
          v37 = v41;
          sub_219BE61D4();
          if (v43 != v41[v42] || !*&v37[qword_280F620E8] || !*&v37[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v44 = v101;
          (*v99)(v12, v100, v101);
          sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v98)(v12, v44);
          v45 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v102;
          v40 = v104;
          goto LABEL_23;
        }
      }

      else
      {
        if (v32)
        {
          goto LABEL_9;
        }

        v28 = *&a2[v103];
        if (!v28)
        {
          type metadata accessor for AccessoryButton(0);
          v34 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v35 = qword_280EDB508;
          v36 = v34[qword_280EDB508];
          v34[qword_280EDB508] = 0;
          v37 = v34;
          sub_219BE61D4();
          if (v36 != v34[v35] || !*&v37[qword_280F620E8] || !*&v37[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v38 = v101;
          (*v99)(v12, v100, v101);
          sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v98)(v12, v38);
          v39 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v102;
          v40 = v103;
LABEL_23:
          v46 = *&a2[v40];
          *&a2[v40] = v37;
          v29 = v37;

          v28 = 0;
          goto LABEL_8;
        }
      }

      v29 = v28;
LABEL_8:
      v30 = *(a3 + 488);
      v31 = v28;
      sub_218EC2D64(v30);

LABEL_9:
      --v26;
    }

    while (v26);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v47 = 0;
    v48 = 0;
    v49 = v96;
    v50 = v93;
  }

  else
  {
    v50 = v93;
    v49 = v96;
    v47 = (*(v93 + 32))(v96, v93);
    v48 = v51;
  }

  sub_218D98F10(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_219C09EC0;
  v53 = *(v50 + 16);
  *(v52 + 32) = v53(v49);
  *(v52 + 40) = v54;
  *(v52 + 48) = v47;
  *(v52 + 56) = v48;
  sub_219BE5F34();
  v56 = v55;

  if (v56)
  {
    v57 = sub_219BF53D4();
  }

  else
  {
    v57 = 0;
  }

  [a2 setAccessibilityLabel_];

  v58 = (v53)(v49, v50);
  v60 = v59;
  v61 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v61 = v58;
  *(v61 + 1) = v60;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = objc_opt_self();
  v64 = [v63 bundleForClass_];
  v65 = sub_219BDB5E4();
  v67 = v66;

  v68 = v95;
  if (sub_219093144(0, v95) && sub_219093144(1u, v68))
  {
    v69 = (*(v50 + 56))(v96, v50);
    if ((v69 & 0x600000) != 0)
    {
      LODWORD(v103) = 0;
      v70 = 0;
    }

    else if ((v69 & 0x800000) != 0)
    {
      v70 = 0;
      LODWORD(v103) = HIWORD(v69) & 1;
    }

    else
    {
      LODWORD(v103) = 0;
      v70 = 1;
    }

    v76 = (*(v50 + 64))(v96, v50);
    if ((v78 & 0x100) != 0 && !(v76 | v77) && !v78)
    {

      v65 = 0;
      v67 = 0;
    }

    if (v70)
    {
      v79 = [v63 bundleForClass_];
      v104 = sub_219BDB5E4();
      v81 = v80;

      if (!v103)
      {
LABEL_47:
        v82 = 0;
        v83 = 0;
LABEL_50:
        v86 = v102;
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_219C0B8C0;
        *(v87 + 32) = v65;
        *(v87 + 40) = v67;
        *(v87 + 48) = v104;
        *(v87 + 56) = v81;
        *(v87 + 64) = v82;
        *(v87 + 72) = v83;
        sub_219BE5F34();
        v89 = v88;

        if (v89)
        {
          v90 = sub_219BF53D4();
        }

        else
        {
          v90 = 0;
        }

        v71 = v96;
        v72 = v97;
        v73 = v94;
        v91 = type metadata accessor for TagView();
        v105.receiver = v86;
        v105.super_class = v91;
        objc_msgSendSuper2(&v105, sel_setAccessibilityValue_, v90);

        return (*(v73 + 8))(v72, v71);
      }
    }

    else
    {
      v104 = 0;
      v81 = 0;
      if (!v103)
      {
        goto LABEL_47;
      }
    }

    v84 = [v63 bundleForClass_];
    v82 = sub_219BDB5E4();
    v83 = v85;

    goto LABEL_50;
  }

  v71 = v96;
  v72 = v97;
  if (sub_2190D9050(v96, v50))
  {
  }

  else
  {
    v74 = sub_219BF53D4();

    v75 = type metadata accessor for TagView();
    v106.receiver = v102;
    v106.super_class = v75;
    objc_msgSendSuper2(&v106, sel_setAccessibilityValue_, v74);
  }

  v73 = v94;
  return (*(v73 + 8))(v72, v71);
}

uint64_t sub_218D98E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218D98E88()
{
  result = qword_280E8F500;
  if (!qword_280E8F500)
  {
    sub_218D98F10(255, &qword_280E8F508, MEMORY[0x277D6D488], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F500);
  }

  return result;
}

void sub_218D98F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218D98F7C(uint64_t a1)
{
  if (!qword_280E907D8)
  {
    sub_219BF1984();
    sub_218D98E40(&qword_280E907E8, MEMORY[0x277D334B0], MEMORY[0x277D334A8]);
    v1 = sub_219BF19A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E907D8);
    }
  }
}

uint64_t sub_218D99034()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218D990FC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218D991C4()
{
  v23 = sub_219BE9C04();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDF074();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1524();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v22 + 16);
  v13 = sub_219BE9924();
  v21[0] = v14;
  v21[1] = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3F8], v6);
  sub_219BE9934();
  v15 = (*(v0 + 88))(v2, v23);
  if (v15 == *MEMORY[0x277D6E830])
  {
    v16 = MEMORY[0x277D2D868];
  }

  else
  {
    if (v15 != *MEMORY[0x277D6E840] && v15 != *MEMORY[0x277D6E848] && v15 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v16 = MEMORY[0x277D2D810];
  }

  (*(v3 + 104))(v5, *v16, v25);
  sub_219BE1514();
  sub_218D9C718(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v19 = v24;
  sub_219BDD1F4();
  return (*(v10 + 8))(v12, v19);
}

void sub_218D995B4(uint64_t a1)
{
  sub_218D9C5E0(0, &qword_27CC11C10, MEMORY[0x277D6DA48]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - v5;
  sub_218A25EF0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v9 + 8))(v11, v8);
  if (v16)
  {
    if (v16 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_218A26564(v15);
    }
  }

  else
  {
    v12 = v15[0];
    (*(v4 + 16))(v6, a1, v3);
    v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v4 + 32))(v14 + v13, v6, v3);

    sub_219BDD154();
  }
}

uint64_t sub_218D99808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v64 = a1;
  v48 = sub_219BDF104();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BE09E4();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1094();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BE0E44();
  v50 = *(v53 - 1);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE0E34();
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE1444();
  v49 = *(v12 - 8);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a2 + 24);
  v16 = [*(v54 + 16) identifier];
  sub_219BF5414();

  sub_219BE1424();
  sub_2187F3258(0);
  v61 = v17;
  v18 = sub_219BDCD44();
  v19 = *(v18 - 8);
  v62 = *(v19 + 72);
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  v63 = xmmword_219C09BA0;
  *(v22 + 16) = xmmword_219C09BA0;
  v23 = *MEMORY[0x277CEAD18];
  v24 = *(v19 + 104);
  v24(v22 + v21, v23, v18);
  v60 = "FollowingNotificationsModel";
  sub_218D9C718(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  sub_219BDCCC4();

  (*(v49 + 8))(v15, v12);
  (*(v50 + 104))(v52, *MEMORY[0x277D2ED50], v53);
  (*(v58 + 104))(v55, *MEMORY[0x277D2EED0], v59);
  v25 = v51;
  sub_219BE0E24();
  v59 = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = v63;
  v27 = v21;
  v28 = v26 + v21;
  LODWORD(v55) = v23;
  v58 = v18;
  v29 = v19 + 104;
  v53 = v24;
  v24(v28, v23, v18);
  sub_218D9C718(&unk_27CC22080, MEMORY[0x277D2ED40], MEMORY[0x277D2ED38]);
  v30 = v56;
  sub_219BDCCC4();

  (*(v57 + 8))(v25, v30);
  v31 = [*(v54 + 16) asChannel];
  if (v31)
  {
    v57 = *(v42 + 24);
    v32 = v43;
    v56 = v31;
    sub_219BE01E4();
    v33 = swift_allocObject();
    *(v33 + 16) = v63;
    v34 = v55;
    v41 = v29;
    v35 = v53;
    v53(v33 + v27, v55, v58);
    sub_218D9C718(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v36 = v45;
    sub_219BDCCC4();

    (*(v44 + 8))(v32, v36);
    v37 = v46;
    sub_219BE01F4();
    v38 = swift_allocObject();
    *(v38 + 16) = v63;
    v35(v38 + v27, v34, v58);
    sub_218D9C718(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v39 = v48;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v47 + 8))(v37, v39);
  }

  sub_219BE0E14();
  sub_218D9C718(&qword_27CC19020, MEMORY[0x277D2ED30], MEMORY[0x277D2ED28]);
  memset(v65, 0, 32);
  sub_219BDCCE4();
  return sub_218D9C6B8(v65, sub_21880702C);
}

uint64_t sub_218D9A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v64 = a1;
  v48 = sub_219BDF104();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BE09E4();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1094();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BE0E44();
  v50 = *(v53 - 1);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE0E34();
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE1444();
  v49 = *(v12 - 8);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a2 + 24);
  v16 = [*(v54 + 16) identifier];
  sub_219BF5414();

  sub_219BE1424();
  sub_2187F3258(0);
  v61 = v17;
  v18 = sub_219BDCD44();
  v19 = *(v18 - 8);
  v62 = *(v19 + 72);
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  v63 = xmmword_219C09BA0;
  *(v22 + 16) = xmmword_219C09BA0;
  v23 = *MEMORY[0x277CEAD18];
  v24 = *(v19 + 104);
  v24(v22 + v21, v23, v18);
  v60 = "FollowingNotificationsModel";
  sub_218D9C718(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  sub_219BDCCC4();

  (*(v49 + 8))(v15, v12);
  (*(v50 + 104))(v52, *MEMORY[0x277D2ED50], v53);
  (*(v58 + 104))(v55, *MEMORY[0x277D2EED0], v59);
  v25 = v51;
  sub_219BE0E24();
  v59 = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = v63;
  v27 = v21;
  v28 = v26 + v21;
  LODWORD(v55) = v23;
  v58 = v18;
  v29 = v19 + 104;
  v53 = v24;
  v24(v28, v23, v18);
  sub_218D9C718(&unk_27CC22080, MEMORY[0x277D2ED40], MEMORY[0x277D2ED38]);
  v30 = v56;
  sub_219BDCCC4();

  (*(v57 + 8))(v25, v30);
  v31 = [*(v54 + 16) asChannel];
  if (v31)
  {
    v57 = *(v42 + 24);
    v32 = v43;
    v56 = v31;
    sub_219BE01E4();
    v33 = swift_allocObject();
    *(v33 + 16) = v63;
    v34 = v55;
    v41 = v29;
    v35 = v53;
    v53(v33 + v27, v55, v58);
    sub_218D9C718(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v36 = v45;
    sub_219BDCCC4();

    (*(v44 + 8))(v32, v36);
    v37 = v46;
    sub_219BE01F4();
    v38 = swift_allocObject();
    *(v38 + 16) = v63;
    v35(v38 + v27, v34, v58);
    sub_218D9C718(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v39 = v48;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v47 + 8))(v37, v39);
  }

  sub_219BE10A4();
  sub_218D9C718(&unk_27CC11C20, MEMORY[0x277D2EEE0], MEMORY[0x277D2EED8]);
  memset(v65, 0, 32);
  sub_219BDCCE4();
  return sub_218D9C6B8(v65, sub_21880702C);
}

uint64_t sub_218D9A968(uint64_t a1, void *a2)
{
  v26 = a1;
  v24 = sub_219BE1094();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0E44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BE0E34();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 24))(v13, v14);
  if ((v15 - 2) > 4u)
  {
    v16 = MEMORY[0x277D2ED58];
  }

  else
  {
    v16 = qword_278242578[(v15 - 2)];
  }

  (*(v7 + 104))(v9, *v16, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D2EED0], v24);
  sub_219BE0E24();
  sub_2187F3258(0);
  v17 = sub_219BDCD44();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CEAD18], v17);
  sub_218D9C718(&unk_27CC22080, MEMORY[0x277D2ED40], MEMORY[0x277D2ED38]);
  v21 = v25;
  sub_219BDCCC4();

  (*(v10 + 8))(v12, v21);
  sub_219BE0E14();
  sub_218D9C718(&qword_27CC19020, MEMORY[0x277D2ED30], MEMORY[0x277D2ED28]);
  memset(v27, 0, sizeof(v27));
  sub_219BDCCE4();
  return sub_218D9C6B8(v27, sub_21880702C);
}

uint64_t sub_218D9AD80(uint64_t a1, void *a2)
{
  v26 = a1;
  v24 = sub_219BE1094();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0E44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BE0E34();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 24))(v13, v14);
  if ((v15 - 2) > 4u)
  {
    v16 = MEMORY[0x277D2ED58];
  }

  else
  {
    v16 = qword_278242578[(v15 - 2)];
  }

  (*(v7 + 104))(v9, *v16, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D2EED0], v24);
  sub_219BE0E24();
  sub_2187F3258(0);
  v17 = sub_219BDCD44();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CEAD18], v17);
  sub_218D9C718(&unk_27CC22080, MEMORY[0x277D2ED40], MEMORY[0x277D2ED38]);
  v21 = v25;
  sub_219BDCCC4();

  (*(v10 + 8))(v12, v21);
  sub_219BE10A4();
  sub_218D9C718(&unk_27CC11C20, MEMORY[0x277D2EEE0], MEMORY[0x277D2EED8]);
  memset(v27, 0, sizeof(v27));
  sub_219BDCCE4();
  return sub_218D9C6B8(v27, sub_21880702C);
}

uint64_t sub_218D9B198(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BDF274();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDEEB4();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE1444();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_219BE1414();
  swift_unknownObjectRelease();
  sub_218D9C718(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  sub_219BDCCC4();
  (*(v10 + 8))(v12, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277D2D9C0], v2);
  sub_219BDEEA4();
  sub_2187F3258(0);
  v13 = sub_219BDCD44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x277CEAD18], v13);
  sub_218D9C718(&unk_27CC15AA0, MEMORY[0x277D2D740], MEMORY[0x277D2D738]);
  v17 = v20;
  sub_219BDCCC4();

  (*(v6 + 8))(v8, v17);
  sub_219BDF704();
  sub_218D9C718(qword_280EE86B0, MEMORY[0x277D2DCE8], MEMORY[0x277D2DCD0]);
  memset(v21, 0, sizeof(v21));
  sub_219BDCCE4();
  return sub_218D9C6B8(v21, sub_21880702C);
}

uint64_t sub_218D9B5E8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v29 = a3;
  v30 = a1;
  v26 = a2;
  v25 = sub_219BDF074();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1544();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDBD64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE1524();
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D2F3A0], v24);
  (*(v3 + 104))(v5, *v26, v25);
  sub_219BE1514();
  sub_2187F3258(0);
  v17 = sub_219BDCD44();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CEAD18], v17);
  sub_218D9C718(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v21 = v27;
  sub_219BDCCC4();

  sub_219BE17A4();
  sub_218D9C718(&qword_280EE7F30, MEMORY[0x277D2F910], MEMORY[0x277D2F908]);
  memset(v31, 0, sizeof(v31));
  sub_219BDCCE4();
  sub_218D9C6B8(v31, sub_21880702C);
  return (*(v28 + 8))(v16, v21);
}

uint64_t sub_218D9BA50()
{
  sub_219BE0244();
  sub_218D9C718(&qword_280EE8478, MEMORY[0x277D2E3E8], MEMORY[0x277D2E3D0]);
  return sub_219BDD234();
}

uint64_t sub_218D9BAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v79 = a1;
  v4 = sub_219BDBD34();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BDF1E4();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25EF0(0);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9C5E0(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v63 = v9;
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v52 - v10;
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9C5E0(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x28223BE20](v13);
  v53 = &v52 - v14;
  v58 = sub_219BDFCE4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE1444();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *(a2 + 16);
  v21 = *(a2 + 24);
  v81 = 0;
  v82 = 0xE000000000000000;
  v80 = v19;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v22 = [*(v21 + 16) identifier];
  v23 = sub_219BF5414();
  v25 = v24;

  MEMORY[0x21CECC330](v23, v25);

  sub_219BE1424();
  sub_2187F3258(0);
  v27 = v26;
  v28 = sub_219BDCD44();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v75 = *(v29 + 72);
  v77 = v27;
  v31 = swift_allocObject();
  v72 = xmmword_219C09BA0;
  *(v31 + 16) = xmmword_219C09BA0;
  v32 = *(v29 + 104);
  v74 = *MEMORY[0x277CEAD18];
  v78 = v28;
  v73 = v32;
  v32(v31 + v30);
  sub_218D9C718(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v76 = "FollowingNotificationsModel";
  sub_219BDCCC4();

  (*(v18 + 8))(v20, v17);
  sub_218D9C5E0(0, &qword_27CC11C10, MEMORY[0x277D6DA48]);
  v34 = v33;
  sub_218D9C664();
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_219BDFCD4();
  v36 = swift_allocObject();
  *(v36 + 16) = v72;
  v73(v36 + v30, v74, v78);
  sub_218D9C718(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v37 = v58;
  sub_219BDCCC4();

  (*(v57 + 8))(v16, v37);
  v38 = v59;
  sub_219BE7594();
  v39 = v60;
  v58 = v34;
  sub_219BE7564();
  v40 = v65;
  sub_219BE5F84();
  (*(v64 + 8))(v39, v40);
  v41 = v61;
  v42 = v63;
  sub_219BEB244();

  (*(v62 + 8))(v38, v42);
  v43 = v66;
  v44 = v67;
  if ((*(v66 + 48))(v41, 1, v67) == 1)
  {
    sub_218D9C6B8(v41, sub_218A25F90);
  }

  else
  {
    v45 = v53;
    (*(v43 + 32))(v53, v41, v44);
    sub_219BE6944();
    v46 = v54;
    sub_219BDF1C4();
    v47 = swift_allocObject();
    *(v47 + 16) = v72;
    v73(v47 + v30, v74, v78);
    sub_218D9C718(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
    v48 = v56;
    sub_219BDCCC4();

    (*(v55 + 8))(v46, v48);
    (*(v43 + 8))(v45, v44);
  }

  sub_219BDFEC4();
  v49 = v68;
  sub_219BE75A4();
  sub_218D9C718(&unk_280EE8520, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v50 = v70;
  v51 = *(v69 + 8);
  v51(v49, v70);
  sub_219BE7574();
  sub_219BDCC74();
  return (v51)(v49, v50);
}

uint64_t sub_218D9C550(uint64_t a1)
{
  sub_218D9C5E0(0, &qword_27CC11C10, MEMORY[0x277D6DA48]);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_218D9BAD0(a1, v4, v5);
}

void sub_218D9C5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingNotificationsDescriptor;
    v8[1] = &type metadata for FollowingNotificationsModel;
    v8[2] = sub_21878D8D8();
    v8[3] = sub_21878D92C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218D9C664()
{
  result = qword_27CC11C18;
  if (!qword_27CC11C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11C18);
  }

  return result;
}

uint64_t sub_218D9C6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D9C718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_218D9C760(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *a2;
    swift_unknownObjectRetain();
    if (sub_219BE82D4())
    {
      if (v5 == 2)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v5 & 1;
        *(v7 + 24) = v3;
        swift_unknownObjectRetain();
        sub_219BDD154();
        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_218D9C868(uint64_t a1, char a2, void *a3)
{
  v5 = sub_219BE1444();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v10 = [a3 identifier];
    sub_219BF5414();

    sub_219BE1424();
    sub_2187F3258(0);
    v11 = sub_219BDCD44();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    (*(v12 + 104))(v14 + v13, *MEMORY[0x277CEAD18], v11);
    sub_218D9CB14(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
    sub_219BDCCC4();

    (*(v6 + 8))(v9, v5);
    sub_219BDF714();
    sub_218D9CB14(&qword_27CC11C30, MEMORY[0x277D2DCF8], MEMORY[0x277D2DCF0]);
    memset(v15, 0, sizeof(v15));
    sub_219BDCCE4();
    sub_218806FD0(v15);
  }
}

uint64_t sub_218D9CB14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_218D9CB5C(char a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  v5[0] = 0;
  if ([v2 setMarketingNotificationsEnabled:a1 & 1 error:v5])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_219BDB724();

  return swift_willThrow();
}

id sub_218D9CC0C(char a1, char a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 16);
  v6[0] = 0;
  if ([v3 setPuzzleNotificationsEnabled:a1 & 1 userTriggered:a2 & 1 error:v6])
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_219BDB724();

  return swift_willThrow();
}

void sub_218D9CCE8(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (a2)
  {
    v6 = a2;
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62670);
    v8 = a2;
    oslog = sub_219BE5414();
    v9 = sub_219BF61F4();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_2186C1000, oslog, v9, "PushNotificationService failed to fetch configuration with error: %@", v10, 0xCu);
      sub_218962D30(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      MEMORY[0x21CECF960](v10, -1, -1);

      v14 = oslog;
    }

    else
    {

      v14 = a2;
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v18 = *(Strong + 16);

      v19 = sub_219BF5904();
      v20 = sub_219BF53D4();
      if (!a1 || (v21 = [a1 mySportsTagID]) == 0)
      {
        v21 = 0;
      }

      [v18 *a5];
    }
  }
}

void sub_218D9CF74(uint64_t a1)
{
  if (!qword_280E921F8)
  {
    type metadata accessor for ChannelSectionTagFeedGroupConfigData(255);
    sub_218D9D040(&qword_280E9BBB0, type metadata accessor for ChannelSectionTagFeedGroupConfigData, &unk_219C2AC00);
    sub_218D9D040(qword_280E9BBB8, type metadata accessor for ChannelSectionTagFeedGroupConfigData, &unk_219C2ABD8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E921F8);
    }
  }
}

uint64_t sub_218D9D040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ChannelSectionTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA3BE8;
  if (!qword_280EA3BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D9D0E8(uint64_t a1)
{
  sub_218D9CF74(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChannelSectionTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280E9BB10, &protocol descriptor for ChannelSectionsGroupPersonalizerType);
        if (v4 <= 0x3F)
        {
          sub_219BE5434();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_218D9D1DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D9D274, 0, 0);
}

uint64_t sub_218D9D274()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_218D9D348;
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  return MEMORY[0x282190858](v3, v4, &unk_219C37020, v1, v4);
}

uint64_t sub_218D9D348()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218D9D5DC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_218D9D4C8;
    v4 = v2[6];
    v5 = v2[3];
    v6 = v2[2];

    return sub_218D9F348(v6, v5, v4);
  }
}

uint64_t sub_218D9D4C8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_218D9D6CC;
  }

  else
  {
    v2 = sub_218D9D648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D9D5DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D9D648()
{
  sub_218DA08B4(*(v0 + 48), type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D9D6CC()
{
  sub_218DA08B4(*(v0 + 48), type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D9D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2187609C8;

  return MEMORY[0x28218FC58](a1, a2, a3, a4, a5);
}

uint64_t sub_218D9D818@<X0>(uint64_t *a1@<X8>)
{
  sub_218D9CF74(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 6;
  return result;
}

uint64_t sub_218D9D890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
  a2[4] = sub_218D9D040(qword_280EA9B78, type metadata accessor for ChannelSectionTagFeedGroupKnobs, &unk_219CD2C88);
  a2[5] = sub_218D9D040(&qword_27CC11C70, type metadata accessor for ChannelSectionTagFeedGroupKnobs, &unk_219CD2C60);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218DA2610(v2 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
}

uint64_t sub_218D9D958(uint64_t a1)
{
  type metadata accessor for ChannelSectionTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_2186E47EC(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_218DA2574(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_218D9DB24()
{
  sub_218D9CF74(0);

  return sub_219BEDCA4();
}

uint64_t sub_218D9DB50@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E47EC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218D9CF74(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DA08B4(inited + 32, sub_2188317B0);
  sub_218DA2678(0);
  a2[3] = v6;
  a2[4] = sub_218D9D040(&unk_27CC11C80, sub_218DA2678, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218D9DCD4(uint64_t a1)
{
  sub_218D9D040(&qword_27CC11C48, type metadata accessor for ChannelSectionTagFeedGroupEmitter, &unk_219C36EEC);

  return sub_219BE2324();
}

uint64_t sub_218D9DEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2187608D4;

  return sub_218D9E004(a1, a3);
}

uint64_t sub_218D9DF58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_218D9DEA8(a1, v5, v4);
}

uint64_t sub_218D9E004(uint64_t a1, uint64_t a2)
{
  v3[112] = v2;
  v3[111] = a2;
  v3[110] = a1;
  v3[113] = type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor(0);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = type metadata accessor for ChannelSectionTagFeedGroupEmitter(0);
  v3[117] = swift_task_alloc();
  v3[118] = *(type metadata accessor for ChannelSectionsGroupSectionModel(0) - 8);
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v3[121] = type metadata accessor for ChannelSectionsGroupPersonalizerRequest(0);
  v3[122] = swift_task_alloc();
  v3[123] = type metadata accessor for ChannelSectionsGroupModel(0);
  v3[124] = swift_task_alloc();
  sub_218DA24A4(0);
  v3[125] = swift_task_alloc();
  v4 = sub_219BF0BD4();
  v3[126] = v4;
  v3[127] = *(v4 - 8);
  v3[128] = swift_task_alloc();
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v5 = sub_219BEFBD4();
  v3[131] = v5;
  v3[132] = *(v5 - 8);
  v3[133] = swift_task_alloc();
  v3[134] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D9E2A8, 0, 0);
}

uint64_t sub_218D9E2A8(uint64_t a1)
{
  sub_219BEF164();
  v2 = *(v1 + 96);
  *(v1 + 208) = *(v1 + 80);
  *(v1 + 224) = v2;
  v3 = *(v1 + 128);
  *(v1 + 240) = *(v1 + 112);
  *(v1 + 256) = v3;
  v4 = *(v1 + 32);
  *(v1 + 144) = *(v1 + 16);
  *(v1 + 160) = v4;
  v5 = *(v1 + 64);
  *(v1 + 176) = *(v1 + 48);
  *(v1 + 192) = v5;
  *(v1 + 1080) = *(v1 + 208);

  sub_218A410EC(v1 + 144);
  v6 = swift_task_alloc();
  *(v1 + 1088) = v6;
  *v6 = v1;
  v6[1] = sub_218D9E490;

  return MEMORY[0x2821D23D8](v1 + 840);
}

uint64_t sub_218D9E490()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_218D9F220;
  }

  else
  {

    v2 = sub_218D9E5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D9E5AC()
{
  v126 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1000);
  v119 = *(v0 + 840);
  [v119 channel];
  sub_219BEF134();
  type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
  sub_219BEF524();
  sub_219BEFBC4();
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 1072);
  if (v4 == 1)
  {
    v6 = *(v0 + 1040);
    v7 = *(v0 + 1016);
    v8 = *(v0 + 1008);
    sub_218DA08B4(*(v0 + 1000), sub_218DA24A4);
    swift_getObjectType();
    sub_218DA23BC(v5);
    swift_unknownObjectRelease();
    v9 = *(v7 + 8);
    v9(v6, v8);
  }

  else
  {
    v10 = *(v0 + 1056);
    v122 = *(v0 + 1048);
    v11 = *(v0 + 1040);
    v12 = *(v0 + 1016);
    v13 = *(v0 + 1008);
    v111 = *(v0 + 1000);
    swift_unknownObjectRelease();
    v9 = *(v12 + 8);
    v9(v11, v13);
    (*(v10 + 32))(v5, v111, v122);
  }

  v108 = *(v0 + 1072);
  v112 = *(v0 + 1096);
  v104 = *(v0 + 1064);
  v123 = *(v0 + 1056);
  v101 = *(v0 + 1048);
  v14 = *(v0 + 1032);
  v15 = *(v0 + 1008);
  sub_218718690(*(v0 + 896) + *(*(v0 + 928) + 28), v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 784), *(v0 + 808));
  sub_219BEF134();
  sub_219BEF524();
  v9(v14, v15);
  v99 = *(v0 + 848);
  sub_219BEF134();
  sub_219BEF524();
  v9(v14, v15);
  v98 = *(v0 + 856);
  sub_219BEF134();
  sub_219BEF524();
  v9(v14, v15);
  v16 = *(v0 + 864);
  sub_219BEF134();
  sub_219BEF524();
  v9(v14, v15);
  v17 = *(v0 + 872);
  v18 = *(v123 + 16);
  v18(v104, v108, v101);
  sub_219BEF164();
  if (v112)
  {
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1056);
    v22 = *(v0 + 1048);

    v28 = *(v21 + 8);
    v28(v20, v22);
    v28(v19, v22);
    __swift_destroy_boxed_opaque_existential_1((v0 + 784));

    v29 = *(v0 + 8);
LABEL_7:

    return v29();
  }

  v113 = v17;
  v115 = v16;
  v23 = *(v0 + 384);
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 512) = v23;
  v24 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v24;
  v25 = *(v0 + 288);
  *(v0 + 400) = *(v0 + 272);
  *(v0 + 416) = v25;
  v26 = *(v0 + 320);
  *(v0 + 432) = *(v0 + 304);
  *(v0 + 448) = v26;
  v27 = *(v0 + 488);

  sub_218A410EC(v0 + 400);
  sub_219BEF164();
  v96 = v18;
  v97 = v9;
  v31 = *(v0 + 1056);
  v102 = *(v0 + 1048);
  v105 = *(v0 + 1064);
  v109 = *(v0 + 992);
  v32 = *(v0 + 976);
  v33 = *(v0 + 968);
  v34 = *(v0 + 928);
  v35 = *(v0 + 896);
  v36 = *(v0 + 608);
  *(v0 + 720) = *(v0 + 592);
  *(v0 + 736) = v36;
  v37 = *(v0 + 640);
  *(v0 + 752) = *(v0 + 624);
  *(v0 + 768) = v37;
  v38 = *(v0 + 544);
  *(v0 + 656) = *(v0 + 528);
  *(v0 + 672) = v38;
  v39 = *(v0 + 576);
  *(v0 + 688) = *(v0 + 560);
  *(v0 + 704) = v39;
  v40 = *(v0 + 752);

  sub_218A410EC(v0 + 656);
  v41 = *(v34 + 36);
  v42 = v33[12];
  v43 = sub_219BE5434();
  (*(*(v43 - 8) + 16))(v32 + v42, v35 + v41, v43);
  *&v44 = v99;
  *(&v44 + 1) = v98;
  *&v45 = v115;
  *(&v45 + 1) = v113;
  *v32 = v119;
  *(v32 + 24) = v45;
  *(v32 + 8) = v44;
  (*(v31 + 32))(v32 + v33[9], v105, v102);
  *(v32 + v33[10]) = v27;
  *(v32 + v33[11]) = v40;
  v46 = v119;
  sub_219BA640C(v32, v109);
  v114 = v46;
  v47 = *(v0 + 992);
  v48 = *(v0 + 984);
  sub_218DA08B4(*(v0 + 976), type metadata accessor for ChannelSectionsGroupPersonalizerRequest);
  __swift_destroy_boxed_opaque_existential_1((v0 + 784));
  sub_219BEF134();
  v49 = *(v47 + *(v48 + 24));
  v50 = *(v49 + 16);
  v106 = *v47;
  result = swift_unknownObjectRetain();
  v120 = v50;
  if (!v50)
  {
    v54 = MEMORY[0x277D84F90];
LABEL_23:
    v63 = *(v0 + 1072);
    v64 = *(v0 + 1048);
    v65 = *(v0 + 1024);
    v66 = *(v0 + 1008);
    v103 = *(v0 + 936);
    v117 = *(v0 + 920);
    v121 = *(v0 + 912);
    v67 = *(v0 + 904);
    v68 = *(v0 + 896);
    v69 = *(v0 + 880);
    v100 = sub_218DA0914(v65, v106, v54, v51);

    v97(v65, v66);
    v70 = *(v67 + 24);
    v96(v69 + v70, v63, v64);
    v71 = *MEMORY[0x277D320E8];
    v72 = sub_219BEE6F4();
    (*(*(v72 - 8) + 104))(v69 + v70, v71, v72);
    *v69 = v106;
    v69[1] = v100;
    sub_218DA2610(v68, v103, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
    sub_218DA2610(v69, v117, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
    sub_218DA2610(v69, v121, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
    v73 = sub_219BE5414();
    v74 = sub_219BF6214();
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 1072);
    v77 = *(v0 + 1056);
    v78 = *(v0 + 1048);
    v79 = *(v0 + 992);
    v80 = *(v0 + 936);
    if (v75)
    {
      v81 = *(v0 + 928);
      v82 = *(v0 + 920);
      v107 = *(v0 + 912);
      v124 = *(v0 + 1072);
      v83 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v125[0] = v110;
      *v83 = 136446722;
      v84 = (v80 + *(v81 + 32));
      v118 = v79;
      v85 = *v84;
      v86 = v84[1];

      sub_218DA08B4(v80, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
      v87 = sub_2186D1058(v85, v86, v125);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2048;
      v88 = *(*(v82 + 8) + 16);
      sub_218DA08B4(v82, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
      *(v83 + 14) = v88;
      *(v83 + 22) = 2082;
      v89 = [*v107 identifier];
      v90 = sub_219BF5414();
      v92 = v91;

      sub_218DA08B4(v107, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
      v93 = sub_2186D1058(v90, v92, v125);

      *(v83 + 24) = v93;
      _os_log_impl(&dword_2186C1000, v73, v74, "%{public}s created cursor to emit %ld sections, channel=%{public}s", v83, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v110, -1, -1);
      MEMORY[0x21CECF960](v83, -1, -1);

      (*(v77 + 8))(v124, v78);
      v94 = v118;
    }

    else
    {
      v95 = *(v0 + 912);
      sub_218DA08B4(*(v0 + 920), type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

      sub_218DA08B4(v80, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
      (*(v77 + 8))(v76, v78);
      sub_218DA08B4(v95, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
      v94 = v79;
    }

    sub_218DA08B4(v94, type metadata accessor for ChannelSectionsGroupModel);

    v29 = *(v0 + 8);
    goto LABEL_7;
  }

  v52 = 0;
  v116 = *(v0 + 960);
  v53 = *(v0 + 944);
  v54 = MEMORY[0x277D84F90];
  while (v52 < *(v49 + 16))
  {
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = *(v53 + 72);
    sub_218DA2610(v49 + v55 + v56 * v52, *(v0 + 960), type metadata accessor for ChannelSectionsGroupSectionModel);
    v57 = [*(v116 + 40) supergroupKnobs];
    if (v57 && (v58 = v57, v59 = [v57 isEligible], v58, !v59))
    {
      result = sub_218DA08B4(*(v0 + 960), type metadata accessor for ChannelSectionsGroupSectionModel);
    }

    else
    {
      sub_218DA24D8(*(v0 + 960), *(v0 + 952), type metadata accessor for ChannelSectionsGroupSectionModel);
      v125[0] = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_218C35380(0, *(v54 + 16) + 1, 1);
        v54 = v125[0];
      }

      v61 = *(v54 + 16);
      v60 = *(v54 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_218C35380((v60 > 1), v61 + 1, 1);
        v54 = v125[0];
      }

      v62 = *(v0 + 952);
      *(v54 + 16) = v61 + 1;
      result = sub_218DA24D8(v62, v54 + v55 + v61 * v56, type metadata accessor for ChannelSectionsGroupSectionModel);
    }

    if (v120 == ++v52)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218D9F220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D9F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[38] = type metadata accessor for ChannelSectionTagFeedGroupEmitter(0);
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor(0);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  sub_2186E47EC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v4[43] = swift_task_alloc();
  sub_219BEF554();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = type metadata accessor for TagFeedGroup(0);
  v4[50] = swift_task_alloc();
  v4[51] = *(type metadata accessor for ChannelSectionsGroupSectionModel(0) - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D9F5A0, 0, 0);
}

uint64_t sub_218D9F5A0(__n128 a1)
{
  v2 = *(*(v1 + 288) + 8);
  if (*(v2 + 16))
  {
    v3 = *(*(v1 + 408) + 80);
    sub_218DA2610(v2 + ((v3 + 32) & ~v3), *(v1 + 424), type metadata accessor for ChannelSectionsGroupSectionModel);
    sub_219BEF164();
    v6 = *(v1 + 224);
    *(v1 + 80) = *(v1 + 208);
    *(v1 + 96) = v6;
    v7 = *(v1 + 256);
    *(v1 + 112) = *(v1 + 240);
    *(v1 + 128) = v7;
    v8 = *(v1 + 160);
    *(v1 + 16) = *(v1 + 144);
    *(v1 + 32) = v8;
    v9 = *(v1 + 192);
    *(v1 + 48) = *(v1 + 176);
    *(v1 + 64) = v9;
    v10 = swift_task_alloc();
    *(v1 + 432) = v10;
    *v10 = v1;
    v10[1] = sub_218D9FB94;
    v11 = *(v1 + 424);
    v12 = *(v1 + 280);

    return sub_218DA0FAC(v12, v1 + 16, v11);
  }

  else
  {
    v4 = sub_219BEEDD4();
    sub_218D9D040(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D323C8], v4);
    swift_willThrow();

    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_218D9FB94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_218DA0328;
  }

  else
  {
    sub_218A410EC(v3 + 16);
    v4 = sub_218D9FCB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218D9FCB0()
{
  v18 = v0[50];
  v1 = v0[47];
  v17 = v0[48];
  v19 = v0[46];
  v2 = v0[43];
  v21 = v0[36];
  v22 = v0[42];
  v20 = *(v0[40] + 24);
  sub_218D9CF74(0);

  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v3 = sub_219BEE5D4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_219BED834();
  (*(v1 + 32))(v18, v17, v19);
  v4 = *(type metadata accessor for ChannelSectionTagFeedGroup(0) + 20);
  v5 = sub_219BEE6F4();
  (*(*(v5 - 8) + 16))(v18 + v4, v21 + v20, v5);
  swift_storeEnumTagMultiPayload();
  sub_21923969C(v22);
  v6 = v0[53];
  v7 = v0[50];
  v8 = v0[42];
  if (*(*(v22 + 8) + 16))
  {
    v9 = v0[40];
    v10 = v0[34];
    sub_218ACC140(0);
    v12 = (v10 + *(v11 + 48));
    sub_218DA2610(v7, v10, type metadata accessor for TagFeedGroup);
    v12[3] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    sub_218DA24D8(v8, boxed_opaque_existential_1, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

    sub_218DA08B4(v7, type metadata accessor for TagFeedGroup);
    sub_218DA08B4(v6, type metadata accessor for ChannelSectionsGroupSectionModel);
  }

  else
  {
    v14 = v0[34];
    sub_218DA08B4(v0[53], type metadata accessor for ChannelSectionsGroupSectionModel);

    sub_218DA08B4(v8, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
    sub_218DA24D8(v7, v14, type metadata accessor for TagFeedGroup);
  }

  sub_218A59C84(0);
  swift_storeEnumTagMultiPayload();

  v15 = v0[1];

  return v15();
}

uint64_t sub_218DA00E8()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_218DA0780;
  }

  else
  {
    v2 = sub_218DA01FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DA01FC()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 328);

  sub_218DA08B4(v1, type metadata accessor for ChannelSectionsGroupSectionModel);
  sub_218DA08B4(v2, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_218DA0328()
{
  v35 = v0;
  sub_218A410EC((v0 + 2));
  v1 = v0[56];
  v0[57] = v1;
  v3 = v0[52];
  v2 = v0[53];
  sub_218DA2610(v0[37], v0[39], type metadata accessor for ChannelSectionTagFeedGroupEmitter);
  sub_218DA2610(v2, v3, type metadata accessor for ChannelSectionsGroupSectionModel);
  v4 = v1;
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[52];
  v9 = v0[39];
  if (v7)
  {
    v10 = v0[38];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = v33;
    *v11 = 136446722;
    v13 = (v9 + *(v10 + 32));
    v15 = *v13;
    v14 = v13[1];

    sub_218DA08B4(v9, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
    v16 = sub_2186D1058(v15, v14, v34);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v17 = [*(v8 + 40) identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    sub_218DA08B4(v8, type metadata accessor for ChannelSectionsGroupSectionModel);
    v21 = sub_2186D1058(v18, v20, v34);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2114;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v23;
    *v12 = v23;
    _os_log_impl(&dword_2186C1000, v5, v6, "%{public}s failed to emit group for section, sectionID=%{public}s, error=%{public}@", v11, 0x20u);
    sub_218DA08B4(v12, sub_2189B3F3C);
    MEMORY[0x21CECF960](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v33, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  else
  {

    sub_218DA08B4(v9, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
    sub_218DA08B4(v8, type metadata accessor for ChannelSectionsGroupSectionModel);
  }

  v24 = v0[41];
  sub_21923969C(v24);
  if (*(*(v24 + 8) + 16))
  {
    v25 = swift_task_alloc();
    v0[58] = v25;
    *v25 = v0;
    v25[1] = sub_218DA00E8;
    v26 = v0[41];
    v27 = v0[34];
    v28 = v0[35];

    return sub_218D9F348(v27, v28, v26);
  }

  else
  {
    v30 = v0[53];
    v31 = v0[41];
    swift_willThrow();
    sub_218DA08B4(v30, type metadata accessor for ChannelSectionsGroupSectionModel);
    sub_218DA08B4(v31, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_218DA0780()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 328);

  sub_218DA08B4(v1, type metadata accessor for ChannelSectionsGroupSectionModel);
  sub_218DA08B4(v2, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_218DA08B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_218DA0914(uint64_t a1, char *a2, char *a3, __n128 a4)
{
  v7 = type metadata accessor for ChannelSectionsGroupSectionModel(0);
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v48 - v10;
  v11 = type metadata accessor for ChannelSectionTagFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
  sub_219BEF524();
  v14 = v52;
  sub_218DA2610(v4, v13, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
  v15 = sub_219BE5414();
  v16 = sub_219BF6214();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v52 = v18;
    *v17 = 136446466;
    v19 = &v13[*(v11 + 32)];
    v21 = *v19;
    v20 = v19[1];

    sub_218DA08B4(v13, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
    v22 = sub_2186D1058(v21, v20, &v52);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    if (v14)
    {
      v23 = 0x6C616E6F73726570;
    }

    else
    {
      v23 = 0x746C7561666564;
    }

    if (v14)
    {
      v24 = 0xEF6E6F6974617A69;
    }

    else
    {
      v24 = 0xE700000000000000;
    }

    v25 = sub_2186D1058(v23, v24, &v52);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_2186C1000, v15, v16, "%{public}s will order by %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v18, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);

    if (!v14)
    {
      goto LABEL_9;
    }

LABEL_27:

    return a3;
  }

  sub_218DA08B4(v13, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_9:
  v52 = a3;
  sub_218DA2540(0);
  sub_218D9D040(&qword_27CC11C60, sub_218DA2540, MEMORY[0x277D83970]);
  sub_218D9D040(&qword_27CC11C68, type metadata accessor for ChannelSectionsGroupSectionModel, &unk_219CC1BD0);
  v26 = sub_219BF56C4();
  v27 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v28 = [a2 defaultSectionID];
  if (!v28)
  {
    goto LABEL_12;
  }

  v29 = v28;
  v30 = sub_219BF5414();
  a3 = v31;

  v27 = sub_218840D24(0, 1, 1, MEMORY[0x277D84F90]);
  v33 = *(v27 + 2);
  v32 = *(v27 + 3);
  v34 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    *(v27 + 2) = v34;
    v35 = &v27[16 * v33];
    *(v35 + 4) = v30;
    *(v35 + 5) = a3;
    v52 = v27;
LABEL_12:
    v36 = [a2 sectionIDs];
    if (v36)
    {
      v37 = v36;
      v38 = sub_219BF5924();

      sub_2191ED3E8(v38);
      v27 = v52;
    }

    v51 = v27;
    v33 = MEMORY[0x277D837D0];
    sub_2186F83B8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();

    v30 = &v51;
    v34 = sub_219BF56E4();

    v39 = *(v34 + 16);
    if (!v39)
    {
      break;
    }

    a2 = 0;
    v40 = (v34 + 40);
    a3 = MEMORY[0x277D84F90];
    while (1)
    {
      v32 = *(v34 + 16);
      if (a2 >= v32)
      {
        break;
      }

      if (*(v26 + 16))
      {
        v33 = *(v40 - 1);
        v41 = *v40;

        v30 = v26;
        v42 = sub_21870F700(v33, v41);
        if (v43)
        {
          v33 = *(v50 + 72);
          v44 = v48;
          sub_218DA2610(*(v26 + 56) + v33 * v42, v48, type metadata accessor for ChannelSectionsGroupSectionModel);

          sub_218DA24D8(v44, v49, type metadata accessor for ChannelSectionsGroupSectionModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_2191F85EC(0, *(a3 + 2) + 1, 1, a3);
          }

          v46 = *(a3 + 2);
          v45 = *(a3 + 3);
          v30 = (v46 + 1);
          if (v46 >= v45 >> 1)
          {
            a3 = sub_2191F85EC((v45 > 1), v46 + 1, 1, a3);
          }

          *(a3 + 2) = v30;
          sub_218DA24D8(v49, &a3[((*(v50 + 80) + 32) & ~*(v50 + 80)) + v46 * v33], type metadata accessor for ChannelSectionsGroupSectionModel);
        }

        else
        {
        }
      }

      ++a2;
      v40 += 2;
      if (v39 == a2)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    v27 = sub_218840D24((v32 > 1), v34, 1, v27);
  }

  a3 = MEMORY[0x277D84F90];
LABEL_29:

  return a3;
}

uint64_t sub_218DA0FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186E47EC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[9] = swift_task_alloc();
  sub_2186E47EC(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[10] = swift_task_alloc();
  sub_2186E47EC(0, &qword_280E91A70, sub_2189AD5C8, v5);
  v4[11] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_218A89A94(0);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for ChannelSectionTagFeedGroupConfigData(0);
  v4[17] = swift_task_alloc();
  v7 = sub_219BF1934();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  sub_2186FE720(0);
  v4[21] = swift_task_alloc();
  v8 = sub_219BF3C84();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = sub_219BF2034();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DA1304, 0, 0);
}

uint64_t sub_218DA1304(uint64_t a1, uint64_t a2)
{
  v97 = v2;
  v3 = *(*(v2 + 56) + 48);
  v94 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_51:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v92 = v3 & 0xC000000000000001;
    v88 = *(v2 + 48);
    v90 = v3 & 0xFFFFFFFFFFFFFF8;
    v84 = v3;
    v7 = v3 + 4;
    while (1)
    {
      if (v92)
      {
        v8 = MEMORY[0x21CECE0F0](v6, v84);
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v20 = v94;
          v2 = v87;
          v5 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
        if (v6 >= *(v90 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v8 = v7[v6];
        swift_unknownObjectRetain();
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          goto LABEL_23;
        }
      }

      v2 = *(v88 + 88);
      v10 = [v8 identifier];
      v11 = sub_219BF5414();
      v13 = v12;

      if (*(v2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v14 = sub_219BF7AE4(), v3 = (v2 + 56), v15 = -1 << *(v2 + 32), v16 = v14 & ~v15, ((*(v2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(v2 + 48) + 16 * v16);
          v19 = *v18 == v11 && v18[1] == v13;
          if (v19 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v3 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
        if (v6 == v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_5:

        v3 = &v94;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v6 == v4)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_26:
  v21 = v20 < 0 || (v20 & 0x4000000000000000) != 0;
  if (v21)
  {
    if (sub_219BF7214())
    {
LABEL_31:
      v22 = *(v2 + 56);
      sub_2186F83B8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C189F0;
      *(v23 + 32) = *(v22 + 32);
      v24 = *(v22 + 40);
      *(v23 + 40) = v24;
      sub_2186E47EC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
      sub_219BF3E84();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_219C09BA0;
      v83 = v25;
      if (v21)
      {
        v26 = sub_219BF7214();
      }

      else
      {
        v26 = *(v20 + 16);
      }

      v89 = v24;
      if (v26)
      {
        v95 = v5;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
        v27 = sub_218C34A88(0, v26 & ~(v26 >> 63), 0);
        if (v26 < 0)
        {
          __break(1u);
          return MEMORY[0x2821921B8](v27, v28, v29, v30, v31);
        }

        v32 = 0;
        v33 = *(v2 + 184);
        v34 = v95;
        v35 = *MEMORY[0x277D34128];
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x21CECE0F0](v32, v20);
          }

          else
          {
            v36 = swift_unknownObjectRetain();
          }

          v37 = *(v87 + 192);
          v38 = *(v87 + 176);
          *v37 = v36;
          (*(v33 + 104))(v37, v35, v38);
          v95 = v34;
          v40 = *(v34 + 16);
          v39 = *(v34 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_218C34A88((v39 > 1), v40 + 1, 1);
            v34 = v95;
          }

          v41 = *(v87 + 192);
          v42 = *(v87 + 176);
          ++v32;
          *(v34 + 16) = v40 + 1;
          (*(v33 + 32))(v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v40, v41, v42);
        }

        while (v26 != v32);

        v2 = v87;
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
      }

      v43 = *(v2 + 168);
      v79 = *(v2 + 152);
      v80 = *(v2 + 144);
      v75 = *(v2 + 136);
      v76 = *(v2 + 128);
      v78 = *(v2 + 120);
      v81 = *(v2 + 88);
      v82 = *(v2 + 80);
      v91 = *(v2 + 72);
      v93 = *(v2 + 64);
      sub_218F0B984(v5);
      sub_218F0BA7C(v5);
      sub_218F0BB90(v5);
      sub_219BF3E74();
      v44 = sub_219BEC004();
      v77 = *(*(v44 - 8) + 56);
      v77(v43, 1, 1, v44);
      sub_219A95188(v5);
      sub_219A95188(v5);
      sub_219A951A0(v5);
      v45 = sub_219A951B8(v5);
      v46 = v5;
      v47 = sub_219A952CC(v5);
      v48 = sub_219A952E4(v5);
      v74 = sub_219A953F8(v46);
      sub_219BF2024();
      sub_218D9CF74(0);
      sub_219BEDD14();
      v85 = *(v76 + 20);
      v95 = sub_219BEDCA4();
      v96 = v49;
      MEMORY[0x21CECC330](45, 0xE100000000000000);
      v50 = [v89 identifier];
      v51 = sub_219BF5414();
      v53 = v52;

      MEMORY[0x21CECC330](v51, v53);

      v54 = [v89 identifier];
      sub_219BF5414();

      v77(v43, 1, 1, v44);
      sub_218A42400(0);
      (*(*(v55 - 8) + 56))(v78, 1, 1, v55);
      sub_219BF1764();

      sub_218DA08B4(v78, sub_218A89A94);
      sub_218DA08B4(v43, sub_2186FE720);
      v56 = *(v79 + 8);
      *(v87 + 224) = v56;
      *(v87 + 232) = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v56(v75 + v85, v80);
      v57 = type metadata accessor for ChannelSectionTagFeedGroupEmitter(0);
      v58 = (v93 + *(v57 + 24));
      v59 = v58[3];
      v86 = v58[4];
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v60 = *(v57 + 20);
      sub_2189AD5C8(0);
      v62 = v61;
      v63 = *(v61 - 8);
      (*(v63 + 16))(v81, v93 + v60, v61);
      (*(v63 + 56))(v81, 0, 1, v62);
      sub_219BEF0B4();
      v64 = *(*(v87 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      v65 = sub_219BF35D4();
      (*(*(v65 - 8) + 56))(v82, 1, 1, v65);
      *(v87 + 264) = 3;
      sub_218DA2574(0, &qword_280E90090, MEMORY[0x277D33F88]);
      swift_allocObject();

      sub_219BF38D4();
      sub_219BEF0B4();
      sub_218CB8CBC();

      sub_219BEF0B4();
      v66 = *(*(v87 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      sub_219BF3914();
      swift_allocObject();
      sub_219BF3904();
      v67 = sub_219BF2774();
      (*(*(v67 - 8) + 56))(v91, 1, 1, v67);
      v68 = qword_280E8D7F8;
      *MEMORY[0x277D30BC0];
      if (v68 != -1)
      {
        swift_once();
      }

      qword_280F61708;
      sub_219BF2A84();
      v69 = swift_task_alloc();
      *(v87 + 240) = v69;
      *v69 = v87;
      v69[1] = sub_218DA1FFC;
      v28 = *(v87 + 216);
      v29 = *(v87 + 112);
      v27 = *(v87 + 160);
      v30 = v59;
      v31 = v86;

      return MEMORY[0x2821921B8](v27, v28, v29, v30, v31);
    }
  }

  else if (*(v20 + 16))
  {
    goto LABEL_31;
  }

  v70 = sub_219BEEDD4();
  sub_218D9D040(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D32428], v70);
  swift_willThrow();

  v72 = *(v2 + 8);

  return v72();
}

uint64_t sub_218DA1FFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v4[31] = v1;

  v6 = (v5 + 8);
  v7 = v4[14];
  v8 = v4[12];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_218DA22A0;
  }

  else
  {
    v4[32] = a1;
    (*v6)(v7, v8);
    v9 = sub_218DA2188;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_218DA2188()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v0 + 224))(*(v0 + 160), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 256);

  return v4(v5);
}

uint64_t sub_218DA22A0()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v0 + 224))(*(v0 + 160), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_218DA23BC@<X0>(uint64_t a1@<X8>)
{
  if ([v1 isLocal])
  {
    v3 = *MEMORY[0x277D32990];
    v4 = sub_219BEFBD4();
    v5 = *(*(v4 - 8) + 104);
    v6 = v4;
    v7 = a1;
    v8 = v3;
  }

  else
  {
    v9 = [v1 isNewspaper];
    v6 = sub_219BEFBD4();
    v5 = *(*(v6 - 8) + 104);
    if (v9)
    {
      v10 = MEMORY[0x277D329B0];
    }

    else
    {
      v10 = MEMORY[0x277D32918];
    }

    v8 = *v10;
    v7 = a1;
  }

  return v5(v7, v8, v6);
}

uint64_t sub_218DA24D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218DA2574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig(255);
    v7 = sub_218D9D040(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218DA2610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218DA26AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_218DA2700();
  }
}

void sub_218DA2700()
{
  v1 = v0;
  v2 = type metadata accessor for SearchFilterItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong text], v7, v8))
  {
    v9 = sub_219BF5414();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = *(v1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_filterProvider + 8);
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 8))(ObjectType, v12);
  if (!v11)
  {
    if (!v14)
    {
      goto LABEL_32;
    }

    v47 = v9;
    goto LABEL_14;
  }

  v15 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v15 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    if (v15)
    {
      v48 = v1;
      v18 = 0;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v47 = v9;
  if (!v15)
  {
LABEL_14:
    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = v14;
      v46 = v11;
      v48 = v1;
LABEL_16:
      v49 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v16, 0);
      v18 = v49;
      v19 = *(v3 + 80);
      v45 = v17;
      v20 = v17 + ((v19 + 32) & ~v19);
      v21 = *(v3 + 72);
      do
      {
        sub_218957A08(v20, v5);
        v23 = *(v5 + 2);
        v22 = *(v5 + 3);
        sub_21892DEAC(v23, v22);
        sub_218DA5FCC(v5, type metadata accessor for SearchFilterItem);
        v49 = v18;
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21870B65C((v24 > 1), v25 + 1, 1);
          v18 = v49;
        }

        *(v18 + 16) = v25 + 1;
        v26 = v18 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v22;
        v20 += v21;
        --v16;
      }

      while (v16);

      v11 = v46;
      goto LABEL_21;
    }

LABEL_32:

    sub_219BE5914();

    v39 = *(*(v1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
    v40 = swift_getObjectType();
    (*(v39 + 64))(v40, v39);
    return;
  }

  v16 = *(v14 + 16);
  v48 = v1;
  if (v16)
  {
    v17 = v14;
    v46 = v11;
    goto LABEL_16;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_21:
  v9 = v47;
LABEL_24:
  v27 = v48;
  v47 = *(v48 + OBJC_IVAR____TtC7NewsUI220SearchViewController_origination);
  sub_219BE86E4();
  v28 = objc_allocWithZone(sub_219BE9274());
  v45 = sub_219BE9254();
  sub_218DA3954(&v49);
  v29 = v50;
  v30 = v51;
  v43 = v52;
  v44 = v49;
  v42 = v53;
  HIDWORD(v41) = v54;
  sub_218DA387C();
  v32 = v31;
  v46 = OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam;
  v33 = *(v27 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam);
  if (v11)
  {
    v34 = v9;
  }

  else
  {
    v34 = 0;
  }

  if (v11)
  {
    v35 = v11;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v36 = *(*(v27 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
  v37 = swift_getObjectType();
  v56[0] = v34;
  v56[1] = v35;
  v56[2] = v18;
  v56[3] = v47;
  v56[4] = v32;
  v57 = v33;
  v38 = v45;
  v49 = v45;
  v50 = v44;
  v51 = v29;
  v52 = v30;
  v53 = v43;
  v54 = v42;
  v55 = BYTE4(v41);
  (*(v36 + 48))(v56, 0, &v49, v37, v36);

  *(v27 + v46) = 0;
  *(v27 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 1;
}

void sub_218DA2B40(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_219BE5914();

    v3 = *(*&v2[OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler] + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 64))(ObjectType, v3);
  }
}

id sub_218DA2C14()
{
  ObjectType = swift_getObjectType();

  sub_219BE58F4();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_218DA2DEC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler);
  sub_219BE86E4();
  v3 = objc_allocWithZone(sub_219BE9274());
  v4 = sub_219BE9254();
  sub_218DA3954(&v14);
  v6 = v14;
  v5 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v14 = v4;
  v15 = v6;
  v16 = v5;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  (*(v11 + 32))(&v14, ObjectType, v11);

  return result;
}

void sub_218DA2EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  sub_219BE5914();

  sub_219BE86E4();
  v7 = objc_allocWithZone(sub_219BE9274());
  v20 = sub_219BE9254();
  sub_218DA3954(&v25);
  v9 = v25;
  v8 = v26;
  v10 = v27;
  v18 = v28;
  v11 = v29;
  v17 = v30;
  sub_218DA387C();
  v13 = v12;
  v21 = OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam;
  v14 = *(v5 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam);
  v15 = *(*(v5 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  v32[0] = a1;
  v32[1] = a2;
  v32[2] = a3;
  v32[3] = a4;
  v32[4] = v13;
  v33 = v14;
  v25 = v20;
  v26 = v9;
  v27 = v8;
  v28 = v10;
  v29 = v18;
  v30 = v11;
  v31 = v17;
  v16 = *(v15 + 48);

  v16(v32, 0, &v25, ObjectType, v15);

  *(v5 + v21) = 0;
  *(v5 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 1;
}

void sub_218DA3108()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v8 setFrame_];
    sub_219BE8664();
    v19 = sub_219BE7BC4();

    sub_218807578(0);
    sub_2186D76A0(&qword_280E90610, sub_218807578, MEMORY[0x277D33560]);
    sub_219BF6C74();

    v20 = [v1 traitCollection];
    sub_218DA62C8();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_218DA3330()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2186D76A0(&qword_280E92580, MEMORY[0x277D31D00], MEMORY[0x277D31CF8]);
  return sub_219BF1C54();
}

void sub_218DA34A0(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(char *))
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);

  a5(v9);
}

id sub_218DA352C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE8164();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_viewWillLayoutSubviews, v4);
  result = [*&v0[OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  [result bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v8 setFrame_];
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE7FF4();
  v19 = v18;
  sub_219BE7FF4();
  if (v20 < v19)
  {
    v19 = v20;
  }

  sub_219BE8664();
  v21 = sub_219BE7BC4();

  [v21 setContentInset_];

  return (*(v3 + 8))(v6, v2);
}

void sub_218DA387C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController) view];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  v11 = CGRectGetHeight(v12) / 44.0;
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v11 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_218DA3954(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = [Strong text], v4, v5))
  {
    v6 = sub_219BF5414();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_origination);
  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v8)
  {
    v11 = v8;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_218DA3A08(uint64_t a1)
{
  v1 = sub_219BEB384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_219BE5914();

  sub_219BE8644();
  *v8 = sub_219BF1554();
  v8[1] = v9;
  v10 = sub_219BE5AA4();
  v11 = MEMORY[0x277D6D2E8];
  v8[5] = v10;
  v8[6] = v11;
  __swift_allocate_boxed_opaque_existential_1(v8 + 2);
  sub_219BE5A94();
  v8[7] = sub_219BF1534();
  v8[8] = v12;
  (*(v6 + 104))(v8, *MEMORY[0x277D6EC98], v5);
  (*(v2 + 104))(v4, *MEMORY[0x277D6ECA8], v1);
  sub_219BE6BD4();

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218DA3C50(uint64_t a1)
{
  v1 = sub_219BEB384();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;

  sub_219BE5914();

  sub_219BE8644();
  sub_219BE6BA4();

  v11 = (*(v5 + 88))(v10, v4);
  v12 = *MEMORY[0x277D6EC88];
  v13 = *(v5 + 8);
  result = v13(v10, v4);
  if (v11 == v12)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v15 = sub_219BF01B4();
    v16 = __swift_project_value_buffer(v15, qword_280F61940);
    v7[3] = v15;
    v7[4] = sub_2186D76A0(&qword_280E91000, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v20 = sub_219BF54E4();
    v22 = v21;

    v7[5] = v20;
    v7[6] = v22;
    (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
    v24 = v25;
    v23 = v26;
    (*(v25 + 104))(v3, *MEMORY[0x277D6ECB0], v26);
    sub_219BE6BD4();

    (*(v24 + 8))(v3, v23);
    return v13(v7, v4);
  }

  return result;
}

uint64_t sub_218DA4054(uint64_t a1)
{
  v1 = sub_219BEB384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE5914();

  sub_219BE8644();
  (*(v6 + 104))(v8, *MEMORY[0x277D6EC88], v5);
  (*(v2 + 104))(v4, *MEMORY[0x277D6ECA8], v1);
  sub_219BE6BD4();

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218DA4254(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_origination) != 5)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

double sub_218DA4340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27[1] = a1;
  v5 = type metadata accessor for SearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3BCC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953A84(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong resignFirstResponder];
  }

  sub_219BE86D4();
  if (*(v3 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) == 1)
  {
    *(v3 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 0;
    sub_2189539F0(0);
    v27[0] = a2;
    sub_219BE5F84();
    sub_218DA609C(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
    sub_219BEB244();

    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_218DA5FCC(v10, sub_218AF3BCC);
      v18 = 0;
    }

    else
    {
      (*(v13 + 32))(v15, v10, v12);
      sub_219BE6934();
      (*(v13 + 8))(v15, v12);
      v18 = swift_getEnumCaseMultiPayload() == 6;
      sub_218DA5FCC(v7, type metadata accessor for SearchSectionDescriptor);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    a2 = v27[0];
    if (v19 && (v20 = v19, v21 = [v19 text], v20, v21))
    {
      v22 = sub_219BF5414();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    sub_219531BC8(a2, v22, v24, v18);
  }

  sub_218DA609C(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  sub_2186D76A0(&qword_27CC11D10, type metadata accessor for SearchModel, &unk_219C18F18);
  v25 = sub_219BEB304();
  sub_218DA3954(v32);
  v28[0] = v32[0];
  v28[1] = v32[1];
  v29 = v33;
  v30 = v34;
  v31 = v35;
  sub_219532118(a2, v25, v28);

  return result;
}

void sub_218DA475C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for SearchFilterItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_219BDB0F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_219BE9F74();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v18, a3, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D6E950])
  {
    (*(v15 + 8))(v18, v14);
LABEL_3:
    v20 = *(*(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v20 + 72))(ObjectType, v20);
    return;
  }

  if (v19 == *MEMORY[0x277D6E928])
  {
    v85 = v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v23 = Strong, v24 = [Strong text], v23, v24))
    {
      v84 = sub_219BF5414();
      v26 = v25;
    }

    else
    {
      v84 = 0;
      v26 = 0;
    }

    v30 = *(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_filterProvider + 8);
    v31 = swift_getObjectType();
    v32 = (*(v30 + 8))(v31, v30);
    v33 = swift_unknownObjectWeakLoadStrong();
    v86 = v26;
    if (v33)
    {
      v34 = v32;
      v35 = v33;
      v36 = [v33 &selRef_listenableArticleIDs];

      if (v36)
      {
        v37 = sub_219BF5414();
        v39 = v38;

        v87 = v37;
        v88 = v39;
        sub_219BDB0D4();
        sub_2187F3BD4();
        v40 = sub_219BF7024();
        v42 = v41;
        (*(v11 + 8))(v13, v10);

        v43 = HIBYTE(v42) & 0xF;
        if ((v42 & 0x2000000000000000) == 0)
        {
          v43 = v40 & 0xFFFFFFFFFFFFLL;
        }

        v44 = v43 == 0;
      }

      else
      {
        v44 = 1;
      }

      v32 = v34;
      v45 = v85;
      if (v34)
      {
LABEL_25:
        v47 = *(v32 + 16);
        if (v44)
        {
          if (!v47)
          {

            goto LABEL_28;
          }
        }

        else if (!v47)
        {

          v46 = MEMORY[0x277D84F90];
LABEL_36:
          sub_219BE86E4();
          v67 = objc_allocWithZone(sub_219BE9274());
          v83 = sub_219BE9254();
          sub_218DA3954(&v87);
          v68 = v88;
          v69 = v89;
          v81 = v90;
          v82 = v87;
          v80 = v91;
          v79 = v92;
          sub_218DA387C();
          v71 = v70;
          v85 = OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam;
          v72 = *(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam);
          if (v86)
          {
            v73 = v84;
          }

          else
          {
            v73 = 0;
          }

          if (v86)
          {
            v74 = v86;
          }

          else
          {
            v74 = 0xE000000000000000;
          }

          v75 = *(*(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
          v76 = swift_getObjectType();
          v94[0] = v73;
          v94[1] = v74;
          v94[2] = v46;
          v94[3] = 9;
          v94[4] = v71;
          v95 = v72;
          v77 = v83;
          v87 = v83;
          v88 = v82;
          v89 = v68;
          v90 = v69;
          v91 = v81;
          v92 = v80;
          v93 = v79;
          (*(v75 + 48))(v94, 0, &v87, v76, v75);

          *(v4 + v85) = 0;
          *(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 1;
          return;
        }

        v85 = v4;
        v87 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v47, 0);
        v46 = v87;
        v59 = *(v45 + 80);
        v83 = v32;
        v60 = v32 + ((v59 + 32) & ~v59);
        v61 = *(v45 + 72);
        do
        {
          sub_218957A08(v60, v9);
          v63 = *(v9 + 2);
          v62 = *(v9 + 3);
          sub_21892DEAC(v63, v62);
          sub_218DA5FCC(v9, type metadata accessor for SearchFilterItem);
          v87 = v46;
          v65 = v46[2];
          v64 = v46[3];
          if (v65 >= v64 >> 1)
          {
            sub_21870B65C((v64 > 1), v65 + 1, 1);
            v46 = v87;
          }

          v46[2] = v65 + 1;
          v66 = &v46[2 * v65];
          v66[4] = v63;
          v66[5] = v62;
          v60 += v61;
          --v47;
        }

        while (v47);

        v4 = v85;
        goto LABEL_36;
      }
    }

    else
    {
      v44 = 1;
      v45 = v85;
      if (v32)
      {
        goto LABEL_25;
      }
    }

    if (v44)
    {
LABEL_28:

      v48 = *(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler);
      sub_219BE86E4();
      v49 = objc_allocWithZone(sub_219BE9274());
      v50 = sub_219BE9254();
      sub_218DA3954(&v87);
      v52 = v87;
      v51 = v88;
      v53 = v89;
      v54 = v90;
      v55 = v91;
      v56 = v92;
      v57 = *(v48 + 40);
      v58 = swift_getObjectType();
      v87 = v50;
      v88 = v52;
      v89 = v51;
      v90 = v53;
      v91 = v54;
      v92 = v55;
      v93 = v56;
      (*(v57 + 32))(&v87, v58, v57);

      return;
    }

    v46 = 0;
    goto LABEL_36;
  }

  if (v19 == *MEMORY[0x277D6E948])
  {
    goto LABEL_3;
  }

  if (v19 != *MEMORY[0x277D6E978])
  {
    if (v19 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v19 != *MEMORY[0x277D6E958])
    {
      if (v19 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v27 = sub_219BE7BC4();

        v28 = [v27 collectionViewLayout];

        [v28 invalidateLayout];
        sub_219BE8664();
        v29 = sub_219BE7BC4();

        [v29 reloadData];
      }

      else if (v19 != *MEMORY[0x277D6E960] && v19 != *MEMORY[0x277D6E968] && v19 != *MEMORY[0x277D6E938] && v19 != *MEMORY[0x277D6E940])
      {
        (*(v15 + 8))(v18, v14);
      }
    }
  }
}

uint64_t sub_218DA4FA0()
{
  v0 = sub_219BF0F34();
  v19 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189539F0(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2186EB018(0);
      goto LABEL_11;
    }

    sub_2186F8128(0);
    v14 = type metadata accessor for SearchFeedGapLocation;
    v15 = &v10[*(v13 + 48)];
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v19 + 8))(v2, v0);
      sub_219BE5F84();
      v16 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v5 + 8))(v7, v4);
      return v16;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2186EB308(0);
LABEL_11:
      (*(*(v12 - 8) + 8))(v10, v12);
      return 0;
    }

    v14 = type metadata accessor for SearchModel;
    v15 = v10;
  }

  sub_218DA5FCC(v15, v14);
  return 0;
}

double sub_218DA52D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler);
  sub_219BE86E4();
  v4 = objc_allocWithZone(sub_219BE9274());
  v5 = sub_219BE9254();
  sub_218DA3954(&v17);
  v7 = v17;
  v6 = v18;
  v8 = v19;
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v14 = *(v3 + 120);
  v17 = v5;
  v18 = v7;
  v19 = v6;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  (*(v12 + 56))(a2, v14, &v17, ObjectType, v12);

  return result;
}

void sub_218DA53E4(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v10[3] = v11;
    v10[4] = sub_2186D76A0(&qword_280E91000, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v10[5] = v16;
    v10[6] = v18;
    (*(v8 + 104))(v10, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_218DA5740(uint64_t a1, uint64_t a2)
{
  sub_218DA609C(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  sub_2186D76A0(&qword_27CC11D10, type metadata accessor for SearchModel, &unk_219C18F18);
  v3 = sub_219BEB304();
  sub_218DA3954(&v6);
  v4 = sub_2195326AC(a2, v3);

  return v4;
}

double sub_218DA5888(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE8F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_219BDD154();

  return result;
}

uint64_t sub_218DA5B78()
{
  *(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam) = 1;
  v1 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t sub_218DA5BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v23 = a3;
  v24 = a4;
  v30 = a1;
  v25 = a9;
  sub_218DA609C(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_219BE86A4();
  v40 = v32;
  sub_2189871A8(0);
  sub_2186D76A0(&qword_280EE5510, sub_2189871A8, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_218DA6190(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  v31 = xmmword_219C09BA0;
  *(v15 + 16) = xmmword_219C09BA0;
  v16 = swift_allocObject();
  *(v16 + 16) = v31;
  v17 = sub_219BE6684();
  type metadata accessor for SearchFeedServiceConfig(0);
  sub_2186D76A0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
  *&v31 = v11;
  v18 = sub_219BEB284();
  v32 = a2;
  v33 = v23;
  v34 = v24;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  v39 = v25;
  sub_219BE57D4();
  sub_219BE57B4();
  v19 = sub_219BE6624();

  sub_21885AB78(v18);
  if (v19)
  {
    v20 = MEMORY[0x277D6D630];
  }

  else
  {
    v17 = 0;
    v20 = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
  }

  *(v16 + 32) = v19;
  *(v16 + 56) = v17;
  *(v16 + 64) = v20;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v21 = sub_219BE59D4();
  (*(v12 + 8))(v14, v31);
  return v21;
}

uint64_t sub_218DA5FCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218DA602C(uint64_t a1)
{
  sub_219BE8F74();

  return sub_219897EA8();
}

void sub_218DA609C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D76A0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_2186D76A0(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218DA6190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218DA61F4()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC7NewsUI220SearchViewController_searchAction;
  sub_218803FE0();
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC7NewsUI220SearchViewController_clearAction;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  *(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_218DA62C8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7NewsUI220SearchViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI220SearchViewController_styler], v17);
  v3 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
  [v5 setBackgroundColor_];

  __swift_destroy_boxed_opaque_existential_1(v17);
  v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
  sub_219BE8664();
  v8 = sub_219BE7BC4();

  [v8 setBackgroundColor_];
  [v8 setAlwaysBounceVertical_];

  v9 = [v1 parentViewController];
  if (v9)
  {
    v10 = v9;
    sub_219BE7984();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      sub_218718690(v2, v17);
      v13 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v14 = [v12 view];
      if (v14)
      {
        v15 = v14;
        v16 = *(*__swift_project_boxed_opaque_existential_1((*v13 + 16), *(*v13 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
        [v15 setBackgroundColor_];

        __swift_destroy_boxed_opaque_existential_1(v17);
        return;
      }

      goto LABEL_9;
    }
  }
}

void sub_218DA6504()
{

  sub_219BE5914();

  MEMORY[0x21CEC15C0](v0);
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 adjustedContentInset];
  [v2 setContentOffset:0 animated:{0.0, -v1}];
}

uint64_t sub_218DA65C4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ContinueReadingEligibility(0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![*(v2 + 16) useContinueReading])
  {
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    goto LABEL_5;
  }

  NewsActivityInfoDeserializer.deserialize(userActivity:)(a1, &v31);
  v9 = v31;
  if ((~v31 & 0xF000000000000007) == 0)
  {
    *v8 = a1;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_218DA6B6C(0);
    swift_allocObject();
    v10 = a1;
    return sub_219BE3014();
  }

  v34 = v31;
  sub_2190902E8(&v31);
  v14 = v31;
  v13 = v32;
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      v31 = a1;
      LOBYTE(v32) = 0;
      v20 = a1;
      v21 = sub_218A70D04(v14, v13, &v31, a2);
      sub_218DA6BC4(v14, v13, 2u);
      sub_218970170(v9);
      sub_218A57FB4(v31, v32);
      return v21;
    }

    *v8 = v9;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_218DA6B6C(0);
    swift_allocObject();
    return sub_219BE3014();
  }

  v30 = v32;
  if (v33)
  {
    MEMORY[0x28223BE20](v12);
    *(&v29 - 4) = v2;
    *(&v29 - 3) = v14;
    *(&v29 - 2) = v13;
    sub_219BDED54();
    v22 = a1;
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v23 = sub_219BF66A4();
    sub_218DA6C10(0);
    sub_219BE2F84();

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = a1;
    *(v25 + 32) = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_218DA6C80;
    *(v26 + 24) = v25;
    v27 = v22;
    v28 = sub_219BE2E54();
    v19 = sub_219BE2F64();

    sub_218DA6BC4(v14, v30, 1u);
    sub_218970170(v9);
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    *(&v29 - 4) = v2;
    *(&v29 - 3) = v14;
    *(&v29 - 2) = v15;
    sub_218731D50();
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v16 = sub_219BF66A4();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = 0;
    v18 = a1;
    v19 = sub_219BE2F84();

    sub_218DA6BC4(v14, v30, 0);
    sub_218970170(v9);
  }

  return v19;
}

uint64_t sub_218DA6AB0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 320));
  return v0;
}

uint64_t sub_218DA6B38()
{
  sub_218DA6AB0();

  return swift_deallocClassInstance();
}

void sub_218DA6B6C(uint64_t a1)
{
  if (!qword_280EE6D58)
  {
    type metadata accessor for ContinueReadingEligibility(255);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6D58);
    }
  }
}

double sub_218DA6BC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_218DA6BD8(a1, a2, a3);
  }

  return result;
}

double sub_218DA6BD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_218DA6C10(uint64_t a1)
{
  if (!qword_27CC11D18)
  {
    sub_219BDED54();
    sub_2189EB4C0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11D18);
    }
  }
}

uint64_t sub_218DA6C8C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_218DA6C10(0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t type metadata accessor for CuratedTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EBBB40;
  if (!qword_280EBBB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DA6D90(uint64_t a1)
{
  sub_218A27A84(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CuratedTagFeedGroupKnobs(319);
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

uint64_t sub_218DA6E3C(uint64_t a1)
{
  v65 = a1;
  v67 = *MEMORY[0x277D85DE8];
  sub_218A59E00(0);
  v64 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v46 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_219BF1934();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v49);
  v61 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v44 - v9;
  v10 = sub_219BF0BD4();
  v54 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  v14 = *(v3 + 72);
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v44 = 3 * v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C0B8C0;
  v62 = v16;
  v45 = v15;
  v17 = (v16 + v15);
  v63 = v1 + *(type metadata accessor for CuratedTagFeedGroupEmitter(0) + 20);
  v56 = type metadata accessor for CuratedTagFeedGroupKnobs(0);
  sub_219BEF134();
  v18 = sub_219BEEDF4();
  v19 = *(v11 + 8);
  v53 = v11 + 8;
  v55 = v19;
  v19(v13, v10);
  *(swift_allocObject() + 16) = v18;
  sub_218DAADD4(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v17 = sub_219BEFB94();
  v20 = *MEMORY[0x277D32308];
  v47 = v3;
  v21 = *(v3 + 104);
  v22 = v64;
  v21(v17, v20, v64);
  swift_allocObject();
  *(v17 + v14) = sub_219BEFB94();
  v59 = v14;
  v60 = v21;
  v57 = v17;
  v58 = v20;
  v21((v17 + v14), v20, v22);
  sub_219BEF134();
  sub_219BEF524();
  v55(v13, v54);
  v23 = 0;
  v24 = 0;
  if (v66 == 1)
  {
    sub_218A27A84(0);
    v25 = v48;
    sub_219BEDD14();
    v26 = v50;
    v28 = v51;
    v27 = v52;
    (*(v51 + 16))(v50, v25 + *(v49 + 20), v52);
    sub_218DAB11C(v25, type metadata accessor for CuratedTagFeedGroupConfigData);
    v23 = sub_219BF1784();
    v24 = v29;
    (*(v28 + 8))(v26, v27);
  }

  v30 = (v57 + 2 * v59);
  v31 = swift_allocObject();
  *(v31 + 16) = v23;
  *(v31 + 24) = v24;
  swift_allocObject();
  *v30 = sub_219BEFB94();
  v32 = v64;
  v33 = v60;
  v60(v30, v58, v64);
  sub_218A27A84(0);
  v34 = v61;
  sub_219BEDD14();
  v35 = sub_219BF7614();
  sub_218DAB11C(v34, type metadata accessor for CuratedTagFeedGroupConfigData);
  if (v35)
  {
    v36 = v62;
  }

  else
  {
    sub_218DAAED0(0, &qword_280E8B8A0, MEMORY[0x277D32F00], MEMORY[0x277D84560]);
    v37 = sub_219BF0644();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_219C09BA0;
    (*(v38 + 104))(v40 + v39, *MEMORY[0x277D32EF8], v37);
    v41 = sub_2194B3180(v40);
    swift_setDeallocating();
    (*(v38 + 8))(v40 + v39, v37);
    swift_deallocClassInstance();
    v42 = v46;
    *v46 = v41;
    v33(v42, *MEMORY[0x277D322C8], v32);
    v36 = sub_2191F7464(1, 4, 1, v62);
    *(v36 + 2) = 4;
    (*(v47 + 32))(&v36[v45 + v44], v42, v32);
  }

  LOBYTE(v66) = 8;
  sub_2189AD5C8(0);
  v66 = sub_219BEE964();
  sub_2191EDA0C(v36);
  return v66;
}

uint64_t sub_218DA769C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedTagFeedGroupEmitter(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v2;
  v18 = a1;
  sub_219BF2754();
  sub_219BE3204();
  sub_218DAAFEC(v2, v7, type metadata accessor for CuratedTagFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_218DAACD8(v7, v10 + v8);
  *(v10 + v9) = a1;

  v11 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F64();

  sub_218DAAFEC(v2, v7, type metadata accessor for CuratedTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_218DAACD8(v7, v12 + v8);
  v13 = sub_219BE2E54();
  v14 = sub_219BE3064();

  return v14;
}

uint64_t sub_218DA78B8(uint64_t a1, uint64_t a2)
{
  sub_219BEF164();
  if (!v2)
  {
    v14[4] = v10;
    v14[5] = v11;
    v14[6] = v12;
    v14[7] = v13;
    v14[0] = v6;
    v14[1] = v7;
    v14[2] = v8;
    v14[3] = v9;
    a1 = sub_218DA7944(a2, v14);
    sub_218A410EC(v14);
  }

  return a1;
}

uint64_t sub_218DA7944(uint64_t a1, uint64_t a2)
{
  v159 = a2;
  v168 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_218DAAED0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v155 = &v123 - v5;
  sub_218DAAED0(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v150 = &v123 - v7;
  sub_218DAAED0(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v149 = &v123 - v9;
  v154 = sub_219BF2AB4();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v11 - 8);
  v144 = &v123 - v12;
  v167 = sub_219BF1934();
  v151 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v143 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v166 = &v123 - v15;
  v142 = sub_219BEF9C4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v17 - 8);
  v139 = (&v123 - v18);
  v132 = sub_219BEF564();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v138 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BEFBD4();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v157 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &qword_280E912E0, MEMORY[0x277D32720], v3);
  MEMORY[0x28223BE20](v21 - 8);
  v133 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v128 = &v123 - v24;
  v137 = sub_219BF0BD4();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v26 - 8);
  v156 = &v123 - v27;
  v148 = sub_219BF2774();
  v28 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v165 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v30 - 8);
  v158 = &v123 - v31;
  v146 = sub_219BF2034();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v33 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BEDC14();
  MEMORY[0x28223BE20](v34 - 8);
  v35 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BF35D4();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = (&v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A27A84(0);
  v169 = v42;
  v176 = v2;
  sub_219BEDD14();
  v134 = v35;
  v43 = v37[*(v35 + 52)];
  v160 = v37;
  sub_218DAB11C(v37, type metadata accessor for CuratedTagFeedGroupConfigData);
  v163 = v38;
  v147 = v28;
  v164 = v33;
  v161 = v41;
  if (v43 == 1)
  {
    *v41 = 0x404E000000000000;
    (*(v39 + 104))(v41, *MEMORY[0x277D33EC0], v38);
    v44 = v168;
  }

  else
  {
    v44 = v168;
    sub_219BEF084();
    sub_219BF35E4();
  }

  sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_219C146A0;
  sub_219BEF0B4();
  v46 = *(v172 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v47 = [v46 backingTag];

  *(v45 + 32) = v47;
  v175 = v45;
  sub_219BEF0B4();
  v48 = *(v172 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v49 = [v48 backingChannel];

  v162 = v39;
  if (v49)
  {
    v50 = swift_unknownObjectRetain();
    MEMORY[0x21CECC690](v50);
    if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    swift_unknownObjectRelease();
    v124 = v175;
  }

  else
  {
    v124 = v45;
  }

  sub_218DAAED0(0, &qword_280E8B730, sub_218DAAF34, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  sub_219BEF0B4();
  v52 = *(v172 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v53 = [v52 backingTag];

  v54 = [v53 identifier];
  swift_unknownObjectRelease();
  v55 = sub_219BF5414();
  v57 = v56;

  *(inited + 32) = v55;
  *(inited + 40) = v57;
  MEMORY[0x28223BE20](v58);
  sub_219BE3204();
  v59 = sub_219BE2E54();
  sub_2187E7248(0);
  v60 = sub_219BE2F74();

  *(inited + 48) = v60;
  sub_2194B08A8(inited);
  swift_setDeallocating();
  sub_218DAB11C(inited + 32, sub_218DAAF34);
  v61 = sub_219BEC004();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v127 = v61;
  v126 = v63;
  v125 = v62 + 56;
  (v63)(v158, 1, 1);
  v64 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v64);
  sub_219A951B8(v64);
  sub_219A952CC(v64);
  sub_219A952E4(v64);
  sub_219A953F8(v64);
  v65 = v44;
  sub_219BF2024();
  v66 = v135;
  sub_219BEF134();
  v124 = type metadata accessor for CuratedTagFeedGroupEmitter(0);
  v67 = v176 + *(v124 + 20);
  v68 = type metadata accessor for CuratedTagFeedGroupKnobs(0);
  v69 = *(v68 + 48);
  sub_2189B7614(v67 + v69, v128);
  v123 = v68;
  v171[3] = v68;
  v171[4] = sub_218DAB0D4(&qword_280EC2410, type metadata accessor for CuratedTagFeedGroupKnobs, &unk_219C3039C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v171);
  sub_218DAAFEC(v67, boxed_opaque_existential_1, type metadata accessor for CuratedTagFeedGroupKnobs);
  v173 = sub_219BF1234();
  v174 = MEMORY[0x277D33230];
  __swift_allocate_boxed_opaque_existential_1(&v172);
  sub_219BF1224();
  v71 = v156;
  sub_219BF2AC4();
  v72 = sub_219BF2AD4();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  v128 = sub_218DA99C0(v65);
  v73 = *(v159 + 88);
  (*(v129 + 104))(v157, *MEMORY[0x277D329D8], v130);
  (*(v131 + 104))(v138, *MEMORY[0x277D32668], v132);
  v159 = v67;
  v74 = v133;
  sub_2189B7614(v67 + v69, v133);
  v75 = sub_219BEF814();
  v76 = *(v75 - 8);
  v77 = (*(v76 + 48))(v74, 1, v75);
  v132 = v73;

  if (v77 == 1)
  {
    sub_218DAB054(v74, &qword_280E912E0, MEMORY[0x277D32720]);
    v78 = 1;
    v79 = v139;
    v80 = v137;
    v81 = v136;
  }

  else
  {
    sub_219BEF134();
    v79 = v139;
    v82 = v74;
    sub_219BEF7E4();
    v81 = v136;
    v80 = v137;
    (*(v136 + 8))(v66, v137);
    (*(v76 + 8))(v82, v75);
    v78 = 0;
  }

  v83 = sub_219BF02F4();
  (*(*(v83 - 8) + 56))(v79, v78, 1, v83);
  (v141[13])(v140, *MEMORY[0x277D32840], v142);
  sub_219BF2764();
  sub_219BEF134();
  sub_219BEF524();
  (*(v81 + 8))(v66, v80);
  v84 = v172;
  v85 = v65;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v86 = qword_280F61708;
  sub_2186F20D4(0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_219C09EC0;
  v88 = v176;
  v89 = sub_219BEDCA4();
  v91 = v90;
  *(v87 + 56) = MEMORY[0x277D837D0];
  *(v87 + 64) = sub_2186FC3BC();
  v92 = MEMORY[0x277D839B0];
  *(v87 + 32) = v89;
  *(v87 + 40) = v91;
  v93 = MEMORY[0x277D839F0];
  *(v87 + 96) = v92;
  *(v87 + 104) = v93;
  *(v87 + 72) = v84;
  v94 = sub_219BF6214();
  v157 = v86;
  sub_219BE5314("Curated group %{public}@ includeFeedThemes=%d", 45, 2, &dword_2186C1000, v86, v94, v87);

  sub_218718690(v88 + *(v124 + 24), &v172);
  v142 = v174;
  v156 = v173;
  v141 = __swift_project_boxed_opaque_existential_1(&v172, v173);
  v95 = v160;
  sub_219BEDD14();
  v96 = v151;
  v97 = *(v151 + 16);
  v98 = v95 + *(v134 + 20);
  LODWORD(v140) = v84;
  v99 = v143;
  v100 = v167;
  v97(v143, v98, v167);
  v139 = type metadata accessor for CuratedTagFeedGroupConfigData;
  sub_218DAB11C(v95, type metadata accessor for CuratedTagFeedGroupConfigData);
  sub_218DA9CFC(v85);
  v101 = v158;
  v126(v158, 1, 1, v127);
  sub_218A42400(0);
  v103 = v144;
  (*(*(v102 - 8) + 56))(v144, 1, 1, v102);
  sub_219BF1764();

  sub_218DAB054(v103, &unk_280E8FF30, sub_218A42400);
  sub_218DAB054(v101, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v158 = *(v96 + 8);
  (v158)(v99, v100);
  sub_2189AD5C8(0);
  v105 = v104;
  v106 = *(v104 - 8);
  v107 = v149;
  (*(v106 + 16))(v149, v159, v104);
  (*(v106 + 56))(v107, 0, 1, v105);
  sub_219BEF0B4();
  v108 = *(v171[0] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BEDD14();

  sub_218DAB11C(v95, v139);
  v109 = v162;
  v110 = v150;
  v111 = v163;
  (*(v162 + 16))(v150, v161, v163);
  (*(v109 + 56))(v110, 0, 1, v111);
  v170 = 8;
  sub_218DAADD4(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  if (v140)
  {
    sub_219BEF0B4();
    sub_218CB8CBC();

    sub_219BEF0B4();
    v112 = *(v171[0] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);
  }

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v113 = v160;
  sub_219BEDD14();
  sub_218E103B8();
  sub_218DAB11C(v113, type metadata accessor for CuratedTagFeedGroupConfigData);
  v114 = v147;
  v115 = v155;
  v116 = v165;
  v117 = v148;
  (*(v147 + 16))(v155, v165, v148);
  (*(v114 + 56))(v115, 0, 1, v117);
  *MEMORY[0x277D30BC0];
  v157;
  v118 = v152;
  sub_219BF2A84();
  v119 = v166;
  v120 = v164;
  v121 = sub_219BF2184();
  (*(v153 + 8))(v118, v154);
  (v158)(v119, v167);
  (*(v114 + 8))(v116, v117);
  (*(v145 + 8))(v120, v146);
  (*(v162 + 8))(v161, v163);
  __swift_destroy_boxed_opaque_existential_1(&v172);
  return v121;
}

uint64_t sub_218DA92DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DA9470(*a1, v9);
  sub_218DAAFEC(v9, v6, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_218DAAED0(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v10 = sub_219BE3014();
  sub_218DAB11C(v9, type metadata accessor for TagFeedGroup);
  return v10;
}

uint64_t sub_218DA9470@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[3] = a2;
  v27 = a3;
  v3 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DAAED0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - v7;
  v9 = sub_219BEF554();
  MEMORY[0x28223BE20](v9 - 8);
  v23[0] = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v12 = sub_219BED8D4();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v24 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84(0);

  v14 = sub_219BEDCB4();
  v23[1] = v15;
  v23[2] = v14;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for CuratedTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v16 = sub_219BEE5D4();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = v24;
  sub_219BED834();
  sub_219BEDD14();
  v19 = *v5;
  v18 = v5[1];

  sub_218DAB11C(v5, type metadata accessor for CuratedTagFeedGroupConfigData);
  v20 = v27;
  (*(v25 + 32))(v27, v17, v26);
  v21 = (v20 + *(type metadata accessor for CuratedTagFeedGroup(0) + 20));
  *v21 = v19;
  v21[1] = v18;
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_218DA9820(uint64_t a1)
{
  v1 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[0] = 0x2064657461727543;
  v7[1] = 0xE900000000000028;
  sub_218A27A84(0);
  sub_219BEDD14();
  v4 = *v3;
  v5 = v3[1];

  sub_218DAB11C(v3, type metadata accessor for CuratedTagFeedGroupConfigData);
  MEMORY[0x21CECC330](v4, v5);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_21877D2B0();
  sub_219BEF194();

  return result;
}

double sub_218DA99A0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_218DA99C0(uint64_t a1)
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
  sub_218DAAED0(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D33FA8];
  v22 = v3;
  v14 = *(v3 + 104);
  v14(v12 + v11, v13, v1);
  v14(v12 + v11 + v10, *MEMORY[0x277D33F90], v1);
  v14(v12 + v11 + 2 * v10, *MEMORY[0x277D33FA0], v1);
  v15 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  type metadata accessor for CuratedTagFeedGroupEmitter(0);
  type metadata accessor for CuratedTagFeedGroupKnobs(0);
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

id sub_218DA9CFC(uint64_t a1)
{
  v74 = a1;
  v2 = sub_219BF1934();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = &v66 - v6;
  MEMORY[0x28223BE20](v7);
  v69 = &v66 - v8;
  MEMORY[0x28223BE20](v9);
  v68 = &v66 - v10;
  v11 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v11);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v66 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  sub_218A27A84(0);
  sub_219BEDD14();
  v24 = v23[*(v11 + 24)];
  sub_218DAB11C(v23, type metadata accessor for CuratedTagFeedGroupConfigData);
  if (v24 == 7)
  {
    v25 = v1 + *(type metadata accessor for CuratedTagFeedGroupEmitter(0) + 20);
    v26 = *(v25 + *(type metadata accessor for CuratedTagFeedGroupKnobs(0) + 44));
    if (v26 == 7)
    {
      v24 = 0;
    }

    else
    {
      v24 = v26;
    }
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v27 = 0xEA00000000006761;
  v28 = qword_280F61708;
  sub_2186F20D4(0);
  v29 = swift_allocObject();
  v30 = v29;
  *(v29 + 16) = xmmword_219C09BA0;
  v71 = v4;
  if (v24 <= 2)
  {
    if (!v24)
    {
      v31 = 0x5464657461727563;
      goto LABEL_21;
    }

    if (v24 == 1)
    {
      v27 = 0x8000000219CD73D0;
      v31 = 0xD000000000000016;
      goto LABEL_21;
    }

    v31 = 0xD00000000000001ALL;
    v32 = "curatedTagOrBackingChannel";
    goto LABEL_20;
  }

  if (v24 > 4)
  {
    if (v24 == 5)
    {
      v27 = 0xEE006C656E6E6168;
      v31 = 0x43676E696B636162;
      goto LABEL_21;
    }

    v31 = 0xD00000000000001ALL;
    v32 = "backingChannelOrBackingTag";
LABEL_20:
    v27 = (v32 - 32) | 0x8000000000000000;
    goto LABEL_21;
  }

  if (v24 == 3)
  {
    v27 = 0x8000000219CD7410;
    v31 = 0xD000000000000026;
  }

  else
  {
    v31 = 0x54676E696B636162;
  }

LABEL_21:
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_2186FC3BC();
  *(v30 + 32) = v31;
  *(v30 + 40) = v27;
  v33 = sub_219BF6214();
  sub_219BE5314("Curated group emitter resolving tag with policy=%{public}@", 58, 2, &dword_2186C1000, v28, v33, v30);

  if (v24 > 2)
  {
    if (v24 > 4)
    {
      if (v24 == 5)
      {
        sub_219BEF0B4();
        v50 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

        v38 = [v50 backingChannel];

        if (!v38)
        {
          return v38;
        }
      }

      else
      {
        sub_219BEF0B4();
        v61 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

        v38 = [v61 backingChannel];

        if (!v38)
        {
          sub_219BEF0B4();
          v62 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

          v38 = [v62 backingTag];
        }
      }

      goto LABEL_42;
    }

    if (v24 == 3)
    {
      v34 = v67;
      sub_219BEDD14();
      v36 = v71;
      v35 = v72;
      v37 = v73;
      (*(v72 + 16))(v71, v34 + *(v11 + 20), v73);
      sub_218DAB11C(v34, type metadata accessor for CuratedTagFeedGroupConfigData);
      v38 = sub_219BF1784();
      v40 = v39;
      (*(v35 + 8))(v36, v37);
      if (!v40)
      {
        sub_219BEF0B4();
        v41 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

        v38 = [v41 backingChannel];

        if (!v38)
        {
          sub_219BEF0B4();
          v63 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

          v38 = [v63 backingTag];
        }

        goto LABEL_42;
      }

      return v38;
    }

LABEL_31:
    sub_219BEF0B4();
    v47 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v48 = [v47 backingTag];

    v49 = [v48 identifier];
LABEL_44:
    v64 = v49;
    swift_unknownObjectRelease();
    v38 = sub_219BF5414();

    return v38;
  }

  if (!v24)
  {
    sub_219BEDD14();
    v52 = v72;
    v51 = v73;
    v53 = v68;
    (*(v72 + 16))(v68, &v20[*(v11 + 20)], v73);
    sub_218DAB11C(v20, type metadata accessor for CuratedTagFeedGroupConfigData);
    v38 = sub_219BF1784();
    (*(v52 + 8))(v53, v51);
    return v38;
  }

  if (v24 == 1)
  {
    sub_219BEDD14();
    v43 = v72;
    v42 = v73;
    v44 = v69;
    (*(v72 + 16))(v69, &v17[*(v11 + 20)], v73);
    sub_218DAB11C(v17, type metadata accessor for CuratedTagFeedGroupConfigData);
    v38 = sub_219BF1784();
    v46 = v45;
    (*(v43 + 8))(v44, v42);
    if (v46)
    {
      return v38;
    }

    goto LABEL_31;
  }

  v54 = v66;
  sub_219BEDD14();
  v56 = v72;
  v55 = v73;
  v57 = v70;
  (*(v72 + 16))(v70, v54 + *(v11 + 20), v73);
  sub_218DAB11C(v54, type metadata accessor for CuratedTagFeedGroupConfigData);
  v38 = sub_219BF1784();
  v59 = v58;
  (*(v56 + 8))(v57, v55);
  if (!v59)
  {
    sub_219BEF0B4();
    v60 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v38 = [v60 backingChannel];

    if (v38)
    {
LABEL_42:
      v49 = [v38 identifier];
      goto LABEL_44;
    }
  }

  return v38;
}

uint64_t sub_218DAA694()
{
  v0 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[0] = 0x2064657461727543;
  v6[1] = 0xE900000000000028;
  sub_218A27A84(0);
  sub_219BEDD14();
  v3 = *v2;
  v4 = v2[1];

  sub_218DAB11C(v2, type metadata accessor for CuratedTagFeedGroupConfigData);
  MEMORY[0x21CECC330](v3, v4);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v6[0];
}

uint64_t sub_218DAA780@<X0>(uint64_t *a1@<X8>)
{
  sub_218A27A84(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000006;
  return result;
}

uint64_t sub_218DAA800@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for CuratedTagFeedGroupKnobs(0);
  a2[4] = sub_218DAB0D4(&qword_280EC2408, type metadata accessor for CuratedTagFeedGroupKnobs, &unk_219C3042C);
  a2[5] = sub_218DAB0D4(&qword_27CC11D20, type metadata accessor for CuratedTagFeedGroupKnobs, &unk_219C30404);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218DAAFEC(v2 + v4, boxed_opaque_existential_1, type metadata accessor for CuratedTagFeedGroupKnobs);
}

uint64_t sub_218DAA8C8()
{
  sub_218A27A84(0);

  return sub_219BEDCA4();
}

uint64_t sub_218DAA8F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = 0x2064657461727543;
  v14 = 0xE900000000000028;
  sub_218A27A84(0);
  sub_219BEDD14();
  v5 = *v4;
  v6 = v4[1];

  sub_218DAB11C(v4, type metadata accessor for CuratedTagFeedGroupConfigData);
  MEMORY[0x21CECC330](v5, v6);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  sub_218DAAED0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v8 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DAB11C(inited + 32, sub_2188317B0);
  sub_218DAAED0(0, &qword_280EE79C8, type metadata accessor for CuratedTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v10;
  a1[4] = sub_218DAB17C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for CuratedTagFeedGroupEmitter(0);
  return sub_219BE2334();
}

uint64_t sub_218DAAB30(uint64_t a1)
{
  sub_218DAB0D4(&qword_280EBBB68, type metadata accessor for CuratedTagFeedGroupEmitter, &unk_219C373C4);

  return sub_219BE2324();
}

uint64_t sub_218DAACD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DAAD3C(uint64_t *a1)
{
  v3 = *(type metadata accessor for CuratedTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_218DA92DC(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218DAADD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218DAAED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218DAAF34(uint64_t a1)
{
  if (!qword_280E8F808)
  {
    sub_218DAAED0(255, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F808);
    }
  }
}

uint64_t sub_218DAAFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DAB054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218DAAED0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DAB0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218DAB11C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218DAB17C()
{
  result = qword_280EE79D0[0];
  if (!qword_280EE79D0[0])
  {
    sub_218DAAED0(255, &qword_280EE79C8, type metadata accessor for CuratedTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE79D0);
  }

  return result;
}

uint64_t type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280E9A680;
  if (!qword_280E9A680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DAB278(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_218BE9934(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218DAB2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    v21 = a2;
    sub_21877C828(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    a2 = v21;
    sub_219BEE974();
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (!a2)
  {
    v17 = sub_219BF1F54();
    sub_218C3DB88(v17);

    sub_218BE9934(0);
    swift_allocObject();
    a2 = sub_219BEEE04();
  }

  v18 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(0);
  *(a4 + *(v18 + 20)) = a2;
  if (!a3)
  {
    sub_218BE9934(0);
    swift_allocObject();
    a3 = sub_219BEEE04();
  }

  result = sub_2189ADEC8(a1);
  *(a4 + *(v18 + 24)) = a3;
  return result;
}

uint64_t sub_218DAB5FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_2189AD5C8(0);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = v38 - v11;
  sub_218DAC0AC(0, &qword_280E8C840, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v38 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DABFF4();
  v17 = v50;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38[1] = 0;
  v40 = v14;
  v41 = a1;
  v42 = v7;
  LOBYTE(v53) = 0;
  sub_21877C828(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v19 = v44;
  v20 = v46;
  sub_219BF7674();
  sub_218BE9934(0);
  LOBYTE(v52) = 1;
  sub_21877C828(&qword_280E917C0, sub_218BE9934, MEMORY[0x277D32448]);
  sub_219BF7674();
  v38[0] = v53;
  v51 = 2;
  v50 = v13;
  v39 = v16;
  sub_219BF7674();
  v43 = v52;
  v21 = v19;
  v22 = v49;
  sub_2189ADE64(v19, v49);
  v23 = v45;
  v24 = *(v45 + 48);
  if (v24(v22, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C828(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v25 = v47;
    sub_219BEE974();
    v26 = v24(v22, 1, v20);
    v27 = v25;
    v29 = v40;
    v28 = v41;
    if (v26 != 1)
    {
      sub_2189ADEC8(v49);
    }
  }

  else
  {
    v27 = v47;
    (*(v23 + 32))(v47, v22, v20);
    v29 = v40;
    v28 = v41;
  }

  v30 = v42;
  (*(v23 + 32))(v42, v27, v20);
  v31 = v50;
  v32 = v38[0];
  if (!v38[0])
  {
    v33 = sub_219BF1F54();
    sub_218C3DB88(v33);

    swift_allocObject();
    v32 = sub_219BEEE04();
    v31 = v50;
  }

  v34 = v39;
  *(v30 + *(v5 + 20)) = v32;
  v35 = v48;
  if (v43)
  {
    v36 = v43;
  }

  else
  {
    swift_allocObject();
    v37 = sub_219BEEE04();
    v31 = v50;
    v36 = v37;
  }

  sub_2189ADEC8(v21);
  (*(v29 + 8))(v34, v31);
  *(v30 + *(v5 + 24)) = v36;
  sub_218DAC048(v30, v35);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_218DABBA0(void *a1)
{
  v3 = v1;
  sub_218DAC0AC(0, &qword_27CC11D28, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DABFF4();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8(0);
  sub_21877C828(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(0);
    v14 = *(v3 + *(v10 + 20));
    v13 = 1;
    sub_218BE9934(0);
    sub_21877C828(&qword_27CC0EE30, sub_218BE9934, MEMORY[0x277D32440]);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218DABE04()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218DABE60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218DAC228(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218DABE88(uint64_t a1)
{
  v2 = sub_218DABFF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DABEC4(uint64_t a1)
{
  v2 = sub_218DABFF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218DABF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877C828(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if (sub_219BEE9F4() & 1) != 0 && (sub_218BE9934(0), (sub_219BEEDE4()))
  {
    return sub_219BEEDE4() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_218DABFF4()
{
  result = qword_280E9A6A8[0];
  if (!qword_280E9A6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9A6A8);
  }

  return result;
}

uint64_t sub_218DAC048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218DAC0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218DABFF4();
    v7 = a3(a1, &type metadata for SportsInjuryReportsTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218DAC124()
{
  result = qword_27CC11D30;
  if (!qword_27CC11D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D30);
  }

  return result;
}

unint64_t sub_218DAC17C()
{
  result = qword_280E9A698;
  if (!qword_280E9A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A698);
  }

  return result;
}

unint64_t sub_218DAC1D4()
{
  result = qword_280E9A6A0;
  if (!qword_280E9A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A6A0);
  }

  return result;
}

uint64_t sub_218DAC228(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEB600 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CEB620 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for AudioFeedLayoutModel(uint64_t a1)
{
  result = qword_280ECF498;
  if (!qword_280ECF498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_218DAC394()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_218DAC4F8(uint64_t a1)
{
  v2 = sub_218DACDA8(&qword_280ECF4A8, &unk_219C376F0);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218DAC584()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  v8 = sub_219BEF8E4();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_218DAC7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  LOBYTE(a3) = a3(v12);
  (*(v6 + 8))(v8, v5);
  return a3 & 1;
}

uint64_t sub_218DAC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_219BEF974();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v4, v13);
  (*(v8 + 32))(v10, v13, v7);
  v14 = a4(a1);
  (*(v8 + 8))(v10, v7);
  return v14;
}

uint64_t sub_218DACA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_218DACBF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218DACD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DACDA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioFeedLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218DACDEC(uint64_t a1, char *a2, CGFloat a3)
{
  v4 = v3;
  if (swift_unknownObjectWeakLoadStrong() && (v8 = off_282A2F300, type metadata accessor for MainTabBarController(0), v9 = v8(), swift_unknownObjectRelease(), (v9 & 1) != 0))
  {
    v10 = *(v3 + 152);
    sub_219099BF8(a1, *(v4 + 152));
    v12 = v11;
    sub_219099BF8(a1, v10);
    v13 = 0.0;
    if (v14 > 0.0)
    {
      sub_219099BF8(a1, v10);
      v13 = v15 + 16.0;
    }

    v16 = __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
    v17 = *&a2[OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_bannerView];
    __swift_project_boxed_opaque_existential_1((*v16 + 16), *(*v16 + 40));
    v45.origin.x = 0.0;
    v45.origin.y = 8.0;
    v45.size.width = a3;
    v45.size.height = v12;
    CGRectGetWidth(v45);
    v18 = sub_219BE3AA4();
    FollowingEngagementBannerView.engagementView.setter(v18);
    v19 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
    swift_beginAccess();
    [*(v17 + v19) setFrame_];
    v20 = *(v17 + v19);
    if (v20)
    {
      v21 = v20;
      v46.origin.x = 0.0;
      v46.origin.y = 8.0;
      v46.size.width = a3;
      v46.size.height = v12;
      [v21 setHidden_];
    }

    [a2 setFrame_];
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F627F0);
    v23 = a2;
    v24 = sub_219BE5414();
    v25 = sub_219BF61E4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v26 = 138412802;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2080;
      v29 = v23;
      v30 = sub_219BF6B34();
      v32 = sub_2186D1058(v30, v31, &v43);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      v33 = sub_219BF6B34();
      v35 = sub_2186D1058(v33, v34, &v43);

      *(v26 + 24) = v35;
      _os_log_impl(&dword_2186C1000, v24, v25, "Rendered %@ w/ frame=%s, bannerFrame=%s", v26, 0x20u);
      sub_218DAE588(v27, &qword_280E8D9F0, sub_2189666A0);
      MEMORY[0x21CECF960](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v28, -1, -1);
      MEMORY[0x21CECF960](v26, -1, -1);
    }
  }

  else
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v36 = sub_219BE5434();
    __swift_project_value_buffer(v36, qword_280F627F0);
    v37 = a2;
    oslog = sub_219BE5414();
    v38 = sub_219BF61E4();

    if (os_log_type_enabled(oslog, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v37;
      *v40 = v37;
      v41 = v37;
      _os_log_impl(&dword_2186C1000, oslog, v38, "Ignoring request to render %@; reason='sidebar is not visible'", v39, 0xCu);
      sub_218DAE588(v40, &qword_280E8D9F0, sub_2189666A0);
      MEMORY[0x21CECF960](v40, -1, -1);
      MEMORY[0x21CECF960](v39, -1, -1);
    }
  }
}

uint64_t sub_218DAD2F4()
{
  sub_218774F78((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

void sub_218DAD34C(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE3514();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  sub_219BE35A4();
  (*(v4 + 104))(v6, *MEMORY[0x277D314B0], v3);
  sub_218DAE540(&unk_280EE6680, 255, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  sub_219BF5874();
  sub_219BF5874();
  if (v13[1] == v13[0])
  {
    v10 = *(v4 + 8);
    v10(v6, v3);
    v10(v9, v3);
  }

  else
  {
    v11 = sub_219BF78F4();
    v12 = *(v4 + 8);
    v12(v6, v3);
    v12(v9, v3);

    if ((v11 & 1) == 0)
    {
      return;
    }
  }

  sub_218DAD5A0(a2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21898CFC0();
    swift_unknownObjectRelease();
  }
}

void sub_218DAD5A0(uint64_t a1)
{
  sub_21873809C(0, &qword_280EE6510, MEMORY[0x277D318F8]);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = v63 - v4;
  v5 = sub_219BE35B4();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = v63 - v8;
  sub_21873809C(0, &unk_280EE6610, MEMORY[0x277D31680]);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = v63 - v10;
  v11 = sub_219BE3794();
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = v63 - v14;
  v15 = sub_219BF2CB4();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v67 = (v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_219BF2634();
  v68 = *(v17 - 8);
  v69 = v17;
  MEMORY[0x28223BE20](v17);
  v66 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE38C4();
  v84 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v74 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v85 = v63 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v63 - v24;
  v26 = sub_219BE3514();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1[12];
  v86 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 9, v30);
  sub_219BE35A4();
  v31 = sub_219BE3A14();
  v33 = v32;
  v72 = v27;
  v73 = v26;
  v34 = *(v27 + 8);
  v34(v29, v26);
  if (v33)
  {
    v35 = v31;
    v36 = a1;
    sub_219BE3574();
    v37 = v84;
    v38 = (*(v84 + 88))(v25, v19);
    v39 = v19;
    if (v38 == *MEMORY[0x277D31720])
    {
      goto LABEL_3;
    }

    if (v38 == *MEMORY[0x277D31728])
    {

      (*(v37 + 8))(v25, v19);
      return;
    }

    if (v38 == *MEMORY[0x277D31738] || v38 == *MEMORY[0x277D31740] || v38 == *MEMORY[0x277D31730])
    {

      return;
    }

    if (v38 == *MEMORY[0x277D31750])
    {
LABEL_3:
      v65 = v19;
      v40 = v86;
      v41 = v86[7];
      v63[0] = v86[8];
      __swift_project_boxed_opaque_existential_1(v86 + 4, v41);
      v63[1] = v35;
      v64 = v34;
      v42 = v67;
      *v67 = v35;
      v42[1] = v33;
      v43 = v70;
      v44 = v71;
      (*(v70 + 104))(v42, *MEMORY[0x277D33B80], v71);
      v63[2] = v33;

      v45 = v66;
      sub_219BF4794();
      (*(v43 + 8))(v42, v44);
      LODWORD(v70) = sub_219BF2614();
      (*(v68 + 8))(v45, v69);
      sub_219BE3574();
      __swift_project_boxed_opaque_existential_1(v40 + 9, v40[12]);
      v71 = v36;
      sub_219BE35A4();
      v46 = v75;
      sub_219BE3AD4();
      v47 = v73;
      v64(v29, v73);
      v48 = v77;
      v49 = v78;
      v50 = *(v77 + 48);
      if (v50(v46, 1, v78) == 1)
      {
        (v48)[13](v87, *MEMORY[0x277D31670], v49);
        if (v50(v46, 1, v49) != 1)
        {
          sub_218DAE588(v46, &unk_280EE6610, MEMORY[0x277D31680]);
        }
      }

      else
      {
        (v48)[4](v87, v46, v49);
      }

      __swift_project_boxed_opaque_existential_1(v86 + 9, v86[12]);
      sub_219BE35A4();
      v78 = sub_219BE3AE4();
      v64(v29, v47);
      (*(v72 + 104))(v29, *MEMORY[0x277D314B0], v47);
      v51 = v84;
      (*(v84 + 16))(v74, v85, v65);
      v52 = v48;
      (v48)[2](v76, v87, v49);
      v53 = sub_219BE3C04();
      (*(*(v53 - 8) + 56))(v80, 1, 1, v53);
      v54 = v79;
      sub_219BE3544();
      v55 = v81;
      v56 = *(v82 + 32);
      v57 = v83;
      v56(v81, v54, v83);
      type metadata accessor for FollowingEngagementModel(0);
      v58 = swift_allocObject();
      v59 = (v58 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_title);
      (v52[1])(v87, v49);
      (*(v51 + 8))(v85, v65);
      *v59 = 0;
      v59[1] = 0xE000000000000000;
      v56((v58 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_banner), v55, v57);
      *(v58 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_allowsUserInteraction) = v70 & 1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_21898CBE0(v58);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v60 = *MEMORY[0x277D31748];
      v61 = v39;
      v62 = v38;

      if (v62 != v60)
      {
        (*(v37 + 8))(v25, v61);
      }
    }
  }
}

void sub_218DADFD8(uint64_t a1, void *a2)
{
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D314B0], v4, v6);
  sub_218DAE540(&unk_280EE6680, 255, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  sub_219BF5874();
  sub_219BF5874();
  if (v10[1] == v10[0])
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v9 = sub_219BF78F4();
    (*(v5 + 8))(v8, v4);

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21898D22C(a2);
    swift_unknownObjectRelease();
  }

  sub_218DAE1E0(a2, v2);
}

id sub_218DAE1E0(id result, void *a2)
{
  if (result)
  {
    result = [result style];
    if (result == 2)
    {
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v3 = sub_219BE5434();
      __swift_project_value_buffer(v3, qword_280F627F0);
      v4 = sub_219BE5414();
      v5 = sub_219BF61E4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        MEMORY[0x21CECF960](v6, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(a2 + 9, a2[12]);
      sub_218DAE540(qword_280EACD48, v7, type metadata accessor for FollowingEngagementViewManager, &unk_219C379E0);
      return sub_219BE3A54();
    }
  }

  return result;
}

void sub_218DAE330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE3514();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D314B0], v5, v7);
  sub_218DAE540(&unk_280EE6680, 255, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  sub_219BF5874();
  sub_219BF5874();
  if (v11[1] == v11[0])
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v10 = sub_219BF78F4();
    (*(v6 + 8))(v9, v5);

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21898D3A8(a2, a3);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_218DAE540(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_218DAE588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21873809C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DAE5F8@<X0>(uint64_t a1@<X8>)
{
  v34[3] = a1;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDBD34();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDFCC4();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
  v16 = *(v15 + 24);
  v34[1] = *(v15 + 16);
  v18 = *(v17 + 104);
  v34[2] = v14;
  v18(v12);
  v19 = OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval;
  v38 = *(v8 + 16);
  v38(v10, v15 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v7);
  v34[0] = v16;

  sub_219BDB164();
  v20 = *(v8 + 8);
  v20(v10, v7);
  sub_219BDBC84();
  v22 = v21;
  v35 = v4;
  v39 = *(v4 + 8);
  result = v39(v6, v40);
  v24 = v22 * 1000.0;
  if (COERCE__INT64(fabs(v22 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38(v10, v15 + v19, v7);
  sub_219BDB134();
  v20(v10, v7);
  sub_219BDBC84();
  v26 = v25;
  v28 = v39;
  v27 = v40;
  result = v39(v6, v40);
  v29 = v26 * 1000.0;
  if (COERCE__INT64(fabs(v26 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = v37;
  sub_2187D96F4(v36 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, v37);
  if ((*(v35 + 48))(v30, 1, v27) == 1)
  {
    sub_2189DD39C(v30);
    return sub_219BDF6B4();
  }

  sub_219BDBC84();
  v32 = v31;
  result = v28(v30, v27);
  v33 = v32 * 1000.0;
  if (COERCE__INT64(fabs(v32 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v33 > -9.22337204e18)
    {
      if (v33 < 9.22337204e18)
      {
        return sub_219BDF6B4();
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280E9F828;
  if (!qword_280E9F828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DAEB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_218DAED78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAF260(0, &qword_27CC11D38, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DAF20C();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_218DAEB34(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218DAEF68(uint64_t a1)
{
  v2 = sub_218DAF20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DAEFA4(uint64_t a1)
{
  v2 = sub_218DAF20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218DAEFF8(void *a1)
{
  sub_218DAF260(0, &qword_27CC11D48, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DAF20C();
  sub_219BF7B44();
  sub_2189AD5C8(0);
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218DAF180(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);

  return sub_219BEE9F4();
}

unint64_t sub_218DAF20C()
{
  result = qword_27CC11D40;
  if (!qword_27CC11D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D40);
  }

  return result;
}

void sub_218DAF260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218DAF20C();
    v7 = a3(a1, &type metadata for PuzzleFullArchiveTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218DAF2D8()
{
  result = qword_27CC11D50;
  if (!qword_27CC11D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D50);
  }

  return result;
}

unint64_t sub_218DAF330()
{
  result = qword_27CC11D58;
  if (!qword_27CC11D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D58);
  }

  return result;
}

unint64_t sub_218DAF388()
{
  result = qword_27CC11D60;
  if (!qword_27CC11D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D60);
  }

  return result;
}

void sub_218DAF3DC(uint64_t a1)
{
  v22 = sub_219BE9EC4();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE15B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDD0A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110(0);
  v21[1] = a1;
  sub_219BEA7B4();
  if (v27)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v6 + 104))(v8, *MEMORY[0x277D2F568], v5);
      sub_219BDD094();
      (*(v6 + 8))(v8, v5);
      sub_219BDD204();

      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    sub_218806FD0(v26);
  }

  v13 = v23;
  sub_218A54924(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_218FE7680(0x6565466F69647541, 0xE900000000000064, v4);

    (*(v2 + 8))(v4, v22);
    if (v16)
    {
      return;
    }
  }

  else
  {
    (*(v2 + 8))(v4, v22);
  }

  __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
  sub_218DAF7DC();
  sub_219BEA794();
  sub_219BE1E14();

  if (v25)
  {
    sub_2186CB1F0(&v24, v26);
    v17 = v27;
    v18 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v19 = (*(v18 + 8))(v17, v18);
    v20 = sub_219BEA784();
    v20(v19);

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_218DAF7DC()
{
  result = qword_280ED1E90;
  if (!qword_280ED1E90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED1E90);
  }

  return result;
}

void sub_218DAF840()
{
  v1 = *(v0 + 16);
  if ([v1 isSignedIntoEmailAccount])
  {
    v2 = [v1 forceUpdateSubscription];
  }
}

uint64_t sub_218DAF91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v40 = a4;
  sub_218DB0218(0, &qword_280E91A38, sub_2186E9484);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - v6;
  v37 = type metadata accessor for ArticleListSavedFeedGroupKnobs(0);
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DB0218(0, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  sub_218DB0218(0, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for SavedFeedGroupKnobs(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DB026C(a1, v17, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    v34 = a1;
    v23 = v37;
    (*(v7 + 56))(v14, 1, 1, v37);
    sub_218DB026C(v14, v11, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
    v24 = *(v7 + 48);
    if (v24(v11, 1, v23) == 1)
    {
      sub_2186E9484(0);
      v26 = *(*(v25 - 8) + 56);
      v33 = v22;
      v27 = v35;
      v26(v35, 1, 1, v25);
      v28 = v36;
      v29 = v27;
      v22 = v33;
      sub_218F70F9C(v29, 0, v36);
      sub_218DB02D8(v14, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      if (v24(v11, 1, v37) != 1)
      {
        sub_218DB02D8(v11, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      }
    }

    else
    {
      sub_218DB02D8(v14, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      v28 = v36;
      sub_218DB0334(v11, v36, type metadata accessor for ArticleListSavedFeedGroupKnobs);
    }

    sub_218DB0334(v28, v21, type metadata accessor for ArticleListSavedFeedGroupKnobs);
    sub_218DB02D8(v34, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
    if (v22(v17, 1, v18) != 1)
    {
      sub_218DB02D8(v17, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
    }
  }

  else
  {
    sub_218DB02D8(a1, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
    sub_218DB0334(v17, v21, type metadata accessor for SavedFeedGroupKnobs);
  }

  v30 = v40;
  sub_218DB0334(v21, v40, type metadata accessor for SavedFeedGroupKnobs);
  if (v39)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = v38 & ~(v38 >> 63);
  }

  result = type metadata accessor for SavedFeedKnobsConfig(0);
  *(v30 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_218DAFE8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_218DB0218(0, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_218DB039C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DB03F8();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for SavedFeedGroupKnobs(0);
    v18 = 0;
    sub_2186EE6BC(&qword_280ED0808, type metadata accessor for SavedFeedGroupKnobs, &unk_219C15F44);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_218DAF91C(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_218DB00B8(char *a2@<X8>)
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

void sub_218DB0118(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_218DB017C(uint64_t a1)
{
  v2 = sub_218DB03F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DB01B8(uint64_t a1)
{
  v2 = sub_218DB03F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218DB0218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_218DB026C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218DB0218(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218DB02D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218DB0218(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DB0334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218DB039C(uint64_t a1)
{
  if (!qword_280E8CED0)
  {
    sub_218DB03F8();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8CED0);
    }
  }
}

unint64_t sub_218DB03F8()
{
  result = qword_280ECD748[0];
  if (!qword_280ECD748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECD748);
  }

  return result;
}

uint64_t sub_218DB044C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218DB04C4()
{
  result = qword_27CC11D68;
  if (!qword_27CC11D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D68);
  }

  return result;
}

unint64_t sub_218DB051C()
{
  result = qword_280ECD738;
  if (!qword_280ECD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD738);
  }

  return result;
}

unint64_t sub_218DB0574()
{
  result = qword_280ECD740;
  if (!qword_280ECD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD740);
  }

  return result;
}

uint64_t sub_218DB05C8(unsigned __int8 *a1)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = sub_219BED2D4();
  if (v2 == 1)
  {
    swift_getObjectType();
    swift_getKeyPath();
    sub_219BF6A94();
  }

  else
  {
    v4 = [objc_opt_self() currentDevice];
    [v4 userInterfaceIdiom];
  }

  return v3;
}

id sub_218DB06B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipeBoxFeedRules];
  *a2 = result;
  return result;
}

id sub_218DB06EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxRecipeDownloads];
  *a2 = result;
  return result;
}

uint64_t sub_218DB0724@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218DB05C8(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_218DB0834(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_218DB226C(v6, a2, v2, v4, v5);
}

double sub_218DB0888(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF2FA4();
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  v3 = qword_280F61778;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  if (v2 == 1)
  {
    v6 = 0xE900000000000064;
    v7 = 0x656472616F626E6FLL;
  }

  else if (v2)
  {
    v8 = sub_219BF7894();
    MEMORY[0x21CECC330](v8);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v7 = 0x286E776F6E6B6E75;
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEC00000064656472;
    v7 = 0x616F626E4F746F6ELL;
  }

  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_219BE5314("SportsOnboardingManager encountered error initializing state=%{public}@, error=%{public}@", 89, 2, &dword_2186C1000, v3, v4, v5);

  return result;
}

void sub_218DB0A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218846C98(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_219BF3344();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_218AD7D2C(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_218AD7DC0(v6);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v13 = [sub_219BF3334() isSports];
      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = *&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32];
        v24 = *&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24];
        v15 = __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager], v24);
        v16 = *&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsFollowsCommandToken + 8];
        v22 = *&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsFollowsCommandToken];
        v23 = v15;
        v21 = v16;
        sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
        v17 = sub_219BF66A4();
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = *(v14 + 56);

        v19(v22, v21, v17, sub_218DB1E18, v18, v24, v14);

        (*(v8 + 8))(v10, v7);
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }
  }
}

double sub_218DB0D64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v4 = sub_219BF66A4();
    v5 = swift_allocObject();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v7 = *&v3[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24];
    v8 = *&v3[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32];
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager], v7);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = sub_218DB1E20;
    v10[4] = v5;
    v11 = *(v8 + 8);
    swift_retain_n();

    v11(v4, sub_218DB1E2C, v10, v7, v8);
  }

  return result;
}

void *sub_218DB0F1C(void *result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0 && result == 1)
  {
    v11 = v3;
    v12 = v4;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = result;
      sub_218718690(result + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager, v8);

      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 72))(v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }

  return result;
}

id sub_218DB0FD0()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_subscriptionService];
  swift_unknownObjectRetain();
  v3 = v0;
  sub_218DB1F80(v3, v2);
  swift_unknownObjectRelease();

  [*&v3[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo] removeObserver_];
  v4 = [objc_opt_self() sharedAccount];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}