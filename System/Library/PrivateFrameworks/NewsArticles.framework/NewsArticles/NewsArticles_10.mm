__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_1D7A90544(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D7A90554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D7A4E2D8;

  return sub_1D7A8EEFC(a1, v4, v5, v6, v7, v8);
}

void sub_1D7A9061C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A90680(uint64_t a1)
{
  sub_1D7A9061C(0, &unk_1EE0BB400, type metadata accessor for RecipeContentPrefetchItem, MEMORY[0x1E69D6AF8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7A9070C()
{
  result = qword_1EC9E3600;
  if (!qword_1EC9E3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3600);
  }

  return result;
}

uint64_t sub_1D7A90760(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D7A907A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7A908A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for EndOfArticleLayoutSectionDescriptor.Decoration(0);
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer(0);
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2BC2C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x1E69D8478];
  v65 = *(v17 + 104);
  v66 = v17 + 104;
  v65(v21, v22, v16, v19);
  v23 = sub_1D7D2E02C();
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v67 = v21;
  v64 = v25;
  v25(v21, v16);
  v26 = *(v23 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v69 = v6;
  v70 = a1;
  if (v26)
  {
    v60[1] = v24;
    v61 = v16;
    v62 = v10;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C2BC(0, v26, 0);
    v28 = v23;
    v29 = v74;
    v72 = sub_1D7D2EA2C();
    v30 = *(v72 - 8);
    v71 = *(v30 + 16);
    v31 = v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v32 = *(v30 + 72);
    do
    {
      v71(v15, v31, v72);
      v74 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D7A5C2BC((v33 > 1), v34 + 1, 1);
        v29 = v74;
      }

      *(v29 + 16) = v34 + 1;
      sub_1D7A91AC8(v15, v29 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v34, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header);
      v31 += v32;
      --v26;
    }

    while (v26);

    v6 = v69;
    a1 = v70;
    v16 = v61;
    v10 = v62;
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v35 = v67;
  (v65)(v67, *MEMORY[0x1E69D8470], v16);
  v36 = sub_1D7D2E02C();
  v64(v35, v16);
  v37 = *(v36 + 16);
  if (v37)
  {
    v74 = v27;
    sub_1D7A5C26C(0, v37, 0);
    v38 = v74;
    v72 = sub_1D7D2EA2C();
    v39 = *(v72 - 8);
    v71 = *(v39 + 16);
    v40 = *(v39 + 80);
    v67 = v36;
    v41 = v36 + ((v40 + 32) & ~v40);
    v42 = *(v39 + 72);
    v43 = v63;
    do
    {
      v71(v10, v41, v72);
      v74 = v38;
      v44 = v10;
      v46 = *(v38 + 16);
      v45 = *(v38 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1D7A5C26C((v45 > 1), v46 + 1, 1);
        v43 = v63;
        v38 = v74;
      }

      *(v38 + 16) = v46 + 1;
      sub_1D7A91AC8(v44, v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v46, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer);
      v41 += v42;
      --v37;
      v10 = v44;
    }

    while (v37);

    v6 = v69;
    a1 = v70;
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  v47 = sub_1D7D2E01C();
  v48 = *(v47 + 16);
  if (v48)
  {
    v74 = v27;
    sub_1D7A5C21C(0, v48, 0);
    v49 = v74;
    v72 = sub_1D7D2E2FC();
    v50 = *(v72 - 8);
    v71 = *(v50 + 16);
    v51 = *(v50 + 80);
    v67 = v47;
    v52 = v47 + ((v51 + 32) & ~v51);
    v53 = *(v50 + 72);
    do
    {
      v71(v6, v52, v72);
      v74 = v49;
      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1D7A5C21C((v54 > 1), v55 + 1, 1);
        v49 = v74;
      }

      *(v49 + 16) = v55 + 1;
      sub_1D7A91AC8(v6, v49 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v55, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Decoration);
      v52 += v53;
      --v48;
    }

    while (v48);
    v56 = sub_1D7D2E03C();
    (*(*(v56 - 8) + 8))(v70, v56);
  }

  else
  {

    v58 = sub_1D7D2E03C();
    result = (*(*(v58 - 8) + 8))(a1, v58);
    v49 = MEMORY[0x1E69E7CC0];
  }

  v59 = v68;
  *v68 = v29;
  v59[1] = v38;
  v59[2] = v49;
  return result;
}

uint64_t EndOfArticleLayoutSectionDescriptor.supplementaryAttributes.getter()
{
  v1 = v0[1];
  v2 = sub_1D7A91044(*v0, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header);
  v3 = sub_1D7A91044(v1, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer);
  sub_1D79E2E10(v3);
  return v2;
}

uint64_t sub_1D7A91044(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v32 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v12 = sub_1D7D2EA2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C30C(0, v17, 0);
    v18 = v36;
    v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    v29 = (v13 + 32);
    v30 = v20;
    v21 = (v13 + 16);
    v22 = (v13 + 8);
    do
    {
      v23 = v32;
      sub_1D7A91B30(v19, v11, v32);
      v24 = v31;
      sub_1D7A91B30(v11, v31, v23);
      (*v29)(v16, v24, v12);
      sub_1D7A91B98(v11, v23);
      v36 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D7A5C30C((v25 > 1), v26 + 1, 1);
      }

      v34 = v12;
      v35 = sub_1D7A91BF8();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
      (*v21)(boxed_opaque_existential_1, v16, v12);
      v18 = v36;
      *(v36 + 16) = v26 + 1;
      sub_1D799D69C(&v33, v18 + 40 * v26 + 32);
      (*v22)(v16, v12);
      v19 += v30;
      --v17;
    }

    while (v17);
  }

  return v18;
}

uint64_t sub_1D7A912EC()
{
  v1 = v0[1];
  v2 = sub_1D7A91044(*v0, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header);
  v3 = sub_1D7A91044(v1, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer);
  sub_1D79E2E10(v3);
  return v2;
}

uint64_t sub_1D7A913B4(uint64_t a1)
{
  v2 = sub_1D7A91A74();

  return MEMORY[0x1EEE47F40](a1, v2);
}

uint64_t sub_1D7A913F0(uint64_t a1)
{
  v2 = sub_1D7A916F8();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D7A91468(uint64_t a1)
{
  v25 = sub_1D7D2E2FC();
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndOfArticleLayoutSectionDescriptor.Decoration(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v24 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C344(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v23 = *(v7 + 72);
    do
    {
      sub_1D7A91B30(v16, v13, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Decoration);
      v17 = v24;
      sub_1D7A91B30(v13, v24, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Decoration);
      v18 = v25;
      (*(v2 + 32))(v5, v17, v25);
      sub_1D7D2E2DC();
      (*(v2 + 8))(v5, v18);
      sub_1D7A91B98(v13, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Decoration);
      v27 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D7A5C344((v19 > 1), v20 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v20 + 1;
      sub_1D799D69C(&v26, v15 + 40 * v20 + 32);
      v16 += v23;
      --v14;
    }

    while (v14);
  }

  return v15;
}

unint64_t sub_1D7A916F8()
{
  result = qword_1EE0C1D18;
  if (!qword_1EE0C1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C1D18);
  }

  return result;
}

uint64_t sub_1D7A9179C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7A917E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7A918BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1D7A9192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a3, v8);
}

uint64_t sub_1D7A919CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_1D7A91A74()
{
  result = qword_1EC9E3610;
  if (!qword_1EC9E3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3610);
  }

  return result;
}

uint64_t sub_1D7A91AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7A91B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7A91B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7A91BF8()
{
  result = qword_1EE0BF850;
  if (!qword_1EE0BF850)
  {
    sub_1D7D2EA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF850);
  }

  return result;
}

void *sub_1D7A91C64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, qword_1EE0CF6D0, &protocol descriptor for BaseStylerType);
  result = sub_1D7D28D2C();
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, qword_1EE0CF990, &protocol descriptor for RouterType);
  result = sub_1D7D28D2C();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A91DF0();
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for RecipeArticleDrawerModule();
    v8 = swift_allocObject();
    sub_1D799D69C(&v11, v8 + 16);
    result = sub_1D799D69C(&v9, v8 + 64);
    *(v8 + 56) = v5;
    *(v8 + 104) = v6;
    a2[3] = v7;
    a2[4] = &protocol witness table for RecipeArticleDrawerModule;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1D7A91DF0()
{
  result = qword_1EE0BEEC0;
  if (!qword_1EE0BEEC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEEC0);
  }

  return result;
}

uint64_t BlueprintRecipeViewerTokenSession.__allocating_init(blueprintProvider:blueprintLayoutProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BlueprintRecipeViewerTokenSession.init(blueprintProvider:blueprintLayoutProvider:)(a1, a2);
  return v4;
}

uint64_t BlueprintRecipeViewerTokenSession.canScrollToRecipe.getter()
{
  v1 = *v0;
  v3 = *(*v0 + 80);
  v2 = *(*v0 + 96);
  v4 = *(*v0 + 128);
  v16 = *(*v0 + 112);
  v17 = v3;
  v20 = v3;
  v21 = v2;
  v18 = v4;
  v19 = v2;
  v22 = v16;
  v23 = v4;
  v5 = type metadata accessor for BlueprintRecipeViewerTokenState(0, &v20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  v10 = *(v1 + 144);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v10, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

LABEL_5:
    v20 = v17;
    v21 = v16;
    v12 = sub_1D7D2C80C();
    v20 = v19;
    v21 = v18;
    v13 = sub_1D7D2A23C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v13 - 8) + 8))(&v9[*(TupleTypeMetadata2 + 48)], v13);
    (*(*(v12 - 8) + 8))(v9, v12);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  (*(v6 + 8))(v9, v5);
  return 1;
}

uint64_t BlueprintRecipeViewerTokenSession.blueprint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v6 = *(*v1 + 128);
  v21 = *(*v1 + 112);
  v22 = v5;
  v24 = v5;
  v25 = v4;
  v19 = v6;
  v20 = v4;
  v26 = v21;
  v27 = v6;
  v7 = type metadata accessor for BlueprintRecipeViewerTokenState(0, &v24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = *(v3 + 144);
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_5:
      v24 = v22;
      v25 = v21;
      v14 = sub_1D7D2C80C();
      v24 = v20;
      v25 = v19;
      v15 = sub_1D7D2A23C();
      v16 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v14 - 8) + 32))(a1, v11, v14);
      return (*(*(v15 - 8) + 8))(&v11[v16], v15);
    }

    v23 = *(v1 + *(*v1 + 152));
    v24 = v22;
    v25 = v21;
    sub_1D7D2A75C();
    swift_getWitnessTable();
    return sub_1D7D2AEEC();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }

    v18 = *(v11 + 1);

    v23 = v18;
    v24 = v22;
    v25 = v21;
    sub_1D7D2A75C();
    swift_getWitnessTable();
    sub_1D7D2AEEC();
  }
}

uint64_t BlueprintRecipeViewerTokenSession.blueprintLayout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v6 = *(*v1 + 128);
  v19 = *(*v1 + 112);
  v20 = v5;
  v24 = v5;
  v25 = v4;
  v21 = v6;
  v22 = v4;
  v26 = v19;
  v27 = v6;
  v7 = type metadata accessor for BlueprintRecipeViewerTokenState(0, &v24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = *(v3 + 144);
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_5:
      v24 = v20;
      v25 = v19;
      v14 = sub_1D7D2C80C();
      v24 = v22;
      v25 = v21;
      v15 = sub_1D7D2A23C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v15 - 8) + 32))(a1, &v11[*(TupleTypeMetadata2 + 48)], v15);
      return (*(*(v14 - 8) + 8))(v11, v14);
    }

    v23 = *(v1 + *(*v1 + 160));
    v24 = v22;
    v25 = v21;
    sub_1D7D2B28C();
    swift_getWitnessTable();
    return sub_1D7D2B77C();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }

    v18 = *(v11 + 2);

    v23 = v18;
    v24 = v22;
    v25 = v21;
    sub_1D7D2B28C();
    swift_getWitnessTable();
    sub_1D7D2B77C();
  }
}

Swift::Void __swiftcall BlueprintRecipeViewerTokenSession.refreshing()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 96);
  v12 = *(v2 + 80);
  v14 = v3;
  v17 = v12;
  v18 = v3;
  v4 = *(v2 + 128);
  v11 = *(v2 + 112);
  v13 = v4;
  v19 = v11;
  v20 = v4;
  v5 = type metadata accessor for BlueprintRecipeViewerTokenState(0, &v17);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - v8;
  v17 = v12;
  v18 = v11;
  sub_1D7D2C80C();
  v17 = v14;
  v18 = v13;
  sub_1D7D2A23C();
  swift_getTupleTypeMetadata2();
  v16 = *&v1[*(v2 + 152)];
  v17 = v12;
  v18 = v11;
  sub_1D7D2A75C();
  swift_getWitnessTable();
  sub_1D7D2AEEC();
  v15 = *&v1[*(*v1 + 160)];
  v17 = v14;
  v18 = v13;
  sub_1D7D2B28C();
  swift_getWitnessTable();
  sub_1D7D2B77C();
  swift_storeEnumTagMultiPayload();
  v10 = *(*v1 + 144);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v10], v9, v5);
  swift_endAccess();
}

Swift::Void __swiftcall BlueprintRecipeViewerTokenSession.refreshed()()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 128);
  v39 = *(*v0 + 96);
  v40 = v3;
  v41 = v39;
  v42 = v3;
  v4 = sub_1D7D2A23C();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v34 = &v31 - v6;
  v7 = *(v2 + 112);
  v37 = *(v2 + 80);
  v38 = v7;
  v41 = v37;
  v42 = v7;
  v8 = sub_1D7D2C80C();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v41 = v37;
  v42 = v39;
  v43 = v38;
  v44 = v40;
  v12 = type metadata accessor for BlueprintRecipeViewerTokenState(0, &v41);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v21 = *(v1 + 144);
  swift_beginAccess();
  (*(v13 + 16))(v20, v0 + v21, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v32 = v8;
      *&v39 = swift_getTupleTypeMetadata2();
      *&v38 = *(v39 + 48);
      *&v40 = v4;
      v26 = v11;
      v33 = v11;
      v27 = *(v35 + 32);
      v27(v26, v20, v8);
      v28 = *(v36 + 32);
      v29 = &v20[v38];
      v30 = v34;
      v28(v34, v29, v40);
      *&v39 = *(v39 + 48);
      v27(v16, v33, v32);
      v28(&v16[v39], v30, v40);
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v13 + 40))(v0 + v21, v16, v12);
    swift_endAccess();
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v13 + 8))(v20, v12);
  }

  else
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v24 = v36;
    v25 = *(TupleTypeMetadata2 + 48);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v13 + 40))(v0 + v21, v16, v12);
    swift_endAccess();
    (*(v24 + 8))(&v20[v25], v4);
    (*(v35 + 8))(v20, v8);
  }
}

uint64_t BlueprintRecipeViewerTokenSession.update(token:)(uint64_t a1)
{
  v39 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 96);
  v44 = *(*v1 + 128);
  v45 = v4;
  v48 = v4;
  v49 = v44;
  v5 = sub_1D7D2A23C();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v37 = &v36 - v7;
  v43 = *(v3 + 80);
  v42 = *(v3 + 112);
  v48 = v43;
  v49 = v42;
  v8 = sub_1D7D2C80C();
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - v10;
  v48 = v43;
  v49 = v45;
  v50 = v42;
  v51 = v44;
  v12 = type metadata accessor for BlueprintRecipeViewerTokenState(0, &v48);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v36 - v19;
  v21 = *(v2 + 144);
  swift_beginAccess();
  v41 = v13;
  (*(v13 + 16))(v20, &v1[v21], v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v36 = v8;
      v23 = *(swift_getTupleTypeMetadata2() + 48);
      v47 = *&v1[*(*v1 + 152)];
      v48 = v43;
      v49 = v42;
      sub_1D7D2A75C();
      swift_getWitnessTable();
      sub_1D7D2AEEC();
      v46 = *&v1[*(*v1 + 160)];
      v48 = v45;
      v49 = v44;
      sub_1D7D2B28C();
      swift_getWitnessTable();
      sub_1D7D2B77C();
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v41 + 40))(&v1[v21], v16, v12);
      swift_endAccess();
      (*(v38 + 8))(&v20[v23], v5);
      return (*(v40 + 8))(v20, v36);
    }

    v30 = v41;
    (*(v41 + 8))(v20, v12);
    v31 = *&v1[*(*v1 + 152)];
    v32 = *&v1[*(*v1 + 160)];
    *v16 = v39;
    v16[1] = v31;
    v16[2] = v32;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v33 = *&v1[*(*v1 + 152)];
    v34 = *&v1[*(*v1 + 160)];
    *v16 = v39;
    v16[1] = v33;
    v16[2] = v34;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v30 = v41;
LABEL_8:
    v35 = *(v30 + 40);

    v35(&v1[v21], v16, v12);
    return swift_endAccess();
  }

  *&v45 = v21;
  v25 = v8;
  *&v44 = swift_getTupleTypeMetadata2();
  *&v42 = *(v44 + 48);
  *&v43 = *(v40 + 32);
  (v43)(v11, v20, v8);
  v40 = *(v38 + 32);
  v26 = &v20[v42];
  v27 = v37;
  (v40)(v37, v26, v5);
  v28 = *(v44 + 48);
  (v43)(v16, v11, v25);
  (v40)(v16 + v28, v27, v5);
  swift_storeEnumTagMultiPayload();
  v29 = v45;
  swift_beginAccess();
  (*(v41 + 40))(&v1[v29], v16, v12);
  return swift_endAccess();
}

uint64_t *BlueprintRecipeViewerTokenSession.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 96);
  v7[0] = *(*v0 + 80);
  v7[1] = v3;
  v4 = *(v1 + 128);
  v7[2] = *(v1 + 112);
  v7[3] = v4;
  v5 = type metadata accessor for BlueprintRecipeViewerTokenState(0, v7);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return v0;
}

uint64_t BlueprintRecipeViewerTokenSession.__deallocating_deinit()
{
  BlueprintRecipeViewerTokenSession.deinit();

  return swift_deallocClassInstance();
}

void sub_1D7A93634()
{
  v1 = v0;
  v2 = type metadata accessor for RouteModel(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7998DF0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D7D2824C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_1D7A30880(v22);
  if (v22[1])
  {
    v24 = v23;
    sub_1D7A93A18(&v24, v21);
    sub_1D79DA7DC(v22, &qword_1EC9E3618, &type metadata for BrandBarContent);
    if (*(&v24 + 1))
    {
      sub_1D7D2823C();
      sub_1D79DA7DC(&v24, &qword_1EE0CBB10, MEMORY[0x1E69E6158]);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v14, v9, v10);
        v19 = v0[9];
        v20 = v1[10];
        __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
        (*(v11 + 16))(v5, v14, v10);
        swift_storeEnumTagMultiPayload();
        RouterType.route(to:)(v5, v19, v20);
        sub_1D7A93A8C(v5, type metadata accessor for RouteModel);
        (*(v11 + 8))(v14, v10);
        return;
      }

      sub_1D7A93A8C(v9, sub_1D7998DF0);
    }
  }

  if (qword_1EC9DFD80 != -1)
  {
    swift_once();
  }

  v15 = sub_1D7D29AFC();
  __swift_project_value_buffer(v15, qword_1ECA0BB18);
  v16 = sub_1D7D29ADC();
  v17 = sub_1D7D30C4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D7987000, v16, v17, "User is trying to navigate via the Brandbar CTA but no valid URL is provided.", v18, 2u);
    MEMORY[0x1DA7102E0](v18, -1, -1);
  }
}

uint64_t sub_1D7A9399C()
{
  sub_1D79C92AC((v0 + 2));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A93A18(uint64_t a1, uint64_t a2)
{
  sub_1D799956C(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A93A8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A93AEC(void *a1)
{
  v3 = *__swift_project_boxed_opaque_existential_1((*(v1 + 32) + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleReadingHistoryRecorder), *(*(v1 + 32) + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleReadingHistoryRecorder + 24));
  if (([a1 isBoundToContext] & 1) == 0)
  {
    v4 = *(v3 + 16);
    v5 = [a1 articleID];
    if (!v5)
    {
      sub_1D7D3034C();
      v6 = sub_1D7D3031C();

      v5 = v6;
    }

    v7 = v5;
    [v4 markArticle_withCompletedReading_];
  }
}

uint64_t sub_1D7A93BCC()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A93C40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SubscribeActionHandler(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

char *sub_1D7A93C94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C01D8, MEMORY[0x1E69B6B50], 1);
  result = sub_1D7D28D2C();
  if (!v39[3])
  {
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C0190, MEMORY[0x1E69B6C28], 1);
  result = sub_1D7D28D2C();
  if (!v38[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C01A0, MEMORY[0x1E69B6C10], 1);
  result = sub_1D7D28D2C();
  if (!v37[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C01C8, MEMORY[0x1E69B6B88], 1);
  result = sub_1D7D28D2C();
  if (!v36[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C01F0, MEMORY[0x1E69B6AC8], 0);
  result = sub_1D7D28D2C();
  if (!v34)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C0040, MEMORY[0x1E69D7A30], 1);
  result = sub_1D7D28D2C();
  if (!v33[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C01A8, MEMORY[0x1E69B6C00], 1);
  result = sub_1D7D28D2C();
  if (!v32[3])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBE80, MEMORY[0x1E69B6C08], 1);
  result = sub_1D7D28D2C();
  if (!v31[3])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C0230, MEMORY[0x1E69B6A38], 0);
  result = sub_1D7D28D2C();
  if (!v29)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C0198, MEMORY[0x1E69B6C20], 1);
  result = sub_1D7D28D2C();
  if (!v28[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C40D0, &protocol descriptor for CampaignLandingPageTrackerType, 1);
  result = sub_1D7D28D2C();
  if (!v27[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE70, &protocolRef_FCNetworkReachabilityType);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = result;
  v22 = v30;
  v23 = v35;
  v24 = v29;
  v25 = v34;
  v6 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D7D28D1C();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for SubscribeActionHandler(0);
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_headline];
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    v10[24] = 0;
    *v10 = 0;
    v11 = &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel];
    v12 = type metadata accessor for SubscribeActionModel(0);
    v13 = *(v12 + 36);
    v14 = sub_1D7D2980C();
    (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
    *v11 = 1;
    v11[8] = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0;
    *(v11 + 4) = MEMORY[0x1E69E7CC0];
    *(v11 + 5) = 0;
    v11[*(v12 + 40)] = 0;
    *&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler____lazy_storage___purchasingSpinnerViewController] = 0;
    *&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler____lazy_storage___verifyingSpinnerViewController] = 0;
    swift_unknownObjectWeakInit();
    v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
    sub_1D799CC84(v39, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_purchaseStarter]);
    sub_1D799CC84(v38, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_purchasingSpinnerViewControllerFactory]);
    *&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager] = v6;
    *&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_configurationManager] = v4;
    sub_1D799CC84(v37, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_familySharingLandingPageLauncher]);
    sub_1D799CC84(v36, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router]);
    v15 = &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_offerManager];
    *v15 = v25;
    v15[1] = v23;
    sub_1D799CC84(v33, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler]);
    sub_1D799CC84(v32, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager]);
    sub_1D799CC84(v31, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer]);
    v16 = &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionDetectionManager];
    *v16 = v24;
    v16[1] = v22;
    sub_1D799CC84(v28, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_paidBundleViaOfferFeatureAvailability]);
    sub_1D799CC84(v27, &v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker]);
    *&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_networkReachability] = v5;
    *&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_appConfigurationManager] = v7;
    v26.receiver = v9;
    v26.super_class = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = objc_msgSendSuper2(&v26, sel_init);
    v18 = *(v17 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager);
    v19 = v17;
    [v18 addObserver_];
    v20 = [objc_opt_self() defaultCenter];
    v21 = sub_1D7D30E8C();
    [v20 addObserver:v19 selector:sel_handleAMSPurchaseCompletion name:v21 object:0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v31);
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return v19;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D7A944DC(uint64_t *a1, void *a2)
{
  sub_1D7A94BCC(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SubscribeActionModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
  v14 = sub_1D7D28D1C();
  v15 = v14;
  if (v14)
  {
    v25 = v12;
    v16 = [v14 identifier];
    v17 = sub_1D7D3034C();
    v19 = v18;

    v20 = [v15 respondsToSelector_];
    if (v20)
    {
      v14 = [v15 role];
    }

    else
    {
      v14 = 0;
    }

    v21 = (v20 & 1) == 0;
    v12 = v25;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v21 = 0;
  }

  v22 = v13 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_headline;
  *v22 = v17;
  *(v22 + 8) = v19;
  *(v22 + 16) = v14;
  *(v22 + 24) = v21;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7D28D2C();
  swift_unknownObjectRelease();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D7A94C24(v7);
  }

  sub_1D7A94C80(v7, v12);
  v24 = OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
  swift_beginAccess();
  sub_1D7A94CE4(v12, v13 + v24);
  return swift_endAccess();
}

char *sub_1D7A94778(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C01F0, MEMORY[0x1E69B6AC8], 0);
  result = sub_1D7D28D2C();
  v6 = v18;
  if (v18)
  {
    v7 = v19;
    v8 = type metadata accessor for SubscriptionStatusProvider();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_observers;
    *&v9[v10] = [objc_opt_self() weakObjectsHashTable];
    *&v9[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_bundleSubscriptionStatus] = 0;
    *&v9[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_channelSubscriptionStatus] = 0;
    *&v9[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_headline] = v3;
    *&v9[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_paidAccessChecker] = v4;
    *&v9[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_bundleSubscriptionManager] = v5;
    v11 = &v9[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_offerManager];
    *v11 = v6;
    *(v11 + 1) = v7;
    v17.receiver = v9;
    v17.super_class = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v12 = objc_msgSendSuper2(&v17, sel_init);
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 defaultCenter];
    [v15 addObserver:v14 selector:sel_purchaseListChangedWithNotification_ name:*MEMORY[0x1E69B50E0] object:0];

    [v5 addObserver_];
    *(v14 + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_bundleSubscriptionStatus) = sub_1D7AE081C(v5, v14);
    v16 = sub_1D7AE09FC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v14 + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_channelSubscriptionStatus) = v16;

    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7A94A78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79A30E4();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = [result news_core_ConfigurationManager];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C01F0, MEMORY[0x1E69B6AC8], 0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v6 = type metadata accessor for SubscriptionButtonTextProvider();
    swift_getObjectType();
    return sub_1D7D03D74(v3, v5, v7, v8, v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D7A94BCC(uint64_t a1)
{
  if (!qword_1EE0C8540)
  {
    type metadata accessor for SubscribeActionModel(255);
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C8540);
    }
  }
}

uint64_t sub_1D7A94C24(uint64_t a1)
{
  sub_1D7A94BCC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A94C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeActionModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A94CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeActionModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1D7A94D48()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC9E36E0 = result;
  return result;
}

id static NSBundle.newsArticles.getter()
{
  if (qword_1EC9DFDC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EC9E36E0;

  return v0;
}

void static NSBundle.newsArticles.setter(uint64_t a1)
{
  if (qword_1EC9DFDC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EC9E36E0;
  qword_1EC9E36E0 = a1;
}

uint64_t (*static NSBundle.newsArticles.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC9DFDC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D7A94F50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  result = v5 + 32;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    v9 = v7 + v8;
    if (v7 + v8 == -1)
    {
      return v9 != -1;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v10 = result + 40;
    sub_1D799CC84(result, v14);
    v11 = v15;
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v13 = (*(v12 + 16))(a1, a2, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
    result = v10;
    if (v13)
    {
      return v9 != -1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A95030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v108 = a3;
  sub_1D79DA598(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v97 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2ACCC();
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v98 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BottomPaletteFeatureContext(0);
  v112 = *(v10 - 8);
  v113 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v110 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v101 = (&v95 - v16);
  sub_1D7A96418(0, v15);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v95 - v23;
  sub_1D7A964E4(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v105 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v95 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v95 - v34;
  sub_1D7A9644C(0, &qword_1EE0C0DD0, type metadata accessor for BottomPaletteArticleViewerFeatureViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v107 = (&v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39, v40);
  v109 = (&v95 - v41);
  v111 = a1;
  sub_1D7A967C4(a1, v24, sub_1D7A96418);
  sub_1D7A964B0(0);
  v43 = v42;
  v44 = *(*(v42 - 8) + 48);
  v45 = 1;
  v46 = v44(v24, 1, v42);
  v47 = sub_1D7A96418;
  if (v46 != 1)
  {
    sub_1D7A967C4(v24, v35, type metadata accessor for BottomPaletteFeatureContext);
    v45 = 0;
    v47 = sub_1D7A964B0;
  }

  sub_1D7A96518(v24, v47);
  (*(v112 + 56))(v35, v45, 1, v113);
  sub_1D7A9644C(0, &qword_1EE0C1B48, type metadata accessor for BottomPaletteFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v49 = v48;
  v50 = (v111 + *(v48 + 32));
  v51 = *v50;
  v102 = v50[1];
  v103 = v51;
  sub_1D7A967C4(v111, v20, sub_1D7A96418);
  if (v44(v20, 1, v43) == 1)
  {
    sub_1D7A96518(v20, sub_1D7A96418);
    memset(v117, 0, sizeof(v117));
    v118 = 0;
  }

  else
  {
    sub_1D79DA880(&v20[*(v43 + 28)], v117);
    sub_1D7A96518(v20, sub_1D7A964B0);
  }

  v52 = v110;
  sub_1D7A967C4(v35, v31, sub_1D7A964E4);
  v53 = v112 + 48;
  v54 = *(v112 + 48);
  if (v54(v31, 1, v113) == 1)
  {
    sub_1D7A96518(v117, sub_1D7A96578);
    sub_1D7A96518(v35, sub_1D7A964E4);
    sub_1D7A96518(v31, sub_1D7A964E4);
LABEL_12:
    v69 = type metadata accessor for BottomPaletteArticleViewerFeatureViewModel(0);
    v67 = v109;
    (*(*(v69 - 8) + 56))(v109, 1, 1, v69);
    goto LABEL_15;
  }

  v96 = v49;
  v55 = v101;
  sub_1D7A9665C(v31, v101);
  sub_1D7A967C4(v117, v114, sub_1D7A96578);
  if (!v115)
  {
    sub_1D7A96518(v117, sub_1D7A96578);
    sub_1D7A96518(v35, sub_1D7A964E4);
    sub_1D7A96518(v114, sub_1D7A96578);
    sub_1D7A96518(v55, type metadata accessor for BottomPaletteFeatureContext);
    v49 = v96;
    goto LABEL_12;
  }

  v95 = v54;
  v112 = v53;
  sub_1D7A966C0(v114, v116);
  v56 = v104;
  v57 = sub_1D7A960FC(v55 + *(v113 + 20), v116);
  MEMORY[0x1EEE9AC00](v57, v58);
  v59 = v102;
  v60 = v103;
  *(&v95 - 4) = v55;
  *(&v95 - 3) = v60;
  *(&v95 - 2) = v59;
  *(&v95 - 1) = v116;
  v61 = sub_1D7A9CDA8(sub_1D7A96890, (&v95 - 6), v57);

  if (*(v61 + 2))
  {
    v62 = __swift_project_boxed_opaque_existential_1((v56 + 80), *(v56 + 104));
    v63 = *(v55 + 2);
    v64 = v97;
    sub_1D7C3BB44(v97);
    __swift_project_boxed_opaque_existential_1((*v62 + 16), *(*v62 + 40));
    v65 = v98;
    sub_1D7B5B084(v63, 0, v64, v98);
    sub_1D7A96518(v64, sub_1D79DA598);
    sub_1D7A96518(v117, sub_1D7A96578);
    sub_1D7A96518(v35, sub_1D7A964E4);
    v66 = *(v55 + 1);
    v67 = v109;
    *v109 = *v55;
    *(v67 + 8) = v66;
    v68 = type metadata accessor for BottomPaletteArticleViewerFeatureViewModel(0);
    (*(v99 + 32))(v67 + *(v68 + 20), v65, v100);
    *(v67 + *(v68 + 24)) = v61;
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  }

  else
  {

    sub_1D7A96518(v117, sub_1D7A96578);
    sub_1D7A96518(v35, sub_1D7A964E4);
    v70 = type metadata accessor for BottomPaletteArticleViewerFeatureViewModel(0);
    v67 = v109;
    (*(*(v70 - 8) + 56))(v109, 1, 1, v70);
  }

  sub_1D79DA8DC(v116);
  sub_1D7A96518(v55, type metadata accessor for BottomPaletteFeatureContext);
  v52 = v110;
  v54 = v95;
  v49 = v96;
LABEL_15:
  v71 = *(v49 + 28);
  sub_1D79DA880(v106, v117);
  v72 = v111 + v71;
  v73 = v105;
  sub_1D7A967C4(v72, v105, sub_1D7A964E4);
  if (v54(v73, 1, v113) == 1)
  {
    sub_1D7A96518(v117, sub_1D7A96578);
    v74 = sub_1D7A964E4;
    v75 = v73;
LABEL_21:
    sub_1D7A96518(v75, v74);
    v89 = type metadata accessor for BottomPaletteArticleViewerFeatureViewModel(0);
    v87 = v107;
    (*(*(v89 - 8) + 56))(v107, 1, 1, v89);
    goto LABEL_24;
  }

  sub_1D7A9665C(v73, v52);
  sub_1D7A967C4(v117, v114, sub_1D7A96578);
  if (!v115)
  {
    sub_1D7A96518(v117, sub_1D7A96578);
    sub_1D7A96518(v114, sub_1D7A96578);
    v74 = type metadata accessor for BottomPaletteFeatureContext;
    v75 = v52;
    goto LABEL_21;
  }

  sub_1D7A966C0(v114, v116);
  v76 = v104;
  v77 = sub_1D7A960FC(v52 + *(v113 + 20), v116);
  MEMORY[0x1EEE9AC00](v77, v78);
  v79 = v102;
  v80 = v103;
  *(&v95 - 4) = v52;
  *(&v95 - 3) = v80;
  *(&v95 - 2) = v79;
  *(&v95 - 1) = v116;
  v81 = sub_1D7A9CDA8(sub_1D7A9671C, (&v95 - 6), v77);

  if (*(v81 + 2))
  {
    v82 = __swift_project_boxed_opaque_existential_1((v76 + 80), *(v76 + 104));
    v83 = *(v52 + 2);
    v84 = v97;
    sub_1D7C3BB44(v97);
    __swift_project_boxed_opaque_existential_1((*v82 + 16), *(*v82 + 40));
    v85 = v98;
    sub_1D7B5B084(v83, 0, v84, v98);
    sub_1D7A96518(v84, sub_1D79DA598);
    sub_1D7A96518(v117, sub_1D7A96578);
    v86 = *(v52 + 1);
    v87 = v107;
    *v107 = *v52;
    *(v87 + 8) = v86;
    v88 = type metadata accessor for BottomPaletteArticleViewerFeatureViewModel(0);
    (*(v99 + 32))(v87 + *(v88 + 20), v85, v100);
    *(v87 + *(v88 + 24)) = v81;
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
  }

  else
  {

    sub_1D7A96518(v117, sub_1D7A96578);
    v90 = type metadata accessor for BottomPaletteArticleViewerFeatureViewModel(0);
    v87 = v107;
    (*(*(v90 - 8) + 56))(v107, 1, 1, v90);
  }

  sub_1D79DA8DC(v116);
  sub_1D7A96518(v52, type metadata accessor for BottomPaletteFeatureContext);
  v67 = v109;
LABEL_24:
  v91 = type metadata accessor for BottomPaletteArticleViewerFeatureTransition(0);
  v92 = v108;
  *(v108 + 24) = v91;
  *(v92 + 32) = &off_1F52B5490;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
  sub_1D7A965C8(v67, boxed_opaque_existential_1);
  result = sub_1D7A965C8(v87, boxed_opaque_existential_1 + *(v91 + 20));
  *(v92 + 40) = 0;
  return result;
}

uint64_t sub_1D7A95D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = v6 + 32;
  v8 = -*(v6 + 16);
  v9 = -1;
  result = v6 + 32;
  while (1)
  {
    if (v8 + v9 == -1)
    {
      return 0;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    v11 = result + 40;
    sub_1D799CC84(result, v23);
    v12 = v24;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v14 = (*(v13 + 16))(a1, a3, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = v11;
    if (v14)
    {
      v15 = -*(v6 + 16);
      v16 = -1;
      do
      {
        v17 = v15 + v16 == -1;
        if (v15 + v16 == -1)
        {
          break;
        }

        if (++v16 >= *(v6 + 16))
        {
          goto LABEL_13;
        }

        v18 = v7 + 40;
        sub_1D799CC84(v7, v23);
        v19 = v24;
        v20 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        v21 = (*(v20 + 16))(a2, a3, v19, v20);
        result = __swift_destroy_boxed_opaque_existential_1(v23);
        v7 = v18;
      }

      while ((v21 & 1) == 0);
      return v17;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7A95E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *(v6 + 16);
  v10 = v9 + 32;
  v11 = -*(v9 + 16);
  v12 = -1;
  result = v9 + 32;
  while (1)
  {
    v14 = v11 + v12;
    v15 = *(v9 + 16);
    if (v11 + v12 == -1)
    {
      break;
    }

    if (++v12 >= v15)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v16 = result + 40;
    sub_1D799CC84(result, v37);
    v17 = v38;
    v18 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v19 = (*(v18 + 16))(a1, a4, v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v37);
    result = v16;
    if (v19)
    {
      v15 = *(v9 + 16);
      break;
    }
  }

  v20 = -v15;
  v21 = -1;
  do
  {
    if (v20 + v21 == -1)
    {
      if (v14 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (++v21 >= *(v9 + 16))
    {
      goto LABEL_23;
    }

    v22 = v10 + 40;
    sub_1D799CC84(v10, v37);
    v23 = v38;
    v24 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v25 = (*(v24 + 16))(a2, a4, v23, v24);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v10 = v22;
  }

  while ((v25 & 1) == 0);
  if (v14 != -1)
  {
LABEL_11:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

LABEL_13:
  if (*(a4 + 40))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *(a4 + 24);
  }

  v27 = -v26;
  if (a3 == 2)
  {
    v27 = v26;
  }

  if (v14 == -1)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = type metadata accessor for BottomPaletteArticleViewerFeatureScrollAnimator(0);
  *(a5 + 24) = v29;
  *(a5 + 32) = &off_1F529EEA0;
  v31 = *(v32 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  sub_1D799CC84(v32 + 40, (boxed_opaque_existential_1 + 2));
  sub_1D7A967C4(a1, boxed_opaque_existential_1 + v29[6], type metadata accessor for ArticleViewerPage);
  sub_1D7A967C4(a2, boxed_opaque_existential_1 + v29[7], type metadata accessor for ArticleViewerPage);
  *boxed_opaque_existential_1 = v31;
  *(boxed_opaque_existential_1 + v29[8]) = a6;
  *(boxed_opaque_existential_1 + v29[9]) = a3;
  *(boxed_opaque_existential_1 + v29[10]) = v28;
  *(boxed_opaque_existential_1 + v29[11]) = v26;
  return swift_unknownObjectRetain();
}

uint64_t sub_1D7A960FC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v8 = v3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 < *(v3 + 16))
    {
      sub_1D799CC84(v8, v17);
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      if ((*(v11 + 16))(v6, a2, v10, v11))
      {
        v12 = v18;
        v13 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        if ((*(v13 + 8))(v12, v13))
        {

          sub_1D7A9644C(0, &qword_1EE0BE9A0, sub_1D7A9682C, MEMORY[0x1E69E6F90]);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1D7D3B4D0;
          sub_1D799CC84(v17, v9 + 32);
LABEL_15:
          __swift_destroy_boxed_opaque_existential_1(v17);
          return v9;
        }

        sub_1D799CC84(v17, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D79E47B0(0, *(v9 + 16) + 1, 1, v9);
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_1D79E47B0((v14 > 1), v15 + 1, 1, v9);
        }

        *(v9 + 16) = v15 + 1;
        sub_1D799D69C(v16, v9 + 40 * v15 + 32);
        if (v15 == 1)
        {
          goto LABEL_15;
        }
      }

      ++v7;
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      v8 += 40;
      if (v4 == v7)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D7A96318()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

void sub_1D7A9644C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A96518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A96578()
{
  if (!qword_1EE0C2DF0)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C2DF0);
    }
  }
}

uint64_t sub_1D7A965C8(uint64_t a1, uint64_t a2)
{
  sub_1D7A9644C(0, &qword_1EE0C0DD0, type metadata accessor for BottomPaletteArticleViewerFeatureViewModel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A9665C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BottomPaletteFeatureContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A96734@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(v9 + 24))(v4, v5, v7, v6, v8, v9);
  *a2 = result;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  return result;
}

uint64_t sub_1D7A967C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7A9682C()
{
  result = qword_1EE0C0B68[0];
  if (!qword_1EE0C0B68[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0C0B68);
  }

  return result;
}

unint64_t sub_1D7A968A8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16) && (result = sub_1D7A18FFC(a2, a3), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + 8 * result);
    result = v7;
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1D7A968FC(uint64_t *a1, id a2)
{
  v4 = [a2 identifier];
  v5 = sub_1D7D3034C();
  v7 = v6;

  v8 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  sub_1D7B95AC8(v8, v5, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v11;
  return result;
}

uint64_t sub_1D7A969A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1D7A18FFC(a2, a3);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D7B970BC();
      v10 = v12;
    }

    v11 = *(*(v10 + 56) + 8 * v8);
    result = sub_1D7B9A108();
    *a1 = v10;
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
  return result;
}

unint64_t sub_1D7A96A7C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x736B6E696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6573734165676170;
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

uint64_t sub_1D7A96B24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7A97F84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7A96B4C(uint64_t a1)
{
  v2 = sub_1D7A99B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A96B88(uint64_t a1)
{
  v2 = sub_1D7A99B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D7A96BC4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D7A98150(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D7A96C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365676170 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D7D3197C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7A96CB0(uint64_t a1)
{
  v2 = sub_1D7A99514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A96CEC(uint64_t a1)
{
  v2 = sub_1D7A99514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D7A96D28@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D7A9858C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D7A96D60()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A96E4C(uint64_t a1)
{
  sub_1D7D303FC();
}

uint64_t sub_1D7A96F24(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

unint64_t sub_1D7A9700C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7A98778(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D7A9703C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656C6369747261;
  v5 = 0xE500000000000000;
  v6 = 0x7265766F63;
  v7 = 0xE700000000000000;
  v8 = 0x65727574616566;
  if (v2 != 3)
  {
    v8 = 0x695F666F5F646E65;
    v7 = 0xEC00000065757373;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001D7D67290;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D7A97160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D7D672F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D7D3197C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D7A971F4(uint64_t a1)
{
  v2 = sub_1D7A99A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A97230(uint64_t a1)
{
  v2 = sub_1D7A99A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7A9726C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D7A99C7C(0, &qword_1EE0BAF00, sub_1D7A99A1C, &type metadata for IssuePages.ANF.Page.Article.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A99A1C();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D7D317AC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t sub_1D7A97414()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A974F4(uint64_t a1)
{
  sub_1D7D303FC();
}

uint64_t sub_1D7A975C0(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

unint64_t sub_1D7A9769C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7A987C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D7A976CC(uint64_t *a1@<X8>)
{
  v2 = 0xEF6664702F6E6F69;
  v3 = 0x746163696C707061;
  v4 = 0xE900000000000067;
  v5 = 0x6E702F6567616D69;
  if (*v1 != 2)
  {
    v5 = 0x69672F6567616D69;
    v4 = 0xE900000000000066;
  }

  if (*v1)
  {
    v3 = 0x706A2F6567616D69;
    v2 = 0xEA00000000006765;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D7A977C8()
{
  v1 = 0x7465737361;
  v2 = 0x7079547465737361;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7A97848@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7A98810(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7A97870(uint64_t a1)
{
  v2 = sub_1D7A99CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A978AC(uint64_t a1)
{
  v2 = sub_1D7A99CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7A978E8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D7A98988(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D7A97944()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A97A24(uint64_t a1)
{
  sub_1D7D303FC();
}

uint64_t sub_1D7A97AF0(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

unint64_t sub_1D7A97BCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7A98C74(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D7A97BFC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7465737361;
  v5 = 0xE900000000000065;
  v6 = 0x7079547465737361;
  v7 = 0x80000001D7D67320;
  v8 = 1701869940;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001D7D672F0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D7A97C98()
{
  v1 = *v0;
  v2 = 0x7465737361;
  v3 = 0x7079547465737361;
  v4 = 1701869940;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

unint64_t sub_1D7A97D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7A98C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7A97D58(uint64_t a1)
{
  v2 = sub_1D7A99A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A97D94(uint64_t a1)
{
  v2 = sub_1D7A99A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7A97DD0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D7A98CC0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D7A97E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D7D3197C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7A97EB8(uint64_t a1)
{
  v2 = sub_1D7A9946C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A97EF4(uint64_t a1)
{
  v2 = sub_1D7A9946C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D7A97F30@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D7A99280(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D7A97F84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573734165676170 && a2 == 0xE900000000000074 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7D6E200 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7D6E220 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

uint64_t sub_1D7A98150@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7A99C7C(0, &qword_1EC9E3738, sub_1D7A99B6C, &type metadata for IssuePages.PDF.Page.CodingKeys);
  v33 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A99B6C();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  LOBYTE(v39[0]) = 0;
  v11 = sub_1D7D317AC();
  v13 = v12;
  LOBYTE(v39[0]) = 1;
  v14 = sub_1D7D317AC();
  v32 = v15;
  v29 = v14;
  LOBYTE(v39[0]) = 2;
  v28 = sub_1D7D317AC();
  v31 = v16;
  LOBYTE(v39[0]) = 3;
  v27 = sub_1D7D317AC();
  v30 = v17;
  sub_1D79AADEC(0, &qword_1EC9E3748, &type metadata for PDFReplicaPageLink);
  v40[0] = 4;
  sub_1D7A99568(&qword_1EC9E3750, &qword_1EC9E3748, &type metadata for PDFReplicaPageLink, sub_1D7A99BC0);
  sub_1D7D317DC();
  (*(v10 + 8))(v9, v33);
  v33 = v41;
  *&v34 = v11;
  v18 = v29;
  *(&v34 + 1) = v13;
  *&v35 = v29;
  v26 = v13;
  v19 = v32;
  v20 = v28;
  *(&v35 + 1) = v32;
  *&v36 = v28;
  v21 = v31;
  *(&v36 + 1) = v31;
  *&v37 = v27;
  v22 = v30;
  *(&v37 + 1) = v30;
  v38 = v41;
  sub_1D7A99C14(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v11;
  v39[1] = v26;
  v39[2] = v18;
  v39[3] = v19;
  v39[4] = v20;
  v39[5] = v21;
  v39[6] = v27;
  v39[7] = v22;
  v39[8] = v33;
  result = sub_1D7A99C4C(v39);
  v24 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v24;
  *(a2 + 64) = v38;
  v25 = v35;
  *a2 = v34;
  *(a2 + 16) = v25;
  return result;
}

void *sub_1D7A9858C(void *a1)
{
  sub_1D7A99C7C(0, &qword_1EC9E36E8, sub_1D7A99514, &type metadata for IssuePages.PDF.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A99514();
  v10 = v9;
  sub_1D7D31AFC();
  if (!v1)
  {
    sub_1D79AADEC(0, &qword_1EC9E36F8, &type metadata for IssuePages.PDF.Page);
    sub_1D7A99568(&qword_1EC9E3700, &qword_1EC9E36F8, &type metadata for IssuePages.PDF.Page, sub_1D7A995E0);
    sub_1D7D317DC();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1D7A98778(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7D316EC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D7A987C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7D316EC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7A98810(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001D7D672F0 == a2;
  if (v3 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465737361 && a2 == 0xE500000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7D67320 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

uint64_t sub_1D7A98988@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  sub_1D7A99C7C(0, &qword_1EC9E3760, sub_1D7A99CDC, &type metadata for IssuePages.ANF.Page.ReplicaAdvertisement.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A99CDC();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v33 = 0;
  v11 = v5;
  v12 = sub_1D7D317AC();
  v14 = v13;
  v27 = v12;
  v32 = 1;
  v15 = sub_1D7D317AC();
  v17 = v16;
  v26 = v15;
  v30 = 2;
  sub_1D7A99B18();
  sub_1D7D317DC();
  HIDWORD(v25) = v31;
  v29 = 3;
  v18 = sub_1D7D3174C();
  v20 = v19;
  v21 = v18;
  (*(v10 + 8))(v9, v11);

  __swift_destroy_boxed_opaque_existential_1(a1);

  v23 = v17;
  v24 = v28;
  *v28 = v27;
  v24[1] = v14;
  v24[2] = v26;
  v24[3] = v23;
  *(v24 + 32) = BYTE4(v25);
  v24[5] = v21;
  v24[6] = v20;
  return result;
}

unint64_t sub_1D7A98C74(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7D316EC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7A98CC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  sub_1D7A99C7C(0, &qword_1EE0BAF00, sub_1D7A99A1C, &type metadata for IssuePages.ANF.Page.Article.CodingKeys);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  sub_1D7A99C7C(0, &qword_1EE0BAF08, sub_1D7A99A70, &type metadata for IssuePages.ANF.Page.Keys);
  v13 = v12;
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A99A70();
  v17 = v51;
  sub_1D7D31AFC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v7;
  v18 = v50;
  v46 = a1;
  v53 = 4;
  sub_1D7A99AC4();
  sub_1D7D317DC();
  v19 = v13;
  if (LOBYTE(v52[0]) == 1)
  {
    LOBYTE(v52[0]) = 0;
    v20 = sub_1D7D317AC();
    v45 = v16;
    v23 = v22;
    v43 = v20;
    LOBYTE(v52[0]) = 1;
    v24 = sub_1D7D317AC();
    v25 = v47;
    v44 = v24;
    v42 = v29;
    v53 = 2;
    sub_1D7A99B18();
    v30 = v16;
    sub_1D7D317DC();
    v33 = LOBYTE(v52[0]);
    v53 = 3;
    v34 = sub_1D7D3174C();
    v36 = v35;
    v51 = v23;
    (*(v18 + 8))(v30, v19);
    v37 = v51;
    v38 = v33 | 0x8000000000000000;
    v39 = v42;
    v40 = v44;
  }

  else
  {
    sub_1D799CC84(v46, v52);
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    sub_1D7A99A1C();
    sub_1D7D31AFC();
    v21 = v49;
    v26 = v48;
    v27 = sub_1D7D317AC();
    v28 = v11;
    v37 = v32;
    v43 = v27;
    (*(v21 + 8))(v28, v26);
    (*(v18 + 8))(v16, v19);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v34 = 0;
    v36 = 0;
    v25 = v47;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v46);
  *v25 = v43;
  v25[1] = v37;
  v25[2] = v40;
  v25[3] = v39;
  v25[4] = v38;
  v25[5] = v34;
  v25[6] = v36;
  return result;
}

void *sub_1D7A99280(void *a1)
{
  sub_1D7A99C7C(0, &qword_1EE0BAF10, sub_1D7A9946C, &type metadata for IssuePages.ANF.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A9946C();
  v10 = v9;
  sub_1D7D31AFC();
  if (!v1)
  {
    sub_1D79AADEC(0, &qword_1EE0BB0F0, &type metadata for IssuePages.ANF.Page);
    sub_1D7A99568(&qword_1EE0BB0E8, &qword_1EE0BB0F0, &type metadata for IssuePages.ANF.Page, sub_1D7A994C0);
    sub_1D7D317DC();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1D7A9946C()
{
  result = qword_1EE0BDDF8[0];
  if (!qword_1EE0BDDF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0BDDF8);
  }

  return result;
}

unint64_t sub_1D7A994C0()
{
  result = qword_1EE0BDDA0;
  if (!qword_1EE0BDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDA0);
  }

  return result;
}

unint64_t sub_1D7A99514()
{
  result = qword_1EC9E36F0;
  if (!qword_1EC9E36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E36F0);
  }

  return result;
}

uint64_t sub_1D7A99568(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D79AADEC(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7A995E0()
{
  result = qword_1EC9E3708;
  if (!qword_1EC9E3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3708);
  }

  return result;
}

uint64_t sub_1D7A99674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D7A996C4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 4 * -a2;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7A99764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D7A997AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7A99810()
{
  result = qword_1EC9E3710;
  if (!qword_1EC9E3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3710);
  }

  return result;
}

unint64_t sub_1D7A99868()
{
  result = qword_1EC9E3718;
  if (!qword_1EC9E3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3718);
  }

  return result;
}

unint64_t sub_1D7A998C0()
{
  result = qword_1EC9E3720;
  if (!qword_1EC9E3720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3720);
  }

  return result;
}

unint64_t sub_1D7A99918()
{
  result = qword_1EC9E3728;
  if (!qword_1EC9E3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3728);
  }

  return result;
}

unint64_t sub_1D7A99970()
{
  result = qword_1EE0BDDE8;
  if (!qword_1EE0BDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDE8);
  }

  return result;
}

unint64_t sub_1D7A999C8()
{
  result = qword_1EE0BDDF0;
  if (!qword_1EE0BDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDF0);
  }

  return result;
}

unint64_t sub_1D7A99A1C()
{
  result = qword_1EE0BDDB8;
  if (!qword_1EE0BDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDB8);
  }

  return result;
}

unint64_t sub_1D7A99A70()
{
  result = qword_1EE0BDDC0;
  if (!qword_1EE0BDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDC0);
  }

  return result;
}

unint64_t sub_1D7A99AC4()
{
  result = qword_1EE0BDDD8;
  if (!qword_1EE0BDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDD8);
  }

  return result;
}

unint64_t sub_1D7A99B18()
{
  result = qword_1EC9E3730;
  if (!qword_1EC9E3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3730);
  }

  return result;
}

unint64_t sub_1D7A99B6C()
{
  result = qword_1EC9E3740;
  if (!qword_1EC9E3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3740);
  }

  return result;
}

unint64_t sub_1D7A99BC0()
{
  result = qword_1EC9E3758;
  if (!qword_1EC9E3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3758);
  }

  return result;
}

void sub_1D7A99C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D7D3180C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D7A99CDC()
{
  result = qword_1EC9E3768;
  if (!qword_1EC9E3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3768);
  }

  return result;
}

unint64_t sub_1D7A99D94()
{
  result = qword_1EC9E3770;
  if (!qword_1EC9E3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3770);
  }

  return result;
}

unint64_t sub_1D7A99DEC()
{
  result = qword_1EC9E3778;
  if (!qword_1EC9E3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3778);
  }

  return result;
}

unint64_t sub_1D7A99E44()
{
  result = qword_1EC9E3780;
  if (!qword_1EC9E3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3780);
  }

  return result;
}

unint64_t sub_1D7A99E9C()
{
  result = qword_1EC9E3788;
  if (!qword_1EC9E3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3788);
  }

  return result;
}

unint64_t sub_1D7A99EF4()
{
  result = qword_1EC9E3790;
  if (!qword_1EC9E3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3790);
  }

  return result;
}

unint64_t sub_1D7A99F4C()
{
  result = qword_1EC9E3798;
  if (!qword_1EC9E3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3798);
  }

  return result;
}

unint64_t sub_1D7A99FA4()
{
  result = qword_1EC9E37A0;
  if (!qword_1EC9E37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E37A0);
  }

  return result;
}

unint64_t sub_1D7A99FFC()
{
  result = qword_1EC9E37A8;
  if (!qword_1EC9E37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E37A8);
  }

  return result;
}

unint64_t sub_1D7A9A054()
{
  result = qword_1EC9E37B0;
  if (!qword_1EC9E37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E37B0);
  }

  return result;
}

unint64_t sub_1D7A9A0AC()
{
  result = qword_1EC9E37B8;
  if (!qword_1EC9E37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E37B8);
  }

  return result;
}

unint64_t sub_1D7A9A104()
{
  result = qword_1EE0BDDC8;
  if (!qword_1EE0BDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDC8);
  }

  return result;
}

unint64_t sub_1D7A9A15C()
{
  result = qword_1EE0BDDD0;
  if (!qword_1EE0BDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDD0);
  }

  return result;
}

unint64_t sub_1D7A9A1B4()
{
  result = qword_1EE0BDDA8;
  if (!qword_1EE0BDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDA8);
  }

  return result;
}

unint64_t sub_1D7A9A20C()
{
  result = qword_1EE0BDDB0;
  if (!qword_1EE0BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDB0);
  }

  return result;
}

unint64_t sub_1D7A9A260()
{
  result = qword_1EE0BDDE0;
  if (!qword_1EE0BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDDE0);
  }

  return result;
}

unint64_t sub_1D7A9A2B4()
{
  result = qword_1EC9E37C0;
  if (!qword_1EC9E37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E37C0);
  }

  return result;
}

uint64_t sub_1D7A9A330(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D7A9A398()
{
  result = qword_1EC9E37C8;
  if (!qword_1EC9E37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E37C8);
  }

  return result;
}

uint64_t sub_1D7A9A414@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_1D7D2EA6C();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v68 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7990AB0(0);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A9AE64(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v71 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v63 = v56 - v20;
  sub_1D7A9B034(0, &qword_1EE0BEB10, MEMORY[0x1E69E6F48]);
  v70 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v56 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A9AEBC();
  v26 = v72;
  sub_1D7D31AFC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v59 = v10;
  v60 = 0;
  v61 = v22;
  v62 = a1;
  v72 = v14;
  v58 = v11;
  LOBYTE(v75) = 0;
  sub_1D798ED94(&qword_1EE0BF998, sub_1D7990AB0, MEMORY[0x1E69B5A58]);
  v28 = v63;
  v29 = v65;
  sub_1D7D3173C();
  sub_1D7994BB0();
  v31 = v30;
  LOBYTE(v74) = 1;
  v32 = MEMORY[0x1E69B5B90];
  sub_1D798ED94(&qword_1EE0BF8C8, sub_1D7994BB0, MEMORY[0x1E69B5B90]);
  v56[1] = v31;
  sub_1D7D3173C();
  v33 = v75;
  sub_1D7994C2C(0);
  v35 = v34;
  LOBYTE(v73) = 2;
  sub_1D798ED94(&qword_1EE0BF8D0, sub_1D7994C2C, v32);
  v56[2] = v35;
  v36 = v25;
  sub_1D7D3173C();
  v57 = v74;
  v37 = v28;
  v38 = v71;
  sub_1D7A9AF10(v28, v71);
  v39 = v64;
  v40 = *(v64 + 48);
  v41 = v40(v38, 1, v29);
  v42 = v29;
  if (v41 == 1)
  {
    type metadata accessor for EndOfArticleFeedServiceConfig(0);
    sub_1D798ED94(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig, &unk_1D7D47AC0);
    v43 = v59;
    sub_1D7D2E33C();
    v44 = v40(v71, 1, v42);
    v45 = v69;
    v46 = v61;
    if (v44 != 1)
    {
      sub_1D7A9AF74(v71);
    }
  }

  else
  {
    v43 = v59;
    (*(v39 + 32))(v59, v71, v42);
    v45 = v69;
    v46 = v61;
  }

  v47 = v72;
  (*(v39 + 32))(v72, v43, v42);
  v48 = v37;
  if (v33)
  {
    v49 = v36;
    v50 = v33;
  }

  else
  {
    v73 = 5;
    swift_allocObject();
    v50 = sub_1D7D2E71C();
    v49 = v36;
  }

  v51 = v57;
  v52 = v58;
  v53 = v67;
  v54 = v68;
  *(v47 + *(v58 + 20)) = v50;
  if (!v51)
  {
    (*(v53 + 104))(v54, *MEMORY[0x1E69B5D40], v66);
    swift_allocObject();
    v51 = sub_1D7D2E71C();
  }

  sub_1D7A9AF74(v48);
  (*(v46 + 8))(v49, v70);
  v55 = v62;
  *(v47 + *(v52 + 24)) = v51;
  sub_1D7A9AFD0(v47, v45);
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D7A9AAA0(void *a1, double a2)
{
  v4 = v2;
  sub_1D7A9B034(0, &qword_1EC9E37D0, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A9AEBC();
  sub_1D7D31B1C();
  LOBYTE(v15) = 0;
  sub_1D7990AB0(0);
  sub_1D798ED94(&qword_1EC9E37D8, sub_1D7990AB0, MEMORY[0x1E69B5A50]);
  sub_1D7D318BC();
  if (!v3)
  {
    v12 = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs(0);
    v15 = *(v4 + *(v12 + 20));
    HIBYTE(v14) = 1;
    sub_1D7994BB0();
    sub_1D798ED94(&qword_1EC9E3548, sub_1D7994BB0, MEMORY[0x1E69B5B88]);
    sub_1D7D318BC();
    v15 = *(v4 + *(v12 + 24));
    HIBYTE(v14) = 2;
    sub_1D7994C2C(0);
    sub_1D798ED94(&qword_1EC9E37E0, sub_1D7994C2C, MEMORY[0x1E69B5B88]);
    sub_1D7D318BC();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1D7A9AD38()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
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

uint64_t sub_1D7A9AD94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7A9B1B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7A9ADBC(uint64_t a1)
{
  v2 = sub_1D7A9AEBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A9ADF8(uint64_t a1)
{
  v2 = sub_1D7A9AEBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7A9AE64(uint64_t a1)
{
  if (!qword_1EE0BF988)
  {
    sub_1D7990AB0(255);
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF988);
    }
  }
}

unint64_t sub_1D7A9AEBC()
{
  result = qword_1EE0C2430;
  if (!qword_1EE0C2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C2430);
  }

  return result;
}

uint64_t sub_1D7A9AF10(uint64_t a1, uint64_t a2)
{
  sub_1D7A9AE64(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A9AF74(uint64_t a1)
{
  sub_1D7A9AE64(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A9AFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7A9B034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7A9AEBC();
    v7 = a3(a1, &type metadata for MoreFromEndOfArticleFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7A9B0AC()
{
  result = qword_1EC9E37E8;
  if (!qword_1EC9E37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E37E8);
  }

  return result;
}

unint64_t sub_1D7A9B104()
{
  result = qword_1EE0C2420;
  if (!qword_1EE0C2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C2420);
  }

  return result;
}

unint64_t sub_1D7A9B15C()
{
  result = qword_1EE0C2428;
  if (!qword_1EE0C2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C2428);
  }

  return result;
}

uint64_t sub_1D7A9B1B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D7D6E240 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D7D6E260 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

void *sub_1D7A9B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = sub_1D7D2F3FC();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2F44C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReportConcernLayoutModel(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2ACA8(0);
  sub_1D7D2ABBC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A9B7DC();
    v17 = sub_1D7D30AFC();
    v18 = [v17 textLabel];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1D7D3031C();

      [v19 setText_];
    }

    else
    {
    }

    sub_1D7A9B828(0);
    v27 = *(v26 + 48);
    [v17 setAccessoryType_];
    v28 = sub_1D7D2B15C();
    (*(*(v28 - 8) + 8))(&v16[v27], v28);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1D7A2AED8(0);
    v22 = *(v21 + 64);
    v23 = *(v9 + 32);
    v24 = &v16[*(v21 + 48)];
    v31 = v8;
    v23(v12, v24, v8);
    (*(v4 + 32))(v7, &v16[v22], v33);
    sub_1D7A9B894(0);
    v17 = sub_1D7D30AFC();
    swift_getObjectType();
    v25 = sub_1D7D2A00C();
    sub_1D7D2FB0C();

    [v17 setSelectionStyle_];
    (*(v4 + 8))(v7, v33);
    (*(v9 + 8))(v12, v31);
  }

  return v17;
}

uint64_t sub_1D7A9B6B0()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A9B75C()
{
  sub_1D7A9B894(0);
  sub_1D7D30B1C();
  sub_1D7A9B7DC();
  return sub_1D7D30B1C();
}

void *sub_1D7A9B7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_1D7A9B2E0(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_1D7A9B7DC()
{
  result = qword_1EC9E3800;
  if (!qword_1EC9E3800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9E3800);
  }

  return result;
}

void sub_1D7A9B828(uint64_t a1)
{
  if (!qword_1EC9E2670)
  {
    sub_1D7D2B15C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2670);
    }
  }
}

void sub_1D7A9B894(uint64_t a1)
{
  if (!qword_1EC9E3810)
  {
    sub_1D7A9B928(255);
    sub_1D7A9B980(&unk_1EC9E3820, sub_1D7A9B928, MEMORY[0x1E69B60E8]);
    v1 = sub_1D7D2A01C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E3810);
    }
  }
}

void sub_1D7A9B928(uint64_t a1)
{
  if (!qword_1EC9E3818)
  {
    sub_1D7D2C86C();
    v1 = sub_1D7D2EF5C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E3818);
    }
  }
}

uint64_t sub_1D7A9B980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7A9B9F0()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return swift_deallocClassInstance();
}

id sub_1D7A9BA4C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  result = [Strong text];
  if (result)
  {
    v3 = result;
    v4 = sub_1D7D3034C();

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1D7A9BB34(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_observers;
  *&v2[v6] = [objc_opt_self() weakObjectsHashTable];
  *&v2[OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_subscriptionController] = a1;
  *&v2[OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_headline] = a2;
  v7 = a1;
  v8 = [v7 hasSubscriptionToTag_];
  swift_unknownObjectRelease();
  v9 = [v7 subscribedTagIDs];
  if (v9)
  {
    v10 = v9;
    sub_1D7D3063C();

    v11 = sub_1D7D3062C();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69CE0B8]) initWithFollowing:v8 tags:v11];

  *&v2[OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_tagSubscriptionStatus] = v12;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v7 addObserver_];

  swift_unknownObjectRelease();
  return v13;
}

void sub_1D7A9BF6C(void *a1)
{
  if (!a1)
  {
    goto LABEL_22;
  }

  v2 = v1;
  v4 = OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_tagSubscriptionStatus;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_tagSubscriptionStatus);
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_headline);
  v7 = v5;
  v8 = [a1 hasSubscriptionToTag_];
  swift_unknownObjectRelease();
  v9 = [a1 subscribedTagIDs];
  if (v9)
  {
    v10 = v9;
    sub_1D7D3063C();

    v11 = sub_1D7D3062C();
  }

  else
  {
    v11 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E69CE0B8]) initWithFollowing:v8 tags:v11];

  sub_1D7A9C1EC();
  if (sub_1D7D311DC())
  {

    return;
  }

  v12 = *(v2 + v4);
  *(v2 + v4) = v19;
  v13 = v19;

  v14 = [*(v2 + OBJC_IVAR____TtC12NewsArticles29TagSubscriptionStatusProvider_observers) allObjects];
  sub_1D7A9C238();
  v15 = sub_1D7D3063C();

  if (v15 >> 62)
  {
    v16 = sub_1D7D3167C();
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA70EF00](i, v15);
    }

    else
    {
      v18 = *(v15 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v18 tagSubscriptionStatusChangedFromStatus_];
    swift_unknownObjectRelease();
  }

LABEL_18:
}

unint64_t sub_1D7A9C1EC()
{
  result = qword_1EE0BAF98;
  if (!qword_1EE0BAF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BAF98);
  }

  return result;
}

unint64_t sub_1D7A9C238()
{
  result = qword_1EC9E3850;
  if (!qword_1EC9E3850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E3850);
  }

  return result;
}

uint64_t sub_1D7A9C29C(void (*a1)(__int128 *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  result = MEMORY[0x1E69E7CC0];
  do
  {
    v34 = result;
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v10 = sub_1D7D2EB6C();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      a1(&v30, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {
        v22 = v34;

        return v22;
      }

      if (*(&v30 + 1))
      {
        break;
      }

      v26 = v30;
      v27 = v31;
      v28 = v32;
      v29 = v33;
      result = sub_1D7A9F8D0(&v26, &qword_1EE0C0600, &type metadata for Article, MEMORY[0x1E69E6720], sub_1D7A9F930);
      if (v7 == v4)
      {
        return v34;
      }
    }

    v26 = v30;
    v27 = v31;
    v28 = v32;
    v29 = v33;
    v13 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1D79E3A50(0, *(v13 + 2) + 1, 1, v13);
    }

    v14 = v13;
    v15 = *(v13 + 2);
    v16 = v14;
    v17 = *(v14 + 3);
    v18 = v15 + 1;
    if (v15 >= v17 >> 1)
    {
      v34 = v15 + 1;
      v21 = sub_1D79E3A50((v17 > 1), v15 + 1, 1, v16);
      v18 = v34;
      v16 = v21;
    }

    v24 = v28;
    v25 = v29;
    v19 = v26;
    v23 = v27;
    *(v16 + 16) = v18;
    v20 = (v16 + (v15 << 6));
    result = v16;
    v20[4] = v24;
    v20[5] = v25;
    v20[2] = v19;
    v20[3] = v23;
  }

  while (v7 != v4);
  return result;
}

uint64_t sub_1D7A9C4E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_1D7D2EB6C();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      v6(&v29, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v30;
      if (v30)
      {
        break;
      }

      result = sub_1D7A9F870(v29, 0, v31);
      if (v7 == v4)
      {
        return v8;
      }
    }

    v36 = v29;
    v27 = v32;
    v28 = v31;
    v25 = v34;
    v26 = v33;
    v24 = v35;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D79E3BD4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = v15 + 1;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v36;
    if (v15 >= v14 >> 1)
    {
      result = sub_1D79E3BD4((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v17 = v24;
      v20 = v27;
      v21 = v28;
      v18 = v25;
      v19 = v26;
      v8 = result;
      v22 = v36;
    }

    *(v8 + 16) = v16;
    v23 = (v8 + 56 * v15);
    v23[4] = v22;
    v23[5] = v13;
    v23[6] = v21;
    v23[7] = v20;
    v23[8] = v19;
    v23[9] = v18;
    v23[10] = v17;
  }

  while (v7 != v4);
  return v8;
}

void *sub_1D7A9C6C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_1D7998F48(0, &unk_1EC9E3878, type metadata accessor for EndOfRecipeModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for EndOfRecipeModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(sub_1D7D2FC7C() - 8);
  v28 = v12;
  v20 = (v12 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D7A9F8D0(v10, &unk_1EC9E3878, type metadata accessor for EndOfRecipeModel, MEMORY[0x1E69E6720], sub_1D7998F48);
    }

    else
    {
      v23 = v31;
      sub_1D7A9F980(v10, v31, type metadata accessor for EndOfRecipeModel);
      sub_1D7A9F980(v23, v33, type metadata accessor for EndOfRecipeModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D79E4270(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1D79E4270((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1D7A9F980(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for EndOfRecipeModel);
      v11 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

void *sub_1D7A9CA34(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_1D7998F48(0, qword_1EE0C9788, type metadata accessor for EndOfArticleModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for EndOfArticleModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(sub_1D7D2FC7C() - 8);
  v28 = v12;
  v20 = (v12 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D7A9F8D0(v10, qword_1EE0C9788, type metadata accessor for EndOfArticleModel, MEMORY[0x1E69E6720], sub_1D7998F48);
    }

    else
    {
      v23 = v31;
      sub_1D7A9F980(v10, v31, type metadata accessor for EndOfArticleModel);
      sub_1D7A9F980(v23, v33, type metadata accessor for EndOfArticleModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D79E4494(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1D79E4494((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1D7A9F980(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for EndOfArticleModel);
      v11 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

char *sub_1D7A9CDA8(char *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7 + 40 * v6;
    for (i = v6; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = (v5)(&v19, v9, a2);
      if (v3)
      {

        return v8;
      }

      if (v20)
      {
        break;
      }

      v9 += 40;
      if (v6 == v4)
      {
        return v8;
      }
    }

    v18 = v20;
    v11 = v19;
    v12 = v21;
    result = swift_isUniquelyReferenced_nonNull_native();
    v22 = v12;
    v17 = v11;
    if ((result & 1) == 0)
    {
      result = sub_1D79E4838(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    v15 = v18;
    if (v14 >= v13 >> 1)
    {
      result = sub_1D79E4838((v13 > 1), v14 + 1, 1, v8);
      v15 = v18;
      v8 = result;
    }

    *(v8 + 2) = v14 + 1;
    v16 = &v8[32 * v14];
    *(v16 + 4) = v17;
    *(v16 + 40) = v15;
    *(v16 + 7) = v22;
  }

  while (v6 != v4);
  return v8;
}

uint64_t sub_1D7A9CF34(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = _s15ArticleProviderOMa(0);
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v17, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v17;
      if (v17)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D79E551C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_1D79E551C((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v8 = result;
    }

    v8[2] = v16;
    v8[v15 + 4] = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t FeedItemLayoutAttributes.articles.getter()
{
  v1 = sub_1D7D2EFCC();
  v84 = *(v1 - 8);
  v85 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v83 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7D2FC9C();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v86 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7998F48(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v91 = &v80 - v9;
  v10 = sub_1D7D2ED3C();
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v90 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v89 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v80 - v22;
  v24 = sub_1D7D2F44C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D7D2E8FC();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v80 - v36);
  sub_1D7D2E8EC();
  if ((sub_1D7D3103C() & 1) == 0)
  {
    v81 = v25;
    v82 = v24;
    v38 = *(v30 + 16);
    v38(v37, v0, v29);
    v39 = (*(v30 + 88))(v37, v29);
    if (v39 != *MEMORY[0x1E69B5C80] && v39 != *MEMORY[0x1E69B5C78] && v39 != *MEMORY[0x1E69B5BF8] && v39 != *MEMORY[0x1E69B5C90])
    {
      if (v39 == *MEMORY[0x1E69B5C30])
      {
        (*(v30 + 96))(v37, v29);
        v40 = *v37;
        sub_1D7A9EB60(0, &qword_1EC9E3870, MEMORY[0x1E69B62B8], MEMORY[0x1E69B62A0]);
        v41 = swift_projectBox();
        v42 = v81;
        v43 = v28;
        v44 = v28;
        v45 = v82;
        (*(v81 + 16))(v44, v41, v82);
        sub_1D7D2F43C();
        v46 = sub_1D7D2ED1C();
        v47 = *(v92 + 8);
        v48 = v23;
        v49 = v93;
        v47(v48, v93);
        v50 = [v46 routeURL];
        swift_unknownObjectRelease();
        if (!v50)
        {
          v63 = sub_1D7D2824C();
          v64 = v91;
          (*(*(v63 - 8) + 56))(v91, 1, 1, v63);
          sub_1D7A9F8D0(v64, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7998F48);
          sub_1D7A9F930(0, &unk_1EE0BE990, &type metadata for Article, MEMORY[0x1E69E6F90]);
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1D7D3B4D0;
          sub_1D7D2F43C();
          v66 = sub_1D7D2ECBC();
          v92 = v40;
          v67 = v66;
          v69 = v68;
          v47(v19, v49);
          v70 = v89;
          sub_1D7D2F43C();
          v91 = sub_1D7D2ED1C();
          v47(v70, v49);
          v71 = v90;
          sub_1D7D2F43C();
          v72 = sub_1D7D2ED2C();
          v47(v71, v49);
          *(v65 + 32) = v67;
          *(v65 + 40) = v69;
          *(v65 + 48) = v91;
          *(v65 + 56) = v72;
          *(v65 + 64) = 0;
          *(v65 + 72) = 0;
          *(v65 + 80) = v67;
          *(v65 + 88) = v69;
          v73 = *(v42 + 8);

          v73(v43, v82);

          return v65;
        }

        v51 = v91;
        sub_1D7D281EC();

        v52 = sub_1D7D2824C();
        (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
        sub_1D7A9F8D0(v51, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7998F48);
        (*(v42 + 8))(v43, v45);

        return MEMORY[0x1E69E7CC0];
      }

      if (v39 != *MEMORY[0x1E69B5C10] && v39 != *MEMORY[0x1E69B5C20])
      {
        if (v39 == *MEMORY[0x1E69B5BF0])
        {
          (*(v30 + 96))(v37, v29);
          sub_1D7A9EB60(0, &qword_1EE0BB160, MEMORY[0x1E69B66B0], MEMORY[0x1E69B6810]);
          v53 = swift_projectBox();
          v55 = v86;
          v54 = v87;
          v56 = v88;
          (*(v87 + 16))(v86, v53, v88);

          v57 = sub_1D7A9E06C();
          v58 = sub_1D7D2FF8C();
          MEMORY[0x1EEE9AC00](v58, v59);
          *(&v80 - 2) = v55;
          v60 = sub_1D7A9C29C(sub_1D7A9EAA0, (&v80 - 4), v58);

          v94 = v57;
          sub_1D79E26EC(v60);

          v61 = v94;
          (*(v54 + 8))(v55, v56);
LABEL_13:

          return v61;
        }

        if (v39 != *MEMORY[0x1E69B5C08] && v39 != *MEMORY[0x1E69B5C28])
        {
          if (v39 == *MEMORY[0x1E69B5C88])
          {
            (*(v30 + 96))(v37, v29);
            sub_1D7A9DB78(0);
            v74 = swift_projectBox();
            v76 = v83;
            v75 = v84;
            v77 = v85;
            (*(v84 + 16))(v83, v74, v85);
            sub_1D7D2EFBC();
            v78 = PluginModel.articles.getter();

            (*(v75 + 8))(v76, v77);

            return v78;
          }

          if (v39 == *MEMORY[0x1E69B5BE0])
          {
            (*(v30 + 96))(v37, v29);
            sub_1D7A9EABC(0);
            v79 = swift_projectBox();
            v38(v33, v79, v29);
            v61 = FeedItemLayoutAttributes.articles.getter();
            (*(v30 + 8))(v33, v29);
            goto LABEL_13;
          }
        }
      }
    }

    (*(v30 + 8))(v37, v29);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D7A9DB78(uint64_t a1)
{
  if (!qword_1EE0BB1A0)
  {
    sub_1D7D2EFCC();
    sub_1D7D2EFDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BB1A0);
    }
  }
}

uint64_t sub_1D7A9DBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  sub_1D7998F48(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - v7;
  v9 = sub_1D7D2EB6C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - v15;
  v17 = sub_1D7D2ED3C();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v16, a1, v9, v20);
  if ((*(v10 + 88))(v16, v9) == *MEMORY[0x1E69B5E70])
  {
    (*(v10 + 96))(v16, v9);
    (*(v18 + 32))(v22, v16, v17);
    v23 = [sub_1D7D2ED1C() routeURL];
    swift_unknownObjectRelease();
    if (!v23)
    {
      v26 = sub_1D7D2824C();
      (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
      sub_1D7A9F8D0(v8, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7998F48);
      v27 = sub_1D7D2ECBC();
      v37 = v28;
      v38 = v27;
      v36 = sub_1D7D2ED1C();
      v35 = sub_1D7D2ED2C();
      v29 = v39;
      sub_1D7D2FC8C();
      v30 = sub_1D7D2EAFC();
      v32 = v31;
      (*(v10 + 8))(v29, v9);
      result = (*(v18 + 8))(v22, v17);
      v33 = v37;
      *a3 = v38;
      a3[1] = v33;
      v34 = v35;
      a3[2] = v36;
      a3[3] = v34;
      a3[4] = 0;
      a3[5] = 0;
      a3[6] = v30;
      a3[7] = v32;
      return result;
    }

    sub_1D7D281EC();

    (*(v18 + 8))(v22, v17);
    v24 = sub_1D7D2824C();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    result = sub_1D7A9F8D0(v8, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7998F48);
  }

  else
  {
    result = (*(v10 + 8))(v16, v9);
  }

  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_1D7A9E06C()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1D7998F48(0, &qword_1EE0BB1B0, MEMORY[0x1E69B5FD0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v61 - v3;
  v5 = sub_1D7D2EDEC();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7998F48(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], v0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - v14;
  v64 = sub_1D7D2ED3C();
  v16 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61 - v22;
  v24 = sub_1D7D2EB6C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2FC8C();
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x1E69B5E20] || v29 == *MEMORY[0x1E69B5DC8] || v29 == *MEMORY[0x1E69B5E60])
  {
    goto LABEL_4;
  }

  if (v29 == *MEMORY[0x1E69B5E70])
  {
    (*(v25 + 96))(v28, v24);
    v31 = v16;
    v32 = v64;
    (*(v16 + 32))(v23, v28, v64);
    v33 = [sub_1D7D2ED1C() routeURL];
    swift_unknownObjectRelease();
    if (v33)
    {
      sub_1D7D281EC();

      v34 = sub_1D7D2824C();
      (*(*(v34 - 8) + 56))(v15, 0, 1, v34);
      sub_1D7A9F8D0(v15, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7998F48);
      (*(v16 + 8))(v23, v32);
      return MEMORY[0x1E69E7CC0];
    }

    v44 = sub_1D7D2824C();
    (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
    sub_1D7A9F8D0(v15, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7998F48);
    sub_1D7A9F930(0, &unk_1EE0BE990, &type metadata for Article, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D7D3B4D0;
    v45 = sub_1D7D2ECBC();
    v47 = v46;
    v48 = sub_1D7D2ED1C();
    v49 = sub_1D7D2ED2C();
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    *(v43 + 48) = v48;
    *(v43 + 56) = v49;
    *(v43 + 64) = 0;
    *(v43 + 72) = 0;
    *(v43 + 80) = v45;
    *(v43 + 88) = v47;
    v50 = *(v31 + 8);

    v50(v23, v32);
    return v43;
  }

  if (v29 == *MEMORY[0x1E69B5E78])
  {
    (*(v25 + 96))(v28, v24);
    v35 = v61;
    v36 = v28;
    v37 = v62;
    (*(v61 + 32))(v63, v36, v62);
    sub_1D7D2EDDC();
    v38 = v64;
    if ((*(v16 + 48))(v4, 1, v64) == 1)
    {
      v39 = &qword_1EE0BB1B0;
      v40 = MEMORY[0x1E69B5FD0];
      v41 = MEMORY[0x1E69E6720];
      v42 = v4;
    }

    else
    {
      (*(v16 + 32))(v19, v4, v38);
      v51 = [sub_1D7D2ED1C() routeURL];
      swift_unknownObjectRelease();
      if (!v51)
      {
        v53 = sub_1D7D2824C();
        (*(*(v53 - 8) + 56))(v11, 1, 1, v53);
        sub_1D7A9F8D0(v11, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7998F48);
        sub_1D7A9F930(0, &unk_1EE0BE990, &type metadata for Article, MEMORY[0x1E69E6F90]);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1D7D3B4D0;
        v54 = sub_1D7D2EDBC();
        v55 = v35;
        v57 = v56;
        v58 = sub_1D7D2ED1C();
        v59 = sub_1D7D2ED2C();
        *(v43 + 32) = v54;
        *(v43 + 40) = v57;
        *(v43 + 48) = v58;
        *(v43 + 56) = v59;
        *(v43 + 64) = 0;
        *(v43 + 72) = 0;
        *(v43 + 80) = v54;
        *(v43 + 88) = v57;
        v60 = *(v16 + 8);

        v60(v19, v38);
        (*(v55 + 8))(v63, v37);
        return v43;
      }

      sub_1D7D281EC();

      (*(v16 + 8))(v19, v38);
      v52 = sub_1D7D2824C();
      (*(*(v52 - 8) + 56))(v11, 0, 1, v52);
      v39 = &qword_1EE0CB770;
      v40 = MEMORY[0x1E6968FB0];
      v41 = MEMORY[0x1E69E6720];
      v42 = v11;
    }

    sub_1D7A9F8D0(v42, v39, v40, v41, sub_1D7998F48);
    (*(v35 + 8))(v63, v37);
    return MEMORY[0x1E69E7CC0];
  }

  if (v29 != *MEMORY[0x1E69B5E38] && v29 != *MEMORY[0x1E69B5DC0] && v29 != *MEMORY[0x1E69B5E28] && v29 != *MEMORY[0x1E69B5DB8] && v29 != *MEMORY[0x1E69B5E68] && v29 != *MEMORY[0x1E69B5E18])
  {
    if (v29 != *MEMORY[0x1E69B5E40])
    {
      if (v29 != *MEMORY[0x1E69B5E50] && v29 != *MEMORY[0x1E69B5DF0] && v29 != *MEMORY[0x1E69B5E48] && v29 != *MEMORY[0x1E69B5DD0] && v29 != *MEMORY[0x1E69B5E10] && v29 != *MEMORY[0x1E69B5E58] && v29 == *MEMORY[0x1E69B5E30])
      {
        return MEMORY[0x1E69E7CC0];
      }

      goto LABEL_4;
    }

    (*(v25 + 96))(v28, v24);
    v43 = PluginModel.articles.getter();

    return v43;
  }

LABEL_4:
  (*(v25 + 8))(v28, v24);
  return MEMORY[0x1E69E7CC0];
}

void sub_1D7A9EABC(uint64_t a1)
{
  if (!qword_1EC9E3860)
  {
    sub_1D7D2E8FC();
    sub_1D7998F48(255, &qword_1EC9E3868, MEMORY[0x1E69B5D18], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E3860);
    }
  }
}

void sub_1D7A9EB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t FeedItemLayoutAttributes.recipes.getter()
{
  v1 = sub_1D7D2EFCC();
  v41 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2FC9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2E8FC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D7D2E8EC();
  if ((sub_1D7D3103C() & 1) == 0)
  {
    v40 = v6;
    v39 = *(v11 + 16);
    v39(v18, v0, v10);
    v19 = (*(v11 + 88))(v18, v10);
    if (v19 != *MEMORY[0x1E69B5C80] && v19 != *MEMORY[0x1E69B5C78] && v19 != *MEMORY[0x1E69B5BF8] && v19 != *MEMORY[0x1E69B5C90] && v19 != *MEMORY[0x1E69B5C30] && v19 != *MEMORY[0x1E69B5C10] && v19 != *MEMORY[0x1E69B5C20])
    {
      if (v19 == *MEMORY[0x1E69B5BF0])
      {
        (*(v11 + 96))(v18, v10);
        sub_1D7A9EB60(0, &qword_1EE0BB160, MEMORY[0x1E69B66B0], MEMORY[0x1E69B6810]);
        v27 = swift_projectBox();
        v28 = v40;
        (*(v40 + 16))(v9, v27, v5);

        v29 = sub_1D7A9F3FC();
        v30 = sub_1D7D2FF8C();
        MEMORY[0x1EEE9AC00](v30, v31);
        *(&v38 - 2) = v9;
        v32 = sub_1D7A9C4E0(sub_1D7A9F854, (&v38 - 4), v30);

        v42 = v29;
        sub_1D79E2A68(v32);

        v33 = v42;
        (*(v28 + 8))(v9, v5);
LABEL_27:

        return v33;
      }

      if (v19 != *MEMORY[0x1E69B5C08] && v19 != *MEMORY[0x1E69B5C28])
      {
        if (v19 == *MEMORY[0x1E69B5C88])
        {
          (*(v11 + 96))(v18, v10);
          sub_1D7A9DB78(0);
          v34 = swift_projectBox();
          v35 = v41;
          (*(v41 + 16))(v4, v34, v1);
          sub_1D7D2EFBC();
          v36 = PluginModel.recipes.getter();

          (*(v35 + 8))(v4, v1);

          return v36;
        }

        if (v19 == *MEMORY[0x1E69B5BE0])
        {
          (*(v11 + 96))(v18, v10);
          sub_1D7A9EABC(0);
          v37 = swift_projectBox();
          v39(v14, v37, v10);
          v33 = FeedItemLayoutAttributes.recipes.getter();
          (*(v11 + 8))(v14, v10);
          goto LABEL_27;
        }
      }
    }

    (*(v11 + 8))(v18, v10);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D7A9F15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v5 = sub_1D7D2EB6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v30 - v12;
  v14 = sub_1D7D2EC5C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v13, a1, v5, v17);
  if ((*(v6 + 88))(v13, v5) == *MEMORY[0x1E69B5E50])
  {
    (*(v6 + 96))(v13, v5);
    v20 = v15;
    (*(v15 + 32))(v19, v13, v14);
    v32 = sub_1D7D2EC3C();
    v21 = sub_1D7D2EC2C();
    v30 = v14;
    v31 = v21;
    v23 = v22;
    sub_1D7D2FC8C();
    v24 = sub_1D7D2EAFC();
    v26 = v25;
    (*(v6 + 8))(v9, v5);
    result = (*(v20 + 8))(v19, v30);
    v29 = v31;
    v28 = v32;
  }

  else
  {
    result = (*(v6 + 8))(v13, v5);
    v29 = 0;
    v23 = 0;
    v28 = 0;
    v24 = 0;
    v26 = 0;
  }

  *a3 = v29;
  a3[1] = v23;
  a3[2] = v28;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = v24;
  a3[6] = v26;
  return result;
}

uint64_t sub_1D7A9F3FC()
{
  v0 = sub_1D7D2EC5C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2EB6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - v12;
  sub_1D7D2FC8C();
  v14 = (*(v6 + 88))(v13, v5);
  if (v14 != *MEMORY[0x1E69B5E20] && v14 != *MEMORY[0x1E69B5DC8] && v14 != *MEMORY[0x1E69B5E60] && v14 != *MEMORY[0x1E69B5E70] && v14 != *MEMORY[0x1E69B5E78] && v14 != *MEMORY[0x1E69B5E38] && v14 != *MEMORY[0x1E69B5DC0] && v14 != *MEMORY[0x1E69B5E28] && v14 != *MEMORY[0x1E69B5DB8] && v14 != *MEMORY[0x1E69B5E68] && v14 != *MEMORY[0x1E69B5E18])
  {
    if (v14 == *MEMORY[0x1E69B5E40])
    {
      (*(v6 + 96))(v13, v5);
      v16 = PluginModel.recipes.getter();
    }

    else
    {
      if (v14 != *MEMORY[0x1E69B5E50])
      {
        if (v14 != *MEMORY[0x1E69B5DF0] && v14 != *MEMORY[0x1E69B5E48] && v14 != *MEMORY[0x1E69B5DD0] && v14 != *MEMORY[0x1E69B5E10] && v14 != *MEMORY[0x1E69B5E58] && v14 == *MEMORY[0x1E69B5E30])
        {
          return MEMORY[0x1E69E7CC0];
        }

        goto LABEL_12;
      }

      (*(v6 + 96))(v13, v5);
      (*(v1 + 32))(v4, v13, v0);
      v25 = sub_1D7D2EC3C();
      v17 = v1;
      v18 = sub_1D7D2EC2C();
      v20 = v19;
      sub_1D7D2FC8C();
      v21 = sub_1D7D2EAFC();
      v23 = v22;
      (*(v6 + 8))(v9, v5);
      sub_1D7A9F930(0, &qword_1EE0BAEB0, &type metadata for RecipeViewerRecipe, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7D3B4D0;
      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      *(v16 + 48) = v25;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      *(v16 + 72) = v21;
      *(v16 + 80) = v23;
      (*(v17 + 8))(v4, v0);
    }

    return v16;
  }

LABEL_12:
  (*(v6 + 8))(v13, v5);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D7A9F870(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D7A9F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D7A9F930(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7A9F980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1D7A9F9E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeCache();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for RecipeSharingHandler();
    v8 = swift_allocObject();
    v8[2] = v9;
    v8[3] = v10;
    v8[4] = v5;
    v8[5] = v6;
    a2[3] = v7;
    result = sub_1D799F6FC(&qword_1EC9E38B0, type metadata accessor for RecipeSharingHandler, &unk_1D7D49FE8);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7A9FB50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79A6DAC();
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BF710, MEMORY[0x1E69B6160], 1);
    result = sub_1D7D28D2C();
    if (v7)
    {
      v5 = sub_1D7D2F7DC();
      swift_allocObject();
      result = sub_1D7D2F7CC();
      v6 = MEMORY[0x1E69B63F8];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
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

void *sub_1D7A9FC48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0, MEMORY[0x1E69B6230], 1);
  result = sub_1D7D28D2C();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFA10, MEMORY[0x1E69B4F20], 1);
  result = sub_1D7D28D2C();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF590, MEMORY[0x1E69B65A8], 1);
  result = sub_1D7D28D2C();
  if (v8)
  {
    v5 = type metadata accessor for RecipeHistoryProvider();
    v6 = swift_allocObject();
    sub_1D799D69C(&v11, v6 + 16);
    sub_1D799D69C(&v9, v6 + 56);
    sub_1D799D69C(&v7, v6 + 96);
    a2[3] = v5;
    result = sub_1D799F6FC(&unk_1EC9E38A0, type metadata accessor for RecipeHistoryProvider, &unk_1D7D43050);
    a2[4] = result;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7A9FDF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E3888, MEMORY[0x1E69B67C0], 1);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for CookingKitOfflineContentAvailabilityProvider();
    v5 = swift_allocObject();
    sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_1D799F6FC(&unk_1EC9E3890, type metadata accessor for CookingKitOfflineContentAvailabilityProvider, &unk_1D7D5DD80);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A9FF2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1D7AA0CC0(0, &qword_1EC9E38B8, MEMORY[0x1E6997408]);
  v2[4] = swift_task_alloc();
  v3 = sub_1D7D27F0C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1D7AA0CC0(0, &qword_1EC9E2E88, MEMORY[0x1E69972F0]);
  v2[9] = swift_task_alloc();
  v4 = sub_1D7D27D2C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7AA00F0, 0, 0);
}

uint64_t sub_1D7AA00F0()
{
  v1 = v0[3];
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1D7AA01B4;
  v5 = v0[2];

  return MEMORY[0x1EEE22170](v5, v3, v2);
}

uint64_t sub_1D7AA01B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7AA033C, 0, 0);
  }
}

uint64_t sub_1D7AA033C(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[15];
  if (v5 >> 62)
  {
    v6 = sub_1D7D3167C();
    v4[16] = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[16] = v6;
    if (v6)
    {
LABEL_3:
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v7 = v4[15];
        v8 = MEMORY[0x1E69E7CC0];
        v4[17] = 0;
        v4[18] = v8;
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA70EF00](0);
        }

        else
        {
          v9 = *(v7 + 32);
        }

        v10 = v9;
        v4[19] = v9;
        v11 = v4[3];
        v12 = v11[10];
        v13 = v11[11];
        __swift_project_boxed_opaque_existential_1(v11 + 7, v12);
        v14 = swift_task_alloc();
        v4[20] = v14;
        *v14 = v4;
        v14[1] = sub_1D7AA050C;
        v6 = v4[9];
        a2 = v10;
        a3 = v12;
        a4 = v13;
      }

      return MEMORY[0x1EEE22618](v6, a2, a3, a4);
    }
  }

  v15 = v4[1];
  v16 = MEMORY[0x1E69E7CC0];

  return v15(v16);
}

uint64_t sub_1D7AA050C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {

    v2 = sub_1D7AA0628;
  }

  else
  {
    v2 = sub_1D7AA0820;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7AA0628()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1D7AA0D14(v3, &qword_1EC9E2E88, MEMORY[0x1E69972F0]);
  v4 = *(v0 + 136) + 1;
  if (v4 == *(v0 + 128))
  {
    v5 = *(v0 + 144);

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    *(v0 + 136) = v4;
    v8 = *(v0 + 120);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA70EF00]();
    }

    else
    {
      v9 = *(v8 + 8 * v4 + 32);
    }

    v10 = v9;
    *(v0 + 152) = v9;
    v11 = *(v0 + 24);
    v12 = v11[10];
    v13 = v11[11];
    __swift_project_boxed_opaque_existential_1(v11 + 7, v12);
    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_1D7AA050C;
    v15 = *(v0 + 72);

    return MEMORY[0x1EEE22618](v15, v10, v12, v13);
  }
}

uint64_t sub_1D7AA0820()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  (*(v5 + 56))(v6, 0, 1, v4);
  (*(v5 + 32))(v3, v6, v4);
  (*(v5 + 16))(v2, v3, v4);
  sub_1D7D27EFC();
  if (v1)
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(v0 + 32);

    (*(v10 + 8))(v8, v9);
    (*(v12 + 56))(v13, 1, 1, v11);
    sub_1D7AA0D14(v13, &qword_1EC9E38B8, MEMORY[0x1E6997408]);
    v14 = *(v0 + 144);
  }

  else
  {
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);
    (*(v18 + 56))(v19, 0, 1, v17);
    v41 = *(v18 + 32);
    v41(v15, v19, v17);
    (*(v18 + 16))(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v0 + 144);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1D79E49C0(0, v14[2] + 1, 1, *(v0 + 144));
    }

    v22 = v14[2];
    v21 = v14[3];
    if (v22 >= v21 >> 1)
    {
      v14 = sub_1D79E49C0((v21 > 1), v22 + 1, 1, v14);
    }

    v23 = *(v0 + 104);
    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    v26 = *(v0 + 64);
    v40 = *(v0 + 56);
    v28 = *(v0 + 40);
    v27 = *(v0 + 48);

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    v14[2] = v22 + 1;
    v41(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, v40, v28);
  }

  v29 = *(v0 + 136) + 1;
  if (v29 == *(v0 + 128))
  {

    v30 = *(v0 + 8);

    return v30(v14);
  }

  else
  {
    *(v0 + 136) = v29;
    *(v0 + 144) = v14;
    v32 = *(v0 + 120);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1DA70EF00]();
    }

    else
    {
      v33 = *(v32 + 8 * v29 + 32);
    }

    v34 = v33;
    *(v0 + 152) = v33;
    v35 = *(v0 + 24);
    v36 = v35[10];
    v37 = v35[11];
    __swift_project_boxed_opaque_existential_1(v35 + 7, v36);
    v38 = swift_task_alloc();
    *(v0 + 160) = v38;
    *v38 = v0;
    v38[1] = sub_1D7AA050C;
    v39 = *(v0 + 72);

    return MEMORY[0x1EEE22618](v39, v34, v36, v37);
  }
}

uint64_t sub_1D7AA0C28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D7A639D8;

  return sub_1D7A9FF2C(a1);
}

void sub_1D7AA0CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7AA0D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7AA0CC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t NowPlayableTrack.artworkGradient.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D7D2A9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_1D7AA0E94(void *a1)
{
  result = [a1 items];
  if (result)
  {
    v4 = result;
    sub_1D7AA16D0();
    v5 = sub_1D7D3063C();

    [a1 convertPoint:v1 fromCoordinateSpace:{0.0, 0.0}];
    [a1 frame];
    v6.n128_f64[0] = CGRectGetWidth(v15);
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
    {
      v8 = 0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        while (1)
        {
          v9 = MEMORY[0x1DA70EF00](v8, v5, v6);
LABEL_7:
          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = [v9 ts_barButtonItemView];
          if (v12)
          {
            v13 = v12;
            [a1 convertPoint:v12 fromCoordinateSpace:{0.0, 0.0}];

            if (v11 == i)
            {
              goto LABEL_18;
            }
          }

          else
          {

            if (v11 == i)
            {
              goto LABEL_18;
            }
          }

          ++v8;
          if ((v5 & 0xC000000000000001) == 0)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_5:
        if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v5 + 8 * v8 + 32);
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  return result;
}

void sub_1D7AA11C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&Strong[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightView];
    v7.receiver = Strong;
    v7.super_class = type metadata accessor for ToolbarIssueCoverButton();
    v4 = v3;
    if (objc_msgSendSuper2(&v7, sel_isHighlighted))
    {
      v5 = *&v2[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightColor];
    }

    else
    {
      v5 = [objc_opt_self() clearColor];
    }

    v6 = v5;
    [v4 setBackgroundColor_];
  }
}

char *sub_1D7AA12A0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_coverView;
  sub_1D7D2F0CC();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_callToActionLabel;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightView;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightColor;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.2];
  [*&v0[v2] frame];
  sub_1D7D30F9C();
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, sel_initWithFrame_);
  [v6 setClipsToBounds_];
  [v6 addSubview_];
  v7 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_coverView;
  [*&v6[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_coverView] setUserInteractionEnabled_];
  [v6 addSubview_];
  v8 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightView;
  v9 = *&v6[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightView];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor_];

  [*&v6[v8] setUserInteractionEnabled_];
  [v6 addSubview_];

  return v6;
}

void sub_1D7AA15B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_coverView;
  sub_1D7D2F0CC();
  *(v3 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_callToActionLabel;
  *(v3 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightView;
  *(v3 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightColor;
  *(v3 + v7) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.2];
  sub_1D7D3160C();
  __break(1u);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D7AA16D0()
{
  result = qword_1EE0BF050;
  if (!qword_1EE0BF050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF050);
  }

  return result;
}

void sub_1D7AA174C(void *a1, void *a2, uint64_t (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a3(0);
  v5 = sub_1D7D28D1C();
  if (v5)
  {
    v6 = v5;
    [a1 addFactory_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7AA17F0()
{
  type metadata accessor for AdComponentView(0);
  sub_1D7D291DC();

  sub_1D798F168(0, qword_1EE0C6708, &protocol descriptor for AdComponentIntegratorType);
  sub_1D7D291EC();

  type metadata accessor for AdComponentViewFactory();
  sub_1D7D291DC();

  type metadata accessor for AdComponentSizerFactory();
  sub_1D7D291DC();
}

void *sub_1D7AA18FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEF50, &protocolRef_SXDOMObjectProviding);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA3058();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDB0, &protocolRef_SXPresentationDelegateProvider);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = [result presentationDelegate];
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BED90, &protocolRef_SXComponentStyleRendererFactory);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CDBC0, &protocol descriptor for ArticleBannerAdFactoryType);
  result = sub_1D7D28D2C();
  if (!v64)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C4C4(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA30A4(0);
  result = sub_1D7D28D1C();
  v46 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &unk_1EE0BFAB0, MEMORY[0x1E69B42A8]);
  result = sub_1D7D28D2C();
  if (!v62[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, qword_1EE0C6708, &protocol descriptor for AdComponentIntegratorType);
  result = sub_1D7D28D2C();
  if (!v61)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE38, &protocolRef_SXComponentExposureMonitor);
  result = sub_1D7D28D1C();
  v45 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v7;
  v44 = v3;
  v47 = v6;
  v48 = v5;
  v49 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA3178(0);
  result = sub_1D7D28D1C();
  v42 = result;
  if (result)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
    v41[4] = v41;
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    v41[3] = v41;
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v11;
    v19 = *v16;
    v20 = type metadata accessor for ArticleBannerAdFactory();
    v58 = v20;
    v59 = &off_1F52B4328;
    v57[0] = v18;
    v21 = type metadata accessor for AdComponentIntegrator();
    v55 = v21;
    v56 = &off_1F52A4098;
    v54[0] = v19;
    v22 = type metadata accessor for AdComponentView(0);
    v23 = objc_allocWithZone(v22);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v41[2] = v41;
    v25 = MEMORY[0x1EEE9AC00](v24, v24);
    v27 = (v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v41[1] = v41;
    v30 = MEMORY[0x1EEE9AC00](v29, v29);
    v32 = (v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32, v30);
    v34 = *v27;
    v35 = *v32;
    v53[3] = v20;
    v53[4] = &off_1F52B4328;
    v52[4] = &off_1F52A4098;
    v53[0] = v34;
    v52[3] = v21;
    v52[0] = v35;
    v36 = &v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerView];
    *v36 = 0;
    *(v36 + 1) = 0;
    *&v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView____lazy_storage___debugView] = 0;
    v37 = OBJC_IVAR____TtC12NewsArticles15AdComponentView_layoutAttributes;
    v38 = sub_1D7D2D3BC();
    (*(*(v38 - 8) + 56))(&v23[v37], 1, 1, v38);
    *&v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_componentImpressionVisibilityPercentage] = 0x3FE0000000000000;
    sub_1D799CC84(v53, &v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerAdFactory]);
    *&v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_viewManager] = v43;
    *&v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_requestManager] = v46;
    sub_1D799CC84(v62, &v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerAdRenderer]);
    sub_1D799CC84(v52, &v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_integrator]);
    *&v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_exposureMonitor] = v45;
    *&v23[OBJC_IVAR____TtC12NewsArticles15AdComponentView_journal] = v42;
    v51.receiver = v23;
    v51.super_class = v22;

    swift_unknownObjectRetain();

    v39 = objc_msgSendSuper2(&v51, sel_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_, v44, v49, v48, v47);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = v39;
    sub_1D7D2CF6C();

    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    sub_1D7D28AEC();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v63);
    return v40;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1D7AA21AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1D7D28B3C();
  MEMORY[0x1EEE9AC00](v3, v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEF68, &protocolRef_SXLayoutInvalidator);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &unk_1EE0CBD70, MEMORY[0x1E69B4360]);
  result = sub_1D7D28CEC();
  if (!v17[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2D41C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &unk_1EE0BFAC0, MEMORY[0x1E69B4268]);
  result = sub_1D7D28D2C();
  if (v16[3])
  {
    v8 = type metadata accessor for AdComponentIntegrator();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_integrationQueue] = MEMORY[0x1E69E7CC8];
    v10 = OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_lock;
    sub_1D7AA3234(0, &qword_1EE0BE988, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7D3B4D0;
    sub_1D7D28B2C();
    v15 = v11;
    sub_1D798C6E8(&unk_1EE0C04F0, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
    sub_1D7AA3234(0, &unk_1EE0BF308, MEMORY[0x1E69E62F8]);
    sub_1D7AA3294();
    sub_1D7D313AC();
    sub_1D7D28B5C();
    swift_allocObject();
    *&v9[v10] = sub_1D7D28B4C();
    *&v9[OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_layoutInvalidator] = v6;
    sub_1D799CC84(v17, &v9[OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_policyValidator]);
    *&v9[OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_layoutEnvironmentProvider] = v7;
    sub_1D799CC84(v16, &v9[OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_layoutStore]);
    v14.receiver = v9;
    v14.super_class = v8;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    a2[3] = v8;
    a2[4] = &off_1F52A4098;
    *a2 = v12;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7AA2564(void *a1)
{
  sub_1D799CC84(a1, v66);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEF50, &protocolRef_SXDOMObjectProviding);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA3058();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDB0, &protocolRef_SXPresentationDelegateProvider);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BED90, &protocolRef_SXComponentStyleRendererFactory);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CDBC0, &protocol descriptor for ArticleBannerAdFactoryType);
  result = sub_1D7D28D2C();
  if (!v65)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C4C4(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA30A4(0);
  result = sub_1D7D28D1C();
  v51 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &unk_1EE0BFAB0, MEMORY[0x1E69B42A8]);
  result = sub_1D7D28D2C();
  if (!v63[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v50 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, qword_1EE0C6708, &protocol descriptor for AdComponentIntegratorType);
  result = sub_1D7D28D2C();
  if (!v62)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE38, &protocolRef_SXComponentExposureMonitor);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = result;
  v46 = v6;
  v47 = v5;
  v48 = v4;
  v49 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA3178(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v8 = result;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    v44 = &v39;
    v10 = MEMORY[0x1EEE9AC00](v9, v9);
    v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v43 = &v39;
    v15 = MEMORY[0x1EEE9AC00](v14, v14);
    v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v12;
    v20 = *v17;
    v21 = type metadata accessor for ArticleBannerAdFactory();
    v59 = v21;
    v60 = &off_1F52B4328;
    v58[0] = v19;
    v22 = type metadata accessor for AdComponentIntegrator();
    v56 = v22;
    v57 = &off_1F52A4098;
    v55[0] = v20;
    v40 = type metadata accessor for AdComponentViewFactory();
    v23 = objc_allocWithZone(v40);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v42 = &v39;
    v25 = MEMORY[0x1EEE9AC00](v24, v24);
    v27 = (&v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v41 = &v39;
    v30 = MEMORY[0x1EEE9AC00](v29, v29);
    v32 = (&v39 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32, v30);
    v34 = *v27;
    v35 = *v32;
    v54[3] = v21;
    v54[4] = &off_1F52B4328;
    v53[4] = &off_1F52A4098;
    v54[0] = v34;
    v53[3] = v22;
    v53[0] = v35;
    sub_1D799CC84(v66, &v23[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_resolver]);
    sub_1D799CC84(v54, &v23[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_bannerAdFactory]);
    v36 = v51;
    *&v23[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_viewManager] = v50;
    *&v23[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_requestManager] = v36;
    sub_1D799CC84(v63, &v23[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_bannerAdRenderer]);
    sub_1D799CC84(v53, &v23[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_integrator]);
    *&v23[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_exposureMonitor] = v45;
    *&v23[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_journal] = v8;
    v52.receiver = v23;
    v52.super_class = v40;

    swift_unknownObjectRetain();

    v37 = v48;
    v38 = objc_msgSendSuper2(&v52, sel_initWithDOMObjectProvider_viewport_presentationDelegateProvider_componentStyleRendererFactory_, v49, v48, v47, v46);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return v38;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1D7AA2D14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &unk_1EE0BFAC0, MEMORY[0x1E69B4268]);
  result = sub_1D7D28D2C();
  if (!v28[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2D43C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CDBC0, &protocol descriptor for ArticleBannerAdFactoryType);
  result = sub_1D7D28D2C();
  if (v27)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for ArticleBannerAdFactory();
    v24 = v10;
    v25 = &off_1F52B4328;
    v23[0] = v9;
    v11 = type metadata accessor for AdComponentSizerFactory();
    v12 = objc_allocWithZone(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v22[3] = v10;
    v22[4] = &off_1F52B4328;
    v22[0] = v18;
    v19 = &v12[OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_type];
    strcpy(&v12[OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_type], "advertisement");
    *(v19 + 7) = -4864;
    *&v12[OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_role] = 0;
    sub_1D799CC84(v28, &v12[OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_layoutStore]);
    *&v12[OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_bannerAdLayoutAttributesFactory] = v3;
    sub_1D799CC84(v22, &v12[OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_bannerAdFactory]);
    v21.receiver = v12;
    v21.super_class = v11;
    v20 = objc_msgSendSuper2(&v21, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D7AA3058()
{
  result = qword_1EE0BF150;
  if (!qword_1EE0BF150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF150);
  }

  return result;
}

void sub_1D7AA30A4(uint64_t a1)
{
  if (!qword_1EE0CBE10)
  {
    sub_1D7D2D04C();
    sub_1D7D2D0EC();
    sub_1D7D2D1DC();
    sub_1D798C6E8(&unk_1EE0CBDC0, MEMORY[0x1E69B4238], MEMORY[0x1E69B4230]);
    v1 = sub_1D7D2CD6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0CBE10);
    }
  }
}

void sub_1D7AA3178(uint64_t a1)
{
  if (!qword_1EE0CBD30)
  {
    sub_1D7D2D04C();
    sub_1D7D2D1DC();
    sub_1D798C6E8(&unk_1EE0CBDC0, MEMORY[0x1E69B4238], MEMORY[0x1E69B4230]);
    v1 = sub_1D7D2D50C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0CBD30);
    }
  }
}

void sub_1D7AA3234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7D28B3C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7AA3294()
{
  result = qword_1EE0BF2F0[0];
  if (!qword_1EE0BF2F0[0])
  {
    sub_1D7AA3234(255, &unk_1EE0BF308, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0BF2F0);
  }

  return result;
}

uint64_t (*AudioPlaybackConductor.playingItem.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AudioPlaybackConductor.playingItem.getter();
  return sub_1D7AA3368;
}

uint64_t sub_1D7AA3388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{
  swift_getAssociatedTypeWitness();
  v10 = sub_1D7D3130C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - v13;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE0C05E8;
  v16 = sub_1D7D30C6C();
  sub_1D79F3AB0(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7D3B4D0;
  (*(v11 + 16))(v14, a1, v10);
  v18 = sub_1D7D303AC();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D79D6AE0();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_1D7D29AAC(a8, 49, 2, &dword_1D7987000, v15, v16, v17);
}

uint64_t (*AudioPlaybackConductor.currentItem.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AudioPlaybackConductor.currentItem.getter();
  return sub_1D7AA3584;
}

uint64_t sub_1D7AA35A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v59 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v58 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for AudioNowPlayingPlaybackState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v24);
  v27 = &v58 - v26;
  v29 = &v58 + *(v28 + 56) - v26;
  v30 = *(v22 - 8);
  v31 = *(v30 + 16);
  v31(&v58 - v26, a1, v22, v25);
  (v31)(v29, v63, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        return 1;
      }

      goto LABEL_10;
    }

    v34 = *(swift_getTupleTypeMetadata3() + 64);
    v35 = v27[v34];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v29[v34];
      v37 = v62;
      v38 = *(v62 + 32);
      v39 = v59;
      v38(v59, v27, AssociatedTypeWitness);
      v40 = v60;
      v38(v60, v29, AssociatedTypeWitness);
      v41 = sub_1D7D3030C();
      v42 = *(v37 + 8);
      v42(v40, AssociatedTypeWitness);
      v42(v39, AssociatedTypeWitness);
      if (v41)
      {
        return dbl_1D7D475A8[v35] == dbl_1D7D475A8[v36];
      }

      return 0;
    }

LABEL_7:
    (*(v62 + 8))(v27, AssociatedTypeWitness);
LABEL_10:
    (*(v30 + 8))(v29, v22);
    return 0;
  }

  v63 = v20;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v33);
  strcpy(&v58 - 48, "item time playbackRate waiting ");
  v64 = AssociatedTypeWitness;
  v65 = MEMORY[0x1E69E63B0];
  v66 = &type metadata for AudioPlaybackRate;
  v67 = MEMORY[0x1E69E6370];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v45 = *(TupleTypeMetadata + 64);
  v46 = v27[v45];
  v47 = *(TupleTypeMetadata + 80);
  v48 = v27[v47];
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_7;
  }

  LODWORD(v59) = v46;
  LODWORD(v60) = v48;
  v49 = v29[v45];
  v50 = v29[v47];
  v52 = v62;
  v51 = v63;
  v53 = *(v62 + 32);
  v53(v63, v27, AssociatedTypeWitness);
  v53(v16, v29, AssociatedTypeWitness);
  v54 = sub_1D7D3030C();
  v55 = *(v52 + 8);
  v55(v16, AssociatedTypeWitness);
  v55(v51, AssociatedTypeWitness);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

  if (v49 > 2)
  {
    if (v49 == 3)
    {
      v56 = v59 == 3;
    }

    else if (v49 == 4)
    {
      v56 = v59 == 4;
    }

    else
    {
      v56 = v59 == 5;
    }

LABEL_25:
    v57 = v60;
    if (!v56)
    {
      return 0;
    }

    return v57 ^ v50 ^ 1u;
  }

  if (v49)
  {
    if (v49 == 1)
    {
      v56 = v59 == 1;
    }

    else
    {
      v56 = v59 == 2;
    }

    goto LABEL_25;
  }

  v57 = v60;
  if (v59)
  {
    return 0;
  }

  return v57 ^ v50 ^ 1u;
}

uint64_t (*AudioPlaybackConductor.playingItemState.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AudioPlaybackConductor.playingItemState.getter();
  return sub_1D7AA3B68;
}

id sub_1D7AA3B78(uint64_t a1)
{

  v1 = AudioPlaybackConductor.currentlyPlaying.getter();

  return v1;
}

char *AudioPlaybackConductor.__allocating_init(player:playbackQueue:listeningProgressProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = sub_1D79A1784(a1, a2, a3);
  (*(*(v4[12] - 8) + 8))(a3);
  (*(*(v4[11] - 8) + 8))(a2);
  (*(*(v4[10] - 8) + 8))(a1);
  return v8;
}

uint64_t sub_1D7AA3CB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7AA3D18(a1);
  }

  return result;
}

uint64_t sub_1D7AA3D18(uint64_t a1)
{
  v98 = *v1;
  v3 = v98[13];
  v113 = v1;
  v4 = v98[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v100 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v7);
  v103 = v91 - v8;
  v104 = v4;
  v105 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v116 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v10);
  v106 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v101 = v91 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v102 = v91 - v17;
  v112 = AssociatedTypeWitness;
  v115 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v96 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v110 = v91 - v23;
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v99 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v107 = v91 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v108 = v91 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = v91 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v91 - v40;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v111 = qword_1EE0C05E8;
  v42 = sub_1D7D30C6C();
  sub_1D79F3AB0(0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7D3B4D0;
  v44 = *(v24 + 16);
  v44(v41, a1, v6);
  v45 = sub_1D7D303AC();
  v46 = a1;
  v47 = v6;
  v49 = v48;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1D79D6AE0();
  *(v43 + 32) = v45;
  *(v43 + 40) = v49;
  v50 = v47;
  sub_1D7D29AAC("Audio conductor processing item %{public}@", 42, 2, &dword_1D7987000, v111, v42, v43);

  v44(v37, v46, v47);
  v51 = v115;
  v52 = v112;
  v111 = *(v115 + 48);
  if (v111(v37, 1, v112) == 1)
  {
    (*(v24 + 8))(v37, v50);
    (*(v105 + 48))(v104);
    v53 = v106;
    v54 = v114;
    swift_storeEnumTagMultiPayload();
    swift_getWitnessTable();
    sub_1D7D28F1C();
    return (*(v116 + 8))(v53, v54);
  }

  v95 = v24;
  v56 = *(v51 + 32);
  v57 = v50;
  v58 = v110;
  v91[1] = v51 + 32;
  v91[0] = v56;
  v56(v110, v37, v52);
  v59 = *(v51 + 16);
  v60 = v108;
  v93 = v51 + 16;
  v92 = v59;
  v59(v108, v58, v52);
  (*(v51 + 56))(v60, 0, 1, v52);
  v61 = v102;
  v94 = v113[2];
  sub_1D7D28EDC();
  v62 = v107;
  v63 = v114;
  AudioPlaybackState.nowPlaying.getter(v114, v107);
  v64 = *(v116 + 8);
  v116 += 8;
  v102 = v64;
  (v64)(v61, v63);
  v65 = *(TupleTypeMetadata2 + 48);
  v66 = v103;
  v44(v103, v60, v57);
  v44(&v66[v65], v62, v57);
  if (v111(v66, 1, v52) == 1)
  {
    v67 = *(v95 + 8);
    v67(v62, v57);
    v67(v60, v57);
    if (v111(&v66[v65], 1, v52) == 1)
    {
      v67(v66, v57);
      return (*(v115 + 8))(v110, v52);
    }

    goto LABEL_10;
  }

  v68 = v99;
  v44(v99, v66, v57);
  if (v111(&v66[v65], 1, v52) == 1)
  {
    v69 = *(v95 + 8);
    v69(v107, v57);
    v69(v108, v57);
    (*(v115 + 8))(v68, v52);
LABEL_10:
    (*(v100 + 8))(v66, TupleTypeMetadata2);
    goto LABEL_11;
  }

  v80 = v96;
  (v91[0])(v96, &v66[v65], v52);
  v81 = sub_1D7D3030C();
  v82 = *(v115 + 8);
  v82(v80, v52);
  v83 = *(v95 + 8);
  v83(v107, v57);
  v83(v108, v57);
  v82(v68, v52);
  v83(v66, v57);
  if (v81)
  {
    return (v82)(v110, v52);
  }

LABEL_11:
  v70 = v101;
  sub_1D7D28EDC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v72);
    strcpy(&v91[-6], "item time playbackRate waiting ");
    v117 = v52;
    v118 = MEMORY[0x1E69E63B0];
    v119 = &type metadata for AudioPlaybackRate;
    v120 = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v85 = v70[TupleTypeMetadata[16]];
    v78 = v110;
    v86 = (*(v98[15] + 24))(v110, v98[12]);
    (*(v105 + 40))(v78, v104);
    v87 = TupleTypeMetadata[12];
    v88 = TupleTypeMetadata[16];
    v89 = TupleTypeMetadata[20];
    v77 = v106;
    v92(v106, v78, v52);
    *&v77[v87] = v86;
    v77[v88] = v85;
    v77[v89] = 1;
    v79 = v114;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v74 = *(TupleTypeMetadata3 + 64);
    v75 = v70[v74];
    v76 = *(TupleTypeMetadata3 + 48);
    v77 = v106;
    v78 = v110;
    v92(v106, v110, v52);
    *&v77[v76] = (*(v98[15] + 24))(v78, v98[12]);
    v77[v74] = v75;
    v79 = v114;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    swift_getWitnessTable();
    sub_1D7D28F1C();
    (v102)(v77, v79);
    v90 = *(v115 + 8);
    v90(v78, v52);
    return (v90)(v70, v52);
  }

  return (*(v115 + 8))(v110, v52);
}

uint64_t sub_1D7AA4994(double *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0C05E8;
  v4 = sub_1D7D30C3C();
  sub_1D79F3AB0(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D7D3093C();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D79D6AE0();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D7D29AAC("Audio conductor processing time %{public}@", 42, 2, &dword_1D7987000, v3, v4, v5);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = 0;
    v8 = 256;
    sub_1D7AA4AFC(v2, 0, 0, 1, &v7);
  }

  return result;
}

uint64_t sub_1D7AA4AFC(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t *a5)
{
  v78 = a2;
  v79 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v75 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v74 - v17;
  v80 = AssociatedTypeWitness;
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v74 - v25;
  v27 = *a5;
  LOWORD(a5) = *(a5 + 8) | (*(a5 + 9) << 8);
  sub_1D7AA5CCC(v27, a5, v5, v79, v78 & 1);
  v29 = v28;
  v30 = a4;
  v31 = v27;
  v32 = a3;
  v33 = sub_1D7AA607C(v31, a5, v5, a3, a4 & 1);
  sub_1D7D28EDC();
  v79 = v12;
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v78 = v33;
      v36 = v80;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v38 = v18[*(TupleTypeMetadata3 + 64)];
      v39 = *(v77 + 32);
      v39(v26, v18, v36);
      if ((v30 & 1) != 0 || (v32 - 3) < 0xFFFFFFFFFFFFFFFELL)
      {
        v65 = *(TupleTypeMetadata3 + 48);
        v66 = *(TupleTypeMetadata3 + 64);
        v67 = v38;
        v50 = v75;
        v39(v75, v26, v80);
        *&v50[v65] = v29;
        v50[v66] = v67;
        v51 = v79;
      }

      else
      {
        v40 = v38;
        if (qword_1EE0C05E0 != -1)
        {
          swift_once();
        }

        v41 = qword_1EE0C05E8;
        v42 = sub_1D7D30C6C();
        sub_1D7D29AAC("Audio conductor changing to playing due to timeControlStatus", 60, 2, &dword_1D7987000, v41, v42, MEMORY[0x1E69E7CC0]);
        MEMORY[0x1EEE9AC00](v43, v44);
        strcpy(&v74 - 48, "item time playbackRate waiting ");
        v45 = v80;
        v81 = v80;
        v82 = MEMORY[0x1E69E63B0];
        v83 = &type metadata for AudioPlaybackRate;
        v84 = MEMORY[0x1E69E6370];
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v47 = TupleTypeMetadata[12];
        v48 = TupleTypeMetadata[16];
        v49 = TupleTypeMetadata[20];
        v50 = v75;
        v39(v75, v26, v45);
        *&v50[v47] = v29;
        v50[v48] = v40;
        v50[v49] = v78 & 1;
        v51 = v79;
      }

      swift_storeEnumTagMultiPayload();
      swift_getWitnessTable();
      sub_1D7D28F1C();
      return (*(v76 + 8))(v50, v51);
    }
  }

  else
  {
    v78 = v33;
    MEMORY[0x1EEE9AC00](result, v35);
    strcpy(&v74 - 48, "item time playbackRate waiting ");
    v52 = v80;
    v81 = v80;
    v82 = MEMORY[0x1E69E63B0];
    v83 = &type metadata for AudioPlaybackRate;
    v84 = MEMORY[0x1E69E6370];
    v53 = swift_getTupleTypeMetadata();
    v54 = v18[v53[16]];
    v55 = v77;
    (*(v77 + 32))(v22, v18, v52);
    if ((v30 & 1) != 0 || v32)
    {
      v68 = v53[12];
      v69 = v53[16];
      v70 = v53[20];
      v71 = v75;
      v72 = v80;
      (*(v55 + 16))(v75, v22, v80);
      *&v71[v68] = v29;
      v71[v69] = v54;
      v71[v70] = v78 & 1;
      v73 = v79;
      swift_storeEnumTagMultiPayload();
      swift_getWitnessTable();
      sub_1D7D28F1C();
      (*(v76 + 8))(v71, v73);
      return (*(v55 + 8))(v22, v72);
    }

    else
    {
      v56 = v54;
      if (qword_1EE0C05E0 != -1)
      {
        swift_once();
      }

      v57 = qword_1EE0C05E8;
      v58 = sub_1D7D30C6C();
      sub_1D7D29AAC("Audio conductor changing to paused due to timeControlStatus", 59, 2, &dword_1D7987000, v57, v58, MEMORY[0x1E69E7CC0]);
      v59 = v80;
      v60 = swift_getTupleTypeMetadata3();
      v61 = *(v60 + 48);
      v62 = *(v60 + 64);
      v63 = v75;
      (*(v55 + 16))(v75, v22, v59);
      *&v63[v61] = v29;
      v63[v62] = v56;
      v64 = v79;
      swift_storeEnumTagMultiPayload();
      swift_getWitnessTable();
      sub_1D7D28F1C();
      (*(v76 + 8))(v63, v64);
      return (*(v55 + 8))(v22, v59);
    }
  }

  return result;
}

uint64_t sub_1D7AA52D4(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0C05E8;
  v4 = sub_1D7D30C6C();
  sub_1D79F3AB0(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  v7 = v2;
  sub_1D7D315DC();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D79D6AE0();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D7D29AAC("Audio conductor processing playback rate %{public}@", 51, 2, &dword_1D7987000, v3, v4, v5);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = v2;
    sub_1D7AA5430(&v7);
  }

  return result;
}

uint64_t sub_1D7AA5430(unsigned __int8 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  v7 = &v36 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v36 - v17;
  v19 = *a1;
  v20 = *(v1 + 16);
  sub_1D7D28EDC();
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v38 = v20;
    v23 = v19;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v25 = *&v18[*(TupleTypeMetadata3 + 48)];
    (*(v4 + 32))(v7, v18, AssociatedTypeWitness);
    v26 = *(TupleTypeMetadata3 + 48);
    v27 = *(TupleTypeMetadata3 + 64);
    (*(v4 + 16))(v14, v7, AssociatedTypeWitness);
    *&v14[v26] = v25;
    v14[v27] = v23;
  }

  else
  {
    v38 = v20;
    MEMORY[0x1EEE9AC00](result, v22);
    strcpy(&v36 - 48, "item time playbackRate waiting ");
    v39 = AssociatedTypeWitness;
    v40 = MEMORY[0x1E69E63B0];
    v41 = &type metadata for AudioPlaybackRate;
    v42 = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v37 = v19;
    v29 = TupleTypeMetadata;
    v30 = *&v18[*(TupleTypeMetadata + 48)];
    v36 = v18[*(TupleTypeMetadata + 80)];
    (*(v4 + 32))(v7, v18, AssociatedTypeWitness);
    v31 = v29[12];
    v32 = v11;
    v33 = v29[16];
    v34 = v29[20];
    (*(v4 + 16))(v14, v7, AssociatedTypeWitness);
    *&v14[v31] = v30;
    v35 = v36;
    v14[v33] = v37;
    v11 = v32;
    v14[v34] = v35;
  }

  swift_storeEnumTagMultiPayload();
  swift_getWitnessTable();
  sub_1D7D28F1C();
  (*(v11 + 8))(v14, v10);
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_1D7AA585C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0C05E8;
  v4 = sub_1D7D30C6C();
  sub_1D79F3AB0(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  v12[0] = v2;
  v6 = sub_1D7D3190C();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D79D6AE0();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_1D7D29AAC("Audio conductor processing time control status %{public}@", 57, 2, &dword_1D7987000, v3, v4, v5);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = 0;
    v11 = 256;
    sub_1D7AA4AFC(0, 1, v2, 0, &v10);
  }

  return result;
}

uint64_t sub_1D7AA59C0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE0C05E8;
  v5 = sub_1D7D30C6C();
  sub_1D79F3AB0(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v8 = v2;
  v9 = v3;
  sub_1D7D315DC();
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1D7D29AAC("Audio conductor processing seek state %{public}@", 48, 2, &dword_1D7987000, v4, v5, v6);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = v2;
    v9 = v3;
    v10 = 0;
    sub_1D7AA4AFC(0, 1, 0, 1, &v8);
  }

  return result;
}

uint64_t sub_1D7AA5B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t (*a9)(void, uint64_t, uint64_t), const char *a10, uint64_t a11)
{
  if (qword_1EE0C05E0 != -1)
  {
    v17 = a8;
    swift_once();
    a8 = v17;
  }

  v11 = qword_1EE0C05E8;
  v12 = a8();
  sub_1D79F3AB0(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7D3B4D0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a9(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1D7D3193C();
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D79D6AE0();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  sub_1D7D29AAC(a10, a11, 2, &dword_1D7987000, v11, v12, v13);
}

void sub_1D7AA5CCC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = a5;
  v26 = a4;
  v7 = *(*a3 + 104);
  v8 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v24 - v19;
  if ((a2 & 0x100) != 0)
  {
    (*(v7 + 104))(v8, v7, v18);
    sub_1D7D28EDC();

    if ((v29 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v28 = a1;
    if ((a2 & 1) == 0)
    {
      return;
    }
  }

  if (v27)
  {
    sub_1D7D28EDC();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v23 = *(v25 + 8);
      v23(v20, v12);
      sub_1D7D28EDC();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        swift_getTupleTypeMetadata3();
        (*(*(AssociatedTypeWitness - 8) + 8))(v15, AssociatedTypeWitness);
      }

      else
      {
        v23(v15, v12);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v22);
      strcpy(&v24 - 48, "item time playbackRate waiting ");
      v28 = AssociatedTypeWitness;
      v29 = MEMORY[0x1E69E63B0];
      v30 = &type metadata for AudioPlaybackRate;
      v31 = MEMORY[0x1E69E6370];
      swift_getTupleTypeMetadata();
      (*(*(AssociatedTypeWitness - 8) + 8))(v20, AssociatedTypeWitness);
    }
  }
}

BOOL sub_1D7AA607C(uint64_t a1, __int16 a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = *a3;
  if ((a2 & 0x100) != 0)
  {
    (*(*(*a3 + 104) + 104))(*(*a3 + 80));
    sub_1D7D28EDC();

    if (v10 != 1)
    {
      return 1;
    }
  }

  else if ((a2 & 1) == 0)
  {
    return 1;
  }

  if (a5)
  {
    (*(*(v7 + 104) + 96))(*(v7 + 80));
    sub_1D7D28EDC();

    a4 = v9;
  }

  return a4 == 1;
}

char *AudioPlaybackConductor.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 160));

  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 176));
  return v0;
}

uint64_t AudioPlaybackConductor.__deallocating_deinit()
{
  AudioPlaybackConductor.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall AudioPlaybackConductor.rewind(_:)(Swift::Double a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE0C05E8;
  v13 = sub_1D7D30C6C();
  sub_1D79F3AB0(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7D3B4D0;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1D7D3093C();
  v16 = v19;
  v15 = v20;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1D79D6AE0();
  *(v14 + 32) = v16;
  *(v14 + 40) = v15;
  sub_1D7D29AAC("Audio conductor rewinding %{public}@ seconds", 44, 2, &dword_1D7987000, v12, v13, v14);

  sub_1D7D28EDC();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v11, AssociatedTypeWitness);
    (*(v3 + 24))(v18, v3, a1);
  }
}

Swift::Void __swiftcall AudioPlaybackConductor.skipForward(_:)(Swift::Double a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE0C05E8;
  v13 = sub_1D7D30C6C();
  sub_1D79F3AB0(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7D3B4D0;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1D7D3093C();
  v16 = v19;
  v15 = v20;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1D79D6AE0();
  *(v14 + 32) = v16;
  *(v14 + 40) = v15;
  sub_1D7D29AAC("Audio conductor skipping forward %{public}@ seconds", 51, 2, &dword_1D7987000, v12, v13, v14);

  sub_1D7D28EDC();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v11, AssociatedTypeWitness);
    (*(v3 + 32))(v18, v3, a1);
  }
}

Swift::Void __swiftcall AudioPlaybackConductor.play()()
{
  v60 = *v0;
  v1 = v60[13];
  v2 = v60[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D7D3130C();
  v57 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v56 - v6;
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - v13;
  v63 = v2;
  v64 = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v56 - v23;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v25 = qword_1EE0C05E8;
  v26 = sub_1D7D30C6C();
  sub_1D7D29AAC("Audio conductor playing", 23, 2, &dword_1D7987000, v25, v26, MEMORY[0x1E69E7CC0]);
  v61 = v0[2];
  sub_1D7D28EDC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v58 = v17;
    if (EnumCaseMultiPayload == 1)
    {
      v28 = MEMORY[0x1E69E63B0];
      v29 = *&v24[*(swift_getTupleTypeMetadata3() + 48)];
      v30 = v65;
      (*(v65 + 32))(v14, v24, AssociatedTypeWitness);
      v31 = (*(v60[15] + 32))(v14, v60[12], v29);
      v33 = v32;
      MEMORY[0x1EEE9AC00](v31, v34);
      strcpy(&v56 - 48, "item time playbackRate waiting ");
      v66 = AssociatedTypeWitness;
      v67 = v28;
      v68 = &type metadata for AudioPlaybackRate;
      v69 = MEMORY[0x1E69E6370];
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v36 = *(TupleTypeMetadata + 48);
      v37 = *(TupleTypeMetadata + 80);
      (*(v30 + 16))(v20, v14, AssociatedTypeWitness);
      *&v20[v36] = v33;
      v38 = v63;
      v39 = v64;
      (*(v64 + 72))(v63, v64);
      sub_1D7D28EDC();

      v20[v37] = 1;
      v40 = v58;
      swift_storeEnumTagMultiPayload();
      swift_getWitnessTable();
      sub_1D7D28F1C();
      (*(v62 + 8))(v20, v40);
      (*(v39 + 40))(v14, v38, v39, v33);
      (*(v65 + 8))(v14, AssociatedTypeWitness);
    }

    else
    {
      sub_1D7D28EDC();
      v42 = v65;
      if ((*(v65 + 48))(v7, 1, AssociatedTypeWitness) == 1)
      {
        (*(v57 + 8))(v7, v4);
        v43 = sub_1D7D30C4C();
        sub_1D7D29AAC("Stopped audio conductor told to play but there is nothing playable", 66, 2, &dword_1D7987000, v25, v43, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v44 = v59;
        (*(v42 + 32))(v59, v7, AssociatedTypeWitness);
        v45 = (*(v60[15] + 24))(v44, v60[12]);
        v47 = v46;
        MEMORY[0x1EEE9AC00](v45, v48);
        strcpy(&v56 - 48, "item time playbackRate waiting ");
        v66 = AssociatedTypeWitness;
        v67 = MEMORY[0x1E69E63B0];
        v68 = &type metadata for AudioPlaybackRate;
        v69 = MEMORY[0x1E69E6370];
        v49 = swift_getTupleTypeMetadata();
        v50 = *(v49 + 48);
        v51 = *(v49 + 80);
        (*(v42 + 16))(v20, v44, AssociatedTypeWitness);
        *&v20[v50] = v47;
        v52 = v63;
        v53 = v64;
        (*(v64 + 72))(v63, v64);
        sub_1D7D28EDC();

        v20[v51] = 1;
        v54 = v58;
        swift_storeEnumTagMultiPayload();
        swift_getWitnessTable();
        sub_1D7D28F1C();
        (*(v62 + 8))(v20, v54);
        v55 = v59;
        (*(v53 + 40))(v59, v52, v53, v47);
        (*(v42 + 8))(v55, AssociatedTypeWitness);
      }
    }
  }

  else
  {
    v41 = sub_1D7D30C6C();
    sub_1D7D29AAC("Playing audio conductor told to play while already playing", 58, 2, &dword_1D7987000, v25, v41, MEMORY[0x1E69E7CC0]);
    (*(v65 + 8))(v24, AssociatedTypeWitness);
  }
}

Swift::Void __swiftcall AudioPlaybackConductor.pause()()
{
  v42 = *v0;
  v1 = v42[13];
  v2 = v42[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D7D3130C();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v40 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  v46 = v1;
  v47 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v40 - v24;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v26 = qword_1EE0C05E8;
  v27 = sub_1D7D30C6C();
  sub_1D7D29AAC("Audio conductor pausing", 23, 2, &dword_1D7987000, v26, v27, MEMORY[0x1E69E7CC0]);
  v44 = v0[2];
  sub_1D7D28EDC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 8))(v25, AssociatedTypeWitness);
    }

    else
    {
      sub_1D7D28EDC();
      v33 = v8;
      if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) != 1)
      {
        v35 = v43;
        (*(v8 + 32))(v43, v7, AssociatedTypeWitness);
        v36 = (*(v42[15] + 24))(v35, v42[12]);
        v37 = *(swift_getTupleTypeMetadata3() + 48);
        (*(v8 + 16))(v21, v35, AssociatedTypeWitness);
        *&v21[v37] = v36;
        v38 = v46;
        v30 = v47;
        (*(v46 + 72))(v47, v46);
        sub_1D7D28EDC();

        swift_storeEnumTagMultiPayload();
        swift_getWitnessTable();
        sub_1D7D28F1C();
        (*(v45 + 8))(v21, v18);
        (*(v33 + 8))(v35, AssociatedTypeWitness);
        v32 = v38;
        goto LABEL_11;
      }

      (*(v40 + 8))(v7, v41);
      v34 = sub_1D7D30C4C();
      sub_1D7D29AAC("Stopped audio conductor told to pause but there is nothing playable that can be paused.", 87, 2, &dword_1D7987000, v26, v34, MEMORY[0x1E69E7CC0]);
    }

    v32 = v46;
    v30 = v47;
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v29);
    strcpy(&v40 - 48, "item time playbackRate waiting ");
    v48 = AssociatedTypeWitness;
    v49 = MEMORY[0x1E69E63B0];
    v50 = &type metadata for AudioPlaybackRate;
    v51 = MEMORY[0x1E69E6370];
    LODWORD(v43) = v25[*(swift_getTupleTypeMetadata() + 64)];
    (*(v8 + 32))(v15, v25, AssociatedTypeWitness);
    v42 = *(swift_getTupleTypeMetadata3() + 64);
    (*(v8 + 16))(v21, v15, AssociatedTypeWitness);
    v31 = v46;
    v30 = v47;
    (*(v46 + 64))(v47, v46);
    sub_1D7D28EDC();

    *(v42 + v21) = v43;
    swift_storeEnumTagMultiPayload();
    swift_getWitnessTable();
    sub_1D7D28F1C();
    (*(v45 + 8))(v21, v18);
    (*(v8 + 8))(v15, AssociatedTypeWitness);
    v32 = v31;
  }

LABEL_11:
  (*(v32 + 48))(v30);
  v39 = [objc_opt_self() defaultCenter];
  [v39 setPlaybackState_];
}

Swift::Void __swiftcall AudioPlaybackConductor.stop()()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for AudioPlaybackState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE0C05E8;
  v16 = sub_1D7D30C6C();
  sub_1D7D29AAC("Audio conductor stopping", 24, 2, &dword_1D7987000, v15, v16, MEMORY[0x1E69E7CC0]);
  sub_1D7D28EDC();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v14, AssociatedTypeWitness);
    (*(v1 + 56))(v2, v1);
    swift_storeEnumTagMultiPayload();
    swift_getWitnessTable();
    sub_1D7D28F1C();
    (*(v7 + 8))(v10, v6);
  }
}

Swift::Void __swiftcall AudioPlaybackConductor.seek(to:)(Swift::Double to)
{
  v3 = *v1;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE0C05E8;
  v5 = sub_1D7D30C6C();
  sub_1D79F3AB0(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  sub_1D7D3093C();
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1D7D29AAC("Audio conductor seeking to %{public}@", 37, 2, &dword_1D7987000, v4, v5, v6);

  (*(*(v3 + 104) + 112))(*(v3 + 80), to);
}

void sub_1D7AA7FC8()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 40))();
  [v1 next_];
}

uint64_t sub_1D7AA8190(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  sub_1D7AA8878(0, &qword_1EC9E39C8, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA8780();
  sub_1D7D31B1C();
  v15 = 0;
  sub_1D7D3188C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_1D7AA87D4();
    sub_1D7AA88DC(&qword_1EC9E39D0, sub_1D7AA8948, MEMORY[0x1E69E6300]);
    sub_1D7D318BC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7AA8368()
{
  if (*v0)
  {
    return 0x6F697463656C6573;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D7AA83A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F697463656C6573 && a2 == 0xEE0073656C75526ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D7AA8480(uint64_t a1)
{
  v2 = sub_1D7AA8780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AA84BC(uint64_t a1)
{
  v2 = sub_1D7AA8780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7AA84F8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D7AA8548(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D7AA8548(void *a1)
{
  sub_1D7AA8878(0, &qword_1EC9E39A0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA8780();
  sub_1D7D31AFC();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_1D7D317AC();
    sub_1D7AA87D4();
    v11[15] = 1;
    sub_1D7AA88DC(&qword_1EC9E39B8, sub_1D7AA8824, MEMORY[0x1E69E6330]);
    sub_1D7D317DC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D7AA8780()
{
  result = qword_1EC9E39A8;
  if (!qword_1EC9E39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E39A8);
  }

  return result;
}

void sub_1D7AA87D4()
{
  if (!qword_1EC9E39B0)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E39B0);
    }
  }
}

unint64_t sub_1D7AA8824()
{
  result = qword_1EC9E39C0;
  if (!qword_1EC9E39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E39C0);
  }

  return result;
}

void sub_1D7AA8878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7AA8780();
    v7 = a3(a1, &type metadata for RecipeRecirculationConfigSection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7AA88DC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D7AA87D4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7AA8948()
{
  result = qword_1EC9E39D8;
  if (!qword_1EC9E39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E39D8);
  }

  return result;
}

unint64_t sub_1D7AA89B0()
{
  result = qword_1EC9E39E0;
  if (!qword_1EC9E39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E39E0);
  }

  return result;
}

unint64_t sub_1D7AA8A08()
{
  result = qword_1EC9E39E8;
  if (!qword_1EC9E39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E39E8);
  }

  return result;
}

unint64_t sub_1D7AA8A60()
{
  result = qword_1EC9E39F0;
  if (!qword_1EC9E39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E39F0);
  }

  return result;
}

id sub_1D7AA8AEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  sub_1D799CC84(v4 + 16, v12);
  v9 = type metadata accessor for IssueLoader();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  sub_1D799D69C(v12, v10 + 48);
  a2[3] = v9;
  a2[4] = &protocol witness table for IssueLoader;
  *a2 = v10;
  return sub_1D7AA8BA0(v5, v6, v7, v8);
}

id sub_1D7AA8BA0(id result, id a2, void *a3, char a4)
{
  switch(a4)
  {
    case 2:
      v5 = result;

    case 1:

    case 0:

      return result;
  }

  return result;
}

void sub_1D7AA8CFC(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA70EF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 setAlpha_];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1D7AA8DE4(uint64_t a1, __int16 a2)
{
  v4 = v3;
  sub_1D7A394A8(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = *(a1 + 8);
  if (*(v9 + 16))
  {
    v10 = *(v9 + 80);
    v32 = *(v9 + 64);
    v11 = *(v9 + 96);
    v33 = v10;
    v34 = v11;
    v35 = *(v9 + 112);
    v12 = *(v9 + 48);
    v30 = *(v9 + 32);
    v31 = v12;
    if ((a2 & 0x100) != 0)
    {
      sub_1D79F944C();
      v9 = swift_allocObject();
      v13 = v34;
      *(v9 + 80) = v33;
      *(v9 + 96) = v13;
      v14 = v30;
      v15 = v31;
      *(v9 + 16) = xmmword_1D7D3B4D0;
      *(v9 + 32) = v14;
      v16 = v32;
      *(v9 + 112) = v35;
      *(v9 + 48) = v15;
      *(v9 + 64) = v16;
      sub_1D79ECF40(&v30, v29);
    }

    else
    {
    }

    v17 = sub_1D7AA9464(a2 & 1, v9);

    v18 = *(v17 + 16);
    if (v18)
    {
      v29[0] = MEMORY[0x1E69E7CC0];
      sub_1D7A5BE2C(0, v18, 0);
      v19 = v29[0];
      v20 = *(v4 + 56);
      v21 = 32;
      do
      {
        v22 = *(v17 + v21);
        v29[0] = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);

        if (v24 >= v23 >> 1)
        {
          sub_1D7A5BE2C((v23 > 1), v24 + 1, 1);
          v19 = v29[0];
        }

        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v20;
        v21 += 8;
        --v18;
      }

      while (v18);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v26 = sub_1D79F9A34();
    v27 = sub_1D79F9AE4();
    MEMORY[0x1DA706A80](v19, &type metadata for PDFReplicaViewerPage, v26, v27);
    sub_1D79DF824();
  }

  else
  {
    sub_1D79F9A34();
    sub_1D79F9AE4();
    sub_1D7D2902C();
    sub_1D79DF824();
  }

  return sub_1D7D29FBC();
}

uint64_t sub_1D7AA9078()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AA90DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    v4 = result + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v36 = result + 32;
    do
    {
      while (1)
      {
        v6 = (v4 + 88 * v2);
        v7 = v2;
        while (1)
        {
          if (v7 >= v1)
          {
            __break(1u);
LABEL_34:
            __break(1u);
            return result;
          }

          v8 = v6[2];
          v9 = v6[4];
          v38[3] = v6[3];
          v38[4] = v9;
          v39 = *(v6 + 10);
          v10 = v6[1];
          v38[0] = *v6;
          v38[1] = v10;
          v38[2] = v8;
          v2 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_34;
          }

          v11 = v6[3];
          v42 = v6[2];
          v43 = v11;
          v44 = v6[4];
          v45 = *(v6 + 10);
          v12 = v6[1];
          v40 = *v6;
          v41 = v12;
          if (v7)
          {
            break;
          }

          sub_1D79F944C();
          v13 = swift_allocObject();
          v14 = v6[2];
          v15 = v6[4];
          *(v13 + 80) = v6[3];
          *(v13 + 96) = v15;
          *(v13 + 112) = *(v6 + 10);
          v16 = *v6;
          v17 = v6[1];
          *(v13 + 16) = xmmword_1D7D3B4D0;
          *(v13 + 32) = v16;
          *(v13 + 48) = v17;
          *(v13 + 64) = v14;
          sub_1D79ECF40(v38, v37);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D79E38E4(0, v5[2] + 1, 1, v5);
            v5 = result;
          }

          v19 = v5[2];
          v18 = v5[3];
          if (v19 >= v18 >> 1)
          {
            result = sub_1D79E38E4((v18 > 1), v19 + 1, 1, v5);
            v5 = result;
          }

          v5[2] = v19 + 1;
          v5[v19 + 4] = v13;
          v7 = 1;
          v6 = (v6 + 88);
          if (v2 == v1)
          {
            goto LABEL_32;
          }
        }

        if ((v7 & 1) == 0 || v1 - 1 == v7)
        {
          break;
        }

        sub_1D79ECF40(v38, v37);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D79E37A4(0, *(v3 + 2) + 1, 1, v3);
          v3 = result;
        }

        v4 = v36;
        v21 = *(v3 + 2);
        v20 = *(v3 + 3);
        if (v21 >= v20 >> 1)
        {
          result = sub_1D79E37A4((v20 > 1), v21 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 2) = v21 + 1;
        v22 = &v3[88 * v21];
        v23 = v41;
        *(v22 + 2) = v40;
        *(v22 + 3) = v23;
        v24 = v42;
        v25 = v43;
        v26 = v44;
        *(v22 + 14) = v45;
        *(v22 + 5) = v25;
        *(v22 + 6) = v26;
        *(v22 + 4) = v24;
        if (v2 == v1)
        {
          goto LABEL_32;
        }
      }

      sub_1D79ECF40(v38, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D79E37A4(0, *(v3 + 2) + 1, 1, v3);
      }

      v28 = *(v3 + 2);
      v27 = *(v3 + 3);
      v4 = v36;
      if (v28 >= v27 >> 1)
      {
        v3 = sub_1D79E37A4((v27 > 1), v28 + 1, 1, v3);
      }

      *(v3 + 2) = v28 + 1;
      v29 = &v3[88 * v28];
      v30 = v41;
      *(v29 + 2) = v40;
      *(v29 + 3) = v30;
      v31 = v42;
      v32 = v43;
      v33 = v44;
      *(v29 + 14) = v45;
      *(v29 + 5) = v32;
      *(v29 + 6) = v33;
      *(v29 + 4) = v31;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E38E4(0, v5[2] + 1, 1, v5);
        v5 = result;
      }

      v35 = v5[2];
      v34 = v5[3];
      if (v35 >= v34 >> 1)
      {
        result = sub_1D79E38E4((v34 > 1), v35 + 1, 1, v5);
        v5 = result;
      }

      v5[2] = v35 + 1;
      v5[v35 + 4] = v3;
      v3 = MEMORY[0x1E69E7CC0];
    }

    while (v2 != v1);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:

  return v5;
}

uint64_t sub_1D7AA9464(char a1, uint64_t a2)
{
  if (a1)
  {

    return sub_1D7AA90DC(a2);
  }

  else
  {
    v23 = v2;
    v24 = v3;
    v5 = *(a2 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1D7A5BDE8(0, v5, 0);
      v6 = v22;
      v8 = (a2 + 32);
      sub_1D79F944C();
      do
      {
        v9 = v8[2];
        v10 = v8[4];
        v20[3] = v8[3];
        v20[4] = v10;
        v21 = *(v8 + 10);
        v11 = v8[1];
        v20[0] = *v8;
        v20[1] = v11;
        v20[2] = v9;
        v12 = swift_allocObject();
        v13 = v8[2];
        v14 = v8[4];
        *(v12 + 80) = v8[3];
        *(v12 + 96) = v14;
        *(v12 + 112) = *(v8 + 10);
        v15 = *v8;
        v16 = v8[1];
        *(v12 + 16) = xmmword_1D7D3B4D0;
        *(v12 + 32) = v15;
        *(v12 + 48) = v16;
        *(v12 + 64) = v13;
        sub_1D79ECF40(v20, v19);
        v22 = v6;
        v18 = *(v6 + 16);
        v17 = *(v6 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D7A5BDE8((v17 > 1), v18 + 1, 1);
          v6 = v22;
        }

        *(v6 + 16) = v18 + 1;
        *(v6 + 8 * v18 + 32) = v12;
        v8 = (v8 + 88);
        --v5;
      }

      while (v5);
    }

    return v6;
  }
}

void __swiftcall ModalArticleViewerModule.createViewController(content:)(UIViewController *__return_ptr retstr, UIViewController *content)
{
  v4 = sub_1D7D28A2C();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for ModalArticleViewerViewController();
  v5 = swift_allocObject();
  *(v5 + 16) = content;
  *(v5 + 24) = v4;
  v6 = content;

  v7 = sub_1D7D28CFC();

  if (v7)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7AA96E0(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79ED47C();
  sub_1D7D28BDC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

uint64_t (*ModalArticleViewerModule.contentContext.getter())()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 64);
  }

  else
  {
    sub_1D799CC84(v0 + 16, v8);
    v4 = swift_allocObject();
    sub_1D79E14FC(v8, v4 + 16);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v3 = sub_1D7AA9D28;
    *(v0 + 64) = sub_1D7AA9D28;
    *(v0 + 72) = v4;

    sub_1D79AD740(v5, v6);
  }

  sub_1D79C9398(v1, v2);
  return v3;
}

uint64_t sub_1D7AA9860(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = *(*a2 + 64);
  v8 = *(v6 + 72);
  *(v6 + 64) = sub_1D7AA9FFC;
  *(v6 + 72) = v5;

  return sub_1D79AD740(v7, v8);
}

uint64_t ModalArticleViewerModule.contentContext.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_1D79AD740(v3, v4);
}

void *sub_1D7AA98F4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798F168(0, qword_1EE0C0958, &protocol descriptor for SaveArticleViewerFeatureVisibilityProviderType);
  result = sub_1D7D28D2C();
  if (!v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1D7D28BFC();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = type metadata accessor for BrandBarAnimationFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v5;
  v11 = &off_1F52B1DA8;
  v9[0] = result;
  sub_1D798F168(0, &qword_1EE0C0950, &protocol descriptor for ArticleViewerBarCompressionAnimationFactoryType);
  sub_1D7D28BFC();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1D7D28D2C();
  if (!v9[0])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1D7D28BFC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = type metadata accessor for ModalArticleViewerRouter();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v6;
  v11 = &off_1F52B2580;
  v9[0] = result;
  sub_1D798F168(0, qword_1EE0CF990, &protocol descriptor for RouterType);
  sub_1D7D28BFC();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = type metadata accessor for ModalArticleViewerAudioActionHandler();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7;
  v11 = &off_1F52AE260;
  v9[0] = result;
  sub_1D798F168(0, qword_1EE0C7460, &protocol descriptor for AudioActionHandlerType);
  sub_1D7D28BFC();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = type metadata accessor for ModalArticleViewerStyler();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v8;
  v11 = &off_1F52AA068;
  v9[0] = result;
  sub_1D798F168(0, &unk_1EE0C7088, &protocol descriptor for ArticleViewerStylerType);
  sub_1D7D28BFC();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798F168(0, &unk_1EE0C07A0, &protocol descriptor for LikeDislikeArticleViewerFeatureVisibilityProviderType);
  result = sub_1D7D28D2C();
  if (v10)
  {
    sub_1D7D28BFC();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t (*ModalArticleViewerModule.contentContext.modify(uint64_t (**a1)()))()
{
  a1[2] = v1;
  *a1 = ModalArticleViewerModule.contentContext.getter();
  a1[1] = v3;
  return sub_1D7AA9D78;
}

uint64_t sub_1D7AA9D78(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  *(v2 + 64) = *a1;
  *(v2 + 72) = v3;
  if (a2)
  {

    sub_1D79AD740(v4, v5);
  }

  else
  {

    return sub_1D79AD740(v4, v5);
  }
}

void *ModalArticleViewerModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_1D79AD740(v0[8], v0[9]);
  return v0;
}

uint64_t ModalArticleViewerModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_1D79AD740(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AA9E78(void *a1)
{
  v3 = *v1;
  v4 = sub_1D7D28A2C();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  type metadata accessor for ModalArticleViewerViewController();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = a1;

  v7 = sub_1D7D28CFC();

  if (v7)
  {

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1D7AAA0B8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D7D2E3FC();
  v23 = *(v5 - 8);
  v6 = v23;
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EndOfArticleFeedContentConfig(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  sub_1D7AAA51C(a1, v13, type metadata accessor for EndOfArticleFeedContentConfig);
  v15 = type metadata accessor for EndOfArticleFeedServiceConfig(0);
  v16 = *(v2 + v15[6]);
  v17 = *(v6 + 16);
  v18 = v2 + v15[7];
  v19 = v24;
  v17(v9, v18, v24);
  *a2 = v14;
  sub_1D7AAA51C(v13, &a2[v15[5]], type metadata accessor for EndOfArticleFeedContentConfig);
  *&a2[v15[6]] = v16;
  v20 = v19;
  v17(&a2[v15[7]], v9, v19);
  swift_unknownObjectRetain();
  v21 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v23 + 8))(v9, v20);
  sub_1D7AAA584(v13);
  result = v21;
  *&a2[v15[8]] = v21;
  return result;
}

uint64_t sub_1D7AAA2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1D7D2E3FC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D7AAA368()
{
  v1 = [*v0 identifier];
  v2 = sub_1D7D3034C();

  return v2;
}

uint64_t sub_1D7AAA3DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69B5EB0];
  v3 = sub_1D7D2EB7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7AAA51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7AAA584(uint64_t a1)
{
  v2 = type metadata accessor for EndOfArticleFeedContentConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IssueTableOfContentsModule.IssueError.hashValue.getter()
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](0);
  return sub_1D7D31ABC();
}

id sub_1D7AAA654(void *a1, void *a2)
{
  v4 = v2;
  v7 = sub_1D7D295CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleModel(0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [a1 type];
  if (v17 == 1)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    sub_1D798C468(0, &unk_1EE0CDBD0, &protocol descriptor for TableOfContentsModuleType, 1);
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    *(swift_allocObject() + 16) = v4;
    sub_1D7D28D0C();

    swift_unownedRelease();
    if (v78)
    {
      sub_1D799D69C(&v77, v79);
      v18 = v80;
      v19 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v20 = (*(v19 + 8))(a1, a2, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v79);
      return v20;
    }

    __break(1u);
    goto LABEL_17;
  }

  v68 = a2;
  v65 = v12;
  v66 = v11;
  v67 = v8;
  if (!v17)
  {
    v21 = [a1 coverArticleID];
    v22 = sub_1D7D3034C();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {
      if (qword_1EC9DFD50 != -1)
      {
        swift_once();
      }

      v20 = qword_1EC9E3340;
      v53 = sub_1D7D30C4C();
      sub_1D7AAB69C(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1D7D3B4D0;
      v55 = [a1 identifier];
      v56 = sub_1D7D3034C();
      v58 = v57;

      *(v54 + 56) = MEMORY[0x1E69E6158];
      *(v54 + 64) = sub_1D79D6AE0();
      *(v54 + 32) = v56;
      *(v54 + 40) = v58;
      sub_1D7D29AAC("Attempting to open issue TOC without a cover article id for issue: %@", 69, 2, &dword_1D7987000, v20, v53, v54);

      sub_1D7AAB764();
      swift_allocError();
      swift_willThrow();
      return v20;
    }

    v63 = v7;
    v62 = v3;
    v26 = [a1 coverArticleID];
    sub_1D7D3034C();

    v82 = sub_1D7D28A1C();

    v27 = v4[11];
    v28 = v4[12];
    __swift_project_boxed_opaque_existential_1(v4 + 8, v27);
    sub_1D7AD388C(5u, 0, 0, v27, v28);
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    type metadata accessor for TableOfContentsURLHandler();
    sub_1D799CC84(v68, &v77);
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    sub_1D799D69C(&v77, v29 + 24);
    v30 = a1;
    v31 = sub_1D7D28CFC();

    v64 = v31;
    if (v31)
    {
      __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
      sub_1D798C468(0, &unk_1EC9E3A10, &protocol descriptor for IssueTableOfContentsArticleCoordinatorType, 1);
      v32 = swift_allocObject();
      v33 = v82;
      *(v32 + 16) = v30;
      *(v32 + 24) = v33;
      v68 = v30;

      sub_1D7D28D0C();

      __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
      sub_1D798C468(0, qword_1EE0CED80, &protocol descriptor for ArticleModuleType, 1);
      swift_unownedRetainStrong();
      swift_unownedRetain();
      v34 = v64;
      swift_unownedRetain();

      sub_1D7AAB600(&v77, &v74);
      v35 = swift_allocObject();
      v64 = v34;
      *(v35 + 16) = v34;
      *(v35 + 24) = v4;
      v36 = v75;
      *(v35 + 32) = v74;
      *(v35 + 48) = v36;
      *(v35 + 64) = v76;
      sub_1D7D28D0C();
      swift_unownedRelease();

      if (v72)
      {
        sub_1D799D69C(&v71, &v74);
        v37 = *(&v75 + 1);
        v61 = v76;
        __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        sub_1D7994174(0);
        v38 = [v68 coverArticleID];
        v39 = sub_1D7D3034C();
        v41 = v40;

        *v16 = v39;
        v16[1] = v41;
        type metadata accessor for ArticleNavigationAction(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v70 = 0uLL;
        v69 = 0uLL;
        v42 = v67;
        v43 = v66;
        v44 = v63;
        (*(v67 + 104))(v66, *MEMORY[0x1E69B6A78], v63);
        sub_1D799CC84(v79, &v71);
        v45 = v82;

        v46 = ArticleModuleType.createViewController(with:presentationContext:issue:access:tracker:contextBuilder:)(v16, &v70, &v69, v43, v45, &v71, v37, v61);
        v48 = v47;

        sub_1D7AAB7B8(&v71, &qword_1EE0BFAE0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
        (*(v42 + 8))(v43, v44);
        sub_1D7AAB708(v16);
        ObjectType = swift_getObjectType();
        v50 = v64;
        swift_unknownObjectWeakAssign();
        __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
        sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
        sub_1D7D28D2C();
        if (v70)
        {
          v72 = sub_1D7D28A3C();
          v73 = sub_1D7A108E4();
          *&v71 = v82;
          sub_1D7D2A50C();
          swift_allocObject();

          v51 = sub_1D7D2A4FC();
          v52 = type metadata accessor for ANFIssueTableOfContentsViewController();
          v20 = sub_1D7A78B74(v46, v68, v51, v52, ObjectType, v48);

          sub_1D7AAB7B8(&v77, &qword_1EC9E3A20, &unk_1EC9E3A10, &protocol descriptor for IssueTableOfContentsArticleCoordinatorType);
          __swift_destroy_boxed_opaque_existential_1(v79);
          __swift_destroy_boxed_opaque_existential_1(&v74);
          return v20;
        }

        goto LABEL_19;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t sub_1D7AAB04C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79EB250();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E3A38, &protocol descriptor for IssueTableOfContentsActionHandlerType, 1);
  return sub_1D7D28BFC();
}

uint64_t sub_1D7AAB100(void *a1, void *a2, uint64_t a3)
{
  v14[1] = a3;
  v5 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79EB250();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7994174(0);
  v9 = [a2 coverArticleID];
  v10 = sub_1D7D3034C();
  v12 = v11;

  *v8 = v10;
  v8[1] = v12;
  type metadata accessor for ArticleNavigationAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D7D28BFC();
  sub_1D7AAB708(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

uint64_t sub_1D7AAB29C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BF0B0, &protocolRef_SXURLHandling);
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BF058, &protocolRef_SXURLPreviewing);
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_1D7D28A3C();
  sub_1D7D28BEC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AAB600(a4, v11);
  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = __swift_project_boxed_opaque_existential_1(v11, v12);
    *(&v15 + 1) = v6;
    v16 = *(v7 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_1D7AAB7B8(v11, &qword_1EC9E3A20, &unk_1EC9E3A10, &protocol descriptor for IssueTableOfContentsArticleCoordinatorType);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_1D798C468(0, &qword_1EE0C7830, &protocol descriptor for ArticleCoordinatorType, 1);
  sub_1D7D28BBC();
  return sub_1D7AAB7B8(&v14, &unk_1EE0C7820, &qword_1EE0C7830, &protocol descriptor for ArticleCoordinatorType);
}

void *IssueTableOfContentsModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t IssueTableOfContentsModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7AAB54C()
{
  result = qword_1EC9E3A00;
  if (!qword_1EC9E3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3A00);
  }

  return result;
}