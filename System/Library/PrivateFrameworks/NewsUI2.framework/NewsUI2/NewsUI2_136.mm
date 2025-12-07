uint64_t sub_2195E32C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v6 = type metadata accessor for SavedFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SavedFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953D48(0);
  v19 = v18;
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2195E3A08(v17, type metadata accessor for SavedFeedSectionDescriptor);
    }

    v21 = *(v19 - 8);
    (*(v21 + 16))(a4, a1, v19);
  }

  else
  {
    sub_2195E391C(v17, v14, type metadata accessor for ArticleListSavedFeedGroup);
    v22 = *v14;
    v23 = *(v14 + 1);
    v24 = *(v9 + 20);
    v25 = sub_219BED8D4();
    (*(*(v25 - 8) + 16))(&v11[v24], &v14[v24], v25);
    *v11 = v22;
    *(v11 + 1) = v23;
    v26 = *(v9 + 24);
    v32 = a4;
    *&v11[v26] = v33;
    refreshed = type metadata accessor for SavedFeedRefreshBlueprintModifier(0);
    v28 = v34;
    __swift_project_boxed_opaque_existential_1((v34 + *(refreshed + 20)), *(v34 + *(refreshed + 20) + 24));
    sub_2195E39A0(v11, v8, type metadata accessor for ArticleListSavedFeedGroup);
    v29 = *(type metadata accessor for SavedFeedRefreshResult(0) + 28);

    a4 = v32;

    sub_219B52314(v8, v28 + v29, a4);
    sub_2195E3A08(v8, type metadata accessor for SavedFeedGroup);
    sub_2195E3A08(v11, type metadata accessor for ArticleListSavedFeedGroup);
    sub_2195E3A08(v14, type metadata accessor for ArticleListSavedFeedGroup);
    v21 = *(v19 - 8);
  }

  return (*(v21 + 56))(a4, 0, 1, v19);
}

uint64_t sub_2195E3648(uint64_t a1)
{
  v2 = sub_2195E3744(&qword_280EA2118, type metadata accessor for SavedFeedRefreshBlueprintModifier, &unk_219C9078C);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_2195E3744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2195E37D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_2195E3744(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
    v8[3] = sub_2195E3744(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2195E38C8()
{
  result = qword_280EA2120;
  if (!qword_280EA2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2120);
  }

  return result;
}

uint64_t sub_2195E391C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195E39A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195E3A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2195E3A7C()
{
  result = qword_27CC1CC70;
  if (!qword_27CC1CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CC70);
  }

  return result;
}

uint64_t sub_2195E3AD0()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v2 = v0;
    sub_219BE3204();
    v3 = sub_219BE2E54();
    sub_219BE2F84();

    v4 = sub_219BE2E54();
    sub_2195E5AC4(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
    sub_219BE2F94();

    v5 = sub_219BE2E54();
    v1 = sub_219BE3034();

    *(v2 + 208) = v1;
  }

  return v1;
}

uint64_t sub_2195E3C88(uint64_t a1, void *a2)
{
  v2 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
  sub_2194B2E44(&unk_282A283D8);
  v3 = (*(v2 + 32))();

  return v3;
}

double sub_2195E3D0C(void x0_0, void *a1)
{
  v2 = a1[9];
  v3 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v2);
  (*(v3 + 8))(v2, v3);
  sub_219BE1A44();

  sub_219BE2184();

  return result;
}

uint64_t sub_2195E3D9C(void *a1)
{
  v1 = a1[9];
  v2 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v1);
  (*(v2 + 8))(v1, v2);
  sub_219BE1A44();

  v3 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_2195E3E88()
{
  v1 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195E5AC4(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = (v20 - v7);
  v9 = v0[9];
  v10 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v9);
  (*(v10 + 8))(v9, v10);
  sub_219BE1A44();

  sub_219BE2184();

  v11 = (*(v6 + 88))(v8, v5);
  if (v11 == *MEMORY[0x277D6C9F0])
  {
    (*(v6 + 96))(v8, v5);
    v12 = *v8;
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v13 = qword_280F617C8;
    sub_2186F20D4(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v21 = 0;
    v22 = 0xE000000000000000;
    v20[1] = v12;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v15 = v21;
    v16 = v22;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    v17 = sub_219BF6214();
    sub_219BE5314("Failed to retrieve My Magazines state! Error: %{public}@", 56, 2, &dword_2186C1000, v13, v17, v14);
  }

  else if (v11 == *MEMORY[0x277D6C9E8])
  {
    (*(v6 + 96))(v8, v5);
    v18 = sub_2190704B8(v8, v3, type metadata accessor for MyMagazinesState);
    MEMORY[0x28223BE20](v18);
    sub_219BE3204();

    v19 = sub_219BE2E54();
    sub_219BE2F74();

    sub_219070458(v3, type metadata accessor for MyMagazinesState);
  }

  else if (v11 != *MEMORY[0x277D6C9E0])
  {
    sub_219BF7514();
    __break(1u);
  }
}

uint64_t sub_2195E42B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BDC8E4();

  v8 = v17;
  v16[4] = a2;
  v16[5] = a1;
  sub_2195E5AC4(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_2195E5B7C(a2, v7, type metadata accessor for MyMagazinesState);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  sub_2190704B8(v7, v11 + v9, type metadata accessor for MyMagazinesState);
  *(v11 + v10) = a1;
  v12 = v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = sub_2195E6034;
  *(v12 + 8) = a1;
  *(v12 + 16) = v8;
  swift_retain_n();
  v13 = sub_219BE2E54();
  v14 = sub_219BE2F64();

  return v14;
}

uint64_t sub_2195E44DC(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 24);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v4, &off_282A66150, v7, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2195E458C()
{
  sub_218774F78((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2195E45EC()
{
  sub_2195E458C();

  return swift_deallocClassInstance();
}

uint64_t sub_2195E4644(char a1)
{
  if (a1 == 4)
  {

    sub_219BDC8E4();
  }

  sub_219BDC8F4();

  sub_219BDC8E4();

  sub_2195E5AC4(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v4;
  v1 = sub_219BE2E54();
  v2 = sub_219BE2F84();

  return v2;
}

uint64_t sub_2195E47D8(uint64_t a1, void *a2, int a3)
{
  v30 = a3;
  v4 = type metadata accessor for MyMagazinesState(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  sub_2195E5AC4(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = a2[9];
  v15 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v14);
  (*(v15 + 8))(v14, v15);
  sub_219BE1A44();

  sub_219BE2184();

  v16 = (*(v11 + 88))(v13, v10);
  if (v16 == *MEMORY[0x277D6C9F0])
  {
    (*(v11 + 96))(v13, v10);
  }

  else
  {
    if (v16 == *MEMORY[0x277D6C9E8])
    {
      (*(v11 + 96))(v13, v10);
      v17 = sub_2190704B8(v13, v8, type metadata accessor for MyMagazinesState);
      MEMORY[0x28223BE20](v17);
      sub_2195E5AC4(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
      sub_219BE3204();
      v18 = v29;
      sub_2195E5B7C(v8, v29, type metadata accessor for MyMagazinesState);
      v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      sub_2190704B8(v18, v21 + v19, type metadata accessor for MyMagazinesState);
      *(v21 + v20) = a2;
      v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v22 = sub_2195E5B28;
      *(v22 + 8) = a2;
      *(v22 + 16) = v30;
      swift_retain_n();
      v23 = sub_219BE2E54();
      v24 = sub_219BE2F64();

      sub_219070458(v8, type metadata accessor for MyMagazinesState);
      return v24;
    }

    if (v16 != *MEMORY[0x277D6C9E0])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    sub_2195E5A54();
    swift_allocError();
    *v26 = 0;
  }

  sub_21870F4C4(0, &qword_27CC13080, &type metadata for MagazineGridModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE2FF4();
}

uint64_t sub_2195E4C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesIssue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2195ED7DC();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v25[1] = v2;
    v25[2] = a2;
    v27 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v10, 0);
    v11 = v27;
    v12 = *(v5 + 80);
    v25[0] = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v26 = *(v5 + 72);
    do
    {
      sub_2195E5B7C(v13, v7, type metadata accessor for MyMagazinesIssue);
      v14 = [objc_msgSend(*v7 sourceChannel];
      swift_unknownObjectRelease();
      v15 = sub_219BF5414();
      v17 = v16;

      sub_219070458(v7, type metadata accessor for MyMagazinesIssue);
      v27 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21870B65C((v18 > 1), v19 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v13 += v26;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v27 = v11;
  sub_21870F4C4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_218ACCAC0();
  v21 = sub_219BF56E4();

  v22 = off_282A4D758;
  type metadata accessor for TagService();
  v23 = v22(v21);

  return v23;
}

uint64_t sub_2195E4F70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_21870F4C4(0, &qword_27CC13080, &type metadata for MagazineGridModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2195E5008(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(__n128), uint64_t a9, char a10)
{
  v84 = a8;
  v92 = a7;
  v88 = a6;
  v85 = a2;
  v86 = a1;
  v11 = type metadata accessor for MyMagazinesIssue(0);
  v91 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v83 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v83 - v18;
  if (a5 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v83 = v13;
    if (i)
    {
      v13 = 0;
      v93 = a5 & 0xFFFFFFFFFFFFFF8;
      v94 = a5 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F98];
      v89 = a5;
      v87 = v19;
      while (1)
      {
        if (v94)
        {
          v22 = MEMORY[0x21CECE0F0](v13, a5, v17);
          v23 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v13 >= *(v93 + 16))
          {
            goto LABEL_60;
          }

          v22 = *(a5 + 8 * v13 + 32);

          v23 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_59;
          }
        }

        v24 = [*(v22 + 16) identifier];
        v25 = sub_219BF5414();
        v27 = v26;

        a5 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v97 = v21;
        v19 = sub_21870F700(v25, v27);
        v30 = v21[2];
        v31 = (v29 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          goto LABEL_61;
        }

        v33 = v29;
        if (*(a5 + 24) >= v32)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v29)
            {
              goto LABEL_5;
            }
          }

          else
          {
            a5 = v97;
            sub_219492A6C();
            if (v33)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_219481C7C(v32, isUniquelyReferenced_nonNull_native);
          a5 = *v97;
          v34 = sub_21870F700(v25, v27);
          if ((v33 & 1) != (v35 & 1))
          {
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

          v19 = v34;
          if (v33)
          {
LABEL_5:

            v21 = *v97;
            *(*(*v97 + 56) + 8 * v19) = v22;

            goto LABEL_6;
          }
        }

        v21 = *v97;
        *(*v97 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        v36 = (v21[6] + 16 * v19);
        *v36 = v25;
        v36[1] = v27;
        *(v21[7] + 8 * v19) = v22;

        v37 = v21[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_63;
        }

        v21[2] = v39;
LABEL_6:
        ++v13;
        v19 = v87;
        a5 = v89;
        if (v23 == i)
        {
          goto LABEL_25;
        }
      }
    }

    v21 = MEMORY[0x277D84F98];
LABEL_25:
    v93 = v21;
    a5 = v88;
    sub_2195ED7DC();
    v41 = v40;
    v42 = MEMORY[0x277D84F90];
    v89 = *(v40 + 16);
    if (v89)
    {
      v43 = 0;
      v88 = v40;
      while (v43 < *(v41 + 16))
      {
        v13 = v42;
        v44 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v94 = *(v91 + 72);
        sub_2195E5B7C(v41 + v44 + v94 * v43, v19, type metadata accessor for MyMagazinesIssue);
        v45 = v92[24];
        ObjectType = swift_getObjectType();
        v47 = [*v19 identifier];
        v48 = v19;
        v49 = sub_219BF5414();
        v51 = v50;

        a5 = sub_21987B00C(v49, v51, ObjectType, v45);

        if (a5)
        {
          sub_2190704B8(v48, v90, type metadata accessor for MyMagazinesIssue);
          v42 = v13;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *v97 = v13;
          v19 = v48;
          if ((v52 & 1) == 0)
          {
            a5 = v97;
            sub_218C35030(0, *(v13 + 16) + 1, 1);
            v42 = *v97;
          }

          v41 = v88;
          v13 = v94;
          v54 = *(v42 + 16);
          v53 = *(v42 + 24);
          if (v54 >= v53 >> 1)
          {
            a5 = v97;
            sub_218C35030((v53 > 1), v54 + 1, 1);
            v42 = *v97;
          }

          *(v42 + 16) = v54 + 1;
          sub_2190704B8(v90, v42 + v44 + v54 * v13, type metadata accessor for MyMagazinesIssue);
        }

        else
        {
          sub_219070458(v48, type metadata accessor for MyMagazinesIssue);
          v19 = v48;
          v42 = v13;
          v41 = v88;
        }

        if (v89 == ++v43)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_36:

    v55 = *(v42 + 16);
    if (v55)
    {
      *v97 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v56 = v42 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v57 = *(v91 + 72);
      v58 = v83;
      do
      {
        sub_2195E5B7C(v56, v58, type metadata accessor for MyMagazinesIssue);
        v59 = *v58;
        sub_219070458(v58, type metadata accessor for MyMagazinesIssue);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v56 += v57;
        --v55;
      }

      while (v55);

      v60 = *v97;
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    a5 = *__swift_project_boxed_opaque_existential_1(v92 + 16, v92[19]);
    v13 = sub_21945CCB8(v60);

    v61 = *(v13 + 16);
    if (!v61)
    {
      break;
    }

    v62 = 0;
    v63 = v13 + 32;
    v92 = (v61 - 1);
    v64 = MEMORY[0x277D84F90];
    v94 = v13 + 32;
LABEL_43:
    v19 = v63 + 32 * v62;
    v65 = v62;
    while (v65 < *(v13 + 16))
    {
      v66 = *(v19 + 9);
      *v97 = *v19;
      *&v97[9] = v66;
      v67 = *v97;
      sub_218950CAC(v97, v95);
      v68 = [objc_msgSend(v67 sourceChannel)];
      swift_unknownObjectRelease();
      v69 = sub_219BF5414();
      v71 = v70;

      a5 = v93;
      if (*(v93 + 16))
      {
        a5 = sub_21870F700(v69, v71);
        v73 = v72;

        if (v73)
        {
          a5 = *(*(v93 + 56) + 8 * a5);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_2191FA8B4(0, *(v64 + 2) + 1, 1, v64);
          }

          v63 = v94;
          v75 = *(v64 + 2);
          v74 = *(v64 + 3);
          if (v75 >= v74 >> 1)
          {
            v64 = sub_2191FA8B4((v74 > 1), v75 + 1, 1, v64);
          }

          v62 = (v65 + 1);
          v76 = *&v97[16];
          v77 = v97[24];
          *(v64 + 2) = v75 + 1;
          v78 = &v64[120 * v75];
          v79 = *v97;
          *(v78 + 4) = a5;
          *(v78 + 40) = v79;
          *(v78 + 7) = v76;
          v78[64] = v77;
          LODWORD(v76) = *(v95 + 3);
          *(v78 + 65) = v95[0];
          *(v78 + 17) = v76;
          v78[96] = 0;
          *(v78 + 10) = 0;
          *(v78 + 11) = 0;
          *(v78 + 9) = 0;
          LODWORD(v76) = *&v98[3];
          *(v78 + 97) = *v98;
          *(v78 + 25) = v76;
          *(v78 + 136) = 0u;
          *(v78 + 120) = 0u;
          *(v78 + 104) = 0u;
          if (v92 != v65)
          {
            goto LABEL_43;
          }

          goto LABEL_57;
        }

        sub_218950D08(v97);
      }

      else
      {
        sub_218950D08(v97);
      }

      v65 = (v65 + 1);
      v19 += 32;
      if (v61 == v65)
      {
        goto LABEL_57;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_57:

  v81 = (v84)(v80);
  *v97 = v64;
  *&v97[16] = 0xE000000000000000;
  *&v97[24] = xmmword_219C0A870;
  v97[40] = 0;
  *&v97[48] = v81;
  v97[56] = a10;
  v95[0] = v64;
  v95[1] = *&v97[16];
  v96[0] = *&v97[32];
  *(v96 + 9) = *&v97[41];
  v86(v95);
  return sub_219093EAC(v97);
}

double sub_2195E58DC@<D0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_219C14CF0;
  *(v2 + 32) = 2;
  *a1 = v2 | 0x6000000000000006;
  return result;
}

uint64_t sub_2195E5958(uint64_t a1)
{
  result = sub_2195E59D0(&qword_27CC1CC78, &unk_219C90914);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2195E59D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MyMagazineDownloadsGridModelLoader();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2195E5A54()
{
  result = qword_27CC1CC88;
  if (!qword_27CC1CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CC88);
  }

  return result;
}

void sub_2195E5AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195E5B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_2195E5BE4()
{
  v0 = sub_2191FB00C(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_2191FB00C((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  *&v0[8 * v2 + 32] = &unk_282A28468;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_2191FB00C((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  *&v0[8 * v4 + 32] = &unk_282A28428;
  return v0;
}

uint64_t sub_2195E5CA8()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = *(type metadata accessor for MyMagazinesState(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = type metadata accessor for MyMagazinesIssue(0);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    v4 = v3[6];
    v5 = sub_219BDBD34();
    v10 = *(v5 - 8);
    v6 = *(v10 + 48);
    if (!v6(v2 + v4, 1, v5))
    {
      (*(v10 + 8))(v2 + v4, v5);
    }

    v7 = v3[7];
    if (!v6(v2 + v7, 1, v5))
    {
      (*(v10 + 8))(v2 + v7, v5);
    }

    v8 = v3[8];
    if (!v6(v2 + v8, 1, v5))
    {
      (*(v10 + 8))(v2 + v8, v5);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2195E5F78(void *a1)
{
  v3 = *(type metadata accessor for MyMagazinesState(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2195E4F70(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_2195E6068(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = *(a3 + 16);
  if (v18)
  {
    v5 = a1;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v19[0] = v10;
      v19[1] = v9;

      v11 = v5(v19);
      if (v3)
      {

        goto LABEL_15;
      }

      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21870B65C(0, *(v8 + 16) + 1, 1);
          v8 = v20;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21870B65C((v13 > 1), v14 + 1, 1);
          v8 = v20;
        }

        *(v8 + 16) = v14 + 1;
        v15 = v8 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        v4 = a3;
        v5 = a1;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v18 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_2195E61E0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_2187996EC(0, &qword_280E91D70, &qword_280E8E810, 0x277D312B0, MEMORY[0x277D31FA8]);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v9 + 8);
    v33 = (v9 + 32);
    v34 = v9 + 16;
    v13 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v15 = *(v9 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v12;
      v18 = v9;
      v19 = a1;
      v20 = v37;
      (*(v9 + 16))(v37, v17, v39, v10);
      v21 = v20;
      a1 = v19;
      v22 = v38;
      v23 = v19(v21);
      if (v22)
      {
        (*v32)(v37, v39);

        return;
      }

      v38 = 0;
      if (v23)
      {
        v24 = *v33;
        (*v33)(v36, v37, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34408(0, *(v13 + 16) + 1, 1);
          v13 = v40;
        }

        v27 = *(v13 + 16);
        v26 = *(v13 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_218C34408((v26 > 1), v27 + 1, 1);
          v13 = v40;
        }

        *(v13 + 16) = v27 + 1;
        v24((v13 + v14 + v27 * v15), v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        (*v32)(v37, v39);
        a3 = v16;
      }

      ++v12;
      v9 = v18;
      if (v35 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void *sub_2195E64D8(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_219BF7214();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x21CECE0F0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_219BF73D4();
          sub_219BF7414();
          v5 = v14;
          sub_219BF7424();
          v3 = &v18;
          sub_219BF73E4();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_2195E66FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x21CECE0F0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_219BF73D4();
        sub_219BF7414();
        v4 = v15;
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

void sub_2195E69E0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v24 = a7;
  v29 = a6;
  v31 = a1;
  v32 = a2;
  v10 = a4(0);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v27 = *(a3 + 16);
  if (v27)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v25 = a5;
    v26 = a3;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v18 = *(v30 + 72);
      sub_2195EB0C8(a3 + v17 + v18 * v15, v14, a5);
      v19 = v31(v14);
      if (v7)
      {
        sub_218807FB4(v14, a5);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_2195EB210(v14, v28, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24(0, *(v16 + 16) + 1, 1);
          v16 = v33;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          v24(v21 > 1, v22 + 1, 1);
          v16 = v33;
        }

        *(v16 + 16) = v22 + 1;
        sub_2195EB210(v28, v16 + v17 + v22 * v18, v29);
        a5 = v25;
        a3 = v26;
      }

      else
      {
        sub_218807FB4(v14, a5);
      }

      if (v27 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_2195E6C2C(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (v7 < *(a3 + 16))
    {
      v9 = a3 + 32 * v7;
      v10 = *(v9 + 48);
      v17 = *(v9 + 32);
      v18[0] = v17;
      v18[1] = v10;
      v16 = v10;

      v11 = a1(v18);
      if (v3)
      {

        return;
      }

      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C36A50(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_218C36A50((v13 > 1), v14 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v14 + 1;
        v15 = v8 + 32 * v14;
        *(v15 + 32) = v17;
        *(v15 + 48) = v16;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void sub_2195E6DBC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (v7 < *(a3 + 16))
    {
      v9 = *(a3 + 8 * v7 + 32);
      v15 = v9;

      v10 = v6(&v15);
      if (v3)
      {

        return;
      }

      if (v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C37210(0, *(v8 + 16) + 1, 1);
          v8 = v16;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_218C37210((v12 > 1), v13 + 1, 1);
          v8 = v16;
        }

        *(v8 + 16) = v13 + 1;
        *(v8 + 8 * v13 + 32) = v9;
        v6 = a1;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void *sub_2195E6F24(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_219BF7214();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x21CECE0F0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            swift_unknownObjectRelease();

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_219BF73D4();
          sub_219BF7414();
          v5 = v14;
          sub_219BF7424();
          v3 = &v18;
          sub_219BF73E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_2195E70E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195EB0C8(a3, v10, sub_218760638);
  v11 = sub_219BF5BF4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_218807FB4(v10, sub_218760638);
  }

  else
  {
    sub_219BF5BE4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_219BF5B44();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_219BF54B4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_218807FB4(a3, sub_218760638);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218807FB4(a3, sub_218760638);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2195E7394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195EB0C8(a3, v10, sub_218760638);
  v11 = sub_219BF5BF4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_218807FB4(v10, sub_218760638);
  }

  else
  {
    sub_219BF5BE4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_219BF5B44();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a3;
      v18 = sub_219BF54B4() + 32;
      sub_2187996EC(0, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, MEMORY[0x277D83940]);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_218807FB4(v22[0], sub_218760638);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218807FB4(a3, sub_218760638);
  sub_2187996EC(0, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, MEMORY[0x277D83940]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2195E770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195EB0C8(a3, v12, sub_218760638);
  v13 = sub_219BF5BF4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_218807FB4(v12, sub_218760638);
  }

  else
  {
    sub_219BF5BE4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_219BF5B44();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_219BF54B4() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_218807FB4(a3, sub_218760638);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218807FB4(a3, sub_218760638);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2195E79DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195EB0C8(a3, v10, sub_218760638);
  v11 = sub_219BF5BF4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_218807FB4(v10, sub_218760638);
  }

  else
  {
    sub_219BF5BE4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_219BF5B44();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a3;
      v18 = sub_219BF54B4() + 32;
      sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_218807FB4(v22[0], sub_218760638);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218807FB4(a3, sub_218760638);
  sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id PushNotificationDataManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_userInfo] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2195E7F00(char a1, const char **a2)
{
  v5 = *(*__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService), *(v2 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24)) + 16);
  v6 = *a2;

  return [v5 v6];
}

Swift::Void __swiftcall PushNotificationDataManager.refreshSportsNotifications()()
{
  if ([*(v0 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_userInfo) sportsTopicNotificationsEnabledState] != 3)
  {
    return;
  }

  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_subscriptionController) cachedSubscribedTags];
  if (!v1)
  {
    goto LABEL_40;
  }

  v2 = v1;
  v23 = v0;
  sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
  v3 = sub_219BF5924();

  v24 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v6, v3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_16:
          __break(1u);
          return;
        }
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_33:
          v4 = sub_219BF7214();
          goto LABEL_5;
        }

        v7 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_16;
        }
      }

      if ([v7 isSports])
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v6;
      if (v8 == v4)
      {
        v9 = v24;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_20:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_219BF7214();
    if (v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = *(v9 + 16);
    if (v10)
    {
LABEL_23:
      sub_21870B65C(0, v10 & ~(v10 >> 63), 0);
      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = 0;
        v12 = v5;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x21CECE0F0](v11, v9);
          }

          else
          {
            v13 = *(v9 + 8 * v11 + 32);
            swift_unknownObjectRetain();
          }

          v14 = [v13 identifier];
          v15 = sub_219BF5414();
          v17 = v16;
          swift_unknownObjectRelease();

          v19 = *(v12 + 16);
          v18 = *(v12 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_21870B65C((v18 > 1), v19 + 1, 1);
          }

          ++v11;
          *(v12 + 16) = v19 + 1;
          v20 = v12 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
        }

        while (v10 != v11);

        goto LABEL_36;
      }

      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_36:
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v12;

  sub_2195E84E4(1, sub_2195EAE18, v22, 30.0);
}

void *sub_2195E8388(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_218718690(result + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService, v10);

    v5 = *(*__swift_project_boxed_opaque_existential_1(v10, v10[3]) + 24);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a2;
    v9[4] = sub_2195EB208;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_218C1CBB4;
    v9[3] = &block_descriptor_83_0;
    v8 = _Block_copy(v9);

    [v5 fetchConfigurationIfNeededWithCompletion_];
    _Block_release(v8);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

void sub_2195E84E4(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  sub_218760638(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_debounceTasks;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (*(v14 + 16) && (v15 = sub_219320C08(), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 24 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    swift_retain_n();

    swift_endAccess();
    sub_2195EAE50(v18);
    sub_218A450F0();
    sub_219BF5C14();
  }

  else
  {
    swift_endAccess();
  }

  v22 = sub_219BF5BF4();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = a4;
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;

  v24 = sub_2195E70E0(0, 0, v12, &unk_219C90BE0, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v5 + v13);
  *(v5 + v13) = 0x8000000000000000;
  sub_21948CFE8(v24, sub_218807D50, v25, a1 & 1, isUniquelyReferenced_nonNull_native);
  *(v5 + v13) = v27;
  swift_endAccess();
}

Swift::Void __swiftcall PushNotificationDataManager.upgradeSportsNotifications()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_userInfo];
  if ([v2 sportsTopicNotificationsEnabledState] == 1)
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F62670);
    v4 = sub_219BE5414();
    v5 = sub_219BF6214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "Upgrading sports notifications enabled state.", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    v7 = *(*__swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v1[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 16);

    [v7 setSportsTopicNotificationsEnabled_];
  }

  else
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_280F62670);
    v12 = v0;
    oslog = sub_219BE5414();
    v9 = sub_219BF6214();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = [v2 sportsTopicNotificationsEnabledState];

      _os_log_impl(&dword_2186C1000, oslog, v9, "Will not upgrade sports notifications with sportsTopicNotificationsEnabledState=%lu", v10, 0xCu);
      MEMORY[0x21CECF960](v10, -1, -1);
      v11 = oslog;
    }

    else
    {

      v11 = v12;
    }
  }
}

id PushNotificationDataManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2195E8B48(char a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v7 = *(*__swift_project_boxed_opaque_existential_1((*v4 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService), *(*v4 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24)) + 16);
  v8 = *a4;

  return [v7 v8];
}

double PushNotificationDataManager.userInfoDidChangeSportsTopicNotificationsEnabledState(_:fromCloud:)(void *a1, char a2)
{
  if ([a1 sportsTopicNotificationsEnabledState] == 2)
  {
    v6 = OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_debounceTasks;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (*(v7 + 16) && (v8 = sub_219320C08(), (v9 & 1) != 0))
    {
      v10 = (*(v7 + 56) + 24 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = v13;
      swift_retain_n();

      swift_endAccess();
      sub_2195EAE50(v11);
      sub_218A450F0();
      sub_219BF5C14();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v15 = sub_2195EA76C();
    swift_endAccess();
    result = sub_2195EAE50(v15);
  }

  if ((a2 & 1) == 0)
  {
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;

    v18 = a1;
    sub_2195E84E4(0, sub_2195EAE20, v17, 0.3);
  }

  return result;
}

void sub_2195E8EA0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_subscriptionController) cachedSubscribedTags];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v42 = a2;
    sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
    v7 = sub_219BF5924();

    aBlock = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_32;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v43 = v4;
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v10 = 0;
      v4 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v4)
        {
          v11 = MEMORY[0x21CECE0F0](v10, v7);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v13 = aBlock;
            v9 = MEMORY[0x277D84F90];
            goto LABEL_19;
          }
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_32:
            v8 = sub_219BF7214();
            goto LABEL_5;
          }

          v11 = *(v7 + 8 * v10 + 32);
          swift_unknownObjectRetain();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_16;
          }
        }

        if ([v11 isSports])
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v10;
        if (v12 == v8)
        {
          goto LABEL_17;
        }
      }
    }

    v13 = MEMORY[0x277D84F90];
LABEL_19:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      v14 = sub_219BF7214();
      if (v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v14 = *(v13 + 16);
      if (v14)
      {
LABEL_22:
        aBlock = v9;
        sub_21870B65C(0, v14 & ~(v14 >> 63), 0);
        if (v14 < 0)
        {
          __break(1u);
          goto LABEL_51;
        }

        v15 = 0;
        v7 = aBlock;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x21CECE0F0](v15, v13);
          }

          else
          {
            v16 = *(v13 + 8 * v15 + 32);
            swift_unknownObjectRetain();
          }

          v17 = [v16 identifier];
          v18 = sub_219BF5414();
          v20 = v19;
          swift_unknownObjectRelease();

          aBlock = v7;
          v22 = *(v7 + 16);
          v21 = *(v7 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_21870B65C((v21 > 1), v22 + 1, 1);
            v7 = aBlock;
          }

          ++v15;
          *(v7 + 16) = v22 + 1;
          v23 = v7 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
        }

        while (v14 != v15);

LABEL_35:
        v24 = [v42 sportsTopicNotificationsEnabledState];
        v9 = v43;
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v25 = *(*__swift_project_boxed_opaque_existential_1(&v43[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v43[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
            v39 = swift_allocObject();
            swift_weakInit();
            v40 = swift_allocObject();
            *(v40 + 16) = v39;
            *(v40 + 24) = v7;
            v48 = sub_2195EB28C;
            v49 = v40;
            aBlock = MEMORY[0x277D85DD0];
            v45 = 1107296256;
            v28 = &block_descriptor_48_0;
            goto LABEL_48;
          }

          if (v24 == 3)
          {
            v25 = *(*__swift_project_boxed_opaque_existential_1(&v43[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v43[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
            v29 = swift_allocObject();
            swift_weakInit();
            v30 = swift_allocObject();
            *(v30 + 16) = v29;
            *(v30 + 24) = v7;
            v48 = sub_2195EB290;
            v49 = v30;
            aBlock = MEMORY[0x277D85DD0];
            v45 = 1107296256;
            v28 = &block_descriptor_63_0;
            goto LABEL_48;
          }

LABEL_42:
          v25 = *(*__swift_project_boxed_opaque_existential_1(&v43[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v43[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
          v31 = swift_allocObject();
          swift_weakInit();
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          *(v32 + 24) = v7;
          v48 = sub_2195EB130;
          v49 = v32;
          aBlock = MEMORY[0x277D85DD0];
          v45 = 1107296256;
          v28 = &block_descriptor_144;
          goto LABEL_48;
        }

        if (v24)
        {
          if (v24 == 1)
          {
            v25 = *(*__swift_project_boxed_opaque_existential_1(&v43[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v43[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
            v26 = swift_allocObject();
            swift_weakInit();
            v27 = swift_allocObject();
            *(v27 + 16) = v26;
            *(v27 + 24) = v7;
            v48 = sub_2195EB138;
            v49 = v27;
            aBlock = MEMORY[0x277D85DD0];
            v45 = 1107296256;
            v28 = &block_descriptor_55_0;
LABEL_48:
            v46 = sub_218C1CBB4;
            v47 = v28;
            v41 = _Block_copy(&aBlock);

            [v25 fetchConfigurationIfNeededWithCompletion_];
            _Block_release(v41);

            return;
          }

          goto LABEL_42;
        }

        if (qword_280EE5FC8 == -1)
        {
LABEL_44:
          v33 = sub_219BE5434();
          __swift_project_value_buffer(v33, qword_280F62670);
          v34 = sub_219BE5414();
          v35 = sub_219BF6214();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_2186C1000, v34, v35, "sportsTopicNotificationsEnabledState switching to unknown, should not switch to unknown state unless feature availability is toggled", v36, 2u);
            MEMORY[0x21CECF960](v36, -1, -1);
          }

          v25 = *(*__swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v9[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
          v37 = swift_allocObject();
          swift_weakInit();
          v38 = swift_allocObject();
          *(v38 + 16) = v37;
          *(v38 + 24) = v7;
          v48 = sub_2195EB28C;
          v49 = v38;
          aBlock = MEMORY[0x277D85DD0];
          v45 = 1107296256;
          v28 = &block_descriptor_40_2;
          goto LABEL_48;
        }

LABEL_51:
        swift_once();
        goto LABEL_44;
      }
    }

    v7 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }
}

Swift::Void __swiftcall PushNotificationDataManager.sceneDidEnterBackground()()
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v5 = OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_debounceTasks;
  swift_beginAccess();
  v28 = v5;
  v29 = v0;
  v6 = *(v0 + v5);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v31 = v6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v30 = v11;
  while (v10)
  {
    v13 = v32;
LABEL_12:
    v15 = (*(v31 + 56) + 24 * (__clz(__rbit64(v10)) | (v12 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    sub_218A450F0();
    v33 = v18;
    swift_retain_n();

    sub_219BF5C14();
    v20 = sub_219BF5BF4();
    v21 = *(v20 - 8);
    v22 = v34;
    (*(v21 + 56))(v34, 1, 1, v20);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v17;
    v23[5] = sub_2195EB2DC;
    v23[6] = v19;
    sub_2195EB0C8(v22, v13, sub_218760638);
    LODWORD(v22) = (*(v21 + 48))(v13, 1, v20);

    if (v22 == 1)
    {
      sub_218807FB4(v13, sub_218760638);
    }

    else
    {
      sub_219BF5BE4();
      (*(v21 + 8))(v13, v20);
    }

    v24 = v23[2];
    swift_unknownObjectRetain();

    if (v24)
    {
      swift_getObjectType();
      v25 = sub_219BF5B44();
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_218807FB4(v34, sub_218760638);
    if (v27 | v25)
    {
      v35 = 0;
      v36 = 0;
      v37 = v25;
      v38 = v27;
    }

    v10 &= v10 - 1;
    swift_task_create();

    v11 = v30;
  }

  v13 = v32;
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      *(v29 + v28) = MEMORY[0x277D84F98];

      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2195E9AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v8 = sub_219BF5B84();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[8] = v9;
  v10 = sub_218A450F0();
  v6[9] = v10;
  *v9 = v6;
  v9[1] = sub_2195E9BE0;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v10, a4, v12, v10, v11);
}

uint64_t sub_2195E9BE0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2195E9CF4;
  }

  else
  {
    v2 = sub_219040A34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195E9CF4()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);

    v6();
    (*(v4 + 8))(v3, v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2195E9E04(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = sub_219BF7464();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195E9EC8, 0, 0);
}

uint64_t sub_2195E9EC8()
{
  v1 = sub_219BF7C34();
  v3 = v2;
  sub_219BF79D4();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2195E9FA4;

  return sub_21907C5A0(v1, v3, 0, 0, 1);
}

uint64_t sub_2195E9FA4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_218C6D370;
  }

  else
  {
    v5 = sub_2195EA114;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2195EA114()
{
  v1 = *(v0 + 72);
  v2 = sub_219BF5C34();
  if (!v1)
  {
    (*(v0 + 24))(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2195EA2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_21870F700(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = (a3)(0);
    v27 = *(v20 - 8);
    sub_2195EB210(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = (a3)(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

double sub_2195EA4A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21870F700(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_219492468();
      v10 = v12;
    }

    sub_218751558((*(v10 + 56) + 32 * v8), a3);
    sub_2194896A8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2195EA5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_21870F700(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = (a3)(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    a4(v14, v16);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = (a3)(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_2195EA76C()
{
  v1 = v0;
  v2 = sub_219320C08();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_219492E34();
    v6 = v10;
  }

  v7 = v4;
  v8 = *(*(v6 + 56) + 24 * v4);
  sub_219489A58(v7, v6);
  *v1 = v6;
  return v8;
}

double sub_2195EA89C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_2187539B8(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    sub_218720434(*(*(v16 + 48) + 16 * v14), *(*(v16 + 48) + 16 * v14 + 8));
    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2195EA970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21870F700(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21949420C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_21948A824(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_2195EAB0C@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, _OWORD *)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = sub_218751790(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = sub_219BF74C4();
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    a2(*(v15 + 56) + 32 * v13, a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

double sub_2195EAC48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_21870F700(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

double sub_2195EAE50(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_2195EAE90(uint64_t a1)
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

  return sub_2195E9AC0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2195EB074()
{
  result = qword_280EB7A78;
  if (!qword_280EB7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7A78);
  }

  return result;
}

uint64_t sub_2195EB0C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195EB140(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_2195E9E04(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_2195EB210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195EB304(uint64_t a1)
{
  v2 = sub_2195EB4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195EB340(uint64_t a1)
{
  v2 = sub_2195EB4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2195EB37C(void *a1)
{
  sub_2195EB488(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195EB4E4();
  sub_219BF7B44();
  return (*(v4 + 8))(v6, v3);
}

void sub_2195EB488(uint64_t a1)
{
  if (!qword_27CC1CCC0)
  {
    sub_2195EB4E4();
    v1 = sub_219BF7864();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1CCC0);
    }
  }
}

unint64_t sub_2195EB4E4()
{
  result = qword_27CC1CCC8;
  if (!qword_27CC1CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CCC8);
  }

  return result;
}

unint64_t sub_2195EB54C()
{
  result = qword_27CC1CCD0;
  if (!qword_27CC1CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CCD0);
  }

  return result;
}

unint64_t sub_2195EB5A4()
{
  result = qword_27CC1CCD8;
  if (!qword_27CC1CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CCD8);
  }

  return result;
}

uint64_t sub_2195EB5F8@<X0>(void (*a1)(uint64_t, char *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v72 = a1;
  v73 = a3;
  v4 = sub_219BF0204();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v66 - v8;
  v9 = sub_219BEF814();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218CC83C8(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195ECF18(0, &qword_280E90FF0, MEMORY[0x277D32BE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66 - v18;
  v71 = v3;
  sub_2197DE05C(v3, &v66 - v18);
  v20 = *(v14 + 56);
  sub_2189B7614(v72, v16);
  v21 = v19;
  v22 = v5;
  sub_219000CD0(v21, &v16[v20]);
  LODWORD(v14) = (*(v10 + 48))(v16, 1, v9);
  v23 = (v5[6])(&v16[v20], 1, v4);
  v24 = v23;
  if (v14 == 1)
  {
    if (v23 == 1)
    {
      return (*(v10 + 56))(v73, 1, 1, v9);
    }

    else
    {
      v38 = v70;
      v22[4](v70, &v16[v20], v4);
      v39 = v22;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v40 = qword_280F61708;
      sub_2195ECF18(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_219C09EC0;
      v42 = sub_2199765A8(v71);
      v44 = v43;
      v45 = MEMORY[0x277D837D0];
      *(v41 + 56) = MEMORY[0x277D837D0];
      v46 = sub_2186FC3BC();
      *(v41 + 64) = v46;
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_219BF7484();
      v47 = v74;
      v48 = v75;
      *(v41 + 96) = v45;
      *(v41 + 104) = v46;
      *(v41 + 72) = v47;
      *(v41 + 80) = v48;
      v49 = sub_219BF6214();
      sub_219BE5314("%{public}@ emitter will merge overrides %{public}@ onto empty clustering knobs", 78, 2, &dword_2186C1000, v40, v49, v41);

      v39[2](v69, v38, v4);
      sub_219BEF804();
      return (v39[1])(v38, v4);
    }
  }

  else
  {
    v26 = *(v10 + 32);
    (v26)(v12, v16, v9);
    if (v24 == 1)
    {
      v72 = v26;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v27 = qword_280F61708;
      sub_2195ECF18(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_219C09EC0;
      v29 = sub_2199765A8(v71);
      v31 = v30;
      v32 = MEMORY[0x277D837D0];
      *(v28 + 56) = MEMORY[0x277D837D0];
      v33 = sub_2186FC3BC();
      *(v28 + 64) = v33;
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_219BF7484();
      v34 = v74;
      v35 = v75;
      *(v28 + 96) = v32;
      *(v28 + 104) = v33;
      *(v28 + 72) = v34;
      *(v28 + 80) = v35;
      v36 = sub_219BF6214();
      sub_219BE5314("%{public}@ emitter has no overrides to merge onto clustering knobs %{public}@", 77, 2, &dword_2186C1000, v27, v36, v28);

      v37 = v73;
      (v72)(v73, v12, v9);
    }

    else
    {
      v72 = v12;
      v50 = v22[4];
      v51 = &v16[v20];
      v52 = v70;
      v67 = v4;
      v50(v70, v51, v4);
      v69 = v22;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v68 = qword_280F61708;
      sub_2195ECF18(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_219C0B8C0;
      v54 = sub_2199765A8(v71);
      v56 = v55;
      v57 = MEMORY[0x277D837D0];
      *(v53 + 56) = MEMORY[0x277D837D0];
      v58 = sub_2186FC3BC();
      *(v53 + 64) = v58;
      *(v53 + 32) = v54;
      *(v53 + 40) = v56;
      v74 = 0;
      v75 = 0xE000000000000000;
      v59 = v67;
      sub_219BF7484();
      v60 = v74;
      v61 = v75;
      *(v53 + 96) = v57;
      *(v53 + 104) = v58;
      *(v53 + 72) = v60;
      *(v53 + 80) = v61;
      v74 = 0;
      v75 = 0xE000000000000000;
      v62 = v72;
      sub_219BF7484();
      v63 = v74;
      v64 = v75;
      *(v53 + 136) = MEMORY[0x277D837D0];
      *(v53 + 144) = v58;
      *(v53 + 112) = v63;
      *(v53 + 120) = v64;
      v65 = sub_219BF6214();
      sub_219BE5314("%{public}@ emitter will merge overrides %{public}@ onto clustering knobs %{public}@", 83, 2, &dword_2186C1000, v68, v65, v53);

      v37 = v73;
      sub_219BEF7D4();
      (*(v69 + 1))(v52, v59);
      (*(v10 + 8))(v62, v9);
    }

    return (*(v10 + 56))(v37, 0, 1, v9);
  }
}

uint64_t sub_2195EBDB4@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();

  if (v3)
  {
    *a1 = 0xD000000000000029;
    a1[1] = 0x8000000219D28DE0;
    v4 = MEMORY[0x277D328F0];
  }

  else
  {
    v4 = MEMORY[0x277D328E8];
  }

  v5 = *v4;
  v6 = sub_219BEFBB4();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_2195EBE9C@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  sub_219BEF0B4();
  v5 = *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v6 = sub_219BF6394();

  v7 = [v6 identifier];
  swift_unknownObjectRelease();
  v8 = sub_219BF5414();
  v10 = v9;

  LOBYTE(v8) = sub_2188537B8(v8, v10, a1);

  if (v8)
  {
    *a2 = 0xD000000000000025;
    a2[1] = 0x8000000219D28FA0;
    v11 = MEMORY[0x277D328F0];
  }

  else
  {
    v11 = MEMORY[0x277D328E8];
  }

  v12 = *v11;
  v13 = sub_219BEFBB4();
  return (*(*(v13 - 8) + 104))(a2, v12, v13);
}

uint64_t sub_2195EBFE0@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v3 = *(v10 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v4 = [v3 backingTag];

  v5 = [v4 asSports];
  swift_unknownObjectRelease();
  if (v5)
  {
    swift_unknownObjectRelease();
    v6 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000028;
    a1[1] = 0x8000000219D29010;
    v6 = MEMORY[0x277D328F0];
  }

  v7 = *v6;
  v8 = sub_219BEFBB4();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_2195EC100@<X0>(unint64_t *a1@<X8>)
{
  sub_219BEF0B4();
  v3 = *(v10 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState);

  if (v3 == 1)
  {
    v6 = MEMORY[0x277D328E8];
  }

  else
  {
    if (v3)
    {
      v4 = 0x8000000219D28FD0;
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x8000000219D29040;
      v5 = 0xD00000000000001CLL;
    }

    *a1 = v5;
    a1[1] = v4;
    v6 = MEMORY[0x277D328F0];
  }

  v7 = *v6;
  v8 = sub_219BEFBB4();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_2195EC1E8@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v3 = *(v9 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability);
  swift_unknownObjectRetain();

  v4 = [v3 puzzlesEnabled];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000016;
    a1[1] = 0x8000000219D28E10;
    v5 = MEMORY[0x277D328F0];
  }

  v6 = *v5;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_2195EC2D8@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v3 = *(v14 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v4 = [v3 backingTag];

  LODWORD(v3) = [v4 isPuzzleHub];
  swift_unknownObjectRelease();
  if ((v3 || (sub_219BEF0B4(), v5 = *(v13 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor), , v6 = [v5 backingTag], v5, LODWORD(v5) = objc_msgSend(v6, sel_isPuzzleType), swift_unknownObjectRelease(), v5)) && (sub_219BEF0B4(), v7 = *(v14 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability), swift_unknownObjectRetain(), , v8 = objc_msgSend(v7, sel_puzzlesEnabled), swift_unknownObjectRelease(), !v8))
  {
    *a1 = 0xD000000000000034;
    a1[1] = 0x8000000219D28F60;
    v9 = MEMORY[0x277D328F0];
  }

  else
  {
    v9 = MEMORY[0x277D328E8];
  }

  v10 = *v9;
  v11 = sub_219BEFBB4();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_2195EC49C@<X0>(unint64_t *a1@<X8>)
{
  sub_219BEF0B4();
  v3 = *(v10 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState);

  if (v3 == 1)
  {
    v5 = 0x8000000219D28FF0;
    v6 = 0xD000000000000018;
LABEL_6:
    *a1 = v6;
    a1[1] = v5;
    v4 = MEMORY[0x277D328F0];
    goto LABEL_7;
  }

  if (v3)
  {
    v5 = 0x8000000219D28FD0;
    v6 = 0xD000000000000011;
    goto LABEL_6;
  }

  v4 = MEMORY[0x277D328E8];
LABEL_7:
  v7 = *v4;
  v8 = sub_219BEFBB4();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_2195EC584@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v3 = *(v9 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v4 = [v3 backingChannel];

  if (v4)
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000029;
    a1[1] = 0x8000000219D28F30;
    v5 = MEMORY[0x277D328F0];
  }

  v6 = *v5;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_2195EC680@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (a2 && (sub_219BEF0B4(), v7 = *(v14 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController), , v8 = sub_219BF53D4(), v9 = [v7 hasMutedSubscriptionForTagID_], v7, v8, v9))
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000038, 0x8000000219CF7F50);
    MEMORY[0x21CECC330](a1, a2);
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    v10 = MEMORY[0x277D328F0];
  }

  else
  {
    v10 = MEMORY[0x277D328E8];
  }

  v11 = *v10;
  v12 = sub_219BEFBB4();
  return (*(*(v12 - 8) + 104))(a3, v11, v12);
}

uint64_t sub_2195EC7D0@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v3 = *(v9 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability);
  swift_unknownObjectRetain();

  v4 = [v3 enableSponsoredSuperfeeds];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000021;
    a1[1] = 0x8000000219D28DB0;
    v5 = MEMORY[0x277D328F0];
  }

  v6 = *v5;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_2195EC8C0@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v3 = *(v11 + 16);

  v4 = *(v3 + 32);

  v5 = [v4 backingTag];

  LODWORD(v4) = [v5 sponsoredFeedEligible];
  swift_unknownObjectRelease();
  if (v4 || (sub_219BDC8D4(), sub_219BDC8B4(), sub_219BDC584(), sub_219BDC564(), , sub_219BDC8A4(), , , v10 == 1))
  {
    v6 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD00000000000002BLL;
    a1[1] = 0x8000000219D28D80;
    v6 = MEMORY[0x277D328F0];
  }

  v7 = *v6;
  v8 = sub_219BEFBB4();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_2195ECA30@<X0>(uint64_t a2@<X8>)
{
  sub_218A59E00(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC584();
  sub_219BDC554();

  sub_219BDC8A4();

  if (v11[15] == 1)
  {
    v8 = *MEMORY[0x277D328E8];
    v9 = sub_219BEFBB4();
    return (*(*(v9 - 8) + 104))(a2, v8, v9);
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D322F8], v4);
    sub_219BEEC44();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2195ECBE8(uint64_t a1)
{
  sub_2195ECF18(0, &qword_280E90840, MEMORY[0x277D33470], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  v4 = sub_219BF1904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186F7CA4();
  result = sub_219BEF3E4();
  v13 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v14 = 0;
    v24 = result + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v25 = v9;
    v15 = (v5 + 48);
    v22 = (v5 + 32);
    v16 = (v5 + 8);
    while (v14 < *(v13 + 16))
    {
      sub_218B21BF8(v24 + *(v25 + 72) * v14, v11);
      sub_2195A5C88(v3);
      if ((*v15)(v3, 1, v4) == 1)
      {
        sub_21899DD98(v3);
      }

      else
      {
        (*v22)(v7, v3, v4);
        v17 = sub_219BF1834();
        (*v16)(v7, v4);
        v18 = *(v17 + 16);

        if (v18)
        {
          sub_21932BA54(v11);
LABEL_15:

          return 1;
        }
      }

      v19 = sub_2195B2570();
      if (v19 >> 62)
      {
        v21[1] = v19;
        v20 = sub_219BF7214();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = sub_21932BA54(v11);
      if (v20)
      {
        goto LABEL_15;
      }

      if (v23 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return 0;
  }

  return result;
}

void sub_2195ECF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2195ECF7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2195ED01C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

void sub_2195ED0E0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for MyMagazinesIssue(0);
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v48 = &v48 - v12;
  v13 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v13);
  v51 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726800(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v48 - v19;
  (*(a3 + 8))(a2, a3, v18);
  sub_219BE1A44();

  sub_219BE2184();

  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277D6C9F0])
  {
    goto LABEL_2;
  }

  if (v21 == *MEMORY[0x277D6C9E8])
  {
    (*(v17 + 96))(v20, v16);
    v22 = v51;
    sub_2190704B8(v20, v51, type metadata accessor for MyMagazinesState);
    sub_2195FA9C8(v22, v7, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v23 = v49;
    if ((*(v49 + 48))(v7, 1, v8) == 1)
    {
      sub_2195FAA48(v7, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
      v24 = *(v22 + *(v13 + 20));
    }

    else
    {
      v25 = v48;
      sub_2190704B8(v7, v48, type metadata accessor for MyMagazinesIssue);
      sub_218726800(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
      v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_219C09BA0;
      sub_2195E5B7C(v25, v27 + v26, type metadata accessor for MyMagazinesIssue);
      *v53 = v27;

      sub_2191EDC74(v28);
      sub_2195FAE60(v25, type metadata accessor for MyMagazinesIssue);
      v24 = *v53;
    }

    v29 = v50;
    v30 = *(v24 + 16);
    if (v30)
    {
      *v53 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v31 = v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v32 = *(v23 + 72);
      do
      {
        sub_2195E5B7C(v31, v10, type metadata accessor for MyMagazinesIssue);
        v33 = *v10;
        sub_2195FAE60(v10, type metadata accessor for MyMagazinesIssue);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v31 += v32;
        --v30;
      }

      while (v30);

      v34 = *v53;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v35 = sub_21945CCB8(v34);

    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = MEMORY[0x277D84F90];
      do
      {
        v39 = (v35 + 32 + 32 * v37);
        v40 = v37;
        while (1)
        {
          if (v40 >= *(v35 + 16))
          {
            __break(1u);
            return;
          }

          v41 = *(v39 + 9);
          *v53 = *v39;
          *&v53[9] = v41;
          v42 = *v53;
          sub_218950CAC(v53, v52);
          if ([v42 isCurrent])
          {
            if ((v53[9] & 1) != 0 && v53[8] != 1)
            {
              break;
            }
          }

          sub_218950D08(v53);
          ++v40;
          v39 += 2;
          if (v36 == v40)
          {
            goto LABEL_27;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34868(0, *(v38 + 16) + 1, 1);
          v38 = v54;
        }

        v45 = *(v38 + 16);
        v44 = *(v38 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_218C34868((v44 > 1), v45 + 1, 1);
          v38 = v54;
        }

        v37 = v40 + 1;
        *(v38 + 16) = v45 + 1;
        v46 = v38 + 32 * v45;
        v47 = *v53;
        *(v46 + 41) = *&v53[9];
        *(v46 + 32) = v47;
      }

      while (v36 - 1 != v40);
    }

LABEL_27:
    sub_2195FAE60(v22, type metadata accessor for MyMagazinesState);
  }

  else if (v21 != *MEMORY[0x277D6C9E0])
  {
LABEL_2:
    (*(v17 + 8))(v20, v16);
  }
}

void sub_2195ED7DC()
{
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  v4 = type metadata accessor for MyMagazinesIssue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195FA9C8(v0, v3, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2195FAA48(v3, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    type metadata accessor for MyMagazinesState(0);
  }

  else
  {
    sub_2190704B8(v3, v7, type metadata accessor for MyMagazinesIssue);
    sub_218726800(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    sub_2195E5B7C(v7, v9 + v8, type metadata accessor for MyMagazinesIssue);
    type metadata accessor for MyMagazinesState(0);
    v11[1] = v9;

    sub_2191EDC74(v10);
    sub_2195FAE60(v7, type metadata accessor for MyMagazinesIssue);
  }
}

uint64_t sub_2195EDA5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a5;
  v14 = a4;
  sub_2195FB9FC(0, &unk_280E8C4C0, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195FB9A8();
  sub_219BF7B44();
  v18 = 0;
  sub_219BF7794();
  if (!v5)
  {
    v15 = v14;
    v17 = 1;
    sub_2195FC568(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218753394(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_219BF7834();
    v16 = 2;
    sub_219BF7824();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2195EDC74()
{
  v1 = 0x7349746E65636572;
  if (*v0 != 1)
  {
    v1 = 0x657573734977656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2195EDCEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2195FB5BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2195EDD14(uint64_t a1)
{
  v2 = sub_2195FB9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195EDD50(uint64_t a1)
{
  v2 = sub_2195FB9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2195EDD8C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2195FB6F0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_2195EDDDC(uint64_t a1@<X8>)
{
  v58 = a1;
  v60 = sub_219BDBD34();
  v2 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v49 - v5;
  v6 = MEMORY[0x277CC9578];
  sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v49 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  sub_2195FAF94(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 8);
  v59 = type metadata accessor for MyMagazinesIssue(0);
  v22 = *(v18 + 56);
  v23 = v1;
  v53 = v59[8];
  sub_2195FA9C8(v1 + v53, &v20[v22], &qword_280EE9C40, v6);
  if (v21 == 2 && (v24 = v2[6], (v24)(&v20[v22], 1, v60) == 1))
  {
    sub_2195FA9C8(v1 + v59[7], v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if ((v24)(v16, 1, v60) == 1)
    {
      v25 = [*v1 publicationDate];
      sub_219BDBCA4();

      if ((v24)(v16, 1, v60) != 1)
      {
        sub_2195FAA48(v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v2[4](v58, v16, v60);
    }
  }

  else
  {
    v26 = MEMORY[0x277CC9578];
    sub_2195FAA48(&v20[v22], &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_218726800(0, &unk_280E8C190, v26, MEMORY[0x277D84560]);
    v27 = v2[9];
    v28 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C0EE20;
    v49 = v28;
    v50 = v23;
    v51 = v29;
    v30 = v29 + v28;
    v31 = v23;
    v32 = [*v23 publicationDate];
    v33 = v54;
    sub_219BDBCA4();

    v34 = v2[4];
    v35 = v33;
    v36 = v60;
    v34(v30, v35, v60);
    sub_2195FA9C8(v31 + v53, v13, &qword_280EE9C40, v26);
    v54 = v2;
    v37 = v2[6];
    v38 = (v37)(v13, 1, v36);
    v57 = v34;
    if (v38 == 1)
    {
      sub_219BDBBB4();
      if ((v37)(v13, 1, v36) != 1)
      {
        sub_2195FAA48(v13, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v34(v27 + v30, v13, v36);
    }

    v39 = v59;
    v40 = v50;
    v41 = v55;
    sub_2195FA9C8(v50 + v59[6], v55, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if ((v37)(v41, 1, v36) == 1)
    {
      sub_219BDBBB4();
      if ((v37)(v41, 1, v36) != 1)
      {
        sub_2195FAA48(v41, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v57(v30 + 2 * v27, v41, v36);
    }

    v42 = v40 + v39[7];
    v43 = v56;
    sub_2195FA9C8(v42, v56, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if ((v37)(v43, 1, v36) == 1)
    {
      sub_219BDBBB4();
      v44 = (v37)(v43, 1, v36);
      v45 = v54;
      v46 = v57;
      if (v44 != 1)
      {
        sub_2195FAA48(v43, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v46 = v57;
      v57(v30 + 3 * v27, v43, v36);
      v45 = v54;
    }

    v61 = v51;

    sub_2195ED01C(&v61, MEMORY[0x277CC9578], sub_218C812EC, sub_2195F6150);

    v47 = *(v61 + 16);
    if (v47)
    {
      v48 = v52;
      v45[2](v52, v61 + v49 + (v47 - 1) * v27, v36);

      v46(v58, v48, v36);
    }

    else
    {

      __break(1u);

      __break(1u);
    }
  }
}

void sub_2195EE53C()
{
  qword_27CCD8D28 = MEMORY[0x277D84F90];
  unk_27CCD8D30 = MEMORY[0x277D84F90];
  qword_27CCD8D38 = MEMORY[0x277D84F90];
  unk_27CCD8D40 = MEMORY[0x277D84F90];
}

uint64_t sub_2195EE568()
{
  v1 = 0x20676E6964616572;
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
    return 0x20746E6572727563;
  }
}

uint64_t sub_2195EE5FC()
{
  v1 = OBJC_IVAR____TtC7NewsUI216MyMagazinesStore____lazy_storage___lazyInitializingPromise;
  if (*(v0 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore____lazy_storage___lazyInitializingPromise))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore____lazy_storage___lazyInitializingPromise);
  }

  else
  {
    v3 = v0;
    swift_getObjectType();
    sub_219BE31F4();
    sub_219BE3074();

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v4 = sub_219BF66A4();
    sub_219BE3034();

    v2 = sub_219BE3034();

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2195EE7B4()
{
  v1 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617C8;
  v3 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore loading from store and cache", 45, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v4);
  sub_2195FB518();
  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v1;
  v6 = v0;
  v7 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v1;
  v8 = sub_219BE2E54();
  v9 = sub_219BE2FD4();

  return v9;
}

uint64_t sub_2195EE978(uint64_t a1)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v1 = qword_280F617C8;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("MyMagazinesStore failed to load state via persistent store, triggering refresh, error=%{public}@", 96, 2, &dword_2186C1000, v1, v2, v3);

  v4 = sub_218C3E18C(&unk_282A284C0);
  v5 = sub_2195EEEBC(v4);

  return v5;
}

id sub_2195EEADC(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory) addObserver_];
  [*(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_subscriptionController) addObserver_];
  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList);

  return [v2 addObserver_];
}

void sub_2195EEB54(void *a1)
{
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  v3 = sub_219BE2E54();
  sub_219BE2F74();

  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  v5 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2195EEC80@<X0>(uint64_t *a2@<X8>)
{
  sub_219BE2CF4();
  sub_2195F97F0(0, &qword_280EE5E70, MEMORY[0x277D6C8A8]);
  swift_allocObject();
  result = sub_219BE55D4();
  *a2 = result;
  return result;
}

uint64_t sub_2195EEEBC(uint64_t a1)
{
  v3 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v4 = qword_280F617C8;
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218C3F460();
  v6 = sub_219BF5D54();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore refreshing issues from data sources: %{public}@", 64, 2, &dword_2186C1000, v4, v9, v5);

  sub_2195F0684(a1);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v1;
  v10 = v1;
  v11 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v3;
  v12 = sub_219BE2E54();
  v13 = sub_219BE3024();

  return v13;
}

uint64_t sub_2195EF0C8()
{
  sub_2195F977C(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2CF4();
  sub_219BE55E4();

  sub_2195F97F0(0, &qword_280EE5E88, MEMORY[0x277D6C898]);
  v4 = v3;
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_219BE55B4();
    (*(v5 + 8))(v2, v4);
    return v7;
  }

  return result;
}

char *sub_2195EF228(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v92 = a2;
  v86 = type metadata accessor for MyMagazinesIssue(0);
  v7 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - v10;
  v12 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v84 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v88 = &v77 - v18;
  sub_218C87DC0(*a1, v98);
  if (!v99)
  {
    sub_2195FB19C();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
    return v14;
  }

  v80 = v12;
  v91 = v7;
  v78 = v11;
  v81 = v14;
  v19 = v101;
  v89 = v100;
  v20 = v103;
  v87 = v102;

  if (qword_280E8D920 != -1)
  {
    goto LABEL_67;
  }

LABEL_3:
  v21 = qword_280F617C8;
  sub_2186F20D4(0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  v96 = 0;
  v97 = 0xE000000000000000;
  v23 = MEMORY[0x277D837D0];
  v85 = xmmword_219C09BA0;
  v79 = v20;
  if (v19)
  {
    sub_2195FC568(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = v85;
    *(v24 + 32) = v89;
    *(v24 + 40) = v19;
    v95 = v24;

    sub_2191ED3E8(v25);
    v26 = v95;
  }

  else
  {
    v26 = v87;
  }

  v28 = MEMORY[0x21CECC6D0](v26, v23);
  v30 = v29;

  MEMORY[0x21CECC330](v28, v30);

  v20 = v96;
  v31 = v97;
  *(v22 + 56) = v23;
  *(v22 + 64) = sub_2186FC3BC();
  *(v22 + 32) = v20;
  *(v22 + 40) = v31;
  v32 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore loaded previous issue IDs: %{public}@", 54, 2, &dword_2186C1000, v21, v32, v22);

  __swift_project_boxed_opaque_existential_1((v92 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService), *(v92 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService + 24));
  v94 = v19;
  if (v19)
  {
    sub_2195FC568(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = v85;
    *(v33 + 32) = v89;
    *(v33 + 40) = v19;
    v96 = v33;

    sub_2191ED3E8(v34);
  }

  else
  {
  }

  v35 = sub_219BF1E54();

  if (v35 >> 62)
  {
    v19 = sub_219BF7214();
  }

  else
  {
    v19 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = v4;
  if (v19)
  {
    v36 = 0;
    v93 = v35 & 0xC000000000000001;
    v4 = v35 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v93)
      {
        v37 = MEMORY[0x21CECE0F0](v36, v35);
        v20 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_28:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v36 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          swift_once();
          goto LABEL_3;
        }

        v37 = *(v35 + 8 * v36 + 32);
        v20 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_28;
        }
      }

      v90 = v37;
      v38 = [v37 identifier];
      v39 = sub_219BF5414();
      v41 = v40;

      if (v94)
      {
        if (v39 == v89 && v94 == v41)
        {

LABEL_32:
          v45 = 0;
          v96 = MEMORY[0x277D84F90];
          while (2)
          {
            if (v93)
            {
              v46 = MEMORY[0x21CECE0F0](v45, v35);
            }

            else
            {
              if (v45 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v46 = *(v35 + 8 * v45 + 32);
            }

            v47 = v46;
            v48 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v20 = [v46 identifier];
            v49 = sub_219BF5414();
            v51 = v50;

            if (v94)
            {
              if (v49 == v89 && v94 == v51)
              {

                goto LABEL_34;
              }

              v20 = sub_219BF78F4();

              if (v20)
              {

                goto LABEL_34;
              }
            }

            else
            {
            }

            sub_219BF73D4();
            v20 = *(v96 + 16);
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
LABEL_34:
            ++v45;
            if (v48 == v19)
            {
              v44 = v96;

              if (!v90)
              {
                goto LABEL_51;
              }

              v53 = v88;
              sub_2195EFE8C(v90, v88);
              (*(v91 + 56))(v53, 0, 1, v86);
              goto LABEL_52;
            }

            continue;
          }
        }

        v43 = sub_219BF78F4();

        if (v43)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      ++v36;
      if (v20 == v19)
      {
        v90 = 0;
        goto LABEL_32;
      }
    }
  }

  v44 = MEMORY[0x277D84F90];
LABEL_51:
  (*(v91 + 56))(v88, 1, 1, v86);
  v90 = 0;
LABEL_52:
  if ((v44 & 0x8000000000000000) == 0 && (v44 & 0x4000000000000000) == 0)
  {
    v54 = *(v44 + 16);
    if (v54)
    {
      goto LABEL_55;
    }

LABEL_70:

    v57 = MEMORY[0x277D84F90];
LABEL_71:
    v63 = v81;
    sub_2195FA9C8(v88, v81, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v64 = v80;
    *(v63 + *(v80 + 20)) = v57;
    *(v63 + *(v64 + 24)) = v79;
    v65 = v84;
    sub_2195FA9C8(v63, v84, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v66 = v91;
    if ((*(v91 + 48))(v65, 1, v86) == 1)
    {
      sub_2195FAA48(v65, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
      if (*(v57 + 16))
      {
        goto LABEL_73;
      }

LABEL_76:
      if (v94)
      {
        v73 = v94;
        sub_2195FC568(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v85;
        *(inited + 32) = v89;
        *(inited + 40) = v73;
        v96 = inited;
        sub_2191ED3E8(v87);
        v75 = v96;
      }

      else
      {
        v75 = v87;
      }

      v14 = *(v75 + 16);

      if (v14)
      {
        sub_2195FB19C();
        swift_allocError();
        *v76 = 2;
        swift_willThrow();

        sub_2195FAE60(v63, type metadata accessor for MyMagazinesState);
        sub_2195FAA48(v88, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
        return v14;
      }
    }

    else
    {
      v68 = v78;
      sub_2190704B8(v65, v78, type metadata accessor for MyMagazinesIssue);
      sub_218726800(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
      v69 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = v85;
      sub_2195E5B7C(v68, v70 + v69, type metadata accessor for MyMagazinesIssue);
      v96 = v70;

      sub_2191EDC74(v71);
      sub_2195FAE60(v68, type metadata accessor for MyMagazinesIssue);
      v72 = *(v96 + 16);

      if (!v72)
      {
        goto LABEL_76;
      }

LABEL_73:
    }

    sub_219BE1A64();
    *(swift_allocObject() + 16) = a3;
    v67 = sub_219BE2E54();
    v14 = sub_219BE2F74();

    sub_2195FAE60(v63, type metadata accessor for MyMagazinesState);
    sub_2195FAA48(v88, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    return v14;
  }

  v54 = sub_219BF7214();
  if (!v54)
  {
    goto LABEL_70;
  }

LABEL_55:
  v96 = MEMORY[0x277D84F90];
  result = sub_218C35030(0, v54 & ~(v54 >> 63), 0);
  if ((v54 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    v57 = v96;
    v58 = v83;
    do
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x21CECE0F0](v56, v44);
      }

      else
      {
        v59 = *(v44 + 8 * v56 + 32);
      }

      v60 = v59;
      sub_2195EFE8C(v59, v58);

      v96 = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_218C35030((v61 > 1), v62 + 1, 1);
        v57 = v96;
      }

      ++v56;
      *(v57 + 16) = v62 + 1;
      sub_2190704B8(v58, v57 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v62, type metadata accessor for MyMagazinesIssue);
    }

    while (v54 != v56);

    goto LABEL_71;
  }

  __break(1u);
  return result;
}

id sub_2195EFE8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v50 - v8;
  MEMORY[0x28223BE20](v9);
  v53 = &v50 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v52 = &v50 - v16;
  v17 = *(v2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_subscriptionController);
  v18 = [objc_msgSend(v55 sourceChannel];
  swift_unknownObjectRelease();
  if (!v18)
  {
    sub_219BF5414();
    v18 = sub_219BF53D4();
  }

  v19 = [v17 subscriptionForTagID_];

  if (v19)
  {
    v20 = [v19 isTypeAutoFavoriteTag];
    v54 = v20 ^ 1;
    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    v54 = 0;
    v21 = 2;
  }

  v51 = v21;
  v22 = [v55 identifier];
  v23 = v22;
  v24 = v22;
  v25 = v22;
  if (v22)
  {
    if (!v54)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_219BF5414();
    v25 = sub_219BF53D4();

    sub_219BF5414();
    v24 = sub_219BF53D4();

    sub_219BF5414();
    v23 = sub_219BF53D4();

    if (!v54)
    {
      goto LABEL_15;
    }
  }

  if (v19)
  {
    v26 = v22;
    v27 = [v19 dateAdded];
    if (v27)
    {
      v28 = v27;
      sub_219BDBCA4();

      v29 = sub_219BDBD34();
      (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
    }

    else
    {
      v33 = sub_219BDBD34();
      (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    }

    v34 = v13;
    v31 = v52;
    sub_218A5DD60(v34, v52);
    goto LABEL_18;
  }

LABEL_15:
  v30 = sub_219BDBD34();
  v31 = v52;
  (*(*(v30 - 8) + 56))(v52, 1, 1, v30);
  v32 = v22;
LABEL_18:
  v35 = *(v2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList);
  v36 = [v35 sourceForIssueID_];

  if (v36 == 1)
  {
    v37 = [v35 dateAddedForIssueID_];

    if (v37)
    {
      v38 = v50;
      sub_219BDBCA4();

      v39 = 0;
    }

    else
    {
      v39 = 1;
      v38 = v50;
    }

    v42 = sub_219BDBD34();
    (*(*(v42 - 8) + 56))(v38, v39, 1, v42);
    v41 = v53;
    sub_218A5DD60(v38, v53);
  }

  else
  {

    v40 = sub_219BDBD34();
    v41 = v53;
    (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
  }

  v43 = [*(v2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory) lastEngagedDateForIssueWithID_];

  if (v43)
  {
    sub_219BDBCA4();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = sub_219BDBD34();
  (*(*(v45 - 8) + 56))(v6, v44, 1, v45);
  v46 = v51;
  if (v54)
  {
    v46 = 0;
  }

  *a2 = v55;
  *(a2 + 8) = v46;
  v47 = type metadata accessor for MyMagazinesIssue(0);
  sub_218A5DD60(v31, a2 + v47[6]);
  sub_218A5DD60(v41, a2 + v47[7]);
  sub_218A5DD60(v6, a2 + v47[8]);
  v48 = v55;

  return v48;
}

void sub_2195F0444(double a1)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v2 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v2;
  *(v1 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314("MyMagazinesStore finished loading previous state, time=%0.2f ms", v4);
}

void sub_2195F052C(uint64_t a1, double a2)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617C8;
  v3 = sub_219BF61F4();
  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v6;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v4 + 96) = MEMORY[0x277D837D0];
  *(v4 + 104) = sub_2186FC3BC();
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  sub_219BE5314("MyMagazinesStore failed to load previous state, time=%0.2f, error=%{public}@", 76, 2, &dword_2186C1000, v2, v3, v4);
}

uint64_t sub_2195F0684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_219BF73F4();
    v3 = a1 + 56;
    result = sub_219BF7174();
    v5 = result;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 36);
      if (*(*(a1 + 48) + v5))
      {
        if (*(*(a1 + 48) + v5) == 1)
        {
          sub_2195F0BE4();
        }

        else
        {
          sub_2195F0EBC();
        }
      }

      else
      {
        sub_2195F08F4();
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      if (v5 >= -(-1 << *(a1 + 32)))
      {
        goto LABEL_18;
      }

      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_19;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_20;
      }

      result = sub_219BF7194();
      v5 = result;
      if (!--v1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_2195FC568(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    v7 = sub_219BE2E54();
    sub_218CCBDE4(0);
    sub_2195FB02C(&unk_280E8F570, sub_218CCBDE4, MEMORY[0x277D83988]);
    sub_219BE2F34();

    v8 = sub_219BE2E54();
    v9 = sub_219BE2F74();

    return v9;
  }

  return result;
}

uint64_t sub_2195F08F4()
{
  v1 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617C8;
  v3 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore refreshing current issues...", 45, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  MEMORY[0x28223BE20](v4);
  sub_2186C6148(0, &qword_280E8DDC0, 0x277D311C0);
  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v0;

  v6 = v0;
  v7 = sub_219BE2E54();
  sub_2186C6148(0, &unk_280E8DCD0, 0x277D30F28);
  sub_219BE2F64();

  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v6;

  v9 = v6;
  v10 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  v12 = sub_219BE2E54();
  sub_219BE3054();

  *(swift_allocObject() + 16) = v1;
  v13 = sub_219BE2E54();
  v14 = sub_219BE3024();

  return v14;
}

uint64_t sub_2195F0BE4()
{
  v1 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617C8;
  v3 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore refreshing recently read issues...", 51, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v4);
  sub_2186C6148(0, &qword_280E8DDC0, 0x277D311C0);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v5 = v0;
  v6 = sub_219BE2E54();
  sub_2194FB2A4(0, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, MEMORY[0x277D83940]);
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v5;
  v7 = v5;
  v8 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v7;
  v9 = v7;
  v10 = sub_219BE2E54();
  sub_219BE3054();

  *(swift_allocObject() + 16) = v1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE3024();

  return v12;
}

uint64_t sub_2195F0EBC()
{
  v1 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617C8;
  v3 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore refreshing downloaded issues...", 48, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v4);
  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2195FB388;
  *(v6 + 24) = v5;
  v7 = v0;
  v8 = sub_219BE2E54();
  sub_2194FB2A4(0, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, MEMORY[0x277D83940]);
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v7;
  v9 = v7;
  v10 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  v12 = sub_219BE2E54();
  sub_219BE3054();

  *(swift_allocObject() + 16) = v1;
  v13 = sub_219BE2E54();
  v14 = sub_219BE3024();

  return v14;
}

void sub_2195F11A4(uint64_t a1, char *a2)
{
  sub_2195F977C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v241 = v238 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195FAEC0(0, &unk_280ED82F0, qword_280ED8300, type metadata accessor for MyMagazinesState);
  v245 = v5;
  MEMORY[0x28223BE20](v5);
  v249 = v238 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_218726800(0, qword_280ED8300, type metadata accessor for MyMagazinesState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v240 = v238 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v246 = v238 - v11;
  MEMORY[0x28223BE20](v12);
  v247 = v238 - v13;
  v14 = MEMORY[0x277D6C9F8];
  sub_218726800(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v264 = v15;
  v263 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v254 = v238 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v262 = v238 - v18;
  MEMORY[0x28223BE20](v19);
  v243 = v238 - v20;
  v244 = type metadata accessor for MyMagazinesState(0);
  v248 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v242 = v238 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v251 = v238 - v23;
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, v7);
  MEMORY[0x28223BE20](v24 - 8);
  v261 = v238 - v25;
  v259 = type metadata accessor for MyMagazinesIssue(0);
  v260 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v272 = v238 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v283 = (v238 - v28);
  MEMORY[0x28223BE20](v29);
  v271 = v238 - v30;
  MEMORY[0x28223BE20](v31);
  v253 = (v238 - v32);
  sub_2195F9888(0);
  v266 = v33;
  MEMORY[0x28223BE20](v33);
  v277 = v238 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726800(0, &qword_280EE7ED0, sub_2186E2394, v14);
  v258 = v35;
  v257 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v256 = (v238 - v36);
  sub_2195F9920(0);
  v281 = v37;
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v250 = v238 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = v238 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v238 - v44;
  sub_2195FC568(0, &qword_280EE7EF8, &type metadata for CurrentIssuesState, MEMORY[0x277D6C9F8]);
  v47 = v46;
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v255 = v238 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v252 = v238 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = (v238 - v53);
  MEMORY[0x28223BE20](v55);
  v57 = v238 - v56;
  sub_219BE1A44();
  sub_219BE2184();

  sub_219BE1A44();
  v280 = v45;
  sub_219BE2184();

  sub_219BE1A44();
  v279 = v42;
  sub_219BE2184();

  v58 = *(v48 + 16);
  v278 = v57;
  v275 = v58;
  v58(v54, v57, v47);
  v59 = *(v48 + 88);
  v268 = (v48 + 88);
  v267 = v59;
  v60 = v59(v54, v47);
  v61 = v60;
  LODWORD(v276) = *MEMORY[0x277D6C9F0];
  v273 = v47;
  v282 = v38;
  v274 = v48;
  v270 = a2;
  v265 = v48 + 16;
  if (v60 != v276)
  {
    if (v60 != *MEMORY[0x277D6C9E8])
    {
      v72 = v281;
      if (v60 != *MEMORY[0x277D6C9E0])
      {
        v92 = v38;
        (*(v48 + 8))(v54, v47);
        v76 = v266;
        v93 = v275;
        v70 = v72;
        v68 = v92;
        goto LABEL_23;
      }

      v76 = v266;
      v73 = v275;
      if (qword_280E8D920 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_109;
    }

    (*(v48 + 96))(v54, v47);
    v71 = *v54;
    v72 = v54[1];
    v73 = v54[2];
    v74 = *&v270[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_badgeIssueIDs];
    v258 = v54[3];
    if (v258 >> 62)
    {
      v75 = sub_219BF7214();
      if (v75)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v75 = *((v258 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
LABEL_6:
        v238[1] = v73;
        v239 = v72;
        v256 = v71;
        v257 = v74;
        v284 = MEMORY[0x277D84F90];
        v76 = &v284;
        sub_21870B65C(0, v75 & ~(v75 >> 63), 0);
        if ((v75 & 0x8000000000000000) == 0)
        {
          v77 = 0;
          v78 = v284;
          v79 = v258;
          v80 = v258 & 0xC000000000000001;
          do
          {
            if (v80)
            {
              v81 = MEMORY[0x21CECE0F0](v77, v79);
            }

            else
            {
              v81 = *(v79 + 8 * v77 + 32);
            }

            v82 = v81;
            v83 = [v81 identifier];
            v84 = sub_219BF5414();
            v86 = v85;

            v284 = v78;
            v88 = *(v78 + 16);
            v87 = *(v78 + 24);
            if (v88 >= v87 >> 1)
            {
              sub_21870B65C((v87 > 1), v88 + 1, 1);
              v79 = v258;
              v78 = v284;
            }

            ++v77;
            *(v78 + 16) = v88 + 1;
            v89 = v78 + 16 * v88;
            *(v89 + 32) = v84;
            *(v89 + 40) = v86;
          }

          while (v75 != v77);

          v47 = v273;
          goto LABEL_21;
        }

        __break(1u);
LABEL_109:
        swift_once();
LABEL_18:
        v90 = qword_280F617C8;
        v91 = sub_219BF61F4();
        v69.n128_f64[0] = sub_219BE5314("MyMagazinesStore current issues state is uninitialized after refreshing!", 72, 2, &dword_2186C1000, v90, v91, MEMORY[0x277D84F90]);
        v68 = v282;
        v70 = v72;
        v93 = v73;
        goto LABEL_23;
      }
    }

    v78 = MEMORY[0x277D84F90];
LABEL_21:
    v94 = sub_218845F78(v78);

    v284 = v94;
    sub_219BE1A64();

    v70 = v281;
    v68 = v282;
    goto LABEL_22;
  }

  (*(v48 + 96))(v54, v47);
  v62 = *v54;
  v63 = v256;
  *v256 = *v54;
  v64 = v257;
  v65 = v61;
  v66 = v258;
  (*(v257 + 104))(v63, v65, v258);
  v67 = v62;
  sub_219BE1A54();

  v68 = v282;

  (*(v64 + 8))(v63, v66);
  v70 = v281;
LABEL_22:
  v76 = v266;
  v93 = v275;
LABEL_23:
  v95 = *(v76 + 12);
  v96 = *(v76 + 16);
  v97 = v277;
  v93(v277, v278, v47, v69);
  v98 = *(v68 + 16);
  v98(v97 + v95, v280, v70);
  v98(v96 + v97, v279, v70);
  v99 = v267(v97, v47);
  if (v99 == v276)
  {
    v100 = v255;
    (v275)(v255, v97, v47);
    v101 = v274;
    (*(v274 + 96))(v100, v47);
    v102 = v68;
    v103 = *v100;
    v104 = v47;
    v105 = *(v102 + 8);
    (v105)(v96 + v97, v70);
    v283 = v105;
    (v105)(v97 + v95, v70);
    goto LABEL_47;
  }

  v266 = v96;
  if (v99 == *MEMORY[0x277D6C9E8])
  {
    LODWORD(v257) = v99;
    v106 = v252;
    v107 = v95;
    v108 = v277;
    (v275)(v252, v277, v47);
    (*(v274 + 96))(v106, v47);
    v109 = v106[1];
    v265 = *v106;
    v256 = v109;
    v110 = v106[2];
    v111 = v106[3];
    v258 = v110;
    v112 = v70;
    v113 = v107;
    v114 = *(v68 + 88);
    v103 = (v68 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v115 = v114(&v108[v107], v112);
    v116 = v257;
    if (v115 == v257)
    {
      v252 = v111;
      v239 = v107;
      v117 = v277;
      v118 = v250;
      v98(v250, &v277[v107], v112);
      v119 = v112;
      v120 = *(v282 + 96);
      v120(v118, v119);
      v255 = *v118;
      v121 = v266;
      v122 = v114(v266 + v117, v119);
      v123 = v121;
      if (v122 == v116)
      {
        v124 = v277;
        v120((v121 + v277), v281);
        v125 = *(v121 + v124);
        v284 = v265;

        sub_2191EE91C(v126);

        v267 = v125;
        sub_2191EE91C(v127);

        sub_2191EE91C(v128);
        v129 = sub_218C3E240(v284);

        v130 = v270;
        __swift_project_boxed_opaque_existential_1(&v270[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_myMagazinesPersonalizationService], *&v270[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_myMagazinesPersonalizationService + 24]);
        sub_218B674E8(v129);
        v131 = sub_219BE4974();

        v132 = v130;
        v266 = v129;
        v133 = v269;
        v134 = sub_2195FA5DC(v129, v132);
        v269 = v133;
        v276 = v132;

        v135 = *(v134 + 16);
        v270 = v131;
        v275 = v135;
        if (v135)
        {
          v136 = 0;
          v137 = MEMORY[0x277D84F90];
          v138 = v260;
          v139 = v253;
          while (v136 < *(v134 + 16))
          {
            v140 = (*(v138 + 80) + 32) & ~*(v138 + 80);
            v103 = *(v138 + 72);
            sub_2195E5B7C(v134 + v140 + v103 * v136, v139, type metadata accessor for MyMagazinesIssue);
            if (sub_2195F36F0(v139, v131))
            {
              sub_2195FAE60(v139, type metadata accessor for MyMagazinesIssue);
            }

            else
            {
              sub_2190704B8(v139, v271, type metadata accessor for MyMagazinesIssue);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v284 = v137;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_218C35030(0, *(v137 + 16) + 1, 1);
                v139 = v253;
                v137 = v284;
              }

              v143 = *(v137 + 16);
              v142 = *(v137 + 24);
              if (v143 >= v142 >> 1)
              {
                sub_218C35030((v142 > 1), v143 + 1, 1);
                v139 = v253;
                v137 = v284;
              }

              *(v137 + 16) = v143 + 1;
              sub_2190704B8(v271, v137 + v140 + v143 * v103, type metadata accessor for MyMagazinesIssue);
              v138 = v260;
              v131 = v270;
            }

            if (v275 == ++v136)
            {
              goto LABEL_64;
            }
          }

          __break(1u);
          goto LABEL_107;
        }

        v137 = MEMORY[0x277D84F90];
        v138 = v260;
LABEL_64:

        v284 = v137;

        v171 = v269;
        sub_2195ED01C(&v284, type metadata accessor for MyMagazinesIssue, sub_218C81300, sub_2195F627C);
        v172 = v171;
        if (v171)
        {
LABEL_115:

          __break(1u);
          return;
        }

        v173 = v284;
        v174 = v255;
        if (v255 >> 62)
        {
          v175 = sub_219BF7214();
        }

        else
        {
          v175 = *((v255 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v176 = v248;
        v269 = 0;
        if (v175)
        {
          if ((v174 & 0xC000000000000001) != 0)
          {
            v177 = MEMORY[0x21CECE0F0](0, v174);
          }

          else
          {
            if (!*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

            v177 = *(v174 + 32);
          }

          v178 = v177;
          v179 = [v177 identifier];

          v180 = sub_219BF5414();
          v182 = v181;
        }

        else
        {
          v180 = 0;
          v182 = 0;
        }

        v183 = *(v138 + 56);
        v271 = v138 + 56;
        v268 = v183;
        v183(v261, 1, 1, v259);
        v184 = *(v173 + 16);
        v262 = v173;
        if (v184)
        {
          v275 = (*(v138 + 80) + 32) & ~*(v138 + 80);
          v185 = v173 + v275;
          v186 = *(v138 + 72);
          v187 = MEMORY[0x277D84F90];
          while (1)
          {
            v189 = v283;
            sub_2195E5B7C(v185, v283, type metadata accessor for MyMagazinesIssue);
            v190 = [*v189 identifier];
            v191 = sub_219BF5414();
            v193 = v192;

            if (!v182)
            {
              break;
            }

            if (v191 == v180 && v182 == v193)
            {
            }

            else
            {
              v195 = sub_219BF78F4();

              if ((v195 & 1) == 0)
              {
                goto LABEL_86;
              }
            }

            v188 = v261;
            sub_2195FAA48(v261, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
            sub_2190704B8(v283, v188, type metadata accessor for MyMagazinesIssue);
            v268(v188, 0, 1, v259);
LABEL_77:
            v185 += v186;
            if (!--v184)
            {
              v176 = v248;
              goto LABEL_93;
            }
          }

LABEL_86:
          sub_2195E5B7C(v283, v272, type metadata accessor for MyMagazinesIssue);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v187 = sub_2191F7828(0, v187[2] + 1, 1, v187);
          }

          v197 = v187[2];
          v196 = v187[3];
          if (v197 >= v196 >> 1)
          {
            v187 = sub_2191F7828((v196 > 1), v197 + 1, 1, v187);
          }

          v187[2] = v197 + 1;
          sub_2190704B8(v272, v187 + v275 + v197 * v186, type metadata accessor for MyMagazinesIssue);
          sub_2195FAE60(v283, type metadata accessor for MyMagazinesIssue);
          goto LABEL_77;
        }

        v187 = MEMORY[0x277D84F90];
LABEL_93:

        sub_2195FA9C8(v261, v251, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
        v198 = v247;
        v199 = v246;
        if (v252 >> 62)
        {
          v200 = sub_219BF7214();
        }

        else
        {
          v200 = *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v201 = v244;
        v202 = v251;
        *(v251 + *(v244 + 20)) = v187;
        *(v202 + *(v201 + 24)) = v200;
        v203 = *&v276[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_state];

        v283 = v203;
        sub_219BE1A44();
        v204 = v243;
        sub_219BE2184();

        v205 = v264;
        sub_219BE1A24();
        (*(v263 + 8))(v204, v205);
        sub_2195E5B7C(v202, v199, type metadata accessor for MyMagazinesState);
        (*(v176 + 56))(v199, 0, 1, v201);
        v206 = *(v245 + 48);
        v207 = v176;
        v208 = v249;
        sub_2195FA9C8(v198, v249, qword_280ED8300, type metadata accessor for MyMagazinesState);
        v209 = v208;
        sub_2195FA9C8(v199, v208 + v206, qword_280ED8300, type metadata accessor for MyMagazinesState);
        v210 = *(v207 + 48);
        if (v210(v209, 1, v201) == 1)
        {
          sub_2195FAA48(v199, qword_280ED8300, type metadata accessor for MyMagazinesState);
          v211 = v249;
          sub_2195FAA48(v198, qword_280ED8300, type metadata accessor for MyMagazinesState);
          if (v210(v211 + v206, 1, v201) == 1)
          {
            sub_2195FAA48(v211, qword_280ED8300, type metadata accessor for MyMagazinesState);
LABEL_104:

            sub_2195FC568(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
            swift_allocObject();
            sub_219BE3014();
            sub_2195FAE60(v251, type metadata accessor for MyMagazinesState);
            sub_2195FAA48(v261, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
            v233 = v281;
            v234 = *(v282 + 8);
            v234(v279, v281);
            v234(v280, v233);
            v235 = *(v274 + 8);
            v236 = v273;
            v235(v278, v273);
            v237 = v277;
            v234(&v277[v239], v233);
            v235(v237, v236);
            return;
          }
        }

        else
        {
          v212 = v240;
          sub_2195FA9C8(v209, v240, qword_280ED8300, type metadata accessor for MyMagazinesState);
          if (v210(v209 + v206, 1, v201) != 1)
          {
            v231 = v209 + v206;
            v232 = v242;
            sub_2190704B8(v231, v242, type metadata accessor for MyMagazinesState);
            LODWORD(v275) = sub_2195F99A4(v212, v232);
            sub_2195FAE60(v232, type metadata accessor for MyMagazinesState);
            sub_2195FAA48(v199, qword_280ED8300, type metadata accessor for MyMagazinesState);
            sub_2195FAA48(v198, qword_280ED8300, type metadata accessor for MyMagazinesState);
            sub_2195FAE60(v212, type metadata accessor for MyMagazinesState);
            sub_2195FAA48(v209, qword_280ED8300, type metadata accessor for MyMagazinesState);
            v213 = v241;
            v172 = v265;
            if (v275)
            {
              goto LABEL_104;
            }

            goto LABEL_101;
          }

          sub_2195FAA48(v199, qword_280ED8300, type metadata accessor for MyMagazinesState);
          v211 = v249;
          sub_2195FAA48(v198, qword_280ED8300, type metadata accessor for MyMagazinesState);
          sub_2195FAE60(v212, type metadata accessor for MyMagazinesState);
        }

        sub_2195FAF38(v211, &unk_280ED82F0, qword_280ED8300, type metadata accessor for MyMagazinesState);
        v213 = v241;
        v172 = v265;
LABEL_101:
        sub_219BE2CF4();
        sub_219BE55E4();

        sub_2195F97F0(0, &qword_280EE5E88, MEMORY[0x277D6C898]);
        v215 = v214;
        v216 = *(v214 - 8);
        if ((*(v216 + 48))(v213, 1, v214) != 1)
        {

          sub_218726800(0, &qword_280E8B710, sub_2195FAAB8, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_219C09BA0;
          *(inited + 32) = 0x74736574616CLL;
          *(inited + 40) = 0xE600000000000000;
          v218 = v251;
          v219 = v242;
          sub_2195E5B7C(v251, v242, type metadata accessor for MyMagazinesState);
          *(inited + 48) = sub_2195FAB18(v219);
          *(inited + 56) = v220;
          *(inited + 64) = v221;
          *(inited + 72) = v222;
          sub_2194B19DC(inited);
          swift_setDeallocating();
          sub_2195FAE60(inited + 32, sub_2195FAAB8);
          sub_219BE55C4();

          (*(v216 + 8))(v213, v215);
          v223 = sub_219BE2E54();
          sub_219BE2F74();

          v224 = sub_219BE2E54();
          sub_219BE2FD4();

          sub_219BE1A64();
          v225 = sub_219BE2E54();
          sub_219BE2F74();

          sub_2195FAE60(v218, type metadata accessor for MyMagazinesState);
          sub_2195FAA48(v261, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
          v226 = v281;
          v227 = *(v282 + 8);
          v227(v279, v281);
          v227(v280, v226);
          v228 = *(v274 + 8);
          v229 = v273;
          v228(v278, v273);
          v230 = v277;
          v227(&v277[v239], v226);
          v228(v230, v229);
          return;
        }

        goto LABEL_114;
      }

      v144 = v281;
      v95 = v239;
    }

    else
    {

      v144 = v112;
      v95 = v113;
      v123 = v266;
    }
  }

  else
  {
    v114 = *(v68 + 88);
    v123 = v266;
    v144 = v70;
  }

  v97 = v277;
  v145 = v114(&v277[v95], v144);
  v146 = v276;
  if (v145 == v276)
  {
    v147 = v282;
    (*(v282 + 96))(v97 + v95, v144);
    v103 = *(v97 + v95);
    v148 = *(v147 + 8);
    v149 = v123 + v97;
  }

  else
  {
    if (v114(v123 + v97, v144) != v146)
    {
      v166 = v267(v97, v273);
      v167 = *MEMORY[0x277D6C9E0];
      if (v166 == *MEMORY[0x277D6C9E0])
      {
        v168 = *(v282 + 8);
        v168(v123 + v97, v144);
        v168((v97 + v95), v144);
      }

      else
      {
        if (v114((v97 + v95), v144) == v167)
        {
          v168 = *(v282 + 8);
          v168(v123 + v97, v144);
        }

        else
        {
          if (v114(v123 + v97, v144) != v167)
          {
            sub_2195FAE60(v97, sub_2195F9888);
            goto LABEL_50;
          }

          v168 = *(v282 + 8);
          v168((v97 + v95), v144);
        }

        (*(v274 + 8))(v97, v273);
      }

      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      v169 = qword_280F617C8;
      v170 = sub_219BF61F4();
      sub_219BE5314("MyMagazinesStore data source is uninitialized after refreshing!", 63, 2, &dword_2186C1000, v169, v170, MEMORY[0x277D84F90]);
      sub_2195FC568(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE3014();
      v168(v279, v144);
      v168(v280, v144);
      goto LABEL_51;
    }

    v150 = v282;
    (*(v282 + 96))(v123 + v97, v144);
    v103 = *(v123 + v97);
    v148 = *(v150 + 8);
    v149 = v97 + v95;
  }

  v283 = v148;
  (v148)(v149, v144);
  v104 = v273;
  v101 = v274;
LABEL_47:
  v139 = *(v101 + 8);
  (v139)(v97, v104);
  if (qword_280E8D920 != -1)
  {
LABEL_107:
    swift_once();
  }

  v151 = qword_280F617C8;
  v152 = sub_219BF61F4();
  sub_2186F20D4(0);
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_219C09BA0;
  v284 = 0;
  v285 = 0xE000000000000000;
  v154 = v103;
  v286 = v103;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v155 = v284;
  v156 = v285;
  *(v153 + 56) = MEMORY[0x277D837D0];
  *(v153 + 64) = sub_2186FC3BC();
  *(v153 + 32) = v155;
  *(v153 + 40) = v156;
  sub_219BE5314("MyMagazinesStore failed to refresh because of error: %{public}@", 63, 2, &dword_2186C1000, v151, v152, v153);

  sub_219BE1A44();
  v157 = v262;
  sub_219BE2184();

  v158 = v263;
  v159 = v264;
  if ((*(v263 + 88))(v157, v264) == *MEMORY[0x277D6C9E8])
  {

    (*(v158 + 8))(v157, v159);
    v144 = v281;
LABEL_50:
    sub_2195FC568(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    v160 = *(v282 + 8);
    v160(v279, v144);
    v160(v280, v144);
LABEL_51:
    (*(v274 + 8))(v278, v273);
    return;
  }

  v161 = *(v158 + 8);
  v161(v157, v159);
  v162 = v254;
  *v254 = v154;
  (*(v158 + 104))(v162, v276, v159);
  sub_219BE1A54();
  v161(v162, v159);
  v163 = sub_219BE2E54();
  sub_219BE2F74();

  v164 = v281;
  v165 = v283;
  (v283)(v279, v281);
  (v165)(v280, v164);
  (v139)(v278, v273);
}

uint64_t sub_2195F36F0(id *a1, uint64_t a2)
{
  v76 = a2;
  sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v74 - v7;
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v80 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  MEMORY[0x28223BE20](v15);
  v75 = &v74 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v81 = &v74 - v22;
  v79 = a1;
  v23 = [*a1 identifier];
  v24 = v23;
  v25 = v23;
  if (!v23)
  {
    sub_219BF5414();
    v25 = sub_219BF53D4();

    sub_219BF5414();
    v24 = sub_219BF53D4();
  }

  v26 = sub_219BF5414();
  v77 = v27;
  v78 = v26;
  v28 = *(v2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory);
  v29 = v23;
  v30 = [v28 lastRemovedFromMyMagazinesDateForIssueWithID_];

  if (v30)
  {
    sub_219BDBCA4();

    v31 = *(v10 + 32);
    v31(v81, v19, v9);
    v32 = [v28 lastEngagedDateForIssueWithID_];

    if (v32)
    {
      sub_219BDBCA4();

      v31(v8, v14, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      v33 = v75;
      v31(v75, v8, v9);
      v34 = v78;
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
      v33 = v75;
      sub_219BDBBB4();
      v36 = (*(v10 + 48))(v8, 1, v9);
      v34 = v78;
      if (v36 != 1)
      {
        sub_2195FAA48(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    v37 = type metadata accessor for MyMagazinesIssue(0);
    v38 = v74;
    sub_2195FA9C8(v79 + *(v37 + 28), v74, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v39 = *(v10 + 48);
    if (v39(v38, 1, v9) == 1)
    {
      sub_219BDBBB4();
      v40 = v39(v38, 1, v9);
      v41 = v77;
      if (v40 != 1)
      {
        sub_2195FAA48(v38, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v31(v80, v38, v9);
      v41 = v77;
    }

    if (sub_219BDBC14() & 1) != 0 && (sub_219BDBC14())
    {
      v42 = v34;
      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      v43 = qword_280F617C8;
      sub_2186F20D4(0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_219C09BA0;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = sub_2186FC3BC();
      *(v44 + 32) = v42;
      *(v44 + 40) = v41;
      v45 = sub_219BF6214();
      sub_219BE5314("MyMagazinesStore issue %{public}@ was removed by the user", 57, 2, &dword_2186C1000, v43, v45, v44);

      v46 = *(v10 + 8);
      v46(v80, v9);
      v46(v33, v9);
      v46(v81, v9);
      return 1;
    }

    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v77 = qword_280F617C8;
    sub_2186F20D4(0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_219C0EE20;
    v49 = MEMORY[0x277D837D0];
    *(v48 + 56) = MEMORY[0x277D837D0];
    v50 = sub_2186FC3BC();
    *(v48 + 64) = v50;
    *(v48 + 32) = v34;
    *(v48 + 40) = v41;
    v35 = v41;

    v51 = v81;
    v52 = sub_219BDBBA4();
    *(v48 + 96) = v49;
    *(v48 + 104) = v50;
    *(v48 + 72) = v52;
    *(v48 + 80) = v53;
    v54 = sub_219BDBBA4();
    *(v48 + 136) = v49;
    *(v48 + 144) = v50;
    *(v48 + 112) = v54;
    *(v48 + 120) = v55;
    v56 = v33;
    v57 = v80;
    v58 = sub_219BDBBA4();
    *(v48 + 176) = v49;
    *(v48 + 184) = v50;
    *(v48 + 152) = v58;
    *(v48 + 160) = v59;
    v60 = sub_219BF6214();
    sub_219BE5314("MyMagazinesStore issue %{public}@ was removed by the user but recent activity adding issue back, removedDate=%{public}@, engagedDate=%{public}@, downloadDate=%{public}@", 168, 2, &dword_2186C1000, v77, v60, v48);

    v61 = *(v10 + 8);
    v61(v57, v9);
    v61(v56, v9);
    v61(v51, v9);
  }

  else
  {

    v35 = v77;
  }

  v62 = v76;
  if (!v76 || *(v79 + 8) != 1)
  {
LABEL_32:

    return 0;
  }

  if (!*(v76 + 16) || (v63 = sub_21870F700(v78, v35), (v64 & 1) == 0))
  {
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v71 = qword_280F617C8;
    v72 = sub_219BF61F4();
    sub_2186F20D4(0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_219C09BA0;
    *(v73 + 56) = MEMORY[0x277D837D0];
    *(v73 + 64) = sub_2186FC3BC();
    *(v73 + 32) = v78;
    *(v73 + 40) = v35;
    sub_219BE5314("MyMagazinesStore failed to find a read prediction for suggested issue %{public}@", 80, 2, &dword_2186C1000, v71, v72, v73);
    goto LABEL_32;
  }

  v65 = *(*(v62 + 56) + v63);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v66 = qword_280F617C8;
  sub_2186F20D4(0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_219C09EC0;
  *(v67 + 56) = MEMORY[0x277D837D0];
  *(v67 + 64) = sub_2186FC3BC();
  *(v67 + 32) = v78;
  *(v67 + 40) = v35;
  v68 = v65 ^ 1u;
  v69 = MEMORY[0x277D839F0];
  *(v67 + 96) = MEMORY[0x277D839B0];
  *(v67 + 104) = v69;
  *(v67 + 72) = v68;
  v70 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore issue %{public}@ read predictions should be removed check %d", 77, 2, &dword_2186C1000, v66, v70, v67);

  return v68;
}

double sub_2195F3FB8(uint64_t a1)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v1 = qword_280F617C8;
  v2 = sub_219BF6214();
  return sub_219BE5314("MyMagazinesStore saved state to disk", 36, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
}

double sub_2195F4044(uint64_t a1, __n128 a2)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617C8;
  v3 = sub_219BF6204();
  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_219BE5314("MyMagazinesStore failed to save state to disk, error=%{public}@", 63, 2, &dword_2186C1000, v2, v3, v4);

  return result;
}

uint64_t sub_2195F4170(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;
  v6 = v4;

  sub_2194FB2A4(0, &qword_280EE6940, &unk_280E8DCD0, 0x277D30F28, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_2195F4240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_currentIssuesChecker);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_2189EB59C;
  v12[5] = v10;
  v14[4] = sub_2195FB1F8;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218B66540;
  v14[3] = &block_descriptor_145;
  v13 = _Block_copy(v14);

  [v11 fetchUsersCurrentIssuesWithCompletion_];
  _Block_release(v13);
}

void sub_2195F4378(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *))
{
  v7 = [a1 error];
  if (v7)
  {
    v8 = v7;
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v9 = qword_280F617C8;
    v10 = sub_219BF61F4();
    sub_2186F20D4(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_219BE5314("MyMagazinesStore failed to fetch followed current issues, error=%{public}@", 74, 2, &dword_2186C1000, v9, v10, v11);

    a2(v8);
  }

  else
  {
    a4(a1);
  }
}

uint64_t sub_2195F44FC(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 followedIssues];
  if (v6)
  {
    v7 = v6;
    sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
    v8 = sub_219BF5924();

    v9 = [v5 unreadFollowedIssues];
    if (v9)
    {
      v10 = v9;
      v11 = sub_219BF5924();

      v12 = [v5 autoFavoriteIssues];
      if (v12)
      {
        v13 = v12;
        v14 = sub_219BF5924();

        v15 = [v5 unbadgedIssues];
        if (v15)
        {
          v16 = v15;
          v17 = sub_219BF5924();

          swift_beginAccess();
          v18 = *(a2 + 16);
          if (v18)
          {
            v19 = qword_280E8D920;
            v20 = v18;
            if (v19 != -1)
            {
              swift_once();
            }

            sub_2186F20D4(0);
            v45 = v21;
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_219C0EE20;
            if (v8 >> 62)
            {
              v23 = sub_219BF7214();
            }

            else
            {
              v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v24 = MEMORY[0x277D83B88];
            v25 = MEMORY[0x277D83C10];
            *(v22 + 56) = MEMORY[0x277D83B88];
            *(v22 + 64) = v25;
            v47 = v23;
            *(v22 + 32) = v23;
            if (v14 >> 62)
            {
              v26 = sub_219BF7214();
              v25 = MEMORY[0x277D83C10];
              v24 = MEMORY[0x277D83B88];
            }

            else
            {
              v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v22 + 96) = v24;
            *(v22 + 104) = v25;
            v43 = v26;
            *(v22 + 72) = v26;
            v50 = v17;
            if (v11 >> 62)
            {
              v41 = v25;
              v27 = sub_219BF7214();
              v25 = v41;
              v24 = MEMORY[0x277D83B88];
            }

            else
            {
              v27 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v22 + 136) = v24;
            *(v22 + 144) = v25;
            *(v22 + 112) = v27;
            v28 = v20;
            if (v50 >> 62)
            {
              v42 = v25;
              v29 = sub_219BF7214();
              v25 = v42;
              v24 = MEMORY[0x277D83B88];
            }

            else
            {
              v29 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v22 + 176) = v24;
            *(v22 + 184) = v25;
            *(v22 + 152) = v29;
            sub_219BF6214();
            sub_219BE5314("MyMagazinesStore got %ld followed issues, %ld auto-followed issues, %ld unread issues and %ld unseen issues", v43, v45, v47, v49);

            v30 = [objc_opt_self() currentDevice];
            v31 = [v30 userInterfaceIdiom];

            v32 = &selRef_minFollowedMagazinesToHideSuggestionsRegular;
            if (v31 != 1)
            {
              v32 = &selRef_minFollowedMagazinesToHideSuggestionsCompact;
            }

            if ([v28 *v32] < v48)
            {

              v33 = swift_allocObject();
              *(v33 + 16) = xmmword_219C09EC0;
              v34 = MEMORY[0x277D83B88];
              *(v33 + 56) = MEMORY[0x277D83B88];
              v35 = MEMORY[0x277D83C10];
              *(v33 + 64) = MEMORY[0x277D83C10];
              *(v33 + 72) = v48;
              *(v33 + 32) = v44;
              *(v33 + 96) = v34;
              *(v33 + 104) = v35;
              sub_219BF6214();
              sub_219BE5314("MyMagazinesStore is hiding %ld auto-followed issues because the user has %ld followed issues", v44, v46);
            }

            sub_219BE1A64();

            v36 = sub_219BE2E54();
            a3 = sub_219BE2F74();

            return a3;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v37 = qword_280F617C8;
  v38 = sub_219BF61F4();
  sub_219BE5314("MyMagazinesStore failed to fetch current issues, but no error occurred", 70, 2, &dword_2186C1000, v37, v38, MEMORY[0x277D84F90]);
  sub_2195FB19C();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();
  return a3;
}

uint64_t sub_2195F4A64(uint64_t a1)
{
  sub_2195FC568(0, &qword_280EE7EF8, &type metadata for CurrentIssuesState, MEMORY[0x277D6C9F8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v18 - v5);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v7 = qword_280F617C8;
  v8 = sub_219BF61F4();
  sub_2186F20D4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v19 = 0;
  v20 = 0xE000000000000000;
  v21 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v11 = v19;
  v10 = v20;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_2186FC3BC();
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;
  sub_219BE5314("MyMagazinesStore failed to fetch current issues, error=%{public}@", 65, 2, &dword_2186C1000, v7, v8, v9);

  if (qword_27CC086B0 != -1)
  {
    swift_once();
  }

  v12 = unk_27CCD8D30;
  v13 = qword_27CCD8D38;
  v14 = unk_27CCD8D40;
  *v6 = qword_27CCD8D28;
  v6[1] = v12;
  v6[2] = v13;
  v6[3] = v14;
  (*(v4 + 104))(v6, *MEMORY[0x277D6C9E8], v3);

  sub_219BE1A54();
  (*(v4 + 8))(v6, v3);
  v15 = sub_219BE2E54();
  v16 = sub_219BE2F74();

  return v16;
}

uint64_t sub_2195F4D48(id *a1, uint64_t a2)
{
  [*a1 minimumReadIssuesInMyMagazines];
  v3 = *(a2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory);
  v4 = [v3 recentlyEngagedIssueIDs];
  v5 = MEMORY[0x277D837D0];
  sub_219BF5924();

  v6 = [v3 allEngagedIssueIDs];
  sub_219BF5924();

  v10 = sub_219A79734();
  if ((v9 & 1) == 0)
  {
    goto LABEL_2;
  }

  v13 = v9;
  v14 = v8;
  v15 = v7;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(v16 + 16);

  if (__OFSUB__(v13 >> 1, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v17 != (v13 >> 1) - v14)
  {
LABEL_14:
    swift_unknownObjectRelease();
    v9 = v13;
    v8 = v14;
    v7 = v15;
LABEL_2:
    sub_218B666EC(v10, v7, v8, v9);
    v12 = v11;
    goto LABEL_9;
  }

  v12 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_10;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v18 = qword_280F617C8;
  sub_2186F20D4(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09BA0;
  v20 = MEMORY[0x21CECC6D0](v12, v5);
  v22 = v21;
  *(v19 + 56) = v5;
  *(v19 + 64) = sub_2186FC3BC();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore will fetch recently read issues with IDs %{public}@", 68, 2, &dword_2186C1000, v18, v23, v19);

  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService), *(a2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService + 24));
  v24 = sub_219BF1E44();

  return v24;
}

uint64_t sub_2195F4FD8(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList) issueIDs];
  v3 = MEMORY[0x277D837D0];
  v4 = sub_219BF5924();

  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v5 = qword_280F617C8;
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  v7 = MEMORY[0x21CECC6D0](v4, v3);
  v9 = v8;
  *(v6 + 56) = v3;
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v10 = sub_219BF6214();
  sub_219BE5314("MyMagazinesStore will fetch downloaded issues with IDs %{public}@", 65, 2, &dword_2186C1000, v5, v10, v6);

  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService), *(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService + 24));
  v11 = sub_219BF1E44();

  return v11;
}

uint64_t sub_2195F513C(unint64_t *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v9 = qword_280F617C8;
  sub_2186F20D4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  if (v8 >> 62)
  {
    v11 = sub_219BF7214();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D83C10];
  *(v10 + 56) = MEMORY[0x277D83B88];
  *(v10 + 64) = v12;
  *(v10 + 32) = v11;
  v13 = sub_219BF6214();
  sub_219BE5314(a3, a4, 2, &dword_2186C1000, v9, v13, v10);

  sub_219BE1A64();
  v14 = sub_219BE2E54();
  v15 = sub_219BE2F74();

  return v15;
}

uint64_t sub_2195F52B0(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v8 = qword_280F617C8;
  v9 = sub_219BF61F4();
  sub_2186F20D4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_219BE5314(a3, a4, 2, &dword_2186C1000, v8, v9, v10);

  sub_219BE1A64();
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F74();

  return v12;
}

double sub_2195F5454(const char *a1, uint64_t a2, double a3)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v5 = qword_280F617C8;
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v7 = MEMORY[0x277D83A80];
  *(v6 + 56) = MEMORY[0x277D839F8];
  *(v6 + 64) = v7;
  *(v6 + 32) = v8;
  v9 = sub_219BF6214();
  sub_219BE5314(a1, a2, 2, &dword_2186C1000, v5, v9, v6);

  return result;
}

uint64_t sub_2195F5590(uint64_t a1)
{
  v3 = *v1;
  sub_219BE3204();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2195F60E4;
  *(v5 + 24) = v4;
  v6 = v3;

  v7 = sub_219BE2E54();
  v8 = sub_219BE2F64();

  return v8;
}

void sub_2195F5694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2195F56F0(a2);
  }
}

void sub_2195F56F0(uint64_t a1)
{
  v2 = type metadata accessor for MyMagazinesIssue(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - v6;
  MEMORY[0x28223BE20](v7);
  v43 = (&v42 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v46 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService), *(v1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService + 24));
  v12 = sub_219BF1E54();
  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_33;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_36:

LABEL_31:

    return;
  }

LABEL_3:
  v47 = MEMORY[0x277D84F90];
  sub_218C35030(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v47;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x21CECE0F0](v15, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      sub_2195EFE8C(v17, v11);

      v47 = v16;
      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_218C35030((v19 > 1), v20 + 1, 1);
        v16 = v47;
      }

      ++v15;
      *(v16 + 2) = v20 + 1;
      sub_2190704B8(v11, &v16[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20], type metadata accessor for MyMagazinesIssue);
    }

    while (v14 != v15);

    while (1)
    {
      v21 = *(v16 + 2);
      v11 = MEMORY[0x277D84F90];
      v22 = v43;
      if (!v21)
      {
        break;
      }

      v23 = 0;
      while (v23 < *(v16 + 2))
      {
        v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v13 = *(v3 + 72);
        sub_2195E5B7C(&v16[v24 + v13 * v23], v22, type metadata accessor for MyMagazinesIssue);
        if (sub_2195F36F0(v22, 0))
        {
          sub_2190704B8(v22, v44, type metadata accessor for MyMagazinesIssue);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C35030(0, *(v11 + 2) + 1, 1);
            v11 = v47;
          }

          v27 = *(v11 + 2);
          v26 = *(v11 + 3);
          if (v27 >= v26 >> 1)
          {
            sub_218C35030((v26 > 1), v27 + 1, 1);
            v11 = v47;
          }

          *(v11 + 2) = v27 + 1;
          sub_2190704B8(v44, &v11[v24 + v27 * v13], type metadata accessor for MyMagazinesIssue);
          v22 = v43;
        }

        else
        {
          sub_2195FAE60(v22, type metadata accessor for MyMagazinesIssue);
        }

        if (v21 == ++v23)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_33:
      if (!sub_219BF7214())
      {
        goto LABEL_36;
      }

      v14 = sub_219BF7214();
      if (v14)
      {
        goto LABEL_3;
      }

      v16 = MEMORY[0x277D84F90];
    }

LABEL_23:

    v28 = *(v11 + 2);
    if (v28)
    {
      v47 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v28, 0);
      v29 = v47;
      v30 = &v11[(*(v3 + 80) + 32) & ~*(v3 + 80)];
      v31 = *(v3 + 72);
      do
      {
        v32 = v45;
        sub_2195E5B7C(v30, v45, type metadata accessor for MyMagazinesIssue);
        v33 = [*v32 identifier];
        v34 = sub_219BF5414();
        v36 = v35;

        sub_2195FAE60(v32, type metadata accessor for MyMagazinesIssue);
        v47 = v29;
        v38 = *(v29 + 2);
        v37 = *(v29 + 3);
        if (v38 >= v37 >> 1)
        {
          sub_21870B65C((v37 > 1), v38 + 1, 1);
          v29 = v47;
        }

        *(v29 + 2) = v38 + 1;
        v39 = &v29[16 * v38];
        *(v39 + 4) = v34;
        *(v39 + 5) = v36;
        v30 += v31;
        --v28;
      }

      while (v28);

      if (*(v29 + 2))
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_29:
        v40 = *(v46 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList);
        v41 = sub_219BF5904();

        [v40 removeIssueIDs_];

        return;
      }
    }

    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_2195F5F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2195F5FA4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2195F6078()
{
  result = qword_27CC1CDD8;
  if (!qword_27CC1CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CDD8);
  }

  return result;
}

void sub_2195F6150(uint64_t *a1)
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
        sub_219BDBD34();
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_219BDBD34() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2195F6B20(v8, v9, a1, v4);
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
    sub_2195F685C(0, v2, 1, a1);
  }
}

void sub_2195F627C(uint64_t *a1)
{
  sub_218726800(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = v52 - v4;
  v66 = sub_219BDBD34();
  v5 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v52 - v8;
  v61 = type metadata accessor for MyMagazinesIssue(0);
  v10 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (v52 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (v52 - v16);
  v18 = a1[1];
  v19 = sub_219BF7884();
  if (v19 < v18)
  {
    if (v18 >= -1)
    {
      v20 = v19;
      if (v18 <= 1)
      {
        v21 = MEMORY[0x277D84F90];
      }

      else
      {
        v21 = sub_219BF5A34();
        *(v21 + 16) = v18 / 2;
      }

      v68 = v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v69 = v18 / 2;
      v51 = v21;
      sub_2195F7548(&v68, v67, a1, v20);
      *(v51 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v18 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  if (v18 >= 2)
  {
    v64 = v14;
    v52[1] = v1;
    v53 = v18;
    v22 = *a1;
    v23 = *(v10 + 72);
    v62 = (v5 + 8);
    v63 = v23;
    v58 = -v23;
    v59 = v22;
    v24 = -1;
    v25 = 1;
    v26 = v22;
    do
    {
      v55 = v25;
      v56 = v24;
      v27 = v24;
      v54 = v26;
      do
      {
        v70 = v27;
        sub_2195E5B7C(v26 + v23, v17, type metadata accessor for MyMagazinesIssue);
        v28 = v64;
        sub_2195E5B7C(v26, v64, type metadata accessor for MyMagazinesIssue);
        sub_2195EDDDC(v9);
        v29 = v9;
        v30 = v65;
        sub_2195EDDDC(v65);
        v31 = sub_219BDBCC4();
        v32 = *v62;
        v33 = v66;
        (*v62)(v30, v66);
        v32(v29, v33);
        if (v31)
        {
          sub_2195EDDDC(v29);
          sub_2195EDDDC(v30);
          v34 = sub_219BDBCC4();
          v32(v30, v33);
          v32(v29, v33);
          v35 = v34 == 1;
        }

        else
        {
          v36 = [*v17 identifier];
          v37 = sub_219BF5414();
          v39 = v38;

          v68 = v37;
          v69 = v39;
          v40 = [*v28 identifier];
          v41 = sub_219BF5414();
          v43 = v42;

          v67[0] = v41;
          v67[1] = v43;
          v44 = sub_219BDBE34();
          v45 = v57;
          (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
          sub_2187F3BD4();
          v46 = sub_219BF7074();
          sub_2195FAA48(v45, &qword_280EE9C10, MEMORY[0x277CC9788]);

          v35 = v46 == -1;
        }

        v47 = v35;
        v9 = v29;
        sub_2195FAE60(v28, type metadata accessor for MyMagazinesIssue);
        sub_2195FAE60(v17, type metadata accessor for MyMagazinesIssue);
        v23 = v63;
        v48 = v70;
        if (!v47)
        {
          break;
        }

        if (!v59)
        {
          goto LABEL_26;
        }

        v49 = v60;
        sub_2190704B8(v26 + v63, v60, type metadata accessor for MyMagazinesIssue);
        swift_arrayInitWithTakeFrontToBack();
        sub_2190704B8(v49, v26, type metadata accessor for MyMagazinesIssue);
        v26 += v58;
        v50 = __CFADD__(v48, 1);
        v27 = v48 + 1;
      }

      while (!v50);
      v25 = v55 + 1;
      v26 = v54 + v23;
      v24 = v56 - 1;
    }

    while (v55 + 1 != v53);
  }
}

void sub_2195F685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v26 = sub_219BF5334();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2195F6B20(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_218C81048(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_2195F871C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_218C81048(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_218C80FBC(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v133) = sub_219BF5334();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_219BF5334() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_2191F6B60(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_2191F6B60((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_2195F871C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_218C81048(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_218C80FBC(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v109 = sub_219BF5334();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
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

void sub_2195F7548(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v185 = a1;
  sub_218726800(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v196 = &v179 - v9;
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v197 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v179 - v14;
  v201 = type metadata accessor for MyMagazinesIssue(0);
  v192 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v187 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v200 = &v179 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = (&v179 - v20);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v180 = (&v179 - v24);
  MEMORY[0x28223BE20](v25);
  v179 = (&v179 - v26);
  MEMORY[0x28223BE20](v27);
  v182 = (&v179 - v28);
  MEMORY[0x28223BE20](v29);
  v181 = (&v179 - v31);
  v32 = *(a3 + 8);
  v188 = a3;
  if (v32 < 1)
  {
    v203 = MEMORY[0x277D84F90];
LABEL_116:
    v15 = *v185;
    if (!*v185)
    {
      goto LABEL_154;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_148:
      v203 = sub_218C81048(v203);
    }

    v212 = v203;
    v174 = *(v203 + 2);
    if (v174 >= 2)
    {
      do
      {
        v175 = *a3;
        if (!*a3)
        {
          goto LABEL_152;
        }

        a3 = *&v203[16 * v174];
        v176 = *&v203[16 * v174 + 24];
        sub_2195F8D10(v175 + *(v192 + 72) * a3, v175 + *(v192 + 72) * *&v203[16 * v174 + 16], v175 + *(v192 + 72) * v176, v15);
        if (v5)
        {
          break;
        }

        if (v176 < a3)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = sub_218C81048(v203);
        }

        if (v174 - 2 >= *(v203 + 2))
        {
          goto LABEL_142;
        }

        v177 = v203;
        v178 = &v203[16 * v174];
        *v178 = a3;
        *(v178 + 1) = v176;
        v212 = v177;
        sub_218C80FBC(v174 - 1);
        v203 = v212;
        v174 = *(v212 + 2);
        a3 = v188;
      }

      while (v174 > 1);
    }

LABEL_126:

    return;
  }

  v202 = v30;
  v33 = 0;
  v203 = MEMORY[0x277D84F90];
  v204 = (v11 + 8);
  v184 = a4;
  v205 = v15;
  v207 = v21;
  v34 = a4;
  while (1)
  {
    v35 = v33 + 1;
    v186 = v33;
    if (v33 + 1 < v32)
    {
      v190 = v32;
      v183 = v5;
      v36 = v15;
      v37 = *a3;
      v38 = *(v192 + 72);
      v195 = v33 + 1;
      v39 = v181;
      sub_2195E5B7C(v37 + v38 * v35, v181, type metadata accessor for MyMagazinesIssue);
      v193 = v38;
      v40 = v182;
      sub_2195E5B7C(v37 + v38 * v33, v182, type metadata accessor for MyMagazinesIssue);
      sub_2195EDDDC(v36);
      v41 = v197;
      sub_2195EDDDC(v197);
      v42 = sub_219BDBCC4();
      v43 = *v204;
      (*v204)(v41, v10);
      v43(v36, v10);
      if (v42)
      {
        sub_2195EDDDC(v36);
        sub_2195EDDDC(v41);
        v44 = sub_219BDBCC4();
        v43(v41, v10);
        v43(v36, v10);
        v45 = v44 == 1;
      }

      else
      {
        v46 = [*v39 identifier];
        v47 = sub_219BF5414();
        v49 = v48;

        v210 = v47;
        v211 = v49;
        v50 = [*v40 identifier];
        v51 = sub_219BF5414();
        v53 = v52;

        v208 = v51;
        v209 = v53;
        v39 = v181;
        v54 = sub_219BDBE34();
        v55 = v196;
        (*(*(v54 - 8) + 56))(v196, 1, 1, v54);
        sub_2187F3BD4();
        v56 = sub_219BF7074();
        v57 = v55;
        v40 = v182;
        sub_2195FAA48(v57, &qword_280EE9C10, MEMORY[0x277CC9788]);

        v45 = v56 == -1;
      }

      v58 = v45;
      LODWORD(v191) = v58;
      sub_2195FAE60(v40, type metadata accessor for MyMagazinesIssue);
      sub_2195FAE60(v39, type metadata accessor for MyMagazinesIssue);
      v59 = v186 + 2;
      v60 = v193 * (v186 + 2);
      v61 = v37 + v60;
      v62 = v195;
      v63 = v193 * v195;
      v64 = v37 + v193 * v195;
      v21 = v207;
      v65 = v180;
      v66 = v179;
      do
      {
        v15 = v59;
        v70 = v62;
        v199 = v63;
        v71 = v60;
        if (v59 >= v190)
        {
          break;
        }

        v206 = v62;
        v194 = v61;
        v195 = v60;
        v198 = v59;
        sub_2195E5B7C(v61, v66, type metadata accessor for MyMagazinesIssue);
        sub_2195E5B7C(v64, v65, type metadata accessor for MyMagazinesIssue);
        v72 = v205;
        sub_2195EDDDC(v205);
        v73 = v197;
        sub_2195EDDDC(v197);
        v74 = sub_219BDBCC4();
        v75 = v43;
        v43(v73, v10);
        v43(v72, v10);
        if (v74)
        {
          sub_2195EDDDC(v72);
          sub_2195EDDDC(v73);
          v67 = sub_219BDBCC4();
          v43(v73, v10);
          v43(v72, v10);
          v68 = v67 == 1;
        }

        else
        {
          v76 = [*v66 identifier];
          v77 = sub_219BF5414();
          v79 = v78;
          v189 = v78;

          v210 = v77;
          v211 = v79;
          v80 = [*v65 identifier];
          v81 = sub_219BF5414();
          v83 = v82;

          v208 = v81;
          v209 = v83;
          v84 = sub_219BDBE34();
          v85 = v196;
          (*(*(v84 - 8) + 56))(v196, 1, 1, v84);
          sub_2187F3BD4();
          v86 = sub_219BF7074();
          sub_2195FAA48(v85, &qword_280EE9C10, MEMORY[0x277CC9788]);

          v68 = v86 == -1;
        }

        v69 = v68;
        v43 = v75;
        sub_2195FAE60(v65, type metadata accessor for MyMagazinesIssue);
        sub_2195FAE60(v66, type metadata accessor for MyMagazinesIssue);
        v15 = v198;
        v59 = v198 + 1;
        v61 = v194 + v193;
        v64 += v193;
        v70 = v206;
        v62 = v206 + 1;
        v63 = v199 + v193;
        v71 = v195;
        v60 = v195 + v193;
        v45 = v191 == v69;
        v21 = v207;
      }

      while (v45);
      if (v191)
      {
        a3 = v186;
        v5 = v183;
        if (v15 < v186)
        {
          goto LABEL_145;
        }

        if (v186 >= v15)
        {
          v35 = v15;
          a3 = v188;
          v15 = v205;
        }

        else
        {
          v87 = v186 * v193;
          v88 = v199;
          do
          {
            if (a3 != v70)
            {
              v206 = v70;
              v90 = v5;
              v91 = *v188;
              if (!*v188)
              {
                goto LABEL_151;
              }

              v92 = v71;
              sub_2190704B8(v91 + v87, v187, type metadata accessor for MyMagazinesIssue);
              if (v87 < v88 || v91 + v87 >= (v91 + v92))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v87 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_2190704B8(v187, v91 + v88, type metadata accessor for MyMagazinesIssue);
              v5 = v90;
              v71 = v92;
              v70 = v206;
            }

            ++a3;
            v88 -= v193;
            v71 -= v193;
            v87 += v193;
          }

          while (a3 < v70--);
          v35 = v15;
          a3 = v188;
          v15 = v205;
          v21 = v207;
        }

        v34 = v184;
      }

      else
      {
        v35 = v15;
        a3 = v188;
        v34 = v184;
        v15 = v205;
        v5 = v183;
      }
    }

    v93 = *(a3 + 8);
    if (v35 >= v93)
    {
      goto LABEL_63;
    }

    if (__OFSUB__(v35, v186))
    {
      goto LABEL_144;
    }

    if (v35 - v186 >= v34)
    {
LABEL_63:
      v94 = v186;
      goto LABEL_64;
    }

    v94 = v186;
    v95 = v186 + v34;
    if (__OFADD__(v186, v34))
    {
      goto LABEL_146;
    }

    if (v95 >= v93)
    {
      v95 = *(a3 + 8);
    }

    if (v95 < v186)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v35 != v95)
    {
      break;
    }

LABEL_64:
    if (v35 < v94)
    {
      goto LABEL_143;
    }

    v33 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v203 = sub_2191F6B60(0, *(v203 + 2) + 1, 1, v203);
    }

    v127 = *(v203 + 2);
    v126 = *(v203 + 3);
    v128 = v127 + 1;
    if (v127 >= v126 >> 1)
    {
      v203 = sub_2191F6B60((v126 > 1), v127 + 1, 1, v203);
    }

    v129 = v203;
    *(v203 + 2) = v128;
    v130 = &v129[16 * v127];
    *(v130 + 4) = v94;
    *(v130 + 5) = v33;
    v131 = *v185;
    if (!*v185)
    {
      goto LABEL_153;
    }

    if (v127)
    {
      v15 = v205;
      while (1)
      {
        v132 = v128 - 1;
        if (v128 >= 4)
        {
          break;
        }

        if (v128 == 3)
        {
          v133 = *(v203 + 4);
          v134 = *(v203 + 5);
          v143 = __OFSUB__(v134, v133);
          v135 = v134 - v133;
          v136 = v143;
LABEL_85:
          if (v136)
          {
            goto LABEL_132;
          }

          v149 = &v203[16 * v128];
          v151 = *v149;
          v150 = *(v149 + 1);
          v152 = __OFSUB__(v150, v151);
          v153 = v150 - v151;
          v154 = v152;
          if (v152)
          {
            goto LABEL_135;
          }

          v155 = &v203[16 * v132 + 32];
          v157 = *v155;
          v156 = *(v155 + 1);
          v143 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v143)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v153, v158))
          {
            goto LABEL_139;
          }

          if (v153 + v158 >= v135)
          {
            if (v135 < v158)
            {
              v132 = v128 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        v159 = &v203[16 * v128];
        v161 = *v159;
        v160 = *(v159 + 1);
        v143 = __OFSUB__(v160, v161);
        v153 = v160 - v161;
        v154 = v143;
LABEL_99:
        if (v154)
        {
          goto LABEL_134;
        }

        v162 = &v203[16 * v132];
        v164 = *(v162 + 4);
        v163 = *(v162 + 5);
        v143 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v143)
        {
          goto LABEL_137;
        }

        if (v165 < v153)
        {
          goto LABEL_4;
        }

LABEL_106:
        v15 = v132 - 1;
        if (v132 - 1 >= v128)
        {
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
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v170 = *&v203[16 * v15 + 32];
        v171 = *&v203[16 * v132 + 40];
        sub_2195F8D10(*a3 + *(v192 + 72) * v170, *a3 + *(v192 + 72) * *&v203[16 * v132 + 32], *a3 + *(v192 + 72) * v171, v131);
        if (v5)
        {
          goto LABEL_126;
        }

        if (v171 < v170)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = sub_218C81048(v203);
        }

        if (v15 >= *(v203 + 2))
        {
          goto LABEL_129;
        }

        v172 = v203;
        v173 = &v203[16 * v15];
        *(v173 + 4) = v170;
        *(v173 + 5) = v171;
        v212 = v172;
        sub_218C80FBC(v132);
        v203 = v212;
        v128 = *(v212 + 2);
        v15 = v205;
        v21 = v207;
        if (v128 <= 1)
        {
          goto LABEL_4;
        }
      }

      v137 = &v203[16 * v128 + 32];
      v138 = *(v137 - 8);
      v139 = *(v137 - 7);
      v143 = __OFSUB__(v139, v138);
      v140 = v139 - v138;
      if (v143)
      {
        goto LABEL_130;
      }

      v142 = *(v137 - 6);
      v141 = *(v137 - 5);
      v143 = __OFSUB__(v141, v142);
      v135 = v141 - v142;
      v136 = v143;
      if (v143)
      {
        goto LABEL_131;
      }

      v144 = &v203[16 * v128];
      v146 = *v144;
      v145 = *(v144 + 1);
      v143 = __OFSUB__(v145, v146);
      v147 = v145 - v146;
      if (v143)
      {
        goto LABEL_133;
      }

      v143 = __OFADD__(v135, v147);
      v148 = v135 + v147;
      if (v143)
      {
        goto LABEL_136;
      }

      if (v148 >= v140)
      {
        v166 = &v203[16 * v132 + 32];
        v168 = *v166;
        v167 = *(v166 + 1);
        v143 = __OFSUB__(v167, v168);
        v169 = v167 - v168;
        if (v143)
        {
          goto LABEL_140;
        }

        if (v135 < v169)
        {
          v132 = v128 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

    v15 = v205;
LABEL_4:
    v32 = *(a3 + 8);
    v34 = v184;
    if (v33 >= v32)
    {
      goto LABEL_116;
    }
  }

  v183 = v5;
  v96 = *a3;
  v97 = *(v192 + 72);
  v98 = *a3 + v97 * (v35 - 1);
  v198 = -v97;
  v199 = v96;
  v99 = v186 - v35;
  v189 = v97;
  v100 = v96 + v35 * v97;
  v101 = v197;
  v190 = v95;
LABEL_50:
  v194 = v98;
  v195 = v35;
  v191 = v100;
  v193 = v99;
  v102 = v99;
  while (1)
  {
    v206 = v102;
    v103 = v202;
    sub_2195E5B7C(v100, v202, type metadata accessor for MyMagazinesIssue);
    sub_2195E5B7C(v98, v21, type metadata accessor for MyMagazinesIssue);
    sub_2195EDDDC(v15);
    sub_2195EDDDC(v101);
    v104 = sub_219BDBCC4();
    v105 = *v204;
    (*v204)(v101, v10);
    v105(v15, v10);
    if (v104)
    {
      sub_2195EDDDC(v15);
      sub_2195EDDDC(v101);
      v106 = v15;
      v107 = sub_219BDBCC4();
      v105(v101, v10);
      v105(v106, v10);
      v108 = v107 == 1;
    }

    else
    {
      v109 = [*v103 identifier];
      v110 = sub_219BF5414();
      v112 = v111;

      v210 = v110;
      v211 = v112;
      v113 = [*v207 identifier];
      v114 = sub_219BF5414();
      v116 = v115;

      v208 = v114;
      v209 = v116;
      v117 = sub_219BDBE34();
      v118 = v10;
      v119 = v196;
      (*(*(v117 - 8) + 56))(v196, 1, 1, v117);
      sub_2187F3BD4();
      v120 = sub_219BF7074();
      v121 = v119;
      v10 = v118;
      v101 = v197;
      sub_2195FAA48(v121, &qword_280EE9C10, MEMORY[0x277CC9788]);

      v108 = v120 == -1;
    }

    v122 = v108;
    v21 = v207;
    sub_2195FAE60(v207, type metadata accessor for MyMagazinesIssue);
    sub_2195FAE60(v103, type metadata accessor for MyMagazinesIssue);
    if (!v122)
    {
      v15 = v205;
LABEL_49:
      v35 = v195 + 1;
      v98 = v194 + v189;
      v99 = v193 - 1;
      v100 = v191 + v189;
      if (v195 + 1 == v190)
      {
        v35 = v190;
        v5 = v183;
        a3 = v188;
        goto LABEL_63;
      }

      goto LABEL_50;
    }

    v123 = v206;
    if (!v199)
    {
      break;
    }

    v124 = v200;
    sub_2190704B8(v100, v200, type metadata accessor for MyMagazinesIssue);
    swift_arrayInitWithTakeFrontToBack();
    sub_2190704B8(v124, v98, type metadata accessor for MyMagazinesIssue);
    v98 += v198;
    v100 += v198;
    v125 = __CFADD__(v123, 1);
    v102 = v123 + 1;
    v15 = v205;
    if (v125)
    {
      goto LABEL_49;
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

void sub_2195F871C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_219BDBD34();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          LOBYTE(v34) = sub_219BF5334();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        LOBYTE(v21) = sub_219BF5334();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_2189F1B0C(&v54, &v53, &v52);
}

void sub_2195F8D10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v98 = a3;
  v103 = a2;
  sub_218726800(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v88 - v7;
  v102 = sub_219BDBD34();
  v8 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v88 - v12;
  v100 = type metadata accessor for MyMagazinesIssue(0);
  MEMORY[0x28223BE20](v100);
  v15 = (&v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v88 - v17);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v23 = (&v88 - v22);
  v99 = *(v24 + 72);
  if (!v99)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v94 = a1;
  v25 = v103 - a1;
  if (v103 - a1 == 0x8000000000000000 && v99 == -1)
  {
    goto LABEL_73;
  }

  v26 = v98 - v103;
  if (v98 - v103 == 0x8000000000000000 && v99 == -1)
  {
    goto LABEL_74;
  }

  v110 = v94;
  v109 = a4;
  v96 = v10;
  if (v25 / v99 >= v26 / v99)
  {
    v29 = v26 / v99 * v99;
    if (a4 < v103 || v103 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v30 = v98;
    }

    else
    {
      v30 = v98;
      if (a4 != v103)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v58 = a4 + v29;
    if (v29 >= 1)
    {
      v59 = -v99;
      v60 = (v8 + 8);
      v61 = v58;
      v91 = v15;
      v92 = v60;
      v101 = a4;
      v99 = -v99;
      do
      {
        v89 = v58;
        v62 = v103;
        v103 += v59;
        v95 = v62;
        while (1)
        {
          if (v62 <= v94)
          {
            v110 = v62;
            v108 = v89;
            goto LABEL_71;
          }

          v64 = v30;
          v90 = v58;
          v97 = (v61 + v59);
          v98 = v61;
          sub_2195E5B7C(v61 + v59, v18, type metadata accessor for MyMagazinesIssue);
          v65 = v91;
          sub_2195E5B7C(v103, v91, type metadata accessor for MyMagazinesIssue);
          sub_2195EDDDC(v13);
          v66 = v13;
          v67 = v96;
          sub_2195EDDDC(v96);
          v68 = sub_219BDBCC4();
          v69 = *v60;
          v70 = v102;
          (*v60)(v67, v102);
          v69(v66, v70);
          if (v68)
          {
            sub_2195EDDDC(v66);
            sub_2195EDDDC(v67);
            v71 = sub_219BDBCC4();
            v72 = v102;
            v69(v67, v102);
            v69(v66, v72);
            v73 = v71 == 1;
          }

          else
          {
            v74 = [*v18 identifier];
            v75 = sub_219BF5414();
            v77 = v76;

            v106 = v75;
            v107 = v77;
            v78 = [*v65 identifier];
            v79 = sub_219BF5414();
            v81 = v80;

            v104 = v79;
            v105 = v81;
            v82 = sub_219BDBE34();
            v83 = v93;
            (*(*(v82 - 8) + 56))(v93, 1, 1, v82);
            sub_2187F3BD4();
            v84 = sub_219BF7074();
            sub_2195FAA48(v83, &qword_280EE9C10, MEMORY[0x277CC9788]);

            v73 = v84 == -1;
          }

          v85 = v73;
          v13 = v66;
          v30 = v64 + v99;
          sub_2195FAE60(v65, type metadata accessor for MyMagazinesIssue);
          sub_2195FAE60(v18, type metadata accessor for MyMagazinesIssue);
          v86 = v101;
          if (v85)
          {
            break;
          }

          v87 = v97;
          v58 = v97;
          if (v64 < v98 || v30 >= v98)
          {
            swift_arrayInitWithTakeFrontToBack();
            v59 = v99;
          }

          else
          {
            v59 = v99;
            if (v64 != v98)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v61 = v58;
          v63 = v87 > v86;
          v60 = v92;
          v62 = v95;
          if (!v63)
          {
            v103 = v95;
            goto LABEL_70;
          }
        }

        if (v64 < v95 || v30 >= v95)
        {
          swift_arrayInitWithTakeFrontToBack();
          v58 = v90;
          v59 = v99;
        }

        else
        {
          v58 = v90;
          v59 = v99;
          if (v64 != v95)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v61 = v98;
        v60 = v92;
      }

      while (v98 > v86);
    }

LABEL_70:
    v110 = v103;
    v108 = v58;
  }

  else
  {
    v27 = v25 / v99 * v99;
    v28 = v94;
    v97 = v21;
    if (a4 < v94 || v94 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v94)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v95 = a4 + v27;
    v108 = a4 + v27;
    if (v27 >= 1 && v103 < v98)
    {
      v32 = (v8 + 8);
      v92 = v32;
      do
      {
        sub_2195E5B7C(v103, v23, type metadata accessor for MyMagazinesIssue);
        v101 = a4;
        v33 = v23;
        v34 = v97;
        sub_2195E5B7C(a4, v97, type metadata accessor for MyMagazinesIssue);
        sub_2195EDDDC(v13);
        sub_2195EDDDC(v10);
        v35 = sub_219BDBCC4();
        v36 = *v32;
        v37 = v102;
        (*v32)(v10, v102);
        v36(v13, v37);
        if (v35)
        {
          sub_2195EDDDC(v13);
          sub_2195EDDDC(v10);
          v38 = sub_219BDBCC4();
          v39 = v102;
          v36(v10, v102);
          v36(v13, v39);
          v40 = v38 == 1;
        }

        else
        {
          v41 = [*v33 identifier];
          v42 = sub_219BF5414();
          v44 = v43;

          v106 = v42;
          v107 = v44;
          v45 = [*v34 identifier];
          v46 = sub_219BF5414();
          v48 = v47;

          v104 = v46;
          v105 = v48;
          v49 = sub_219BDBE34();
          v50 = v13;
          v51 = v93;
          (*(*(v49 - 8) + 56))(v93, 1, 1, v49);
          sub_2187F3BD4();
          v52 = sub_219BF7074();
          v53 = v51;
          v13 = v50;
          v10 = v96;
          sub_2195FAA48(v53, &qword_280EE9C10, MEMORY[0x277CC9788]);

          v32 = v92;

          v40 = v52 == -1;
        }

        v54 = v40;
        sub_2195FAE60(v34, type metadata accessor for MyMagazinesIssue);
        sub_2195FAE60(v33, type metadata accessor for MyMagazinesIssue);
        a4 = v101;
        v23 = v33;
        if (v54)
        {
          v55 = v99;
          v56 = v103 + v99;
          if (v28 < v103 || v28 >= v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v103)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v103 = v56;
        }

        else
        {
          v55 = v99;
          v57 = v101 + v99;
          if (v28 < v101 || v28 >= v57)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v101)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v109 = v57;
          a4 += v55;
        }

        v28 += v55;
        v110 = v28;
      }

      while (a4 < v95 && v103 < v98);
    }
  }

LABEL_71:
  sub_2189F1B24(&v110, &v109, &v108);
}

void sub_2195F977C(uint64_t a1)
{
  if (!qword_280EE5E80)
  {
    sub_2195F97F0(255, &qword_280EE5E88, MEMORY[0x277D6C898]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5E80);
    }
  }
}

void sub_2195F97F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyMagazinesStore.StoreDescriptor;
    v8[1] = &type metadata for PersistentMyMagazinesState;
    v8[2] = sub_2193EAF7C();
    v8[3] = sub_2193EAFD0();
    v8[4] = sub_2193EB024();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2195F9888(uint64_t a1)
{
  if (!qword_280EE7EF0)
  {
    sub_2195FC568(255, &qword_280EE7EF8, &type metadata for CurrentIssuesState, MEMORY[0x277D6C9F8]);
    sub_2195F9920(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280EE7EF0);
    }
  }
}

void sub_2195F9920(uint64_t a1)
{
  if (!qword_280EE7EE0)
  {
    sub_2194FB2A4(255, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, MEMORY[0x277D83940]);
    v1 = sub_219BE1A34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7EE0);
    }
  }
}

BOOL sub_2195F99A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesIssue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  sub_2195FAEC0(0, &unk_280ED83B0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_2195FA9C8(a1, &v20 - v12, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  sub_2195FA9C8(a2, &v13[v15], qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_2195FA9C8(v13, v10, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_2190704B8(&v13[v15], v7, type metadata accessor for MyMagazinesIssue);
      v17 = sub_2195F9D18(v10, v7);
      sub_2195FAE60(v7, type metadata accessor for MyMagazinesIssue);
      sub_2195FAE60(v10, type metadata accessor for MyMagazinesIssue);
      sub_2195FAA48(v13, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_2195FAE60(v10, type metadata accessor for MyMagazinesIssue);
LABEL_6:
    sub_2195FAF38(v13, &unk_280ED83B0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2195FAA48(v13, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
LABEL_8:
  v18 = type metadata accessor for MyMagazinesState(0);
  if (sub_21941AA2C(*(a1 + *(v18 + 20)), *(a2 + *(v18 + 20))))
  {
    return *(a1 + *(v18 + 24)) == *(a2 + *(v18 + 24));
  }

  return 0;
}

BOOL sub_2195F9D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CC9578];
  sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  sub_2195FAEC0(0, &qword_280EE9C30, &qword_280EE9C40, v8);
  v64 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  sub_2186C6148(0, &qword_280E8DA00, 0x277D82BB8);
  if ((sub_219BF6DD4() & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v56 = v18;
  v58 = v7;
  v57 = type metadata accessor for MyMagazinesIssue(0);
  v25 = *(v57 + 24);
  v26 = *(v64 + 48);
  v61 = v5;
  v27 = MEMORY[0x277CC9578];
  v59 = a1;
  sub_2195FA9C8(a1 + v25, v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v60 = a2;
  v28 = a2 + v25;
  v29 = v4;
  v30 = v61;
  sub_2195FA9C8(v28, &v24[v26], &qword_280EE9C40, v27);
  v31 = *(v30 + 48);
  if (v31(v24, 1, v29) == 1)
  {
    if (v31(&v24[v26], 1, v29) == 1)
    {
      sub_2195FAA48(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v32 = v58;
      goto LABEL_10;
    }

LABEL_8:
    v33 = MEMORY[0x277CC9578];
    v34 = v24;
LABEL_16:
    sub_2195FAF38(v34, &qword_280EE9C30, &qword_280EE9C40, v33);
    return 0;
  }

  sub_2195FA9C8(v24, v15, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v31(&v24[v26], 1, v29) == 1)
  {
    (*(v30 + 8))(v15, v29);
    goto LABEL_8;
  }

  v35 = &v24[v26];
  v32 = v58;
  (*(v30 + 32))(v58, v35, v29);
  sub_2195FB02C(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v36 = sub_219BF53A4();
  v37 = *(v30 + 8);
  v37(v32, v29);
  v37(v15, v29);
  sub_2195FAA48(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v38 = v57;
  v39 = *(v57 + 28);
  v40 = *(v64 + 48);
  v41 = MEMORY[0x277CC9578];
  sub_2195FA9C8(v59 + v39, v21, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_2195FA9C8(v60 + v39, &v21[v40], &qword_280EE9C40, v41);
  if (v31(v21, 1, v29) != 1)
  {
    v42 = v63;
    sub_2195FA9C8(v21, v63, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v43 = v31(&v21[v40], 1, v29);
    v44 = v61;
    if (v43 != 1)
    {
      (*(v61 + 32))(v32, &v21[v40], v29);
      sub_2195FB02C(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v46 = sub_219BF53A4();
      v47 = *(v44 + 8);
      v47(v32, v29);
      v47(v42, v29);
      sub_2195FAA48(v21, &qword_280EE9C40, MEMORY[0x277CC9578]);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v61 + 8))(v42, v29);
LABEL_15:
    v33 = MEMORY[0x277CC9578];
    v34 = v21;
    goto LABEL_16;
  }

  if (v31(&v21[v40], 1, v29) != 1)
  {
    goto LABEL_15;
  }

  sub_2195FAA48(v21, &qword_280EE9C40, MEMORY[0x277CC9578]);
LABEL_20:
  v48 = *(v38 + 32);
  v49 = *(v64 + 48);
  v50 = MEMORY[0x277CC9578];
  v24 = v56;
  sub_2195FA9C8(v59 + v48, v56, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_2195FA9C8(v60 + v48, &v24[v49], &qword_280EE9C40, v50);
  if (v31(v24, 1, v29) == 1)
  {
    if (v31(&v24[v49], 1, v29) == 1)
    {
      sub_2195FAA48(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
      return 1;
    }

    goto LABEL_8;
  }

  v51 = v62;
  sub_2195FA9C8(v24, v62, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v31(&v24[v49], 1, v29) == 1)
  {
    (*(v61 + 8))(v51, v29);
    goto LABEL_8;
  }

  v52 = v61;
  (*(v61 + 32))(v32, &v24[v49], v29);
  sub_2195FB02C(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v53 = sub_219BF53A4();
  v54 = *(v52 + 8);
  v54(v32, v29);
  v54(v51, v29);
  sub_2195FAA48(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
  return (v53 & 1) != 0;
}