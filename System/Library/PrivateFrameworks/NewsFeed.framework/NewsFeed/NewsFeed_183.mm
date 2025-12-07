uint64_t sub_1D6BFA9DC(void *a1)
{
  v2 = [a1 thumbnailSmallImageAssetHandle];
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2, v3);
    v5 = v4;
    sub_1D725BDCC();
    v6 = sub_1D725B92C();
    sub_1D6851ABC(0);
    sub_1D725BA8C();

    *(swift_allocObject() + 16) = a1;
    swift_unknownObjectRetain();
    v7 = sub_1D725B92C();
    v8 = sub_1D725BB6C();

    return v8;
  }

  else
  {
    sub_1D6BFAB84(0, &qword_1EC893770, sub_1D6851ABC, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D6BFAB84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FormatContent.copy(identifier:tagID:issueID:articleID:webEmbedID:recipeID:sponsoredAdBanner:properties:themes:subgroups:selectors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  v82 = a6;
  v83 = a8;
  v81 = a4;
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v87 = &v68 - v31;
  v32 = sub_1D725891C();
  v85 = *(v32 - 8);
  v86 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v84 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a16;
  v69 = a2;
  if (a2)
  {
    v72 = a2;
  }

  else
  {
    a1 = *v18;
    v72 = v18[1];
  }

  v36 = type metadata accessor for FormatContent(0);
  (*(v85 + 16))(v84, v18 + v36[5], v86);
  v37 = v81;
  if (!v81)
  {
    v38 = (v18 + v36[6]);
    a3 = *v38;
    v37 = v38[1];
  }

  v80 = v82;
  if (!v82)
  {
    v39 = (v18 + v36[7]);
    a5 = *v39;
    v80 = v39[1];
  }

  v71 = v37;
  v73 = a1;
  v75 = a5;
  v79 = a10;
  v40 = v83;
  if (!v83)
  {
    a7 = *(v18 + v36[8]);
  }

  v70 = v40;
  v77 = a11;
  v78 = a12;
  if (!a11)
  {
    v41 = (v18 + v36[9]);
    v42 = v41[1];
    v79 = *v41;
    v77 = v42;
  }

  v74 = a3;
  v76 = a7;
  v88 = v35;
  v43 = a13;
  if (!a13)
  {
    v78 = *(v18 + v36[10]);
  }

  v68 = v43;
  sub_1D5CF2564(a14, v28, sub_1D5B49800);
  v44 = sub_1D72608BC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  if (v46(v28, 1, v44) == 1)
  {
    sub_1D5CF2564(v18 + v36[11], v87, sub_1D5B49800);
    v47 = v46(v28, 1, v44);

    if (v47 != 1)
    {
      sub_1D5CF29A4(v28, sub_1D5B49800);
    }
  }

  else
  {
    v48 = v87;
    (*(v45 + 32))(v87, v28, v44);
    (*(v45 + 56))(v48, 0, 1, v44);
  }

  v49 = *(v18 + v36[12]);
  v82 = *(v18 + v36[13]);
  v50 = *(v18 + v36[14]);
  v51 = *(v18 + v36[15]);
  if (v88)
  {
    v81 = v88;
  }

  else
  {
    v81 = *(v18 + v36[16]);
  }

  v83 = a17;
  if (a17)
  {
    v69 = a17;
    v52 = a18;
    if (a15)
    {
      goto LABEL_23;
    }

LABEL_26:
    v53 = *(v18 + v36[18]);

    if (v52)
    {
      goto LABEL_24;
    }

LABEL_27:
    v54 = *(v18 + v36[19]);

    goto LABEL_28;
  }

  v69 = *(v18 + v36[17]);

  v52 = a18;
  if (!a15)
  {
    goto LABEL_26;
  }

LABEL_23:
  v53 = a15;
  if (!v52)
  {
    goto LABEL_27;
  }

LABEL_24:
  v54 = v52;
LABEL_28:
  v55 = v72;
  *a9 = v73;
  *(a9 + 1) = v55;
  (*(v85 + 32))(&a9[v36[5]], v84, v86);
  v56 = &a9[v36[6]];
  v57 = v71;
  *v56 = v74;
  *(v56 + 1) = v57;
  v58 = &a9[v36[7]];
  v59 = v80;
  *v58 = v75;
  *(v58 + 1) = v59;
  v60 = &a9[v36[8]];
  v61 = v70;
  *v60 = v76;
  *(v60 + 1) = v61;
  v62 = &a9[v36[9]];
  v64 = v77;
  v63 = v78;
  *v62 = v79;
  *(v62 + 1) = v64;
  v65 = &a9[v36[10]];
  *v65 = v63;
  *(v65 + 1) = v68;
  sub_1D6C047F0(v87, &a9[v36[11]], sub_1D5B49800);
  *&a9[v36[12]] = v49;
  v66 = v81;
  *&a9[v36[13]] = v82;
  *&a9[v36[14]] = v50;
  *&a9[v36[15]] = v51;
  *&a9[v36[16]] = v66;
  *&a9[v36[17]] = v69;
  *&a9[v36[18]] = v53;
  *&a9[v36[19]] = v54;
}

uint64_t FormatContent.selectors.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t FormatContent.properties.getter()
{
  type metadata accessor for FormatContent(0);
}

id FormatContent.resolved(themes:subgroups:subgroupNeighbors:tag:issue:headline:webEmbed:recipe:subscription:subscriptionPaidAccess:options:selectors:sponsoredAdBanner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, void *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v33 = *a3;
  v32 = *a11;
  v18 = *(v14 + 1);
  v30 = *v14;
  v19 = type metadata accessor for FormatContent(0);
  v20 = v19[5];
  v21 = type metadata accessor for FormatContent.Resolved(0);
  v22 = v21[5];
  v23 = sub_1D725891C();
  (*(*(v23 - 8) + 16))(&a9[v22], &v14[v20], v23);
  sub_1D6BFC9C0(a7, &a9[v21[16]]);
  v24 = *&v14[v19[13]];
  v25 = *&v14[v19[14]];
  v26 = *&v14[v19[15]];
  sub_1D5CF2564(a14, &a9[v21[21]], sub_1D5B49800);
  *a9 = v30;
  *(a9 + 1) = v18;
  *&a9[v21[6]] = v25;
  *&a9[v21[7]] = v26;
  *&a9[v21[8]] = a1;
  *&a9[v21[9]] = a2;
  *&a9[v21[11]] = a12;
  *&a9[v21[13]] = a4;
  *&a9[v21[14]] = a5;
  *&a9[v21[15]] = a6;
  *&a9[v21[17]] = a8;
  *&a9[v21[18]] = a10;
  a9[v21[19]] = v32;
  *&a9[v21[20]] = v24;
  *&a9[v21[12]] = a13;
  *&a9[v21[10]] = v33;
  v27 = a10;

  swift_unknownObjectRetain();
  v28 = a5;
  swift_unknownObjectRetain();

  return a8;
}

unint64_t FormatContent.requirements.getter()
{
  v2 = type metadata accessor for FormatContentSlotItemObject(0);
  v108 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for FormatContentSlotItem(0);
  v114 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v6);
  v111 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for FormatContentSubgroup(0);
  v103 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v8);
  v102 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for FormatRecipeOverrides(0);
  MEMORY[0x1EEE9AC00](v112, v10);
  v113 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatArticleOverrides(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatContent(0);
  v17 = *(v16 + 24);
  v116 = v0;
  v18 = &v0[v17];
  v19 = *(v18 + 1);
  v20 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CD0];
  if (v19)
  {
    v22 = *v18;
    type metadata accessor for FormatTag();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v19;
    swift_beginAccess();
    v24 = v21;
    *(v23 + 32) = v21;
    swift_beginAccess();
    *(v23 + 40) = v20;

    v107 = sub_1D698C34C(0, 1, 1, v20);
    v1 = *(v107 + 2);
    v25 = *(v107 + 3);
    v26 = (v1 + 1);
    if (v1 >= v25 >> 1)
    {
      goto LABEL_123;
    }

    goto LABEL_3;
  }

  v24 = MEMORY[0x1E69E7CD0];
  v107 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v29 = &v116[*(v16 + 28)];
  v30 = *(v29 + 1);
  if (v30)
  {
    v31 = *v29;
    type metadata accessor for FormatIssue();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    swift_beginAccess();
    *(v32 + 64) = v24;
    swift_beginAccess();
    *(v32 + 72) = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1D698C34C(0, *(v107 + 2) + 1, 1, v107);
    }

    v1 = *(v107 + 2);
    v33 = *(v107 + 3);
    if (v1 >= v33 >> 1)
    {
      v107 = sub_1D698C34C((v33 > 1), v1 + 1, 1, v107);
    }

    v34 = v107;
    *(v107 + 2) = v1 + 1;
    v35 = &v34[48 * v1];
    *(v35 + 4) = v32;
    *(v35 + 40) = 0u;
    *(v35 + 56) = 0u;
    v35[72] = 2;
  }

  v36 = &v116[*(v16 + 32)];
  v37 = *(v36 + 1);
  if (v37)
  {
    v38 = *v36;
    v39 = qword_1EDF28AC8;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v12, qword_1EDF28AD0);
    sub_1D5CF2564(v40, v15, type metadata accessor for FormatArticleOverrides);
    type metadata accessor for FormatArticle(0);
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    *(v41 + 24) = v37;
    v42 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
    swift_beginAccess();
    sub_1D6C047F0(v15, v41 + v42, type metadata accessor for FormatArticleOverrides);
    v43 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
    swift_beginAccess();
    v44 = v24;
    *(v41 + v43) = v24;
    v45 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
    swift_beginAccess();
    *(v41 + v45) = v20;
    *(v41 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1D698C34C(0, *(v107 + 2) + 1, 1, v107);
    }

    v1 = *(v107 + 2);
    v46 = *(v107 + 3);
    if (v1 >= v46 >> 1)
    {
      v107 = sub_1D698C34C((v46 > 1), v1 + 1, 1, v107);
    }

    v47 = v107;
    *(v107 + 2) = v1 + 1;
    v48 = &v47[48 * v1];
    *(v48 + 4) = v41;
    *(v48 + 40) = 0u;
    *(v48 + 56) = 0u;
    v48[72] = 0;
  }

  else
  {
    v44 = v24;
  }

  v49 = &v116[*(v16 + 40)];
  v50 = *(v49 + 1);
  if (v50)
  {
    v51 = *v49;
    v52 = qword_1EDF0DF48;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v112, qword_1EDF0DF50);
    v24 = v113;
    sub_1D5CF2564(v53, v113, type metadata accessor for FormatRecipeOverrides);
    type metadata accessor for FormatRecipe(0);
    v54 = swift_allocObject();
    *(v54 + 16) = v51;
    *(v54 + 24) = v50;
    v55 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
    swift_beginAccess();
    sub_1D6C047F0(v24, v54 + v55, type metadata accessor for FormatRecipeOverrides);
    v56 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors;
    swift_beginAccess();
    *(v54 + v56) = v44;
    v57 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
    swift_beginAccess();
    *(v54 + v57) = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1D698C34C(0, *(v107 + 2) + 1, 1, v107);
    }

    v1 = *(v107 + 2);
    v58 = *(v107 + 3);
    if (v1 >= v58 >> 1)
    {
      v107 = sub_1D698C34C((v58 > 1), v1 + 1, 1, v107);
    }

    v59 = v107;
    *(v107 + 2) = v1 + 1;
    v60 = &v59[48 * v1];
    *(v60 + 4) = v54;
    *(v60 + 40) = 0u;
    *(v60 + 56) = 0u;
    v60[72] = 8;
  }

  v61 = *&v116[*(v16 + 68)];
  v118 = v20;
  v92 = *(v61 + 16);
  if (v92)
  {
    v23 = 0;
    v94 = *(v115 + 32);
    v62 = v61 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v26 = v111;
    v91 = v61;
    v90 = v62;
    while (1)
    {
      v25 = *(v61 + 16);
      if (v23 >= v25)
      {
        goto LABEL_121;
      }

      v63 = *(v103 + 72);
      v93 = v23;
      v64 = v62 + v63 * v23;
      v23 = v102;
      sub_1D5CF2564(v64, v102, type metadata accessor for FormatContentSubgroup);
      v65 = *(v23 + v94);
      v104 = *(v65 + 16);
      if (v104)
      {
        break;
      }

      v66 = MEMORY[0x1E69E7CC0];
LABEL_101:
      v23 = v93 + 1;
      v16 = v66;
      sub_1D5CF29A4(v102, type metadata accessor for FormatContentSubgroup);
      v24 = &v118;
      sub_1D6985628(v16);
      v61 = v91;
      v62 = v90;
      if (v23 == v92)
      {
        v20 = v118;
        goto LABEL_103;
      }
    }

    v20 = 0;
    v106 = v65;
    v105 = v65 + 32;
    v66 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v25 = *(v106 + 16);
    if (v20 >= v25)
    {
      goto LABEL_117;
    }

    v25 = v105 + 48 * v20;
    v23 = *(v25 + 32);
    v113 = *(v23 + 16);
    if (!v113)
    {
      v1 = MEMORY[0x1E69E7CC0];
      goto LABEL_88;
    }

    v99 = v20;
    v100 = v66;
    v67 = *(v25 + 8);
    v24 = *(v25 + 16);
    v16 = *(v25 + 24);
    v68 = *(v25 + 40);
    v20 = &v26[*(v101 + 20)];
    v112 = v23 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v98 = v67;

    v97 = v24;

    v96 = v16;

    swift_bridgeObjectRetain_n();
    v95 = v68;

    v69 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v109 = v23;
    v110 = v20;
    while (1)
    {
      v25 = *(v23 + 16);
      if (v69 >= v25)
      {
        goto LABEL_108;
      }

      v116 = v1;
      v71 = *(v114 + 72);
      v115 = v69;
      sub_1D5CF2564(v112 + v71 * v69, v26, type metadata accessor for FormatContentSlotItem);
      v12 = sub_1D6313180();
      v25 = *v20;
      if (*v20)
      {
        v25 = *(v20 + 8);
        v1 = *(v25 + 16);
        if (v1)
        {
          v20 = v25 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
          v16 = *(v108 + 72);
          v23 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            sub_1D5CF2564(v20, v5, type metadata accessor for FormatContentSlotItemObject);
            v26 = sub_1D6313180();
            sub_1D5CF29A4(v5, type metadata accessor for FormatContentSlotItemObject);
            v24 = *(v26 + 2);
            v72 = *(v23 + 16);
            v15 = v24 + v72;
            if (__OFADD__(v72, v24))
            {
              __break(1u);
LABEL_105:
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
              v107 = sub_1D698C34C((v25 > 1), v26, 1, v107);
LABEL_3:
              v27 = v107;
              *(v107 + 2) = v26;
              v28 = &v27[48 * v1];
              *(v28 + 4) = v23;
              *(v28 + 40) = 0u;
              *(v28 + 56) = 0u;
              v28[72] = 3;
              goto LABEL_5;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v15 <= *(v23 + 24) >> 1)
            {
              if (*(v26 + 2))
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v72 <= v15)
              {
                v74 = v24 + v72;
              }

              else
              {
                v74 = v72;
              }

              v23 = sub_1D698C34C(isUniquelyReferenced_nonNull_native, v74, 1, v23);
              if (*(v26 + 2))
              {
LABEL_55:
                v25 = *(v23 + 16);
                if (((*(v23 + 24) >> 1) - v25) < v24)
                {
                  goto LABEL_106;
                }

                swift_arrayInitWithCopy();

                if (v24)
                {
                  v75 = *(v23 + 16);
                  v76 = __OFADD__(v75, v24);
                  v25 = v24 + v75;
                  if (v76)
                  {
                    goto LABEL_107;
                  }

                  *(v23 + 16) = v25;
                }

                goto LABEL_45;
              }
            }

            if (v24)
            {
              goto LABEL_105;
            }

LABEL_45:
            v20 += v16;
            if (!--v1)
            {
              goto LABEL_60;
            }
          }
        }
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_60:
      v24 = *(v23 + 16);
      v16 = *(v12 + 16);
      v26 = v24 + v16;
      if (__OFADD__(v16, v24))
      {
        goto LABEL_109;
      }

      v77 = swift_isUniquelyReferenced_nonNull_native();
      if (!v77 || v26 > *(v12 + 24) >> 1)
      {
        if (v16 <= v26)
        {
          v78 = v24 + v16;
        }

        else
        {
          v78 = v16;
        }

        v12 = sub_1D698C34C(v77, v78, 1, v12);
      }

      v26 = v111;
      v1 = v116;
      v20 = v110;
      if (*(v23 + 16))
      {
        v25 = *(v12 + 16);
        if (((*(v12 + 24) >> 1) - v25) < v24)
        {
          goto LABEL_113;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v79 = *(v12 + 16);
          v76 = __OFADD__(v79, v24);
          v25 = v24 + v79;
          if (v76)
          {
            goto LABEL_115;
          }

          *(v12 + 16) = v25;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_110;
        }
      }

      sub_1D5CF29A4(v26, type metadata accessor for FormatContentSlotItem);
      v23 = *(v12 + 16);
      v24 = *(v1 + 16);
      v16 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        goto LABEL_111;
      }

      v80 = swift_isUniquelyReferenced_nonNull_native();
      if (v80 && v16 <= *(v1 + 24) >> 1)
      {
        if (*(v12 + 16))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v24 <= v16)
        {
          v81 = v24 + v23;
        }

        else
        {
          v81 = v24;
        }

        v1 = sub_1D698C34C(v80, v81, 1, v1);
        if (*(v12 + 16))
        {
LABEL_82:
          v25 = *(v1 + 16);
          if (((*(v1 + 24) >> 1) - v25) < v23)
          {
            goto LABEL_114;
          }

          swift_arrayInitWithCopy();

          v70 = v115;
          if (v23)
          {
            v82 = *(v1 + 16);
            v76 = __OFADD__(v82, v23);
            v25 = v82 + v23;
            if (v76)
            {
              goto LABEL_116;
            }

            *(v1 + 16) = v25;
          }

          goto LABEL_39;
        }
      }

      v25 = &v118;
      v70 = v115;
      if (v23)
      {
        goto LABEL_112;
      }

LABEL_39:
      v69 = v70 + 1;
      v23 = v109;
      if (v69 == v113)
      {

        swift_bridgeObjectRelease_n();
        v66 = v100;
        v25 = &v117;
        v20 = v99;
LABEL_88:
        v23 = *(v1 + 16);
        v24 = v66[2];
        v16 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          goto LABEL_118;
        }

        v83 = v1;
        v1 = v66;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v1;
        if ((v84 & 1) == 0 || v16 > *(v1 + 24) >> 1)
        {
          if (v24 <= v16)
          {
            v86 = v24 + v23;
          }

          else
          {
            v86 = v24;
          }

          v85 = sub_1D698C34C(v84, v86, 1, v1);
        }

        v16 = v83;
        if (*(v83 + 2))
        {
          v25 = *(v85 + 2);
          if (((*(v85 + 3) >> 1) - v25) < v23)
          {
            goto LABEL_120;
          }

          v24 = v85;
          swift_arrayInitWithCopy();

          v66 = v24;
          if (v23)
          {
            v87 = v24[2];
            v76 = __OFADD__(v87, v23);
            v25 = v87 + v23;
            if (v76)
            {
              goto LABEL_122;
            }

            v24[2] = v25;
          }
        }

        else
        {
          v24 = v85;

          v66 = v24;
          if (v23)
          {
            goto LABEL_119;
          }
        }

        if (++v20 == v104)
        {
          goto LABEL_101;
        }

        goto LABEL_35;
      }
    }
  }

LABEL_103:
  v118 = v20;
  sub_1D6985628(v107);
  return v118;
}

uint64_t FormatContent.iAdKeywords.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t FormatContent.superfeedKeywords.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t FormatContent.init(identifier:publishDate:tagID:issueID:articleID:webEmbedID:recipeID:sponsoredAdBanner:equivalentTopicIDs:affinityTagIDs:iAdKeywords:superfeedKeywords:themes:subgroups:properties:selectors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v39 = *a20;
  *a9 = a1;
  *(a9 + 1) = a2;
  v27 = type metadata accessor for FormatContent(0);
  v28 = v27[5];
  v29 = sub_1D725891C();
  (*(*(v29 - 8) + 32))(&a9[v28], a3, v29);
  v30 = &a9[v27[6]];
  *v30 = a4;
  *(v30 + 1) = a5;
  v31 = &a9[v27[7]];
  *v31 = a6;
  *(v31 + 1) = a7;
  v32 = &a9[v27[8]];
  *v32 = a8;
  *(v32 + 1) = a10;
  v33 = &a9[v27[9]];
  *v33 = a11;
  *(v33 + 1) = a12;
  v34 = &a9[v27[10]];
  *v34 = a13;
  *(v34 + 1) = a14;
  result = sub_1D6C047F0(a15, &a9[v27[11]], sub_1D5B49800);
  *&a9[v27[12]] = a16;
  *&a9[v27[13]] = a17;
  *&a9[v27[14]] = a18;
  *&a9[v27[15]] = a19;
  *&a9[v27[16]] = v39;
  *&a9[v27[17]] = a21;
  *&a9[v27[18]] = a22;
  *&a9[v27[19]] = a23;
  return result;
}

uint64_t FormatContent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatContent.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatContent(0) + 20);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatContent.tagID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 24));

  return v1;
}

uint64_t FormatContent.issueID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 28));

  return v1;
}

uint64_t FormatContent.articleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 32));

  return v1;
}

uint64_t FormatContent.webEmbedID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 36));

  return v1;
}

uint64_t FormatContent.recipeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 40));

  return v1;
}

uint64_t FormatContent.equivalentTopicIDs.getter()
{
  type metadata accessor for FormatContent(0);
}

void sub_1D6BFC8B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 48);

  *(a2 + v4) = v3;
}

void FormatContent.equivalentTopicIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 48);

  *(v1 + v3) = a1;
}

uint64_t FormatContent.affinityTagIDs.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t sub_1D6BFC9C0(uint64_t a1, uint64_t a2)
{
  sub_1D5B595F0(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6BFCA54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 52);

  *(a2 + v4) = v3;
}

void FormatContent.affinityTagIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 52);

  *(v1 + v3) = a1;
}

void sub_1D6BFCB2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 56);

  *(a2 + v4) = v3;
}

void FormatContent.iAdKeywords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 56);

  *(v1 + v3) = a1;
}

void sub_1D6BFCC04(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 60);

  *(a2 + v4) = v3;
}

void FormatContent.superfeedKeywords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 60);

  *(v1 + v3) = a1;
}

uint64_t FormatContent.themes.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for FormatContent(0) + 64));
}

uint64_t FormatContent.subgroups.getter()
{
  type metadata accessor for FormatContent(0);
}

void sub_1D6BFCD54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 72);

  *(a2 + v4) = v3;
}

void FormatContent.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 72);

  *(v1 + v3) = a1;
}

void sub_1D6BFCE2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 76);

  *(a2 + v4) = v3;
}

void FormatContent.selectors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 76);

  *(v1 + v3) = a1;
}

void FormatContent.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D6C04230(0, &qword_1EDF3C668, sub_1D6C03CEC, &type metadata for FormatContent.AltCodingKeys, MEMORY[0x1E69E6F48]);
  v106 = *(v4 - 8);
  v107 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v108 = &v102[-v6];
  sub_1D6C03D40(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v111 = &v102[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v110 = &v102[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v115 = &v102[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = sub_1D725891C();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v16);
  v113 = &v102[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = sub_1D725895C();
  v119 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v18);
  v118 = &v102[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6C04230(0, &qword_1EDF3C670, sub_1D6C03D74, &type metadata for FormatContent.CodingKeys, v3);
  v21 = v20;
  v117 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v102[-v23];
  v25 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v102[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C03D74();
  v29 = v120;
  sub_1D7264B0C();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v30 = v118;
  v31 = v119;
  v120 = a1;
  v104 = v25;
  v105 = v28;
  LOBYTE(v122) = 0;
  v32 = sub_1D726422C();
  v34 = v21;
  if (!v33)
  {
    sub_1D725894C();
    v35 = sub_1D725893C();
    v37 = v36;
    (*(v31 + 8))(v30, v112);
    v33 = v37;
    v32 = v35;
    v34 = v21;
  }

  v39 = v104;
  v38 = v105;
  v40 = v116;
  *v105 = v32;
  v38[1] = v33;
  v41 = v38;
  LOBYTE(v122) = 1;
  sub_1D6C048D8(&qword_1EDF45B08, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v42 = v115;
  sub_1D726427C();
  v112 = v34;
  v118 = v24;
  v43 = v114;
  v44 = *(v114 + 48);
  if (v44(v42, 1, v40) == 1)
  {
    v45 = v113;
    sub_1D725890C();
    v46 = v45;
    v47 = v41;
    if (v44(v42, 1, v40) != 1)
    {
      sub_1D5CF29A4(v42, sub_1D5B5B2A0);
    }
  }

  else
  {
    v46 = v113;
    (*(v43 + 32))(v113, v42, v40);
    v47 = v41;
  }

  (*(v43 + 32))(&v47[v39[5]], v46, v40);
  LOBYTE(v122) = 2;
  v115 = 0;
  v48 = sub_1D726422C();
  v49 = &v47[v39[6]];
  *v49 = v48;
  v49[1] = v50;
  LOBYTE(v122) = 3;
  v51 = sub_1D726422C();
  v52 = &v47[v39[7]];
  *v52 = v51;
  v52[1] = v53;
  LOBYTE(v122) = 4;
  v54 = sub_1D726422C();
  v55 = &v47[v39[8]];
  *v55 = v54;
  v55[1] = v56;
  LOBYTE(v122) = 5;
  v57 = sub_1D726422C();
  v58 = &v47[v39[9]];
  *v58 = v57;
  v58[1] = v59;
  LOBYTE(v122) = 6;
  v60 = sub_1D726422C();
  v61 = &v47[v39[10]];
  *v61 = v60;
  v61[1] = v62;
  sub_1D5C28BC0(0);
  v64 = v63;
  LOBYTE(v122) = 15;
  sub_1D6C048D8(&qword_1EDF43A40, sub_1D5C28BC0, MEMORY[0x1E69D6C18]);
  v65 = v111;
  sub_1D726427C();
  v66 = *(v64 - 8);
  if ((*(v66 + 48))(v65, 1, v64) == 1)
  {
    sub_1D5CF29A4(v65, sub_1D6C03D40);
    v67 = 1;
    v68 = v110;
  }

  else
  {
    v69 = v65;
    v68 = v110;
    sub_1D725BF7C();
    (*(v66 + 8))(v69, v64);
    v67 = 0;
  }

  v70 = sub_1D72608BC();
  (*(*(v70 - 8) + 56))(v68, v67, 1, v70);
  sub_1D6C047F0(v68, &v47[v39[11]], sub_1D5B49800);
  sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v121 = 7;
  sub_1D5B997F0(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v71 = v112;
  sub_1D726427C();
  v119 = 0;
  v72 = v122;
  v73 = MEMORY[0x1E69E7CC0];
  if (!v122)
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  *&v47[v39[12]] = v72;
  v121 = 8;
  v74 = v71;
  v75 = v119;
  sub_1D726427C();
  v119 = v75;
  if (!v75)
  {
    v82 = v122;
    if (!v122)
    {
      v82 = v73;
    }

    *(v105 + v104[13]) = v82;
    v121 = 9;
    v83 = v119;
    sub_1D726427C();
    v103 = v83 == 0;
    v119 = v83;
    if (v83)
    {
      goto LABEL_52;
    }

    v84 = v122;
    if (!v122)
    {
      v84 = v73;
    }

    *(v105 + v104[14]) = v84;
    v121 = 10;
    v85 = v119;
    sub_1D726427C();
    v119 = v85;
    if (v85)
    {
LABEL_52:
      (*(v117 + 8))(v118, v71);
      LODWORD(v115) = 0;
      LODWORD(v117) = 0;
      LODWORD(v118) = 0;
      v76 = 0;
LABEL_53:
      __swift_destroy_boxed_opaque_existential_1(v120);

      LODWORD(v113) = 0;
      v81 = 1;
      LODWORD(v112) = 1;
      LODWORD(v111) = 1;
      LODWORD(v110) = 1;
      LODWORD(v109) = 1;
      goto LABEL_34;
    }

    v86 = v122;
    if (!v122)
    {
      v86 = v73;
    }

    *(v105 + v104[15]) = v86;
    v121 = 12;
    sub_1D674F538();
    v87 = v119;
    sub_1D726431C();
    v119 = v87;
    if (v87)
    {
      (*(v117 + 8))(v118, v71);
      LODWORD(v117) = 0;
      LODWORD(v118) = 0;
      v76 = 0;
      LODWORD(v115) = 1;
      goto LABEL_53;
    }

    v88 = v122;
    *(v105 + v104[17]) = v122;
    sub_1D5B58388(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    v121 = 13;
    sub_1D6C03E64(&qword_1EDF3C910, sub_1D5B59CD8, MEMORY[0x1E69E6330]);
    v89 = v119;
    sub_1D726427C();
    v119 = v89;
    if (v89)
    {
      (*(v117 + 8))(v118, v74);
      LODWORD(v118) = 0;
      v76 = 0;
      LODWORD(v115) = 1;
      LODWORD(v117) = 1;
      goto LABEL_53;
    }

    v90 = v122;
    if (!v122)
    {
      v90 = v73;
    }

    *(v105 + v104[18]) = v90;
    sub_1D5B81B04();
    v121 = 14;
    sub_1D5CB5D1C(&qword_1EDF3C7D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    v91 = v119;
    sub_1D726427C();
    v119 = v91;
    if (v91)
    {
      (*(v117 + 8))(v118, v74);
      v76 = 0;
      LODWORD(v115) = 1;
      LODWORD(v117) = 1;
      LODWORD(v118) = 1;
      goto LABEL_53;
    }

    v92 = v122;
    if (!v122)
    {
      v92 = MEMORY[0x1E69E7CD0];
    }

    *(v105 + v104[19]) = v92;
    __swift_project_boxed_opaque_existential_1(v120, v120[3]);
    v93 = sub_1D7264AFC();
    v94 = Dictionary<>.bindingContent.getter(v93);

    if (v94)
    {
      *(v105 + v104[16]) = v73;
      if (*(v88 + 16))
      {
LABEL_68:
        (*(v117 + 8))(v118, v74);
        v95 = v105;
        sub_1D5CF2564(v105, v109, type metadata accessor for FormatContent);
        __swift_destroy_boxed_opaque_existential_1(v120);
        sub_1D5CF29A4(v95, type metadata accessor for FormatContent);
        return;
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v120, v120[3]);
      sub_1D6C03CEC();
      v96 = v119;
      sub_1D7264B0C();
      v97 = v96;
      if (!v96)
      {
        sub_1D5E4C1F0(0);
        sub_1D6C048D8(qword_1EDF3CDD0, sub_1D5E4C1F0, &protocol conformance descriptor for FormatFileVersionURIReferenceCollection<A>);
        sub_1D726427C();
        v119 = 0;
        v100 = v122;
        if (v122)
        {
          if (*(v122 + 16))
          {
            (*(v106 + 8))(v108, v107);
            *(v105 + v104[16]) = v100;
            if (*(v88 + 16))
            {
              goto LABEL_68;
            }

            goto LABEL_72;
          }
        }

        sub_1D5E4C26C();
        v97 = swift_allocError();
        *v101 = 1;
        swift_willThrow();
        (*(v106 + 8))(v108, v107);
      }

      sub_1D5B4A5A0(0);
      v121 = 11;
      sub_1D6C048D8(qword_1EDF3E280, sub_1D5B4A5A0, &protocol conformance descriptor for FormatFileReferenceCollection<A>);
      sub_1D726431C();
      v119 = 0;

      *(v105 + v104[16]) = v122;
      if (*(v88 + 16))
      {
        goto LABEL_68;
      }
    }

LABEL_72:
    sub_1D5E4C26C();
    v98 = swift_allocError();
    *v99 = 0;
    v119 = v98;
    swift_willThrow();
    (*(v117 + 8))(v118, v74);
    LODWORD(v109) = 1;
    LODWORD(v110) = 1;
    LODWORD(v111) = 1;
    LODWORD(v112) = 1;
    v76 = 1;
    goto LABEL_18;
  }

  (*(v117 + 8))(v118, v71);
  v76 = 0;
  LODWORD(v109) = 1;
  LODWORD(v110) = 1;
  LODWORD(v111) = 1;
  LODWORD(v112) = 1;
LABEL_18:
  v77 = v104;
  v78 = v105;
  v79 = v115;
  __swift_destroy_boxed_opaque_existential_1(v120);

  if (v79)
  {
    v80 = v76;
    LODWORD(v115) = v76;
    LODWORD(v113) = v76;
    LODWORD(v117) = v76;
    LODWORD(v118) = v76;
    LODWORD(v120) = v76;
    goto LABEL_20;
  }

  LODWORD(v118) = v76;
  LODWORD(v117) = v76;
  LODWORD(v113) = v76;
  LODWORD(v115) = v76;
  v103 = v76;
  v81 = v76;
LABEL_34:
  LODWORD(v120) = v76;
  v77 = v104;
  v78 = v105;
  (*(v114 + 8))(v105 + v104[5], v116);
  v76 = v81;
  v80 = v103;
LABEL_20:

  if (v109)
  {
  }

  if (v110)
  {

    if (v111)
    {
      goto LABEL_37;
    }

LABEL_24:
    if (!v112)
    {
      goto LABEL_38;
    }

LABEL_25:

    if (v76)
    {
      goto LABEL_39;
    }

LABEL_26:
    if (!v80)
    {
      goto LABEL_40;
    }

LABEL_27:

    if (v115)
    {
      goto LABEL_41;
    }

LABEL_28:
    if (!v113)
    {
      goto LABEL_42;
    }

LABEL_29:

    if (v117)
    {
      goto LABEL_43;
    }

LABEL_30:
    if (!v118)
    {
      goto LABEL_44;
    }

LABEL_31:

    if (v120)
    {
      goto LABEL_45;
    }

    return;
  }

  if (!v111)
  {
    goto LABEL_24;
  }

LABEL_37:
  sub_1D5CF29A4(v78 + v77[11], sub_1D5B49800);
  if (v112)
  {
    goto LABEL_25;
  }

LABEL_38:
  if (!v76)
  {
    goto LABEL_26;
  }

LABEL_39:

  if (v80)
  {
    goto LABEL_27;
  }

LABEL_40:
  if (!v115)
  {
    goto LABEL_28;
  }

LABEL_41:

  if (v113)
  {
    goto LABEL_29;
  }

LABEL_42:
  if (!v117)
  {
    goto LABEL_30;
  }

LABEL_43:

  if (v118)
  {
    goto LABEL_31;
  }

LABEL_44:
  if (v120)
  {
LABEL_45:
  }
}

uint64_t FormatContent.encode(to:)(void *a1)
{
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C03D40(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C04230(0, &qword_1EDF027F8, sub_1D6C03D74, &type metadata for FormatContent.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C03D74();
  sub_1D7264B5C();
  LOBYTE(v29) = 0;
  v15 = v27;
  sub_1D72643FC();
  if (v15)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v17 = v25;
  v18 = v26;
  v23 = a1;
  v24 = v11;
  v19 = type metadata accessor for FormatContent(0);
  v27 = v14;
  LOBYTE(v29) = 1;
  sub_1D725891C();
  sub_1D6C048D8(&qword_1EDF45B18, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D726443C();
  LOBYTE(v29) = 2;
  sub_1D726437C();
  LOBYTE(v29) = 3;
  sub_1D726437C();
  LOBYTE(v29) = 5;
  sub_1D726437C();
  LOBYTE(v29) = 6;
  sub_1D726437C();
  sub_1D5CF2564(v1 + v19[11], v18, sub_1D5B49800);
  Reference<A>.init(value:)(v18, v17);
  LOBYTE(v29) = 15;
  sub_1D5C28BC0(0);
  sub_1D6C048D8(&qword_1EDF17870, sub_1D5C28BC0, MEMORY[0x1E69D6C10]);
  sub_1D72643BC();
  sub_1D5CF29A4(v17, sub_1D6C03D40);
  LOBYTE(v29) = 4;
  sub_1D726437C();
  v29 = *(v1 + v19[12]);
  v28 = 7;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B997F0(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  v20 = v1;
  v29 = *(v1 + v19[13]);
  v28 = 8;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B997F0(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v20 = v1;
  }

  v29 = *(v20 + v19[14]);
  v28 = 9;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B997F0(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  v29 = *(v1 + v19[15]);
  v28 = 10;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B997F0(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  v29 = *(v1 + v19[17]);
  v28 = 12;
  sub_1D5B595F0(0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
  sub_1D674F428();
  sub_1D726443C();
  v29 = *(v1 + v19[18]);
  v28 = 13;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    sub_1D6C03E64(&qword_1EDF05030, sub_1D5B59D2C, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  v29 = *(v1 + v19[19]);
  v28 = 14;
  if (*(v29 + 16))
  {
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v21 = sub_1D7264B4C();
  v22 = Dictionary<>.bindingContent.getter(v21);

  if ((v22 & 1) == 0)
  {
    v29 = *(v1 + v19[16]);
    v28 = 11;
    sub_1D5B4A5A0(0);
    sub_1D6C048D8(&qword_1EDF0A490, sub_1D5B4A5A0, &protocol conformance descriptor for FormatFileReferenceCollection<A>);

    sub_1D726443C();
  }

  return (*(v24 + 8))(v27, v10);
}

unint64_t sub_1D6BFECC8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x446873696C627570;
      break;
    case 2:
      result = 0x4449676174;
      break;
    case 3:
      result = 0x44496575737369;
      break;
    case 4:
      result = 0x49656C6369747261;
      break;
    case 5:
      result = 0x6465626D45626577;
      break;
    case 6:
      result = 0x4449657069636572;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7974696E69666661;
      break;
    case 9:
      result = 0x6F7779654B644169;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x73656D656874;
      break;
    case 12:
      result = 0x70756F7267627573;
      break;
    case 13:
      result = 0x69747265706F7270;
      break;
    case 14:
      result = 0x726F7463656C6573;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6BFEE98(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6BFECC8(*a1);
  v5 = v4;
  if (v3 == sub_1D6BFECC8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6BFEF20()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6BFECC8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6BFEF84(uint64_t a1)
{
  sub_1D6BFECC8(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6BFEFD8(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6BFECC8(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6BFF038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6C040C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D6BFF068@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6BFECC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D6BFF0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6C040C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6BFF0D8(uint64_t a1)
{
  v2 = sub_1D6C03D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BFF114(uint64_t a1)
{
  v2 = sub_1D6C03D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6BFF150()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6BFF1BC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D6BFF20C(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void sub_1D6BFF294(BOOL *a3@<X8>)
{
  v4 = sub_1D72641CC();

  *a3 = v4 != 0;
}

uint64_t sub_1D6BFF2EC(uint64_t a1)
{
  v2 = sub_1D6C03CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BFF328(uint64_t a1)
{
  v2 = sub_1D6C03CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContent.copy(sidecars:sidecarConfig:log:name:backingTag:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X8>)
{
  v280 = a6;
  v254 = a7;
  v12 = sub_1D725891C();
  v252 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v251 = &v247 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v250 = &v247 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v247 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v249 = &v247 - v24;
  v25 = type metadata accessor for FormatContentSubgroup(0);
  v256 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v253 = &v247 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v255 = &v247 - v30;
  v31 = type metadata accessor for FormatContentSidecarPlacement(0);
  v283 = *(v31 - 8);
  v284 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v265 = (&v247 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v264 = &v247 - v36;
  v261 = type metadata accessor for FeedGroupConfigSidecar(0);
  v37 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261, v38);
  v279 = &v247 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v278 = &v247 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v281 = (&v247 - v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v247 - v48;
  v50 = *a2;
  sub_1D5B595F0(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v276 = v51;
  v52 = swift_allocObject();
  v267 = xmmword_1D7279970;
  *(v52 + 16) = xmmword_1D7279970;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1D5B7E2C0();
  v277 = a4;
  *(v52 + 32) = a4;
  *(v52 + 40) = a5;
  v54 = *(a1 + 16);
  v55 = MEMORY[0x1E69E6530];
  v56 = MEMORY[0x1E69E65A8];
  *(v52 + 96) = MEMORY[0x1E69E6530];
  *(v52 + 104) = v56;
  v275 = v53;
  *(v52 + 64) = v53;
  *(v52 + 72) = v54;
  v57 = *(v50 + 16);
  *(v52 + 136) = v55;
  *(v52 + 144) = v56;
  *(v52 + 112) = v57;

  v58 = sub_1D7262EDC();
  sub_1D725C30C("%{public}@ will resolve content with %ld sidecar configs and %ld placements", 75, 2, &dword_1D5B42000, a3, v58, v52);

  v260 = v50;
  v259 = *(v50 + 16);
  if (!v259 || !v54)
  {
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1D7273AE0;
    v76 = v275;
    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = v76;
    *(v75 + 32) = v277;
    *(v75 + 40) = a5;

    v77 = sub_1D7262EDC();
    sub_1D725C30C("%{public}@ no sidecar configs or placements for config", 54, 2, &dword_1D5B42000, a3, v77, v75, v247);
    goto LABEL_16;
  }

  v266 = a5;
  v247 = v21;
  v248 = v12;
  v262 = 0;
  v59 = *(v37 + 72);
  v268 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v60 = a1 + v268;
  v61 = MEMORY[0x1E69E7CC0];
  v272 = a3;
  v282 = v59;
  v62 = v278;
  do
  {
    sub_1D5CF2564(v60, v49, type metadata accessor for FeedGroupConfigSidecar);
    if (v280)
    {
      v63 = &v49[*(v261 + 20)];
      v64 = *&v63[*(type metadata accessor for FormatContent(0) + 52)];
      if (*(v64 + 16))
      {
        v65 = [swift_unknownObjectRetain() identifier];
        v66 = sub_1D726207C();
        v68 = v67;

        *&v285[0] = v66;
        *(&v285[0] + 1) = v68;
        MEMORY[0x1EEE9AC00](v69, v70);
        *(&v247 - 2) = v285;
        v71 = v262;
        v72 = sub_1D5BD0418(sub_1D5BD0538, (&v247 - 4), v64);
        v262 = v71;

        swift_unknownObjectRelease();
        if ((v72 & 1) == 0)
        {
          sub_1D5CF29A4(v49, type metadata accessor for FeedGroupConfigSidecar);
          a3 = v272;
          v59 = v282;
          v62 = v278;
          goto LABEL_5;
        }

        a3 = v272;
        v59 = v282;
        v62 = v278;
      }
    }

    sub_1D6C047F0(v49, v62, type metadata accessor for FeedGroupConfigSidecar);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v289 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6999F1C(0, *(v61 + 2) + 1, 1);
      v61 = v289;
    }

    v66 = *(v61 + 2);
    v74 = *(v61 + 3);
    if (v66 >= v74 >> 1)
    {
      sub_1D6999F1C((v74 > 1), v66 + 1, 1);
      v61 = v289;
    }

    *(v61 + 2) = v66 + 1;
    sub_1D6C047F0(v62, &v61[v268 + v66 * v59], type metadata accessor for FeedGroupConfigSidecar);
LABEL_5:
    v60 += v59;
    --v54;
  }

  while (v54);
  v280 = *(v61 + 2);
  if (v280)
  {
    v79 = 0;
    v80 = &v61[v268];
    v81 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v79 >= *(v61 + 2))
      {
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
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v83 = v281;
      sub_1D5CF2564(v80, v281, type metadata accessor for FeedGroupConfigSidecar);
      v84 = *v83;
      v85 = v83[1];
      if (v81[2] && (v86 = sub_1D5B69D90(*v83, v83[1]), (v87 & 1) != 0))
      {
        v66 = *(v81[7] + 8 * v86);
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
      }

      sub_1D5CF2564(v281, v279, type metadata accessor for FeedGroupConfigSidecar);
      v88 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1D6993070(0, *(v66 + 16) + 1, 1, v66);
      }

      v90 = *(v66 + 16);
      v89 = *(v66 + 24);
      if (v90 >= v89 >> 1)
      {
        v66 = sub_1D6993070((v89 > 1), v90 + 1, 1, v66);
      }

      *(v66 + 16) = v90 + 1;
      sub_1D6C047F0(v279, v66 + v268 + v90 * v282, type metadata accessor for FeedGroupConfigSidecar);
      v91 = v88;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *&v285[0] = v91;
      v93 = sub_1D5B69D90(v84, v85);
      v95 = v91[2];
      v96 = (v94 & 1) == 0;
      v97 = __OFADD__(v95, v96);
      v98 = v95 + v96;
      if (v97)
      {
        goto LABEL_125;
      }

      v99 = v94;
      if (v91[3] < v98)
      {
        break;
      }

      if (v92)
      {
        goto LABEL_35;
      }

      v105 = v93;
      sub_1D6D85E68();
      v93 = v105;
      a3 = v272;
      v101 = *&v285[0];
      if (v99)
      {
LABEL_19:
        *(v101[7] + 8 * v93) = v66;

        v81 = v101;
        goto LABEL_20;
      }

LABEL_36:
      v101[(v93 >> 6) + 8] |= 1 << v93;
      v102 = (v101[6] + 16 * v93);
      *v102 = v84;
      v102[1] = v85;
      *(v101[7] + 8 * v93) = v66;
      v103 = v101[2];
      v97 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v97)
      {
        goto LABEL_127;
      }

      v81 = v101;
      v101[2] = v104;

LABEL_20:
      ++v79;
      sub_1D5CF29A4(v281, type metadata accessor for FeedGroupConfigSidecar);
      v80 += v282;
      v82 = v266;
      if (v280 == v79)
      {
        goto LABEL_41;
      }
    }

    sub_1D6D747A8(v98, v92);
    v93 = sub_1D5B69D90(v84, v85);
    if ((v99 & 1) != (v100 & 1))
    {
      goto LABEL_130;
    }

LABEL_35:
    v101 = *&v285[0];
    if (v99)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

  v81 = MEMORY[0x1E69E7CC8];
  v82 = v266;
LABEL_41:

  v106 = 0;
  v107 = MEMORY[0x1E69E7CC0];
  *&v285[0] = MEMORY[0x1E69E7CC0];
  v258 = v260 + 32;
  v273 = xmmword_1D7270C10;
  v274 = v81;
  while (2)
  {
    if (v106 >= *(v260 + 16))
    {
      goto LABEL_126;
    }

    v263 = v106;
    v109 = v258 + 32 * v106;
    v110 = *(v109 + 8);
    v281 = *v109;
    v111 = *(v109 + 16);
    LODWORD(v280) = *(v109 + 24);
    v112 = *(v111 + 16);

    v279 = v112;
    v113 = v107;
    if (!v112)
    {
LABEL_42:
      v108 = v263 + 1;

      v106 = v108;

      sub_1D6988A68(v113);
      v165 = v108 == v259;
      v107 = MEMORY[0x1E69E7CC0];
      if (!v165)
      {
        continue;
      }

      v145 = *&v285[0];
      v281 = *(*&v285[0] + 16);
      if (v281)
      {
        v146 = swift_allocObject();
        *(v146 + 16) = v273;
        v147 = v275;
        *(v146 + 56) = MEMORY[0x1E69E6158];
        *(v146 + 64) = v147;
        *(v146 + 32) = v277;
        *(v146 + 40) = v82;
        v148 = *(v145 + 16);
        *(v146 + 96) = MEMORY[0x1E69E6530];
        *(v146 + 104) = MEMORY[0x1E69E65A8];
        *(v146 + 72) = v148;

        v149 = sub_1D7262EDC();
        sub_1D725C30C("%{public}@ will attempt to place %ld sidecars", 45, 2, &dword_1D5B42000, a3, v149, v146);

        v150 = type metadata accessor for FormatContent(0);
        v289 = *(v257 + v150[17]);
        v288 = MEMORY[0x1E69E7CD0];
        v280 = v145 + ((*(v283 + 80) + 32) & ~*(v283 + 80));

        v151 = 0;
        v269 = v150;
        v279 = v145;
        while (1)
        {
          if (v151 >= *(v145 + 16))
          {
            goto LABEL_128;
          }

          v156 = *(v283 + 72);
          v282 = v151;
          sub_1D5CF2564(v280 + v156 * v151, v265, type metadata accessor for FormatContentSidecarPlacement);
          v157 = *(v289 + 2);
          if (v157)
          {
            v158 = 0;
            v159 = (*(v256 + 80) + 32) & ~*(v256 + 80);
            v160 = *(v256 + 72);
            v271 = v289;
            v161 = &v289[v159 + 8];
            while (1)
            {
              v162 = v265 + *(v284 + 20);
              v163 = *v162;
              v164 = *(v162 + 1);
              v165 = *(v161 - 1) == *v162 && *v161 == v164;
              if (v165)
              {
                break;
              }

              if (sub_1D72646CC())
              {
                goto LABEL_87;
              }

              ++v158;
              v161 += v160;
              if (v157 == v158)
              {
                goto LABEL_75;
              }
            }

            v163 = *(v161 - 1);
LABEL_87:
            v166 = *(v265 + *(v261 + 20) + v150[17]);
            v167 = MEMORY[0x1E69E7CC0];
            *&v285[0] = MEMORY[0x1E69E7CC0];
            v168 = *(v166 + 16);
            v270 = v166;
            if (v168)
            {
              v169 = v166 + v159;
              v170 = v255;
              do
              {
                sub_1D5CF2564(v169, v170, type metadata accessor for FormatContentSubgroup);
                sub_1D6B1F23C();
                v172 = v171;
                sub_1D5CF29A4(v170, type metadata accessor for FormatContentSubgroup);
                sub_1D6985628(v172);
                v169 += v160;
                --v168;
              }

              while (v168);
              v173 = *&v285[0];
              v167 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v173 = MEMORY[0x1E69E7CC0];
            }

            v174 = 0;
            v175 = *(v173 + 16);
LABEL_93:
            v176 = 48 * v174;
            while (v175 != v174)
            {
              if (v174 >= *(v173 + 16))
              {
                goto LABEL_123;
              }

              ++v174;
              v177 = v176 + 48;
              v178 = v173 + v176;
              v179 = *(v178 + 72);
              v180 = *(v178 + 64);
              v285[0] = *(v178 + 32);
              v285[1] = *(v178 + 48);
              v286 = v180;
              v287 = v179;
              v181 = FormatContentRequirement.sidecarDedupeIdentifier.getter();
              v176 = v177;
              if (v182)
              {
                v274 = v182;
                v278 = v181;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v167 = sub_1D5B858EC(0, *(v167 + 2) + 1, 1, v167);
                }

                v184 = *(v167 + 2);
                v183 = *(v167 + 3);
                v185 = v278;
                v186 = v274;
                if (v184 >= v183 >> 1)
                {
                  v188 = sub_1D5B858EC((v183 > 1), v184 + 1, 1, v167);
                  v186 = v274;
                  v167 = v188;
                  v185 = v278;
                }

                *(v167 + 2) = v184 + 1;
                v187 = &v167[16 * v184];
                *(v187 + 4) = v185;
                *(v187 + 5) = v186;
                goto LABEL_93;
              }
            }

            v189 = sub_1D5B86020(v167);

            sub_1D670EDB8(v189, v288);
            if (v190)
            {
              sub_1D5B886D0(v189);
              v191 = v162[24];
              v192 = swift_allocObject();
              *(v192 + 16) = v267;
              v193 = MEMORY[0x1E69E6158];
              v194 = v275;
              *(v192 + 56) = MEMORY[0x1E69E6158];
              *(v192 + 64) = v194;
              *(v192 + 32) = v277;
              *(v192 + 40) = v266;
              v195 = *v265;
              v196 = v265[1];
              *(v192 + 96) = v193;
              *(v192 + 104) = v194;
              *(v192 + 72) = v195;
              *(v192 + 80) = v196;
              *(v192 + 136) = v193;
              *(v192 + 144) = v194;
              *(v192 + 112) = v163;
              *(v192 + 120) = v164;

              v150 = v269;
              if (v191)
              {
                v165 = v191 == 1;
                v197 = v272;
                if (v165)
                {

                  v198 = sub_1D7262EDC();
                  sub_1D725C30C("%{public}@ inserting sidecar %{public}@ after %{public}@", 56, 2, &dword_1D5B42000, v197, v198, v192);

                  if (__OFADD__(v158, 1))
                  {
                    goto LABEL_129;
                  }

                  v199 = v271[2];
                  v200 = v270;

                  if ((v158 + 1) >= v199)
                  {
                    sub_1D6986D9C(v200);
                  }

                  else
                  {
                    sub_1D6C04138(v158 + 1, v158 + 1, v200);
                  }

                  goto LABEL_75;
                }

                v202 = sub_1D7262EDC();
                sub_1D725C30C("%{public}@ inserting sidecar %{public}@ replacing %{public}@", 60, 2, &dword_1D5B42000, v197, v202, v192);

                v203 = v253;
                sub_1D5EC2660(v158, v253);
                sub_1D5CF29A4(v203, type metadata accessor for FormatContentSubgroup);
                v204 = v270;
              }

              else
              {

                v201 = sub_1D7262EDC();
                sub_1D725C30C("%{public}@ inserting sidecar %{public}@ before %{public}@", 57, 2, &dword_1D5B42000, v272, v201, v192);

                v204 = v270;
              }

              sub_1D6C04138(v158, v158, v204);
            }

            else
            {

              v152 = swift_allocObject();
              *(v152 + 16) = v273;
              v153 = MEMORY[0x1E69E6158];
              v154 = v275;
              *(v152 + 56) = MEMORY[0x1E69E6158];
              *(v152 + 64) = v154;
              *(v152 + 32) = v277;
              *(v152 + 40) = v266;
              *(v152 + 96) = v153;
              *(v152 + 104) = v154;
              *(v152 + 72) = v163;
              *(v152 + 80) = v164;

              v155 = sub_1D7262EDC();
              sub_1D725C30C("%{public}@ ignoring subgroup placement for %{public}@ because the requirements overlap with an existing subgroup", 112, 2, &dword_1D5B42000, v272, v155, v152);

              v150 = v269;
            }
          }

LABEL_75:
          v151 = (v282 + 1);
          sub_1D5CF29A4(v265, type metadata accessor for FormatContentSidecarPlacement);
          v66 = v257;
          v145 = v279;
          if (v151 == v281)
          {

            v113 = sub_1D72608BC();
            v110 = *(v113 - 1);
            v112 = *(v110 + 56);
            v205 = v249;
            (v112)(v249, 1, 1, v113);
            v206 = *(v66 + 8);
            v277 = *v66;
            v278 = v289;
            v284 = v206;
            (*(v252 + 16))(v251, v66 + v150[5], v248);
            v207 = (v66 + v150[6]);
            v208 = *v207;
            v209 = v207[1];
            v210 = (v66 + v150[7]);
            v212 = *v210;
            v211 = v210[1];
            v275 = v208;
            v276 = v212;
            v282 = v209;
            v283 = v211;
            v213 = v150[9];
            v214 = (v66 + v150[8]);
            v216 = *v214;
            v215 = v214[1];
            v272 = v216;
            v279 = v215;
            v217 = *(v66 + v213 + 8);
            v274 = *(v66 + v213);
            v281 = v217;
            v218 = (v66 + v150[10]);
            v220 = *v218;
            v219 = v218[1];
            *&v273 = v220;
            v280 = v219;
            v82 = v250;
            sub_1D6C047F0(v205, v250, sub_1D5B49800);
            v221 = *(v110 + 48);
            if (v221(v82, 1, v113) != 1)
            {
              goto LABEL_119;
            }

            v222 = v247;
            sub_1D5CF2564(v66 + v150[11], v247, sub_1D5B49800);
            v223 = v221(v82, 1, v113);

            if (v223 != 1)
            {
              sub_1D5CF29A4(v82, sub_1D5B49800);
            }

            goto LABEL_120;
          }
        }
      }

      v224 = swift_allocObject();
      *(v224 + 16) = xmmword_1D7273AE0;
      v225 = v275;
      *(v224 + 56) = MEMORY[0x1E69E6158];
      *(v224 + 64) = v225;
      *(v224 + 32) = v277;
      *(v224 + 40) = v82;

      v226 = sub_1D7262EDC();
      sub_1D725C30C("%{public}@ config has sidecars but not placements found for sidecar configuration", 81, 2, &dword_1D5B42000, a3, v226, v224, v247);
LABEL_16:

      return sub_1D5CF2564(v257, v254, type metadata accessor for FormatContent);
    }

    break;
  }

  v114 = 0;
  v278 = (v111 + 32);
  while (v114 < *(v111 + 16))
  {
    v115 = &v278[16 * v114];
    v117 = *v115;
    v116 = v115[1];
    v118 = v81[2];

    if (!v118 || (v119 = sub_1D5B69D90(v117, v116), (v120 & 1) == 0))
    {
      v134 = swift_allocObject();
      *(v134 + 16) = v273;
      v135 = MEMORY[0x1E69E6158];
      v136 = v275;
      *(v134 + 56) = MEMORY[0x1E69E6158];
      *(v134 + 64) = v136;
      *(v134 + 32) = v277;
      *(v134 + 40) = v82;
      *(v134 + 96) = v135;
      *(v134 + 104) = v136;
      *(v134 + 72) = v117;
      *(v134 + 80) = v116;

      v137 = sub_1D7262EDC();
      v144 = a3;
      sub_1D725C30C("%{public}@ no sidecars found for subtype %{public}@", 51, 2, &dword_1D5B42000, a3, v137, v134);
LABEL_58:

      v112 = MEMORY[0x1E69E7CC0];
      goto LABEL_59;
    }

    v121 = *(v81[7] + 8 * v119);
    v122 = swift_allocObject();
    *(v122 + 16) = v267;
    v123 = MEMORY[0x1E69E6158];
    v124 = v275;
    *(v122 + 56) = MEMORY[0x1E69E6158];
    *(v122 + 64) = v124;
    *(v122 + 32) = v277;
    *(v122 + 40) = v82;
    v125 = *(v121 + 16);
    *(v122 + 96) = MEMORY[0x1E69E6530];
    *(v122 + 104) = MEMORY[0x1E69E65A8];
    *(v122 + 112) = v117;
    *(v122 + 72) = v125;
    *(v122 + 136) = v123;
    *(v122 + 144) = v124;
    v126 = v121;
    v127 = v272;
    *(v122 + 120) = v116;

    v128 = sub_1D7262EDC();
    sub_1D725C30C("%{public}@ found %ld sidecar placements for subtype %{public}@", 62, 2, &dword_1D5B42000, v127, v128, v122);

    if (!v125)
    {
      v144 = v127;
      goto LABEL_58;
    }

    v270 = v116;
    v271 = v113;
    v289 = MEMORY[0x1E69E7CC0];
    sub_1D6999F6C(0, v125, 0);
    v112 = v289;
    v269 = v126;
    v129 = v126 + v268;
    v130 = v264;
    do
    {
      sub_1D5CF2564(v129, v130, type metadata accessor for FeedGroupConfigSidecar);
      v131 = v130 + *(v284 + 20);
      *v131 = v281;
      *(v131 + 8) = v110;
      *(v131 + 16) = v111;
      *(v131 + 24) = v280;
      v289 = v112;
      v133 = *(v112 + 16);
      v132 = *(v112 + 24);

      if (v133 >= v132 >> 1)
      {
        sub_1D6999F6C((v132 > 1), v133 + 1, 1);
        v112 = v289;
      }

      *(v112 + 16) = v133 + 1;
      sub_1D6C047F0(v130, v112 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v133, type metadata accessor for FormatContentSidecarPlacement);
      v129 += v282;
      --v125;
    }

    while (v125);

    v144 = v272;
    v82 = v266;
    v113 = v271;
LABEL_59:
    v66 = *(v112 + 16);
    v138 = v113[2];
    v139 = v138 + v66;
    if (__OFADD__(v138, v66))
    {
      goto LABEL_117;
    }

    v140 = swift_isUniquelyReferenced_nonNull_native();
    if (!v140 || v139 > v113[3] >> 1)
    {
      if (v138 <= v139)
      {
        v141 = v138 + v66;
      }

      else
      {
        v141 = v138;
      }

      v113 = sub_1D6996050(v140, v141, 1, v113);
    }

    v81 = v274;
    a3 = v144;
    if (*(v112 + 16))
    {
      if ((v113[3] >> 1) - v113[2] < v66)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      swift_arrayInitWithCopy();

      if (v66)
      {
        v142 = v113[2];
        v97 = __OFADD__(v142, v66);
        v143 = v142 + v66;
        if (v97)
        {
          goto LABEL_122;
        }

        v113[2] = v143;
      }
    }

    else
    {

      if (v66)
      {
        goto LABEL_118;
      }
    }

    if (++v114 == v279)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  v222 = v247;
  (*(v110 + 32))(v247, v82, v113);
  (v112)(v222, 0, 1, v113);

LABEL_120:
  v227 = v269;
  v228 = *(v66 + v269[12]);
  v229 = *(v66 + v269[13]);
  v230 = *(v66 + v269[14]);
  v231 = *(v66 + v269[15]);
  v232 = *(v66 + v269[16]);
  v233 = *(v66 + v269[18]);
  v234 = *(v66 + v269[19]);
  v235 = v254;
  v236 = v284;
  *v254 = v277;
  *(v235 + 1) = v236;
  (*(v252 + 32))(&v235[v227[5]], v251, v248);
  v237 = &v235[v227[6]];
  v238 = v282;
  *v237 = v275;
  *(v237 + 1) = v238;
  v239 = &v235[v227[7]];
  v240 = v283;
  *v239 = v276;
  *(v239 + 1) = v240;
  v241 = &v235[v227[8]];
  v242 = v279;
  *v241 = v272;
  v241[1] = v242;
  v243 = &v235[v227[9]];
  v244 = v281;
  *v243 = v274;
  *(v243 + 1) = v244;
  v245 = &v235[v227[10]];
  v246 = v280;
  *v245 = v273;
  *(v245 + 1) = v246;
  sub_1D6C047F0(v222, &v235[v227[11]], sub_1D5B49800);
  *&v235[v227[12]] = v228;
  *&v235[v227[13]] = v229;
  *&v235[v227[14]] = v230;
  *&v235[v227[15]] = v231;
  *&v235[v227[16]] = v232;
  *&v235[v227[17]] = v278;
  *&v235[v227[18]] = v233;
  *&v235[v227[19]] = v234;
}

void FormatContent.expand(placeholder:placeholders:)(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v146 = a3;
  v138 = a4;
  v7 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v170 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatContentSlotItem(0);
  v155 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1D725891C();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v14);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v134 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v136 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v133 = &v133 - v24;
  v25 = type metadata accessor for FormatContentSubgroup(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v161 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for FormatContent(0);
  v29 = *(v135 + 68);
  v137 = v4;
  v30 = *(v4 + v29);
  v139 = MEMORY[0x1E69E7CC0];
  v172 = MEMORY[0x1E69E7CC0];
  v152 = *(v30 + 16);
  if (v152)
  {
    v31 = 0;
    v147 = 0;
    v151 = *(v25 + 32);
    v145 = *(v26 + 80);
    v144 = (v145 + 32) & ~v145;
    v150 = v30 + v144;
    v143 = xmmword_1D7273AE0;
    v156 = a1;
    v157 = a2;
    v32 = v161;
    v149 = v26;
    v148 = v30;
    while (v31 < *(v30 + 16))
    {
      v37 = *(v26 + 72);
      v154 = v31;
      v153 = v37;
      sub_1D5CF2564(v150 + v37 * v31, v32, type metadata accessor for FormatContentSubgroup);
      v38 = *(v32 + v151);
      v160 = *(v38 + 16);
      if (v160)
      {
        v39 = 0;
        v159 = v38 + 32;
        v40 = MEMORY[0x1E69E7CC0];
        v158 = v38;
        while (v39 < *(v38 + 16))
        {
          v168 = v39;
          v42 = (v159 + 48 * v39);
          v43 = v42[4];
          v44 = *(v43 + 16);
          if (v44)
          {
            v167 = v40;
            v45 = v42[2];
            v46 = v42[3];
            v47 = v42[5];
            v48 = v155;
            v49 = v43 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
            v165 = v42[1];

            v164 = v45;

            v163 = v46;

            v166 = v43;
            swift_bridgeObjectRetain_n();
            v162 = v47;

            v50 = *(v48 + 72);
            v51 = MEMORY[0x1E69E7CC0];
            v52 = v170;
            v169 = v50;
            do
            {
              sub_1D5CF2564(v49, v13, type metadata accessor for FormatContentSlotItem);
              sub_1D5CF2564(v13, v52, type metadata accessor for FormatContentSlotItemObject);
              sub_1D5CF29A4(v13, type metadata accessor for FormatContentSlotItem);
              if (swift_getEnumCaseMultiPayload() == 11)
              {
                v53 = v13;
                v54 = v7;
                v55 = *v52;
                v56 = *(v52 + 8);
                v57 = *(v52 + 16);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v51 = sub_1D5D55EC4(0, *(v51 + 2) + 1, 1, v51);
                }

                v59 = *(v51 + 2);
                v58 = *(v51 + 3);
                if (v59 >= v58 >> 1)
                {
                  v51 = sub_1D5D55EC4((v58 > 1), v59 + 1, 1, v51);
                }

                *(v51 + 2) = v59 + 1;
                v60 = &v51[24 * v59];
                *(v60 + 4) = v55;
                *(v60 + 5) = v56;
                v60[48] = v57;
                v7 = v54;
                v50 = v169;
                v52 = v170;
                v13 = v53;
              }

              else
              {
                sub_1D5CF29A4(v52, type metadata accessor for FormatContentSlotItemObject);
              }

              v49 += v50;
              --v44;
            }

            while (v44);

            swift_bridgeObjectRelease_n();
            a1 = v156;
            a2 = v157;
            v40 = v167;
          }

          else
          {
            v51 = MEMORY[0x1E69E7CC0];
          }

          v61 = *(v51 + 2);
          v62 = *(v40 + 2);
          v63 = v62 + v61;
          if (__OFADD__(v62, v61))
          {
            goto LABEL_52;
          }

          v64 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v64;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v63 > *(v64 + 3) >> 1)
          {
            if (v62 <= v63)
            {
              v67 = v62 + v61;
            }

            else
            {
              v67 = v62;
            }

            v66 = sub_1D5D55EC4(isUniquelyReferenced_nonNull_native, v67, 1, v64);
          }

          v32 = v161;
          if (*(v51 + 2))
          {
            if ((*(v66 + 3) >> 1) - *(v66 + 2) < v61)
            {
              goto LABEL_54;
            }

            v68 = v66;
            swift_arrayInitWithCopy();

            v40 = v68;
            if (v61)
            {
              v69 = *(v68 + 2);
              v70 = __OFADD__(v69, v61);
              v71 = v69 + v61;
              if (v70)
              {
                goto LABEL_55;
              }

              *(v68 + 2) = v71;
            }
          }

          else
          {
            v41 = v66;

            v40 = v41;
            if (v61)
            {
              goto LABEL_53;
            }
          }

          v39 = v168 + 1;
          v38 = v158;
          if (v168 + 1 == v160)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

      v40 = MEMORY[0x1E69E7CC0];
LABEL_36:
      v72 = *(v40 + 2);
      if (v72)
      {
        v171 = MEMORY[0x1E69E7CC0];
        v73 = v40;
        sub_1D5BFC364(0, v72, 0);
        v74 = v171;
        v167 = v73;
        v75 = (v73 + 40);
        do
        {
          v77 = *(v75 - 1);
          v76 = *v75;
          v171 = v74;
          v79 = *(v74 + 16);
          v78 = *(v74 + 24);

          if (v79 >= v78 >> 1)
          {
            sub_1D5BFC364((v78 > 1), v79 + 1, 1);
            v74 = v171;
          }

          *(v74 + 16) = v79 + 1;
          v80 = v74 + 16 * v79;
          *(v80 + 32) = v77;
          *(v80 + 40) = v76;
          v75 += 3;
          --v72;
        }

        while (v72);

        a1 = v156;
        a2 = v157;
        v32 = v161;
      }

      else
      {

        v74 = MEMORY[0x1E69E7CC0];
      }

      v81 = sub_1D5B86020(v74);

      v82 = sub_1D5BE240C(a1, a2, v81);

      if (v82)
      {
        MEMORY[0x1EEE9AC00](v83, v84);
        *(&v133 - 4) = v161;
        *(&v133 - 3) = a1;
        *(&v133 - 2) = a2;
        v85 = v147;
        sub_1D5ECD348(sub_1D6C0420C, (&v133 - 6), v146);
        v34 = v86;
        v147 = v85;
        v32 = v161;
      }

      else
      {
        sub_1D5B595F0(0, &unk_1EDF3C5F0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E6F90]);
        v33 = v144;
        v34 = swift_allocObject();
        *(v34 + 16) = v143;
        sub_1D5CF2564(v32, v34 + v33, type metadata accessor for FormatContentSubgroup);
      }

      v35 = v154 + 1;
      sub_1D5CF29A4(v32, type metadata accessor for FormatContentSubgroup);
      sub_1D6986D9C(v34);
      v31 = v35;
      v36 = v35 == v152;
      v26 = v149;
      v30 = v148;
      if (v36)
      {
        v139 = v172;
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_46:
    v87 = sub_1D72608BC();
    v88 = *(v87 - 8);
    v89 = *(v88 + 56);
    v90 = v133;
    v89(v133, 1, 1, v87);
    v91 = v137;
    v92 = v137[1];
    v164 = *v137;
    v170 = v92;
    v93 = v135;
    (*(v141 + 16))(v140, v137 + *(v135 + 20), v142);
    v94 = (v91 + v93[6]);
    v95 = *v94;
    v96 = v94[1];
    v97 = (v91 + v93[7]);
    v99 = *v97;
    v98 = v97[1];
    v162 = v95;
    v163 = v99;
    v168 = v96;
    v169 = v98;
    v100 = (v91 + v93[8]);
    v101 = *v100;
    v102 = v100[1];
    v103 = (v91 + v93[9]);
    v105 = *v103;
    v104 = v103[1];
    v161 = v105;
    v167 = v104;
    v106 = (v91 + v93[10]);
    v108 = *v106;
    v107 = v106[1];
    v159 = v101;
    v160 = v108;
    v165 = v102;
    v166 = v107;
    v109 = v134;
    sub_1D6C047F0(v90, v134, sub_1D5B49800);
    v110 = *(v88 + 48);
    if (v110(v109, 1, v87) == 1)
    {
      v111 = v136;
      sub_1D5CF2564(v91 + v93[11], v136, sub_1D5B49800);
      v112 = v110(v109, 1, v87);

      if (v112 != 1)
      {
        sub_1D5CF29A4(v109, sub_1D5B49800);
      }
    }

    else
    {
      v111 = v136;
      (*(v88 + 32))(v136, v109, v87);
      v89(v111, 0, 1, v87);
    }

    v113 = *(v91 + v93[12]);
    v114 = *(v91 + v93[13]);
    v115 = v93;
    v116 = *(v91 + v93[14]);
    v117 = *(v91 + v93[15]);
    v118 = *(v91 + v115[16]);
    v119 = *(v91 + v115[18]);
    v120 = *(v91 + v115[19]);
    v121 = v138;
    v122 = v170;
    *v138 = v164;
    *(v121 + 1) = v122;
    (*(v141 + 32))(&v121[v115[5]], v140, v142);
    v123 = &v121[v115[6]];
    v124 = v168;
    *v123 = v162;
    *(v123 + 1) = v124;
    v125 = &v121[v115[7]];
    v126 = v169;
    *v125 = v163;
    *(v125 + 1) = v126;
    v127 = &v121[v115[8]];
    v128 = v165;
    *v127 = v159;
    *(v127 + 1) = v128;
    v129 = &v121[v115[9]];
    v130 = v167;
    *v129 = v161;
    v129[1] = v130;
    v131 = &v121[v115[10]];
    v132 = v166;
    *v131 = v160;
    *(v131 + 1) = v132;
    sub_1D6C047F0(v111, &v121[v115[11]], sub_1D5B49800);
    *&v121[v115[12]] = v113;
    *&v121[v115[13]] = v114;
    *&v121[v115[14]] = v116;
    *&v121[v115[15]] = v117;
    *&v121[v115[16]] = v118;
    *&v121[v115[17]] = v139;
    *&v121[v115[18]] = v119;
    *&v121[v115[19]] = v120;
  }
}

void sub_1D6C01AE8(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v112 = a3;
  v113 = a4;
  v94 = a5;
  v109 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v109, v7);
  v108 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v116 = &v85 - v11;
  v107 = type metadata accessor for FormatContentSlotItem(0);
  v95 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v115 = (&v85 - v17);
  sub_1D6C04230(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v92 = &v85 - v20;
  sub_1D6C03DC8(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v85 - v23;
  v26 = *a1;
  v25 = a1[1];
  v27 = a2[1];
  v117 = *a2;
  v118 = v27;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v110 = v25;
  v111 = v26;
  MEMORY[0x1DA6F9910](v26, v25);
  v89 = v117;
  v88 = v118;
  v28 = type metadata accessor for FormatContentSubgroup(0);
  v29 = a2 + v28[5];
  v91 = v24;
  sub_1D6C04298(v29, v24);
  v30 = *(a2 + v28[6]);
  v31 = *(a2 + v28[7]);
  v90 = v28;
  v32 = v28[8];
  v93 = a2;
  v33 = *(a2 + v32);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v117 = MEMORY[0x1E69E7CC0];
    v86 = v30;

    v87 = v31;

    sub_1D69975FC(0, v34, 0);
    v36 = 0;
    v37 = v117;
    v96 = v33 + 32;
    v114 = v14;
    v98 = v33;
    v97 = v34;
    while (v36 < *(v33 + 16))
    {
      v103 = v36;
      v104 = v37;
      v38 = (v96 + 48 * v36);
      v39 = *v38;
      v101 = v38[1];
      v102 = v39;
      v40 = v38[2];
      v41 = v38[3];
      v43 = v38[4];
      v42 = v38[5];
      v44 = *(v40 + 16);
      v105 = v43;
      v106 = v41;
      v99 = v40;
      v100 = v42;
      if (v44)
      {
        v119 = v35;
        swift_bridgeObjectRetain_n();

        sub_1D69988B8(0, v44, 0);
        v45 = v119;
        v46 = (v40 + 48);
        do
        {
          v48 = *(v46 - 2);
          v47 = *(v46 - 1);
          v49 = *v46;
          if (~*v46 & 0xF000000000000007) == 0 && (v48 == v112 ? (v50 = v47 == v113) : (v50 = 0), v50 || (sub_1D72646CC()))
          {
            v47 = v110;

            v49 = 0xF000000000000007;
            v48 = v111;
          }

          else
          {

            sub_1D5CFCFAC(v49);
          }

          v119 = v45;
          v52 = *(v45 + 16);
          v51 = *(v45 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1D69988B8((v51 > 1), v52 + 1, 1);
            v45 = v119;
          }

          v46 += 3;
          *(v45 + 16) = v52 + 1;
          v53 = (v45 + 24 * v52);
          v53[4] = v48;
          v53[5] = v47;
          v53[6] = v49;
          --v44;
          v14 = v114;
        }

        while (v44);
        v35 = MEMORY[0x1E69E7CC0];
        v43 = v105;
        v41 = v106;
        v54 = *(v105 + 16);
        if (v54)
        {
LABEL_18:
          v119 = v35;

          sub_1D69988E8(0, v54, 0);
          v55 = v119;
          v56 = (*(v95 + 80) + 32) & ~*(v95 + 80);
          v57 = v43 + v56;
          v58 = *(v95 + 72);
          while (1)
          {
            sub_1D5CF2564(v57, v14, type metadata accessor for FormatContentSlotItem);
            sub_1D5CF2564(v14, v116, type metadata accessor for FormatContentSlotItemObject);
            if (swift_getEnumCaseMultiPayload() != 11)
            {
              goto LABEL_27;
            }

            v59 = v108;
            sub_1D5CF2564(v116, v108, type metadata accessor for FormatContentSlotItemObject);
            v60 = *v59;
            v61 = *(v59 + 8);
            v62 = *(v59 + 16);
            v63 = v60 == v112 && v61 == v113;
            if (!v63 && (sub_1D72646CC() & 1) == 0)
            {
              break;
            }

            sub_1D5CF29A4(v14, type metadata accessor for FormatContentSlotItem);
            v64 = v110;

            v65 = v115;
            *v115 = v111;
            v65[1] = v64;
            *(v65 + 16) = v62;
            swift_storeEnumTagMultiPayload();
            v66 = (v65 + *(v107 + 20));
            *v66 = 0;
            v66[1] = 0;
LABEL_28:
            sub_1D5CF29A4(v116, type metadata accessor for FormatContentSlotItemObject);
            v119 = v55;
            v68 = *(v55 + 16);
            v67 = *(v55 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1D69988E8((v67 > 1), v68 + 1, 1);
              v55 = v119;
            }

            *(v55 + 16) = v68 + 1;
            sub_1D6C047F0(v115, v55 + v56 + v68 * v58, type metadata accessor for FormatContentSlotItem);
            v57 += v58;
            --v54;
            v14 = v114;
            if (!v54)
            {
              v35 = MEMORY[0x1E69E7CC0];
              v41 = v106;
              goto LABEL_34;
            }
          }

LABEL_27:
          sub_1D6C047F0(v14, v115, type metadata accessor for FormatContentSlotItem);
          goto LABEL_28;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v45 = v35;
        v54 = *(v43 + 16);
        if (v54)
        {
          goto LABEL_18;
        }
      }

      v55 = v35;
LABEL_34:

      v69 = v101;

      v37 = v104;
      v117 = v104;
      v71 = *(v104 + 16);
      v70 = *(v104 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1D69975FC((v70 > 1), v71 + 1, 1);
        v37 = v117;
      }

      v72 = v102;
      v36 = v103 + 1;
      *(v37 + 16) = v71 + 1;
      v73 = (v37 + 48 * v71);
      v73[4] = v72;
      v73[5] = v69;
      v73[6] = v45;
      v73[7] = v41;
      v74 = v100;
      v73[8] = v55;
      v73[9] = v74;
      v33 = v98;
      if (v36 == v97)
      {
        v75 = v87;
        v76 = v86;
        v77 = v37;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  else
  {
    v76 = v30;

    v77 = MEMORY[0x1E69E7CC0];
    v75 = v31;
LABEL_39:
    v78 = v90;
    v79 = v93;
    v80 = *(v93 + v90[9]);
    v81 = v92;
    sub_1D5D3A074(v93 + v90[10], v92);
    v82 = v94;
    sub_1D6C047F0(v81, v94 + v78[10], type metadata accessor for FormatMetadata);
    v83 = *(v79 + v78[11]);
    v84 = v88;
    *v82 = v89;
    v82[1] = v84;
    sub_1D6C04858(v91, v82 + v78[5]);
    *(v82 + v78[6]) = v76;
    *(v82 + v78[7]) = v75;
    *(v82 + v78[9]) = v80;
    *(v82 + v78[8]) = v77;
    *(v82 + v78[12]) = v35;
    *(v82 + v78[11]) = v83;
  }
}

void FormatContent.expandAsSections(placeholder:placeholders:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v137 = a3;
  v132 = a4;
  v135 = sub_1D725891C();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v7);
  v133 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v130 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v127 = &v126 - v17;
  sub_1D6C04230(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v136 = &v126 - v20;
  v147 = type metadata accessor for FormatContentSubgroup(0);
  v21 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v22);
  v24 = (&v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25, v26);
  v150 = (&v126 - v27);
  v129 = type metadata accessor for FormatContent(0);
  v28 = *(v129 + 68);
  v131 = v4;
  v29 = *(v4 + v28);
  v30 = *(v29 + 16);
  if (!v30)
  {
    v151 = MEMORY[0x1E69E7CC0];
    goto LABEL_38;
  }

  v157 = MEMORY[0x1E69E7CC0];
  sub_1D69975AC(0, v30, 0);
  v31 = 0;
  v140 = 0;
  v32 = v157;
  v139 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v145 = a2;
  v146 = v29 + v139;
  v143 = v21;
  v144 = a1;
  v152 = v24;
  v141 = v30;
  v142 = v29;
  while (1)
  {
    if (v31 >= *(v29 + 16))
    {
      goto LABEL_48;
    }

    v151 = v32;
    v148 = *(v21 + 72);
    v149 = v31;
    sub_1D5CF2564(v146 + v148 * v31, v24, type metadata accessor for FormatContentSubgroup);
    v33 = *(v24 + *(v147 + 32));
    v34 = *(v33 + 16);
    if (v34)
    {
      break;
    }

    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v51 = *(v38 + 2);
    if (v51)
    {
      v153 = v37;
      sub_1D5BFC364(0, v51, 0);
      v52 = v153;
      v53 = (v38 + 40);
      do
      {
        v55 = *(v53 - 1);
        v54 = *v53;
        v153 = v52;
        v56 = *(v52 + 16);
        v57 = *(v52 + 24);

        if (v56 >= v57 >> 1)
        {
          sub_1D5BFC364((v57 > 1), v56 + 1, 1);
          v52 = v153;
        }

        *(v52 + 16) = v56 + 1;
        v58 = v52 + 16 * v56;
        *(v58 + 32) = v55;
        *(v58 + 40) = v54;
        v53 += 3;
        --v51;
      }

      while (v51);
    }

    else
    {

      v52 = v37;
    }

    v59 = sub_1D5B86020(v52);

    v60 = v144;
    v61 = v145;
    v62 = sub_1D5BE240C(v144, v145, v59);

    v24 = v152;
    if (v62)
    {
      v63 = v152[1];
      v138 = *v152;
      v64 = v147;
      v65 = v150;
      v66 = sub_1D6C04298(v152 + *(v147 + 20), v150 + *(v147 + 20));
      v67 = *(v24 + v64[6]);
      v68 = *(v24 + v64[7]);
      MEMORY[0x1EEE9AC00](v66, v69);
      *(&v126 - 4) = v24;
      *(&v126 - 3) = v60;
      *(&v126 - 2) = v61;

      v70 = v140;
      sub_1D5ECD578(sub_1D6C04318, (&v126 - 6), v137);
      v72 = v71;
      v140 = v70;
      v73 = *(v152 + v64[9]);
      v74 = v136;
      sub_1D5D3A074(v152 + v64[10], v136);
      sub_1D6C047F0(v74, v65 + v64[10], type metadata accessor for FormatMetadata);
      v75 = *(v152 + v64[11]);
      *v65 = v138;
      v65[1] = v63;
      *(v65 + v64[6]) = v67;
      *(v65 + v64[7]) = v68;
      *(v65 + v64[9]) = v73;
      *(v65 + v64[8]) = MEMORY[0x1E69E7CC0];
      *(v65 + v64[12]) = v72;
      *(v65 + v64[11]) = v75;
      v24 = v152;
    }

    else
    {
      sub_1D5CF2564(v152, v150, type metadata accessor for FormatContentSubgroup);
    }

    v32 = v151;
    v29 = v142;
    v21 = v143;
    v76 = v141;
    sub_1D5CF29A4(v24, type metadata accessor for FormatContentSubgroup);
    v157 = v32;
    v78 = *(v32 + 16);
    v77 = *(v32 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_1D69975AC((v77 > 1), v78 + 1, 1);
      v32 = v157;
    }

    v79 = v148;
    v80 = v149 + 1;
    *(v32 + 16) = v78 + 1;
    v31 = v80;
    sub_1D6C047F0(v150, v32 + v139 + v78 * v79, type metadata accessor for FormatContentSubgroup);
    if (v31 == v76)
    {
      v151 = v32;
LABEL_38:
      v81 = sub_1D72608BC();
      v82 = *(v81 - 8);
      v83 = *(v82 + 56);
      v84 = v127;
      v83(v127, 1, 1, v81);
      v85 = v131;
      v86 = v131[1];
      v145 = *v131;
      v150 = v86;
      v87 = v129;
      (*(v134 + 16))(v133, v131 + *(v129 + 20), v135);
      v88 = (v85 + v87[6]);
      v89 = *v88;
      v90 = v88[1];
      v91 = (v85 + v87[7]);
      v93 = *v91;
      v92 = v91[1];
      v143 = v89;
      v144 = v93;
      v152 = v92;
      v94 = v87[9];
      v95 = (v85 + v87[8]);
      v96 = *v95;
      v146 = v95[1];
      v97 = *(v85 + v94 + 8);
      v142 = *(v85 + v94);
      v148 = v97;
      v149 = v90;
      v98 = (v85 + v87[10]);
      v100 = *v98;
      v99 = v98[1];
      v140 = v96;
      v141 = v100;
      v147 = v99;
      v101 = v128;
      sub_1D6C047F0(v84, v128, sub_1D5B49800);
      v102 = *(v82 + 48);
      if (v102(v101, 1, v81) == 1)
      {
        v103 = v130;
        sub_1D5CF2564(v85 + v87[11], v130, sub_1D5B49800);
        v104 = v102(v101, 1, v81);

        if (v104 != 1)
        {
          sub_1D5CF29A4(v101, sub_1D5B49800);
        }
      }

      else
      {
        v103 = v130;
        (*(v82 + 32))(v130, v101, v81);
        v83(v103, 0, 1, v81);
      }

      v105 = *(v85 + v87[12]);
      v106 = v87;
      v107 = *(v85 + v87[13]);
      v108 = *(v85 + v87[14]);
      v109 = *(v85 + v87[15]);
      v110 = *(v85 + v87[16]);
      v111 = v87[19];
      v112 = *(v85 + v87[18]);
      v113 = *(v85 + v111);
      v114 = v132;
      v115 = v150;
      *v132 = v145;
      *(v114 + 1) = v115;
      (*(v134 + 32))(&v114[v106[5]], v133, v135);
      v116 = &v114[v106[6]];
      v117 = v149;
      *v116 = v143;
      *(v116 + 1) = v117;
      v118 = &v114[v106[7]];
      v119 = v152;
      *v118 = v144;
      *(v118 + 1) = v119;
      v120 = &v114[v106[8]];
      v121 = v146;
      *v120 = v140;
      *(v120 + 1) = v121;
      v122 = &v114[v106[9]];
      v123 = v148;
      *v122 = v142;
      *(v122 + 1) = v123;
      v124 = &v114[v106[10]];
      v125 = v147;
      *v124 = v141;
      v124[1] = v125;
      sub_1D6C047F0(v103, &v114[v106[11]], sub_1D5B49800);
      *&v114[v106[12]] = v105;
      *&v114[v106[13]] = v107;
      *&v114[v106[14]] = v108;
      *&v114[v106[15]] = v109;
      *&v114[v106[16]] = v110;
      *&v114[v106[17]] = v151;
      *&v114[v106[18]] = v112;
      *&v114[v106[19]] = v113;

      return;
    }
  }

  v35 = 0;
  v36 = (v33 + 40);
  v37 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  while (v35 < *(v33 + 16))
  {
    v39 = *(v36 + 4);
    v153 = *(v36 - 1);
    v40 = v36[1];
    v154 = *v36;
    v155 = v40;
    v156 = v39;
    v41 = sub_1D6F10964();
    v42 = *(v41 + 16);
    v43 = *(v38 + 2);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      goto LABEL_44;
    }

    v45 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v44 <= *(v38 + 3) >> 1)
    {
      if (*(v45 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v47 = v43 + v42;
      }

      else
      {
        v47 = v43;
      }

      v38 = sub_1D5D55EC4(isUniquelyReferenced_nonNull_native, v47, 1, v38);
      if (*(v45 + 16))
      {
LABEL_18:
        if ((*(v38 + 3) >> 1) - *(v38 + 2) < v42)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v42)
        {
          v48 = *(v38 + 2);
          v49 = __OFADD__(v48, v42);
          v50 = v48 + v42;
          if (v49)
          {
            goto LABEL_47;
          }

          *(v38 + 2) = v50;
        }

        goto LABEL_7;
      }
    }

    if (v42)
    {
      goto LABEL_45;
    }

LABEL_7:
    ++v35;
    v36 += 3;
    if (v34 == v35)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_1D6C02F14(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v93 = a3;
  v94 = a4;
  v73 = a5;
  v87 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v87, v7);
  v88 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v89 = &v71 - v11;
  v86 = type metadata accessor for FormatContentSlotItem(0);
  v74 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v12);
  v95 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v96 = (&v71 - v16);
  v17 = sub_1D725895C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v90 = a1[1];
  v91 = v22;
  v23 = a2[1];
  v97 = *a2;
  v98 = v23;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  sub_1D725894C();
  v24 = sub_1D725893C();
  v26 = v25;
  (*(v18 + 8))(v21, v17);
  MEMORY[0x1DA6F9910](v24, v26);

  v27 = v97;
  v28 = v98;
  v29 = *(a2 + *(type metadata accessor for FormatContentSubgroup(0) + 32));
  v30 = *(v29 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v71 = v28;
    v72 = v27;
    v97 = MEMORY[0x1E69E7CC0];
    sub_1D69975FC(0, v30, 0);
    v32 = 0;
    v33 = v97;
    v75 = v29 + 32;
    v77 = v29;
    v76 = v30;
    while (v32 < *(v29 + 16))
    {
      v82 = v33;
      v83 = v32;
      v34 = (v75 + 48 * v32);
      v35 = *v34;
      v80 = v34[1];
      v81 = v35;
      v36 = v34[2];
      v37 = v34[3];
      v39 = v34[4];
      v38 = v34[5];
      v40 = *(v36 + 16);
      v84 = v39;
      v85 = v37;
      v78 = v36;
      v79 = v38;
      if (v40)
      {
        v99 = v31;
        swift_bridgeObjectRetain_n();

        sub_1D69988B8(0, v40, 0);
        v41 = v99;
        v42 = (v36 + 48);
        do
        {
          v43 = *(v42 - 2);
          v44 = *(v42 - 1);
          v45 = *v42;
          if (~*v42 & 0xF000000000000007) == 0 && (v43 == v93 ? (v46 = v44 == v94) : (v46 = 0), v46 || (sub_1D72646CC()))
          {
            v44 = v90;

            v45 = 0xF000000000000007;
            v43 = v91;
          }

          else
          {

            sub_1D5CFCFAC(v45);
          }

          v99 = v41;
          v48 = *(v41 + 16);
          v47 = *(v41 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1D69988B8((v47 > 1), v48 + 1, 1);
            v41 = v99;
          }

          v42 += 3;
          *(v41 + 16) = v48 + 1;
          v49 = (v41 + 24 * v48);
          v49[4] = v43;
          v49[5] = v44;
          v49[6] = v45;
          --v40;
        }

        while (v40);
        v31 = MEMORY[0x1E69E7CC0];
        v39 = v84;
        v37 = v85;
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v41 = v31;
      }

      v50 = *(v39 + 16);
      v51 = v95;
      if (v50)
      {
        v99 = v31;

        v52 = v39;
        sub_1D69988E8(0, v50, 0);
        v53 = v89;
        v54 = v99;
        v92 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v55 = v52 + v92;
        v56 = *(v74 + 72);
        while (1)
        {
          sub_1D5CF2564(v55, v51, type metadata accessor for FormatContentSlotItem);
          sub_1D5CF2564(v51, v53, type metadata accessor for FormatContentSlotItemObject);
          if (swift_getEnumCaseMultiPayload() != 11)
          {
            goto LABEL_29;
          }

          v57 = v88;
          sub_1D5CF2564(v53, v88, type metadata accessor for FormatContentSlotItemObject);
          v58 = *(v57 + 16);
          v59 = *v57 == v93 && *(v57 + 8) == v94;
          if (!v59 && (sub_1D72646CC() & 1) == 0)
          {
            break;
          }

          sub_1D5CF29A4(v95, type metadata accessor for FormatContentSlotItem);
          v60 = v90;

          v61 = v96;
          *v96 = v91;
          v61[1] = v60;
          *(v61 + 16) = v58;
          swift_storeEnumTagMultiPayload();
          v62 = (v61 + *(v86 + 20));
          *v62 = 0;
          v62[1] = 0;
          v53 = v89;
LABEL_30:
          sub_1D5CF29A4(v53, type metadata accessor for FormatContentSlotItemObject);
          v99 = v54;
          v64 = *(v54 + 16);
          v63 = *(v54 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_1D69988E8((v63 > 1), v64 + 1, 1);
            v53 = v89;
            v54 = v99;
          }

          *(v54 + 16) = v64 + 1;
          sub_1D6C047F0(v96, v54 + v92 + v64 * v56, type metadata accessor for FormatContentSlotItem);
          v55 += v56;
          --v50;
          v51 = v95;
          if (!v50)
          {
            v31 = MEMORY[0x1E69E7CC0];
            v37 = v85;
            goto LABEL_35;
          }
        }

        v53 = v89;
        v51 = v95;
LABEL_29:
        sub_1D6C047F0(v51, v96, type metadata accessor for FormatContentSlotItem);
        goto LABEL_30;
      }

      v54 = v31;
LABEL_35:

      v65 = v80;

      v33 = v82;
      v97 = v82;
      v67 = *(v82 + 16);
      v66 = *(v82 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1D69975FC((v66 > 1), v67 + 1, 1);
        v33 = v97;
      }

      v32 = v83 + 1;
      *(v33 + 16) = v67 + 1;
      v68 = (v33 + 48 * v67);
      v68[4] = v81;
      v68[5] = v65;
      v68[6] = v41;
      v68[7] = v37;
      v69 = v79;
      v68[8] = v54;
      v68[9] = v69;
      v29 = v77;
      if (v32 == v76)
      {
        v27 = v72;
        v28 = v71;
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v70 = v73;
    *v73 = v27;
    v70[1] = v28;
    v70[2] = v33;
  }
}

unint64_t sub_1D6C03684(unint64_t result, uint64_t a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D6993B10(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D5EC3570(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t _s8NewsFeed13FormatContentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D72608BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D606BDF4(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_54;
  }

  v18 = type metadata accessor for FormatContent(0);
  if ((sub_1D72588AC() & 1) == 0)
  {
    goto LABEL_54;
  }

  v19 = v18[6];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23 || (*v20 != *v22 || v21 != v23) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v23)
  {
    goto LABEL_54;
  }

  v24 = v18[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v28)
  {
    goto LABEL_54;
  }

  v29 = v18[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v33)
  {
    goto LABEL_54;
  }

  v34 = v18[9];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v38)
  {
    goto LABEL_54;
  }

  v39 = v18[10];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v43)
  {
    goto LABEL_54;
  }

  v53 = v18[11];
  v44 = *(v14 + 48);
  sub_1D5CF2564(a1 + v53, v17, sub_1D5B49800);
  v45 = a2 + v53;
  v53 = v44;
  sub_1D5CF2564(v45, &v17[v44], sub_1D5B49800);
  v46 = *(v5 + 48);
  if (v46(v17, 1, v4) != 1)
  {
    sub_1D5CF2564(v17, v12, sub_1D5B49800);
    if (v46(&v17[v53], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_44;
    }

    (*(v5 + 32))(v8, &v17[v53], v4);
    sub_1D6C048D8(&qword_1EC882FB8, MEMORY[0x1E69B40B8], MEMORY[0x1E69B40C0]);
    v47 = sub_1D7261FBC();
    v48 = *(v5 + 8);
    v48(v8, v4);
    v48(v12, v4);
    sub_1D5CF29A4(v17, sub_1D5B49800);
    if (v47)
    {
      goto LABEL_46;
    }

LABEL_54:
    v50 = 0;
    return v50 & 1;
  }

  if (v46(&v17[v53], 1, v4) != 1)
  {
LABEL_44:
    sub_1D5CF29A4(v17, sub_1D606BDF4);
    goto LABEL_54;
  }

  sub_1D5CF29A4(v17, sub_1D5B49800);
LABEL_46:
  if ((sub_1D5BF1C0C(*(a1 + v18[12]), *(a2 + v18[12])) & 1) == 0)
  {
    goto LABEL_54;
  }

  if ((sub_1D5BF1C0C(*(a1 + v18[13]), *(a2 + v18[13])) & 1) == 0)
  {
    goto LABEL_54;
  }

  if ((sub_1D5BF1C0C(*(a1 + v18[14]), *(a2 + v18[14])) & 1) == 0)
  {
    goto LABEL_54;
  }

  if ((sub_1D5BF1C0C(*(a1 + v18[15]), *(a2 + v18[15])) & 1) == 0)
  {
    goto LABEL_54;
  }

  if ((sub_1D63449AC(*(a1 + v18[16]), *(a2 + v18[16])) & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_1D633A544(*(a1 + v18[17]), *(a2 + v18[17]));
  if ((v49 & 1) == 0 || (sub_1D6339F3C(*(a1 + v18[18]), *(a2 + v18[18])) & 1) == 0)
  {
    goto LABEL_54;
  }

  v50 = sub_1D5BFC390(*(a1 + v18[19]), *(a2 + v18[19]));
  return v50 & 1;
}

unint64_t sub_1D6C03CEC()
{
  result = qword_1EDF417B0;
  if (!qword_1EDF417B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417B0);
  }

  return result;
}

unint64_t sub_1D6C03D74()
{
  result = qword_1EDF417C8;
  if (!qword_1EDF417C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417C8);
  }

  return result;
}

void sub_1D6C03DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatPackage(255);
    v7 = sub_1D6C048D8(&qword_1EDF456B0, type metadata accessor for FormatPackage, &protocol conformance descriptor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6C03E64(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58388(255, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C03F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  if (sub_1D7263BFC() < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (v9)
  {
    v12 = sub_1D7263BFC();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1D5CED4DC(v14, 1);

  sub_1D5EC3D1C(v7, v6, 1, v4);
}

unint64_t sub_1D6C04000(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D6990590(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1D5EC3E4C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1D6C040C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6C04138(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1D6991D38(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1D5EC4288(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

void sub_1D6C04230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6C04298(uint64_t a1, uint64_t a2)
{
  sub_1D6C03DC8(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C0433C(void *a1)
{
  a1[1] = sub_1D6C048D8(&qword_1EC886260, type metadata accessor for FormatContent, &protocol conformance descriptor for FormatContent);
  a1[2] = sub_1D6C048D8(&qword_1EC886280, type metadata accessor for FormatContent, &protocol conformance descriptor for FormatContent);
  result = sub_1D6C048D8(&qword_1EC893778, type metadata accessor for FormatContent, &protocol conformance descriptor for FormatContent);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C04424(uint64_t a1)
{
  result = type metadata accessor for FeedGroupConfigSidecar(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D6C044BC()
{
  result = qword_1EC893780;
  if (!qword_1EC893780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893780);
  }

  return result;
}

unint64_t sub_1D6C04514()
{
  result = qword_1EC893788;
  if (!qword_1EC893788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893788);
  }

  return result;
}

unint64_t sub_1D6C0456C()
{
  result = qword_1EDF417B8;
  if (!qword_1EDF417B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417B8);
  }

  return result;
}

unint64_t sub_1D6C045C4()
{
  result = qword_1EDF417C0;
  if (!qword_1EDF417C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417C0);
  }

  return result;
}

unint64_t sub_1D6C0461C()
{
  result = qword_1EDF417A0;
  if (!qword_1EDF417A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417A0);
  }

  return result;
}

unint64_t sub_1D6C04674()
{
  result = qword_1EDF417A8;
  if (!qword_1EDF417A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417A8);
  }

  return result;
}

uint64_t sub_1D6C046F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D7263BFC();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = sub_1D7263BFC();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

uint64_t sub_1D6C047F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C04858(uint64_t a1, uint64_t a2)
{
  sub_1D6C03DC8(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C048D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double FeedGroupDescribing.feedGroupDebug.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double FormatTransformKnobs.expireContentThreshold.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatTransformKnobs(0) + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 32))(v2, v3);
  v4 = sub_1D5E35BF4(v0);

  return v4;
}

uint64_t FormatTransformKnobs.init(context:knobs:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5C25D20(a1, a3);
  v5 = a3 + *(type metadata accessor for FormatTransformKnobs(0) + 20);

  return sub_1D5B63F14(a2, v5);
}

uint64_t FormatTransformKnobs.maxNumberOfItems.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatTransformKnobs(0) + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = sub_1D5E35358(v0);

  return v4;
}

uint64_t FormatTransformKnobs.minNumberOfItems.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatTransformKnobs(0) + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  v4 = sub_1D5E35358(v0);

  return v4;
}

uint64_t sub_1D6C04B9C()
{
  sub_1D6060284();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t FormatTransformKnobsProviding.expireContent.getter()
{
  sub_1D6060284();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1D6C04C0C()
{
  sub_1D605A334();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t FormatTransformKnobsProviding.expireContentThreshold.getter()
{
  sub_1D605A334();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t FeedGroupClusteringKnobsBasedFormatTransformKnobs.init(clusteringKnobs:fallback:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[7];
  a3[6] = a1[6];
  a3[7] = v3;
  v4 = a1[9];
  a3[8] = a1[8];
  a3[9] = v4;
  v5 = a1[3];
  a3[2] = a1[2];
  a3[3] = v5;
  v6 = a1[5];
  a3[4] = a1[4];
  a3[5] = v6;
  v7 = a1[1];
  *a3 = *a1;
  a3[1] = v7;
  return sub_1D5B63F14(a2, (a3 + 10));
}

double FeedGroupClusteringKnobsBasedFormatTransformKnobs.maxNumberOfItems.getter()
{
  v1 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v1;
  v2 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v9) == 1)
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
    (*(v7 + 8))(v6, v7);
  }

  else
  {
  }

  return result;
}

double FeedGroupClusteringKnobsBasedFormatTransformKnobs.minNumberOfItems.getter()
{
  v1 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v1;
  v2 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v9) == 1)
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
  }

  return result;
}

uint64_t FeedGroupClusteringKnobsBasedFormatTransformKnobs.expireContent.getter()
{
  v1 = v0[23];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t FeedGroupClusteringKnobsBasedFormatTransformKnobs.expireContentThreshold.getter()
{
  v1 = v0[23];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v1);
  return (*(v2 + 32))(v1, v2);
}

double sub_1D6C04E94()
{
  v1 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v1;
  v2 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v9) == 1)
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
    (*(v7 + 8))(v6, v7);
  }

  else
  {
  }

  return result;
}

double sub_1D6C04F34()
{
  v1 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v1;
  v2 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v9) == 1)
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D6C04FD4()
{
  v1 = v0[23];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D6C05028()
{
  v1 = v0[23];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v1);
  return (*(v2 + 32))(v1, v2);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D6C05110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6C05158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6C051DC(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      v14 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
      if (v4 == 2)
      {
        v15 = v14[6];
        *v60 = v14[5];
        *&v60[16] = v15;
        v16 = v14[8];
        *&v60[32] = v14[7];
        *v61 = v16;
        v17 = v14[2];
        __dst = v14[1];
        v57 = v17;
        v18 = v14[4];
        v58 = v14[3];
        v59 = v18;
        v19 = swift_allocObject();
        v20 = __dst;
        v21 = v59;
        v22 = *(&v59 + 1);
        v23 = *v60;
        v24 = v60[40];
        v25 = *v61;
        v52 = *&v60[24];
        v54 = *&v60[8];
        v50 = v58;
        v51 = v57;
        sub_1D60865E4(&__dst, &v83);

        v26 = sub_1D600A03C(v25);
        *(v19 + 16) = v20;
        *(v19 + 32) = v51;
        *(v19 + 48) = v50;
        *(v19 + 64) = v21;
        *(v19 + 72) = v22;
        *(v19 + 80) = v23;
        *(v19 + 104) = v52;
        *(v19 + 88) = v54;
        *(v19 + 120) = v24;
        *(v19 + 128) = v26;
        *(v19 + 136) = *(&v25 + 1);
        sub_1D6086640(&__dst);
        v13 = v19 | 0x4000000000000000;
      }

      else
      {
        v42 = *(v14 + 2);
        v43 = swift_allocObject();
        *&__dst = v42;
        sub_1D7100BB0((v43 + 16));
        v13 = v43 | 0x6000000000000000;
      }
    }

    else
    {
      if (!v4)
      {
        v5 = *(v3 + 16);
        v6 = swift_allocObject();
        *&__dst = v5;
        sub_1D6E0CAE0((v6 + 16));
        *a1 = v6;
        return;
      }

      v34 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v35 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v37 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v38 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
      v39 = swift_allocObject();

      v53 = *(v34 + 48);
      v55 = *(v34 + 32);
      sub_1D5D615EC(v37, v38);

      sub_1D5D615EC(v37, v38);
      *(v39 + 16) = sub_1D600A03C(v35);
      *(v39 + 24) = v36;
      *(v39 + 32) = v55;
      *(v39 + 48) = v53;
      *(v39 + 64) = v37;
      *(v39 + 72) = v38;

      sub_1D5CDE22C(v37, v38);
      v13 = v39 | 0x2000000000000000;
    }

    goto LABEL_24;
  }

  if (v4 <= 5)
  {
    v7 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 == 4)
    {
      v8 = *(v7 + 144);
      *v61 = *(v7 + 128);
      *&v61[16] = v8;
      v62[0] = *(v7 + 160);
      *(v62 + 9) = *(v7 + 169);
      v9 = *(v7 + 80);
      v59 = *(v7 + 64);
      *v60 = v9;
      v10 = *(v7 + 112);
      *&v60[16] = *(v7 + 96);
      *&v60[32] = v10;
      v11 = *(v7 + 32);
      __dst = *(v7 + 16);
      v57 = v11;
      v58 = *(v7 + 48);
      v12 = swift_allocObject();
      sub_1D60FB644(v12 + 16);
      v13 = v12 | 0x8000000000000000;
    }

    else
    {
      v40 = *(v7 + 16);
      if (*(v7 + 24))
      {
        swift_retain_n();

        v41 = sub_1D6FAD24C();
      }

      else
      {
        swift_retain_n();
        v41 = 0;
      }

      v49 = swift_allocObject();
      *(v49 + 16) = v40;
      *(v49 + 24) = v41;

      v13 = v49 | 0xA000000000000000;
    }

LABEL_24:
    *a1 = v13;
    return;
  }

  if (v4 == 6)
  {
    v27 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    v28 = *(v27 + 16);
    v29 = *(v27 + 56);
    v30 = *(v27 + 40);
    v31 = *(v27 + 88);
    v86 = *(v27 + 72);
    v87 = v31;
    v32 = *(v27 + 104);
    v33 = *(v27 + 136);
    v89 = *(v27 + 120);
    v90[0] = v33;
    *(v90 + 9) = *(v27 + 145);
    v88 = v32;
    v84 = v30;
    v85 = v29;
    v83 = *(v27 + 24);
    memmove(&__dst, (v27 + 24), 0x89uLL);
    if (sub_1D60486AC(&__dst) == 1)
    {
      v81 = v89;
      v82[0] = v90[0];
      *(v82 + 9) = *(v90 + 9);
      v77 = v85;
      v78 = v86;
      v79 = v87;
      v80 = v88;
      v75 = v83;
      v76 = v84;
    }

    else
    {
      v81 = *&v60[32];
      v82[0] = *v61;
      *(v82 + 9) = *&v61[9];
      v77 = v58;
      v78 = v59;
      v79 = *v60;
      v80 = *&v60[16];
      v75 = __dst;
      v76 = v57;
      sub_1D6813640(v65);
      v63[6] = v81;
      v64[0] = v82[0];
      *(v64 + 9) = *(v82 + 9);
      v63[2] = v77;
      v63[3] = v78;
      v63[4] = v79;
      v63[5] = v80;
      v63[0] = v75;
      v63[1] = v76;

      sub_1D6047E28(&v83, &v67);
      sub_1D62B49F0(v63);
      v73 = v65[6];
      v74[0] = v66[0];
      *(v74 + 9) = *(v66 + 9);
      v69 = v65[2];
      v70 = v65[3];
      v71 = v65[4];
      v72 = v65[5];
      v67 = v65[0];
      v68 = v65[1];
      nullsub_1();
      v81 = v73;
      v82[0] = v74[0];
      *(v82 + 9) = *(v74 + 9);
      v77 = v69;
      v78 = v70;
      v79 = v71;
      v80 = v72;
      v75 = v67;
      v76 = v68;
    }

    v44 = swift_allocObject();
    v45 = v79;
    *(v44 + 104) = v80;
    v46 = v82[0];
    *(v44 + 120) = v81;
    *(v44 + 136) = v46;
    *(v44 + 145) = *(v82 + 9);
    v47 = v75;
    *(v44 + 40) = v76;
    v48 = v78;
    *(v44 + 56) = v77;
    *(v44 + 72) = v48;
    *(v44 + 88) = v45;
    *(v44 + 16) = v28;
    *(v44 + 24) = v47;
    v13 = v44 | 0xC000000000000000;
    goto LABEL_24;
  }

  *a1 = v3;
}

uint64_t FormatBackground.auxViewRequirements.getter()
{
  v1 = *v0 >> 61;
  if (v1 > 3)
  {
    v2 = &unk_1F50F7828;
    if (v1 != 6)
    {
      v2 = &unk_1F50F7850;
    }

    v3 = &unk_1F50F77D8;
    if (v1 != 4)
    {
      v3 = &unk_1F50F7800;
    }

    if (v1 <= 5)
    {
      return sub_1D5E28004(v3);
    }

    else
    {
      return sub_1D5E28004(v2);
    }
  }

  else
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return sub_1D5E28004(&unk_1F50F77B0);
      }
    }

    else if (v1)
    {
      return sub_1D5E28004(&unk_1F50F7788);
    }

    return MEMORY[0x1E69E7CD0];
  }
}

BOOL _s8NewsFeed20FormatMicaBackgroundV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 11);
  v4 = *(a1 + 15);
  v54 = *(a1 + 13);
  v55[0] = v4;
  *(v55 + 9) = *(a1 + 129);
  v5 = *(a1 + 3);
  v6 = *(a1 + 7);
  v50 = *(a1 + 5);
  v51 = v6;
  v7 = *(a1 + 9);
  v53 = v3;
  v52 = v7;
  v8 = *(a1 + 1);
  v49 = v5;
  v48 = v8;
  v9 = *a2;
  v10 = *(a2 + 11);
  v11 = *(a2 + 15);
  v62 = *(a2 + 13);
  v63[0] = v11;
  *(v63 + 9) = *(a2 + 129);
  v12 = *(a2 + 3);
  v13 = *(a2 + 7);
  v58 = *(a2 + 5);
  v59 = v13;
  v60 = *(a2 + 9);
  v61 = v10;
  v56 = *(a2 + 1);
  v57 = v12;
  *&__src[0] = v2;
  *&__dst[0] = v9;

  LOBYTE(v2) = static FormatMicaNodeContent.== infix(_:_:)(__src, __dst);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  __src[6] = v54;
  __src[7] = v55[0];
  *(&__src[7] + 9) = *(v55 + 9);
  __src[2] = v50;
  __src[3] = v51;
  __src[5] = v53;
  __src[4] = v52;
  __src[0] = v48;
  __src[1] = v49;
  *(&__src[16] + 9) = *(v63 + 9);
  __src[15] = v62;
  __src[16] = v63[0];
  __src[11] = v58;
  __src[12] = v59;
  __src[14] = v61;
  __src[13] = v60;
  __src[10] = v57;
  __src[9] = v56;
  v46[6] = v54;
  v47[0] = v55[0];
  *(v47 + 9) = *(v55 + 9);
  v46[2] = v50;
  v46[3] = v51;
  v46[5] = v53;
  v46[4] = v52;
  v46[1] = v49;
  v46[0] = v48;
  if (sub_1D60486AC(v46) == 1)
  {
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) == 1)
    {
      v43 = __src[6];
      v44[0] = __src[7];
      *(v44 + 9) = *(&__src[7] + 9);
      v39 = __src[2];
      v40 = __src[3];
      v41 = __src[4];
      v42 = __src[5];
      v37 = __src[0];
      v38 = __src[1];
      sub_1D6047E28(&v48, &v28);
      sub_1D6047E28(&v56, &v28);
      sub_1D6C066D4(&v37, sub_1D6047E8C);
      return 1;
    }

    sub_1D6047E28(&v48, &v37);
    sub_1D6047E28(&v56, &v37);
    goto LABEL_8;
  }

  v43 = __src[6];
  v44[0] = __src[7];
  *(v44 + 9) = *(&__src[7] + 9);
  v39 = __src[2];
  v40 = __src[3];
  v41 = __src[4];
  v42 = __src[5];
  v37 = __src[0];
  v38 = __src[1];
  v34 = __src[6];
  v35[0] = __src[7];
  *(v35 + 9) = *(&__src[7] + 9);
  v30 = __src[2];
  v31 = __src[3];
  v32 = __src[4];
  v33 = __src[5];
  v28 = __src[0];
  v29 = __src[1];
  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 9) = *(&__src[16] + 9);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (sub_1D60486AC(__dst) == 1)
  {
    v26 = __src[6];
    v27[0] = __src[7];
    *(v27 + 9) = *(&__src[7] + 9);
    v22 = __src[2];
    v23 = __src[3];
    v24 = __src[4];
    v25 = __src[5];
    v20 = __src[0];
    v21 = __src[1];
    sub_1D6047E28(&v48, v18);
    sub_1D6047E28(&v56, v18);
    sub_1D6047E28(&v37, v18);
    sub_1D62B49F0(&v20);
LABEL_8:
    memcpy(__dst, __src, 0x119uLL);
    sub_1D6C066D4(__dst, sub_1D6C06670);
    return 0;
  }

  v26 = __src[15];
  v27[0] = __src[16];
  *(v27 + 9) = *(&__src[16] + 9);
  v22 = __src[11];
  v23 = __src[12];
  v24 = __src[13];
  v25 = __src[14];
  v20 = __src[9];
  v21 = __src[10];
  sub_1D6047E28(&v48, v18);
  sub_1D6047E28(&v56, v18);
  sub_1D6047E28(&v37, v18);
  v15 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v28, &v20);
  v16[6] = v26;
  v17[0] = v27[0];
  *(v17 + 9) = *(v27 + 9);
  v16[2] = v22;
  v16[3] = v23;
  v16[4] = v24;
  v16[5] = v25;
  v16[0] = v20;
  v16[1] = v21;
  sub_1D62B49F0(v16);
  v18[6] = v34;
  v19[0] = v35[0];
  *(v19 + 9) = *(v35 + 9);
  v18[2] = v30;
  v18[3] = v31;
  v18[4] = v32;
  v18[5] = v33;
  v18[0] = v28;
  v18[1] = v29;
  sub_1D62B49F0(v18);
  v26 = __src[6];
  v27[0] = __src[7];
  *(v27 + 9) = *(&__src[7] + 9);
  v22 = __src[2];
  v23 = __src[3];
  v24 = __src[4];
  v25 = __src[5];
  v20 = __src[0];
  v21 = __src[1];
  sub_1D6C066D4(&v20, sub_1D6047E8C);
  return v15;
}

uint64_t _s8NewsFeed21FormatImageBackgroundV2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v8 = *a2;
  v9 = v3;

  LOBYTE(v3) = static FormatAsyncImageContent.== infix(_:_:)(&v9, &v8);

  if (v3)
  {
    if (v2)
    {
      if (v4)
      {
        type metadata accessor for FormatImageNodeStyle(0);

        v6 = static FormatImageNodeStyle.== infix(_:_:)(v2, v4, v5);

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s8NewsFeed16FormatBackgroundO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        if (v3 >> 61 != 6)
        {
          goto LABEL_26;
        }

        v30 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v31 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v32 = *(v31 + 128);
        v66 = *(v31 + 112);
        v67 = v32;
        v68 = *(v31 + 144);
        v69[0] = *(v31 + 160);
        v33 = *(v31 + 64);
        v62 = *(v31 + 48);
        v63 = v33;
        v34 = *(v31 + 96);
        v64 = *(v31 + 80);
        v65 = v34;
        v35 = *(v31 + 32);
        v60 = *(v31 + 16);
        v61 = v35;
        v36 = *(v30 + 128);
        v76 = *(v30 + 112);
        v77 = v36;
        v78 = *(v30 + 144);
        v79[0] = *(v30 + 160);
        v37 = *(v30 + 64);
        v72 = *(v30 + 48);
        v73 = v37;
        v38 = *(v30 + 96);
        v74 = *(v30 + 80);
        v75 = v38;
        v39 = *(v30 + 32);
        v70 = *(v30 + 16);
        v71 = v39;

        v19 = _s8NewsFeed20FormatMicaBackgroundV2eeoiySbAC_ACtFZ_0(&v70, &v60);
      }

      else
      {
        if (v3 >> 61 != 7)
        {
          goto LABEL_26;
        }

        v47 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v48 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v49 = *(v48 + 160);
        v68 = *(v48 + 144);
        *v69 = v49;
        *&v69[16] = *(v48 + 176);
        v50 = *(v48 + 96);
        v64 = *(v48 + 80);
        v65 = v50;
        v51 = *(v48 + 128);
        v66 = *(v48 + 112);
        v67 = v51;
        v52 = *(v48 + 32);
        v60 = *(v48 + 16);
        v61 = v52;
        v53 = *(v48 + 64);
        v62 = *(v48 + 48);
        v63 = v53;
        v54 = *(v47 + 160);
        v78 = *(v47 + 144);
        *v79 = v54;
        *&v79[16] = *(v47 + 176);
        v55 = *(v47 + 96);
        v74 = *(v47 + 80);
        v75 = v55;
        v56 = *(v47 + 128);
        v76 = *(v47 + 112);
        v77 = v56;
        v57 = *(v47 + 32);
        v70 = *(v47 + 16);
        v71 = v57;
        v58 = *(v47 + 64);
        v72 = *(v47 + 48);
        v73 = v58;

        v19 = _s8NewsFeed18FormatVisualEffectO2eeoiySbAC_ACtFZ_0(&v70, &v60);
      }
    }

    else if (v4 == 4)
    {
      if (v3 >> 61 != 4)
      {
        goto LABEL_26;
      }

      v7 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      v8 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
      v9 = v8[10];
      v68 = v8[9];
      *v69 = v9;
      *&v69[9] = *(v8 + 169);
      v10 = v8[6];
      v64 = v8[5];
      v65 = v10;
      v11 = v8[8];
      v66 = v8[7];
      v67 = v11;
      v12 = v8[2];
      v60 = v8[1];
      v61 = v12;
      v13 = v8[4];
      v62 = v8[3];
      v63 = v13;
      v14 = v7[10];
      v78 = v7[9];
      *v79 = v14;
      *&v79[9] = *(v7 + 169);
      v15 = v7[6];
      v74 = v7[5];
      v75 = v15;
      v16 = v7[8];
      v76 = v7[7];
      v77 = v16;
      v17 = v7[2];
      v70 = v7[1];
      v71 = v17;
      v18 = v7[4];
      v72 = v7[3];
      v73 = v18;

      v19 = _s8NewsFeed21FormatSplitBackgroundV2eeoiySbAC_ACtFZ_0(&v70, &v60);
    }

    else
    {
      if (v3 >> 61 != 5)
      {
        goto LABEL_26;
      }

      v70 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v19 = _s8NewsFeed21FormatImageBackgroundV2eeoiySbAC_ACtFZ_0(&v70, &v60);
    }

LABEL_24:
    v6 = v19;

    goto LABEL_25;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 61 != 2)
      {
        goto LABEL_26;
      }

      v20 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      v21 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
      v22 = v21[6];
      v64 = v21[5];
      v65 = v22;
      v23 = v21[8];
      v66 = v21[7];
      v67 = v23;
      v24 = v21[2];
      v60 = v21[1];
      v61 = v24;
      v25 = v21[4];
      v62 = v21[3];
      v63 = v25;
      v26 = v20[6];
      v74 = v20[5];
      v75 = v26;
      v27 = v20[8];
      v76 = v20[7];
      v77 = v27;
      v28 = v20[2];
      v70 = v20[1];
      v71 = v28;
      v29 = v20[4];
      v72 = v20[3];
      v73 = v29;

      v19 = _s8NewsFeed20FormatRadialGradientV2eeoiySbAC_ACtFZ_0(&v70, &v60);
    }

    else
    {
      if (v3 >> 61 != 3)
      {
        goto LABEL_26;
      }

      v46 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v70 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v60 = v46;

      v19 = _s8NewsFeed11FormatShineO2eeoiySbAC_ACtFZ_0(&v70, &v60);
    }

    goto LABEL_24;
  }

  if (v4)
  {
    if (v3 >> 61 != 1)
    {
      goto LABEL_26;
    }

    v40 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
    v41 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    v42 = v41[2];
    v60 = v41[1];
    v61 = v42;
    v43 = v41[4];
    v62 = v41[3];
    v63 = v43;
    v44 = v40[2];
    v70 = v40[1];
    v71 = v44;
    v45 = v40[4];
    v72 = v40[3];
    v73 = v45;

    v19 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v70, &v60);
    goto LABEL_24;
  }

  if (v3 >> 61)
  {
LABEL_26:
    v6 = 0;
    return v6 & 1;
  }

  v5 = *(v3 + 16);
  *&v70 = *(v2 + 16);
  *&v60 = v5;

  v6 = static FormatColor.== infix(_:_:)(&v70, &v60);

LABEL_25:

  return v6 & 1;
}

unint64_t sub_1D6C061B8(uint64_t a1)
{
  result = sub_1D6C061E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C061E0()
{
  result = qword_1EC893790;
  if (!qword_1EC893790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893790);
  }

  return result;
}

unint64_t sub_1D6C06274()
{
  result = qword_1EC893798;
  if (!qword_1EC893798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893798);
  }

  return result;
}

unint64_t sub_1D6C062C8(uint64_t a1)
{
  result = sub_1D6C062F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C062F0()
{
  result = qword_1EC8937A0;
  if (!qword_1EC8937A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937A0);
  }

  return result;
}

unint64_t sub_1D6C06384()
{
  result = qword_1EC8937A8;
  if (!qword_1EC8937A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937A8);
  }

  return result;
}

unint64_t sub_1D6C063D8(uint64_t a1)
{
  result = sub_1D6C06400();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C06400()
{
  result = qword_1EC8937B0;
  if (!qword_1EC8937B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937B0);
  }

  return result;
}

uint64_t sub_1D6C06494(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C064E8()
{
  result = qword_1EC8937B8;
  if (!qword_1EC8937B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed17FormatMediaTimingVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6C06580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 145))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1D6C065E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1D6C06670(uint64_t a1)
{
  if (!qword_1EC889AE0)
  {
    sub_1D6047E8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC889AE0);
    }
  }
}

uint64_t sub_1D6C066D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6C06734(uint64_t a1, unint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v16 = *a2;
  a4[qword_1EDF31618] = *(a3 + 129);
  v17 = *(a3 + 24);
  v18 = &a4[qword_1EDF31620];
  *v18 = *(a3 + 16);
  v18[1] = v17;

  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  v20 = v16;
  sub_1D68B5E88(a1, a4, &v20, a3, a5, a6, a7, a8, a9);
}

uint64_t static FormatAlphaColor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1D7261FBC() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for FormatAlphaColor(0, a3, a4, v8) + 36);
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 8);
  if (v11)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D6C068A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C068E8(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C06968(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

uint64_t FormatBlock.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double FormatBlock.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

double FormatBlock.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

double FormatBlock.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

void *FormatBlock.__allocating_init(identifier:children:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  swift_beginAccess();
  v10[4] = a3;
  swift_beginAccess();
  v10[5] = a4;
  swift_beginAccess();
  v10[6] = a5;
  return v10;
}

void *FormatBlock.init(identifier:children:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  swift_beginAccess();
  v5[4] = a3;
  swift_beginAccess();
  v5[5] = a4;
  swift_beginAccess();
  v5[6] = a5;
  return v5;
}

uint64_t FormatBlock.deinit()
{

  return v0;
}

uint64_t FormatBlock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C06EE0(uint64_t a1)
{
  result = sub_1D6C06FB0(&qword_1EC8937C0, &protocol conformance descriptor for FormatBlock);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C06F24(void *a1)
{
  a1[1] = sub_1D6C06FB0(&qword_1EDF342F0, &protocol conformance descriptor for FormatBlock);
  a1[2] = sub_1D6C06FB0(&qword_1EDF342F8, &protocol conformance descriptor for FormatBlock);
  result = sub_1D6C06FB0(&qword_1EC8937C8, &protocol conformance descriptor for FormatBlock);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C06FB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatBlock();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D6C06FF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D667AB3C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6C07078(void *a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 2;
  }

  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_1D5D0A57C(v5);
  sub_1D5D0A57C(v6);
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_1D5D0A57C(v6);
    v7 = sub_1D6C07078(a1);
    sub_1D5D0A58C(v5);
    sub_1D5D0A58C(v6);
    v8 = v6;
  }

  else
  {
    sub_1D5D0A57C(v5);
    v7 = sub_1D6C07078(a1);
    sub_1D5D0A58C(v5);
    sub_1D5D0A58C(v6);
    v8 = v5;
  }

  sub_1D5D0A58C(v8);
  return v7;
}

uint64_t sub_1D6C07164(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v15[1] = a1;
  v16 = a2;
  v15[0] = a4;
  if (!a1)
  {
    if (a3)
    {
      sub_1D5D0A57C(a3);
      v5 = 0;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a1 != 1)
  {
    if (a3 < 2)
    {
      sub_1D5D0A57C(a3);
      sub_1D5D0A57C(a1);
      v5 = a1;
      goto LABEL_9;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = *(a3 + 16);
    v12 = *(a3 + 24);
    sub_1D5D0A57C(a3);
    sub_1D5D0A57C(a1);
    LOBYTE(v9) = sub_1D6C07164(v10, v9, v11, v12);
    sub_1D5D0A58C(a1);
    sub_1D5D0A58C(a3);
    if ((v9 & 1) == 0)
    {
      v7 = 0;
      return v7 & 1;
    }

LABEL_12:
    v7 = _s8NewsFeed39FormatSponsoredBannerUserInterfaceStyleO2eeoiySbAC_ACtFZ_0(&v16, v15);
    return v7 & 1;
  }

  if (a3 == 1)
  {
LABEL_10:
    sub_1D5D0A58C(a1);
    sub_1D5D0A58C(a1);
    goto LABEL_12;
  }

  sub_1D5D0A57C(a3);
  v5 = 1;
LABEL_9:
  sub_1D5D0A58C(v5);
  sub_1D5D0A58C(a3);
  v7 = 0;
  return v7 & 1;
}

uint64_t _s8NewsFeed39FormatSponsoredBannerUserInterfaceStyleO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
      sub_1D5D0A57C(*a2);
      sub_1D5D0A57C(v2);
      sub_1D5D0A57C(v7);
      sub_1D5D0A57C(v8);
      v4 = sub_1D6C07164(v6, v5, v7, v8);
      sub_1D5D0A58C(v7);
      sub_1D5D0A58C(v8);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_1D5D0A57C(*a2);
    sub_1D5D0A57C(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_1D5D0A58C(v2);
  sub_1D5D0A58C(v3);
  return v4 & 1;
}

unint64_t sub_1D6C073AC(uint64_t a1)
{
  result = sub_1D66BDF14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C073D4(void *a1)
{
  a1[1] = sub_1D66BD910();
  a1[2] = sub_1D66BD5B8();
  result = sub_1D6C0740C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C0740C()
{
  result = qword_1EC8937D0;
  if (!qword_1EC8937D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed39FormatSponsoredBannerUserInterfaceStyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D6C07488(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v6 >> 5;
  if (v6 >> 5 <= 3)
  {
    if (v6 >> 5 <= 1)
    {
      if (v7)
      {

        v39 = sub_1D7259EBC();
        v40 = [v39 userInterfaceIdiom];

        if (sub_1D6185530(v40, *&v5))
        {
          sub_1D5C17350();
          swift_allocError();
          v11 = v41;
          v42 = sub_1D7259EBC();
          v43 = [v42 userInterfaceIdiom];

          *v11 = v43;
          v11[1] = v5;
          v14 = 9;
          goto LABEL_40;
        }
      }

      else
      {

        v8 = sub_1D7259EBC();
        v9 = [v8 userInterfaceIdiom];

        if (!sub_1D6185530(v9, *&v5))
        {
          sub_1D5C17350();
          swift_allocError();
          v11 = v10;
          v12 = sub_1D7259EBC();
          v13 = [v12 userInterfaceIdiom];

          *v11 = v13;
          v11[1] = v5;
          v14 = 8;
          goto LABEL_40;
        }
      }

LABEL_27:
      sub_1D5ECEDE8(*&v5, v6);
      return;
    }

    if (v7 == 2)
    {

      v19 = [a5 bundleIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D726207C();
        v23 = v22;

        LOBYTE(v20) = sub_1D5BE240C(v21, v23, *&v5);

        if (v20)
        {
          goto LABEL_27;
        }
      }

      sub_1D5C17350();
      swift_allocError();
      v11 = v24;
      v25 = [a5 bundleIdentifier];
      if (v25)
      {
        v26 = v25;
        v27 = sub_1D726207C();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      *v11 = v27;
      *(v11 + 1) = v29;
      v14 = 6;
    }

    else
    {

      v47 = [a5 bundleIdentifier];
      if (v47)
      {
        v48 = v47;
        v49 = sub_1D726207C();
        v51 = v50;

        LOBYTE(v48) = sub_1D5BE240C(v49, v51, *&v5);

        if ((v48 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      sub_1D5C17350();
      swift_allocError();
      v11 = v52;
      v53 = [a5 bundleIdentifier];
      if (v53)
      {
        v54 = v53;
        v55 = sub_1D726207C();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      *v11 = v55;
      *(v11 + 1) = v57;
      v14 = 7;
    }

    v11[2] = v5;
    goto LABEL_40;
  }

  if (v6 >> 5 > 5)
  {
    if (v7 == 6)
    {
      sub_1D7259E7C();
      v31 = v30;
      if (v6)
      {
        sub_1D7259C0C();
        v33 = v32;
        sub_1D7259CDC();
        v35 = (v5 + -1.0) * (v33 + v34);
        sub_1D7259C0C();
        v37 = v36 + v35;
        if (v31 >= v37)
        {
          return;
        }

        sub_1D5C17350();
        swift_allocError();
        v11 = v38;
        *v38 = v31;
        v38[1] = v37;
        v14 = 2;
      }

      else
      {
        if (v30 >= v5)
        {
          return;
        }

        sub_1D5C17350();
        swift_allocError();
        v11 = v67;
        sub_1D7259E7C();
        *v11 = v68;
        v11[1] = v5;
        v14 = 2;
      }
    }

    else
    {
      sub_1D7259E7C();
      v59 = v58;
      if (v6)
      {
        sub_1D7259C0C();
        v61 = v60;
        sub_1D7259CDC();
        v63 = (v5 + -1.0) * (v61 + v62);
        sub_1D7259C0C();
        v65 = v64 + v63;
        if (v65 > v59)
        {
          return;
        }

        sub_1D5C17350();
        swift_allocError();
        v11 = v66;
        *v66 = v59;
        v66[1] = v65;
        v14 = 3;
      }

      else
      {
        if (v58 < v5)
        {
          return;
        }

        sub_1D5C17350();
        swift_allocError();
        v11 = v69;
        sub_1D7259E7C();
        *v11 = v70;
        v11[1] = v5;
        v14 = 3;
      }
    }
  }

  else if (v7 == 4)
  {
    sub_1D7259E7C();
    if (v15 >= v5)
    {
      return;
    }

    v16 = v15;
    sub_1D5C17350();
    swift_allocError();
    v11 = v17;
    *v17 = v16;
    v17[1] = v5;
    v14 = 4;
  }

  else
  {
    sub_1D7259E7C();
    if (v44 <= v5)
    {
      return;
    }

    v45 = v44;
    sub_1D5C17350();
    swift_allocError();
    v11 = v46;
    *v46 = v45;
    v46[1] = v5;
    v14 = 5;
  }

LABEL_40:
  *(v11 + 40) = v14;
  swift_willThrow();
}

uint64_t FeedGroupExplicitSlotBundleArticleQuota.depthTransform.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota(0) + 24);

  return sub_1D6C07A34(v4, a1);
}

uint64_t type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota(uint64_t a1)
{
  result = qword_1EDF130F8;
  if (!qword_1EDF130F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C07A34(uint64_t a1, uint64_t a2)
{
  sub_1D5E3B6E0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C07A9C()
{
  v1 = 0x6F69746172;
  if (*v0 != 1)
  {
    v1 = 0x6172546874706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953459315;
  }
}

uint64_t sub_1D6C07AF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6C0869C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6C07B20(uint64_t a1)
{
  v2 = sub_1D6C083B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C07B5C(uint64_t a1)
{
  v2 = sub_1D6C083B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupExplicitSlotBundleArticleQuota.encode(to:)(void *a1)
{
  sub_1D6C0840C(0, &qword_1EC8937D8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C083B8();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D726442C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D726441C();
    type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota(0);
    v10[13] = 2;
    sub_1D72593CC();
    sub_1D6C0887C(&qword_1EDF188D0, MEMORY[0x1E69E34B0]);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FeedGroupExplicitSlotBundleArticleQuota.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D5E3B6E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C0840C(0, &qword_1EC8937E8, MEMORY[0x1E69E6F48]);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C083B8();
  sub_1D7264B0C();
  if (!v2)
  {
    v16 = v21;
    v25 = 0;
    *v15 = sub_1D72642FC();
    v24 = 1;
    sub_1D72642DC();
    v15[1] = v18;
    sub_1D72593CC();
    v23 = 2;
    sub_1D6C0887C(&qword_1EDF188B8, MEMORY[0x1E69E34C0]);
    sub_1D726427C();
    (*(v16 + 8))(v11, v22);
    sub_1D6C08470(v7, v15 + *(v12 + 24), sub_1D5E3B6E0);
    sub_1D6C08470(v15, v20, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s8NewsFeed0B35GroupExplicitSlotBundleArticleQuotaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72593CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B6E0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C087B8(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota(0) + 24);
  v20 = *(v18 + 48);
  sub_1D6C07A34(a1 + v19, v17);
  sub_1D6C07A34(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1D6C0881C(v17, sub_1D5E3B6E0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1D6C07A34(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1D6C0881C(v17, sub_1D6C087B8);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v20], v4);
  sub_1D6C0887C(&unk_1EDF188C0, MEMORY[0x1E69E34B8]);
  v23 = sub_1D7261FBC();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1D6C0881C(v17, sub_1D5E3B6E0);
  return (v23 & 1) != 0;
}

unint64_t sub_1D6C083B8()
{
  result = qword_1EC8937E0;
  if (!qword_1EC8937E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937E0);
  }

  return result;
}

void sub_1D6C0840C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C083B8();
    v7 = a3(a1, &type metadata for FeedGroupExplicitSlotBundleArticleQuota.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C08470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6C08500(uint64_t a1)
{
  sub_1D5E3B6E0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D6C08598()
{
  result = qword_1EC8937F0;
  if (!qword_1EC8937F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937F0);
  }

  return result;
}

unint64_t sub_1D6C085F0()
{
  result = qword_1EC8937F8;
  if (!qword_1EC8937F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937F8);
  }

  return result;
}

unint64_t sub_1D6C08648()
{
  result = qword_1EC893800[0];
  if (!qword_1EC893800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC893800);
  }

  return result;
}

uint64_t sub_1D6C0869C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953459315 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746172 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6172546874706564 && a2 == 0xEE006D726F66736ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

void sub_1D6C087B8(uint64_t a1)
{
  if (!qword_1EC889AD8)
  {
    sub_1D5E3B6E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC889AD8);
    }
  }
}

uint64_t sub_1D6C0881C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C0887C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D72593CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FeedCursorReference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if ((v3 & 0x4000000000000000) != 0)
  {
    if ((v4 & 0x4000000000000000) != 0)
    {
      v8 = *(v2 + 80);
      v7 = *(v2 + 88);

      LOBYTE(v7) = static FeedCursorContainer.== infix(_:_:)(v3 & 0xBFFFFFFFFFFFFFFFLL, v4 & 0xBFFFFFFFFFFFFFFFLL, v8, v7);
      sub_1D6C08970();
      return v7 & 1;
    }

    return 0;
  }

  if ((v4 & 0x4000000000000000) != 0)
  {
    return 0;
  }

  if (*(v3 + 16) == *(v4 + 16) && *(v3 + 24) == *(v4 + 24))
  {
    return 1;
  }

  return sub_1D72646CC();
}

void FeedCursorReference.serviceContext.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = v1[2];
  if ((v5 & 0x4000000000000000) != 0)
  {
    v12 = *(v3 + 80);
    v11 = *(v3 + 88);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(a1 + 24) = swift_getAssociatedTypeWitness();
    *(a1 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

    FeedCursorContainer.serviceContext.getter(v5 & 0xBFFFFFFFFFFFFFFFLL, v12, v11, boxed_opaque_existential_1);
    goto LABEL_7;
  }

  v6 = qword_1EDF37050;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v4 + 80);
  v8 = *(v4 + 88);

  v10 = FeedCursorStoreManager.get<A>(token:)(v9, v7, v8);
  sub_1D6C08970();
  if ((~v10 & 0xF000000000000007) == 0)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_7:

    sub_1D6C08970();
    return;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(a1 + 24) = swift_getAssociatedTypeWitness();
  *(a1 + 32) = swift_getAssociatedConformanceWitness();
  v14 = __swift_allocate_boxed_opaque_existential_1(a1);
  FeedCursorContainer.serviceContext.getter(v10, v7, v8, v14);
  sub_1D6C08970();

  sub_1D5BD9F54(v10);
}

uint64_t FeedCursorReference.identifier.getter(uint64_t a1)
{
  v1 = sub_1D6C08E2C();

  return v1;
}

uint64_t FeedCursorReference.__allocating_init(cursorContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FeedCursorReference.init(cursorContainer:)(a1);
  return v2;
}

unint64_t sub_1D6C08D2C()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x4000000000000000) != 0)
  {

    return v1 & 0xBFFFFFFFFFFFFFFFLL;
  }

  else
  {

    v3 = FeedCursorStore.get(token:)(v2);
    sub_1D6C08970();
    return v3;
  }
}

uint64_t FeedCursorReference.__deallocating_deinit()
{
  sub_1D6C08970();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C08DE4(uint64_t a1)
{
  v1 = sub_1D6C08E2C();

  return v1;
}

uint64_t sub_1D6C08E2C()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x4000000000000000) != 0)
  {
    return sub_1D5BFB900(v1 & 0xBFFFFFFFFFFFFFFFLL);
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_1D6C08EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D6C08EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 8))
  {
    return (*a1 + 63);
  }

  v3 = (((*a1 >> 57) >> 5) & 1 | (2 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C08F50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = (v3 | (v3 << 57)) & 0x7000000000000007;
    }
  }

  return result;
}

void sub_1D6C09004()
{
  if (*(v0 + 24) >= 2u)
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    v4 = *v0;
    v8[0] = v4;
    v8[1] = v3;
    v8[2] = v2;
    v9 = 6;
    sub_1D62B6240(v4, v3, v2, 2);
    v5 = sub_1D703E0C8(v8, &v9);
    if (!v1)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v3;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }
}

void sub_1D6C090D8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a1;
  v65 = a2;
  v66 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v66, v3);
  v64 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v61 - v7;
  v9 = type metadata accessor for FormatOption(0);
  v67 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27CBC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v62 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v61 - v21;
  v23 = sub_1D72585BC();
  v68 = *(v23 - 8);
  v69 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v61 - v29;
  v31 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = (&v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *v2;
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      v36 = v70;
      sub_1D6D4F770(v73, *v2, v18);
      if (!v36)
      {
        v38 = v68;
        v37 = v69;
        if ((*(v68 + 48))(v18, 1, v69) == 1)
        {
          sub_1D5D28308(v18, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v39 = 0xD00000000000002BLL;
          v39[1] = 0x80000001D73ED3A0;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        else
        {
          v59 = *(v38 + 32);
          v59(v26, v18, v37);
          v59(v65, v26, v37);
        }
      }
    }

    else
    {
      v46 = *(v2 + 8);
      v47 = *(v2 + 16);
      v48 = v73;

      FormatOptionCollection.subscript.getter(v35, v46, v8);
      if ((*(v67 + 48))(v8, 1, v9) == 1)
      {
        sub_1D5D28308(v8, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v49 = v64;
        *v64 = v35;
        *(v49 + 8) = v46;
        swift_storeEnumTagMultiPayload();
        v50 = *(v48 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        v52 = swift_allocError();
        if (v50)
        {
          sub_1D61E0EAC(v49, v51);
          v53 = v62;
          sub_1D725855C();
          v55 = v68;
          v54 = v69;
          if ((*(v68 + 48))(v53, 1, v69) == 1)
          {
            __break(1u);
          }

          else
          {
            sub_1D5C0AF00(v49, type metadata accessor for FormatLayoutError);
            (*(v55 + 32))(v65, v53, v54);
          }
        }

        else
        {
          sub_1D61E0EAC(v49, v51);
          swift_willThrow();
          sub_1D5C0AF00(v49, type metadata accessor for FormatLayoutError);
        }
      }

      else
      {

        v56 = v8;
        v57 = v63;
        sub_1D5D247E0(v56, v63);

        v58 = v70;
        sub_1D6B744A8(v48, &v71);
        if (!v58)
        {

          sub_1D6B80238(v71, v35, v46, v47, v48, v65);
        }

        sub_1D5C0AF00(v57, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    v40 = v70;
    sub_1D6B7C374(*(v73 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v34);
    if (!v40)
    {
      LOBYTE(v71) = v35;
      sub_1D6B44234(v34, v22);
      v42 = v68;
      v41 = v69;
      if ((*(v68 + 48))(v22, 1, v69) == 1)
      {
        sub_1D5D28308(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v44 = v43;
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000036, 0x80000001D73ED3D0);
        MEMORY[0x1DA6F9910](*v34, v34[1]);
        MEMORY[0x1DA6F9910](46, 0xE100000000000000);
        v45 = v72;
        *v44 = v71;
        v44[1] = v45;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D5C0AF00(v34, type metadata accessor for FeedHeadline);
      }

      else
      {
        sub_1D5C0AF00(v34, type metadata accessor for FeedHeadline);
        v60 = *(v42 + 32);
        v60(v30, v22, v41);
        v60(v65, v30, v41);
      }
    }
  }
}

BOOL _s8NewsFeed28FormatVideoPlayerNodeBindingO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      sub_1D62B628C(*a1, v3, v4, 0);
      sub_1D62B628C(v6, v7, v8, 0);
      return v6 == v2;
    }

    goto LABEL_20;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      v12 = v2 == v6 && v3 == v7;
      if (v12 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D62B6240(v6, v7, v8, 2);
        sub_1D62B6240(v2, v3, v4, 2);
        sub_1D62B6240(v6, v7, v8, 2);
        sub_1D62B6240(v2, v3, v4, 2);
        v13 = sub_1D6341C50(v4, v8);
        sub_1D62B628C(v2, v3, v4, 2);
        sub_1D62B628C(v6, v7, v8, 2);
        sub_1D62B628C(v6, v7, v8, 2);
        sub_1D62B628C(v2, v3, v4, 2);
        return (v13 & 1) != 0;
      }

      sub_1D62B6240(v6, v7, v8, 2);
      sub_1D62B6240(v2, v3, v4, 2);
      sub_1D62B628C(v2, v3, v4, 2);
      v14 = v6;
      v15 = v7;
      v16 = v8;
      v17 = 2;
LABEL_21:
      sub_1D62B628C(v14, v15, v16, v17);
      return 0;
    }

LABEL_20:
    sub_1D62B6240(v6, v7, v8, v9);
    sub_1D62B628C(v2, v3, v4, v5);
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    goto LABEL_21;
  }

  if (v9 != 1)
  {
    goto LABEL_20;
  }

  v10 = *a2;
  sub_1D62B628C(*a1, v3, v4, 1);
  sub_1D62B628C(v6, v7, v8, 1);
  if (!(v2 >> 6))
  {
    return v10 < 0x40 && (v6 & 0x3F) == v2;
  }

  if (v2 >> 6 != 1)
  {
    return (v10 & 0xC0) == 0x80;
  }

  return (v10 & 0xC0) == 0x40 && ((v6 ^ v2) & 1) == 0;
}

void sub_1D6C09C54(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  if (*(v1 + 24) >= 2u)
  {
    v34 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v35[0] = *v1;
    v35[1] = v19;
    v35[2] = v18;
    v36 = 6;

    v21 = sub_1D703E0C8(v35, &v36);
    if (!v3)
    {
      v33 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v34 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D28308(v13, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if (*(a1 + 48))
        {
          v22 = 1;
LABEL_8:
          (*(v34 + 56))(v17, v22, 1, v5);
          sub_1D5D28308(v17, &qword_1EDF337F0, type metadata accessor for FormatOption);
          return;
        }

        type metadata accessor for FormatLayoutError(0);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        *v25 = v20;
        v25[1] = v19;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v35[0] = v9[2];
        v23 = v33;

        FormatOptionValue.type.getter(v24, &v36);
        if (sub_1D6183C84(v36, v23))
        {
          swift_bridgeObjectRelease_n();
          sub_1D5D247E0(v9, v17);
          v22 = 0;
          goto LABEL_8;
        }

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v27 = v26;
        v29 = *v9;
        v28 = v9[1];
        v35[0] = v9[2];

        FormatOptionValue.type.getter(v30, &v36);
        v31 = v36;
        *v27 = v29;
        *(v27 + 8) = v28;
        *(v27 + 16) = v31;
        *(v27 + 24) = v23;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5C0AF00(v9, type metadata accessor for FormatOption);
      }
    }
  }
}

unint64_t sub_1D6C0A054(uint64_t a1)
{
  result = sub_1D6C0A07C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C0A07C()
{
  result = qword_1EC893888;
  if (!qword_1EC893888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893888);
  }

  return result;
}

unint64_t sub_1D6C0A0D0(void *a1)
{
  a1[1] = sub_1D66CE964();
  a1[2] = sub_1D66F5C80();
  result = sub_1D6C0A108();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C0A108()
{
  result = qword_1EC893890;
  if (!qword_1EC893890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893890);
  }

  return result;
}

id _s8NewsFeed22PublisherLogoProcessorC7processySo7UIImageCSg5TeaUI25ProcessedImageRequestType_pF_0(uint64_t a1)
{
  sub_1D5B68374(a1, v14);
  sub_1D61BA350();
  type metadata accessor for PublisherLogoProcessorRequest(0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle), *(v13 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle + 24));
  result = sub_1D725D2CC();
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v4 = sub_1D726203C();

  v5 = [v3 initWithContentsOfFile_];

  if (!v5)
  {

    return 0;
  }

  if (*(v13 + 64) == 1 && (*(v13 + 65) & 1) == 0)
  {
    v6 = [v5 imageWithRenderingMode_];

    v7 = [objc_opt_self() whiteColor];
    v5 = sub_1D726366C();
  }

  v9 = *(v13 + 40);
  v8 = *(v13 + 48);
  [v5 size];
  if (v8 >= v10 && ([v5 size], v9 >= v11))
  {

    return v5;
  }

  else
  {
    v12 = sub_1D726360C();

    return v12;
  }
}

id _s8NewsFeed22PublisherLogoProcessorC7process_14imageFromCacheSo7UIImageC5TeaUI25ProcessedImageRequestType_p_AGtF_0(uint64_t a1, void *a2)
{
  sub_1D5B68374(a1, v6);
  sub_1D61BA350();
  type metadata accessor for PublisherLogoProcessorRequest(0);
  if (swift_dynamicCast())
  {
    if (*(v5 + 64) == 1)
    {
      v2 = [a2 imageWithRenderingMode_];

      return v2;
    }
  }

  return a2;
}

uint64_t sub_1D6C0A4BC(uint64_t a1, void *a2, uint64_t *a3)
{
  v25 = a2;
  v5 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for FormatLayoutViewRoute(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v20 = a3[3];
  sub_1D6C0CEBC(a1, v16, type metadata accessor for FormatLayoutViewRoute);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D61CCC84(0);
    v22 = *(v21 + 48);
    sub_1D5C21C8C(v16, v8, type metadata accessor for FeedItem);
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_1D6C0A6D4(v8, v25, &v26);
    sub_1D6C0CE08(v8, type metadata accessor for FeedItem);
    v23 = &v16[v22];
  }

  else
  {
    sub_1D5C21C8C(v16, v12, type metadata accessor for FeedItem);
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_1D6C0A6D4(v12, v25, &v26);
    v23 = v12;
  }

  return sub_1D6C0CE08(v23, type metadata accessor for FeedItem);
}

void sub_1D6C0A6D4(uint64_t a1, void *a2, uint64_t *a3)
{
  v286 = a2;
  v290 = a1;
  v4 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v280 = (&v241 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v254 = type metadata accessor for WebEmbedDataVisualization(0);
  v252 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254, v7);
  v248 = (&v241 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6C0CE68(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v253 = &v241 - v11;
  sub_1D6C0CE68(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v262 = &v241 - v14;
  v279 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v279, v15);
  v281 = &v241 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C0CE68(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v277 = &v241 - v19;
  v275 = type metadata accessor for FormatCustomItem.Action(0);
  v273 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275, v20);
  v260 = &v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v261 = &v241 - v24;
  v271 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v271, v25);
  v278 = &v241 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_1D72585BC();
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289, v27);
  v264 = &v241 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v245 = &v241 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v247 = &v241 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v243 = &v241 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v258 = &v241 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v259 = &v241 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v276 = &v241 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v274 = &v241 - v49;
  sub_1D6C0CE68(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v263 = &v241 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v268 = &v241 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v270 = &v241 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v269 = &v241 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v272 = &v241 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v244 = &v241 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v246 = &v241 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v242 = &v241 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v250 = &v241 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v251 = &v241 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v256 = &v241 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = &v241 - v85;
  MEMORY[0x1EEE9AC00](v87, v88);
  v257 = &v241 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v265 = &v241 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v267 = &v241 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v266 = &v241 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v102 = &v241 - v101;
  MEMORY[0x1EEE9AC00](v103, v104);
  v106 = &v241 - v105;
  MEMORY[0x1EEE9AC00](v107, v108);
  v110 = &v241 - v109;
  v111 = type metadata accessor for FeedHeadline(0);
  v255 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v112);
  v249 = &v241 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v114, v115);
  v117 = (&v241 - v116);
  v118 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = &v241 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a3[1];
  v282 = *a3;
  v283 = v122;
  v123 = a3[3];
  v284 = a3[2];
  v285 = v123;
  sub_1D6C0CEBC(v290, v121, type metadata accessor for FeedItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      sub_1D5C21C8C(v121, v117, type metadata accessor for FeedHeadline);
      v163 = [v117[5] identifier];
      if (!v163)
      {
        sub_1D726207C();
        v163 = sub_1D726203C();
      }

      v164 = [objc_opt_self() nss:v163 NewsURLForArticleID:?];

      if (v164)
      {
        sub_1D72584EC();

        v165 = 0;
      }

      else
      {
        v165 = 1;
      }

      v201 = v286;
      (*(v288 + 56))(v106, v165, 1, v289);
      sub_1D5EB8540(v106, v110);
      sub_1D6C0C908(v110, v287, v201, v282, v283, v284, v285);
      sub_1D6C0CF24(v110, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v202 = type metadata accessor for FeedHeadline;
      goto LABEL_56;
    case 4u:
      v143 = v281;
      sub_1D5C21C8C(v121, v281, type metadata accessor for FeedWebEmbed);
      v144 = v279;
      sub_1D6C0CF80(v143 + *(v279 + 36), v86, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v145 = v288;
      v146 = v289;
      if ((*(v288 + 48))(v86, 1, v289) != 1)
      {
        v189 = v258;
        (*(v145 + 32))(v258, v86, v146);
        v190 = v256;
        (*(v145 + 16))(v256, v189, v146);
        (*(v145 + 56))(v190, 0, 1, v146);
        sub_1D6C0C908(v190, v287, v286, v282, v283, v284, v285);
        sub_1D6C0CF24(v190, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        (*(v145 + 8))(v189, v146);
        goto LABEL_45;
      }

      sub_1D6C0CF24(v86, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v147 = v262;
      sub_1D6C0CF80(v143 + *(v144 + 48), v262, qword_1EDF42030, type metadata accessor for FeedHeadline);
      if ((*(v255 + 48))(v147, 1, v111) != 1)
      {
        v208 = v249;
        sub_1D5C21C8C(v147, v249, type metadata accessor for FeedHeadline);
        v209 = objc_opt_self();
        v210 = sub_1D726203C();
        v211 = [v209 nss:v210 NewsURLForArticleID:?];

        if (v211)
        {
          v212 = v250;
          sub_1D72584EC();

          v213 = 0;
          v214 = v285;
          v215 = v284;
          v216 = v251;
        }

        else
        {
          v213 = 1;
          v214 = v285;
          v215 = v284;
          v216 = v251;
          v212 = v250;
        }

        (*(v145 + 56))(v212, v213, 1, v146);
        sub_1D5EB8540(v212, v216);
        sub_1D6C0C908(v216, v287, v286, v282, v283, v215, v214);
        sub_1D6C0CF24(v216, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D6C0CE08(v143, type metadata accessor for FeedWebEmbed);
        v125 = type metadata accessor for FeedHeadline;
        v126 = v208;
        goto LABEL_4;
      }

      sub_1D6C0CF24(v147, qword_1EDF42030, type metadata accessor for FeedHeadline);
      v148 = v253;
      sub_1D6C0CF80(v143 + *(v144 + 52), v253, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      if ((*(v252 + 48))(v148, 1, v254) == 1)
      {
        sub_1D6C0CF24(v148, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_45:
        v125 = type metadata accessor for FeedWebEmbed;
        v126 = v143;
        goto LABEL_4;
      }

      v217 = v248;
      sub_1D6C0CEBC(v148, v248, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D6C0CE08(v217, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6C0CE08(v148, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_45;
      }

      v218 = *v217;
      sub_1D6C0CE08(v148, type metadata accessor for WebEmbedDataVisualization);
      v219 = v218 >> 61;
      if ((v218 >> 61) > 2)
      {

        goto LABEL_45;
      }

      if (v219)
      {
        if (v219 == 1)
        {
          v220 = *((v218 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          if (*(v220 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8) && (v221 = *(v220 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16)) != 0 || (v221 = *(v220 + 56)) != 0)
          {
            swift_unknownObjectRetain();

            v222 = [v221 identifier];
            v223 = v247;
            if (!v222)
            {
              sub_1D726207C();
              v222 = sub_1D726203C();
            }

            v224 = [objc_opt_self() nss:v222 NewsURLForTagID:4 feedConfiguration:?];

            sub_1D72584EC();
            v225 = v246;
            v226 = v289;
            (*(v145 + 16))(v246, v223, v289);
            (*(v145 + 56))(v225, 0, 1, v226);
            sub_1D6C0C908(v225, v287, v286, v282, v283, v284, v285);
            swift_unknownObjectRelease();

            sub_1D6C0CF24(v225, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            (*(v145 + 8))(v223, v226);
          }

          v227 = v143;
LABEL_85:
          sub_1D6C0CE08(v227, type metadata accessor for FeedWebEmbed);

          return;
        }

        v234 = v287;

        v235 = SportsBracketGroupDataVisualization.routeTag.getter();
        if (v235)
        {
          v236 = [v235 identifier];
          if (!v236)
          {
            sub_1D726207C();
            v236 = sub_1D726203C();
          }

          v237 = [objc_opt_self() nss:v236 NewsURLForTagID:7 feedConfiguration:?];

          v238 = v245;
          sub_1D72584EC();

          v239 = v244;
          v240 = v289;
          (*(v145 + 16))(v244, v238, v289);
          (*(v145 + 56))(v239, 0, 1, v240);
          sub_1D6C0C908(v239, v234, v286, v282, v283, v284, v285);
          swift_unknownObjectRelease();

          sub_1D6C0CF24(v239, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          (*(v145 + 8))(v238, v240);
          v227 = v281;
          goto LABEL_85;
        }

        sub_1D6C0CE08(v143, type metadata accessor for FeedWebEmbed);
      }

      else
      {
        v228 = *(*(v218 + 16) + 56);
        if (v228)
        {

          if ([swift_unknownObjectRetain() isRouteable])
          {
            v229 = [v228 identifier];
            if (!v229)
            {
              sub_1D726207C();
              v229 = sub_1D726203C();
            }

            v230 = [objc_opt_self() nss:v229 NewsURLForTagID:?];

            v231 = v243;
            sub_1D72584EC();

            v232 = v242;
            v233 = v289;
            (*(v145 + 16))(v242, v231, v289);
            (*(v145 + 56))(v232, 0, 1, v233);
            sub_1D6C0C908(v232, v287, v286, v282, v283, v284, v285);

            swift_unknownObjectRelease();
            sub_1D6C0CF24(v232, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            (*(v145 + 8))(v231, v233);
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        sub_1D6C0CE08(v143, type metadata accessor for FeedWebEmbed);
      }

      return;
    case 5u:
      v149 = *(v121 + 7);
      v297 = *(v121 + 6);
      *v298 = v149;
      *&v298[9] = *(v121 + 121);
      v150 = *(v121 + 1);
      v291 = *v121;
      v292 = v150;
      v151 = *(v121 + 3);
      v293 = *(v121 + 2);
      v152 = *(v121 + 4);
      v296 = *(v121 + 5);
      v294 = v151;
      v295 = v152;
      v153 = [v291 identifier];
      if (!v153)
      {
        sub_1D726207C();
        v153 = sub_1D726203C();
      }

      v154 = [objc_opt_self() nss:v153 NewsURLForIssueID:?];

      v155 = v265;
      if (v154)
      {
        sub_1D72584EC();

        v156 = 0;
      }

      else
      {
        v156 = 1;
      }

      v199 = v286;
      (*(v288 + 56))(v155, v156, 1, v289);
      v200 = v267;
      sub_1D5EB8540(v155, v267);
      sub_1D6C0C908(v200, v287, v199, v282, v283, v284, v285);
      sub_1D6C0CF24(v200, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5ECF320(&v291);
      return;
    case 7u:
      v127 = *(v121 + 7);
      v297 = *(v121 + 6);
      *v298 = v127;
      *&v298[16] = *(v121 + 8);
      LOBYTE(v299) = v121[144];
      v128 = *(v121 + 3);
      v293 = *(v121 + 2);
      v129 = *(v121 + 4);
      v130 = *(v121 + 5);
      v294 = v128;
      v295 = v129;
      v296 = v130;
      v131 = *(v121 + 1);
      v291 = *v121;
      v292 = v131;
      v132 = [v131 identifier];
      if (!v132)
      {
        sub_1D726207C();
        v132 = sub_1D726203C();
      }

      v133 = [objc_opt_self() nss:v132 NewsURLForTagID:?];

      v134 = v274;
      sub_1D72584EC();

      v135 = v288;
      v136 = v289;
      (*(v288 + 16))(v102, v134, v289);
      (*(v135 + 56))(v102, 0, 1, v136);
      sub_1D6C0C908(v102, v287, v286, v282, v283, v284, v285);
      sub_1D6C0CF24(v102, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v135 + 8))(v134, v136);
      sub_1D5EE5B54(&v291);
      return;
    case 8u:
      v166 = v121;
      v121 = v278;
      sub_1D5C21C8C(v166, v278, type metadata accessor for FeedCustomItem);
      v167 = *(v271 + 20);
      v168 = &v121[v167 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 24)];
      v169 = v277;
      sub_1D6C0CF80(v168, v277, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
      if ((*(v273 + 48))(v169, 1, v275) == 1)
      {
        sub_1D6C0CE08(v121, type metadata accessor for FeedCustomItem);
        sub_1D6C0CF24(v169, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
        return;
      }

      v191 = v261;
      sub_1D5C21C8C(v169, v261, type metadata accessor for FormatCustomItem.Action);
      v192 = v260;
      sub_1D6C0CEBC(v191, v260, type metadata accessor for FormatCustomItem.Action);
      v193 = v288;
      v194 = v259;
      v195 = v192;
      v196 = v289;
      (*(v288 + 32))(v259, v195, v289);
      v197 = v257;
      (*(v193 + 16))(v257, v194, v196);
      (*(v193 + 56))(v197, 0, 1, v196);
      sub_1D6C0C908(v197, v287, v286, v282, v283, v284, v285);
      sub_1D6C0CF24(v197, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v193 + 8))(v194, v196);
      sub_1D6C0CE08(v191, type metadata accessor for FormatCustomItem.Action);
      v124 = type metadata accessor for FeedCustomItem;
LABEL_3:
      v125 = v124;
      v126 = v121;
      goto LABEL_4;
    case 0xCu:
      v117 = v280;
      sub_1D5C21C8C(v121, v280, type metadata accessor for FeedRecipe);
      v170 = v117[7];
      v171 = [v170 identifier];
      if (!v171)
      {
        sub_1D726207C();
        v171 = sub_1D726203C();
      }

      v172 = [v170 articles];
      sub_1D5B5D6A0();
      v173 = sub_1D726267C();

      if (v173 >> 62)
      {
        v174 = sub_1D7263BFC();
      }

      else
      {
        v174 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v175 = v288;
      if (!v174)
      {
        v177 = 0;
        v178 = v289;
        goto LABEL_54;
      }

      if ((v173 & 0xC000000000000001) != 0)
      {
        v176 = MEMORY[0x1DA6FB460](0, v173);
      }

      else
      {
        if (!*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v176 = *(v173 + 32);
        swift_unknownObjectRetain();
      }

      v177 = [v176 identifier];
      swift_unknownObjectRelease();
      v178 = v289;
      if (!v177)
      {
        sub_1D726207C();
        v177 = sub_1D726203C();
LABEL_54:
      }

      v203 = [objc_opt_self() nss:v171 NewsURLForRecipeID:v177 articleID:?];

      v204 = v264;
      sub_1D72584EC();

      v205 = v263;
      (*(v175 + 16))(v263, v204, v178);
      (*(v175 + 56))(v205, 0, 1, v178);
      sub_1D6C0C908(v205, v287, v286, v282, v283, v284, v285);
      sub_1D6C0CF24(v205, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v175 + 8))(v204, v178);
      v202 = type metadata accessor for FeedRecipe;
LABEL_56:
      v125 = v202;
      v126 = v117;
LABEL_4:
      sub_1D6C0CE08(v126, v125);
      return;
    case 0xDu:
      v157 = [*(v121 + 2) identifier];
      if (!v157)
      {
        sub_1D726207C();
        v157 = sub_1D726203C();
      }

      v158 = [objc_opt_self() nss:v157 NewsURLForTagID:?];

      v159 = v276;
      sub_1D72584EC();

      v160 = v288;
      v161 = v266;
      v162 = v289;
      (*(v288 + 16))(v266, v159, v289);
      (*(v160 + 56))(v161, 0, 1, v162);
      sub_1D6C0C908(v161, v287, v286, v282, v283, v284, v285);
      swift_unknownObjectRelease();

      sub_1D6C0CF24(v161, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v160 + 8))(v159, v162);
      return;
    case 0xEu:
      v179 = *(v121 + 11);
      v300 = *(v121 + 10);
      v301 = v179;
      v302 = *(v121 + 12);
      v180 = *(v121 + 7);
      v297 = *(v121 + 6);
      *v298 = v180;
      v181 = *(v121 + 9);
      *&v298[16] = *(v121 + 8);
      v299 = v181;
      v182 = *(v121 + 3);
      v293 = *(v121 + 2);
      v183 = *(v121 + 4);
      v296 = *(v121 + 5);
      v294 = v182;
      v295 = v183;
      v184 = *v121;
      v292 = *(v121 + 1);
      v291 = v184;
      v185 = [*(&v182 + 1) identifier];
      if (!v185)
      {
        sub_1D726207C();
        v185 = sub_1D726203C();
      }

      v186 = [objc_opt_self() nss:v185 NewsURLForPuzzleID:?];

      v187 = v269;
      if (v186)
      {
        sub_1D72584EC();

        v188 = 0;
      }

      else
      {
        v188 = 1;
      }

      v206 = v286;
      (*(v288 + 56))(v187, v188, 1, v289);
      v207 = v272;
      sub_1D5EB8540(v187, v272);
      sub_1D6C0C908(v207, v287, v206, v282, v283, v284, v285);
      sub_1D6C0CF24(v207, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5F2DF58(&v291);
      return;
    case 0xFu:
      v138 = *(v121 + 3);
      v137 = *(v121 + 4);
      v139 = [*(v121 + 7) identifier];
      if (!v139)
      {
        sub_1D726207C();
        v139 = sub_1D726203C();
      }

      v140 = [objc_opt_self() nss:v139 NewsURLForPuzzleTypeID:?];

      v141 = v268;
      if (v140)
      {
        sub_1D72584EC();

        v142 = 0;
      }

      else
      {
        v142 = 1;
      }

      v198 = v270;
      (*(v288 + 56))(v141, v142, 1, v289);
      sub_1D5EB8540(v141, v198);
      sub_1D6C0C908(v198, v287, v286, v282, v283, v284, v285);
      sub_1D6C0CF24(v198, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5BF6680(v138, v137);
      swift_unknownObjectRelease();

      return;
    case 0x12u:
      return;
    default:
      v124 = type metadata accessor for FeedItem;
      goto LABEL_3;
  }
}

uint64_t sub_1D6C0C908(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v35 = a2;
  v36 = a5;
  v30 = a4;
  v34 = a3;
  v8 = sub_1D725E84C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E6968FB0];
  sub_1D6C0CE68(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v37 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  v20 = sub_1D72585BC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C0CF80(a1, v19, &qword_1EDF45B40, v12);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1D6C0CF24(v19, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  (*(v21 + 32))(v24, v19, v20);
  (*(v9 + 104))(v33, *MEMORY[0x1E69D7FB8], v8);
  v26 = *(v35 + 32);
  v39 = sub_1D725A60C();
  v40 = sub_1D61CAB08();
  v38 = v26;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  sub_1D725E36C();
  swift_allocObject();

  v27 = v34;
  sub_1D725E34C();
  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }

  v28 = v37;
  if (v36)
  {
    sub_1D69F65B4(v24, v30, v36, v31, v32, v37);
  }

  else
  {
    (*(v21 + 16))(v37, v24, v20);
  }

  swift_getObjectType();
  (*(v21 + 56))(v28, 0, 1, v20);

  sub_1D725D97C();

  sub_1D6C0CF24(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_1D6C0CD40()
{
  swift_unknownObjectRelease();

  sub_1D6C0CF24(v0 + 40, &unk_1EDF232F0, sub_1D6C0CDA4);

  return swift_deallocClassInstance();
}

unint64_t sub_1D6C0CDA4()
{
  result = qword_1EDF23300;
  if (!qword_1EDF23300)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF23300);
  }

  return result;
}

uint64_t sub_1D6C0CE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6C0CE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6C0CEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C0CF24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6C0CE68(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C0CF80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6C0CE68(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1D6C0CFEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = v6;
  v50 = a5;
  v47 = a2;
  v48 = a4;
  v10 = sub_1D726378C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D726389C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = v17;
  sub_1D6C0E168(0);
  v52 = 0;
  v53 = 0;
  aBlock = 0;
  swift_allocObject();
  v6[6] = sub_1D725B2FC();
  v6[7] = 1;
  sub_1D5B5A498(0, &qword_1EC87FF58, 0x1E69DC738);
  v6[8] = 0;
  v6[9] = 0;
  v18 = a1;
  sub_1D726388C();
  v19 = v18;
  sub_1D726384C();
  v20 = objc_opt_self();
  v21 = [v20 secondaryLabelColor];
  sub_1D726380C();
  v22 = [v20 clearColor];
  sub_1D72637FC();
  (*(v11 + 104))(v14, *MEMORY[0x1E69DC500], v10);
  sub_1D726379C();
  v49 = v19;

  v23 = sub_1D72638AC();
  v7[2] = v23;
  [v23 setShowsMenuAsPrimaryAction_];
  [v7[2] setPreferredBehavioralStyle_];
  v24 = v7[2];
  v55 = sub_1D6C0DB14;
  v56 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1D5C38428;
  v54 = &block_descriptor_86;
  v25 = _Block_copy(&aBlock);
  v26 = v24;

  [v26 setConfigurationUpdateHandler_];
  _Block_release(v25);

  if (a3)
  {
    v27 = a3;
    v28 = v7[2];
    sub_1D5B5A498(0, &qword_1EC885090, 0x1E69DCC60);
    sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D72816C0;
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    v32 = v50;
    *(v31 + 16) = v48;
    *(v31 + 24) = v32;
    v55 = sub_1D6C0E730;
    v56 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1D6C0D5DC;
    v54 = &block_descriptor_12_1;
    v33 = _Block_copy(&aBlock);

    v34 = v28;

    v35 = [v30 elementWithUncachedProvider_];
    _Block_release(v33);
    *(v29 + 32) = v35;
    v37 = sub_1D726340C(v47, v27, 0, 0, 0, 0, 1, -1, v36, v29);
  }

  else
  {
    v38 = v7[2];
    sub_1D5B5A498(0, &qword_1EC885090, 0x1E69DCC60);
    sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D72816C0;
    v40 = objc_opt_self();
    v41 = swift_allocObject();
    v42 = v50;
    *(v41 + 16) = v48;
    *(v41 + 24) = v42;
    v55 = sub_1D6C0E1E4;
    v56 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1D6C0D5DC;
    v54 = &block_descriptor_6_2;
    v43 = _Block_copy(&aBlock);
    v34 = v38;

    v44 = [v40 elementWithUncachedProvider_];
    _Block_release(v43);
    *(v39 + 32) = v44;
    v37 = sub_1D72633FC();
  }

  v45 = v37;
  [v34 setMenu_];

  return v7;
}

double sub_1D6C0D5DC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D6C0E244, v4);

  return result;
}

void sub_1D6C0D670(uint64_t a1, uint64_t a2)
{
  sub_1D5B5A498(0, &qword_1EC883280, 0x1E69DCC78);
  v3 = sub_1D726265C();
  (*(a2 + 16))(a2, v3);
}

void *sub_1D6C0D6EC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = v6;
  v39 = a5;
  v41 = a4;
  v11 = sub_1D726378C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D726389C();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = v18;
  sub_1D6C0E168(0);
  v43 = 0;
  v44 = 0;
  aBlock = 0;
  swift_allocObject();
  v6[6] = sub_1D725B2FC();
  v6[7] = a1;
  v6[8] = a2;
  v6[9] = a3;
  v38 = sub_1D5B5A498(0, &qword_1EC87FF58, 0x1E69DC738);
  swift_getObjectType();
  aBlock = a1;
  v40 = a1;
  v19 = a3;
  v20 = sub_1D725CC2C();
  sub_1D726388C();
  v21 = v20;
  sub_1D726384C();
  v22 = objc_opt_self();
  v23 = [v22 secondaryLabelColor];
  sub_1D726380C();
  v24 = [v22 clearColor];
  sub_1D72637FC();
  v25 = v11;
  v26 = v39;
  (*(v12 + 104))(v15, *MEMORY[0x1E69DC500], v25);
  sub_1D726379C();

  sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);
  v27 = swift_allocObject();
  *(v27 + 16) = v41;
  *(v27 + 24) = v26;

  sub_1D726375C();
  v28 = sub_1D72638AC();
  v7[2] = v28;
  v46 = sub_1D6C0DB14;
  v47 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1D5C38428;
  v45 = &block_descriptor_27_3;
  v29 = _Block_copy(&aBlock);
  v30 = v28;

  [v30 setConfigurationUpdateHandler_];
  _Block_release(v29);

  [v7[2] setPreferredBehavioralStyle_];
  v31 = v7[7];
  if (v31 >= 2)
  {
    v32 = v40;
    v33 = sub_1D725E67C();
    if (v33)
    {
      v34 = v33;

      v35 = v34 == v31;
    }

    else
    {
      v35 = 0;
    }

    v36 = v7[2];
    [v36 setSelected_];
  }

  else
  {
  }

  return v7;
}

uint64_t sub_1D6C0DB14(void *a1, __n128 a2)
{
  sub_1D6C0E24C(0, a2);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v56 - v25;
  *&v29 = MEMORY[0x1EEE9AC00](v27, v28).n128_u64[0];
  v31 = &v56 - v30;
  v32 = [a1 state];
  if (v32 == 2)
  {
    sub_1D72638BC();
    v37 = sub_1D726389C();
    v38 = *(*(v37 - 8) + 48);
    if (v38(v18, 1, v37))
    {
      sub_1D6C0E2A4(v18, v26, v39);
      sub_1D72638CC();
      sub_1D6C0E308(v18, v40);
    }

    else
    {
      sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      sub_1D72635DC();
      sub_1D726380C();
      sub_1D72638CC();
    }

    sub_1D72638BC();
    if (v38(v14, 1, v37))
    {
      sub_1D6C0E2A4(v14, v26, v50);
      sub_1D72638CC();
      return sub_1D6C0E308(v14, v51);
    }
  }

  else
  {
    if (v32 == 4)
    {
      sub_1D72638BC();
      v33 = sub_1D726389C();
      v34 = *(*(v33 - 8) + 48);
      if (v34(v31, 1, v33))
      {
        sub_1D6C0E2A4(v31, v26, v35);
        sub_1D72638CC();
        sub_1D6C0E308(v31, v36);
      }

      else
      {
        v45 = [objc_opt_self() labelColor];
        sub_1D726380C();
        sub_1D72638CC();
      }

      sub_1D72638BC();
      if (v34(v22, 1, v33))
      {
        sub_1D6C0E2A4(v22, v26, v46);
        sub_1D72638CC();
        return sub_1D6C0E308(v22, v47);
      }

      v49 = [objc_opt_self() systemFillColor];
      sub_1D72637FC();
      return sub_1D72638CC();
    }

    sub_1D72638BC();
    v41 = sub_1D726389C();
    v42 = *(*(v41 - 8) + 48);
    if (v42(v10, 1, v41))
    {
      sub_1D6C0E2A4(v10, v26, v43);
      sub_1D72638CC();
      sub_1D6C0E308(v10, v44);
    }

    else
    {
      v52 = [objc_opt_self() secondaryLabelColor];
      sub_1D726380C();
      sub_1D72638CC();
    }

    sub_1D72638BC();
    if (v42(v6, 1, v41))
    {
      sub_1D6C0E2A4(v6, v26, v53);
      sub_1D72638CC();
      return sub_1D6C0E308(v6, v54);
    }
  }

  v55 = [objc_opt_self() clearColor];
  sub_1D72637FC();
  return sub_1D72638CC();
}

uint64_t sub_1D6C0DFEC()
{
  sub_1D5B74328(*(v0 + 32), *(v0 + 40));

  sub_1D6C0E6DC(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25DebugFormatDockButtonItemC5Model33_04B0F6CACC242E5537990CDC3D0E42EDLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6C0E084(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6C0E0D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D6C0E138(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_1D6C0E168(uint64_t a1)
{
  if (!qword_1EC8938A8)
  {
    sub_1D5B49E48(255, &qword_1EC8938B0, &type metadata for DebugFormatDockBadge, MEMORY[0x1E69E6720]);
    v1 = sub_1D725B36C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8938A8);
    }
  }
}

double sub_1D6C0E1E8(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();

  return result;
}

void sub_1D6C0E24C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC892D70)
  {
    sub_1D726389C();
    v2 = sub_1D726393C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC892D70);
    }
  }
}

uint64_t sub_1D6C0E2A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D6C0E24C(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C0E308(uint64_t a1, __n128 a2)
{
  sub_1D6C0E24C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D6C0E364(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v27 = a2;
  v8 = sub_1D726378C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726389C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4[4] = 0;
  v4[5] = 0;
  v4[3] = v15;
  sub_1D6C0E168(0);
  v29 = 0;
  v30 = 0;
  aBlock = 0;
  swift_allocObject();
  v4[6] = sub_1D725B2FC();
  sub_1D5B5A498(0, &qword_1EC87FF58, 0x1E69DC738);
  v4[8] = 0;
  v4[9] = 0;
  v4[7] = 0;
  v16 = a1;
  sub_1D726388C();
  v17 = v16;
  sub_1D726384C();
  v18 = objc_opt_self();
  v19 = [v18 secondaryLabelColor];
  sub_1D726380C();
  v20 = [v18 clearColor];
  sub_1D72637FC();
  (*(v9 + 104))(v12, *MEMORY[0x1E69DC500], v8);
  sub_1D726379C();

  sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  *(v21 + 24) = a3;

  sub_1D726375C();
  v22 = sub_1D72638AC();
  v5[2] = v22;
  v32 = sub_1D6C0DB14;
  v33 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1D5C38428;
  v31 = &block_descriptor_21_1;
  v23 = _Block_copy(&aBlock);
  v24 = v22;

  [v24 setConfigurationUpdateHandler_];
  _Block_release(v23);

  [v5[2] setPreferredBehavioralStyle_];
  return v5;
}

void sub_1D6C0E6DC(void *a1, uint64_t a2, void *a3)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1D6C0E734()
{
  v1 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = *(v0 + 16);
  if (*(v0 + 32) == 1)
  {
    sub_1D6C0E8E8(0);
    swift_allocObject();
    v4 = v3;
    return sub_1D725BAFC();
  }

  else
  {
    v6 = *(v0 + 24);
    sub_1D5E3E824(v3, v6);
    sub_1D72620CC();
    sub_1D604FB70();
    sub_1D72620AC();
    sub_1D6C0E8E8(0);
    swift_allocObject();
    v7 = sub_1D725BB1C();
    sub_1D69DEE44(v3, v6, 0);
    return v7;
  }
}

uint64_t sub_1D6C0E854()
{
  sub_1D69DEE44(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1D6C0E8E8(uint64_t a1)
{
  if (!qword_1EC8938B8)
  {
    sub_1D5B58D88();
    v1 = sub_1D725BC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8938B8);
    }
  }
}

void sub_1D6C0E9D8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView];
    v6 = [objc_opt_self() monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
    [v5 setFont_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      MEMORY[0x1EEE9AC00](v9, v10);
      sub_1D5B5D53C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      sub_1D725BDCC();
      sub_1D5B5DA7C();
      v11 = sub_1D726308C();
      sub_1D725BAAC();

      v12 = sub_1D726308C();
      sub_1D725BADC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D6C0EC44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView);
  if (*(a1 + 8))
  {
    v3 = sub_1D726203C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];
}

void sub_1D6C0ECB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView);
  MEMORY[0x1DA6F9910](0xA3A64656C696146, 0xE90000000000000ALL);
  sub_1D5BA6EF4();
  sub_1D7263F9C();
  v3 = sub_1D726203C();

  [v2 setText_];
}

void sub_1D6C0F050()
{
  sub_1D5B5D53C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D72816C0;
  v2 = sub_1D726203C();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v3 style:0 target:v0 action:sel_doDismiss];

    *(v1 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6C0F150()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_loader);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_1D6C0F1D4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_loader);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

void sub_1D6C0F318()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725FB0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725FB1C();
  v70 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v69 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83.receiver = v0;
  v83.super_class = ObjectType;
  objc_msgSendSuper2(&v83, sel_viewDidLoad, v10);
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  v67 = v7;
  v71 = v8;
  v72 = v4;
  v73 = v3;
  v14 = [objc_opt_self() systemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = [v1 navigationItem];
  v17 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 24];
  v16 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem], v17);
  (*(*(v16 + 8) + 40))(&v81, v17);
  v19 = v81;
  v18 = v82;
  v79 = v81;
  v80 = v82;
  v20 = FeedItem.Kind.description.getter();
  v22 = v21;
  sub_1D5BF6680(v19, v18);
  v23 = sub_1D5C73AB0(v20, v22);
  if (v24)
  {
    v77 = v23;
    v78 = v24;
    sub_1D5BF4D9C();
    v25 = sub_1D7263A0C();
    v27 = v26;

    v28 = sub_1D5FD24A4(1uLL, v20, v22);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = MEMORY[0x1DA6F97E0](v28, v30, v32, v34);
    v37 = v36;

    v75 = v25;
    v76 = v27;

    MEMORY[0x1DA6F9910](v35, v37);
  }

  v68 = ObjectType;
  v38 = sub_1D726203C();

  [v15 setTitle_];

  v39 = [v1 navigationItem];
  [v39 setLeftItemsSupplementBackButton_];

  v40 = [v1 navigationItem];
  sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
  v41 = swift_allocObject();
  v74 = xmmword_1D72816C0;
  *(v41 + 16) = xmmword_1D72816C0;
  v42 = sub_1D726203C();
  v43 = objc_opt_self();
  v44 = [v43 systemImageNamed_];

  if (!v44)
  {
    goto LABEL_9;
  }

  v45 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v46 = v1;
  v47 = [v45 initWithImage:v44 style:0 target:v46 action:sel_doTapToRadar];

  *(v41 + 32) = v47;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v48 = sub_1D726265C();

  [v40 setLeftBarButtonItems_];

  v49 = [v46 &_OBJC_LABEL_PROTOCOL___FCAssetDataProvider + 2];
  v50 = swift_allocObject();
  *(v50 + 16) = v74;
  v51 = sub_1D726203C();
  v52 = [v43 systemImageNamed_];

  if (!v52)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v52 style:2 target:v46 action:sel_doDismiss];

  *(v50 + 32) = v53;
  v54 = sub_1D726265C();

  [v49 setRightBarButtonItems_];

  v55 = [v46 view];
  v57 = v72;
  v56 = v73;
  v58 = v71;
  if (v55)
  {
    v59 = v55;
    v60 = *&v46[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView];
    [v55 addSubview_];

    [v60 setDelegate_];
    [v60 setDataSource_];
    [v60 setAlwaysBounceVertical_];
    sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);
    sub_1D7262DAC();
    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    sub_1D725D78C();
    v61 = v69;
    static CoverView.loading.getter(v69);
    v62 = v67;
    (*(v57 + 104))(v67, *MEMORY[0x1E69D8850], v56);
    sub_1D725D77C();
    (*(v57 + 8))(v62, v56);
    (*(v70 + 8))(v61, v58);
    sub_1D6C6DDB0();
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v63 = sub_1D726308C();
    sub_1D725BAAC();

    v64 = sub_1D726308C();
    sub_1D725BADC();

    v65 = sub_1D726308C();
    sub_1D725BB3C();

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_1D6C0FB30(__int128 *a1, uint64_t a2)
{
  sub_1D6C12108(0, &qword_1EC893918, type metadata accessor for DebugInspectionItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v62 - v10;
  v12 = type metadata accessor for DebugInspectionItem(0);
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v80 = a1[2];
  v81 = v15;
  v82 = a1[4];
  v16 = a1[1];
  v78 = *a1;
  v79 = v16;
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v17 = qword_1EC9BAD28;
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v62[1] = v18;
  v19 = swift_allocObject();
  v67 = xmmword_1D7273AE0;
  *(v19 + 16) = xmmword_1D7273AE0;
  v66 = a2;
  v20 = (a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem);
  v22 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 24);
  v21 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 32);
  __swift_project_boxed_opaque_existential_1(v20, v22);
  v23 = (*(*(v21 + 8) + 8))(v22);
  v25 = v24;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v62[0] = sub_1D5B7E2C0();
  *(v19 + 64) = v62[0];
  *(v19 + 32) = v23;
  *(v19 + 40) = v25;
  v26 = sub_1D7262EDC();
  v63 = v17;
  sub_1D725C30C("Loaded inspections for feedItem %@", 34, 2, &dword_1D5B42000, v17, v26, v19);

  v27 = v20[3];
  v28 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v27);
  v29 = (*(*(v28 + 8) + 8))(v27);
  v30 = a1[3];
  v75 = a1[2];
  v76 = v30;
  v77 = a1[4];
  v31 = a1[1];
  v73 = *a1;
  v74 = v31;
  sub_1D6B64124(v29, v32, v7);

  v33 = v65;
  v34 = *(v65 + 48);
  if (v34(v7, 1, v12) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v36 = sub_1D725AA4C();
    v70 = v80;
    v71 = v81;
    v72 = v82;
    v69 = v79;
    v68 = v78;
    sub_1D6B64124(v36, v37, v11);

    if (v34(v7, 1, v12) != 1)
    {
      sub_1D6C1228C(v7, &qword_1EC893918, type metadata accessor for DebugInspectionItem);
    }
  }

  else
  {
    sub_1D6C1216C(v7, v11, v35);
    (*(v33 + 56))(v11, 0, 1, v12);
  }

  if (v34(v11, 1, v12) == 1)
  {
    sub_1D6C1228C(v11, &qword_1EC893918, type metadata accessor for DebugInspectionItem);
    v39 = sub_1D7262EBC();
    v40 = swift_allocObject();
    *(v40 + 16) = v67;
    v42 = v20[3];
    v41 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v42);
    v43 = (*(*(v41 + 8) + 8))(v42);
    v44 = v62[0];
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = v44;
    *(v40 + 32) = v43;
    *(v40 + 40) = v45;
    sub_1D725C30C("Loaded inspections for feedItems but was missing inspection for %@", 66, 2, &dword_1D5B42000, v63, v39, v40);

    sub_1D5B5D358(0, &qword_1EC88EF80, &type metadata for DebugInspectionDataSection);
    v46 = swift_allocObject();
    *(v46 + 16) = v67;
    sub_1D5B5D358(0, &qword_1EC893920, &type metadata for DebugInspectionDataItem);
    v47 = swift_allocObject();
    *(v47 + 16) = v67;
    v49 = v20[3];
    v48 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v49);
    v50 = (*(*(v48 + 8) + 8))(v49);
    v52 = v51;
    sub_1D6C12358();
    v53 = swift_allocError();
    *v54 = v50;
    *(v54 + 8) = v52;
    *(v54 + 16) = 0;
    *(v47 + 32) = v53;
    *(v47 + 88) = 1;
    *(v46 + 32) = 0x726F727245;
    *(v46 + 40) = 0xE500000000000000;
    *(v46 + 48) = v47;
    v55 = v66;
    *(v66 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections) = v46;
  }

  else
  {
    v56 = v64;
    sub_1D6C1216C(v11, v64, v38);
    sub_1D7116318(&v73);
    v57 = *(&v74 + 1);
    v58 = v75;
    __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
    v59 = (*(v58 + 8))(v57, v58);
    sub_1D6C122FC(v56, v60);
    v55 = v66;
    *(v66 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections) = v59;

    __swift_destroy_boxed_opaque_existential_1(&v73);
  }

  return [*(v55 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView) reloadData];
}