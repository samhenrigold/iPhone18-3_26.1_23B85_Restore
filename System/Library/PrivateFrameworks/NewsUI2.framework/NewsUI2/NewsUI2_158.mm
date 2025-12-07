uint64_t sub_2198741C8(void *a1, void *a2)
{
  v76 = sub_219BE6B84();
  v70 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC38D0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219874C70(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219874CF4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC3A6C(0);
  MEMORY[0x28223BE20](v13 - 8);
  sub_218FC3B10(0);
  MEMORY[0x28223BE20](v14 - 8);

  v15 = [a2 puzzleFullArchiveMenuOptionsConfigByPuzzleTypeID];
  sub_219686F98(0);
  v16 = sub_219BF5214();

  v17 = [a1 identifier];
  v18 = sub_219BF5414();
  v20 = v19;

  if (!*(v16 + 16))
  {

    swift_unknownObjectRelease();

    return 0;
  }

  v74 = a1;
  v69 = a2;
  sub_21870F700(v18, v20);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v25 = sub_219BDB5E4();
  v27 = v26;

  if (qword_280EE3868 != -1)
  {
    swift_once();
  }

  v73 = qword_280EE3878;
  LOBYTE(v80) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  sub_218728B2C();

  swift_unknownObjectRetain();
  sub_219BE8B74();
  LOBYTE(v80) = 0;
  sub_2186E3374();
  sub_219BE8B74();
  LOBYTE(v80) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0xD000000000000013;
  *(v29 + 24) = 0x8000000219D11660;
  sub_2186C6148(0, &qword_280E8DA68, 0x277D755B8);
  sub_219BE8B74();
  sub_219874D78(0, &unk_27CC145A0, &qword_280E8DA68, 0x277D755B8, sub_2186C6148);
  (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
  LOBYTE(v80) = 0;
  v31 = MEMORY[0x277D6D790];
  sub_2186CFDE4(0, &qword_27CC14590, MEMORY[0x277D6D790]);
  sub_219BE8B74();
  sub_219874D78(0, &qword_27CC14588, &qword_27CC14590, v31, sub_2186CFDE4);
  (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
  sub_219BE77A4();
  *&v80 = 0;
  BYTE8(v80) = 4;
  *&v81 = v74;
  v33 = sub_219BE6684();
  swift_allocObject();
  v34 = sub_219BE65B4();
  v35 = sub_2191F7A28(0, 1, 1, MEMORY[0x277D84F90]);
  v37 = v35[2];
  v36 = v35[3];
  if (v37 >= v36 >> 1)
  {
    v35 = sub_2191F7A28((v36 > 1), v37 + 1, 1, v35);
  }

  v35[2] = v37 + 1;
  v38 = &v35[5 * v37];
  v38[4] = v34;
  *(v38 + 5) = v80;
  v39 = MEMORY[0x277D6D630];
  v38[7] = v33;
  v38[8] = v39;
  v77 = sub_219BE6B74();
  sub_219BE6B64();

  v40 = MEMORY[0x277D84F90];
  v41 = sub_2191F7A28(0, 1, 1, MEMORY[0x277D84F90]);
  v43 = v41[2];
  v42 = v41[3];
  v44 = v74;
  if (v43 >= v42 >> 1)
  {
    v41 = sub_2191F7A28((v42 > 1), v43 + 1, 1, v41);
  }

  v41[2] = v43 + 1;
  v45 = &v41[5 * v43];
  *(v45 + 2) = v80;
  *(v45 + 3) = v81;
  v45[8] = v82;
  v78 = v40;
  v79 = MEMORY[0x277D84F98];
  v46 = [v44 identifier];
  v47 = sub_219BF5414();
  v49 = v48;

  swift_unknownObjectRetain();
  sub_219687000(v47, v49, v69, &v79, &v78, v44);

  result = swift_unknownObjectRelease();
  v51 = v78;
  if (!(v78 >> 62))
  {
    v52 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_11;
    }

LABEL_28:
    v67 = sub_219BE59A4();

    swift_unknownObjectRelease();

    if (v67)
    {

      return v67;
    }

    return 0;
  }

  result = sub_219BF7214();
  v52 = result;
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_11:
  if (v52 >= 1)
  {
    v53 = 0;
    v54 = v79;
    v55 = v51 & 0xC000000000000001;
    v71 = *MEMORY[0x277D6D7B0];
    v70 += 13;
    v72 = v51 & 0xC000000000000001;
    v73 = v51;
    do
    {
      if (v55)
      {
        v56 = MEMORY[0x21CECE0F0](v53, v51);
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v57 = v56;
      if (*(v54 + 16) && (v58 = sub_21931EE2C(v56), (v59 & 1) != 0))
      {
        v60 = *(*(v54 + 56) + 8 * v58);

        v61 = [v57 title];
        if (v61)
        {
          v62 = v61;
          sub_219BF5414();
        }

        (*v70)(v75, v71, v76);
        sub_218ACE05C(v60);

        swift_allocObject();
        v63 = sub_219BE6B54();
        v65 = v41[2];
        v64 = v41[3];
        if (v65 >= v64 >> 1)
        {
          v41 = sub_2191F7A28((v64 > 1), v65 + 1, 1, v41);
        }

        v41[2] = v65 + 1;
        v66 = &v41[5 * v65];
        v66[4] = v63;
        *(v66 + 5) = v80;
        v66[7] = v77;
        v66[8] = MEMORY[0x277D6D798];
        v55 = v72;
        v51 = v73;
      }

      else
      {
      }

      ++v53;
    }

    while (v52 != v53);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_219874C70(uint64_t a1)
{
  if (!qword_27CC14580)
  {
    sub_219874D78(255, &qword_27CC14588, &qword_27CC14590, MEMORY[0x277D6D790], sub_2186CFDE4);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14580);
    }
  }
}

void sub_219874CF4(uint64_t a1)
{
  if (!qword_27CC14598)
  {
    sub_219874D78(255, &unk_27CC145A0, &qword_280E8DA68, 0x277D755B8, sub_2186C6148);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14598);
    }
  }
}

void sub_219874D78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_218728B2C();
    v6 = sub_219BE8B84();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219874E04(uint64_t a1, uint64_t a2)
{
  sub_219BF4944();
  sub_219BF0F14();

  return sub_219BF4924();
}

uint64_t sub_219874E5C(void *a1, uint64_t a2)
{
  sub_219BF4504();
  v3 = a1;

  return sub_219BF44E4();
}

uint64_t sub_219874EB4(uint64_t a1, uint64_t a2)
{
  sub_219BF4944();
  swift_unknownObjectRetain();

  return sub_219BF4924();
}

uint64_t sub_219874F0C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = a2(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  sub_219BF4284();
  a3(0);
  v10 = sub_219BF07D4();
  a4(v10);
  (*(v7 + 8))(v9, v6);
  return sub_219BF4274();
}

uint64_t sub_219875020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_219BF0AC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v22 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v21 - v16;
  v21[1] = sub_219BF4814();
  a2(0);
  sub_219BF07D4();
  v21[0] = sub_219BF0AA4();
  v18 = *(v4 + 8);
  v18(v17, v3);
  sub_219BF07D4();
  sub_219BF0A84();
  v18(v14, v3);
  sub_219BF07D4();
  sub_219BF0A54();
  v18(v11, v3);
  sub_219BF07D4();
  sub_219BF0A94();
  v18(v8, v3);
  v19 = v22;
  sub_219BF07D4();
  sub_219BF0A24();
  v18(v19, v3);
  return sub_219BF4804();
}

uint64_t sub_219875290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_219BF0B74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v22 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v21 - v16;
  v21[1] = sub_219BF4874();
  a2(0);
  sub_219BF07D4();
  v21[0] = sub_219BF0B44();
  v18 = *(v4 + 8);
  v18(v17, v3);
  sub_219BF07D4();
  sub_219BF0B14();
  v18(v14, v3);
  sub_219BF07D4();
  sub_219BF0B64();
  v18(v11, v3);
  sub_219BF07D4();
  sub_219BF0AD4();
  v18(v8, v3);
  v19 = v22;
  sub_219BF07D4();
  sub_219BF0B04();
  v18(v19, v3);
  return sub_219BF4864();
}

uint64_t sub_219875500(__n128 a1)
{
  sub_219BF4814();
  sub_21987A35C(0, &qword_280E90E40, sub_2189699BC, sub_218969A10, &type metadata for ContinuePlayingPuzzle);
  sub_219BF07D4();
  swift_unknownObjectRetain();
  sub_218969A64(v12);
  sub_219BF07D4();
  sub_2187B14CC(&v11, v9, &unk_27CC20250, &qword_280E8FD20, MEMORY[0x277D34670]);
  sub_218969A64(v10);
  sub_219BF07D4();
  sub_2187B14CC(&v8, v6, &unk_27CC20260, &qword_280E901E0, MEMORY[0x277D33CA8]);
  sub_218969A64(v7);
  sub_219BF07D4();
  sub_2187B14CC(&v5, v3, &unk_27CC20270, &qword_280E8FD00, MEMORY[0x277D34698]);
  sub_218969A64(v4);
  sub_219BF07D4();
  sub_218969A64(v2);
  return sub_219BF4804();
}

uint64_t sub_21987568C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 level];
  if (result > 4)
  {
    switch(result)
    {
      case 7:
        result = [a1 difficultyIndex];
        v5 = 3;
        goto LABEL_11;
      case 6:
        result = [a1 difficultyIndex];
        v5 = 2;
        goto LABEL_11;
      case 5:
        result = [a1 difficultyIndex];
        v5 = 1;
        goto LABEL_11;
    }

LABEL_9:
    result = 0;
    v5 = -1;
    goto LABEL_11;
  }

  if ((result - 2) >= 3)
  {
    goto LABEL_9;
  }

  v5 = 4;
LABEL_11:
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

void sub_219875748(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  sub_218FC38D0(0);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219874C70(0);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219874CF4(0);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC3A6C(0);
  MEMORY[0x28223BE20](v16 - 8);
  v73 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC3B10(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219876104(a3, a2, a4);
  v22 = v21;
  v84 = v21;
  sub_21987568C(a1, &v79);
  LODWORD(v78) = v80;
  if (v80 == 255)
  {
    goto LABEL_25;
  }

  v70 = a2;
  v77 = v79;
  v23 = [a1 title];
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

  v69 = a3;
  v28 = [a1 icon];
  if (v28)
  {
    v29 = v28;
    v30 = sub_219BF5414();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  if (qword_280EE3868 != -1)
  {
    swift_once();
  }

  v71 = qword_280EE3878;
  v82 = v77;
  v83 = v78;

  swift_unknownObjectRetain();
  v33 = PuzzleArchiveFilterOption.identifier.getter();
  v67 = v34;
  v68 = v33;
  LOBYTE(v79) = 0;
  v35 = swift_allocObject();
  v72 = a5;
  *(v35 + 16) = v25;
  *(v35 + 24) = v27;
  sub_218728B2C();
  sub_219BE8B74();
  LOBYTE(v79) = 0;
  sub_2186E3374();
  v66 = v36;
  sub_219BE8B74();
  LOBYTE(v79) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  v38 = sub_2186C6148(0, &qword_280E8DA68, 0x277D755B8);
  v39 = v74;
  v65 = v38;
  sub_219BE8B74();
  sub_219874D78(0, &unk_27CC145A0, &qword_280E8DA68, 0x277D755B8, sub_2186C6148);
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v64 = v40;
  v63 = v42;
  v62 = v41 + 56;
  (v42)(v39, 0, 1);
  LOBYTE(v79) = 0;
  v43 = MEMORY[0x277D6D790];
  v44 = sub_2186CFDE4(0, &qword_27CC14590, MEMORY[0x277D6D790]);
  v45 = v75;
  v61 = v44;
  sub_219BE8B74();
  sub_219874D78(0, &qword_27CC14588, &qword_27CC14590, v43, sub_2186CFDE4);
  v47 = v46;
  v48 = *(v46 - 8);
  v60 = *(v48 + 56);
  v59[1] = v48 + 56;
  v60(v45, 0, 1, v46);
  sub_219BE77A4();
  v79 = v77;
  LOBYTE(v80) = v78;
  v81 = v72;
  sub_219BE6684();
  swift_allocObject();
  v68 = v20;
  sub_219BE65B4();
  if (v22 >> 62)
  {
    if (!sub_219BF7214())
    {
LABEL_12:
      v79 = v77;
      LOBYTE(v80) = v78;
      PuzzleArchiveFilterOption.groupType.getter(&v82);
      if (v82 != 2)
      {
        v78 = v82 & 1;
        if (v82)
        {
          v49 = 0x6C75636966666964;
        }

        else
        {
          v49 = 0x7461745379616C70;
        }

        v79 = 544829025;
        v80 = 0xE400000000000000;
        if (v82)
        {
          v50 = 0xEA00000000007974;
        }

        else
        {
          v50 = 0xE900000000000065;
        }

        swift_unknownObjectRetain();
        MEMORY[0x21CECC330](v49, v50);

        v77 = v79;
        v67 = v80;
        LOBYTE(v79) = 0;
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        *(v51 + 24) = 0;
        sub_219BE8B74();
        LOBYTE(v79) = 0;
        sub_219BE8B74();
        LOBYTE(v79) = 0;
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = 0;
        v53 = v74;
        sub_219BE8B74();
        v63(v53, 0, 1, v64);
        LOBYTE(v79) = 0;
        v54 = v75;
        sub_219BE8B74();
        v60(v54, 0, 1, v47);
        sub_219BE77A4();
        v79 = v78;
        LOBYTE(v80) = 0;
        v81 = v72;
        swift_allocObject();
        sub_219BE65B4();

        MEMORY[0x21CECC690](v55);
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
      }
    }
  }

  else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  MEMORY[0x21CECC690](v56);
  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

  v22 = v84;
  a3 = v69;
  a2 = v70;
LABEL_25:
  v57 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *a3;
  *a3 = 0x8000000000000000;
  sub_21948EE70(v22, v57, isUniquelyReferenced_nonNull_native);

  *a3 = v79;
}

void sub_219876104(uint64_t a1, void *a2, void *a3)
{
  if (*(*a1 + 16) && (sub_21931EE2C(a2), (v5 & 1) != 0))
  {
  }

  else
  {
    v6 = a2;
    MEMORY[0x21CECC690]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
  }
}

uint64_t sub_2198761B8()
{
  sub_219BF4284();
  sub_21987A35C(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00, &type metadata for SportsFavorite);
  sub_219BF07D4();
  return sub_219BF4274();
}

uint64_t sub_219876240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v29 = a1;
  sub_21987A35C(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00, &type metadata for SportsFavorite);
  v8 = v7;
  v9 = *(v7 - 8);
  v31 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = v27 - v10;
  v11 = sub_219BE59F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a4;
  v15 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 32))(v19, a2, a4, v17);
  v20 = sub_219BF4F74();
  v21 = v29;
  sub_219BF07D4();
  *v14 = v33;
  v14[1] = 0;
  (*(v12 + 104))(v14, *MEMORY[0x277D31A10], v11);
  v27[1] = MEMORY[0x21CEBC780](v14, v20);

  (*(v12 + 8))(v14, v11);
  v22 = v30;
  (*(v9 + 16))(v30, v21, v8);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v23, v22, v8);
  v25 = sub_219BE59A4();
  (*(v9 + 8))(v21, v8);
  (*(v15 + 8))(v19, v28);
  return v25;
}

uint64_t sub_219876644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[1] = a5;
  v36 = a3;
  v35 = sub_219BE59F4();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_219BEC504();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 32);
  v32[0] = a4;
  v19(v17, a2, a4, v15);
  sub_2186EAD48(0);
  v21 = v20;
  sub_219BF07D4();
  v22 = sub_219BEC4F4();
  (*(v11 + 8))(v13, v10);
  v23 = sub_219BF4F74();
  swift_unknownObjectRetain();
  v24 = a1;
  v25 = sub_219BF07B4();
  *v9 = v22;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v25;
  v9[4] = v26;
  v27 = v33;
  v28 = v35;
  (*(v33 + 104))(v9, *MEMORY[0x277D31A58], v35);
  MEMORY[0x21CEBC780](v9, v23);
  (*(v27 + 8))(v9, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v23;
  v30 = sub_219BE59A4();
  (*(*(v21 - 8) + 8))(v24, v21);
  (*(v34 + 8))(v17, v32[0]);
  return v30;
}

uint64_t sub_2198769B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v42 = a4;
  v10 = a5(0);
  v46 = *(v10 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v45 = v39 - v11;
  v43 = sub_219BE59F4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BF04A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a3 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v22 = *(v21 + 32);
  v40 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22(v40, a2, a3, v19);
  v39[1] = sub_219BE5A14();
  sub_219BF07D4();
  v23 = sub_219BF03F4();
  v24 = v15 + 8;
  v25 = *(v15 + 8);
  v39[0] = v24;
  v25(v17, v14);
  v26 = sub_219BF4F74();
  sub_2194797A4(v26, v23);
  v28 = v27;
  sub_219BF07D4();
  v29 = sub_219BF0404();
  v25(v17, v14);
  *v13 = v29;
  v13[1] = 0;
  v30 = v41;
  v31 = v43;
  (*(v41 + 104))(v13, *MEMORY[0x277D31A10], v43);
  MEMORY[0x21CEBC780](v13, v28);

  (*(v30 + 8))(v13, v31);
  v33 = v45;
  v32 = v46;
  (*(v46 + 16))(v45, a1, v10);
  v34 = v32;
  v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = swift_allocObject();
  (*(v32 + 32))(v36 + v35, v33, v10);
  v37 = sub_219BE59A4();
  (*(v34 + 8))(a1, v10);
  (*(v44 + 8))(v40, a3);
  return v37;
}

uint64_t sub_219876F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v43 = a7;
  v40 = a4;
  v38 = a1;
  v34 = a5(0);
  v9 = *(v34 - 8);
  v41 = *(v9 + 64);
  MEMORY[0x28223BE20](v34);
  v39 = v33 - v10;
  v37 = sub_219BF0B74();
  v11 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BE59F4();
  v14 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v16 = (v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a3 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 32);
  v35 = a3;
  v22(v21, a2, a3, v19);
  v33[1] = sub_219BE5A14();
  v23 = v38;
  sub_219BF07D4();
  v24 = sub_219BF0B44();
  (*(v11 + 8))(v13, v37);
  *v16 = v24;
  v25 = v36;
  (*(v14 + 104))(v16, *MEMORY[0x277D31A40], v36);
  v26 = sub_219BF4F74();
  MEMORY[0x21CEBC780](v16, v26);

  (*(v14 + 8))(v16, v25);
  v27 = v39;
  v28 = v34;
  (*(v9 + 16))(v39, v23, v34);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v27, v28);
  v31 = sub_219BE59A4();
  (*(v9 + 8))(v23, v28);
  (*(v17 + 8))(v21, v35);
  return v31;
}

uint64_t sub_2198772D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a5;
  v67 = a3;
  v66 = sub_219BE59F4();
  v8 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21987A71C(0, &qword_280E90180, MEMORY[0x277D33E20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v17 = *(a4 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  (*(v17 + 32))(v21, a2, a4, v19);
  sub_219BF3B24();
  v23 = sub_219BF3484();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v16, 1, v23) != 1)
  {
    v63 = v17;
    v64 = a1;
    sub_21987AAC0(v16, v13, &qword_280E90180, MEMORY[0x277D33E20]);
    v28 = (*(v24 + 88))(v13, v23);
    if (v28 == *MEMORY[0x277D33DF0])
    {
      (*(v24 + 96))(v13, v23);
      v62 = *v13;
      v29 = *(v62 + 16);

      v30 = v21;
      v31 = v22;
      v32 = sub_219BF4F74();
      *v10 = v29;
      v33 = v66;
      (*(v8 + 104))(v10, *MEMORY[0x277D31A30], v66);

      MEMORY[0x21CEBC780](v10, v32);
      v34 = v16;
      v22 = v31;
      v21 = v30;

      (*(v8 + 8))(v10, v33);
    }

    else
    {
      if (v28 != *MEMORY[0x277D33E08])
      {
        v41 = *MEMORY[0x277D33DF8];
        v17 = v63;
        v61 = v16;
        if (v28 == v41)
        {
          (*(v24 + 96))(v13, v23);
          v62 = *v13;
          v42 = *(v62 + 16);

          v43 = sub_219BF4F74();
          *v10 = v42;
          v44 = v66;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A48], v66);

          MEMORY[0x21CEBC780](v10, v43);

          (*(v8 + 8))(v10, v44);
        }

        else if (v28 == *MEMORY[0x277D33E00])
        {
          (*(v24 + 96))(v13, v23);
          v62 = *v13;
          v45 = *(v62 + 16);

          v46 = sub_219BF4F74();
          *v10 = v45;
          v47 = v66;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A50], v66);

          MEMORY[0x21CEBC780](v10, v46);

          (*(v8 + 8))(v10, v47);
        }

        else if (v28 == *MEMORY[0x277D33E18])
        {
          (*(v24 + 96))(v13, v23);
          v62 = *v13;
          v48 = *(v62 + 16);

          v49 = sub_219BF4F74();
          *v10 = v48;
          v50 = v66;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A70], v66);

          MEMORY[0x21CEBC780](v10, v49);

          (*(v8 + 8))(v10, v50);
        }

        else if (v28 == *MEMORY[0x277D33DE8])
        {
          (*(v24 + 96))(v13, v23);
          v62 = *v13;
          v51 = *(v62 + 16);

          v52 = sub_219BF4F74();
          *v10 = v51;
          v53 = v66;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A08], v66);

          MEMORY[0x21CEBC780](v10, v52);

          (*(v8 + 8))(v10, v53);
        }

        else
        {
          if (v28 != *MEMORY[0x277D33E10])
          {
            v59 = sub_219BF3B34();
            (*(*(v59 - 8) + 8))(v64, v59);
            (*(v24 + 8))(v13, v23);
            goto LABEL_3;
          }

          (*(v24 + 96))(v13, v23);
          v62 = *v13;
          v54 = *(v62 + 16);

          v55 = sub_219BF4F74();
          *v10 = v54;
          v56 = v66;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A68], v66);

          MEMORY[0x21CEBC780](v10, v55);

          (*(v8 + 8))(v10, v56);
        }

        v16 = v61;
        v27 = sub_219BE59A4();

        v57 = sub_219BF3B34();
        (*(*(v57 - 8) + 8))(v64, v57);

        goto LABEL_20;
      }

      (*(v24 + 96))(v13, v23);
      v62 = *v13;
      v35 = *(v62 + 16);

      v36 = v21;
      v37 = v22;
      v38 = sub_219BF4F74();
      *v10 = v35;
      v39 = v66;
      (*(v8 + 104))(v10, *MEMORY[0x277D31A60], v66);

      MEMORY[0x21CEBC780](v10, v38);
      v34 = v16;
      v22 = v37;
      v21 = v36;

      (*(v8 + 8))(v10, v39);
    }

    v16 = v34;
    v27 = sub_219BE59A4();

    v40 = sub_219BF3B34();
    (*(*(v40 - 8) + 8))(v64, v40);

    v17 = v63;
    goto LABEL_20;
  }

  v25 = sub_219BF3B34();
  (*(*(v25 - 8) + 8))(a1, v25);
LABEL_3:
  v27 = 0;
LABEL_20:
  sub_21987A6A8(v16, &qword_280E90180, MEMORY[0x277D33E20], v26);
  (*(v17 + 8))(v21, v22);
  return v27;
}

uint64_t sub_219877D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, __n128 a9)
{
  v81 = a7;
  v82 = a8;
  v75 = a5;
  v76 = a3;
  v78 = MEMORY[0x277D32010];
  sub_21987A71C(0, &qword_280E91C10, MEMORY[0x277D32010], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v63 - v14;
  v15 = sub_219BE59F4();
  v79 = *(v15 - 8);
  v80 = v15;
  MEMORY[0x28223BE20](v15);
  v72 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BF0504();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v63 - v19;
  v68 = sub_219BF0EE4();
  v20 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF0F34();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v69 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  v83 = a4;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v33;
  (*(v33 + 32))(v32, a2, a4, v30);
  v34 = a6(0);
  v64 = a1;
  sub_219BF07D4();
  v35 = sub_219BF0F14();
  v65 = v23;
  v66 = v35;
  v36 = *(v24 + 8);
  v36(v28, v23);
  sub_219BF07D4();
  sub_219BF0EF4();
  v36(v28, v23);
  v37 = v67;
  sub_219BF0EC4();
  (*(v20 + 8))(v22, v68);
  v38 = v70;
  v39 = v71;
  v40 = v74;
  (*(v71 + 104))(v70, *MEMORY[0x277D32D20], v74);
  sub_219BF04F4();
  v41 = *(v39 + 8);
  v41(v38, v40);
  v41(v37, v40);
  v74 = v32;
  v42 = sub_219BF4F74();
  sub_2194797A4(v42, v76);
  v44 = v43;
  v45 = v69;
  v46 = v64;
  sub_219BF07D4();
  v47 = v73;
  sub_219BF0E24();
  v48 = v66;
  v36(v45, v65);
  v49 = v72;
  v50 = sub_219BEE404();
  LODWORD(v36) = (*(*(v50 - 8) + 48))(v47, 1, v50);
  sub_21987A6A8(v47, &qword_280E91C10, v78, v51);
  swift_unknownObjectRetain();
  v52 = v34;
  v53 = sub_219BF07B4();
  *v49 = v48;
  v55 = v49 + 1;
  if (v36 == 1)
  {
    *v55 = 0;
    v49[2] = 0;
    v55 = v49 + 3;
    v56 = MEMORY[0x277D31A58];
    v57 = 4;
  }

  else
  {
    v56 = MEMORY[0x277D31A20];
    v57 = 2;
  }

  *v55 = v53;
  v49[v57] = v54;
  v59 = v79;
  v58 = v80;
  (*(v79 + 104))(v49, *v56, v80);
  sub_219BE5A14();
  MEMORY[0x21CEBC780](v49, v44);
  v60 = swift_allocObject();
  *(v60 + 16) = v48;
  *(v60 + 24) = v44;
  v61 = sub_219BE59A4();
  (*(*(v52 - 8) + 8))(v46, v52);
  (*(v59 + 8))(v49, v58);
  (*(v77 + 8))(v74, v83);
  return v61;
}

uint64_t sub_219878438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v56 = a6;
  v57 = a7;
  v47 = a4;
  v44 = a5(0);
  v54 = *(v44 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v44);
  v53 = &v44 - v10;
  v52 = sub_219BE59F4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF0AC4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v45 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v51 = *(a3 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v23 = *(v22 + 32);
  v48 = a3;
  v49 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23(v49, a2, a3, v20);
  v46 = sub_219BE5A14();
  sub_219BF07D4();
  v24 = sub_219BF0A74();
  v25 = *(v14 + 8);
  v25(v18, v13);
  v26 = sub_219BF4F74();
  sub_2194797A4(v26, v24);
  v47 = v27;
  sub_21987A3EC(0);
  v29 = *(v28 + 48);
  v30 = v44;
  sub_219BF07D4();
  v31 = sub_219BF0AA4();
  v32 = v13;
  v25(v18, v13);
  *v12 = v31;
  v33 = v45;
  v34 = v30;
  sub_219BF07D4();
  sub_219BF0A44();
  v25(v33, v32);
  sub_219BF1CF4();
  v35 = sub_219BF1D14();
  (*(*(v35 - 8) + 56))(v12 + v29, 0, 1, v35);
  v36 = v50;
  v37 = v52;
  (*(v50 + 104))(v12, *MEMORY[0x277D31A38], v52);
  MEMORY[0x21CEBC780](v12, v47);

  (*(v36 + 8))(v12, v37);
  v39 = v53;
  v38 = v54;
  (*(v54 + 16))(v53, a1, v34);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = swift_allocObject();
  (*(v38 + 32))(v41 + v40, v39, v34);
  v42 = sub_219BE59A4();
  (*(v38 + 8))(a1, v34);
  (*(v51 + 8))(v49, v48);
  return v42;
}

uint64_t sub_219878938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v40 = a5;
  v41 = a3;
  v42 = a1;
  v36 = a6(0);
  v10 = *(v36 - 8);
  v44 = *(v10 + 64);
  MEMORY[0x28223BE20](v36);
  v43 = &v35 - v11;
  v38 = sub_219BEDB94();
  v12 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BE59F4();
  v15 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = a4;
  v18 = *(a4 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 32))(v22, a2, a4, v20);
  v35 = sub_219BE5A14();
  v23 = sub_219BF4F74();
  sub_2194797A4(v23, v41);
  v25 = v24;
  v26 = v42;
  sub_219BF07D4();
  v27 = sub_219BEDB74();
  (*(v12 + 8))(v14, v38);
  *v17 = v27;
  v17[1] = 0;
  v28 = v37;
  (*(v15 + 104))(v17, *MEMORY[0x277D31A10], v37);
  MEMORY[0x21CEBC780](v17, v25);

  (*(v15 + 8))(v17, v28);
  v29 = v43;
  v30 = v36;
  (*(v10 + 16))(v43, v26, v36);
  v31 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v32 = swift_allocObject();
  (*(v10 + 32))(v32 + v31, v29, v30);
  v33 = sub_219BE59A4();
  (*(v10 + 8))(v26, v30);
  (*(v18 + 8))(v22, v39);
  return v33;
}

uint64_t sub_219878D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v41 = a5;
  v42 = a3;
  v43 = MEMORY[0x277D32010];
  sub_21987A71C(0, &qword_280E91C10, MEMORY[0x277D32010], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_219BE59F4();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v19;
  (*(v19 + 32))(v18, a2, a4, v16);
  sub_218985EAC(0);
  v21 = v20;
  sub_219BF07D4();
  v22 = *(v48 + 16);
  swift_unknownObjectRetain();

  sub_219BF07D4();

  v47 = a4;
  v23 = sub_219BF4F74();
  sub_2194797A4(v23, v42);
  v42 = v24;
  sub_219BF07D4();
  v25 = v43;
  sub_21987AAC0(v48 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, v11, &qword_280E91C10, v43);

  v26 = sub_219BEE404();
  v27 = (*(*(v26 - 8) + 48))(v11, 1, v26);
  v28 = a1;
  sub_21987A6A8(v11, &qword_280E91C10, v25, v29);
  swift_unknownObjectRetain();
  v30 = sub_219BF07B4();
  *v14 = v22;
  v32 = v14 + 1;
  if (v27 == 1)
  {
    *v32 = 0;
    v14[2] = 0;
    v32 = v14 + 3;
    v33 = MEMORY[0x277D31A58];
    v34 = 4;
  }

  else
  {
    v33 = MEMORY[0x277D31A20];
    v34 = 2;
  }

  *v32 = v30;
  v14[v34] = v31;
  v36 = v45;
  v35 = v46;
  (*(v45 + 104))(v14, *v33, v46);
  sub_219BE5A14();
  v37 = v42;
  MEMORY[0x21CEBC780](v14, v42);
  v38 = swift_allocObject();
  *(v38 + 16) = v22;
  *(v38 + 24) = v37;
  v39 = sub_219BE59A4();
  (*(*(v21 - 8) + 8))(v28, v21);
  (*(v36 + 8))(v14, v35);
  (*(v44 + 8))(v18, v47);
  return v39;
}

uint64_t sub_21987915C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, __n128 a8)
{
  v81 = a7;
  v79 = a6;
  v85 = a2;
  v86 = a5;
  v11 = MEMORY[0x277D83D88];
  sub_21987A71C(0, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = &v68 - v13;
  v80 = sub_219BF3B34();
  v78 = *(v80 - 1);
  MEMORY[0x28223BE20](v80);
  v68 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v68 - v16;
  v76 = sub_219BE59F4();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v18 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21987A71C(0, &unk_280E90A30, MEMORY[0x277D33058], v11);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v68 - v20;
  v22 = sub_219BF1094();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v70 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v68 - v26;
  v28 = sub_219BF0F34();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v73 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v30;
  MEMORY[0x28223BE20](v31);
  v74 = &v68 - v32;
  v88[3] = a3;
  v88[4] = a4;
  v82 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  v34 = *(*(a3 - 8) + 32);
  v84 = a3;
  v34(boxed_opaque_existential_1, v85, a3);
  v83 = sub_219BE5A14();
  v85 = v86(0);
  v86 = a1;
  sub_219BF07D4();
  sub_219BF1074();
  v35 = *(v23 + 8);
  v72 = v22;
  v35(v27, v22);
  v36 = v28;
  if ((*(v29 + 48))(v21, 1, v28) == 1)
  {
    v38 = v83;
    v39 = v84;
    sub_21987A6A8(v21, &unk_280E90A30, MEMORY[0x277D33058], v37);
    v40 = v70;
    v41 = v86;
    sub_219BF07D4();
    v42 = v77;
    sub_219BF1014();
    v35(v40, v72);
    v43 = v78;
    v44 = v80;
    if ((*(v78 + 48))(v42, 1, v80) == 1)
    {
      v45.n128_f64[0] = (*(*(v85 - 8) + 8))(v41);
      sub_21987A6A8(v42, &qword_27CC20280, MEMORY[0x277D34048], v45);
      v46 = 0;
    }

    else
    {
      v60 = v69;
      (*(v43 + 32))(v69, v42, v44);
      v61 = v68;
      (*(v43 + 16))(v68, v60, v44);
      sub_218718690(v88, v87);
      v62 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
      v63 = MEMORY[0x28223BE20](v62);
      v65 = &v68 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v66 + 16))(v65, v63);
      v46 = sub_2198772D4(v61, v65, v38, v39, v82);
      (*(*(v85 - 8) + 8))(v41);
      (*(v43 + 8))(v60, v44);
      __swift_destroy_boxed_opaque_existential_1(v87);
    }
  }

  else
  {
    v47 = v29;
    v80 = *(v29 + 32);
    v48 = v74;
    (v80)(v74, v21, v36);
    sub_219BF0F24();
    v49 = sub_219BF4F74();
    v84 = v49;
    v50 = sub_219BF0F14();
    v51 = v85;
    v52 = sub_219BF07B4();
    *v18 = v50;
    v18[1] = 0;
    v18[2] = 0;
    v18[3] = v52;
    v18[4] = v53;
    v54 = v75;
    v55 = v76;
    (*(v75 + 104))(v18, *MEMORY[0x277D31A58], v76);
    v82 = MEMORY[0x21CEBC780](v18, v49);
    (*(v54 + 8))(v18, v55);
    v56 = v73;
    (*(v47 + 16))(v73, v48, v36);
    v57 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v58 = (v71 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    (v80)(v59 + v57, v56, v36);
    *(v59 + v58) = v84;
    v46 = sub_219BE59A4();
    (*(*(v51 - 8) + 8))(v86, v51);
    (*(v47 + 8))(v48, v36);
  }

  __swift_destroy_boxed_opaque_existential_1(v88);
  return v46;
}

uint64_t sub_219879A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v46 = a6;
  v47 = a7;
  v40[1] = a4;
  v45 = sub_219BE59F4();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF07A4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a3 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 32);
  v41 = a3;
  v22(v20, a2, a3, v18);
  v40[2] = sub_219BE5A14();
  v23 = a5(0);
  v42 = a1;
  sub_219BF07D4();
  v40[0] = sub_219BF06B4();
  v24 = *(v14 + 8);
  v24(v16, v13);
  sub_219BF07D4();
  sub_219BF0684();
  v24(v16, v13);
  v25 = sub_219BF4F74();
  sub_21987A71C(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
  v26 = sub_219BEAAD4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C09EC0;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x277D31B18], v26);
  v32(v31 + v28, *MEMORY[0x277D31B10], v26);
  v33 = v40[0];
  *v12 = v40[0];
  v12[1] = v30;
  v12[2] = 0;
  v34 = v43;
  v35 = v45;
  (*(v43 + 104))(v12, *MEMORY[0x277D31A28], v45);
  v36 = v33;
  MEMORY[0x21CEBC780](v12, v25);
  (*(v34 + 8))(v12, v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v25;
  v38 = sub_219BE59A4();
  (*(*(v23 - 8) + 8))(v42, v23);
  (*(v44 + 8))(v20, v41);
  return v38;
}

uint64_t sub_219879E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v37 = a1;
  sub_21987A35C(0, &qword_280E90E40, sub_2189699BC, sub_218969A10, &type metadata for ContinuePlayingPuzzle);
  v7 = v6;
  v8 = *(v6 - 8);
  v36 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v31 - v9;
  v32 = sub_219BE59F4();
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 32))(v16, a2, a3, v14);
  v31 = sub_219BE5A14();
  v18 = sub_219BF4F74();
  sub_21987A3EC(0);
  v20 = *(v19 + 48);
  sub_219BF07D4();
  v21 = v39[0];
  swift_unknownObjectRetain();
  sub_218969A64(v39);
  *v12 = v21;
  sub_219BF07D4();
  v22 = v38[2];
  sub_218969A64(v38);
  sub_219BF1CF4();
  v23 = sub_219BF1D14();
  (*(*(v23 - 8) + 56))(v12 + v20, 0, 1, v23);
  v24 = v32;
  (*(v10 + 104))(v12, *MEMORY[0x277D31A38], v32);
  MEMORY[0x21CEBC780](v12, v18);

  (*(v10 + 8))(v12, v24);
  v25 = v35;
  v26 = v37;
  (*(v8 + 16))(v35, v37, v7);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = swift_allocObject();
  (*(v8 + 32))(v28 + v27, v25, v7);
  v29 = sub_219BE59A4();
  (*(v8 + 8))(v26, v7);
  (*(v34 + 8))(v16, v33);
  return v29;
}

uint64_t sub_21987A2C4()
{
  sub_21987A35C(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00, &type metadata for SportsFavorite);

  return sub_2198761B8();
}

void sub_21987A35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_219BF0854();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_21987A3EC(uint64_t a1)
{
  if (!qword_27CC20248)
  {
    sub_21873FA4C();
    sub_21987A71C(255, &unk_27CC10910, MEMORY[0x277D335C0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20248);
    }
  }
}

uint64_t objectdestroy_21Tm_1(unint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4)
{
  sub_21987A35C(0, a1, a2, a3, a4);
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_21987A528()
{
  sub_21987A35C(0, &qword_280E90E40, sub_2189699BC, sub_218969A10, &type metadata for ContinuePlayingPuzzle);

  return sub_219875500(v0);
}

uint64_t sub_21987A6A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_21987A71C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_21987A71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_75Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_21987AAC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21987A71C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_30Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_39Tm_0()
{
  v1 = sub_219BF0F34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21987AC38()
{
  v1 = *(sub_219BF0F34() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219874E04(v0 + v2, v3);
}

uint64_t sub_21987ACD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_219BDDB54();
  v16 = *(v6 - 8);
  v7 = (*(v16 + 88))(a1, v6);
  if (v7 == *MEMORY[0x277D2FC50])
  {

    v8 = MEMORY[0x277D6E598];
LABEL_10:
    v9 = *v8;
    v10 = sub_219BE9414();
    v11 = *(*(v10 - 8) + 104);

    return v11(a3, v9, v10);
  }

  if (v7 == *MEMORY[0x277D2FC58])
  {

    v8 = MEMORY[0x277D6E5A0];
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277D2FC40])
  {

    *a3 = 0;
    a3[1] = 0;
LABEL_9:
    v8 = MEMORY[0x277D6E590];
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277D2FC48])
  {
    *a3 = a2;
    a3[1] = 0;
    goto LABEL_9;
  }

  v13 = *MEMORY[0x277D6E598];
  v14 = sub_219BE9414();
  (*(*(v14 - 8) + 104))(a3, v13, v14);
  v15 = *(v16 + 8);

  return v15(a1, v6);
}

uint64_t sub_21987AED4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  LOBYTE(a3) = (*(a3 + 64))(v6, v8, a2, a3);

  return a3 & 1;
}

uint64_t OfflineIssueManagerType.download(issue:source:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  v11 = (*(a4 + 24))(v8, v10, a2, a3, a4);

  return v11;
}

uint64_t sub_21987B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 56))(a3, a4);
  sub_219BE2184();

  LOBYTE(a2) = sub_2188537B8(a1, a2, v7);

  return a2 & 1;
}

uint64_t OfflineIssueManagerType.isDownloaded(issue:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  LOBYTE(a3) = sub_21987B00C(v6, v8, a2, a3);

  return a3 & 1;
}

double sub_21987B1AC(uint64_t *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_issueIDsAvailableOffline);
    v6 = Strong;

    v7 = *(v2 + 32);
    LODWORD(v6) = v7 & 0x3F;
    v8 = ((1 << v7) + 63) >> 6;
    v9 = 8 * v8;

    if (v6 > 0xD)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v25 = v8;
      v26 = v5;
      v24[1] = v24;
      MEMORY[0x28223BE20](v10);
      v11 = v24 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v11, v9);
      v9 = 0;
      v12 = 0;
      v13 = 1 << *(v2 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v8 = v14 & *(v2 + 56);
      v15 = (v13 + 63) >> 6;
      while (v8)
      {
        v16 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_13:
        v19 = v16 | (v12 << 6);

        v5 = sub_219BF5624();

        if (v5)
        {
          *&v11[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
          if (__OFADD__(v9++, 1))
          {
            __break(1u);
LABEL_17:
            v21 = sub_21987C7C8(v11, v25, v9, v2);
            goto LABEL_18;
          }
        }
      }

      v17 = v12;
      while (1)
      {
        v12 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v12 >= v15)
        {
          goto LABEL_17;
        }

        v18 = *(v2 + 56 + 8 * v12);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v8 = (v18 - 1) & v18;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v22 = swift_slowAlloc();
    v23 = sub_21987C3DC(v22, v8, v2, sub_21987B484);

    MEMORY[0x21CECF960](v22, -1, -1);
    v21 = v23;
LABEL_18:
    v27 = v21;
    sub_21987CA0C();
    sub_219BE21B4();
  }

  return result;
}

void sub_21987B4BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 backgroundRefreshStatus];

    v3[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshEnabled] = v5 != 1;
  }
}

id sub_21987B560()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshChangeObserver];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21987B760(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_219BF1584();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21987D8F0(0, &unk_27CC16B98, sub_2186FB5EC, &type metadata for IssueOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29[-v12];
  if (a3 < 2)
  {
    goto LABEL_2;
  }

  if (a3 != 2)
  {
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  if (*(v3 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshEnabled))
  {
LABEL_2:
    sub_219BF1B74();
    if ((*(v8 + 48))(v13, 1, v7) == 1)
    {
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_storageLevelProvider), *(v3 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_storageLevelProvider + 24));

      sub_219BE2CF4();

      sub_219BE2184();

      if (v29[7] == 2)
      {
        type metadata accessor for OfflineIssueManager.Errors(0);
        sub_21987C394(&qword_27CC202C8, 255, type metadata accessor for OfflineIssueManager.Errors, &unk_219CAE26C);
        v14 = swift_allocError();
        v16 = v15;
        sub_2186F083C();
        (*(*(v17 - 8) + 56))(v16, 3, 7, v17);
      }

      else
      {
        v24 = *(v3 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList);
        v25 = sub_219BF53D4();
        v26 = [v24 containsIssueID_];

        if (!v26 || a3 == 1)
        {
          v27 = sub_219BF53D4();
          [v24 addIssueID:v27 source:a3];
        }

        return sub_21987BC68(a1, a2);
      }
    }

    else
    {
      (*(v8 + 32))(v10, v13, v7);
      type metadata accessor for OfflineIssueManager.Errors(0);
      sub_21987C394(&qword_27CC202C8, 255, type metadata accessor for OfflineIssueManager.Errors, &unk_219CAE26C);
      v14 = swift_allocError();
      v19 = v18;
      (*(v8 + 16))(v18, v10, v7);
      sub_2186F083C();
      (*(*(v20 - 8) + 56))(v19, 0, 7, v20);
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    type metadata accessor for OfflineIssueManager.Errors(0);
    sub_21987C394(&qword_27CC202C8, 255, type metadata accessor for OfflineIssueManager.Errors, &unk_219CAE26C);
    v14 = swift_allocError();
    v22 = v21;
    sub_2186F083C();
    (*(*(v23 - 8) + 56))(v22, 7, 7, v23);
  }

  return v14;
}

uint64_t sub_21987BC68(uint64_t a1, uint64_t a2)
{
  v5 = sub_219BE6234();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager + 24);
  v10 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager), v9);
  (*(v10 + 40))(a1, a2, v9, v10);
  v11 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList);

  v12 = sub_219BF53D4();
  v13 = [v11 sourceForIssueID_];

  type metadata accessor for IssueDownload();
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  (*(v6 + 104))(v8, *MEMORY[0x277D6D560], v5);
  sub_2191E3E58(0);
  swift_allocObject();
  *(v14 + 72) = sub_219BE2174();
  v19[0] = 0;
  sub_21987D9A4(0, &qword_280EE7AB0, MEMORY[0x277D839F8], MEMORY[0x277D6CB78]);
  swift_allocObject();
  *(v14 + 80) = sub_219BE2174();
  *(v14 + 48) = a1;
  *(v14 + 56) = a2;
  *(v14 + 64) = v13;
  sub_219BE2184();
  sub_219BE2164();
  (*(v6 + 8))(v8, v5);

  v15 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_219BE2184();
  v18 = v19[0];
  sub_219BE21B4();

  v16 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_destroy_boxed_opaque_existential_1(v19);

  return v14;
}

uint64_t sub_21987BFF4()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager + 32);
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return sub_2198E9038(v2, v3);
}

uint64_t sub_21987C03C()
{
  sub_21987D9A4(0, &qword_280EE69D8, MEMORY[0x277D83B88], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21987C0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList);
  v4 = sub_219BF53D4();
  v5 = [v3 everContainedIssueID_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_219BF53D4();
  v7 = [v3 containsIssueID_];

  return v7 ^ 1;
}

uint64_t sub_21987C15C(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_219BF5414();
  v4 = v3;

  sub_219BE2184();
  v5 = sub_2188537B8(v2, v4, v7);

  return v5 & 1;
}

void *sub_21987C1F4(uint64_t a1, uint64_t a2)
{
  result = sub_21987B760(a1, a2, 1uLL);
  if ((v3 & 1) == 0)
  {
    sub_218BFF748(result, 0);
    return 0;
  }

  return result;
}

void sub_21987C230(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList);
  sub_21987D9A4(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_219BF5904();

  [v5 removeIssueIDs_];
}

uint64_t sub_21987C310(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_21987C394(qword_280ED0B38, a2, type metadata accessor for OfflineIssueManager, &unk_219CAE220);
  result = sub_21987C394(&qword_280ED0B30, v3, type metadata accessor for OfflineIssueManager, &unk_219CAE1F0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21987C394(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_21987C3DC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_21987D718(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_21987C46C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SearchFilterItem(0);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_2194B79E8(0);
  result = sub_219BF72E4();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v29 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v32 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v30 + 72);
    sub_218736148(v19 + v33 * (v16 | (v14 << 6)), v10, type metadata accessor for SearchFilterItem);
    sub_219BF7AA4();
    sub_219BF5524();
    MEMORY[0x21CECE850](v10[32]);
    sub_219BF5524();
    sub_219BDBD34();
    sub_21987C394(&qword_27CC1AD70, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_219BF52F4();
    result = sub_219BF7AE4();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v29;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v29;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_21872D1E4(v10, *(v11 + 48) + v23 * v33, type metadata accessor for SearchFilterItem);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v32;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v32 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987C7C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_218726BC4(0, &unk_280E8D620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_219BF7AA4();

    sub_219BF5524();
    result = sub_219BF7AE4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_21987CA0C()
{
  result = qword_280E8E9C0;
  if (!qword_280E8E9C0)
  {
    sub_218726BC4(255, &qword_280E8E9E0, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E9C0);
  }

  return result;
}

uint64_t sub_21987CA90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AudioFeedTrack(0);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v26 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_2194B567C(0);
  result = sub_219BF72E4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v25 = result + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v29 = (v12 - 1) & v12;
LABEL_16:
    v17 = a4;
    v18 = v26;
    v19 = *(v27 + 72);
    v20 = *(a4 + 48) + v19 * (v14 | (v13 << 6));
    v30 = type metadata accessor for AudioFeedTrack;
    v31 = v19;
    sub_218736148(v20, v26, type metadata accessor for AudioFeedTrack);
    sub_219BF7AA4();
    v21 = [*v18 identifier];
    sub_219BF5414();

    sub_219BF5524();

    sub_2198DA178(v32);
    sub_219BF7AE4();
    v22 = v25;
    v23 = sub_219BF71A4();
    *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_21872D1E4(v18, *(v10 + 48) + v23 * v31, v30);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v17;
    v12 = v29;
    if (!a3)
    {
LABEL_18:

      return v10;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_18;
    }

    v16 = a1[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v29 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21987CD38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_21987D8F0(0, &qword_27CC1A958, sub_2194B53C4, &type metadata for PuzzleArchiveFilterOption, MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v7 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_16:
    v16 = *(a4 + 48) + 16 * (v13 | (v12 << 6));
    result = sub_2194A1250(*v16, *(v16 + 8), v7);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_21;
    }

    if (!v6)
    {
LABEL_18:

      return v7;
    }
  }

  v14 = v12;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_18;
    }

    v15 = a1[v12];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21987CE94(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_218726BC4(0, &unk_27CC1AA60, MEMORY[0x277D83B88], MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_219BF7A94();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987D0A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x277D84FA0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  sub_21987D8F0(0, &qword_280E8D690, sub_218F0014C, &type metadata for TodayFeedPoolServiceContent, MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + (v14 | (v12 << 6)));
    sub_219BF7AA4();
    MEMORY[0x21CECE850](v17);
    result = sub_219BF7AE4();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987D2D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_218726BC4(0, &unk_27CC1A930, MEMORY[0x277D849A8], MEMORY[0x277D849B8], MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    result = MEMORY[0x21CECE820](*(v9 + 40), v16, 4);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21987D4E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x277D84FA0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  sub_21987D8F0(0, &unk_280E8D6B0, sub_2194B5C2C, &type metadata for EmailNewsletterFeature, MEMORY[0x277D84098]);
  result = sub_219BF72E4();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + (v14 | (v12 << 6)));
    sub_219BF7AA4();
    MEMORY[0x21CECE850](v17);
    result = sub_219BF7AE4();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_21987D718(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = (a4)(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_21987C7C8(a1, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_21987D8F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t type metadata accessor for OfflineIssueManager.Errors(uint64_t a1)
{
  result = qword_27CC202D0;
  if (!qword_27CC202D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21987D9A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21987DA1C(uint64_t a1)
{
  sub_2186F083C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_21987DAB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_218D37B4C(0);
  v30 = v3;
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E28A4(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v32 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = sub_219BED8D4();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21987E864(0, &unk_27CC202E8, MEMORY[0x277D844C8]);
  v36 = v10;
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21987E750();
  v35 = v12;
  v16 = v37;
  sub_219BF7B34();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v32;
  v25 = v13;
  v37 = v15;
  LOBYTE(v38) = 0;
  sub_21987E8C8(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  v18 = v33;
  sub_219BF7734();
  (*(v31 + 32))(v37, v18, v8);
  LOBYTE(v38) = 1;
  sub_21950EEF0(&unk_280EE6780, MEMORY[0x277D6CF98]);
  sub_219BF7734();
  v33 = v8;
  sub_219BE3384();
  (*(v29 + 8))(v7, v17);
  v19 = v25;
  v20 = v37;
  *&v37[*(v25 + 20)] = v38;
  LOBYTE(v38) = 2;
  sub_21987E8C8(&unk_280EE6800, sub_218D37B4C, MEMORY[0x277D6CF98]);
  v21 = v28;
  v22 = v30;
  sub_219BF7734();
  sub_219BE3384();
  (*(v26 + 8))(v21, v22);
  (*(v34 + 8))(v35, v36);
  *(v20 + *(v19 + 24)) = v38;
  sub_21987E7A4(v20, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21987E808(v20);
}

uint64_t sub_21987E080(void *a1)
{
  v2 = v1;
  sub_218D37B4C(0);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E28A4(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  sub_21987E864(0, &unk_280E8C4D0, MEMORY[0x277D84538]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21987E750();
  sub_219BF7B44();
  v27 = 0;
  sub_219BED8D4();
  sub_21987E8C8(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  v15 = v23;
  sub_219BF7834();
  if (v15)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v12;
  v17 = v20;
  v18 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  sub_2186D6710(0, &qword_280E8E390, &protocolRef_FCChannelProviding);
  swift_unknownObjectRetain();
  sub_219BE3404();
  v26 = 1;
  sub_21950EEF0(&unk_280EE6790, MEMORY[0x277D6CF90]);
  sub_219BF7834();
  (*(v21 + 8))(v9, v22);
  v24 = *(v2 + *(v18 + 24));
  sub_2186E28A4(0, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
  sub_218D37E78();

  sub_219BE33B4();
  v25 = 2;
  sub_21987E8C8(&qword_280EE6810, sub_218D37B4C, MEMORY[0x277D6CF90]);
  sub_219BF7834();
  (*(v19 + 8))(v6, v17);
  return (*(v23 + 8))(v14, v11);
}

uint64_t sub_21987E508(uint64_t a1)
{
  v2 = sub_21987E8C8(&unk_280EBB0D0, type metadata accessor for NewspaperMagazineFeedGroup, &unk_219CAE3D4);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21987E574(void *a1)
{
  a1[1] = sub_21987E8C8(&unk_280EBB0D0, type metadata accessor for NewspaperMagazineFeedGroup, &unk_219CAE3D4);
  a1[2] = sub_21987E8C8(&qword_280EBB098, type metadata accessor for NewspaperMagazineFeedGroup, &unk_219CAE390);
  result = sub_21987E8C8(&qword_280EBB0B0, type metadata accessor for NewspaperMagazineFeedGroup, &unk_219CAE368);
  a1[3] = result;
  return result;
}

uint64_t sub_21987E6F8(uint64_t a1)
{
  result = sub_21987E8C8(&qword_280EBB090, type metadata accessor for NewspaperMagazineFeedGroup, &unk_219CAE3B8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21987E750()
{
  result = qword_280EBB0F0;
  if (!qword_280EBB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB0F0);
  }

  return result;
}

uint64_t sub_21987E7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21987E808(uint64_t a1)
{
  v2 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21987E864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21987E750();
    v7 = a3(a1, &type metadata for NewspaperMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21987E8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21987E920(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v4 = 0x736E6F6974636573;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x724774616D726F66;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB0000000070756FLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C656E6E616863;
  if (*a2 != 1)
  {
    v8 = 0x736E6F6974636573;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x724774616D726F66;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB0000000070756FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21987EA28()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21987EAD4(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21987EB6C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21987EC14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21987EEB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21987EC44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000070756FLL;
  v4 = 0xE700000000000000;
  v5 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v5 = 0x736E6F6974636573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x724774616D726F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21987ECAC()
{
  v1 = 0x6C656E6E616863;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

unint64_t sub_21987ED10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21987EEB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21987ED38(uint64_t a1)
{
  v2 = sub_21987E750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21987ED74(uint64_t a1)
{
  v2 = sub_21987E750();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21987EDB4()
{
  result = qword_27CC202F8;
  if (!qword_27CC202F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC202F8);
  }

  return result;
}

unint64_t sub_21987EE0C()
{
  result = qword_280EBB0E0;
  if (!qword_280EBB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB0E0);
  }

  return result;
}

unint64_t sub_21987EE64()
{
  result = qword_280EBB0E8;
  if (!qword_280EBB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB0E8);
  }

  return result;
}

unint64_t sub_21987EEB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21987EF04(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v8 = sub_218B8EA70(a2, *a3);
  if (v8)
  {
    v9 = v8;
    swift_endAccess();
    v10 = *(v9 + 16);

    v25 = v10;

    MEMORY[0x21CECC690](v11);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    type metadata accessor for SportsScores();
    v12 = swift_allocObject();
    v12[3] = 0;
    v12[4] = 0;
    v12[2] = v25;
    swift_beginAccess();
    v13 = *a3;
    if ((*a3 & 0xC000000000000001) == 0)
    {
      goto LABEL_10;
    }

    if (v13 < 0)
    {
      v14 = *a3;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = sub_219BF7214();
    if (!__OFADD__(v15, 1))
    {
      *a3 = sub_21945DC60(v14, v15 + 1);
LABEL_10:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *a3;
      sub_21948C258(v12, a2, isUniquelyReferenced_nonNull_native);
      *a3 = v24;
      return swift_endAccess();
    }

    __break(1u);
    goto LABEL_22;
  }

  swift_endAccess();
  sub_218BE55B8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C146A0;
  *(v17 + 32) = a1;
  type metadata accessor for SportsScores();
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v17;
  swift_beginAccess();
  v19 = *a3;
  if ((*a3 & 0xC000000000000001) == 0)
  {

LABEL_18:
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a3;
    sub_21948C258(v18, a2, v22);
    *a3 = v26;
    swift_endAccess();
    swift_beginAccess();

    MEMORY[0x21CECC690](v23);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      sub_219BF5A54();
      return swift_endAccess();
    }

LABEL_22:
    sub_219BF5A14();
    goto LABEL_19;
  }

  if (v19 < 0)
  {
    v20 = *a3;
  }

  else
  {
    v20 = v19 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_219BF7214();
  if (!__OFADD__(result, 1))
  {
    *a3 = sub_21945DC60(v20, result + 1);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

double sub_21987F1F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, __n128 a7)
{
  v13 = sub_219BF4034();
  if (v13)
  {
    v14 = [v13 name];
    swift_unknownObjectRelease();
    a3 = sub_219BF5414();
    a4 = v15;
  }

  else
  {
  }

  swift_beginAccess();
  v16 = *a5;
  if (*(*a5 + 16))
  {
    v17 = sub_21931ED80(a2);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      swift_endAccess();
      if (*(v19 + 16))
      {

        v20 = sub_21870F700(a3, a4);
        if (v21)
        {
          v22 = *(*(v19 + 56) + 8 * v20);

          v23 = *(v22 + 16);

          v47 = v23;

          MEMORY[0x21CECC690](v24);
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          v25 = v47;
          swift_beginAccess();
          v27 = sub_218D26A4C(v45, a2);
          if (*v26)
          {
            v28 = v26;
            type metadata accessor for SportsScores();
            v29 = swift_allocObject();
            v29[2] = v25;
            v29[3] = a3;
            v29[4] = a4;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v44 = *v28;
            *v28 = 0x8000000000000000;
            sub_21948C3B8(v29, a3, a4, isUniquelyReferenced_nonNull_native);

            *v28 = v44;
            (v27)(v45, 0);
            swift_endAccess();
          }

          else
          {
            (v27)(v45, 0);
            swift_endAccess();
          }

LABEL_20:

          return result;
        }
      }

      swift_beginAccess();
      v39 = sub_218D26A4C(v45, a2);
      if (*v38)
      {
        v40 = v38;
        sub_218BE55B8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_219C146A0;
        *(v41 + 32) = a1;
        type metadata accessor for SportsScores();
        v42 = swift_allocObject();
        v42[2] = v41;
        v42[3] = a3;
        v42[4] = a4;

        v43 = swift_isUniquelyReferenced_nonNull_native();
        v47 = *v40;
        *v40 = 0x8000000000000000;
        sub_21948C3B8(v42, a3, a4, v43);

        *v40 = v47;
        (v39)(v45, 0);
        swift_endAccess();
        return result;
      }

      (v39)(v45, 0);
      swift_endAccess();
      goto LABEL_20;
    }
  }

  swift_endAccess();
  sub_2186DE050(0, &qword_27CC20300, sub_21988051C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  sub_218BE55B8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_219C146A0;
  *(v32 + 32) = a1;
  type metadata accessor for SportsScores();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a3;
  v33[4] = a4;
  *(inited + 48) = v33;

  v34 = sub_2194AEF7C(inited);
  swift_setDeallocating();
  sub_219880584(inited + 32);
  swift_beginAccess();
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *a5;
  *a5 = 0x8000000000000000;
  sub_21948C3E4(v34, a2, v35);

  *a5 = v46;
  swift_endAccess();
  swift_beginAccess();

  MEMORY[0x21CECC690](v36);
  if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  swift_endAccess();
  return result;
}

void *sub_21987F774(char a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();
  v5 = v4;

  type metadata accessor for SportsDateHeader();
  result = swift_allocObject();
  result[2] = v3;
  result[3] = v5;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void sub_21987F8B4(unint64_t a1)
{
  sub_2186DE050(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v36 = sub_219BF4AC4();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F90];
  *&v37 = a1;
  if (a1 >> 62)
  {
    v19 = sub_219BF7214();
    v10 = v37;
    v14 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v14 >= 1)
  {
    v15 = 0;
    v16 = (v9 + 48);
    v34 = (v9 + 32);
    v35 = v10 & 0xC000000000000001;
    v33 = (v9 + 8);
    do
    {
      if (v35)
      {
        v18 = MEMORY[0x21CECE0F0](v15, v11);
      }

      else
      {
        v18 = *(v10 + 8 * v15 + 32);
      }

      sub_219BF3FA4();
      sub_219BF4AB4();
      (*(v5 + 8))(v7, v36);
      if ((*v16)(v4, 1, v8) == 1)
      {

        sub_2189DD39C(v4);
      }

      else
      {
        (*v34)(v13, v4, v8);
        v17 = sub_218A9EC28(v13);
        sub_21987EF04(v18, v17, &v42, &v41);

        (*v33)(v13, v8);
      }

      ++v15;
      v10 = v37;
    }

    while (v14 != v15);
LABEL_13:
    v40 = MEMORY[0x277D84F90];
    swift_beginAccess();
    v20 = v41;
    if (v41 >> 62)
    {
      v21 = sub_219BF7214();
      if (v21)
      {
LABEL_15:
        if (v21 >= 1)
        {
          v22 = 0;
          v23 = MEMORY[0x277D84F68];
          v37 = xmmword_219C146A0;
          while (1)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x21CECE0F0](v22, v20);
            }

            else
            {
              v24 = *(v20 + 8 * v22 + 32);
            }

            swift_beginAccess();
            v25 = v42;
            if ((v42 & 0xC000000000000001) != 0)
            {

              v26 = sub_219BF74F4();

              if (v26)
              {
                v38 = v26;
                type metadata accessor for SportsScores();
                swift_dynamicCast();
                v27 = v39;
                if (v39)
                {
                  goto LABEL_29;
                }
              }
            }

            else if (*(v42 + 16))
            {
              v28 = sub_21931ED80(v24);
              if (v29)
              {
                v27 = *(*(v25 + 56) + 8 * v28);

                if (v27)
                {
LABEL_29:
                  swift_endAccess();
                  sub_218BE55B8(0, &qword_280E8B5A0, v23 + 8);
                  v30 = swift_allocObject();
                  *(v30 + 16) = v37;
                  *(v30 + 32) = v27;
                  type metadata accessor for SportsScoreSection();
                  v31 = swift_allocObject();
                  *(v31 + 16) = v24;
                  *(v31 + 24) = v30;

                  MEMORY[0x21CECC690](v32);
                  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v36 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_219BF5A14();
                  }

                  sub_219BF5A54();

                  goto LABEL_18;
                }
              }
            }

            swift_endAccess();

LABEL_18:
            if (v21 == ++v22)
            {
              goto LABEL_33;
            }
          }
        }

        goto LABEL_35;
      }
    }

    else
    {
      v21 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_15;
      }
    }

LABEL_33:

    return;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21987FE38(unint64_t a1)
{
  sub_2186DE050(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v52 = sub_219BF4AC4();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F90];
  v53 = a1;
  if (a1 >> 62)
  {
    v20 = sub_219BF7214();
    v10 = v53;
    v14 = v20;
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
LABEL_50:

    __break(1u);
    return;
  }

  v15 = 0;
  v16 = (v9 + 48);
  v50 = (v9 + 32);
  v51 = v10 & 0xC000000000000001;
  v49 = (v9 + 8);
  do
  {
    if (v51)
    {
      v19 = MEMORY[0x21CECE0F0](v15, v11);
    }

    else
    {
      v19 = *(v10 + 8 * v15 + 32);
    }

    sub_219BF3FA4();
    sub_219BF4AB4();
    (*(v5 + 8))(v7, v52);
    if ((*v16)(v4, 1, v8) == 1)
    {

      sub_2189DD39C(v4);
    }

    else
    {
      (*v50)(v13, v4, v8);
      v17 = sub_218A9EC28(v13);
      sub_21987F1F4(v19, v17, 45, 0xE100000000000000, &v58, &v57, v18);

      (*v49)(v13, v8);
    }

    ++v15;
    v10 = v53;
  }

  while (v14 != v15);
LABEL_13:
  v56 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v21 = v57;
  if (v57 >> 62)
  {
    goto LABEL_48;
  }

  v22 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v24 = 0;
    v25 = v21 & 0xC000000000000001;
    v52 = v21 & 0xFFFFFFFFFFFFFF8;
    v53 = 0;
    v51 = v21 + 32;
    v48 = v22;
    v49 = v21;
    v47 = v21 & 0xC000000000000001;
    while (1)
    {
      if (v25)
      {
        v26 = MEMORY[0x21CECE0F0](v24, v21);
        v27 = __OFADD__(v24++, 1);
        if (v27)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v24 >= *(v52 + 16))
        {
          goto LABEL_46;
        }

        v26 = *(v51 + 8 * v24);

        v27 = __OFADD__(v24++, 1);
        if (v27)
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v22 = sub_219BF7214();
          goto LABEL_15;
        }
      }

      swift_beginAccess();
      v28 = v58;
      if (*(v58 + 16) && (v29 = sub_21931ED80(v26), (v30 & 1) != 0))
      {
        v31 = *(*(v28 + 56) + 8 * v29);
        swift_endAccess();
        v55 = v23;
        v32 = *(v31 + 16);
        if (v32)
        {
          sub_218BE55B8(0, &qword_280E8B750, MEMORY[0x277D837D0]);
          v33 = swift_allocObject();
          v34 = _swift_stdlib_malloc_size_0(v33);
          v35 = v34 - 32;
          if (v34 < 32)
          {
            v35 = v34 - 17;
          }

          v33[2] = v32;
          v33[3] = 2 * (v35 >> 4);
          v50 = sub_2194B7E3C();
          v36 = v54[0];
          v21 = v54[4];
          swift_bridgeObjectRetain_n();
          sub_21892DE98(v36);
          if (v50 != v32)
          {
            goto LABEL_47;
          }

          v23 = MEMORY[0x277D84F90];
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v33 = v23;
        }

        v54[0] = v33;
        v4 = v53;
        sub_21871B098(v54);
        if (v4)
        {
          goto LABEL_50;
        }

        v53 = 0;

        v37 = *(v54[0] + 2);
        if (v37)
        {
          v50 = v54[0];
          v38 = (v54[0] + 40);
          do
          {
            if (*(v31 + 16))
            {
              v40 = *(v38 - 1);
              v39 = *v38;

              sub_21870F700(v40, v39);
              v42 = v41;

              if (v42)
              {
                v43 = swift_retain_n();
                MEMORY[0x21CECC690](v43);
                if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_219BF5A14();
                }

                sub_219BF5A54();

                v23 = v55;
              }
            }

            v38 += 2;
            --v37;
          }

          while (v37);
        }

        type metadata accessor for SportsScoreSection();
        v44 = swift_allocObject();
        *(v44 + 16) = v26;
        *(v44 + 24) = v23;

        MEMORY[0x21CECC690](v45);
        v22 = v48;
        v21 = v49;
        v25 = v47;
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();

        v23 = MEMORY[0x277D84F90];
        if (v24 == v22)
        {
          break;
        }
      }

      else
      {
        swift_endAccess();

        if (v24 == v22)
        {
          break;
        }
      }
    }
  }
}

void sub_21988051C(uint64_t a1)
{
  if (!qword_27CC20308)
  {
    type metadata accessor for SportsScores();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20308);
    }
  }
}

uint64_t sub_219880584(uint64_t a1)
{
  sub_21988051C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2198805E0(unint64_t a1, int a2)
{
  v57 = a2;
  sub_2186DE050(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v48 - v7;
  v63 = sub_219BF4AC4();
  v9 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v48 - v13;
  v64 = sub_219BDBD34();
  v15 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v48 - v20;
  v58 = a1;
  if (a1 >> 62)
  {
    v22 = sub_219BF7214();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
    return v23;
  }

  v62 = v58 & 0xC000000000000001;
  v50 = v22;
  if ((v58 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x21CECE0F0](0, v19);
  }

  else
  {
    if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v24 = *(v58 + 32);
  }

  sub_219BF3FA4();
  sub_219BF4AB4();
  v60 = *(v9 + 8);
  v61 = v9 + 8;
  v60(v14, v63);
  v25 = v64;
  v59 = *(v15 + 48);
  if (v59(v8, 1, v64) == 1)
  {

    sub_2189DD39C(v8);
    return MEMORY[0x277D84F90];
  }

  v48[1] = v24;
  v54 = *(v15 + 32);
  v55 = v15 + 32;
  v54(v21, v8, v25);
  v49 = v21;
  v21 = sub_218A9EC28(v21);
  v66 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v26 = sub_21987F774(v57 & 1);
  v14 = v50;
  if (v50 < 1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v48[0] = v26;
  v27 = 0;
  v56 = (v15 + 8);
  v52 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v28 = v58;
  v51 = v21;
  do
  {
    if (v62)
    {
      MEMORY[0x21CECE0F0](v27, v28);
    }

    else
    {
    }

    sub_219BF3FA4();
    sub_219BF4AB4();
    v60(v11, v63);
    v29 = v64;
    if (v59(v5, 1, v64) == 1)
    {

      sub_2189DD39C(v5);
      goto LABEL_12;
    }

    v54(v17, v5, v29);
    v30 = sub_218A9EC28(v17);
    v31 = v30;
    if ((v57 & 1) != 0 || (v30[2] != *(v21 + 2) || v30[3] != *(v21 + 3)) && (sub_219BF78F4() & 1) == 0)
    {
LABEL_18:

      MEMORY[0x21CECC690](v32);
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
        v21 = v51;
      }

      sub_219BF5A54();

      (*v56)(v17, v64);
      v53 = v66;
      goto LABEL_21;
    }

    v33 = v31[5];
    v34 = *(v21 + 5);
    if (v33)
    {
      if (!v34 || (v31[4] != *(v21 + 4) || v33 != v34) && (sub_219BF78F4() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v34)
    {
      goto LABEL_18;
    }

    MEMORY[0x21CECC690](v35);
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();

    (*v56)(v17, v64);
    v52 = v67;
    v21 = v51;
LABEL_21:
    v28 = v58;
LABEL_12:
    ++v27;
  }

  while (v14 != v27);
  v65 = MEMORY[0x277D84F90];
  v14 = v52;
  if (!(v52 >> 62))
  {
    v36 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_37;
  }

LABEL_50:
  v36 = sub_219BF7214();
LABEL_37:
  v37 = v48[0];
  v38 = MEMORY[0x277D84F68];
  if (v36)
  {
    sub_218BE55B8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C146A0;
    type metadata accessor for SportsScores();
    v40 = swift_allocObject();
    v40[3] = 0;
    v40[4] = 0;
    v40[2] = v14;
    *(v39 + 32) = v40;
    type metadata accessor for SportsScoreSection();
    v41 = swift_allocObject();
    *(v41 + 16) = v21;
    *(v41 + 24) = v39;

    MEMORY[0x21CECC690](v42);
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
  }

  else
  {
  }

  sub_218BE55B8(0, &qword_280E8B5A0, v38 + 8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_219C146A0;
  type metadata accessor for SportsScores();
  v44 = swift_allocObject();
  v44[3] = 0;
  v44[4] = 0;
  v44[2] = v53;
  *(v43 + 32) = v44;
  type metadata accessor for SportsScoreSection();
  v45 = swift_allocObject();
  *(v45 + 16) = v37;
  *(v45 + 24) = v43;

  MEMORY[0x21CECC690](v46);
  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

  (*v56)(v49, v64);
  return v65;
}

uint64_t sub_219880E00()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219880EC8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t type metadata accessor for TagFeedLayoutModel(uint64_t a1)
{
  result = qword_280ED2700;
  if (!qword_280ED2700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_219880FEC()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_219881150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_21988123C(uint64_t a1)
{
  v2 = sub_219881C8C(&unk_280ED2740, &unk_219CAE7EC);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2198812E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

double sub_2198814EC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_219BEF974();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v1, v9);
  (*(v4 + 32))(v6, v9, v3);
  sub_219BEF964();
  (*(v4 + 8))(v6, v3);
  result = *&v13;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_2198816B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_219BEF974();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v4, v13);
  (*(v8 + 32))(v10, v13, v7);
  v14 = a4(a1);
  (*(v8 + 8))(v10, v7);
  return v14;
}

uint64_t sub_219881824(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  LOBYTE(a3) = a3(v12);
  (*(v6 + 8))(v8, v5);
  return a3 & 1;
}

uint64_t sub_219881980(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_219881ADC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219881C28(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_219881C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219881C8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TagFeedLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219881CE0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v28 = a3;
  v29 = a2;
  v23[1] = a1;
  v25 = sub_219BE6DF4();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988218C(0, &qword_27CC1B9C8, MEMORY[0x277D6DF88]);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  sub_21954934C(0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_21988218C(0, &qword_27CC0B180, MEMORY[0x277D6EC60]);
  v24 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v31 = v3;
  sub_21894CB20(sub_219882294, v30);
  v16 = v15;
  sub_218953FB4(0);
  v18 = v17;
  v19 = sub_21988224C(&qword_27CC1B9E0, sub_218953FB4, MEMORY[0x277D6D720]);
  v20 = sub_21988224C(&qword_27CC1B9E8, sub_218953FB4, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v16, v18, v19, v20);
  type metadata accessor for MyRecipesModel(0);
  sub_21895406C();
  sub_21988224C(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
  sub_219BEB2D4();
  v21 = v25;
  (*(v4 + 104))(v6, *MEMORY[0x277D6D868], v25);
  sub_219549548();
  sub_219BE85A4();
  (*(v4 + 8))(v6, v21);
  v29(v9);
  (*(v26 + 8))(v9, v27);
  return (*(v12 + 8))(v14, v24);
}

unint64_t sub_2198820F0()
{
  result = qword_27CC20310;
  if (!qword_27CC20310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20310);
  }

  return result;
}

void sub_21988218C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyRecipesSectionDescriptor;
    v8[1] = type metadata accessor for MyRecipesModel(255);
    v8[2] = sub_21895406C();
    v8[3] = sub_21988224C(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21988224C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA4A10;
  if (!qword_280EA4A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219882370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

  v18 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(0);
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

uint64_t sub_219882670@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_2189AD5C8(0);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = v38 - v11;
  sub_219882FD8(0, &qword_280E8CA08, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v38 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219882F20();
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
  sub_219882F74(v30, v35);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_219882C14(void *a1, __n128 a2)
{
  v4 = v2;
  sub_219882FD8(0, &qword_27CC20318, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219882F20();
  sub_219BF7B44();
  LOBYTE(v15) = 0;
  sub_2189AD5C8(0);
  sub_21877C828(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v3)
  {
    v11 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(0);
    v15 = *(v4 + *(v11 + 20));
    v14 = 1;
    sub_218BE9934(0);
    sub_21877C828(&qword_27CC0EE30, sub_218BE9934, MEMORY[0x277D32440]);
    sub_219BF7834();
    v15 = *(v4 + *(v11 + 24));
    v14 = 2;
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_219882E78(uint64_t a1)
{
  v2 = sub_219882F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219882EB4(uint64_t a1)
{
  v2 = sub_219882F20();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219882F20()
{
  result = qword_280EA4A38[0];
  if (!qword_280EA4A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA4A38);
  }

  return result;
}

uint64_t sub_219882F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219882FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219882F20();
    v7 = a3(a1, &type metadata for SportsBoxScoresTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219883050()
{
  result = qword_27CC20320;
  if (!qword_27CC20320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20320);
  }

  return result;
}

unint64_t sub_2198830A8()
{
  result = qword_280EA4A28;
  if (!qword_280EA4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4A28);
  }

  return result;
}

unint64_t sub_219883100()
{
  result = qword_280EA4A30;
  if (!qword_280EA4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4A30);
  }

  return result;
}

uint64_t type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA18E8;
  if (!qword_280EA18E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2198831C8(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      sub_2186F95C4();
      if (v3 <= 0x3F)
      {
        sub_2186ECA28();
        if (v4 <= 0x3F)
        {
          sub_2190E9B64(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_219883298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a6;
  v33 = a5;
  v34 = a4;
  v35 = a3;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v14);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    v31 = a8;
    sub_21877CDC8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    a8 = v31;
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_2189ADEC8(v14);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a8, v19, v16);
  v22 = v32;
  v21 = v33;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    sub_2186F9548();
    swift_allocObject();
    v23 = sub_219BEF534();
  }

  v25 = v34;
  v24 = v35;
  v26 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
  *(a8 + v26[5]) = v23;
  if (v24)
  {

    v27 = v24;
  }

  else
  {
    v36 = 1;
    sub_2186F9548();
    swift_allocObject();

    v27 = sub_219BEF534();
  }

  *(a8 + v26[6]) = v27;
  if (v25)
  {

    v28 = v25;
  }

  else
  {
    LOBYTE(v36) = 1;
    sub_2186F95C4();
    swift_allocObject();

    v28 = sub_219BEF534();
  }

  *(a8 + v26[7]) = v28;
  if (v21)
  {

    v29 = v21;
  }

  else
  {
    v36 = 0;
    sub_2186ECA28();
    swift_allocObject();

    v29 = sub_219BEF534();
  }

  *(a8 + v26[8]) = v29;
  if (v22)
  {
  }

  else
  {
    LOBYTE(v36) = 1;
    sub_2190E9B64(0);
    swift_allocObject();

    v22 = sub_219BEF534();
  }

  *(a8 + v26[9]) = v22;
  if (!a7)
  {
    v36 = 0x7FEFFFFFFFFFFFFFLL;
    sub_2186ECA28();
    swift_allocObject();
    a7 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a8 + v26[10]) = a7;
  return result;
}

uint64_t sub_219883710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  sub_2189AD5C8(0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = v48 - v12;
  sub_219884654(0, &qword_280E8C968, MEMORY[0x277D844C8]);
  v64 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v48 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21988459C();
  v17 = v66;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v5;
  v52 = 0;
  v53 = v14;
  v54 = v6;
  v55 = v8;
  v49 = a1;
  LOBYTE(v73) = 0;
  sub_21877CDC8(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v19 = v60;
  v20 = v63;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v72) = 1;
  v21 = MEMORY[0x277D32620];
  sub_21877CDC8(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v59 = v73;
  LOBYTE(v71) = 2;
  sub_219BF7674();
  v58 = v72;
  sub_2186F95C4();
  v23 = v22;
  LOBYTE(v70) = 3;
  sub_21877CDC8(&qword_280E913F8, sub_2186F95C4, v21);
  v48[0] = v23;
  sub_219BF7674();
  v56 = v71;
  sub_2186ECA28();
  v25 = v24;
  LOBYTE(v69) = 4;
  sub_21877CDC8(&qword_280E913D8, sub_2186ECA28, v21);
  sub_219BF7674();
  v66 = v70;
  sub_2190E9B64(0);
  v27 = v26;
  LOBYTE(v68) = 5;
  sub_21877CDC8(&qword_280E91518, sub_2190E9B64, v21);
  v48[1] = v27;
  sub_219BF7674();
  v57 = v69;
  LOBYTE(v67) = 6;
  v48[2] = v25;
  sub_219BF7674();
  v50 = v68;
  v28 = v19;
  v29 = v65;
  sub_2189ADE64(v19, v65);
  v30 = *(v62 + 48);
  if (v30(v29, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CDC8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v31 = v51;
    sub_219BEE974();
    v32 = v63;
    v33 = v30(v65, 1, v63);
    v34 = v62;
    if (v33 != 1)
    {
      sub_2189ADEC8(v65);
    }
  }

  else
  {
    v34 = v62;
    v32 = v63;
    v31 = v51;
    (*(v62 + 32))(v51, v65, v63);
  }

  v65 = v16;
  v35 = v55;
  (*(v34 + 32))(v55, v31, v32);
  v36 = v59;
  if (!v59)
  {
    v67 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v36 = sub_219BEF534();
  }

  v37 = v61;
  v38 = v53;
  v39 = v54;
  v40 = v50;
  *(v35 + v54[5]) = v36;
  v41 = v58;
  v42 = v66;
  if (v58)
  {

    v43 = v41;
  }

  else
  {
    v67 = 1;
    swift_allocObject();

    v43 = sub_219BEF534();
    v42 = v66;
  }

  *(v35 + v39[6]) = v43;
  v44 = v56;
  if (v56)
  {

    v45 = v44;
  }

  else
  {
    LOBYTE(v67) = 1;
    swift_allocObject();

    v45 = sub_219BEF534();
    v42 = v66;
  }

  *(v35 + v39[7]) = v45;
  if (v42)
  {

    v46 = v42;
  }

  else
  {
    v67 = 0;
    swift_allocObject();

    v46 = sub_219BEF534();
  }

  *(v35 + v39[8]) = v46;
  if (v57)
  {

    v47 = v57;
  }

  else
  {
    LOBYTE(v67) = 1;
    swift_allocObject();

    v47 = sub_219BEF534();
  }

  *(v35 + v39[9]) = v47;
  if (!v40)
  {
    v67 = 0x7FEFFFFFFFFFFFFFLL;
    swift_allocObject();
    v40 = sub_219BEF534();
  }

  sub_2189ADEC8(v28);
  (*(v38 + 8))(v65, v64);
  *(v35 + v39[10]) = v40;
  sub_2198845F0(v35, v37);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_219883FB8(void *a1, __n128 a2)
{
  v4 = v2;
  sub_219884654(0, &qword_27CC20328, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21988459C();
  sub_219BF7B44();
  LOBYTE(v15) = 0;
  sub_2189AD5C8(0);
  sub_21877CDC8(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v3)
  {
    v11 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
    v15 = *(v4 + v11[5]);
    v14 = 1;
    sub_2186F9548();
    sub_21877CDC8(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v15 = *(v4 + v11[6]);
    v14 = 2;
    sub_219BF7834();
    v15 = *(v4 + v11[7]);
    v14 = 3;
    sub_2186F95C4();
    sub_21877CDC8(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v15 = *(v4 + v11[8]);
    v14 = 4;
    sub_2186ECA28();
    sub_21877CDC8(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v15 = *(v4 + v11[9]);
    v14 = 5;
    sub_2190E9B64(0);
    sub_21877CDC8(&qword_27CC20330, sub_2190E9B64, MEMORY[0x277D32610]);
    sub_219BF7834();
    v15 = *(v4 + v11[10]);
    v14 = 6;
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2198843D0()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x64724F70756F7267;
  if (v1 != 5)
  {
    v3 = 0x65674178616DLL;
  }

  v4 = 0x6F43657269707865;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2198844CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2198847D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2198844F4(uint64_t a1)
{
  v2 = sub_21988459C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219884530(uint64_t a1)
{
  v2 = sub_21988459C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21988459C()
{
  result = qword_280EA1910[0];
  if (!qword_280EA1910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1910);
  }

  return result;
}

uint64_t sub_2198845F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219884654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21988459C();
    v7 = a3(a1, &type metadata for SportsTopStoriesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2198846CC()
{
  result = qword_27CC20338;
  if (!qword_27CC20338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20338);
  }

  return result;
}

unint64_t sub_219884724()
{
  result = qword_280EA1900;
  if (!qword_280EA1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1900);
  }

  return result;
}

unint64_t sub_21988477C()
{
  result = qword_280EA1908;
  if (!qword_280EA1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1908);
  }

  return result;
}

uint64_t sub_2198847D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64724F70756F7267 && a2 == 0xED0000676E697265 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t type metadata accessor for WebEmbedContainerViewController(uint64_t a1)
{
  result = qword_280EA7478;
  if (!qword_280EA7478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219884CAC(uint64_t a1)
{
  result = type metadata accessor for WebEmbedResource(319);
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

double sub_219884D74(double a1)
{
  v1 = a1 + -150.0;
  if (v1 > 672.0)
  {
    v1 = 672.0;
  }

  return fmax(v1, 533.0);
}

double sub_219884DB4()
{
  v1 = type metadata accessor for WebEmbedResource(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = *v0;
  v5 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource;
  __swift_project_boxed_opaque_existential_1((*(*v0 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_eventHandler) + 88), *(*(*v0 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_eventHandler) + 112));
  sub_219886C04(v4 + v5, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebEmbedResource);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_2190972A8(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_219BDD154();

  return result;
}

id sub_219884F2C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_219BF31E4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v0;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v5);
  v8 = *&v0[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController];
  [v1 addChildViewController_];
  [v8 didMoveToParentViewController_];
  (*(v4 + 104))(v7, *MEMORY[0x277D33D60], v3);
  sub_219BF31F4();
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = result;
  result = [v8 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [v10 addSubview_];

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BF3224();

  MEMORY[0x28223BE20](v12);
  *(&v18 - 2) = v1;
  sub_219886C90(0);
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v13 = sub_219BF66A4();
  sub_219BE2F94();

  v14 = sub_219BF66A4();
  sub_219BE3084();

  v15 = [v1 traitCollection];
  sub_218718690(v1 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_styler, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  result = [v1 view];
  if (result)
  {
    v16 = result;

    type metadata accessor for WebEmbedResource(0);
    v17 = sub_219BE76B4();
    [v16 setBackgroundColor_];

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2198852CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_219885320();
  }
}

void *sub_219885320()
{
  v1 = v0;
  result = sub_219BF3214();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [v0 navigationItem];
  v5 = [v3 title];
  if (!v5)
  {
    sub_219BF5414();
    v5 = sub_219BF53D4();
  }

  [v4 setTitle_];

  v6 = [v3 shareConfiguration];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [v6 shareItems];
  sub_219886BA0();
  v8 = sub_219BF5924();

  if (v8 >> 62)
  {
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v11 = [v1 navigationItem];
    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
    v14 = sub_219BF5904();
    [v11 setRightBarButtonItems_];
    goto LABEL_12;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:v1 action:sel_showShareSheet_];
  v11 = [v1 navigationItem];
  sub_218725F94();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C146A0;
  *(v12 + 32) = v10;
  sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
  v13 = v10;
  v14 = sub_219BF5904();

  [v11 setRightBarButtonItems_];
  swift_unknownObjectRelease();

LABEL_12:

  return swift_unknownObjectRelease();
}

uint64_t sub_2198855C0(uint64_t a1)
{
  sub_219BDB924();
  if (v2)
  {

    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedDataSourceService), *(a1 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedDataSourceService + 24));
    return sub_219BF42B4();
  }

  else
  {
    sub_2194B1C58(MEMORY[0x277D84F90]);
    sub_219886CF8(0, &unk_27CC20388, sub_219886C90, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

id sub_2198856A0(uint64_t *a1, char *a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_219886CF8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v51 - v6;
  v59 = sub_219BDB954();
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - v11;
  v12 = sub_219BF4C84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  sub_219886CF8(0, &qword_27CC20280, MEMORY[0x277D34048], v4);
  MEMORY[0x28223BE20](v22 - 8);
  v60 = &v51 - v23;
  v24 = *a1;
  v58 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource;
  v25 = sub_219BDB924();
  if (v26)
  {
    if (*(v24 + 16))
    {
      v52 = sub_21870F700(v25, v26);
      v28 = v27;

      if (v28)
      {
        v29 = *(v13 + 16);
        v29(v18, *(v24 + 56) + *(v13 + 72) * v52, v12);
        (*(v13 + 32))(v21, v18, v12);
        v29(v15, v21, v12);
        v30 = v55;
        v55[2](v53, &a2[v58], v59);
        v31 = v60;
        sub_219BF3694();
        (*(v13 + 8))(v21, v12);
        v32 = *MEMORY[0x277D34040];
        v33 = sub_219BF3B34();
        v34 = *(v33 - 8);
        (*(v34 + 104))(v31, v32, v33);
        (*(v34 + 56))(v31, 0, 1, v33);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v35 = sub_219BF3B34();
  (*(*(v35 - 8) + 56))(v60, 1, 1, v35);
  v30 = v55;
LABEL_7:
  v55 = [*&a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_feedConfigurationFactory] createFeedConfigurationForViewController_];
  result = [a2 view];
  v38 = v56;
  v37 = v57;
  if (result)
  {
    sub_2186C6148(0, &qword_27CC20370, 0x277D55128);
    v39 = sub_219BF61A4();
    v52 = *&a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController];
    v53 = v39;
    v40 = v30;
    v41 = v30[2];
    v42 = v58;
    v43 = v59;
    v41(v38, &a2[v58], v59);
    (v30[7])(v37, 1, 1, v43);
    v44 = v38;
    v51 = *&a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_embedLocation];
    v45 = v54;
    v41(v54, &a2[v42], v43);
    result = [a2 view];
    if (result)
    {
      v46 = result;
      [result bounds];

      v47 = v55;
      v48 = v53;
      v49 = v60;
      sub_219BF3244();

      v50 = v40[1];
      (v50)(v45, v43);
      sub_2187BC950(v37, &unk_280EE9D00, MEMORY[0x277CC9260]);
      (v50)(v44, v43);
      return sub_2187BC950(v49, &qword_27CC20280, MEMORY[0x277D34048]);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_219885D20(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x277D83D88];
  sub_219886CF8(0, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v31 - v5;
  sub_219886CF8(0, &unk_280EE9D00, MEMORY[0x277CC9260], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v31 - v7;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v35 = &v31 - v12;
  v13 = sub_219BF61F4();
  sub_219886CF8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  swift_getErrorValue();
  v15 = sub_219BF7A04();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_2186FC3BC();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v18 = sub_219BF6F44();
  sub_219BE5314("WebEmbedContainerViewController failed to fetch web embed data source configuration; error=%{public}@", 101, 2, &dword_2186C1000, v18, v13, v14);

  v32 = [*&a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_feedConfigurationFactory] createFeedConfigurationForViewController_];
  result = [a2 view];
  if (result)
  {
    sub_2186C6148(0, &qword_27CC20370, 0x277D55128);
    v20 = sub_219BF61A4();
    v21 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource;
    v22 = *(v9 + 16);
    v22(v35, &a2[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource], v8);
    (*(v9 + 56))(v36, 1, 1, v8);
    v22(v34, &a2[v21], v8);
    result = [a2 view];
    if (result)
    {
      v23 = result;
      [result bounds];

      v24 = sub_219BF3B34();
      v25 = v33;
      (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
      v26 = v32;
      v28 = v35;
      v27 = v36;
      v29 = v34;
      sub_219BF3244();

      sub_2187BC950(v25, &qword_27CC20280, MEMORY[0x277D34048]);
      v30 = *(v9 + 8);
      v30(v29, v8);
      sub_2187BC950(v27, &unk_280EE9D00, MEMORY[0x277CC9260]);
      return (v30)(v28, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21988625C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  sub_218718690(v1 + OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_styler, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  result = [v1 view];
  if (result)
  {
    v5 = result;

    type metadata accessor for WebEmbedResource(0);
    v6 = sub_219BE76B4();
    [v5 setBackgroundColor_];

    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2198863D0()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  if (![v0 view])
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2186C6148(0, &qword_27CC20370, 0x277D55128);
  v2 = sub_219BF61A4();
  v3 = *&v0[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController];
  sub_219BF3234();
  v4 = [v3 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v5 setFrame_];
    v16 = [*&v1[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_feedConfigurationFactory] createFeedConfigurationForViewController_];
    sub_219BF3204();

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_219886594(uint64_t a1)
{
  v2 = v1;
  v56 = sub_219BDB954();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v57 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = v46 - v7;
  v8 = type metadata accessor for WebEmbedShareItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = v46 - v12;
  v13 = sub_219BF3214();
  if (!v13)
  {
    return result;
  }

  v15 = [v13 shareConfiguration];
  swift_unknownObjectRelease();
  if (!v15)
  {
    return result;
  }

  v16 = [v15 shareItems];
  sub_219886BA0();
  v17 = sub_219BF5924();

  v18 = sub_218954B5C(v17);

  v61 = MEMORY[0x277D84F90];
  v19 = v18[2];
  if (!v19)
  {

    v40 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_9;
    }

LABEL_14:
    if (sub_219BF7214())
    {
      goto LABEL_10;
    }

LABEL_15:
    swift_unknownObjectRelease();

    return result;
  }

  v47 = a1;
  v48 = v2;
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v46[1] = v18;
  v21 = v18 + v20;
  v22 = *(v9 + 72);
  v51 = (v4 + 32);
  v52 = v22;
  v49 = (v4 + 8);
  v50 = v4 + 16;
  v53 = v15;
  v23 = (v4 + 16);
  do
  {
    v58 = v19;
    v24 = v59;
    sub_219886C04(v21, v59, type metadata accessor for WebEmbedShareItem);
    v25 = v24;
    v26 = v54;
    sub_219886C04(v25, v54, type metadata accessor for WebEmbedShareItem);
    v27 = v55;
    v28 = v56;
    (*v51)(v55, v26, v56);
    v29 = [v15 title];
    v30 = sub_219BF5414();
    v32 = v31;

    v33 = *v23;
    v34 = v57;
    (*v23)(v57, v27, v28);
    v35 = type metadata accessor for WebEmbedShareActivityItemSource(0);
    v36 = objc_allocWithZone(v35);
    v33(&v36[OBJC_IVAR____TtC7NewsUI231WebEmbedShareActivityItemSource_shareURL], v34, v28);
    v37 = &v36[OBJC_IVAR____TtC7NewsUI231WebEmbedShareActivityItemSource_title];
    *v37 = v30;
    v37[1] = v32;
    v60.receiver = v36;
    v60.super_class = v35;
    objc_msgSendSuper2(&v60, sel_init);
    v38 = *v49;
    (*v49)(v34, v28);
    v38(v27, v28);
    v39 = sub_219886D5C(v59, type metadata accessor for WebEmbedShareItem);
    MEMORY[0x21CECC690](v39);
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v15 = v53;
    v21 += v52;
    v19 = v58 - 1;
  }

  while (v58 != 1);
  v40 = v61;

  a1 = v47;
  v2 = v48;
  if (v40 >> 62)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_218ACF86C(v40);

  v41 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v42 = sub_219BF5904();

  v43 = [v41 initWithActivityItems:v42 applicationActivities:0];

  v44 = [v43 popoverPresentationController];
  if (v44)
  {
    v45 = v44;
    [v44 setSourceItem_];
  }

  [v2 presentViewController:v43 animated:1 completion:0];
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_219886B30()
{
  type metadata accessor for WebEmbedResource(0);

  return sub_21953AE30();
}

unint64_t sub_219886BA0()
{
  result = qword_27CC20368;
  if (!qword_27CC20368)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC20368);
  }

  return result;
}

uint64_t sub_219886C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219886C90(uint64_t a1)
{
  if (!qword_27CC20378)
  {
    sub_219BF4C84();
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC20378);
    }
  }
}

void sub_219886CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219886D5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_219886DBC(uint64_t a1, uint64_t a2)
{
  *&v337 = a2;
  sub_219889AAC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v325 = &v253 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for CuratedMagazineFeedGroupKnobs(0);
  v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v262 = &v253 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = type metadata accessor for CuratedMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v331);
  v328 = &v253 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v330 = &v253 - v8;
  sub_2186ECF58(0);
  v329 = v9;
  v327 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v322 = &v253 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v326 = &v253 - v12;
  v321 = type metadata accessor for NewspaperMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v321);
  v318 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v320 = &v253 - v15;
  sub_218DF04EC(0);
  v319 = v16;
  v317 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v316 = &v253 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v315);
  v312 = &v253 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v314 = &v253 - v20;
  sub_218F05748(0);
  v313 = v21;
  v311 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v310 = &v253 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = type metadata accessor for CategoriesMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v309);
  v307 = &v253 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v308 = &v253 - v25;
  sub_219889B04(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v306 = v26;
  v305 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v304 = &v253 - v27;
  v303 = type metadata accessor for TrendingMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v303);
  v300 = &v253 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v302 = &v253 - v30;
  sub_218D7EFE8(0);
  v301 = v31;
  v299 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v296 = &v253 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TopicMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v33 - 8);
  v294 = &v253 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v261);
  v259 = &v253 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v260 = (&v253 - v37);
  sub_2186E60B0(0);
  v298 = v38;
  v297 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v290 = &v253 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v295 = &v253 - v41;
  v42 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v42 - 8);
  v333 = &v253 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v255);
  v253 = &v253 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v254 = &v253 - v46;
  sub_21915A40C(0);
  v293 = v47;
  v292 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v332 = &v253 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v291 = &v253 - v50;
  v289 = type metadata accessor for PaywallMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v289);
  v286 = &v253 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v288 = &v253 - v53;
  sub_218B87670(0);
  v287 = v54;
  v285 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v284 = &v253 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v283);
  v279 = &v253 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v282 = &v253 - v58;
  sub_2186ECD30(0);
  v281 = v59;
  v277 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v276 = &v253 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v61 - 8);
  v335 = &v253 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v258);
  v256 = &v253 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v257 = &v253 - v65;
  sub_218B8773C(0);
  v280 = v66;
  v278 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v334 = &v253 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v336 = &v253 - v69;
  v275 = type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v275);
  v273 = &v253 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v274 = &v253 - v72;
  sub_219889B04(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v272 = v73;
  v271 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v270 = &v253 - v74;
  v269 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v269);
  v266 = &v253 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v268 = &v253 - v77;
  sub_2186EC3A4(0);
  v267 = v78;
  v265 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v264 = &v253 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v80);
  v263 = &v253 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v84 = &v253 - v83;
  sub_218D77C80(0);
  v86 = v85;
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v89 = &v253 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v90);
  v92 = &v253 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v95 = &v253 - v94;
  sub_2186E3594(0);
  v97 = v96;
  MEMORY[0x28223BE20](a1);
  v101 = &v253 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(v98 >> 60)
  {
    case 1uLL:
      v179 = v99;
      v180 = swift_projectBox();
      v181 = *(v179 + 16);
      v181(v101, v180, v97);
      v181(v95, v101, v97);
      v182 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v183 = type metadata accessor for MagazineFeedGroupKnobs(0);
      sub_219889C7C(v182 + *(v183 + 24), &v95[v90[5]], type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
      sub_218718690(v338 + 448, &v95[v90[6]]);
      v184 = &v95[v90[7]];
      *v184 = 0xD000000000000010;
      *(v184 + 1) = 0x8000000219CF22C0;
      sub_219889C7C(v95, v92, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280E97518, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter, &unk_219CA13F8);
      v113 = sub_219BEDF84();
      sub_219889CE4(v95, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
      (*(v179 + 8))(v101, v97);
      return v113;
    case 2uLL:
      v159 = swift_projectBox();
      v160 = *(v87 + 16);
      v160(v89, v159, v86);
      v160(v84, v89, v86);
      v161 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v162 = type metadata accessor for MagazineFeedGroupKnobs(0);
      sub_219889C7C(v161 + *(v162 + 32), &v84[v80[5]], type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
      sub_218718690(v338 + 448, &v84[v80[6]]);
      v163 = &v84[v80[7]];
      strcpy(v163, "Featured Issue");
      v163[15] = -18;
      sub_219889C7C(v84, v263, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_27CC203B0, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter, &unk_219C35D68);
      v113 = sub_219BEDF84();
      sub_219889CE4(v84, type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter);
      (*(v87 + 8))(v89, v86);
      return v113;
    case 3uLL:
      v164 = swift_projectBox();
      v129 = v265;
      v165 = *(v265 + 16);
      v131 = v264;
      v132 = v267;
      v165(v264, v164, v267);
      v133 = v268;
      v165(v268, v131, v132);
      v166 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v167 = type metadata accessor for MagazineFeedGroupKnobs(0);
      v168 = v269;
      sub_219889C7C(v166 + *(v167 + 28), v133 + *(v269 + 20), type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
      sub_218718690(v338 + 448, v133 + *(v168 + 24));
      v169 = (v133 + *(v168 + 28));
      *v169 = 0xD000000000000016;
      v169[1] = 0x8000000219CF22A0;
      sub_219889C7C(v133, v266, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_27CC203A8, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter, &unk_219C953D0);
      v113 = sub_219BEDF84();
      v139 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter;
      goto LABEL_24;
    case 4uLL:
      v128 = swift_projectBox();
      v129 = v271;
      v130 = *(v271 + 16);
      v131 = v270;
      v132 = v272;
      v130(v270, v128, v272);
      v133 = v274;
      v130(v274, v131, v132);
      v134 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v135 = type metadata accessor for MagazineFeedGroupKnobs(0);
      v136 = v275;
      sub_219889C7C(v134 + *(v135 + 36), v133 + *(v275 + 20), type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
      v137 = v338;
      sub_218718690(v338 + 168, v133 + v136[6]);
      sub_218718690(v137 + 128, v133 + v136[7]);
      v138 = (v133 + v136[8]);
      *v138 = 0xD000000000000011;
      v138[1] = 0x8000000219CF2280;
      sub_219889C7C(v133, v273, type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280E963F0, type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter, &unk_219C8E37C);
      v113 = sub_219BEDF84();
      v139 = type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter;
      goto LABEL_24;
    case 5uLL:
      v185 = swift_projectBox();
      v186 = v278;
      v187 = *(v278 + 16);
      v188 = v336;
      v189 = v280;
      v187(v336, v185, v280);
      v187(v334, v188, v189);
      v190 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v191 = type metadata accessor for MagazineFeedGroupKnobs(0);
      sub_219889C7C(v190 + *(v191 + 40), v335, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
      v192 = v338;
      v193 = [objc_msgSend(*(v338 + 232) appConfiguration)];
      swift_unknownObjectRelease();
      if (v193)
      {
        v194 = sub_219BF5414();
        v196 = v195;
      }

      else
      {
        v194 = 0;
        v196 = 0;
      }

      v243 = v258;
      v244 = v257;
      v245 = v256;
      v246 = *(v192 + 584);
      sub_218718690(v192 + 544, &v257[*(v258 + 32)]);
      v247 = *(v192 + 592);
      v248 = v244 + v243[11];
      strcpy(v248, "My Magazines");
      *(v248 + 13) = 0;
      *(v248 + 14) = -5120;
      v249 = *(v186 + 32);
      v338 = *(v192 + 16);
      v249(v244, v334, v189);
      sub_219889C14(v335, v244 + v243[5], type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
      v250 = (v244 + v243[6]);
      *v250 = v194;
      v250[1] = v196;
      *(v244 + v243[7]) = v246;
      *(v244 + v243[9]) = v338;
      *(v244 + v243[10]) = v247;
      sub_219889C7C(v244, v245, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280E9D098, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter, "E'Wh0A\r");
      v251 = v246;
      swift_unknownObjectRetain();
      v252 = v247;
      v113 = sub_219BEDF84();
      sub_219889CE4(v244, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter);
      (*(v186 + 8))(v336, v189);
      return v113;
    case 6uLL:
      v209 = swift_projectBox();
      v116 = v277;
      v210 = *(v277 + 16);
      v118 = v276;
      v119 = v281;
      v210(v276, v209, v281);
      v120 = v282;
      v210(v282, v118, v119);
      v211 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v212 = type metadata accessor for MagazineFeedGroupKnobs(0);
      v213 = v283;
      sub_219889C7C(v211 + *(v212 + 44), v120 + *(v283 + 20), type metadata accessor for NewIssueMagazineFeedGroupKnobs);
      v214 = v338;
      sub_218718690(v338 + 88, v120 + v213[6]);
      sub_218718690(v214 + 32, v120 + v213[7]);
      v215 = *(v214 + 216);
      sub_218718690(v214 + 328, v120 + v213[9]);
      sub_218718690(v214 + 448, v120 + v213[10]);
      *(v120 + v213[11]) = 4;
      v216 = (v120 + v213[12]);
      *v216 = 0x757373492077654ELL;
      v216[1] = 0xE900000000000065;
      *(v120 + v213[8]) = v215;
      sub_219889C7C(v120, v279, type metadata accessor for NewIssueMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&unk_280EA5BD0, type metadata accessor for NewIssueMagazineFeedGroupEmitter, &unk_219C52090);
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      v127 = type metadata accessor for NewIssueMagazineFeedGroupEmitter;
      goto LABEL_22;
    case 7uLL:
      v170 = swift_projectBox();
      v116 = v285;
      v171 = *(v285 + 16);
      v118 = v284;
      v119 = v287;
      v171(v284, v170, v287);
      v120 = v288;
      v171(v288, v118, v119);
      v172 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v173 = type metadata accessor for MagazineFeedGroupKnobs(0);
      v174 = v289;
      sub_219889C7C(v172 + *(v173 + 48), v120 + *(v289 + 20), type metadata accessor for PaywallMagazineFeedGroupKnobs);
      v175 = v338;
      v176 = *(v338 + 232);
      sub_218718690(v338 + 488, v120 + v174[7]);
      v177 = (v120 + v174[9]);
      *v177 = 0x6C6C6177796150;
      v177[1] = 0xE700000000000000;
      *(v120 + v174[6]) = v176;
      v178 = v174[8];
      v338 = *(v175 + 528);
      *(v120 + v178) = v338;
      sub_219889C7C(v120, v286, type metadata accessor for PaywallMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280EA89D8, type metadata accessor for PaywallMagazineFeedGroupEmitter, &unk_219C71368);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      v127 = type metadata accessor for PaywallMagazineFeedGroupEmitter;
      goto LABEL_22;
    case 8uLL:
      v223 = swift_projectBox();
      v224 = v292;
      v225 = *(v292 + 16);
      v226 = v291;
      v227 = v293;
      v225(v291, v223, v293);
      v225(v332, v226, v227);
      v228 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v229 = type metadata accessor for MagazineFeedGroupKnobs(0);
      sub_219889C7C(v228 + *(v229 + 52), v333, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
      v230 = v338;
      v231 = *(v338 + 208);
      result = [v231 subscriptionController];
      if (!result)
      {
        goto LABEL_34;
      }

      v232 = result;
      result = [v231 bundleSubscriptionManager];
      if (!result)
      {
        goto LABEL_35;
      }

      v233 = result;
      v234 = *(v230 + 224);
      v235 = v255;
      v236 = v254;
      sub_218718690(v230 + 248, &v254[*(v255 + 36)]);
      v237 = *(v230 + 232);
      sub_218718690(v230 + 600, v236 + v235[11]);
      v238 = (v236 + v235[12]);
      *v238 = 0xD000000000000012;
      v238[1] = 0x8000000219CF2260;
      (*(v224 + 32))(v236, v332, v227);
      sub_219889C14(v333, v236 + v235[5], type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
      *(v236 + v235[6]) = v232;
      *(v236 + v235[7]) = v233;
      *(v236 + v235[8]) = v234;
      *(v236 + v235[10]) = v237;
      sub_219889C7C(v236, v253, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280E955E0, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter, &unk_219CA1AA0);
      v239 = v234;
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      sub_219889CE4(v236, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
      (*(v224 + 8))(v226, v227);
      return v113;
    case 9uLL:
      v147 = swift_projectBox();
      v129 = v297;
      v148 = *(v297 + 16);
      v131 = v295;
      v132 = v298;
      v148(v295, v147, v298);
      v149 = v290;
      v148(v290, v131, v132);
      v150 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v151 = type metadata accessor for MagazineFeedGroupKnobs(0);
      v152 = v294;
      sub_219889C7C(v150 + *(v151 + 56), v294, type metadata accessor for TopicMagazineFeedGroupKnobs);
      v153 = v338;
      sub_218718690(v338 + 448, &v340);
      v154 = *(v153 + 80);
      sub_218718690(v153 + 88, &v339);
      v155 = *(v153 + 208);

      result = [v155 subscriptionController];
      if (result)
      {
        v157 = result;
        v133 = v260;
        *v260 = 0x6369706F54;
        *(v133 + 8) = 0xE500000000000000;
        v158 = v261;
        (*(v129 + 32))(v133 + *(v261 + 20), v149, v132);
        sub_219889C14(v152, v133 + v158[6], type metadata accessor for TopicMagazineFeedGroupKnobs);
        sub_2186CB1F0(&v340, v133 + v158[7]);
        *(v133 + v158[8]) = v154;
        sub_2186CB1F0(&v339, v133 + v158[9]);
        *(v133 + v158[10]) = v157;
        sub_219889C7C(v133, v259, type metadata accessor for TopicMagazineFeedGroupEmitter);
        sub_219889B80(0);
        swift_allocObject();
        sub_2186EC998(&unk_27CC20398, type metadata accessor for TopicMagazineFeedGroupEmitter, &unk_219CAD290);
        v113 = sub_219BEDF84();
        v139 = type metadata accessor for TopicMagazineFeedGroupEmitter;
LABEL_24:
        sub_219889CE4(v133, v139);
        (*(v129 + 8))(v131, v132);
        return v113;
      }

      else
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      return result;
    case 0xAuLL:
      v217 = swift_projectBox();
      v129 = v299;
      v218 = *(v299 + 16);
      v131 = v296;
      v132 = v301;
      v218(v296, v217, v301);
      v133 = v302;
      v218(v302, v131, v132);
      v219 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v220 = type metadata accessor for MagazineFeedGroupKnobs(0);
      v221 = v303;
      sub_219889C7C(v219 + *(v220 + 60), v133 + *(v303 + 20), type metadata accessor for TrendingMagazineFeedGroupKnobs);
      sub_218718690(v338 + 448, v133 + *(v221 + 24));
      v222 = (v133 + *(v221 + 28));
      *v222 = 0x676E69646E657254;
      v222[1] = 0xE800000000000000;
      sub_219889C7C(v133, v300, type metadata accessor for TrendingMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280EA41E0, type metadata accessor for TrendingMagazineFeedGroupEmitter, &unk_219C36524);
      v113 = sub_219BEDF84();
      v139 = type metadata accessor for TrendingMagazineFeedGroupEmitter;
      goto LABEL_24;
    case 0xBuLL:
      v115 = swift_projectBox();
      v116 = v311;
      v117 = *(v311 + 16);
      v118 = v310;
      v119 = v313;
      v117(v310, v115, v313);
      v120 = v314;
      v117(v314, v118, v119);
      v121 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v122 = type metadata accessor for MagazineFeedGroupKnobs(0);
      v123 = v315;
      sub_219889C7C(v121 + *(v122 + 64), v120 + *(v315 + 20), type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
      v124 = v338;
      sub_218718690(v338 + 448, v120 + v123[6]);
      sub_218718690(v124 + 88, v120 + v123[7]);
      sub_218718690(v124 + 32, v120 + v123[8]);
      v125 = *(v124 + 72);
      sub_218718690(v124 + 640, v120 + v123[10]);
      v126 = (v120 + v123[11]);
      strcpy(v126, "Best of Bundle");
      v126[15] = -18;
      *(v120 + v123[9]) = v125;
      sub_219889C7C(v120, v312, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280E9BD60, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter, &unk_219C47030);
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      v127 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter;
LABEL_22:
      sub_219889CE4(v120, v127);
      (*(v116 + 8))(v118, v119);
      return v113;
    case 0xCuLL:
      v140 = swift_projectBox();
      v129 = v317;
      v141 = *(v317 + 16);
      v131 = v316;
      v132 = v319;
      v141(v316, v140, v319);
      v133 = v320;
      v141(v320, v131, v132);
      v142 = v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20);
      v143 = type metadata accessor for MagazineFeedGroupKnobs(0);
      v144 = v321;
      sub_219889C7C(v142 + *(v143 + 68), v133 + *(v321 + 20), type metadata accessor for NewspaperMagazineFeedGroupKnobs);
      v145 = v338;
      sub_218718690(v338 + 408, v133 + v144[6]);
      sub_218718690(v145 + 88, v133 + v144[7]);
      v146 = (v133 + v144[8]);
      *v146 = 0x657061707377654ELL;
      v146[1] = 0xE900000000000072;
      sub_219889C7C(v133, v318, type metadata accessor for NewspaperMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&unk_280EA2F38, type metadata accessor for NewspaperMagazineFeedGroupEmitter, &unk_219C858F4);
      v113 = sub_219BEDF84();
      v139 = type metadata accessor for NewspaperMagazineFeedGroupEmitter;
      goto LABEL_24;
    case 0xDuLL:
      v197 = v338;
      v198 = swift_projectBox();
      v199 = v327;
      v200 = *(v327 + 16);
      v201 = v326;
      v202 = v329;
      v200(v326, v198, v329);
      v203 = v322;
      v200(v322, v201, v202);
      type metadata accessor for MagazineKnobsConfig(0);
      v204 = v325;
      sub_21893C4C0(v325);
      v205 = *(v323 + 48);
      v206 = v324;
      if (v205(v204, 1, v324) == 1)
      {
        v207 = v262;
        if (qword_280EB1128 != -1)
        {
          swift_once();
        }

        v208 = __swift_project_value_buffer(v206, qword_280F61AA0);
        sub_219889C7C(v208, v207, type metadata accessor for CuratedMagazineFeedGroupKnobs);
        if (v205(v204, 1, v206) != 1)
        {
          sub_219889CE4(v204, sub_219889AAC);
        }
      }

      else
      {
        v207 = v262;
        sub_219889C14(v204, v262, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      }

      v240 = v331;
      v241 = v197 + 448;
      v242 = v330;
      sub_218718690(v241, &v330[*(v331 + 24)]);
      (*(v199 + 32))(v242, v203, v202);
      sub_219889C14(v207, v242 + *(v240 + 20), type metadata accessor for CuratedMagazineFeedGroupKnobs);
      sub_219889C7C(v242, v328, type metadata accessor for CuratedMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280EA98F0, type metadata accessor for CuratedMagazineFeedGroupEmitter, &unk_219C264B0);
      v113 = sub_219BEDF84();
      sub_219889CE4(v242, type metadata accessor for CuratedMagazineFeedGroupEmitter);
      (*(v199 + 8))(v201, v202);
      return v113;
    case 0xEuLL:
      v114 = *((v98 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v113 = sub_219886DBC(v114, v337);

      return v113;
    default:
      v102 = swift_projectBox();
      v103 = v305;
      v104 = *(v305 + 16);
      v105 = v304;
      v106 = v306;
      v104(v304, v102, v306);
      v107 = v308;
      v104(v308, v105, v106);
      v108 = *(v337 + *(type metadata accessor for MagazineKnobsConfig(0) + 20) + 8);
      v109 = v309;
      v110 = v338;
      sub_218718690(v338 + 128, v107 + *(v309 + 24));
      v111 = v109[8];
      v337 = *(v110 + 16);
      sub_218718690(v110 + 288, v107 + v111);
      v112 = (v107 + v109[9]);
      *v112 = 0x69726F6765746143;
      v112[1] = 0xEA00000000007365;
      *(v107 + v109[5]) = v108;
      *(v107 + v109[7]) = v337;
      sub_219889C7C(v107, v307, type metadata accessor for CategoriesMagazineFeedGroupEmitter);
      sub_219889B80(0);
      swift_allocObject();
      sub_2186EC998(&qword_280EA0F78, type metadata accessor for CategoriesMagazineFeedGroupEmitter, &unk_219CCEA04);
      swift_unknownObjectRetain();
      v113 = sub_219BEDF84();
      sub_219889CE4(v107, type metadata accessor for CategoriesMagazineFeedGroupEmitter);
      (*(v103 + 8))(v105, v106);
      return v113;
  }
}

uint64_t sub_219889978()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 248));
  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));
  __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  __swift_destroy_boxed_opaque_existential_1((v0 + 408));
  __swift_destroy_boxed_opaque_existential_1((v0 + 448));
  __swift_destroy_boxed_opaque_existential_1((v0 + 488));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 544));

  __swift_destroy_boxed_opaque_existential_1((v0 + 600));
  __swift_destroy_boxed_opaque_existential_1((v0 + 640));
  return v0;
}

uint64_t sub_219889A50()
{
  sub_219889978();

  return swift_deallocClassInstance();
}

void sub_219889AAC(uint64_t a1)
{
  if (!qword_280EB10B0)
  {
    type metadata accessor for CuratedMagazineFeedGroupKnobs(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EB10B0);
    }
  }
}

void sub_219889B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_219BEDD94();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_219889B80(uint64_t a1)
{
  if (!qword_280E91DB8)
  {
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2186EC998(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v1 = sub_219BEDFA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91DB8);
    }
  }
}

uint64_t sub_219889C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219889C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219889CE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219889D58(uint64_t a1)
{
  v2 = sub_21988B074();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219889D98()
{
  result = qword_27CC203B8;
  if (!qword_27CC203B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC203B8);
  }

  return result;
}

void *sub_219889E7C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v95 = a3;
  v96 = a2;
  v117 = sub_219BDBD64();
  v125 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v124);
  v114 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v86 - v9;
  sub_218C40500(0);
  v12 = v11;
  v122 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v118 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v126 = &v86 - v15;
  sub_21934EC04(0);
  MEMORY[0x28223BE20](v16 - 8);
  v99 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for SharedWithYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v101);
  v104 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v86 - v20;
  sub_218C40594(0);
  v23 = v22;
  v107 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v123 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v111 = &v86 - v26;
  v94 = sub_219BE6DF4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988AE58(0, &qword_27CC1DA28, MEMORY[0x277D6DF88]);
  v29 = v28;
  v90 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v89 = &v86 - v30;
  sub_219682348(0);
  MEMORY[0x28223BE20](v31 - 8);
  v86 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8AAD8(0);
  v34 = v33;
  v88 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v87 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_218713A88(&qword_27CC10500, sub_218C8AAD8, MEMORY[0x277D6EC70]);
  v37 = sub_219BF5E44();
  v38 = MEMORY[0x277D84F90];
  v100 = v34;
  v91 = v29;
  if (!v37)
  {
LABEL_25:
    v79 = sub_218713A88(&qword_27CC1DA38, sub_218C40594, MEMORY[0x277D6D720]);
    v80 = sub_218713A88(&qword_27CC1DA40, sub_218C40594, MEMORY[0x277D6D718]);
    MEMORY[0x21CEB9170](v38, v23, v79, v80);
    sub_218713A88(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    sub_218713A88(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v81 = v87;
    sub_219BEB2D4();
    v82 = v93;
    v83 = v92;
    v84 = v94;
    (*(v93 + 104))(v92, *MEMORY[0x277D6D868], v94);
    sub_218713A88(&qword_27CC203C0, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C19014);
    v85 = v89;
    sub_219BE85E4();
    (*(v82 + 8))(v83, v84);
    v96(v85);
    (*(v90 + 8))(v85, v91);
    return (*(v88 + 8))(v81, v100);
  }

  v129 = MEMORY[0x277D84F90];
  v106 = v37;
  sub_218C38210(0, v37 & ~(v37 >> 63), 0);
  v38 = v129;
  v105 = v36;
  result = sub_219BF5DF4();
  if (v106 < 0)
  {
    goto LABEL_28;
  }

  v40 = 0;
  v103 = (v107 + 16);
  v108 = (v107 + 32);
  v120 = (v122 + 16);
  v113 = (v125 + 1);
  v112 = (v122 + 8);
  v125 = (v122 + 32);
  v97 = (v107 + 8);
  v121 = v23;
  v102 = v21;
  v98 = a1;
  while (1)
  {
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      __break(1u);
      goto LABEL_27;
    }

    v109 = v42;
    v110 = v38;
    v43 = sub_219BF5EC4();
    v44 = a1;
    v45 = v123;
    (*v103)(v123);
    v43(v128, 0);
    sub_219BE6934();
    v46 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v21, 1, v46) == 1)
    {
      break;
    }

    (*v108)(v111, v45, v23);
    sub_21988AF4C(v21, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    a1 = v44;
LABEL_22:
    v38 = v110;
    v129 = v110;
    v78 = *(v110 + 16);
    v77 = *(v110 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_218C38210((v77 > 1), v78 + 1, 1);
      v38 = v129;
    }

    *(v38 + 16) = v78 + 1;
    (*(v107 + 32))(v38 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v78, v111, v23);
    result = sub_219BF5E94();
    v40 = v109;
    v21 = v102;
    if (v109 == v106)
    {
      goto LABEL_25;
    }
  }

  (*(v47 + 56))(v104, 1, 1, v46);
  v48 = sub_218713A88(&qword_27CC203C8, sub_218C40594, MEMORY[0x277D6D730]);
  v49 = sub_219BF5E44();
  if (!v49)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_21:
    v75 = sub_218713A88(&qword_27CC19078, sub_218C40500, MEMORY[0x277D6D408]);
    v76 = sub_218713A88(&qword_27CC19080, sub_218C40500, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v51, v12, v75, v76);
    sub_218713A88(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    sub_218713A88(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    sub_219BE6924();
    (*v97)(v45, v23);
    a1 = v98;
    goto LABEL_22;
  }

  v50 = v49;
  v127 = MEMORY[0x277D84F90];
  sub_218C37120(0, v49 & ~(v49 >> 63), 0);
  v51 = v127;
  result = sub_219BF5DF4();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v52 = v118;
    while (1)
    {
      v53 = v48;
      v54 = sub_219BF5EC4();
      (*v120)(v52);
      v54(v128, 0);
      sub_219BE5FC4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v71 = type metadata accessor for SharedWithYouFeedModel;
        v72 = v10;
        goto LABEL_14;
      }

      sub_218EA8964(0);
      v119 = *(v56 + 48);
      v57 = v10;
      v58 = v10;
      v59 = v115;
      sub_21988AFAC(v57, v115);
      sub_218EA89D8(0);
      v61 = *(v60 + 48);
      v62 = v116;
      sub_219BDBD54();
      v63 = v12;
      v64 = sub_219BDBD44();
      v66 = v65;
      (*v113)(v62, v117);
      v67 = v114;
      *v114 = v64;
      v67[1] = v66;
      v12 = v63;
      sub_21988B010(v59, v67 + v61);
      swift_storeEnumTagMultiPayload();
      sub_218713A88(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
      sub_219BE5FB4();
      v68 = v59;
      v10 = v58;
      v52 = v118;
      sub_21988AF4C(v68, type metadata accessor for SharedWithYouFeedGapLocation);
      (*v112)(v52, v63);
      v69 = sub_219BF1584();
      (*(*(v69 - 8) + 8))(&v58[v119], v69);
LABEL_15:
      v127 = v51;
      v74 = *(v51 + 16);
      v73 = *(v51 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_218C37120((v73 > 1), v74 + 1, 1);
        v51 = v127;
      }

      *(v51 + 16) = v74 + 1;
      (*(v122 + 32))(v51 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v74, v126, v12);
      v45 = v123;
      v23 = v121;
      v48 = v53;
      sub_219BF5E94();
      if (!--v50)
      {
        goto LABEL_21;
      }
    }

    sub_218EA89D8(0);
    v71 = type metadata accessor for SharedWithYouFeedGapLocation;
    v72 = &v10[*(v70 + 48)];
LABEL_14:
    sub_21988AF4C(v72, v71);
    (*v125)(v126, v52, v12);
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_21988AE58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_218713A88(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    v8[3] = sub_218713A88(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21988AF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21988AFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21988B010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21988B074()
{
  result = qword_27CC203D0;
  if (!qword_27CC203D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC203D0);
  }

  return result;
}

void sub_21988B198(uint64_t a1, uint64_t a2)
{
  v138 = a1;
  sub_2187C5110(0);
  v123 = v4;
  v122 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v124 = v5;
  v125 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BF2624();
  v128 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v127 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988C490(0);
  MEMORY[0x28223BE20](v7 - 8);
  v133 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BF1584();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BF2634();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v130 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v147 = &v122 - v12;
  v149 = sub_219BF1D74();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v162 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988D6A4(0, &qword_280E902A0, MEMORY[0x277D33BC8]);
  MEMORY[0x28223BE20](v14 - 8);
  v161 = (&v122 - v15);
  v16 = sub_219BE92E4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v157 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v122 - v20;
  v22 = sub_219BE9EC4();
  v158 = *(v22 - 8);
  v159 = v22;
  MEMORY[0x28223BE20](v22);
  v156 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDD804();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v126 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v129 = &v122 - v28;
  MEMORY[0x28223BE20](v29);
  v137 = (&v122 - v30);
  MEMORY[0x28223BE20](v31);
  v139 = &v122 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v122 - v34;
  v145 = v2;
  v160 = *(v2 + 56);
  v142 = a2;
  sub_219BDE5F4();
  v146 = sub_219BDD7F4();
  v155 = v36;
  v136 = v25;
  v37 = *(v25 + 8);
  v144 = v24;
  v143 = v25 + 8;
  v150 = v37;
  v37(v35, v24);
  sub_218A55778(0);
  v39 = v38;
  v40 = *(v38 + 48);
  v153 = *MEMORY[0x277D6E4C0];
  v41 = v153;
  v42 = sub_219BE92A4();
  v43 = *(v42 - 8);
  v152 = *(v43 + 104);
  v154 = v43 + 104;
  v44 = v21;
  v151 = v21;
  v152(v21, v41, v42);
  v45 = *MEMORY[0x277D6E500];
  v46 = sub_219BE92B4();
  v47 = *(*(v46 - 8) + 104);
  v47(&v44[v40], v45, v46);
  v48 = *MEMORY[0x277D6E4F0];
  v49 = *(v17 + 104);
  v50 = v44;
  v51 = v16;
  v49(v50, v48, v16);
  v52 = *(v39 + 48);
  v53 = v157;
  v152(v157, v153, v42);
  v54 = v156;
  v47(&v53[v52], *MEMORY[0x277D6E508], v46);
  v49(v53, v48, v51);
  sub_219BE9EB4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = sub_218FE7680(v146, v155, v54);

    (*(v158 + 8))(v54, v159);
    if (v57)
    {
      return;
    }
  }

  else
  {

    (*(v158 + 8))(v54, v159);
  }

  v58 = v139;
  sub_219BDE5F4();
  v59 = sub_219BDD7F4();
  v61 = v60;
  v62 = v144;
  v150(v58, v144);
  v63 = v161;
  *v161 = v59;
  v63[1] = v61;
  v64 = *MEMORY[0x277D33B80];
  v65 = sub_219BF2CB4();
  v66 = *(v65 - 8);
  (*(v66 + 104))(v63, v64, v65);
  (*(v66 + 56))(v63, 0, 1, v65);
  v67 = v145;
  v68 = v148;
  v69 = v149;
  (*(v148 + 104))(v162, *MEMORY[0x277D335F8], v149);
  v70 = v63;
  v71 = v147;
  sub_2189A4BB8(v70, v67, v147);
  __swift_project_boxed_opaque_existential_1((v67 + 528), *(v67 + 552));
  if (sub_219BEED54() & 1) != 0 || (sub_219BF2614())
  {
    (*(v140 + 8))(v71, v141);
    v72.n128_f64[0] = (*(v68 + 8))(v162, v69);
    sub_21988D648(v161, &qword_280E902A0, MEMORY[0x277D33BC8], v72);
    v73 = v137;
    sub_219BDE5F4();
    v74 = v136;
    v75 = (*(v136 + 88))(v73, v62);
    if (v75 == *MEMORY[0x277D2FB08])
    {
      (*(v74 + 96))(v73, v62);

      sub_218A27458(0, v76);
    }

    else
    {
      if (v75 != *MEMORY[0x277D2FAF8])
      {
        if (v75 != *MEMORY[0x277D2FAF0])
        {
          if (v75 == *MEMORY[0x277D2FB00])
          {
            (*(v74 + 96))(v73, v62);
            v94 = *v73;
            sub_21988D06C(0);
            v96 = v95;
            v162 = v94;
            v97 = swift_projectBox();
            v98 = *(v96 + 48);
            sub_218718690(v97, &v164);
            v99 = *(v74 + 16);
            v100 = v97 + v98;
            v101 = v129;
            v99(v129, v100, v62);
            v161 = sub_219BDE624();
            v99(v126, v101, v62);
            sub_219BDE644();
            sub_219BDE674();
            swift_allocObject();
            v102 = sub_219BDE604();
            v103 = swift_unknownObjectWeakLoadStrong();
            if (v103)
            {
              v104 = v103;
              if ([*(v67 + 168) improvedBlockingBehaviorEnabled])
              {
                sub_218718690(&v164, &v163);
                sub_219BEA744();
                swift_allocObject();
                v160 = v104;
                v157 = sub_219BEA6C4();
                v105 = swift_allocObject();
                swift_weakInit();
                v106 = v122;
                v107 = *(v122 + 16);
                v158 = v122 + 16;
                v159 = v107;
                v108 = v125;
                v109 = v123;
                v107(v125, v138, v123);
                v110 = *(v106 + 80);
                v111 = (v110 + 24) & ~v110;
                v112 = (v124 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
                v113 = swift_allocObject();
                *(v113 + 16) = v105;
                v114 = *(v106 + 32);
                v114(v113 + v111, v108, v109);
                v161 = v102;
                *(v113 + v112) = v102;

                sub_219BEA6F4();

                sub_219BEA714();

                v115 = swift_allocObject();
                swift_weakInit();
                sub_218718690(&v164, &v163);
                v116 = v125;
                v159(v125, v138, v109);
                v117 = swift_allocObject();
                sub_2186CB1F0(&v163, v117 + 16);
                *(v117 + 56) = v115;
                v114(v117 + ((v110 + 64) & ~v110), v116, v109);

                sub_219BEA734();

                v118 = v160;
                v119 = sub_219BF6534();
                sub_219BEA6D4();

                v150(v129, v144);
                __swift_destroy_boxed_opaque_existential_1(&v164);

                return;
              }
            }

            else
            {
            }

            v150(v129, v62);
            __swift_destroy_boxed_opaque_existential_1(&v164);
          }

          else
          {
            v150(v73, v62);
          }

          goto LABEL_13;
        }

        (*(v74 + 96))(v73, v62);

        sub_2197195C0(0);
        v78 = *(v84 + 64);
LABEL_12:
        v79 = sub_219BDDBF4();
        (*(*(v79 - 8) + 8))(v73 + v78, v79);
LABEL_13:
        sub_21988CD8C(v138);
        return;
      }

      (*(v74 + 96))(v73, v62);

      sub_2191B3054(0);
    }

    v78 = *(v77 + 48);
    goto LABEL_12;
  }

  v80 = v133;
  sub_219BF1B74();
  v81 = v134;
  v82 = v135;
  if ((*(v134 + 48))(v80, 1, v135) == 1)
  {
    (*(v140 + 8))(v71, v141);
    v83.n128_f64[0] = (*(v68 + 8))(v162, v69);
    sub_21988D648(v161, &qword_280E902A0, MEMORY[0x277D33BC8], v83);
    sub_21988C4F4(v80);
  }

  else
  {
    v85 = v131;
    (*(v81 + 32))(v131, v80, v82);
    v86 = v140;
    v87 = v130;
    v88 = v141;
    (*(v140 + 16))(v130, v71, v141);
    if ((*(v86 + 88))(v87, v88) == *MEMORY[0x277D33980])
    {
      (*(v86 + 96))(v87, v88);
      v89 = v128;
      v90 = v87;
      v91 = v127;
      (*(v128 + 32))(v127, v90, v132);
      __swift_project_boxed_opaque_existential_1((v67 + 128), *(v67 + 152));
      v92 = sub_219BF4984();
      sub_2189A46C0(v138, v92);

      (*(v89 + 8))(v91, v132);
      (*(v81 + 8))(v85, v135);
      (*(v86 + 8))(v147, v88);
      v93.n128_f64[0] = (*(v148 + 8))(v162, v149);
      sub_21988D648(v161, &qword_280E902A0, MEMORY[0x277D33BC8], v93);
    }

    else
    {
      (*(v81 + 8))(v85, v82);
      v120 = *(v86 + 8);
      v120(v71, v88);
      v121.n128_f64[0] = (*(v68 + 8))(v162, v69);
      sub_21988D648(v161, &qword_280E902A0, MEMORY[0x277D33BC8], v121);
      v120(v87, v88);
    }
  }
}

void sub_21988C490(uint64_t a1)
{
  if (!qword_27CC203D8)
  {
    sub_219BDDBC4();
    sub_2186FB7D0();
    v1 = sub_219BF1B54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC203D8);
    }
  }
}

uint64_t sub_21988C4F4(uint64_t a1)
{
  sub_21988C490(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21988C550(uint64_t a1, unsigned __int8 *a2)
{
  v35 = a1;
  v4 = sub_219BE92E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_219BE9EC4();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v12) = *a2;
  v34 = *(a2 + 8);
  v33 = *(a2 + 24);
  v36 = v2;
  v13 = *(v2 + 56);
  v40 = v12;
  v14 = v12 == 0;
  v15 = 0xED0000676F6C6174;
  if (!v14)
  {
    v15 = 0xE900000000000078;
  }

  v38 = v13;
  v39 = v15;
  v16 = *MEMORY[0x277D6E528];
  v17 = sub_219BE92D4();
  v18 = *(*(v17 - 8) + 104);
  v18(v10, v16, v17);
  v19 = *MEMORY[0x277D6E518];
  v20 = *(v5 + 104);
  v20(v10, v19, v4);
  v18(v7, v16, v17);
  v21 = v37;
  v20(v7, v19, v4);
  sub_219BE9EB4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = v40;
    if (v40)
    {
      v25 = 0x6F42657069636572;
    }

    else
    {
      v25 = 0x6143657069636572;
    }

    v26 = sub_218FE7680(v25, v39, v21);

    (*(v41 + 8))(v21, v42);
    v27 = v24;
    if (v26)
    {
      return v26;
    }
  }

  else
  {

    (*(v41 + 8))(v21, v42);
    v27 = v40;
  }

  __swift_project_boxed_opaque_existential_1((v36 + 16), *(v36 + 40));
  sub_2186CFDE4(0, &qword_280EC7050, &protocol descriptor for RecipeFilterModuleType);
  result = sub_219BE1E34();
  if (v45)
  {
    sub_2186CB1F0(&v43, v46);
    v29 = v47;
    v30 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    LOBYTE(v43) = v27;
    v44 = v34;
    v45 = v33;
    v31 = (*(v30 + 8))(&v43, v29, v30);
    v26 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    [v26 setModalInPresentation_];
    sub_2187C5110(0);
    v32 = sub_219BEA784();
    v32(v26);

    __swift_destroy_boxed_opaque_existential_1(v46);
    return v26;
  }

  __break(1u);
  return result;
}

double sub_21988C970(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_21988D6A4(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_219BE92E4();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_219BE9EC4();
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_21988CD8C(a2);
    if (v20)
    {
      v21 = *(v19 + 56);
      v46 = v20;
      v47 = v21;
      sub_218A55778(0);
      v44 = v22;
      v48 = *(v22 + 48);
      v41 = *MEMORY[0x277D6E4C0];
      v23 = v41;
      v24 = sub_219BE92A4();
      v45 = v7;
      v25 = v24;
      v26 = *(v24 - 8);
      v40 = *(v26 + 104);
      v42 = v26 + 104;
      v40(v13, v23, v24);
      v27 = *MEMORY[0x277D6E500];
      v28 = sub_219BE92B4();
      v43 = v16;
      v29 = v28;
      v39 = *(*(v28 - 8) + 104);
      v39(&v13[v48], v27, v28);
      v30 = *MEMORY[0x277D6E4F0];
      v48 = v19;
      v31 = *(v50 + 104);
      v31(v13, v30, v8);
      v50 = v14;
      v32 = *(v44 + 48);
      v40(v10, v41, v25);
      v39(&v10[v32], *MEMORY[0x277D6E508], v29);
      v31(v10, v30, v8);
      v33 = v43;
      sub_219BE9EB4();
      v34 = sub_219BE94F4();
      v35 = v45;
      (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
      v36 = v46;
      sub_21909BA64(v46, v33, v35);

      sub_21988D648(v35, &unk_280EE4470, MEMORY[0x277D6E658], v37);
      (*(v49 + 8))(v33, v50);
    }
  }

  return result;
}

void sub_21988CD8C(uint64_t a1)
{
  v3 = sub_219BDD804();
  v15 = *(v3 - 8);
  v16 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDDC14();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2186CFDE4(0, &unk_27CC203E8, MEMORY[0x277D2FEA8]);
  sub_2187C5110(0);
  v14[1] = v9;
  v17 = a1;
  sub_219BEA794();
  sub_219BE1E14();

  if (v20)
  {
    sub_2186CB1F0(&v19, v21);

    sub_219BDDC04();
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v10 = sub_219BDE1C4();
    if ((sub_219BED0C4() & 1) == 0)
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      sub_219BDE5F4();
      sub_219BDD7F4();
      (*(v15 + 8))(v5, v16);
      v11 = sub_219BE9CE4();
      v12 = sub_219BEA784();
      v13 = v11;
      v12();
    }

    (*(v6 + 8))(v8, v18);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_21988D06C(uint64_t a1)
{
  if (!qword_27CC203E0)
  {
    sub_2186CFDE4(255, &qword_280EE37C8, MEMORY[0x277D6EC48]);
    sub_219BDD804();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC203E0);
    }
  }
}

double sub_21988D0EC()
{
  sub_2187C5110(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21988C970(v5, v0 + v4, v6, v1);
}

uint64_t sub_21988D17C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v29 = a3;
  sub_21988D6A4(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21988D6A4(0, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_219BDDDA4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(a1, v30);
  sub_2186CFDE4(0, &qword_280EE37C8, MEMORY[0x277D6EC48]);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v14, 0, 1, v15);
    (*(v16 + 32))(v18, v14, v15);
    sub_219BDDD84();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v21.n128_f64[0] = (*(v16 + 8))(v18, v15);
      return sub_21988D648(v7, &unk_280EE9D00, MEMORY[0x277CC9260], v21);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v24 = sub_218CF8A44(v29, v11);

        if (v24)
        {
          [v24 setModalPresentationStyle_];
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v26 = Strong;
              v27 = sub_219BF6534();

              [v27 presentViewController:v24 animated:1 completion:0];
            }

            else
            {
            }
          }
        }
      }

      (*(v9 + 8))(v11, v8);
      return (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
    v23.n128_f64[0] = v20(v14, 1, 1, v15);
    return sub_21988D648(v14, &unk_280EE8D10, MEMORY[0x277D2FD50], v23);
  }
}

uint64_t sub_21988D5E0()
{
  sub_2187C5110(0);
  v3 = *(v0 + 56);
  v4 = v0 + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80));

  return sub_21988D17C(v0 + 16, v3, v4, v1);
}

uint64_t sub_21988D648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_21988D6A4(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_21988D6A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_21988D720(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_21988D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDB954();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:13 inDomains:1];
  v17 = sub_219BF5924();

  if (*(v17 + 16))
  {
    v36 = a3;
    (*(v37 + 16))(v11, v17 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v6);

    v18 = *(v37 + 32);
    v18(v14, v11, v6);
    v38 = a1;
    v39 = a2;

    MEMORY[0x21CECC330](1735290926, 0xE400000000000000);
    sub_219BDB874();

    sub_219BDB8F4();
    v19 = sub_219BF53D4();

    v20 = [v15 fileExistsAtPath_];

    if (v20)
    {
      (*(v37 + 8))(v14, v6);

LABEL_10:
      v32 = v36;
      v18(v36, v8, v6);
      return (*(v37 + 56))(v32, 0, 1, v6);
    }

    v23 = sub_219BF53D4();
    v24 = [objc_opt_self() imageNamed_];

    if (v24)
    {
      v25 = UIImagePNGRepresentation(v24);
      if (v25)
      {
        v26 = v25;
        v27 = sub_219BDBA04();
        v34 = v28;
        v35 = v27;

        sub_219BDB8F4();
        v29 = sub_219BF53D4();

        v30 = v34;
        v31 = sub_219BDB9E4();
        [v15 createFileAtPath:v29 contents:v31 attributes:0];

        sub_2186C6190(v35, v30);
        (*(v37 + 8))(v14, v6);
        goto LABEL_10;
      }
    }

    v33 = *(v37 + 8);
    v33(v8, v6);
    v33(v14, v6);
    return (*(v37 + 56))(v36, 1, 1, v6);
  }

  else
  {

    v21 = *(v37 + 56);

    return v21(a3, 1, 1, v6);
  }
}

uint64_t sub_21988DB98(void *a1, void *a2, double a3, double a4, double a5)
{
  v10 = sub_219BDD2E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:0.0 cornerRadii:{0.0, a3, a4, a5, a5}];
  v15 = [a1 CGContext];
  v16 = [v14 CGPath];
  CGContextAddPath(v15, v16);

  v17 = [a1 CGContext];
  v18 = [a2 CGColor];
  CGContextSetFillColorWithColor(v17, v18);

  v19 = [a1 CGContext];
  CGContextClosePath(v19);

  v20 = [a1 CGContext];
  (*(v11 + 104))(v13, *MEMORY[0x277CBF258], v10);
  sub_219BF5FE4();

  return (*(v11 + 8))(v13, v10);
}

void sub_21988DDD0(void *a1, double a2, double a3)
{
  if (sub_219BED0C4())
  {
    v6 = 7.0;
  }

  else
  {
    v6 = 3.0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v6;
  *(v8 + 40) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21988DF90;
  *(v9 + 24) = v8;
  v12[4] = sub_218BFF7C4;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21988D720;
  v12[3] = &block_descriptor_179;
  v10 = _Block_copy(v12);
  v11 = a1;

  [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

uint64_t sub_21988DFA0()
{
  v1 = v0;
  v2 = [v0 backingChannel];
  if (v2)
  {
    v3 = [v2 identifier];
  }

  else
  {
    v3 = [objc_msgSend(v0 backingTag)];
  }

  v4 = v3;
  swift_unknownObjectRelease();
  v5 = sub_219BF5414();
  v7 = v6;

  v8 = [v1 backingChannel];
  if (v8)
  {
    v9 = [v8 name];
  }

  else
  {
    v9 = [objc_msgSend(v1 backingTag)];
  }

  v10 = v9;
  swift_unknownObjectRelease();
  v11 = sub_219BF5414();
  v13 = v12;

  MEMORY[0x21CECC330](10272, 0xE200000000000000);
  MEMORY[0x21CECC330](v11, v13);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  MEMORY[0x21CECC330](v5, v7);

  v14 = [objc_msgSend(v1 backingTag)];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_219BF7314();

    v15 = [v14 identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    MEMORY[0x21CECC330](v16, v18);

    MEMORY[0x21CECC330](10272, 0xE200000000000000);
    v19 = [v14 name];
    v20 = sub_219BF5414();
    v22 = v21;

    MEMORY[0x21CECC330](v20, v22);

    MEMORY[0x21CECC330](23849, 0xE200000000000000);
    MEMORY[0x21CECC330](0x6F69746365735B20, 0xEA00000000003D6ELL);
    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_21988E274(uint64_t *a1@<X8>)
{
  v3 = [v1 feedConfiguration];
  if (v3 <= 9)
  {
    if (v3 != 3)
    {
      if (v3 == 9)
      {
        v4 = [v1 alternativeFeedDescriptor];
        if (!v4)
        {
          v5 = xmmword_219C43500;
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v4 = [v1 alternativeFeedDescriptor];
    if (!v4)
    {
      v5 = xmmword_219C43510;
      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v3 != 10)
  {
    if (v3 != 12)
    {
      if (v3 == 13)
      {
        v4 = [v1 alternativeFeedDescriptor];
        if (!v4)
        {
          v5 = xmmword_219C43560;
LABEL_21:
          *a1 = v5;
          return;
        }

        goto LABEL_19;
      }

LABEL_20:
      v5 = xmmword_219CAF2B0;
      goto LABEL_21;
    }

    v4 = [v1 alternativeFeedDescriptor];
    if (!v4)
    {
      v5 = xmmword_219C43550;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v4 = [v1 alternativeFeedDescriptor];
  if (v4)
  {
    goto LABEL_19;
  }

  v6 = [objc_msgSend(v1 backingTag)];
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_20;
  }

  swift_getObjectType();
  sub_2190C093C(a1);

  swift_unknownObjectRelease();
}

uint64_t sub_21988E41C()
{
  sub_21988E274(&v7);
  if (v8 <= 5)
  {
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        sub_218ED0F50(v7, 3uLL);
        return 0xD00000000000001ALL;
      }

      if (v8 != 4)
      {
        sub_218ED0F50(v7, 5uLL);
        return 0xD000000000000016;
      }
    }

    else if (v8 >= 3)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v8 < 9)
  {
LABEL_13:
    sub_218ED0F50(v7, v8);
    return 0;
  }

  switch(v8)
  {
    case 9:
      sub_218ED0F50(v7, 9uLL);
      return 0xD000000000000018;
    case 10:
      sub_218ED0F50(v7, 0xAuLL);
      return 0xD00000000000001ELL;
    case 11:
      return 0;
  }

LABEL_18:
  v1 = v7;
  v2 = v8;
  sub_218720448(v7, v8);
  if (qword_280EA25A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v3 = v1;
  v4 = v1;
  v5 = v2;
  v6 = sub_21962F2B0(v4, v2);

  sub_218ED0F50(v3, v5);
  sub_218ED0F50(v3, v5);
  return v6;
}

uint64_t sub_21988E608@<X0>(uint64_t a2@<X8>)
{
  sub_21988E274(&v9);
  v3 = 1;
  v4 = v9;
  v5 = v10;
  if (v10 > 5)
  {
    if (v10 >= 9)
    {
      if (v10 == 11)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if (v10 > 2)
  {
    if (v10 != 4)
    {
LABEL_9:
      swift_getKeyPath();
      swift_unknownObjectRetain();
      sub_219BEE534();
      v3 = 0;
    }
  }

  else if (v10 >= 3)
  {
    goto LABEL_9;
  }

  sub_218ED0F50(v4, v5);
LABEL_11:
  v6 = sub_219BEE544();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v3, 1, v6);
}

id sub_21988E764@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sportsFeedRules];
  *a2 = result;
  return result;
}

id sub_21988E7A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 puzzleHubFeedRules];
  *a2 = result;
  return result;
}

id sub_21988E7DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 puzzleTypeFeedRules];
  *a2 = result;
  return result;
}

id sub_21988E818@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 foodHubFeedRules];
  *a2 = result;
  return result;
}

id sub_21988E854@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipeCatalogFeedRules];
  *a2 = result;
  return result;
}

uint64_t sub_21988E8A8(unint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3uLL:
        sub_21988ECA4(0);
        v8 = sub_219BF3154();
        v15 = *(v8 - 8);
        v10 = *(v15 + 72);
        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_219C09EC0;
        v12 = v1 + v16;
        v13 = *(v15 + 104);
        v13(v12, *MEMORY[0x277D33D40], v8);
        v14 = MEMORY[0x277D33D48];
        break;
      case 9uLL:
        sub_21988ECA4(0);
        v8 = sub_219BF3154();
        v19 = *(v8 - 8);
        v20 = *(v19 + 72);
        v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_219C0EE20;
        v22 = v1 + v21;
        v13 = *(v19 + 104);
        v13(v22, *MEMORY[0x277D33D40], v8);
        v13(v22 + v20, *MEMORY[0x277D33D38], v8);
        v13(v22 + 2 * v20, *MEMORY[0x277D33D48], v8);
        v17 = *MEMORY[0x277D33D50];
        v18 = v22 + 3 * v20;
        goto LABEL_11;
      case 0xAuLL:
        sub_21988ECA4(0);
        v8 = sub_219BF3154();
        v9 = *(v8 - 8);
        v10 = *(v9 + 72);
        v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_219C09EC0;
        v12 = v1 + v11;
        v13 = *(v9 + 104);
        v13(v12, *MEMORY[0x277D33D40], v8);
        v14 = MEMORY[0x277D33D50];
        break;
      default:
        return v1;
    }

    v17 = *v14;
    v18 = v12 + v10;
LABEL_11:
    v13(v18, v17, v8);
    return v1;
  }

  if (a1 < 3)
  {
    sub_21988ECA4(0);
    v2 = sub_219BF3154();
    v3 = *(v2 - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_219C0B8C0;
    v6 = v1 + v5;
    v7 = *(v3 + 104);
    v7(v6, *MEMORY[0x277D33D40], v2);
    v7(v6 + v4, *MEMORY[0x277D33D38], v2);
    v7(v6 + 2 * v4, *MEMORY[0x277D33D48], v2);
  }

  return v1;
}

void sub_21988ECA4(uint64_t a1)
{
  if (!qword_280E8B7D0)
  {
    sub_219BF3154();
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B7D0);
    }
  }
}

void *sub_21988ECFC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChatterboxURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_66;
  }

  sub_219897A00(qword_280ECF0C0, type metadata accessor for ChatterboxURLHandler, &unk_219C9DD98);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AlternateUniversalLinkURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_219897A00(&qword_280EA7360, type metadata accessor for AlternateUniversalLinkURLHandler, &unk_219C3FDA4);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_219897A00(&unk_280ED1390, type metadata accessor for FollowingURLHandler, &unk_219CB53C4);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCategoryURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  sub_219897A00(qword_280EBB438, type metadata accessor for MagazineCategoryURLHandler, &unk_219C24F1C);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  sub_219897A00(&qword_280EC7BA0, type metadata accessor for MagazineFeedURLHandler, &unk_219C8CF88);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  sub_219897A00(&unk_280EBA358, type metadata accessor for SportsManagementURLHandler, &unk_219C15038);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MyMagazinesURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_219897A00(&qword_280ECA790, type metadata accessor for MyMagazinesURLHandler, &unk_219CD5888);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RootPathURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_219897A00(&qword_280ED2FE0, type metadata accessor for RootPathURLHandler, &unk_219C3B064);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BundleSubscriptionURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_219897A00(qword_280EB51D0, type metadata accessor for BundleSubscriptionURLHandler, &unk_219C787B0);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AlacarteSubscriptionURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_219897A00(&qword_280EADC68, type metadata accessor for AlacarteSubscriptionURLHandler, &unk_219C1E2E0);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for IssueURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_219897A00(&qword_280EDA400, type metadata accessor for IssueURLHandler, &unk_219C9CE28);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for EmailSignupURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FamilySetupURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_219897A00(&qword_280ECB2C0, type metadata accessor for FamilySetupURLHandler, &unk_219CD1628);
  sub_219BE25D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SavedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_219897A00(qword_280ED9C70, type metadata accessor for SavedURLHandler, &unk_219C56A38);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SharedWithYouURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_219897A00(qword_280EC34D0, type metadata accessor for SharedWithYouURLHandler, &unk_219C4DB18);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HistoryURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_219897A00(qword_280ED61E8, type metadata accessor for HistoryURLHandler, &unk_219C6D644);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BrowseChannelsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_219897A00(qword_280EC25F0, type metadata accessor for BrowseChannelsURLHandler, &unk_219CB7A8C);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BrowseChannelsPlusURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  sub_219897A00(qword_280EB5280, type metadata accessor for BrowseChannelsPlusURLHandler, &unk_219C32B10);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NotificationsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_219897A00(&unk_280EC4280, type metadata accessor for NotificationsURLHandler, &unk_219C44DD8);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ForYouFeedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  sub_219897A00(qword_280ECEA80, type metadata accessor for ForYouFeedURLHandler, &unk_219C9BE18);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebEmbedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  sub_219897A00(&unk_280ED2030, type metadata accessor for WebEmbedURLHandler, &unk_219C27E64);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  sub_219897A00(qword_280ED6E38, type metadata accessor for ArticleURLHandler, &protocol conformance descriptor for ArticleURLHandler);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticlePreviewURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  sub_219897A00(qword_280EC2AB0, type metadata accessor for ArticlePreviewURLHandler, &unk_219C7552C);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsEventURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  sub_219897A00(qword_280EC9BB8, type metadata accessor for SportsEventURLHandler, &unk_219CD2728);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SpotlightURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_219897A00(&unk_280ED02B0, type metadata accessor for SpotlightURLHandler, &unk_219C381C8);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TagURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  sub_219897A00(qword_280EDD468, type metadata accessor for TagURLHandler, &unk_219C870F0);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for InterstitialPreviewURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  sub_219897A00(&qword_280EB0500, type metadata accessor for InterstitialPreviewURLHandler, &unk_219C77770);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for UserSegmentationURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  sub_219897A00(&qword_280EB9850, type metadata accessor for UserSegmentationURLHandler, &unk_219C66ADC);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OpenInNewsErrorHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_219897A00(qword_280EE0EA0, type metadata accessor for OpenInNewsErrorHandler, &unk_219C26678);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  sub_219897A00(qword_280ED78C8, type metadata accessor for SearchURLHandler, &unk_219C801E4);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SmarterMessagingURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  sub_219897A00(&qword_280EBA430, type metadata accessor for SmarterMessagingURLHandler, &unk_219C536EC);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SystemNotificationsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  sub_219897A00(qword_280EAE880, type metadata accessor for SystemNotificationsURLHandler, &unk_219C7BDE0);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MySportsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  sub_219897A00(qword_280ED33C0, type metadata accessor for MySportsURLHandler, &unk_219C7E7F0);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleHubURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  sub_219897A00(&unk_280ED0A50, type metadata accessor for PuzzleHubURLHandler, &unk_219C9F3F0);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  sub_219897A00(&qword_280ED81B0, type metadata accessor for PuzzleURLHandler, &unk_219C12120);
  sub_219BE25D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleTypeURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  sub_219897A00(qword_280ECDF90, type metadata accessor for PuzzleTypeURLHandler, &unk_219C46E98);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageSubscriptionsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_219897A00(qword_280EB0070, type metadata accessor for ManageSubscriptionsURLHandler, &unk_219CB7B20);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for LocationSharingURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  sub_219897A00(&qword_280EBE268, type metadata accessor for LocationSharingURLHandler, &unk_219CBB89C);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NewsSettingsURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_219897A00(&qword_280EE0A10, type metadata accessor for NewsSettingsURLHandler, &unk_219CA8508);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeBoxURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  sub_219897A00(&qword_280ED08D0, type metadata accessor for RecipeBoxURLHandler, &unk_219C1F0F4);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  sub_219897A00(&qword_280ED80C0, type metadata accessor for RecipeURLHandler, "!");
  sub_219BE25D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FoodHubURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_219897A00(qword_280ED6578, type metadata accessor for FoodHubURLHandler, &unk_219C0FAE4);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeCatalogURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_219897A00(&qword_280EC3C10, type metadata accessor for RecipeCatalogURLHandler, &unk_219CB7890);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (![result narrativeAudio])
  {
    goto LABEL_52;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDDD24();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_219897A00(&qword_280EE8D28, MEMORY[0x277D2FD10], MEMORY[0x277D2FD08]);
  sub_219BE25D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioFeedURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  sub_219897A00(&unk_280ED1E70, type metadata accessor for AudioFeedURLHandler, &unk_219C9C0C8);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioHistoryURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  sub_219897A00(qword_280EC8B50, type metadata accessor for AudioHistoryURLHandler, &unk_219C6C068);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistURLHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  sub_219897A00(qword_280EC5C40, type metadata accessor for AudioPlaylistURLHandler, &unk_219C3AA88);
  sub_219BE25E4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioOptionsURLHandler();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219897A00(&qword_280EC8A98, type metadata accessor for AudioOptionsURLHandler, &unk_219C9C168);
    sub_219BE25E4();

LABEL_52:
    sub_219BE1CC4();
    if (sub_219BE1CB4())
    {
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      type metadata accessor for TTRURLHandler();
      result = sub_219BE1E24();
      if (!result)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      sub_219897A00(qword_280EDD820, type metadata accessor for TTRURLHandler, &unk_219C49358);
      sub_219BE25E4();
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BE3FC4();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219897A00(&qword_280EE6468, MEMORY[0x277D34EC8], MEMORY[0x277D34EC0]);
      sub_219BE25D4();

      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      type metadata accessor for UnrecognizedURLRetryHandler();
      result = sub_219BE1E24();
      if (result)
      {
        sub_219897A00(qword_280EB6000, type metadata accessor for UnrecognizedURLRetryHandler, &unk_219C6883C);
        sub_219BE25D4();

        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        type metadata accessor for UnsupportedRecordURLHandler();
        result = sub_219BE1E24();
        if (result)
        {
          sub_219897A00(qword_280EB5F40, type metadata accessor for UnsupportedRecordURLHandler, &unk_219CA391C);
          sub_219BE25D4();

          __swift_project_boxed_opaque_existential_1(a2, a2[3]);
          type metadata accessor for WebViewControllerURLHandler();
          result = sub_219BE1E24();
          if (result)
          {
            sub_219897A00(qword_280EB5C10, type metadata accessor for WebViewControllerURLHandler, &unk_219C711DC);
            sub_219BE25D4();

            __swift_project_boxed_opaque_existential_1(a2, a2[3]);
            type metadata accessor for AdPreviewURLHandlerProcessor();
            result = sub_219BE1E24();
            if (result)
            {
              sub_219897A00(qword_280EB5B60, type metadata accessor for AdPreviewURLHandlerProcessor, &unk_219C3B270);
              sub_219BE25F4();

              __swift_project_boxed_opaque_existential_1(a2, a2[3]);
              sub_219BE4224();
              result = sub_219BE1E24();
              if (result)
              {
                sub_219897A00(&qword_280EE63E0, MEMORY[0x277D34FF0], MEMORY[0x277D34FE8]);
                sub_219BE25F4();

                __swift_project_boxed_opaque_existential_1(a2, a2[3]);
                sub_219BE42D4();
                result = sub_219BE1E24();
                if (result)
                {
                  sub_219897A00(&unk_280EE6378, MEMORY[0x277D35048], MEMORY[0x277D35040]);
                  sub_219BE25F4();

                  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
                  type metadata accessor for FollowLiveActivityURLProcessor();
                  result = sub_219BE1E24();
                  if (result)
                  {
                    sub_219897A00(qword_280EACE00, type metadata accessor for FollowLiveActivityURLProcessor, &unk_219C2E170);
                    sub_219BE25F4();

                    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
                    type metadata accessor for EngagementJourneyURLHandlerProcessor();
                    result = sub_219BE1E24();
                    if (result)
                    {
                      sub_219897A00(&qword_280E9BB08, type metadata accessor for EngagementJourneyURLHandlerProcessor, &protocol conformance descriptor for EngagementJourneyURLHandlerProcessor);
                      sub_219BE25F4();

                      return swift_unknownObjectRelease();
                    }

                    goto LABEL_117;
                  }

LABEL_116:
                  __break(1u);
LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

LABEL_115:
                __break(1u);
                goto LABEL_116;
              }

LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_219890F3C()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE42D4();
  sub_219BE2904();
  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  type metadata accessor for AudioFeedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BDDD24();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for FollowingURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for MagazineFeedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SportsManagementURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for MagazineCategoryURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for MyMagazinesURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for IssueURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for RootPathURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for BundleSubscriptionURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AlacarteSubscriptionURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, &unk_280EB0440, &protocol descriptor for MagazineActivityNavigatorType, 1);
  sub_219BE2914();

  type metadata accessor for MagazineActivityNavigator();
  sub_219BE2904();

  sub_219BE4224();
  sub_219BE2904();

  sub_219BE3FC4();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for EmailSignupURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for FamilySetupURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ChatterboxURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for WebViewControllerURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SavedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SharedWithYouURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for HistoryURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for BrowseChannelsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for BrowseChannelsPlusURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for NotificationsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SystemNotificationsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for MySportsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ForYouFeedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ArticleURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ArticlePreviewURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioOptionsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for TagURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SportsEventURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SpotlightURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AlternateUniversalLinkURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for OpenInNewsErrorHandler();
  sub_219BE2904();

  type metadata accessor for SearchURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for SmarterMessagingURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for WebEmbedURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for InterstitialPreviewURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for UserSegmentationURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AdPreviewURLHandlerProcessor();
  sub_219BE2904();

  type metadata accessor for FollowLiveActivityURLProcessor();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioHistoryURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioPlaylistURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for PuzzleHubURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for PuzzleTypeURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for UnrecognizedURLRetryHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for PuzzleURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for UnsupportedRecordURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for ManageSubscriptionsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for LocationSharingURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for NewsSettingsURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for RecipeBoxURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for RecipeURLHandler();
  sub_219BE2904();

  type metadata accessor for FoodHubURLHandler();
  sub_219BE2904();

  type metadata accessor for RecipeCatalogURLHandler();
  sub_219BE2904();

  type metadata accessor for TTRURLHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for EngagementJourneyURLHandlerProcessor();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  return (v6)(v3, v0);
}