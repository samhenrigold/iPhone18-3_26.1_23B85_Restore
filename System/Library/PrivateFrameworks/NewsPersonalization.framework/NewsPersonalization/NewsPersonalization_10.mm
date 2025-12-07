void *sub_1C6C08FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v6 = sub_1C6D783E0();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[15];
  v14 = a1[16];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 12, v13);
  v73 = (*(v14 + 8))(v13, v14);
  v76 = a2;
  sub_1C6C0C114(0);
  sub_1C6C0C338(0, &qword_1EDCE6698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1C6C0C28C(&qword_1EC1D7B10, sub_1C6C0C114, MEMORY[0x1E69E6328]);
  sub_1C6C0C17C();
  isUniquelyReferenced_nonNull_native = sub_1C6D79680();
  v17 = isUniquelyReferenced_nonNull_native;
  v69 = v3;
  v18 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_44:
    isUniquelyReferenced_nonNull_native = sub_1C6D79E90();
    v19 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v19 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v12;
  if (v19)
  {
    v20 = 0;
    v74 = MEMORY[0x1E69E7CC0];
    v12 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    do
    {
      v21 = v20;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1CCA56240](v21, v17);
          v20 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v21 >= *(v18 + 16))
          {
            goto LABEL_43;
          }

          v22 = *(v17 + 8 * v21 + 32);
          v20 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        v23 = v22;
        v24 = [v23 identifier];
        if (v24)
        {
          break;
        }

        ++v21;
        if (v20 == v19)
        {
          goto LABEL_22;
        }
      }

      v25 = v24;
      v26 = sub_1C6D795A0();
      v63 = v27;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1C6B6592C(0, *(v74 + 2) + 1, 1, v74);
        v74 = isUniquelyReferenced_nonNull_native;
      }

      v29 = *(v74 + 2);
      v28 = *(v74 + 3);
      if (v29 >= v28 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1C6B6592C((v28 > 1), v29 + 1, 1, v74);
        v74 = isUniquelyReferenced_nonNull_native;
      }

      v30 = v74;
      *(v74 + 2) = v29 + 1;
      v31 = &v30[16 * v29];
      v32 = v63;
      *(v31 + 4) = v26;
      *(v31 + 5) = v32;
    }

    while (v20 != v19);
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:
  v33 = v70[23];
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v16);
  *(&v62 - 6) = v74;
  *(&v62 - 40) = v73 & 1;
  *(&v62 - 4) = v34;
  *(&v62 - 3) = v17;
  v35 = v72;
  *(&v62 - 2) = v71;
  v36 = v69;
  sub_1C6D784F0();
  if (v36)
  {
  }

  else
  {

    v37 = v68;
    sub_1C6D78500();
    v33 = v78;

    v38 = [v33 notificationScoringConfiguration];

    if (v38)
    {
      v39 = &selRef_bundleOutputConfiguration;
      if ((v73 & 1) == 0)
      {
        v39 = &selRef_nonBundleOutputConfiguration;
      }

      v40 = [v38 *v39];
      v41 = [v40 notificationScoresOutputName];

      sub_1C6D795A0();
      v42 = v64;
      sub_1C6D783C0();
      sub_1C6C0C28C(&qword_1EDCE7A60, sub_1C6B7A08C, MEMORY[0x1E69960C0]);
      v45 = sub_1C6D786D0();
      (*(v65 + 8))(v42, v66);
      v46 = *(v45 + 16);
      if (v46)
      {
        v76 = MEMORY[0x1E69E7CC0];
        sub_1C6B39260(0, v46, 0);
        v47 = v76;
        v48 = *(v76 + 16);
        v49 = 32;
        do
        {
          v50 = *(v45 + v49);
          v76 = v47;
          v51 = v47[3];
          if (v48 >= v51 >> 1)
          {
            sub_1C6B39260((v51 > 1), v48 + 1, 1);
            v47 = v76;
          }

          v47[2] = v48 + 1;
          *&v47[v48 + 4] = v50;
          v49 += 4;
          ++v48;
          --v46;
        }

        while (v46);
      }

      else
      {

        v47 = MEMORY[0x1E69E7CC0];
      }

      v52 = v47[2];
      v53 = *(v74 + 2);
      v54 = v72;
      if (v52 == v53)
      {
        if (qword_1EC1D5A98 != -1)
        {
          swift_once();
        }

        sub_1C6B1D314(0);
        v55 = swift_allocObject();
        v56 = MEMORY[0x1E69E6530];
        *(v55 + 16) = xmmword_1C6D7E630;
        v57 = MEMORY[0x1E69E65A8];
        *(v55 + 56) = v56;
        *(v55 + 64) = v57;
        *(v55 + 32) = v52;
        sub_1C6D79AC0();
        sub_1C6D78D30("Successfully scored %d items", v62);

        v33 = sub_1C6C2BFB0(v74, v47);

        (*(v67 + 8))(v54, v68);
      }

      else
      {

        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1C6D79D50();

        v76 = 0x20646E756F46;
        v77 = 0xE600000000000000;
        v75 = v52;
        v58 = sub_1C6D7A0E0();
        MEMORY[0x1CCA55B00](v58);

        MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
        v75 = v53;
        v59 = sub_1C6D7A0E0();
        MEMORY[0x1CCA55B00](v59);

        v60 = v76;
        v33 = v77;
        sub_1C6C0C238();
        swift_allocError();
        *v61 = v60;
        v61[1] = v33;
        swift_willThrow();

        (*(v67 + 8))(v54, v68);
      }
    }

    else
    {

      sub_1C6C0C238();
      swift_allocError();
      *v43 = 0;
      v43[1] = 0;
      swift_willThrow();
      (*(v67 + 8))(v35, v37);
    }
  }

  return v33;
}

void sub_1C6C09854(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C6D795A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1C6C098CC(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = sub_1C6D78810();
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*(a1 + 24) notificationScoringConfiguration];
  if (v20)
  {
    v21 = v20;
    v36 = a4;
    v37 = a6;
    v38 = a7;
    v39 = v7;
    if (qword_1EC1D5A98 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314(0);
    v22 = swift_allocObject();
    v35 = xmmword_1C6D7E630;
    *(v22 + 16) = xmmword_1C6D7E630;
    v23 = *(a2 + 16);
    v24 = MEMORY[0x1E69E65A8];
    *(v22 + 56) = MEMORY[0x1E69E6530];
    *(v22 + 64) = v24;
    *(v22 + 32) = v23;
    sub_1C6D79AC0();
    sub_1C6D78D30("Attempting to score %d items", v35);

    v25 = &selRef_bundleOutputConfiguration;
    if ((a3 & 1) == 0)
    {
      v25 = &selRef_nonBundleOutputConfiguration;
    }

    v26 = [v21 *v25];
    v27 = [v26 notificationScoresOutputName];

    sub_1C6D795A0();
    sub_1C6C09C3C(v21, a3 & 1, a5, v19);
    v28 = sub_1C6D75F60();
    v36 = v29;
    v37 = v28;
    sub_1C6C0C2D4(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
    v30 = sub_1C6D783E0();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v35;
    sub_1C6D783C0();
    sub_1C6B68E34(v33);
    swift_setDeallocating();
    (*(v31 + 8))(v33 + v32, v30);
    swift_deallocClassInstance();
    sub_1C6D78790();
  }

  else
  {
    sub_1C6C0C238();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    swift_willThrow();
  }
}

id sub_1C6C09C3C@<X0>(char *a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a2;
  v80 = a4;
  sub_1C6C0C2D4(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v77 = (&v71 - v8);
  v9 = sub_1C6D783E0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D78810();
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v15);
  v73 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v12;
  if (a3 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {
    v18 = MEMORY[0x1E69E7CC0];
    v76 = i & ~(i >> 63);
    v75 = v13;
    v74 = v14;
    if (i)
    {
      break;
    }

LABEL_18:
    v45 = v79[10];
    v13 = v79[11];
    __swift_project_boxed_opaque_existential_1(v79 + 7, v45);
    v14 = [a1 fullBodyEmbeddingDimension];
    (v13[2])(v18, v14, [a1 titleEmbeddingDimension], v45, v13);

    if ([a1 maxNotabilityScores] <= 0)
    {
      if (qword_1EC1D5A98 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    v46 = [a1 maxNotabilityScores];
    v47 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_32:
      v54 = v75;
      v55 = v74;
      v56 = v73;
      sub_1C6C0A648(v46, v47, v73);

      sub_1C6D787F0();
      (v55[1])(v56, v54);
      while (1)
      {
        sub_1C6D783C0();
        v57 = MEMORY[0x1E69E7CC0];
        if (!i)
        {
          break;
        }

        *&v86[0] = MEMORY[0x1E69E7CC0];
        sub_1C6B392F0(0, v76, 0);
        if ((i & 0x8000000000000000) == 0)
        {
          v57 = *&v86[0];
          if ((a3 & 0xC000000000000001) != 0)
          {
            for (j = 0; j != i; ++j)
            {
              v59 = [MEMORY[0x1CCA56240](j a3)];
              swift_unknownObjectRelease();
              *&v86[0] = v57;
              v61 = *(v57 + 16);
              v60 = *(v57 + 24);
              if (v61 >= v60 >> 1)
              {
                sub_1C6B392F0((v60 > 1), v61 + 1, 1);
                v57 = *&v86[0];
              }

              *(v57 + 16) = v61 + 1;
              *(v57 + 4 * v61 + 32) = v59;
            }
          }

          else
          {
            v62 = (a3 + 32);
            do
            {
              v63 = [*v62 source];
              *&v86[0] = v57;
              v65 = *(v57 + 16);
              v64 = *(v57 + 24);
              if (v65 >= v64 >> 1)
              {
                v66 = v63;
                sub_1C6B392F0((v64 > 1), v65 + 1, 1);
                v63 = v66;
                v57 = *&v86[0];
              }

              *(v57 + 16) = v65 + 1;
              *(v57 + 4 * v65 + 32) = v63;
              ++v62;
              --i;
            }

            while (i);
          }

          break;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        swift_once();
LABEL_27:
        v50 = qword_1EC1D85A0;
        v51 = sub_1C6D79AC0();
        sub_1C6D78D30("Configuration specified 0 max notability scores, not supplying notability scores to endpoint", 92, 2, &dword_1C6B09000, v50, v51, MEMORY[0x1E69E7CC0]);
      }

      v67 = v77;
      *v77 = v57;
      v68 = *MEMORY[0x1E6996140];
      v69 = sub_1C6D78760();
      v70 = *(v69 - 8);
      (*(v70 + 104))(v67, v68, v69);
      (*(v70 + 56))(v67, 0, 1, v69);
      return sub_1C6D78830();
    }

    v48 = v46;
    *&v86[0] = MEMORY[0x1E69E7CC0];
    sub_1C6D79DF0();
    if (i < 0)
    {
      goto LABEL_52;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v49 = 0;
      while (1)
      {
        v13 = [MEMORY[0x1CCA56240](v49 a3)];
        swift_unknownObjectRelease();
        if (!v13)
        {
          break;
        }

        ++v49;
        sub_1C6D79DC0();
        v14 = *(*&v86[0] + 16);
        sub_1C6D79E00();
        sub_1C6D79E10();
        sub_1C6D79DD0();
        if (i == v49)
        {
          goto LABEL_31;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      v14 = (a3 + 32);
      a1 = i;
      while (1)
      {
        v52 = *v14;
        v53 = [v52 notabilityScores];

        if (!v53)
        {
          break;
        }

        sub_1C6D79DC0();
        v13 = *(*&v86[0] + 16);
        sub_1C6D79E00();
        sub_1C6D79E10();
        sub_1C6D79DD0();
        ++v14;
        if (!--a1)
        {
LABEL_31:
          v47 = *&v86[0];
          v46 = v48;
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_49:
    ;
  }

  v88 = MEMORY[0x1E69E7CC0];
  sub_1C6B39464(0, i & ~(i >> 63), 0);
  if (i < 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v14 = 0;
  v18 = v88;
  v84 = a3 & 0xC000000000000001;
  v83 = v79[17];
  v81 = a3 & 0xFFFFFFFFFFFFFF8;
  v82 = (i - 1);
  v72 = i;
  while (1)
  {
    if (v84)
    {
      v19 = MEMORY[0x1CCA56240](v14, a3);
    }

    else
    {
      if (v14 >= *(v81 + 16))
      {
        goto LABEL_47;
      }

      v19 = *(a3 + 8 * v14 + 32);
    }

    v20 = v19;
    v21 = a3;
    v22 = [objc_msgSend(v83 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v23 = [v20 feedItem];
    v24 = [v22 containsItem_];

    result = [v20 feedItem];
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = [a1 fullBodyEmbeddingDimension];
    v28 = [a1 maxTopicIds];
    v29 = [a1 titleEmbeddingDimension];
    v30 = v26;
    sub_1C6C33510(v27, v28, v29, v30, v24, COERCE_FLOAT(v85 & 1), v86);

    v88 = v18;
    v32 = *(v18 + 16);
    v31 = *(v18 + 24);
    v13 = (v32 + 1);
    if (v32 >= v31 >> 1)
    {
      sub_1C6B39464((v31 > 1), v32 + 1, 1);
      v18 = v88;
    }

    *(v18 + 16) = v13;
    v33 = v18 + 232 * v32;
    v34 = v86[0];
    v35 = v86[2];
    *(v33 + 48) = v86[1];
    *(v33 + 64) = v35;
    *(v33 + 32) = v34;
    v36 = v86[3];
    v37 = v86[4];
    v38 = v86[6];
    *(v33 + 112) = v86[5];
    *(v33 + 128) = v38;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    v39 = v86[7];
    v40 = v86[8];
    v41 = v86[10];
    *(v33 + 176) = v86[9];
    *(v33 + 192) = v41;
    *(v33 + 144) = v39;
    *(v33 + 160) = v40;
    v42 = v86[11];
    v43 = v86[12];
    v44 = v86[13];
    *(v33 + 256) = v87;
    *(v33 + 224) = v43;
    *(v33 + 240) = v44;
    *(v33 + 208) = v42;
    a3 = v21;
    if (v82 == v14)
    {
      i = v72;
      goto LABEL_18;
    }

    v14 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

double sub_1C6C0A594(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a3 + 16) && (v6 = sub_1C6B5DEA8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 8 * v6);

    v9 = v8;
    sub_1C6C2C2F0(v9);
    v11 = v10;

    return v11 * a4;
  }

  else
  {
  }

  return a4;
}

uint64_t sub_1C6C0A648@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EC1D5A98 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v5 = qword_1EC1D85A0;
    sub_1C6B1D314(0);
    v76 = v6;
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E6530];
    *(v7 + 16) = xmmword_1C6D7E630;
    v9 = MEMORY[0x1E69E65A8];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = a1;
    sub_1C6D79AC0();
    v77 = v5;
    sub_1C6D78D30("Preparing notability scores with maxNotabilityScores %lu", v75);

    v10 = a2 >> 62 ? sub_1C6D79E90() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      break;
    }

    v12 = 0;
    v83 = a1;
    v84 = a2 & 0xC000000000000001;
    v80 = a2 & 0xFFFFFFFFFFFFFF8;
    v81 = a2;
    v79 = a2 + 32;
    a2 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v82 = v10;
    while (1)
    {
      if (v84)
      {
        v16 = MEMORY[0x1CCA56240](v12, v81);
      }

      else
      {
        if (v12 >= *(v80 + 16))
        {
          goto LABEL_64;
        }

        v16 = *&v79[8 * v12];
      }

      v17 = v16;
      v18 = __OFADD__(v12, 1);
      v19 = v12 + 1;
      if (v18)
      {
        break;
      }

      v20 = [v16 tagScores];
      sub_1C6B0C69C(0, &qword_1EC1D6EA8, 0x1E69B6CC8);
      sub_1C6D79770();

      v21 = sub_1C6C08754(a1, v11);

      v22 = sub_1C6C0AF00();
      v23 = sub_1C6C08754(a1, v21);

      if (v23 >> 62)
      {
        v24 = sub_1C6D79E90();
        if (v24 == a1)
        {
LABEL_14:

          v25 = v23;
          goto LABEL_18;
        }
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24 == a1)
        {
          goto LABEL_14;
        }
      }

      v26 = (a1 - v24);
      if (__OFSUB__(a1, v24))
      {
        goto LABEL_63;
      }

      v27 = v22;
      a1 = sub_1C6BFE2BC(v27, v26);

      sub_1C6B38B9C(a1);
      v25 = v23;
LABEL_18:
      if (v25 >> 62)
      {
        v56 = v25;
        v28 = sub_1C6D79E90();
        v25 = v56;
        v85 = v17;
        v86 = v19;
        if (!v28)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v85 = v17;
        v86 = v19;
        if (!v28)
        {
          goto LABEL_6;
        }
      }

      if (v28 < 1)
      {
        goto LABEL_62;
      }

      v29 = 0;
      v88 = v25 & 0xC000000000000001;
      v90 = v28;
      v92 = v25;
      do
      {
        if (v88)
        {
          v30 = MEMORY[0x1CCA56240](v29);
        }

        else
        {
          v30 = *(v25 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = [v30 tagId];
        if (v32)
        {
          v33 = v32;
          v34 = sub_1C6D795A0();
          v36 = v35;
        }

        else
        {
          v34 = 0;
          v36 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_1C6B6592C(0, *(a2 + 2) + 1, 1, a2);
        }

        v38 = *(a2 + 2);
        v37 = *(a2 + 3);
        if (v38 >= v37 >> 1)
        {
          a2 = sub_1C6B6592C((v37 > 1), v38 + 1, 1, a2);
        }

        *(a2 + 2) = v38 + 1;
        v39 = &a2[16 * v38];
        *(v39 + 4) = v34;
        *(v39 + 5) = v36;
        v40 = sub_1C6C0B120(v31);
        v41 = 0;
        if (*(v40 + 16))
        {
          v42 = sub_1C6B6502C(1);
          if (v43)
          {
            v41 = *(*(v40 + 56) + 4 * v42);
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1C6B656C8(0, *(v15 + 2) + 1, 1, v15);
        }

        v45 = *(v15 + 2);
        v44 = *(v15 + 3);
        if (v45 >= v44 >> 1)
        {
          v15 = sub_1C6B656C8((v44 > 1), v45 + 1, 1, v15);
        }

        *(v15 + 2) = v45 + 1;
        *&v15[4 * v45 + 32] = v41;
        v46 = 0;
        if (*(v40 + 16))
        {
          v47 = sub_1C6B6502C(2);
          if (v48)
          {
            v46 = *(*(v40 + 56) + 4 * v47);
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1C6B656C8(0, *(v14 + 2) + 1, 1, v14);
        }

        v50 = *(v14 + 2);
        v49 = *(v14 + 3);
        if (v50 >= v49 >> 1)
        {
          v14 = sub_1C6B656C8((v49 > 1), v50 + 1, 1, v14);
        }

        *(v14 + 2) = v50 + 1;
        *&v14[4 * v50 + 32] = v46;
        v51 = 0;
        if (*(v40 + 16))
        {
          v52 = sub_1C6B6502C(3);
          if (v53)
          {
            v51 = *(*(v40 + 56) + 4 * v52);
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1C6B656C8(0, *(v13 + 2) + 1, 1, v13);
        }

        v55 = *(v13 + 2);
        v54 = *(v13 + 3);
        if (v55 >= v54 >> 1)
        {
          v13 = sub_1C6B656C8((v54 > 1), v55 + 1, 1, v13);
        }

        ++v29;

        *(v13 + 2) = v55 + 1;
        *&v13[4 * v55 + 32] = v51;
        v25 = v92;
      }

      while (v90 != v29);
LABEL_6:

      a1 = v83;
      v12 = v86;
      v11 = MEMORY[0x1E69E7CC0];
      if (v86 == v82)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  a2 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1C6D80210;
  v58 = *(a2 + 2);
  v59 = MEMORY[0x1E69E6530];
  *(v57 + 56) = MEMORY[0x1E69E6530];
  v60 = MEMORY[0x1E69E65A8];
  *(v57 + 64) = MEMORY[0x1E69E65A8];
  *(v57 + 32) = v58;
  v61 = *(v15 + 2);
  *(v57 + 96) = v59;
  *(v57 + 104) = v60;
  *(v57 + 72) = v61;
  v62 = *(v14 + 2);
  *(v57 + 136) = v59;
  *(v57 + 144) = v60;
  *(v57 + 112) = v62;
  v63 = *(v13 + 2);
  *(v57 + 176) = v59;
  *(v57 + 184) = v60;
  *(v57 + 152) = v63;
  sub_1C6D79AC0();
  sub_1C6D78D30("Prepared notability scores with %lu tags, %lu Noteworthy scores, %lu PFA scores and %lu Big story scores", v75, v76, v77, a3);

  sub_1C6C0C2D4(0, &qword_1EDCE7D20, sub_1C6B9F304, MEMORY[0x1E69E6F90]);
  sub_1C6B9F304(0);
  v65 = v64 - 8;
  v89 = *(*(v64 - 8) + 72);
  v66 = (*(*(v64 - 8) + 80) + 32) & ~*(*(v64 - 8) + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1C6D80210;
  v67 = v91 + v66;
  v68 = *(v65 + 56);
  sub_1C6D783C0();
  *(v67 + v68) = v15;
  v69 = *MEMORY[0x1E6996138];
  v70 = sub_1C6D78760();
  v93 = *(*(v70 - 8) + 104);
  v87 = v69;
  v93(v67 + v68, v69, v70);
  v71 = *(v65 + 56);
  sub_1C6D783C0();
  *(v67 + v89 + v71) = v14;
  v93(v67 + v89 + v71, v69, v70);
  v72 = v67 + 2 * v89;
  v73 = *(v65 + 56);
  sub_1C6D783C0();
  *(v72 + v73) = v13;
  v93(v72 + v73, v87, v70);
  sub_1C6D783C0();
  sub_1C6D78740();

  return sub_1C6D787D0();
}

id sub_1C6C0AF00()
{
  result = [objc_allocWithZone(MEMORY[0x1E69B6CC8]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  v2 = sub_1C6D79570();
  [v1 setTagId_];

  sub_1C6C0C338(0, &qword_1EC1D7B28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D807C0;
  result = [objc_allocWithZone(MEMORY[0x1E69B6CB8]) init];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  [v4 setScore_];
  [v4 setType_];

  v5 = sub_1C6B0C69C(0, &qword_1EC1D7B20, 0x1E69B6CB8);
  *(v3 + 56) = v5;
  *(v3 + 32) = v4;
  result = [objc_allocWithZone(MEMORY[0x1E69B6CB8]) init];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [v6 setScore_];
  [v6 setType_];

  *(v3 + 88) = v5;
  *(v3 + 64) = v6;
  result = [objc_allocWithZone(MEMORY[0x1E69B6CB8]) init];
  if (result)
  {
    v7 = result;
    [v7 setScore_];
    [v7 setType_];

    *(v3 + 120) = v5;
    *(v3 + 96) = v7;
    sub_1C6B0C69C(0, &unk_1EC1D7408, 0x1E695DF70);
    v8 = MEMORY[0x1CCA56040](v3);
    [v1 setScores_];

    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1C6C0B120(void *a1)
{
  v1 = [a1 scores];
  if (v1)
  {
    v2 = v1;
    sub_1C6B0C69C(0, &qword_1EC1D7B20, 0x1E69B6CB8);
    sub_1C6D79770();
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1C6B60FAC(v3);
}

uint64_t sub_1C6C0B3C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C0B424(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C6D75F80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = *v2;
  sub_1C6D783A0();
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a1;
  (*(v6 + 32))(v11 + v10, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  v12 = sub_1C6D78210();
  sub_1C6C0C0AC(0, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
  v13 = sub_1C6D782A0();

  return v13;
}

uint64_t sub_1C6C0B618()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

void sub_1C6C0B6E4(uint64_t a1)
{
  if (!qword_1EC1D7B00)
  {
    sub_1C6C0C0AC(255, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D7B00);
    }
  }
}

void sub_1C6C0B764()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v19 = 0;
      MEMORY[0x1CCA57120](&v19, 8);
      v6 = (v19 * v2) >> 64;
      if (v2 > v19 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v19 * v2)
        {
          do
          {
            v19 = 0;
            MEMORY[0x1CCA57120](&v19, 8);
          }

          while (v7 > v19 * v2);
          v6 = (v19 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = &v1[16 * v4 + 32];
        v12 = *v10;
        v11 = *(v10 + 1);
        v13 = &v1[16 * v8 + 32];
        v15 = *v13;
        v14 = *(v13 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1C6C73F6C(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = &v1[16 * v4 + 32];
        *v16 = v15;
        *(v16 + 1) = v14;

        if (v8 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v17 = &v1[16 * v8 + 32];
        *v17 = v12;
        *(v17 + 1) = v11;

        *v18 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_1C6C0B8F0()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x1CCA57120](&v20, 8);
      v5 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x1CCA57120](&v20, 8);
          }

          while (v6 > v20 * v1);
          v5 = (v20 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1C6C750C0(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        sub_1C6D79DD0();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_1C6C750C0(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        sub_1C6D79DD0();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1C6C0BA94(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = sub_1C6B5DEA8(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1C6B6E868(v16, v6 & 1);
    v11 = sub_1C6B5DEA8(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1C6D7A1C0();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1C6B72BD8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + 8 * v11) = v9;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v15)
  {
    v22[2] = v25;
    if (v4 != 1)
    {
      v6 = a1 + 9;
      v26 = 1;
      while (v26 < a1[2])
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v27 = *a3;

        v28 = sub_1C6B5DEA8(v8, v7);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v29;
        if (v27[3] < v32)
        {
          sub_1C6B6E868(v32, 1);
          v28 = sub_1C6B5DEA8(v8, v7);
          if ((v17 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v35 = (v34[6] + 16 * v28);
        *v35 = v8;
        v35[1] = v7;
        *(v34[7] + 8 * v28) = v9;
        v36 = v34[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v26;
        v34[2] = v37;
        v6 += 3;
        if (v4 == v26)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD00000000000001BLL, 0x80000001C6D9F860);
  sub_1C6D79E60();
  MEMORY[0x1CCA55B00](39, 0xE100000000000000);
  sub_1C6D79EB0();
  __break(1u);
}

uint64_t sub_1C6C0BE14(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, double))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6B394A4(0, v3, 0);
    v5 = v38;
    v6 = v2 + 64;
    result = sub_1C6D79CC0();
    v7 = result;
    v8 = 0;
    v37 = *(v2 + 36);
    v32 = v2 + 72;
    v33 = v3;
    v34 = v2 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v37 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v36 = v8;
      v11 = (*(v2 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(v2 + 56) + 8 * v7);

      v15 = a2(v12, v13, v14);
      v17 = v16;
      v19 = v18;

      v20 = v5;
      v39 = v5;
      v21 = v2;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1C6B394A4((v22 > 1), v23 + 1, 1);
        v20 = v39;
      }

      *(v20 + 16) = v23 + 1;
      v24 = (v20 + 24 * v23);
      v24[4] = v15;
      v24[5] = v17;
      v24[6] = v19;
      v9 = 1 << *(v21 + 32);
      if (v7 >= v9)
      {
        goto LABEL_25;
      }

      v6 = v34;
      v25 = *(v34 + 8 * v10);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v21;
      v5 = v20;
      if (v37 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v10 << 6;
        v28 = v10 + 1;
        v29 = (v32 + 8 * v10);
        while (v28 < (v9 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1C6B360A8(v7, v37, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_1C6B360A8(v7, v37, 0);
      }

LABEL_4:
      v8 = v36 + 1;
      v7 = v9;
      if (v36 + 1 == v33)
      {
        return v5;
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

void sub_1C6C0C0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6C0C114(uint64_t a1)
{
  if (!qword_1EC1D7B08)
  {
    sub_1C6B0C69C(255, &qword_1EC1D6EA0, 0x1E69B6EC8);
    v1 = sub_1C6D79820();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D7B08);
    }
  }
}

unint64_t sub_1C6C0C17C()
{
  result = qword_1EDCDFB50;
  if (!qword_1EDCDFB50)
  {
    sub_1C6C0C338(255, &qword_1EDCE6698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFB50);
  }

  return result;
}

unint64_t sub_1C6C0C238()
{
  result = qword_1EC1D7B18;
  if (!qword_1EC1D7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7B18);
  }

  return result;
}

uint64_t sub_1C6C0C28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C0C2D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C0C338(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C6C0C388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6C0C3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C6C0C42C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C6C0C444(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C6C0C474()
{
  if (*(v0 + 16))
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

id sub_1C6C0C4AC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v15, v5, v6);
  v7 = v15[0];
  if (v15[0])
  {
    v8 = v15[1];
    v9 = *&v15[2];
    v10 = objc_allocWithZone(MEMORY[0x1E69B5258]);
    sub_1C6B6976C();
    v11 = sub_1C6D79480();
    v12 = [v10 initWithAggregates:v11 scoringType:3 decayRate:v9];

    sub_1C6C0CD4C(v7, v8);
    result = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x1E69B5568]);
    v12 = a2;
    result = [v14 initWithGenerator_];
  }

  *a3 = v12;
  *(a3 + 8) = result;
  *(a3 + 16) = v7 != 0;
  return result;
}

uint64_t sub_1C6C0C5F0(uint64_t a1)
{
  sub_1C6D781A0();
  if (qword_1EDCDFFE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCDFFF0;
  sub_1C6B16AC8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7E630;
  if (v8)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v8)
  {
    v4 = "ateModeResolver";
  }

  else
  {
    v4 = "Resolved mode %{public}@";
  }

  MEMORY[0x1CCA55B00](v3, v4 | 0x8000000000000000);

  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6B2064C();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  v5 = sub_1C6D79AC0();
  sub_1C6D78D30("Resolved mode %{public}@", 24, 2, &dword_1C6B09000, v1, v5, v2);

  return v7;
}

uint64_t sub_1C6C0C804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1C6C0C5F0(a1);
  if (v5)
  {
    v6 = MEMORY[0x1E69B48B0];
  }

  else
  {
    v6 = MEMORY[0x1E69B48A8];
  }

  sub_1C6C0CD8C(v3, v4);
  v7 = *v6;
  v8 = sub_1C6D779F0();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

id sub_1C6C0C894(uint64_t a1)
{
  v1 = sub_1C6C0C5F0(a1);
  v3 = v2;
  v4 = swift_unknownObjectRetain();
  sub_1C6C0CD8C(v4, v3);
  v5 = [v1 generateDerivedData];
  swift_unknownObjectRelease();
  if (qword_1EDCDFFE8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDCDFFF0;
  sub_1C6B16AC8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D7E630;
  [v5 scoringType];
  v8 = NSStringFromFCScoringType();
  v9 = sub_1C6D795A0();
  v11 = v10;

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = sub_1C6D79AC0();
  sub_1C6D78D30("Generated derived personalization data with scoring type %{public}@", 67, 2, &dword_1C6B09000, v6, v12, v7);

  return v5;
}

uint64_t sub_1C6C0CAC0()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization36KnownAggregateStoreStateModeResolver_mode;
  v2 = sub_1C6D779F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KnownAggregateStoreStateModeResolver(uint64_t a1)
{
  result = qword_1EC1D7C08;
  if (!qword_1EC1D7C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C0CBB0(uint64_t a1)
{
  result = sub_1C6D779F0();
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C6C0CC60(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C6C0CCC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19NewsPersonalization36KnownAggregateStoreStateModeResolver_mode;
  v5 = sub_1C6D779F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C6C0CD4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1C6C0CD8C(uint64_t a1, void *a2)
{
  swift_unknownObjectRelease();
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0) + 24);
  sub_1C6C0CEB4(v1 + v3);
  sub_1C6C0CF40(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(uint64_t a1)
{
  result = qword_1EDCE5460;
  if (!qword_1EDCE5460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C0CEB4(uint64_t a1)
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C0CF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  sub_1C6C0D334(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6C0CF40(v6, a1);
  }

  *a1 = xmmword_1C6D7F510;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1C6D78A30();
  v10 = (a1 + *(v8 + 36));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C0CEB4(v6);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C6C0D238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C0D708(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0) + 24);
  sub_1C6C0CEB4(a2 + v9);
  sub_1C6C0CF40(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t sub_1C6C0D334(uint64_t a1, uint64_t a2)
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*Com_Apple_News_Personalization_SessionRecipe.metadata.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6C0D334(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 1;
    *(v15 + 48) = 0;
    *(v15 + 56) = 1;
    sub_1C6D78A30();
    v18 = (v15 + *(v10 + 36));
    *v18 = 0;
    v18[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C0CEB4(v9);
    }
  }

  else
  {
    sub_1C6C0CF40(v9, v15);
  }

  return sub_1C6C0D5FC;
}

void sub_1C6C0D5FC(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1C6C0D708((*a1)[5], v5);
    sub_1C6C0CEB4(v10 + v4);
    sub_1C6C0CF40(v5, v10 + v4);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1C6C0D76C(v6, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  }

  else
  {
    sub_1C6C0CEB4(v10 + v4);
    sub_1C6C0CF40(v6, v10 + v4);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t sub_1C6C0D708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C0D76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_Personalization_SessionRecipe.hasMetadata.getter()
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  sub_1C6C0D334(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C0CEB4(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionRecipe.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0) + 24);
  sub_1C6C0CEB4(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C0DA9C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7C18);
  __swift_project_value_buffer(v0, qword_1EC1D7C18);
  sub_1C6C0EAAC(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionRecipe._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6C0DDB0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C0DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  sub_1C6C0EA64(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6C0DF10(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C0DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  sub_1C6C0D334(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6C0CEB4(v8);
  }

  sub_1C6C0CF40(v8, v13);
  sub_1C6C0EA64(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D78CF0();
  return sub_1C6C0D76C(v13, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  sub_1C6C0EA64(&qword_1EC1D7C30, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C0E1A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6C0E278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0EA64(&qword_1EC1D7C48, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C0E2F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C0E39C(uint64_t a1)
{
  v2 = sub_1C6C0EA64(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C0E408(uint64_t a1, uint64_t a2)
{
  sub_1C6C0EA64(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B14_SessionRecipeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6C0E9D0(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_9;
  }

  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0) + 24);
  v19 = *(v14 + 48);
  sub_1C6C0D334(a1 + v18, v17);
  sub_1C6C0D334(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6C0CEB4(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6C0EA64(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_8;
  }

  sub_1C6C0D334(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6C0D76C(v12, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
LABEL_8:
    sub_1C6C0D76C(v17, sub_1C6C0E9D0);
    goto LABEL_9;
  }

  sub_1C6C0CF40(&v17[v19], v8);
  v22 = _s19NewsPersonalization010Com_Apple_a1_B22_SessionRecipeMetadataV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1C6C0D76C(v8, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6C0D76C(v12, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6C0CEB4(v17);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_9:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6C0E90C(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6C0EAAC(319, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C0E9D0(uint64_t a1)
{
  if (!qword_1EC1D7C50)
  {
    sub_1C6C0EAAC(255, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7C50);
    }
  }
}

uint64_t sub_1C6C0EA64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C0EAAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.groupBackingTagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(uint64_t a1)
{
  result = qword_1EDCE4DB0;
  if (!qword_1EDCE4DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1C6D7F510;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  result = sub_1C6D78A30();
  v4 = (a1 + *(v2 + 36));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.personalizationData.getter()
{
  v1 = *v0;
  sub_1C6B1CD10(*v0, *(v0 + 8));
  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.personalizationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C6B1C9F0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

void Com_Apple_News_Personalization_SessionRecipeMetadata.group.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.group.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Com_Apple_News_Personalization_SessionRecipeMetadata.feed.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.feed.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void Com_Apple_News_Personalization_SessionRecipeMetadata.viewAction.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.viewAction.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.groupBackingTagID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C6C0EDC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1C6C0EE2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*Com_Apple_News_Personalization_SessionRecipeMetadata.groupBackingTagID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1C6C0EF30;
}

void sub_1C6C0EF30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionRecipeMetadata.clearGroupBackingTagID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C0F17C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7C58);
  __swift_project_value_buffer(v0, qword_1EC1D7C58);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C6D7F520;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "personalizationData";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "group";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "feed";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "view_action";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "group_backing_tag_id";
  *(v15 + 8) = 20;
  *(v15 + 16) = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionRecipeMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D78AD0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C6D78B20();
        }

        else if (result == 2)
        {
          v6 = v3;
          sub_1C6C0FB94();
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v6 = v3;
            sub_1C6C0FBE8();
LABEL_5:
            v3 = v6;
            sub_1C6D78B00();
            break;
          case 4:
            v6 = v3;
            sub_1C6C0FC3C();
            goto LABEL_5;
          case 5:
            type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
            sub_1C6D78B70();
            break;
        }
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1C6D78C80();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v14 = v4;
  if (Com_Apple_News_Personalization_GroupType.rawValue.getter())
  {
    sub_1C6C0FB94();
    result = sub_1C6D78C70();
    if (v4)
    {
      return result;
    }

    v14 = 0;
  }

  if (v3[4])
  {
    sub_1C6C0FBE8();
    v15 = v14;
    result = sub_1C6D78C70();
    if (v14)
    {
      return result;
    }

    if (!v3[6])
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_1C6C0FC3C();
    result = sub_1C6D78C70();
    if (v15)
    {
      return result;
    }

    goto LABEL_19;
  }

  v15 = v14;
  if (v3[6])
  {
    goto LABEL_18;
  }

LABEL_19:
  result = sub_1C6C0F7D0(v3, a1, a2, a3);
  if (!v15)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C0F7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_1C6D78CC0();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  sub_1C6C0FFFC(&qword_1EC1D7C70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C0F8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1C6D7F510;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  result = sub_1C6D78A30();
  v5 = (a2 + *(a1 + 36));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C6C0F984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0FFFC(&qword_1EC1D7C88, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C0FA00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C0FAA8(uint64_t a1)
{
  v2 = sub_1C6C0FFFC(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C0FB14(uint64_t a1, uint64_t a2)
{
  sub_1C6C0FFFC(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);

  return sub_1C6D78C20();
}

unint64_t sub_1C6C0FB94()
{
  result = qword_1EDCE5758;
  if (!qword_1EDCE5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5758);
  }

  return result;
}

unint64_t sub_1C6C0FBE8()
{
  result = qword_1EDCE2A68;
  if (!qword_1EDCE2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2A68);
  }

  return result;
}

unint64_t sub_1C6C0FC3C()
{
  result = qword_1EDCE5230;
  if (!qword_1EDCE5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5230);
  }

  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B22_SessionRecipeMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1C6B5E090(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v4 = Com_Apple_News_Personalization_GroupType.rawValue.getter();
    if (v4 == Com_Apple_News_Personalization_GroupType.rawValue.getter() && sub_1C6B69164(*(a1 + 32), *(a1 + 40), *(a2 + 32)) && sub_1C6B69164(*(a1 + 48), *(a1 + 56), *(a2 + 48)))
    {
      v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36);
      v6 = (a1 + v5);
      v7 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v8[1];
      if (v7)
      {
        if (v9 && (*v6 == *v8 && v7 == v9 || (sub_1C6D7A130() & 1) != 0))
        {
          goto LABEL_10;
        }
      }

      else if (!v9)
      {
LABEL_10:
        sub_1C6D78A40();
        sub_1C6C0FFFC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        return sub_1C6D79560() & 1;
      }
    }
  }

  return 0;
}

void sub_1C6C0FF4C(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6B95D68();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6C0FFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(uint64_t a1)
{
  result = qword_1EDCE2CD0;
  if (!qword_1EDCE2CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6C102D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6C10464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C10B04()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7C90);
  __swift_project_value_buffer(v0, qword_1EC1D7C90);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C10E24(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C10E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C118D0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C10F74(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C10F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6C118D0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  sub_1C6C118D0(&qword_1EC1D7CA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C11250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C118D0(&qword_1EC1D7CC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C112CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C11374(uint64_t a1)
{
  v2 = sub_1C6C118D0(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C113E0(uint64_t a1, uint64_t a2)
{
  sub_1C6C118D0(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B47Storage_CompressedSessionEventArticleUndislikedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B3FB88(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0) + 24);
  v19 = *(v14 + 48);
  sub_1C6B3E190(a1 + v18, v17);
  sub_1C6B3E190(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6C118D0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v19], v8);
  v23 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C118D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_VerticalScrollData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0) + 28);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(uint64_t a1)
{
  result = qword_1EDCE4F88;
  if (!qword_1EDCE4F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0) + 28);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C11B8C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4FB8);
  __swift_project_value_buffer(v0, qword_1EDCE4FB8);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "startYPosition";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "endYPosition";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "velocity";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_VerticalScrollData._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4FB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4FB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C6D78B30();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78C90(), !v4))
  {
    if (!v3[1] || (result = sub_1C6D78C90(), !v4))
    {
      if (!v3[2] || (result = sub_1C6D78C90(), !v4))
      {
        type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
        return sub_1C6D78A20();
      }
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
  sub_1C6C12640(&qword_1EC1D7CC8, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C1201C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return sub_1C6D78A30();
}

uint64_t sub_1C6C12060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6C120D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6C1219C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C12640(&qword_1EC1D7CD8, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C12218@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4FB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4FB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C122C0(uint64_t a1)
{
  v2 = sub_1C6C12640(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C1232C(uint64_t a1, uint64_t a2)
{
  sub_1C6C12640(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B19_VerticalScrollDataV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
  sub_1C6D78A40();
  sub_1C6C12640(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C125BC(uint64_t a1)
{
  result = sub_1C6D78A40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6C12640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NewsPersonalization::ArticleFeaturesFactoryConfiguration __swiftcall ArticleFeaturesFactoryConfiguration.init(fullBodyEmbeddingDimension:titleEmbeddingDimension:)(Swift::Int fullBodyEmbeddingDimension, Swift::Int titleEmbeddingDimension)
{
  *v2 = fullBodyEmbeddingDimension;
  v2[1] = titleEmbeddingDimension;
  result.titleEmbeddingDimension = titleEmbeddingDimension;
  result.fullBodyEmbeddingDimension = fullBodyEmbeddingDimension;
  return result;
}

unint64_t sub_1C6C12690()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1C6C126CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x80000001C6DA0430 == a2;
  if (v6 || (sub_1C6D7A130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C6DA0450 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();

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

uint64_t sub_1C6C127AC(uint64_t a1)
{
  v2 = sub_1C6C1299C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C127E8(uint64_t a1)
{
  v2 = sub_1C6C1299C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArticleFeaturesFactoryConfiguration.encode(to:)(void *a1)
{
  sub_1C6C12BA0(0, &qword_1EC1D7CE0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C1299C();
  sub_1C6D7A300();
  v13 = 0;
  sub_1C6D7A080();
  if (!v2)
  {
    v12 = 1;
    sub_1C6D7A080();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C6C1299C()
{
  result = qword_1EC1D7CE8;
  if (!qword_1EC1D7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7CE8);
  }

  return result;
}

uint64_t ArticleFeaturesFactoryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C6C12BA0(0, &qword_1EC1D7CF0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C1299C();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1C6D79FE0();
    v15 = 1;
    v13 = sub_1C6D79FE0();
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1C6C12BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6C1299C();
    v7 = a3(a1, &type metadata for ArticleFeaturesFactoryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ArticleFeaturesFactory.features(articleFeatures:fullBodyEmbeddingDimension:titleEmbeddingDimension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v341 = a3;
  v342 = a2;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v344 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v343 = &v334 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v351 = &v334 - v11;
  sub_1C6C14FA0(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v336 = (&v334 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v335 = (&v334 - v17);
  v18 = sub_1C6D783E0();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v348 = &v334 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v347 = &v334 - v23;
  v24 = sub_1C6D75F50();
  v339 = *(v24 - 8);
  v340 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v338 = &v334 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C14FA0(0, &qword_1EDCE7D20, sub_1C6B9F304, MEMORY[0x1E69E6F90]);
  sub_1C6B9F304(0);
  v360 = v27;
  v28 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
  v359 = *(*(v27 - 8) + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C6D85AA0;
  v337 = v29;
  v358 = v29 + v28;
  sub_1C6D783C0();
  v30 = *(a1 + 16);
  v361 = a1;
  v353 = v30;
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v30, 0);
    v31 = v363;
    v32 = (a1 + 40);
    v33 = v30;
    do
    {
      v35 = *(v32 - 1);
      v34 = *v32;
      *&v363 = v31;
      v36 = *(v31 + 16);
      v37 = *(v31 + 24);

      if (v36 >= v37 >> 1)
      {
        sub_1C6B39280((v37 > 1), v36 + 1, 1);
        v31 = v363;
      }

      *(v31 + 16) = v36 + 1;
      v38 = v31 + 16 * v36;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
      v32 += 29;
      --v33;
    }

    while (v33);
    a1 = v361;
    v30 = v353;
  }

  v345 = a4;
  v39 = v358;
  sub_1C6D78740();
  v40 = v39 + v359;
  result = sub_1C6D783C0();
  v354 = *(a1 + 16);
  if (v354)
  {
    v357 = v40;
    v42 = 0;
    v43 = (a1 + 32);
    v44 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v45 = *(a1 + 16);
      if (v42 >= v45)
      {
        break;
      }

      v46 = v43[13];
      v375 = v43[12];
      v376 = v46;
      v377 = *(v43 + 28);
      v47 = v43[9];
      v371 = v43[8];
      v372 = v47;
      v48 = v43[11];
      v373 = v43[10];
      v374 = v48;
      v49 = v43[5];
      v367 = v43[4];
      v368 = v49;
      v50 = v43[7];
      v369 = v43[6];
      v370 = v50;
      v51 = v43[1];
      v363 = *v43;
      v364 = v51;
      v52 = v43[3];
      v365 = v43[2];
      v366 = v52;
      v362[29] = v51;
      sub_1C6C15004(&v363, v362);
      sub_1C6B18CB8(0, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1C6B98654();

      v53 = sub_1C6D79530();
      v55 = v54;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1C6B6592C(0, *(v44 + 2) + 1, 1, v44);
      }

      v57 = *(v44 + 2);
      v56 = *(v44 + 3);
      if (v57 >= v56 >> 1)
      {
        v44 = sub_1C6B6592C((v56 > 1), v57 + 1, 1, v44);
      }

      ++v42;
      result = sub_1C6C15060(&v363);
      *(v44 + 2) = v57 + 1;
      v58 = &v44[16 * v57];
      *(v58 + 4) = v53;
      *(v58 + 5) = v55;
      v43 = (v43 + 232);
      a1 = v361;
      if (v354 == v42)
      {
        v30 = v353;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_223;
  }

  v45 = 0;
LABEL_17:
  sub_1C6D78740();
  v59 = v358 + 2 * v359;
  sub_1C6D783C0();
  if (v30)
  {
    v357 = v59;
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v30, 0);
    v60 = v363;
    v61 = (a1 + 64);
    v62 = v30;
    do
    {
      v64 = *(v61 - 1);
      v63 = *v61;
      *&v363 = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);

      if (v66 >= v65 >> 1)
      {
        sub_1C6B39280((v65 > 1), v66 + 1, 1);
        v60 = v363;
      }

      *(v60 + 16) = v66 + 1;
      v67 = v60 + 16 * v66;
      *(v67 + 32) = v64;
      *(v67 + 40) = v63;
      v61 += 29;
      --v62;
    }

    while (v62);
    a1 = v361;
    v30 = v353;
  }

  sub_1C6D78740();
  v68 = v358 + 3 * v359;
  sub_1C6D783C0();
  v69 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v30, 0);
    v69 = v363;
    v70 = *(v363 + 16);
    v71 = (a1 + 72);
    v72 = v30;
    do
    {
      v74 = *v71;
      v71 += 58;
      v73 = v74;
      *&v363 = v69;
      v75 = *(v69 + 24);
      if (v70 >= v75 >> 1)
      {
        sub_1C6B392F0((v75 > 1), v70 + 1, 1);
        v69 = v363;
      }

      *(v69 + 16) = v70 + 1;
      *(v69 + 4 * v70++ + 32) = v73;
      --v72;
    }

    while (v72);
    a1 = v361;
    v30 = v353;
  }

  v76 = *(v360 + 48);
  *(v68 + v76) = v69;
  v77 = *MEMORY[0x1E6996140];
  v78 = sub_1C6D78760();
  v346 = *(v78 - 8);
  v79 = *(v346 + 104);
  v350 = v77;
  v356 = v346 + 104;
  v357 = v78;
  v355 = v79;
  (v79)(v68 + v76, v77);
  v80 = v358 + 4 * v359;
  sub_1C6D783C0();
  v81 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v30, 0);
    v81 = v363;
    v82 = *(v363 + 16);
    v83 = (a1 + 76);
    v84 = v30;
    do
    {
      v86 = *v83;
      v83 += 58;
      v85 = v86;
      *&v363 = v81;
      v87 = *(v81 + 24);
      if (v82 >= v87 >> 1)
      {
        sub_1C6B392F0((v87 > 1), v82 + 1, 1);
        v81 = v363;
      }

      *(v81 + 16) = v82 + 1;
      *(v81 + 4 * v82++ + 32) = v85;
      --v84;
    }

    while (v84);
    a1 = v361;
    v30 = v353;
  }

  v88 = *(v360 + 48);
  *(v80 + v88) = v81;
  (v355)(v80 + v88, v350, v357);
  v89 = v358 + 5 * v359;
  sub_1C6D783C0();
  v90 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v30, 0);
    v90 = v363;
    v91 = *(v363 + 16);
    v92 = (a1 + 80);
    v93 = v30;
    do
    {
      v95 = *v92;
      v92 += 58;
      v94 = v95;
      *&v363 = v90;
      v96 = *(v90 + 24);
      if (v91 >= v96 >> 1)
      {
        sub_1C6B392F0((v96 > 1), v91 + 1, 1);
        v90 = v363;
      }

      *(v90 + 16) = v91 + 1;
      *(v90 + 4 * v91++ + 32) = v94;
      --v93;
    }

    while (v93);
    a1 = v361;
    v30 = v353;
  }

  v97 = *(v360 + 48);
  *(v89 + v97) = v90;
  (v355)(v89 + v97, v350, v357);
  v98 = v358 + 6 * v359;
  sub_1C6D783C0();
  v99 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v30, 0);
    v99 = v363;
    v100 = *(v363 + 16);
    v101 = (a1 + 84);
    v102 = v30;
    do
    {
      v104 = *v101;
      v101 += 58;
      v103 = v104;
      *&v363 = v99;
      v105 = *(v99 + 24);
      if (v100 >= v105 >> 1)
      {
        sub_1C6B392F0((v105 > 1), v100 + 1, 1);
        v99 = v363;
      }

      *(v99 + 16) = v100 + 1;
      *(v99 + 4 * v100++ + 32) = v103;
      --v102;
    }

    while (v102);
    a1 = v361;
    v30 = v353;
  }

  v106 = *(v360 + 48);
  *(v98 + v106) = v99;
  (v355)(v98 + v106, v350, v357);
  v349 = v358 - v359;
  v107 = v358 - v359 + 8 * v359;
  sub_1C6D783C0();
  v108 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v30, 0);
    v108 = v363;
    v109 = *(v363 + 16);
    v110 = (a1 + 88);
    v111 = v30;
    do
    {
      v113 = *v110;
      v110 += 58;
      v112 = v113;
      *&v363 = v108;
      v114 = *(v108 + 24);
      if (v109 >= v114 >> 1)
      {
        sub_1C6B392F0((v114 > 1), v109 + 1, 1);
        v108 = v363;
      }

      *(v108 + 16) = v109 + 1;
      *(v108 + 4 * v109++ + 32) = v112;
      --v111;
    }

    while (v111);
    a1 = v361;
    v30 = v353;
  }

  v115 = *(v360 + 48);
  *(v107 + v115) = v108;
  (v355)(v107 + v115, v350, v357);
  v116 = v358 + 8 * v359;
  sub_1C6D783C0();
  v117 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v30, 0);
    v117 = v363;
    v118 = *(v363 + 16);
    v119 = (a1 + 92);
    v120 = v30;
    do
    {
      v122 = *v119;
      v119 += 58;
      v121 = v122;
      *&v363 = v117;
      v123 = *(v117 + 24);
      if (v118 >= v123 >> 1)
      {
        sub_1C6B392F0((v123 > 1), v118 + 1, 1);
        v117 = v363;
      }

      *(v117 + 16) = v118 + 1;
      *(v117 + 4 * v118++ + 32) = v121;
      --v120;
    }

    while (v120);
    a1 = v361;
    v30 = v353;
  }

  v124 = *(v360 + 48);
  *(v116 + v124) = v117;
  (v355)(v116 + v124, v350, v357);
  v125 = v358 + 9 * v359;
  sub_1C6D783C0();
  v126 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v30, 0);
    v126 = v363;
    v127 = *(v363 + 16);
    v128 = (a1 + 96);
    v129 = v30;
    do
    {
      v131 = *v128;
      v128 += 58;
      v130 = v131;
      *&v363 = v126;
      v132 = *(v126 + 24);
      if (v127 >= v132 >> 1)
      {
        sub_1C6B392F0((v132 > 1), v127 + 1, 1);
        v126 = v363;
      }

      *(v126 + 16) = v127 + 1;
      *(v126 + 4 * v127++ + 32) = v130;
      --v129;
    }

    while (v129);
    a1 = v361;
    v30 = v353;
  }

  v133 = *(v360 + 48);
  *(v125 + v133) = v126;
  (v355)(v125 + v133, v350, v357);
  v134 = v358 + 10 * v359;
  sub_1C6D783C0();
  v135 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v30, 0);
    v135 = v363;
    v136 = *(v363 + 16);
    v137 = (a1 + 100);
    v138 = v30;
    do
    {
      v140 = *v137;
      v137 += 58;
      v139 = v140;
      *&v363 = v135;
      v141 = *(v135 + 24);
      if (v136 >= v141 >> 1)
      {
        sub_1C6B392F0((v141 > 1), v136 + 1, 1);
        v135 = v363;
      }

      *(v135 + 16) = v136 + 1;
      *(v135 + 4 * v136++ + 32) = v139;
      --v138;
    }

    while (v138);
    a1 = v361;
  }

  v142 = *(v360 + 48);
  *(v134 + v142) = v135;
  (v355)(v134 + v142, v350, v357);
  v143 = v358 + 11 * v359;
  sub_1C6D783C0();
  v144 = MEMORY[0x1E69E7CC0];
  v145 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v353, 0);
    v144 = v363;
    v146 = *(v363 + 16);
    v147 = (a1 + 104);
    do
    {
      v148 = *v147;
      *&v363 = v144;
      v149 = *(v144 + 24);
      if (v146 >= v149 >> 1)
      {
        sub_1C6B3922C((v149 > 1), v146 + 1, 1);
        v144 = v363;
      }

      *(v144 + 16) = v146 + 1;
      *(v144 + 4 * v146 + 32) = v148;
      v147 += 58;
      ++v146;
      --v145;
    }

    while (v145);
    a1 = v361;
  }

  v150 = *(v360 + 48);
  *(v143 + v150) = v144;
  v352 = *MEMORY[0x1E6996138];
  v355(v143 + v150);
  v151 = v358 + 12 * v359;
  sub_1C6D783C0();
  v152 = MEMORY[0x1E69E7CC0];
  v153 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v353, 0);
    v152 = v363;
    v154 = *(v363 + 16);
    v155 = (a1 + 108);
    do
    {
      v156 = *v155;
      *&v363 = v152;
      v157 = *(v152 + 24);
      if (v154 >= v157 >> 1)
      {
        sub_1C6B3922C((v157 > 1), v154 + 1, 1);
        v152 = v363;
      }

      *(v152 + 16) = v154 + 1;
      *(v152 + 4 * v154 + 32) = v156;
      v155 += 58;
      ++v154;
      --v153;
    }

    while (v153);
    a1 = v361;
  }

  v158 = *(v360 + 48);
  *(v151 + v158) = v152;
  (v355)(v151 + v158, v352, v357);
  v159 = v358 + 13 * v359;
  sub_1C6D783C0();
  v160 = MEMORY[0x1E69E7CC0];
  v161 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v353, 0);
    v160 = v363;
    v162 = *(v363 + 16);
    v163 = (a1 + 112);
    do
    {
      v164 = *v163;
      *&v363 = v160;
      v165 = *(v160 + 24);
      if (v162 >= v165 >> 1)
      {
        sub_1C6B3922C((v165 > 1), v162 + 1, 1);
        v160 = v363;
      }

      *(v160 + 16) = v162 + 1;
      *(v160 + 4 * v162 + 32) = v164;
      v163 += 58;
      ++v162;
      --v161;
    }

    while (v161);
    a1 = v361;
  }

  v166 = *(v360 + 48);
  *(v159 + v166) = v160;
  (v355)(v159 + v166, v352, v357);
  v167 = v358 + 14 * v359;
  sub_1C6D783C0();
  v168 = MEMORY[0x1E69E7CC0];
  v169 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v353, 0);
    v168 = v363;
    v170 = *(v363 + 16);
    v171 = (a1 + 116);
    do
    {
      v172 = *v171;
      *&v363 = v168;
      v173 = *(v168 + 24);
      if (v170 >= v173 >> 1)
      {
        sub_1C6B3922C((v173 > 1), v170 + 1, 1);
        v168 = v363;
      }

      *(v168 + 16) = v170 + 1;
      *(v168 + 4 * v170 + 32) = v172;
      v171 += 58;
      ++v170;
      --v169;
    }

    while (v169);
    a1 = v361;
  }

  v174 = *(v360 + 48);
  *(v167 + v174) = v168;
  (v355)(v167 + v174, v352, v357);
  v175 = v349 + 16 * v359;
  sub_1C6D783C0();
  v176 = MEMORY[0x1E69E7CC0];
  v177 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v353, 0);
    v176 = v363;
    v178 = *(v363 + 16);
    v179 = (a1 + 120);
    do
    {
      v180 = *v179;
      *&v363 = v176;
      v181 = *(v176 + 24);
      if (v178 >= v181 >> 1)
      {
        sub_1C6B3922C((v181 > 1), v178 + 1, 1);
        v176 = v363;
      }

      *(v176 + 16) = v178 + 1;
      *(v176 + 4 * v178 + 32) = v180;
      v179 += 58;
      ++v178;
      --v177;
    }

    while (v177);
  }

  v182 = *(v360 + 48);
  *(v175 + v182) = v176;
  (v355)(v175 + v182, v352, v357);
  v183 = v358 + 16 * v359;
  sub_1C6D783C0();
  v184 = MEMORY[0x1E69E7CC0];
  v185 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v353);
    v186 = v363;
    v187 = (v361 + 124);
    do
    {
      v188 = *v187;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v186 + 16) + 1, 1);
        v186 = v363;
      }

      v190 = *(v186 + 16);
      v189 = *(v186 + 24);
      if (v190 >= v189 >> 1)
      {
        sub_1C6B3922C((v189 > 1), v190 + 1, 1);
        v186 = v363;
      }

      *(v186 + 16) = v190 + 1;
      *(v186 + 4 * v190 + 32) = v188;
      v187 += 58;
      --v185;
    }

    while (v185);
  }

  else
  {
    v186 = MEMORY[0x1E69E7CC0];
  }

  v191 = *(v360 + 48);
  *(v183 + v191) = v186;
  (v355)(v183 + v191, v352, v357);
  v192 = v358 + 17 * v359;
  result = sub_1C6D783C0();
  *&v363 = v184;
  v193 = v354;
  if (v354)
  {
    v194 = v361 + 128;
    v195 = v45;
    while (v195)
    {
      v194 += 232;

      result = sub_1C6B38474(v196);
      --v195;
      if (!--v193)
      {
        v197 = v363;
        v193 = v354;
        goto LABEL_115;
      }
    }

LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
    return result;
  }

  v197 = v184;
LABEL_115:
  v198 = *(v360 + 48);
  *(v192 + v198) = v197;
  (v355)(v192 + v198, v352, v357);
  v199 = v358 + 18 * v359;
  result = sub_1C6D783C0();
  *&v363 = v184;
  if (v193)
  {
    v200 = v361 + 136;
    v201 = v45;
    while (v201)
    {
      v200 += 232;

      result = sub_1C6B38474(v202);
      --v201;
      if (!--v193)
      {
        v203 = v363;
        v193 = v354;
        goto LABEL_121;
      }
    }

    goto LABEL_224;
  }

  v203 = v184;
LABEL_121:
  v204 = *(v360 + 48);
  *(v199 + v204) = v203;
  (v355)(v199 + v204, v352, v357);
  v205 = v358 + 19 * v359;
  result = sub_1C6D783C0();
  *&v363 = v184;
  if (v193)
  {
    v206 = v361 + 144;
    v207 = v193;
    v208 = v45;
    while (v208)
    {
      v206 += 232;

      result = sub_1C6B38474(v209);
      --v208;
      if (!--v207)
      {
        v184 = v363;
        goto LABEL_126;
      }
    }

    goto LABEL_225;
  }

LABEL_126:
  v210 = *(v360 + 48);
  *(v205 + v210) = v184;
  (v355)(v205 + v210, v352, v357);
  v211 = v358 + 20 * v359;
  sub_1C6D783C0();
  v212 = MEMORY[0x1E69E7CC0];
  v213 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v353);
    v212 = v363;
    v214 = (v361 + 152);
    do
    {
      v215 = *v214;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v212 + 16) + 1, 1);
        v212 = v363;
      }

      v217 = *(v212 + 16);
      v216 = *(v212 + 24);
      if (v217 >= v216 >> 1)
      {
        sub_1C6B3922C((v216 > 1), v217 + 1, 1);
        v212 = v363;
      }

      *(v212 + 16) = v217 + 1;
      *(v212 + 4 * v217 + 32) = v215;
      v214 += 58;
      --v213;
    }

    while (v213);
  }

  v218 = v361;
  v219 = *(v360 + 48);
  *(v211 + v219) = v212;
  (v355)(v211 + v219, v352, v357);
  v220 = v358 + 21 * v359;
  sub_1C6D783C0();
  v221 = MEMORY[0x1E69E7CC0];
  v222 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v353);
    v221 = v363;
    v223 = (v218 + 156);
    do
    {
      v224 = *v223;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v221 + 16) + 1, 1);
        v221 = v363;
      }

      v226 = *(v221 + 16);
      v225 = *(v221 + 24);
      if (v226 >= v225 >> 1)
      {
        sub_1C6B3922C((v225 > 1), v226 + 1, 1);
        v221 = v363;
      }

      *(v221 + 16) = v226 + 1;
      *(v221 + 4 * v226 + 32) = v224;
      v223 += 58;
      --v222;
    }

    while (v222);
    v218 = v361;
  }

  v227 = *(v360 + 48);
  *(v220 + v227) = v221;
  (v355)(v220 + v227, v352, v357);
  v228 = v358 + 22 * v359;
  sub_1C6D783C0();
  v229 = MEMORY[0x1E69E7CC0];
  v230 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v353);
    v229 = v363;
    v231 = (v218 + 160);
    do
    {
      v232 = *v231;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v229 + 16) + 1, 1);
        v229 = v363;
      }

      v234 = *(v229 + 16);
      v233 = *(v229 + 24);
      if (v234 >= v233 >> 1)
      {
        sub_1C6B3922C((v233 > 1), v234 + 1, 1);
        v229 = v363;
      }

      *(v229 + 16) = v234 + 1;
      *(v229 + 4 * v234 + 32) = v232;
      v231 += 58;
      --v230;
    }

    while (v230);
  }

  v235 = *(v360 + 48);
  *(v228 + v235) = v229;
  (v355)(v228 + v235, v352, v357);
  v236 = v358 + 23 * v359;
  sub_1C6D783C0();
  v237 = MEMORY[0x1E69E7CC0];
  v238 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v353);
    v239 = v363;
    v240 = (v361 + 164);
    do
    {
      v241 = *v240;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v239 + 16) + 1, 1);
        v239 = v363;
      }

      v243 = *(v239 + 16);
      v242 = *(v239 + 24);
      if (v243 >= v242 >> 1)
      {
        sub_1C6B3922C((v242 > 1), v243 + 1, 1);
        v239 = v363;
      }

      *(v239 + 16) = v243 + 1;
      *(v239 + 4 * v243 + 32) = v241;
      v240 += 58;
      --v238;
    }

    while (v238);
  }

  else
  {
    v239 = MEMORY[0x1E69E7CC0];
  }

  v244 = *(v360 + 48);
  *(v236 + v244) = v239;
  (v355)(v236 + v244, v352, v357);
  v245 = v358 + 24 * v359;
  result = sub_1C6D783C0();
  *&v363 = v237;
  v246 = v354;
  if (v354)
  {
    v247 = v361 + 168;
    v248 = v45;
    while (v248)
    {
      v247 += 232;

      result = sub_1C6B38474(v249);
      --v248;
      if (!--v246)
      {
        v250 = v363;
        v246 = v354;
        goto LABEL_163;
      }
    }

    goto LABEL_226;
  }

  v250 = v237;
LABEL_163:
  v251 = *(v360 + 48);
  *(v245 + v251) = v250;
  (v355)(v245 + v251, v352, v357);
  v252 = v358 + 25 * v359;
  result = sub_1C6D783C0();
  *&v363 = v237;
  if (v246)
  {
    v253 = v361 + 176;
    v254 = v246;
    v255 = v45;
    while (v255)
    {
      v253 += 232;

      result = sub_1C6B38474(v256);
      --v255;
      if (!--v254)
      {
        v237 = v363;
        goto LABEL_168;
      }
    }

    goto LABEL_227;
  }

LABEL_168:
  v257 = *(v360 + 48);
  *(v252 + v257) = v237;
  (v355)(v252 + v257, v352, v357);
  v258 = v358 + 26 * v359;
  sub_1C6D783C0();
  v259 = MEMORY[0x1E69E7CC0];
  v260 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39184(v353);
    v259 = v363;
    v261 = (v361 + 188);
    do
    {
      v263 = *v261;
      v261 += 58;
      v262 = v263;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B392F0(0, *(v259 + 16) + 1, 1);
        v259 = v363;
      }

      v265 = *(v259 + 16);
      v264 = *(v259 + 24);
      if (v265 >= v264 >> 1)
      {
        sub_1C6B392F0((v264 > 1), v265 + 1, 1);
        v259 = v363;
      }

      *(v259 + 16) = v265 + 1;
      *(v259 + 4 * v265 + 32) = v262;
      --v260;
    }

    while (v260);
  }

  v266 = *(v360 + 48);
  *(v258 + v266) = v259;
  (v355)(v258 + v266, v350, v357);
  v267 = v358 + 27 * v359;
  sub_1C6D783C0();
  v268 = MEMORY[0x1E69E7CC0];
  v269 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39184(v353);
    v270 = v363;
    v271 = (v361 + 192);
    do
    {
      v273 = *v271;
      v271 += 58;
      v272 = v273;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B392F0(0, *(v270 + 16) + 1, 1);
        v270 = v363;
      }

      v275 = *(v270 + 16);
      v274 = *(v270 + 24);
      if (v275 >= v274 >> 1)
      {
        sub_1C6B392F0((v274 > 1), v275 + 1, 1);
        v270 = v363;
      }

      *(v270 + 16) = v275 + 1;
      *(v270 + 4 * v275 + 32) = v272;
      --v269;
    }

    while (v269);
  }

  else
  {
    v270 = MEMORY[0x1E69E7CC0];
  }

  v276 = *(v360 + 48);
  *(v267 + v276) = v270;
  (v355)(v267 + v276, v350, v357);
  v277 = v358 + 28 * v359;
  result = sub_1C6D783C0();
  *&v363 = v268;
  v278 = v354;
  if (v354)
  {
    v279 = v361 + 200;
    v280 = v45;
    while (v280)
    {
      v279 += 232;

      result = sub_1C6B38654(v281);
      --v280;
      if (!--v278)
      {
        v282 = v363;
        v278 = v354;
        goto LABEL_190;
      }
    }

    goto LABEL_228;
  }

  v282 = v268;
LABEL_190:
  v283 = *(v360 + 48);
  *(v277 + v283) = v282;
  (v355)(v277 + v283, v350, v357);
  v284 = v358 + 29 * v359;
  result = sub_1C6D783C0();
  *&v363 = v268;
  if (v278)
  {
    v285 = v361 + 208;
    while (v45)
    {
      v285 += 232;

      result = sub_1C6B38654(v286);
      --v45;
      if (!--v278)
      {
        v268 = v363;
        goto LABEL_195;
      }
    }

    goto LABEL_229;
  }

LABEL_195:
  v287 = *(v360 + 48);
  *(v284 + v287) = v268;
  (v355)(v284 + v287, v350, v357);
  v288 = v358 + 30 * v359;
  sub_1C6D783C0();
  v289 = MEMORY[0x1E69E7CC0];
  v291 = v343;
  v290 = v344;
  v292 = v353;
  if (v353)
  {
    *&v363 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v353);
    v289 = v363;
    v293 = (v361 + 184);
    do
    {
      v294 = *v293;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v289 + 16) + 1, 1);
        v289 = v363;
      }

      v296 = *(v289 + 16);
      v295 = *(v289 + 24);
      if (v296 >= v295 >> 1)
      {
        sub_1C6B3922C((v295 > 1), v296 + 1, 1);
        v289 = v363;
      }

      *(v289 + 16) = v296 + 1;
      *(v289 + 4 * v296 + 32) = v294;
      v293 += 58;
      --v292;
    }

    while (v292);
  }

  v297 = v360;
  v298 = *(v360 + 48);
  *(v288 + v298) = v289;
  v299 = v357;
  v300 = v355;
  (v355)(v288 + v298, v352, v357);
  v301 = v349 + 32 * v359;
  v302 = *(v297 + 48);
  sub_1C6D783C0();
  sub_1C6B18CB8(0, &qword_1EDCE7CF0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
  v303 = swift_allocObject();
  *(v303 + 16) = xmmword_1C6D7E630;
  v304 = v338;
  sub_1C6D75F40();
  sub_1C6D75F10();
  v306 = v305;
  (*(v339 + 8))(v304, v340);
  v307 = v306;
  *(v303 + 32) = v307;
  *(v301 + v302) = v303;
  v300(v301 + v302, v352, v299);
  result = sub_1C6D787D0();
  v308 = v361;
  v309 = v353;
  if (v341 >= 1)
  {
    sub_1C6D783C0();
    v310 = MEMORY[0x1E69E7CC0];
    if (v309)
    {
      v362[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B3916C(v309);
      v311 = v308 + 32;
      v310 = v362[0];
      do
      {
        v312 = *(v311 + 208);
        v375 = *(v311 + 192);
        v376 = v312;
        v377 = *(v311 + 224);
        v313 = *(v311 + 144);
        v371 = *(v311 + 128);
        v372 = v313;
        v314 = *(v311 + 176);
        v373 = *(v311 + 160);
        v374 = v314;
        v315 = *(v311 + 80);
        v367 = *(v311 + 64);
        v368 = v315;
        v316 = *(v311 + 112);
        v369 = *(v311 + 96);
        v370 = v316;
        v317 = *(v311 + 16);
        v363 = *v311;
        v364 = v317;
        v318 = *(v311 + 48);
        v365 = *(v311 + 32);
        v366 = v318;
        sub_1C6CE5F8C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6B39414(0, *(v310 + 16) + 1, 1);
          v310 = v362[0];
        }

        v320 = *(v310 + 16);
        v319 = *(v310 + 24);
        if (v320 >= v319 >> 1)
        {
          sub_1C6B39414((v319 > 1), v320 + 1, 1);
          v310 = v362[0];
        }

        *(v310 + 16) = v320 + 1;
        sub_1C6C150B4(v351, v310 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v320);
        v311 += 232;
        --v309;
      }

      while (v309);
      v308 = v361;
      v309 = v353;
    }

    v321 = v335;
    sub_1C6B9EDFC(v310, v335);

    (*(v346 + 56))(v321, 0, 1, v357);
    result = sub_1C6D78830();
  }

  if (v342 >= 1)
  {
    sub_1C6D783C0();
    v322 = MEMORY[0x1E69E7CC0];
    if (v309)
    {
      v362[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B3916C(v309);
      v323 = v308 + 32;
      v322 = v362[0];
      do
      {
        v324 = *(v323 + 208);
        v375 = *(v323 + 192);
        v376 = v324;
        v377 = *(v323 + 224);
        v325 = *(v323 + 144);
        v371 = *(v323 + 128);
        v372 = v325;
        v326 = *(v323 + 176);
        v373 = *(v323 + 160);
        v374 = v326;
        v327 = *(v323 + 80);
        v367 = *(v323 + 64);
        v368 = v327;
        v328 = *(v323 + 112);
        v369 = *(v323 + 96);
        v370 = v328;
        v329 = *(v323 + 16);
        v363 = *v323;
        v364 = v329;
        v330 = *(v323 + 48);
        v365 = *(v323 + 32);
        v366 = v330;
        sub_1C6CE6240();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6B39414(0, *(v322 + 16) + 1, 1);
          v322 = v362[0];
        }

        v332 = *(v322 + 16);
        v331 = *(v322 + 24);
        if (v332 >= v331 >> 1)
        {
          sub_1C6B39414((v331 > 1), v332 + 1, 1);
          v322 = v362[0];
        }

        *(v322 + 16) = v332 + 1;
        sub_1C6C150B4(v291, v322 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v332);
        v323 += 232;
        --v309;
      }

      while (v309);
    }

    v333 = v336;
    sub_1C6B9EDFC(v322, v336);

    (*(v346 + 56))(v333, 0, 1, v357);
    return sub_1C6D78830();
  }

  return result;
}

void sub_1C6C14FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C150B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6C15190()
{
  result = qword_1EC1D7CF8;
  if (!qword_1EC1D7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7CF8);
  }

  return result;
}

unint64_t sub_1C6C151E8()
{
  result = qword_1EC1D7D00;
  if (!qword_1EC1D7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7D00);
  }

  return result;
}

unint64_t sub_1C6C15240()
{
  result = qword_1EC1D7D08;
  if (!qword_1EC1D7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7D08);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(uint64_t a1)
{
  result = qword_1EDCE3610;
  if (!qword_1EDCE3610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6C15528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6C156B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C15D54()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7D10);
  __swift_project_value_buffer(v0, qword_1EC1D7D10);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A08 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7D10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C16074(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C16074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C16B20(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C161C4(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C161C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6C16B20(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  sub_1C6C16B20(&qword_1EC1D7D28, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C164A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C16B20(&qword_1EC1D7D40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C1651C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A08 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7D10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C165C4(uint64_t a1)
{
  v2 = sub_1C6C16B20(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C16630(uint64_t a1, uint64_t a2)
{
  sub_1C6C16B20(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventArticleLikedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B3FB88(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0) + 24);
  v19 = *(v14 + 48);
  sub_1C6B3E190(a1 + v18, v17);
  sub_1C6B3E190(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6C16B20(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v19], v8);
  v23 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C16B20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C16B68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v43 = a2;
  v8 = sub_1C6D77E40();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C6D774C0();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C17000(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6D77290();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  (*(v24 + 16))(&v38 - v23, a1, v20, v22);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
    v25 = sub_1C6D77270();
    v26 = sub_1C6D77330();
    v28 = v27;

    if (!v5)
    {
      sub_1C6C17094(&unk_1EC1D7D48, MEMORY[0x1E69B45C8], MEMORY[0x1E69B45D0]);
      v29 = v44;
      sub_1C6D75AF0();
      v31 = v40;
      sub_1C6D774B0();
      v32 = sub_1C6D77E30();
      v34 = v33;
      sub_1C6B1C9F0(v26, v28);
      (*(v41 + 8))(v31, v42);
      (*(v39 + 8))(v13, v29);
      *a5 = v32;
      a5[1] = v34;
      v35 = *MEMORY[0x1E69E3638];
      v36 = sub_1C6D76F90();
      v37 = *(v36 - 8);
      (*(v37 + 104))(a5, v35, v36);
      (*(v37 + 56))(a5, 0, 1, v36);
    }
  }

  else
  {
    v30 = sub_1C6D76F90();
    (*(*(v30 - 8) + 56))(a5, 1, 1, v30);
  }
}

void sub_1C6C17000(uint64_t a1)
{
  if (!qword_1EDCE6030)
  {
    sub_1C6D774D0();
    sub_1C6C17094(&qword_1EDCE5FB8, MEMORY[0x1E69B45D8], MEMORY[0x1E69B45C0]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6030);
    }
  }
}

uint64_t sub_1C6C17094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C6C170DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D7A2C0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_1C6D7A160();
    __swift_destroy_boxed_opaque_existential_1(v3);
    return sub_1C6D75F00();
  }

  return result;
}

uint64_t sub_1C6C171A4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1C6D77430();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C6D77A60();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C18C48(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D77290();
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  (*(v22 + 16))(&v38 - v21, a1, v18, v20);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v17, v13);
    v23 = sub_1C6D77270();
    v25 = sub_1C6D77330();
    v27 = v26;

    sub_1C6C18CFC(&qword_1EDCE5EF8, 255, MEMORY[0x1E69B48E0], MEMORY[0x1E69B48E8]);
    sub_1C6D75AF0();
    sub_1C6C183C4(0);
    v29 = v28;
    v30 = (a4 + *(v28 + 48));
    v31 = type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
    MEMORY[0x1EEE9AC00](v31, v32);
    *(&v38 - 2) = v11;
    sub_1C6C18CFC(&unk_1EDCE4FA0, 255, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);
    sub_1C6D78C30();
    v33 = v39;
    sub_1C6D77A30();
    v34 = sub_1C6D77420();
    v36 = v35;
    sub_1C6B1C9F0(v25, v27);
    (*(v41 + 8))(v33, v42);
    *v30 = v34;
    v30[1] = v36;
    (*(*(v29 - 8) + 56))(a4, 0, 1, v29);
    return (*(v40 + 8))(v11, v43);
  }

  else
  {
    sub_1C6C183C4(0);
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }
}

uint64_t sub_1C6C177B4(float *a1)
{
  v2 = sub_1C6D77550();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77650();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A50();
  sub_1C6D77640();
  v13 = v12;
  (*(v8 + 8))(v11, v7);
  *a1 = v13;
  sub_1C6D77A40();
  sub_1C6D77540();
  v15 = v14;
  v16 = *(v3 + 8);
  v16(v6, v2);
  *(a1 + 1) = v15;
  sub_1C6D77A40();
  sub_1C6D77530();
  v18 = v17;
  result = (v16)(v6, v2);
  *(a1 + 2) = v18;
  return result;
}

uint64_t XavierEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = sub_1C6D77E20();
  v76 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v8);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C6D76A40();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C18370(0, &qword_1EDCE6210, MEMORY[0x1E69E3698]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v51 - v15;
  v63 = sub_1C6D76F90();
  *&v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v17);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C18370(0, &qword_1EDCE4FD8, sub_1C6C183C4);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v51 - v21;
  sub_1C6C183C4(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1C6D77290();
  result = sub_1C6D77260();
  if ((result & 1) == 0)
  {
    v71 = v16;
    v75 = a1;
    sub_1C6C171A4(a1, v22);
    v30 = (*(v25 + 48))(v22, 1, v24);
    v70 = v12;
    v72 = a2;
    v73 = a3;
    if (v30 == 1)
    {
      result = sub_1C6C18AA8(v22, &qword_1EDCE4FD8, sub_1C6C183C4);
    }

    else
    {
      sub_1C6C18B04(v22, v28);
      sub_1C6CE3B08(v28, *&v28[*(v24 + 48)], *&v28[*(v24 + 48) + 8]);
      result = sub_1C6C18B68(v28);
    }

    v31 = v4;
    v32 = *(v4 + OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_actionTranslators);
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = *(v4 + OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_jsonDecoder);
      v35 = v32 + 32;
      v67 = OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor__configuration;
      v68 = v34;
      v66 = (v69 + 8);
      v62 = (v64 + 48);
      v56 = OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_personalizer;
      v55 = (v64 + 32);
      v54 = (v76 + 8);
      v53 = OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_sessionTracker;
      v52 = (v64 + 8);
      v36 = MEMORY[0x1E69E6158];
      v51 = xmmword_1C6D7E630;
      v64 = xmmword_1C6D7EB10;
      v69 = v31;
      do
      {
        v76 = v33;
        sub_1C6B16F28(v35, v77);
        v37 = v78;
        v38 = v79;
        __swift_project_boxed_opaque_existential_1(v77, v78);

        v39 = v70;
        sub_1C6D78230();

        v40 = v71;
        (*(v38 + 8))(v75, v68, v39, v72, v73, v37, v38);
        __swift_destroy_boxed_opaque_existential_1(v77);
        (*v66)(v39, v74);
        v41 = v63;
        if ((*v62)(v40, 1, v63) == 1)
        {
          result = sub_1C6C18AA8(v40, &qword_1EDCE6210, MEMORY[0x1E69E3698]);
        }

        else
        {
          v42 = v57;
          (*v55)(v57, v40, v41);
          if (qword_1EDCE03B8 != -1)
          {
            swift_once();
          }

          v43 = qword_1EDCE03C0;
          sub_1C6B1D314(0);
          v60 = v44;
          v45 = swift_allocObject();
          *(v45 + 16) = v51;
          sub_1C6C18CFC(&unk_1EDCE6220, 255, MEMORY[0x1E69E3698], MEMORY[0x1E69E36A0]);
          v46 = sub_1C6D7A0E0();
          v48 = v47;
          *(v45 + 56) = v36;
          *(v45 + 64) = sub_1C6B2064C();
          *(v45 + 32) = v46;
          *(v45 + 40) = v48;
          v49 = sub_1C6D79AC0();
          v61 = v43;
          sub_1C6D78D30("Event processor successfully translated action %{public}@", 57, 2, &dword_1C6B09000, v43, v49, v45);

          sub_1C6BE4020(v42);
          v50 = v58;
          sub_1C6D77250();
          sub_1C6CE3D30(v42, v50);
          (*v54)(v50, v59);
          result = (*v52)(v42, v63);
        }

        v35 += 40;
        v33 = v76 - 1;
      }

      while (v76 != 1);
    }
  }

  return result;
}

void sub_1C6C18370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6C183C4(uint64_t a1)
{
  if (!qword_1EDCE4FE0[0])
  {
    type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDCE4FE0);
    }
  }
}

id XavierEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XavierEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6C1857C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7C0](a1, ObjectType);
}

uint64_t sub_1C6C185CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7C8](a1, ObjectType);
}

uint64_t sub_1C6C1861C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7D0](a1, ObjectType);
}

uint64_t sub_1C6C1866C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7E0](a1, ObjectType);
}

uint64_t sub_1C6C186BC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7B8](a1, a2, ObjectType);
}

uint64_t sub_1C6C18714(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7D8](a1, a2, ObjectType);
}

uint64_t sub_1C6C1876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7E8](a1, a2, a3, a4, ObjectType);
}

uint64_t XavierEventProcessor.configurationManager(_:appConfigurationDidChange:)(uint64_t a1, void *a2)
{
  v3 = sub_1C6D76A40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v15 - v11;
  v13 = [a2 personalizationTreatment];
  sub_1C6B7A268();

  (*(v4 + 16))(v7, v12, v3);

  sub_1C6D78240();

  return (*(v4 + 8))(v12, v3);
}

uint64_t sub_1C6C18AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C18370(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C18B04(uint64_t a1, uint64_t a2)
{
  sub_1C6C183C4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C18B68(uint64_t a1)
{
  sub_1C6C183C4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6C18C48(uint64_t a1)
{
  if (!qword_1EDCE6068)
  {
    sub_1C6D77A70();
    sub_1C6C18CFC(&qword_1EDCE5EF0, 255, MEMORY[0x1E69B48F0], MEMORY[0x1E69B48D8]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6068);
    }
  }
}

uint64_t sub_1C6C18CFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t Com_Apple_News_Personalization_SessionMessageVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6C18DC0(uint64_t a1, uint64_t a2)
{
  sub_1C6D7A260();
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C18E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B84C68();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6C18E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6D7A260();
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C18EFC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7DE8);
  __swift_project_value_buffer(v0, qword_1EC1D7DE8);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6D824E0;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "SESSION_MESSAGE_VERSION_UNKNOWN";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "SESSION_MESSAGE_VERSION_ONE";
  *(v9 + 8) = 27;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "SESSION_MESSAGE_VERSION_TWO";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "SESSION_MESSAGE_VERSION_THREE";
  *(v13 + 1) = 29;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "SESSION_MESSAGE_VERSION_FOUR";
  *(v15 + 1) = 28;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "SESSION_MESSAGE_VERSION_FIVE";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "SESSION_MESSAGE_VERSION_SIX";
  *(v19 + 1) = 27;
  v19[16] = 2;
  v8();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionMessageVersion._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6C1928C()
{
  result = qword_1EDCE4DD0;
  if (!qword_1EDCE4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE4DD0);
  }

  return result;
}

unint64_t sub_1C6C192E4()
{
  result = qword_1EDCE4DC0;
  if (!qword_1EDCE4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE4DC0);
  }

  return result;
}

unint64_t sub_1C6C1933C()
{
  result = qword_1EC1D7E00;
  if (!qword_1EC1D7E00)
  {
    sub_1C6C19394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E00);
  }

  return result;
}

void sub_1C6C19394()
{
  if (!qword_1EC1D7E08)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7E08);
    }
  }
}

unint64_t sub_1C6C193E8()
{
  result = qword_1EDCE4DC8;
  if (!qword_1EDCE4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE4DC8);
  }

  return result;
}

uint64_t sub_1C6C1943C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_News_Personalization_GroupType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_News_Personalization_GroupType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6C19548(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6C19564(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6C19594(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1C6D783E0();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v56 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v58 = &v52 - v16;
  sub_1C6B7A08C(0);
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C6D75F80();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v26 = sub_1C6D75F60();
  v28 = v27;
  (*(v22 + 8))(v25, v21);
  if (qword_1EDCE2380 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDCE2388;
  sub_1C6B1D314(0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C6D7E630;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1C6B2064C();
  *(v30 + 32) = v26;
  *(v30 + 40) = v28;

  v31 = sub_1C6D79AC0();
  sub_1C6D78D30("Running on global graph with request ID %{public}@", 50, 2, &dword_1C6B09000, v29, v31, v30);

  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v52 - 4) = a3;
  *(&v52 - 3) = v26;
  *(&v52 - 2) = v28;
  *(&v52 - 8) = a2 & 1;
  v34 = v67;
  sub_1C6D784F0();
  if (v34)
  {
  }

  else
  {

    v35 = v62;
    sub_1C6D78500();
    a3 = v64;
    v36 = v65;

    v37 = [v36 tagSuggestionsConfiguration];

    if (v37)
    {
      sub_1C6C1A688(v37, a2 & 1, &v66);

      v38 = v58;
      sub_1C6D783C0();
      sub_1C6BB320C();
      v39 = sub_1C6D786C0();
      v54 = v37;
      v53 = v39;
      v40 = v20;
      v41 = *(v59 + 8);
      v42 = v38;
      v43 = v60;
      v41(v42, v60);

      v44 = v57;
      sub_1C6D783C0();
      v67 = v40;
      v59 = sub_1C6D786D0();
      v41(v44, v43);

      v45 = v56;
      sub_1C6D783C0();
      v47 = v43;
      v58 = sub_1C6D786C0();
      v41(v45, v43);

      v48 = v55;
      sub_1C6D783C0();
      sub_1C6C1A7C0(&v66);
      v49 = sub_1C6D786D0();
      v41(v48, v47);
      v50 = sub_1C6C1A420(v53, v59);

      v63 = v50;
      sub_1C6C1A7F0(0, &unk_1EDCDF9E8, sub_1C6C1A854, MEMORY[0x1E69E62F8]);
      sub_1C6C1A8B4();
      a3 = sub_1C6D79680();

      v51 = sub_1C6C1A420(v58, v49);

      v63 = v51;
      sub_1C6D79680();

      (*(v61 + 8))(v67, v62);
    }

    else
    {
      sub_1C6C1A634();
      swift_allocError();
      swift_willThrow();
      (*(v61 + 8))(v20, v35);
    }
  }

  return a3;
}

uint64_t sub_1C6C19D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v11 = sub_1C6D78810();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - v17;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v46 - v22;
  v24 = [*(a1 + 24) tagSuggestionsConfiguration];
  if (v24)
  {
    v25 = v24;
    v50 = a6;
    v51 = a4;
    sub_1C6D787D0();
    v26 = [v25 recipeEventAggregationConfiguration];
    v55 = v11;
    v49 = a3;
    v54 = v23;
    if (v26)
    {
      v47 = v25;
      v48 = v12;
      v27 = v26;
      v28 = [v27 maxSessionEvents];
      sub_1C6BFEC6C([v27 eventConditions], v57);
      v29 = [v27 inputNames];
      v30 = sub_1C6D79780();

      v60 = v28;
      v61 = v57[0];
      v62 = v57[1];
      v63 = v58;
      v64 = v30;
      v31 = *(a2 + 32);
      MEMORY[0x1EEE9AC00](v32, v33);
      *(&v46 - 2) = &v60;
      *(&v46 - 1) = a2;
      os_unfair_lock_lock((v31 + 24));
      v34 = v56;
      sub_1C6C1A93C((v31 + 16), v18);
      v56 = v34;
      v35 = (v31 + 24);
      if (v34)
      {
        os_unfair_lock_unlock(v35);
        sub_1C6BC624C(&v60);
        v12 = v48;
        if (qword_1EDCE2380 != -1)
        {
          swift_once();
        }

        v46 = qword_1EDCE2388;
        v36 = sub_1C6D79AA0();
        sub_1C6B1D314(0);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1C6D7EB10;
        v38 = MEMORY[0x1E69E6158];
        *(v37 + 56) = MEMORY[0x1E69E6158];
        v39 = sub_1C6B2064C();
        *(v37 + 64) = v39;
        v40 = v51;
        *(v37 + 32) = a3;
        *(v37 + 40) = v40;
        *&v57[0] = 0;
        *(&v57[0] + 1) = 0xE000000000000000;
        v41 = v56;
        v65 = v56;
        sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);

        sub_1C6D79E60();
        v42 = v57[0];
        *(v37 + 96) = v38;
        *(v37 + 104) = v39;
        *(v37 + 72) = v42;
        sub_1C6D78D30("Failed to include recipe events for request ID %{public}@ with error %{public}@", 79, 2, &dword_1C6B09000, v46, v36, v37);

        v56 = 0;
        v11 = v55;
        v23 = v54;
      }

      else
      {
        os_unfair_lock_unlock(v35);
        sub_1C6BC624C(&v60);

        v12 = v48;
        v23 = v54;
        v11 = v55;
        (*(v48 + 8))(v54, v55);
        (*(v12 + 32))(v23, v18, v11);
      }

      v25 = v47;
    }

    sub_1C6C1A688(v25, v53 & 1, &v59);
    (*(v12 + 16))(v52, v23, v11);
    sub_1C6C1A7F0(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
    sub_1C6D783E0();
    v44 = v25;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1C6D80210;

    sub_1C6D783C0();

    sub_1C6D783C0();

    sub_1C6D783C0();

    sub_1C6D783C0();
    sub_1C6C1A7C0(&v59);
    sub_1C6C07550(v45);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    sub_1C6D78790();

    return (*(v12 + 8))(v54, v55);
  }

  else
  {
    sub_1C6C1A634();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C6C1A420(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1C6B395B4(0, v6, 0);
  v29 = v5;
  v30 = v4;
  v27 = a1;
  v28 = v6;
  v26 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v9;
      v31 = *(v9 - 1);
      v11 = *v8;
      v13 = *(v32 + 16);
      v12 = *(v32 + 24);

      if (v13 >= v12 >> 1)
      {
        result = sub_1C6B395B4((v12 > 1), v13 + 1, 1);
      }

      *(v32 + 16) = v13 + 1;
      v14 = v32 + 24 * v13;
      --v5;
      *(v14 + 32) = v31;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v29;
    v15 = v30;
    if (v30 <= v29)
    {
      return v32;
    }

    v17 = v28;
    v18 = (v27 + 16 * v28 + 40);
    while (v17 < v15)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        if (v17 >= v16)
        {
          goto LABEL_25;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = *(v26 + 32 + 4 * v17);
        v24 = *(v32 + 16);
        v23 = *(v32 + 24);

        if (v24 >= v23 >> 1)
        {
          result = sub_1C6B395B4((v23 > 1), v24 + 1, 1);
        }

        *(v32 + 16) = v24 + 1;
        v25 = v32 + 24 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v20;
        *(v25 + 48) = v22;
        ++v17;
        v18 += 2;
        v16 = v29;
        v15 = v30;
        if (v19 != v30)
        {
          continue;
        }
      }

      return v32;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1C6C1A634()
{
  result = qword_1EC1D7E10;
  if (!qword_1EC1D7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E10);
  }

  return result;
}

void sub_1C6C1A688(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = &selRef_bundleOutputConfiguration;
  if ((a2 & 1) == 0)
  {
    v4 = &selRef_nonBundleOutputConfiguration;
  }

  v5 = [a1 *v4];
  v6 = [v5 channelIDsOutputName];
  v21 = sub_1C6D795A0();
  v8 = v7;

  v9 = [v5 channelScoresOutputName];
  v10 = sub_1C6D795A0();
  v12 = v11;

  v13 = [v5 topicIDsOutputName];
  v14 = sub_1C6D795A0();
  v16 = v15;

  v17 = [v5 topicScoresOutputName];
  v18 = sub_1C6D795A0();
  v20 = v19;

  *a3 = v21;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v12;
  a3[4] = v14;
  a3[5] = v16;
  a3[6] = v18;
  a3[7] = v20;
}

void sub_1C6C1A7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C1A854()
{
  if (!qword_1EDCE6680)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE6680);
    }
  }
}

unint64_t sub_1C6C1A8B4()
{
  result = qword_1EC1D7E18;
  if (!qword_1EC1D7E18)
  {
    sub_1C6C1A7F0(255, &unk_1EDCDF9E8, sub_1C6C1A854, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E18);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6C1A96C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C6C1A9B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C6C1AA28()
{
  result = qword_1EC1D7E20;
  if (!qword_1EC1D7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E20);
  }

  return result;
}

uint64_t sub_1C6C1AAB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1C6B396C4(0, v1, 0);
  v2 = v24;
  v3 = a1 + 64;
  result = sub_1C6D79CC0();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(v6 + 36);
    swift_getKeyPath();

    swift_getAtKeyPath();

    v12 = *(v24 + 16);
    v11 = *(v24 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_1C6B396C4((v11 > 1), v12 + 1, 1);
    }

    *(v24 + 16) = v12 + 1;
    *(v24 + 8 * v12 + 32) = v23;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v13 = *(a1 + 64 + 8 * v10);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v8 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v21;
    }

    else
    {
      v15 = v10 << 6;
      v16 = v10 + 1;
      v17 = (a1 + 72 + 8 * v10);
      v9 = v21;
      while (v16 < (v8 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1C6B360A8(v5, v22, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v5, v22, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ChannelPickerSuggestionType.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t ChannelPickerSuggestion.suggestionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChannelPickerSuggestionsService.suggestions(count:type:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 > 1)
  {
    return sub_1C6C1AE00(a1);
  }

  else
  {
    return sub_1C6C1B098(a1, v2 == 0);
  }
}

uint64_t sub_1C6C1AE00(uint64_t a1)
{
  v2 = [*(v1 + 88) mostFrequentLocation];
  if (v2)
  {
    v3 = v2;
    sub_1C6D77FA0();
    v4 = sub_1C6D77F90();
    if (v4)
    {
      if (qword_1EC1D5A70 != -1)
      {
        swift_once();
      }

      v6 = qword_1EC1D8588;
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C6D7E630;
      v8 = [v3 description];
      v9 = sub_1C6D795A0();
      v11 = v10;

      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1C6B2064C();
      *(v7 + 32) = v9;
      *(v7 + 40) = v11;
      v12 = sub_1C6D79AC0();
      sub_1C6D78D30("Getting location suggestions using location %{public}@", 54, 2, &dword_1C6B09000, v6, v12, v7);
    }

    MEMORY[0x1EEE9AC00](v4, v5);
    sub_1C6C1E738(0);
    swift_allocObject();
    v13 = sub_1C6D78350();

    return v13;
  }

  else
  {
    if (qword_1EC1D5A70 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC1D8588;
    v16 = sub_1C6D79AA0();
    sub_1C6D78D30("Unable to get local suggestions as user location is unavailable", 63, 2, &dword_1C6B09000, v15, v16, MEMORY[0x1E69E7CC0]);
    sub_1C6C1E7B4();
    swift_allocError();
    *v17 = 0;
    sub_1C6C1E738(0);
    swift_allocObject();
    return sub_1C6D782F0();
  }
}

uint64_t sub_1C6C1B098(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2[8];
  v5 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v4);
  (*(v5 + 8))(&v185, 0, v4, v5);
  v6 = v187;
  v7 = v188;
  __swift_project_boxed_opaque_existential_1(&v185, v187);
  v8 = sub_1C6C1C5C4(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v185);
  v9 = sub_1C6C1CDCC(0, v3);
  v16 = v9;
  if (!v9)
  {

    sub_1C6C1E7B4();
    swift_allocError();
    *v38 = 0;
    sub_1C6C1E738(0);
    swift_allocObject();
    return sub_1C6D782F0();
  }

  v167 = v3;
  v17 = *(v9 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = 0;
    v183 = v9 + 32;
    v20 = v8 + 56;
    v180 = *(v9 + 16);
    while (1)
    {
      if (v19 >= *(v16 + 16))
      {
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
        goto LABEL_172;
      }

      v21 = (v183 + 16 * v19);
      v23 = *v21;
      v22 = v21[1];
      ++v19;
      if (!*(v8 + 16))
      {
        break;
      }

      sub_1C6D7A260();

      sub_1C6D79610();
      v24 = sub_1C6D7A2B0();
      v25 = -1 << *(v8 + 32);
      v26 = v24 & ~v25;
      if ((*(v20 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = (*(v8 + 48) + 16 * v26);
          v29 = *v28 == v23 && v28[1] == v22;
          if (v29 || (sub_1C6D7A130() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v20 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        if (v19 == v17)
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6B39280(0, *(v18 + 16) + 1, 1);
        }

        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1C6B39280((v30 > 1), v31 + 1, 1);
        }

        *(v18 + 16) = v31 + 1;
        v32 = v18 + 16 * v31;
        *(v32 + 32) = v23;
        *(v32 + 40) = v22;
        v17 = v180;
        if (v19 == v180)
        {
          goto LABEL_26;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_26:

  sub_1C6B75C84();
  v158 = v35;
  v36 = v35 >> 1;
  v165 = v33;
  v184 = v35 >> 1;
  v171 = v34;
  if (v34 == v35 >> 1)
  {
    v37 = MEMORY[0x1E69E7CC8];
    goto LABEL_130;
  }

  v181 = v8 + 56;
  v39 = v33 + 8;
  v154 = v36 - 1;
  v168 = v34 - 1;
  v169 = v33 + 8 + 16 * v34;
  v37 = MEMORY[0x1E69E7CC8];
  v40 = -v36;
  v41 = v34;
  v155 = v33 + 8;
  do
  {
    v162 = v37;
    v42 = (v39 + 16 * v41);
    v43 = v41;
    while (1)
    {
      if (v41 < v171 || v43 >= v36)
      {
        goto LABEL_170;
      }

      v175 = v43;
      v45 = *(v42 - 1);
      v44 = *v42;
      sub_1C6B18CB8(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1C6D7E630;
      v173 = v45;
      *(v46 + 32) = v45;
      *(v46 + 40) = v44;
      v177 = v44;
      swift_bridgeObjectRetain_n();
      v47 = sub_1C6C1CDCC(v46, v167 & 1);

      if (v47)
      {
        break;
      }

      if (qword_1EC1D5A70 != -1)
      {
        swift_once();
      }

      v43 = v175 + 1;
      v48 = qword_1EC1D8588;
      v49 = sub_1C6D79AA0();
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1C6D7E630;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1C6B2064C();
      *(v50 + 32) = v173;
      *(v50 + 40) = v177;

      sub_1C6D78D30("Unexpectedly got nil suggestions back when getting related tags for %{public}@", 78, 2, &dword_1C6B09000, v48, v49, v50);

      v42 += 2;
      if (v36 == v175 + 1)
      {
        v37 = v162;
        goto LABEL_130;
      }
    }

    v51 = *(v47 + 16);
    if (v51)
    {
      v52 = 0;
      v160 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        while (1)
        {
          if (v52 >= *(v47 + 16))
          {
            goto LABEL_171;
          }

          v53 = (v47 + 32 + 16 * v52);
          v55 = *v53;
          v54 = v53[1];
          ++v52;
          if (*(v8 + 16))
          {
            break;
          }

LABEL_53:
          v62 = v168;
          v63 = v169;
          while (v40 + v62 != -1)
          {
            if (++v62 >= v36)
            {
              __break(1u);
              goto LABEL_165;
            }

            if (*(v63 - 1) != v55 || *v63 != v54)
            {
              v63 += 2;
              if ((sub_1C6D7A130() & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_40;
          }

          v65 = v160;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6B39280(0, *(v160 + 16) + 1, 1);
            v65 = v160;
          }

          v67 = *(v65 + 16);
          v66 = *(v65 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_1C6B39280((v66 > 1), v67 + 1, 1);
            v65 = v160;
          }

          *(v65 + 16) = v67 + 1;
          v160 = v65;
          v68 = v65 + 16 * v67;
          *(v68 + 32) = v55;
          *(v68 + 40) = v54;
          v36 = v184;
          if (v52 == v51)
          {
            goto LABEL_69;
          }
        }

        sub_1C6D7A260();

        sub_1C6D79610();
        v56 = sub_1C6D7A2B0();
        v57 = -1 << *(v8 + 32);
        v58 = v56 & ~v57;
        if (((*(v181 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_53;
        }

        v59 = ~v57;
        while (1)
        {
          v60 = (*(v8 + 48) + 16 * v58);
          v61 = *v60 == v55 && v60[1] == v54;
          if (v61 || (sub_1C6D7A130() & 1) != 0)
          {
            break;
          }

          v58 = (v58 + 1) & v59;
          if (((*(v181 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

LABEL_40:

        if (v52 == v51)
        {
          goto LABEL_69;
        }
      }
    }

    v160 = MEMORY[0x1E69E7CC0];
LABEL_69:

    v69 = *(v160 + 16);
    if (v69 >= 3)
    {
      v70 = 3;
    }

    else
    {
      v70 = *(v160 + 16);
    }

    if (v69)
    {
      v71 = 0;
      v161 = MEMORY[0x1E69E7CC8];
      v157 = v70;
      while (1)
      {
        if (v71 == v70)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        v159 = v71;
        v76 = (v160 + 32 + 16 * v71);
        v78 = *v76;
        v77 = v76[1];
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1C6D7E630;
        v164 = v78;
        *(v79 + 32) = v78;
        *(v79 + 40) = v77;
        v166 = v77;
        swift_bridgeObjectRetain_n();
        v80 = sub_1C6C1CDCC(v79, v167 & 1);

        if (!v80)
        {
          if (qword_1EC1D5A70 != -1)
          {
            swift_once();
          }

          v100 = qword_1EC1D8588;
          v101 = sub_1C6D79AA0();
          sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v102 = swift_allocObject();
          *(v102 + 16) = xmmword_1C6D7E630;
          *(v102 + 56) = MEMORY[0x1E69E6158];
          *(v102 + 64) = sub_1C6B2064C();
          *(v102 + 32) = v164;
          *(v102 + 40) = v166;

          sub_1C6D78D30("Unexpectedly got nil suggestions back when getting related related tags for %{public}@", 86, 2, &dword_1C6B09000, v100, v101, v102);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v185 = v161;
          v104 = sub_1C6B5DEA8(v164, v166);
          v106 = *(v161 + 16);
          v107 = (v105 & 1) == 0;
          v108 = __OFADD__(v106, v107);
          v109 = v106 + v107;
          if (!v108)
          {
            v110 = v105;
            if (*(v161 + 24) >= v109)
            {
              v70 = v157;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v116 = v104;
                sub_1C6B73864();
                v104 = v116;
                v70 = v157;
              }
            }

            else
            {
              sub_1C6B6FFA8(v109, isUniquelyReferenced_nonNull_native);
              v104 = sub_1C6B5DEA8(v164, v166);
              v70 = v157;
              if ((v110 & 1) != (v111 & 1))
              {
LABEL_178:
                result = sub_1C6D7A1C0();
                __break(1u);
                return result;
              }
            }

            v112 = v185;
            v161 = v185;
            if (v110)
            {
              *(v185[7] + 8 * v104) = MEMORY[0x1E69E7CC0];

LABEL_127:
              v74 = v159;
              goto LABEL_76;
            }

            v185[(v104 >> 6) + 8] |= 1 << v104;
            v113 = (v112[6] + 16 * v104);
            *v113 = v164;
            v113[1] = v166;
            *(v112[7] + 8 * v104) = MEMORY[0x1E69E7CC0];
            v114 = v112[2];
            v108 = __OFADD__(v114, 1);
            v115 = v114 + 1;
            if (!v108)
            {
              v112[2] = v115;
              goto LABEL_127;
            }

LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        v81 = *(v80 + 16);
        if (!v81)
        {
          v83 = MEMORY[0x1E69E7CC0];
          goto LABEL_119;
        }

        v82 = 0;
        v83 = MEMORY[0x1E69E7CC0];
        do
        {
          v156 = v83;
          while (1)
          {
            if (v82 >= *(v80 + 16))
            {
              goto LABEL_169;
            }

            v84 = (v80 + 32 + 16 * v82);
            v85 = *v84;
            v86 = v84[1];
            ++v82;
            if (*(v8 + 16))
            {
              sub_1C6D7A260();

              sub_1C6D79610();
              v87 = sub_1C6D7A2B0();
              v88 = -1 << *(v8 + 32);
              v89 = v87 & ~v88;
              if ((*(v181 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89))
              {
                v90 = ~v88;
                do
                {
                  v91 = (*(v8 + 48) + 16 * v89);
                  v92 = *v91 == v85 && v91[1] == v86;
                  if (v92 || (sub_1C6D7A130() & 1) != 0)
                  {
                    goto LABEL_83;
                  }

                  v89 = (v89 + 1) & v90;
                }

                while (((*(v181 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) != 0);
              }
            }

            else
            {
            }

            v93 = v168;
            v94 = v169;
            while (v40 + v93 != -1)
            {
              if (++v93 >= v184)
              {
LABEL_163:
                __break(1u);

                swift_unknownObjectRelease();

                if (qword_1EC1D5A70 == -1)
                {
LABEL_3:
                  v10 = qword_1EC1D8588;
                  v11 = sub_1C6D79AA0();
                  sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                  v12 = swift_allocObject();
                  *(v12 + 16) = xmmword_1C6D7E630;
                  v185 = 0;
                  v186 = 0xE000000000000000;
                  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
                  sub_1C6D79E60();
                  v14 = v185;
                  v13 = v186;
                  *(v12 + 56) = MEMORY[0x1E69E6158];
                  *(v12 + 64) = sub_1C6B2064C();
                  *(v12 + 32) = v14;
                  *(v12 + 40) = v13;
                  sub_1C6D78D30("Failed to produce suggestions for channel picker with error %{public}@", 70, 2, &dword_1C6B09000, v10, v11, v12);

                  sub_1C6C1E738(0);
                  swift_allocObject();
                  return sub_1C6D782F0();
                }

LABEL_172:
                swift_once();
                goto LABEL_3;
              }

              if (*(v94 - 1) != v85 || *v94 != v86)
              {
                v94 += 2;
                if ((sub_1C6D7A130() & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_83;
            }

            v185 = v78;
            v186 = v166;
            sub_1C6B16CF0();
            if ((sub_1C6D79C30() & 1) == 0)
            {
              break;
            }

LABEL_83:

            v36 = v184;
            if (v82 == v81)
            {
              v83 = v156;
              goto LABEL_119;
            }
          }

          v83 = v156;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6B39280(0, *(v156 + 16) + 1, 1);
            v83 = v156;
          }

          v97 = *(v83 + 16);
          v96 = *(v83 + 24);
          v98 = v97 + 1;
          if (v97 >= v96 >> 1)
          {
            sub_1C6B39280((v96 > 1), v97 + 1, 1);
            v98 = v97 + 1;
            v83 = v156;
          }

          *(v83 + 16) = v98;
          v99 = v83 + 16 * v97;
          *(v99 + 32) = v85;
          *(v99 + 40) = v86;
          v36 = v184;
        }

        while (v82 != v81);
LABEL_119:

        if (*(v83 + 16) >= 4uLL)
        {
          sub_1C6B6E3BC(v83, v83 + 32, 0, 7uLL);
          v73 = v72;
        }

        else
        {

          v73 = v83;
        }

        v74 = v159;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v185 = v161;
        sub_1C6BC558C(v73, v164, v166, v75);

        v161 = v185;
        v70 = v157;
LABEL_76:
        v71 = v74 + 1;
        if (v71 == v70)
        {
          goto LABEL_129;
        }
      }
    }

    v161 = MEMORY[0x1E69E7CC8];
LABEL_129:
    v41 = v175 + 1;
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v185 = v162;
    sub_1C6BC5560(v161, v173, v177, v117);

    v37 = v185;
    v39 = v155;
  }

  while (v154 != v175);
LABEL_130:

  v118 = v165;
  v119 = v171;
  sub_1C6C1E808(v165, v171, v158, v37);

  v120 = v36 - v171;
  if (__OFSUB__(v36, v171))
  {
    goto LABEL_174;
  }

  v121 = v37;
  if (v120)
  {
    v185 = MEMORY[0x1E69E7CC0];
    sub_1C6B39714(0, v120 & ~(v120 >> 63), 0);
    if (v120 < 0)
    {
      goto LABEL_175;
    }

    v122 = 0;
    v123 = v185;
    v170 = v36 - v171;
    v163 = v37;
    while (2)
    {
      v124 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        goto LABEL_166;
      }

      if (v119 >= v36 || v122 >= v120)
      {
        goto LABEL_167;
      }

      v182 = v123;
      v125 = (v118 + 16 * v119);
      v127 = *v125;
      v126 = v125[1];
      v128 = *(v121 + 16);

      v178 = v124;
      v179 = v126;
      if (v128 && (v129 = sub_1C6B5DEA8(v127, v126), (v130 & 1) != 0))
      {
        v172 = v119;
        v131 = *(*(v121 + 56) + 8 * v129);
        v132 = v131 + 64;
        v133 = 1 << *(v131 + 32);
        if (v133 < 64)
        {
          v134 = ~(-1 << v133);
        }

        else
        {
          v134 = -1;
        }

        v135 = v134 & *(v131 + 64);
        v136 = (v133 + 63) >> 6;
        v176 = v131;
        swift_bridgeObjectRetain_n();
        v137 = 0;
        v138 = MEMORY[0x1E69E7CC0];
        v174 = v127;
        if (v135)
        {
          goto LABEL_147;
        }

        while (1)
        {
          v139 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
            __break(1u);
            goto LABEL_163;
          }

          if (v139 >= v136)
          {
            break;
          }

          v135 = *(v132 + 8 * v139);
          ++v137;
          if (v135)
          {
            v137 = v139;
            do
            {
LABEL_147:
              v140 = __clz(__rbit64(v135)) | (v137 << 6);
              v141 = (*(v176 + 48) + 16 * v140);
              v142 = *v141;
              v143 = v141[1];
              v144 = *(*(v176 + 56) + 8 * v140);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v138 = sub_1C6B66700(0, *(v138 + 2) + 1, 1, v138);
              }

              v146 = *(v138 + 2);
              v145 = *(v138 + 3);
              if (v146 >= v145 >> 1)
              {
                v138 = sub_1C6B66700((v145 > 1), v146 + 1, 1, v138);
              }

              v135 &= v135 - 1;
              *(v138 + 2) = v146 + 1;
              v147 = &v138[24 * v146];
              *(v147 + 4) = v142;
              *(v147 + 5) = v143;
              *(v147 + 6) = v144;
              v127 = v174;
            }

            while (v135);
          }
        }

        v118 = v165;
        v119 = v172;
        v36 = v184;
        v121 = v163;
      }

      else
      {
        v138 = MEMORY[0x1E69E7CC0];
      }

      v123 = v182;
      v185 = v182;
      v149 = v182[2];
      v148 = v182[3];
      if (v149 >= v148 >> 1)
      {
        sub_1C6B39714((v148 > 1), v149 + 1, 1);
        v123 = v185;
      }

      v123[2] = v149 + 1;
      v150 = &v123[3 * v149];
      v150[4] = v127;
      v150[5] = v179;
      v150[6] = v138;
      v108 = __OFADD__(v119++, 1);
      if (v108)
      {
        goto LABEL_168;
      }

      v122 = v178;
      v120 = v170;
      if (v178 == v170)
      {
        v151 = v123;

        v152 = v151;
        goto LABEL_161;
      }

      continue;
    }
  }

  v152 = MEMORY[0x1E69E7CC0];
LABEL_161:
  v185 = v152;
  sub_1C6C1E738(0);
  swift_allocObject();
  v153 = sub_1C6D78300();
  swift_unknownObjectRelease();
  return v153;
}

void sub_1C6C1C248(void *a1, char a2, void *a3, uint64_t a4)
{
  v7 = a3[8];
  v8 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v7);
  (*(v8 + 8))(v48, 0, v7, v8);
  v9 = v49;
  v10 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v11 = sub_1C6C1C5C4(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v12 = [a1 tagIDsForLocation:a4 searchOption:(a2 & 1) == 0];
  v13 = sub_1C6D79780();

  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = 0;
    v47 = *(v13 + 16);
    v17 = v11 + 56;
    do
    {
      if (v16 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v18 = (v13 + 32 + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      ++v16;
      if (*(v11 + 16))
      {
        sub_1C6D7A260();

        sub_1C6D79610();
        v21 = sub_1C6D7A2B0();
        v22 = -1 << *(v11 + 32);
        v23 = v21 & ~v22;
        if ((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = (*(v11 + 48) + 16 * v23);
            v26 = *v25 == v20 && v25[1] == v19;
            if (v26 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          continue;
        }
      }

      else
      {
      }

LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6B39280(0, *(v15 + 16) + 1, 1);
        v15 = v51;
      }

      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6B39280((v28 > 1), v29 + 1, 1);
        v15 = v51;
      }

      *(v15 + 16) = v29 + 1;
      v30 = v15 + 16 * v29;
      *(v30 + 32) = v20;
      *(v30 + 40) = v19;
      v14 = v47;
    }

    while (v16 != v14);
  }

  sub_1C6B75C84();
  v34 = v33 >> 1;
  v35 = (v33 >> 1) - v32;
  if (__OFSUB__(v33 >> 1, v32))
  {
    goto LABEL_36;
  }

  if (!v35)
  {
LABEL_32:
    swift_unknownObjectRelease();
    return;
  }

  v36 = v31;
  v37 = v32;
  v48[0] = MEMORY[0x1E69E7CC0];
  sub_1C6B39714(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v38 = v48[0];
    if (v37 <= v34)
    {
      v39 = v34;
    }

    else
    {
      v39 = v37;
    }

    v40 = v39 - v37;
    v41 = (v36 + 16 * v37 + 8);
    while (v40)
    {
      v43 = *(v41 - 1);
      v42 = *v41;
      v48[0] = v38;
      v45 = *(v38 + 16);
      v44 = *(v38 + 24);

      if (v45 >= v44 >> 1)
      {
        sub_1C6B39714((v44 > 1), v45 + 1, 1);
        v38 = v48[0];
      }

      *(v38 + 16) = v45 + 1;
      v46 = (v38 + 24 * v45);
      v46[4] = v43;
      v46[5] = v42;
      v46[6] = MEMORY[0x1E69E7CC0];
      --v40;
      v41 += 2;
      if (!--v35)
      {
        goto LABEL_32;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C6C1C5C4(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7CD0];
  v2 = sub_1C6D76070();
  sub_1C6CDE994(v2);
  v3 = sub_1C6D76080();
  sub_1C6CDE994(v3);
  v4 = sub_1C6D76090();
  sub_1C6CDE994(v4);
  return v6;
}

void sub_1C6C1C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1C6C1E8B4(0, &qword_1EC1D7E50, sub_1C6C1EB90, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  sub_1C6D78350();
  v15 = a5[15];
  v16 = a5[16];
  __swift_project_boxed_opaque_existential_1(a5 + 12, v15);
  (*(v16 + 24))(0, v15, v16);
  v17 = sub_1C6D78210();
  sub_1C6D781F0();

  v18 = swift_allocObject();
  v18[2] = sub_1C6C1EB50;
  v18[3] = v14;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a3;
  v18[8] = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1C6C1ECC0;
  *(v19 + 24) = v18;

  v20 = a6;

  v21 = sub_1C6D78210();
  sub_1C6D782B0();
}

void sub_1C6C1C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C6C1ED30;
  *(v10 + 24) = v8;
  v12[4] = sub_1C6C1ED38;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C6C1C9F4;
  v12[3] = &block_descriptor_4;
  v11 = _Block_copy(v12);

  [v9 fetchLocalAreasProvider_];
  _Block_release(v11);
}

void sub_1C6C1C980(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  swift_unknownObjectRetain();
  v5 = a2;
  a3(v6);
  swift_unknownObjectRelease();
}

uint64_t sub_1C6C1C9F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1C6C1CA74(void *a1, id a2, uint64_t a3, void (*a4)(void), int a5, void *a6, uint64_t a7, int a8, void (*a9)(id), uint64_t a10)
{
  if (a1)
  {
    v14 = *(a3 + 16);
    if (a2)
    {
      swift_unknownObjectRetain();
      v15 = a2;
      if (qword_1EC1D5A70 != -1)
      {
        swift_once();
      }

      v16 = qword_1EC1D8588;
      v17 = sub_1C6D79AA0();
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C6D7E630;
      swift_getErrorValue();
      v19 = sub_1C6D7A1D0();
      v21 = v20;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1C6B2064C();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      sub_1C6D78D30("Unexpectedly got non-nil error and non-nil local areas provider. Error: %{public}@", 82, 2, &dword_1C6B09000, v16, v17, v18);

      if (v14)
      {
        v22 = v14;
        v23 = [v22 channelPickerSuggestionsConfiguration];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 filterLocationSuggestionsOnlyToAppleNewsLocal];
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      sub_1C6C1C248(a1, v25, a6, a7);
      a4();

      swift_unknownObjectRelease();
      return;
    }

    if (v14)
    {
      swift_unknownObjectRetain();
      v29 = v14;
      v30 = [v29 channelPickerSuggestionsConfiguration];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 filterLocationSuggestionsOnlyToAppleNewsLocal];

LABEL_24:
        sub_1C6C1C248(a1, v32, a6, a7);
        a4();
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v32 = 0;
    goto LABEL_24;
  }

  if (a2)
  {
    v26 = a2;
    a9(a2);
    v27 = a2;
  }

  else
  {
    sub_1C6C1E7B4();
    v33 = swift_allocError();
    *v34 = 0;
    (a9)();
    v27 = v33;
  }
}

uint64_t sub_1C6C1CDCC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C6D783E0();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D75F80();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v18 = sub_1C6D75F60();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  if (qword_1EC1D5A70 != -1)
  {
    swift_once();
  }

  v21 = qword_1EC1D8588;
  sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C6D7E630;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1C6B2064C();
  *(v22 + 32) = v18;
  *(v22 + 40) = v20;

  v23 = sub_1C6D79AC0();
  sub_1C6D78D30("Querying global graph with request ID %{public}@", 48, 2, &dword_1C6B09000, v21, v23, v22);

  v24 = *(v3 + 24);
  v25 = swift_allocObject();
  v26 = swift_weakInit();
  MEMORY[0x1EEE9AC00](v26, v27);
  *(&v35 - 6) = v25;
  *(&v35 - 40) = a2 & 1;
  *(&v35 - 4) = a1;
  *(&v35 - 3) = v18;
  *(&v35 - 2) = v20;
  v28 = v43;
  sub_1C6D784F0();
  if (v28)
  {
  }

  else
  {

    v29 = v40;
    sub_1C6D78500();
    v24 = v41;
    v30 = v42;

    v31 = [v30 channelPickerSuggestionsConfiguration];

    if (v31)
    {
      sub_1C6C1D70C(*(v3 + 16), a2 & 1);
      v33 = v36;
      sub_1C6D783C0();
      sub_1C6BB320C();
      v24 = sub_1C6D786C0();

      (*(v37 + 8))(v33, v38);
    }

    else
    {
      sub_1C6C1E7B4();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
    }

    (*(v39 + 8))(v12, v29);
  }

  return v24;
}

void sub_1C6C1D2AC(uint64_t a1@<X0>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a5;
  v39 = a4;
  v41 = a7;
  sub_1C6C1E8B4(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v38 - v13;
  v15 = sub_1C6D783E0();
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v19 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = [v19 channelPickerSuggestionsConfiguration];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1C6C1D70C(*(v21 + 16), a3 & 1);
      if (!v7)
      {
        v26 = &selRef_bundleInputOutputConfiguration;
        if (!*(v21 + 16))
        {
          v26 = &selRef_nonBundleInputOutputConfiguration;
        }

        v38[2] = v25;
        v27 = *v26;
        v38[1] = v24;
        v28 = [v23 v27];
        v29 = [v28 contextFeatureKey];
        v38[3] = a6;
        v30 = v29;

        sub_1C6D795A0();
        v38[0] = v31;

        sub_1C6C1D7B8(v39, v21, v23);
        sub_1C6D78800();
        sub_1C6D783C0();
        sub_1C6D78740();
        v32 = sub_1C6D78760();
        (*(*(v32 - 8) + 56))(v14, 0, 1, v32);
        sub_1C6D78830();
        v39 = "st ID %{public}@";
        sub_1C6C1E8B4(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
        v33 = v40;
        v34 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1C6D7E630;
        sub_1C6D783C0();
        sub_1C6C07550(v35);
        swift_setDeallocating();
        (*(v33 + 8))(v35 + v34, v15);
        swift_deallocClassInstance();

        sub_1C6D78790();
      }
    }

    else
    {
      sub_1C6C1E7B4();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1C6C1E7B4();
    swift_allocError();
    *v36 = 3;
    swift_willThrow();
  }
}

uint64_t sub_1C6C1D70C(char a1, char a2)
{
  v4 = &selRef_bundleInputOutputConfiguration;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_nonBundleInputOutputConfiguration;
  }

  v5 = [v2 *v4];
  v6 = v5;
  v7 = &selRef_generalChannelSuggestionsOutputName;
  if ((a2 & 1) == 0)
  {
    v7 = &selRef_newsPlusChannelSuggestionsOutputName;
  }

  v8 = [v5 *v7];

  v9 = sub_1C6D795A0();
  return v9;
}

uint64_t sub_1C6C1D7B8(uint64_t a1, uint64_t a2, id a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = *(a2 + 32);
    v6 = [a3 userContextConfiguration];
    [v6 maximumTagCount];

    v7 = [a3 userContextConfiguration];
    [v7 maximumTopicTagsPerHeadline];

    v12 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1EEE9AC00](v8, v9);
    (*(*v4 + 160))(0, 0, 0, sub_1C6C1E918, v10);
    v3 = v12;
  }

  return v3;
}

void *ChannelPickerSuggestionsService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  return v0;
}

uint64_t ChannelPickerSuggestionsService.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

unint64_t sub_1C6C1D9A0()
{
  result = qword_1EC1D7E30;
  if (!qword_1EC1D7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E30);
  }

  return result;
}

uint64_t sub_1C6C1D9F4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 >= 2)
  {
    return sub_1C6C1AE00(a1);
  }

  else
  {
    return sub_1C6C1B098(a1, v2 == 0);
  }
}

uint64_t sub_1C6C1DA54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C6C1DA9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1C6C1DB18(uint64_t a1, BOOL *a2, char **a3, uint64_t a4, uint64_t a5)
{
  v93 = a5;
  v101 = a2;
  v92 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v92, v8);
  v98 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C1E8B4(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v100 = v89 - v13;
  sub_1C6C1E8B4(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v108 = v89 - v16;
  v107 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v17 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v18);
  v99 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v20 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v21);
  v91 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v97 = v89 - v25;
  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v103 = v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C1E8B4(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v10);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v112 = v89 - v31;
  v32 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v113 = v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v111 = v89 - v38;
  v39 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v114 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 + 16);
  v44 = *(v43 + 16);
  if (!v44)
  {
LABEL_37:
    *v101 = *(*a3 + 2) >= a4;
    return;
  }

  v110 = (v33 + 48);
  v90 = (v20 + 56);
  v95 = (v20 + 48);
  v109 = v32;
  v96 = (v17 + 48);
  while (1)
  {
    while (1)
    {
      if (v44 > *(v43 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      --v44;
      v45 = v43;
      sub_1C6C1EA14(v43 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v44, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if (*(*a3 + 2) >= a4)
      {
        sub_1C6C1EA7C(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        goto LABEL_37;
      }

      v46 = v112;
      sub_1C6C1E924(v42, v112, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if ((*v110)(v46, 1, v32) != 1)
      {
        break;
      }

      sub_1C6C1EA7C(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6C1E9A4(v46, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_4:
      v43 = v45;
      if (!v44)
      {
        goto LABEL_37;
      }
    }

    v47 = v46;
    v48 = v111;
    sub_1C6C1EADC(v47, v111, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C1EA14(v48, v113, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v51 = v107;
    v50 = v108;
    if (EnumCaseMultiPayload != 2)
    {
      sub_1C6C1EA7C(v111, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6C1EA7C(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6C1EA7C(v113, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v32 = v109;
      goto LABEL_4;
    }

    v52 = v103;
    sub_1C6C1EADC(v113, v103, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v94 = v26;
    sub_1C6C1E924(v52 + *(v26 + 24), v50, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v53 = *v96;
    if ((*v96)(v50, 1, v51) == 1)
    {
      v54 = v99;
      *v99 = 0;
      *(v54 + 1) = 0xE000000000000000;
      (*v90)(&v54[*(v51 + 20)], 1, 1, v102);
      sub_1C6D78A30();
      v55 = v53(v50, 1, v51);
      v56 = v100;
      if (v55 != 1)
      {
        sub_1C6C1E9A4(v50, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v54 = v99;
      sub_1C6C1EADC(v50, v99, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v56 = v100;
    }

    sub_1C6C1E924(&v54[*(v51 + 20)], v56, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C1EA7C(v54, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if ((*v95)(v56, 1, v102) != 1)
    {
      break;
    }

    sub_1C6C1EA7C(v103, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C1EA7C(v111, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C1EA7C(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6C1E9A4(v56, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v26 = v94;
    v32 = v109;
LABEL_22:
    v43 = v45;
    if (!v44)
    {
      goto LABEL_37;
    }
  }

  v57 = v56;
  v58 = v97;
  sub_1C6C1EADC(v57, v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v59 = v58;
  v60 = v91;
  sub_1C6C1EA14(v59, v91, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v61 = v60;
  v62 = v98;
  sub_1C6C1EADC(v61, v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v63 = *(v62 + *(v92 + 20));
  swift_beginAccess();
  v65 = *(v63 + 24);
  v64 = *(v63 + 32);
  v66 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v66;
  v106 = v64;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v66 = sub_1C6B6592C(0, *(v66 + 2) + 1, 1, v66);
    *a3 = v66;
  }

  v69 = *(v66 + 2);
  v68 = *(v66 + 3);
  v104 = a4;
  if (v69 >= v68 >> 1)
  {
    v66 = sub_1C6B6592C((v68 > 1), v69 + 1, 1, v66);
    *a3 = v66;
  }

  *(v66 + 2) = v69 + 1;
  v70 = &v66[16 * v69];
  v71 = v106;
  *(v70 + 4) = v65;
  *(v70 + 5) = v71;
  v106 = a3;
  v72 = *a3;
  swift_beginAccess();
  v89[1] = sub_1C6B75C84();
  v74 = v73;
  v76 = v75;
  v78 = v77 >> 1;

  v79 = v78 - v76;
  v32 = v109;
  if (v78 == v76)
  {
LABEL_21:
    swift_unknownObjectRelease();
    sub_1C6C1EA7C(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C1EA7C(v103, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C1EA7C(v111, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C1EA7C(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6C1EA7C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    a4 = v104;
    a3 = v106;
    v26 = v94;
    goto LABEL_22;
  }

  if (v76 <= v78)
  {
    v80 = v78;
  }

  else
  {
    v80 = v76;
  }

  v81 = v80 - v76;
  v82 = (v74 + 16 * v76 + 8);
  while (v81)
  {
    if (*(v72 + 2) < v104)
    {
      v83 = *(v82 - 1);
      v84 = *v82;

      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v106 = v72;
      v105 = v83;
      if ((v85 & 1) == 0)
      {
        v72 = sub_1C6B6592C(0, *(v72 + 2) + 1, 1, v72);
        *v106 = v72;
      }

      v87 = *(v72 + 2);
      v86 = *(v72 + 3);
      if (v87 >= v86 >> 1)
      {
        v72 = sub_1C6B6592C((v86 > 1), v87 + 1, 1, v72);
        *v106 = v72;
      }

      *(v72 + 2) = v87 + 1;
      v88 = &v72[16 * v87];
      *(v88 + 4) = v105;
      *(v88 + 5) = v84;
      v72 = *v106;
      --v81;
      v82 += 2;
      --v79;
      v32 = v109;
      if (v79)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

LABEL_39:
  __break(1u);
}

void sub_1C6C1E738(uint64_t a1)
{
  if (!qword_1EC1D7E38)
  {
    sub_1C6B18CB8(255, &qword_1EC1D7E40, &type metadata for ChannelPickerSuggestion, MEMORY[0x1E69E62F8]);
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D7E38);
    }
  }
}

unint64_t sub_1C6C1E7B4()
{
  result = qword_1EC1D7E48;
  if (!qword_1EC1D7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E48);
  }

  return result;
}

uint64_t sub_1C6C1E808(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = MEMORY[0x1E69E7CD0];
  sub_1C6CE3A10(a1, a2, a3);
  v5 = sub_1C6C1AAB8(a4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      v7 += 8;

      sub_1C6CDEA98(v8);
      --v6;
    }

    while (v6);
  }

  return v10;
}

void sub_1C6C1E8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C1E924(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C1E8B4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C1E9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C1E8B4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C1EA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C1EA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C1EADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C1EB50(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1C6C1EB90(uint64_t a1)
{
  if (!qword_1EC1D7E58)
  {
    sub_1C6C1E8B4(255, &qword_1EC1D7E60, sub_1C6C1EC5C, MEMORY[0x1E69E6720]);
    sub_1C6B1A47C(255, &qword_1EC1D7ED0, &qword_1EDCEA410, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7E58);
    }
  }
}

unint64_t sub_1C6C1EC5C()
{
  result = qword_1EC1D7E68;
  if (!qword_1EC1D7E68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC1D7E68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelPickerSuggestionsService.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChannelPickerSuggestionsService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6C1EEB4()
{
  result = qword_1EC1D7ED8;
  if (!qword_1EC1D7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7ED8);
  }

  return result;
}

uint64_t sub_1C6C1EF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D77E80();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x1E69B4BD0])
  {
    v11 = MEMORY[0x1E69E3780];
LABEL_41:
    v13 = *v11;
    v14 = sub_1C6D77090();
    v15 = *(*(v14 - 8) + 104);
    v16 = a1;
    v17 = v13;
    return v15(v16, v17, v14);
  }

  if (v10 == *MEMORY[0x1E69B4BA0])
  {
    v11 = MEMORY[0x1E69E3758];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4BD8])
  {
    v11 = MEMORY[0x1E69E3788];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B60])
  {
    v11 = MEMORY[0x1E69E3720];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B68])
  {
    v11 = MEMORY[0x1E69E3728];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B70])
  {
    v11 = MEMORY[0x1E69E3730];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4BB8])
  {
    v11 = MEMORY[0x1E69E3770];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B98])
  {
    v11 = MEMORY[0x1E69E3750];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B30])
  {
    v11 = MEMORY[0x1E69E36F8];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B80])
  {
    v11 = MEMORY[0x1E69E3738];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B88])
  {
    v11 = MEMORY[0x1E69E3740];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B40])
  {
    v11 = MEMORY[0x1E69E3708];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B48])
  {
    v11 = MEMORY[0x1E69E3710];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B90])
  {
    v11 = MEMORY[0x1E69E3748];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4BC8])
  {
    v11 = MEMORY[0x1E69E3778];
    goto LABEL_41;
  }

  v12 = v10;
  if (v10 == *MEMORY[0x1E69B4BA8])
  {
    v11 = MEMORY[0x1E69E3760];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B28])
  {
    v11 = MEMORY[0x1E69E36F0];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B58])
  {
    v11 = MEMORY[0x1E69E3718];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4BB0])
  {
    v11 = MEMORY[0x1E69E3768];
    goto LABEL_41;
  }

  if (v10 == *MEMORY[0x1E69B4B38])
  {
    v11 = MEMORY[0x1E69E3700];
    goto LABEL_41;
  }

  v19 = *MEMORY[0x1E69B4BE0];
  v14 = sub_1C6D77090();
  v15 = *(*(v14 - 8) + 104);
  if (v12 != v19)
  {
    v15(a1, *MEMORY[0x1E69E3780], v14);
    return (*(v5 + 8))(v9, v4);
  }

  v17 = *MEMORY[0x1E69E3790];
  v16 = a1;
  return v15(v16, v17, v14);
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

BOOL sub_1C6C1F3DC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1C6D77E80();
    ++v2;
    sub_1C6C20164(&qword_1EDCE5E48, MEMORY[0x1E69B4BF0], MEMORY[0x1E69B4BF8]);
  }

  while ((sub_1C6D79560() & 1) == 0);
  return v3 != v4;
}

void sub_1C6C1F4E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v100 = a2;
  v8 = sub_1C6D773B0();
  v91 = *(v8 - 8);
  *&v92 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C6D77E80();
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v11);
  v96 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1C6D77E60();
  v99 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v13);
  v94 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C20100(0, &qword_1EDCE5E58, MEMORY[0x1E69B4B10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v82 - v17;
  v101 = sub_1C6D77510();
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v19);
  v104 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C1FFE0(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C6D77290();
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  (*(v31 + 16))(&v82 - v30, a1, v27, v29);
  if (swift_dynamicCast())
  {
    v89 = a5;
    (*(v23 + 8))(v26, v22);
    v32 = sub_1C6D77270();
    v33 = sub_1C6D77330();
    v35 = v34;

    if (!v5)
    {
      sub_1C6C20164(&qword_1EDCE5FB0, MEMORY[0x1E69B45E8], MEMORY[0x1E69B45F0]);
      v36 = v104;
      v37 = v101;
      sub_1C6D75AF0();
      v100 = v33;
      sub_1C6D774E0();
      v39 = sub_1C6D77E40();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v18, 1, v39) == 1)
      {
        (*(v98 + 8))(v36, v37);
        sub_1C6B1C9F0(v100, v35);
        sub_1C6C20074(v18, v41);
        v42 = sub_1C6D76F90();
        (*(*(v42 - 8) + 56))(v89, 1, 1, v42);
      }

      else
      {
        v87 = v35;
        v88 = 0;
        v85 = sub_1C6D77E30();
        v86 = v43;
        (*(v40 + 8))(v18, v39);
        v44 = v94;
        sub_1C6D774F0();
        v45 = v96;
        sub_1C6D77E50();
        v46 = v99 + 8;
        v83 = *(v99 + 8);
        v83(v44, v95);
        v47 = sub_1C6D77E70();
        v48 = v93;
        v49 = v93 + 8;
        v84 = *(v93 + 8);
        v84(v45, v97);
        if (v47)
        {
          v50 = v90;
          v51 = v104;
          sub_1C6D77500();
          v52 = sub_1C6D773A0();
          sub_1C6B1C9F0(v100, v87);
          (*(v91 + 8))(v50, v92);
          (*(v98 + 8))(v51, v37);
          v53 = v89;
          v54 = v86;
          *v89 = v85;
          v53[1] = v54;
          v53[2] = v52;
          v55 = *MEMORY[0x1E69E3680];
          v56 = sub_1C6D76F90();
          v57 = *(v56 - 8);
          (*(v57 + 104))(v53, v55, v56);
          (*(v57 + 56))(v53, 0, 1, v56);
        }

        else
        {
          sub_1C6C20100(0, &qword_1EC1D7EE8, MEMORY[0x1E69B4BF0], MEMORY[0x1E69E6F90]);
          v58 = *(v48 + 72);
          v59 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v60 = swift_allocObject();
          v99 = v46;
          v61 = v60;
          v92 = xmmword_1C6D7EB10;
          *(v60 + 16) = xmmword_1C6D7EB10;
          v62 = v60 + v59;
          v63 = *(v48 + 104);
          v64 = v97;
          v63(v62, *MEMORY[0x1E69B4B50], v97);
          v63(v62 + v58, *MEMORY[0x1E69B4BC0], v64);
          v65 = v104;
          sub_1C6D774F0();
          v66 = v96;
          sub_1C6D77E50();
          v67 = v44;
          v68 = v83;
          v83(v67, v95);
          LOBYTE(v63) = sub_1C6C1F3DC(v66, v61);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v84(v66, v64);
          v69 = v89;
          if (v63)
          {
            (*(v98 + 8))(v65, v37);
            sub_1C6B1C9F0(v100, v87);
          }

          else
          {
            v93 = v49;
            v70 = v86;
            if (qword_1EDCEA6A0 != -1)
            {
              swift_once();
            }

            v91 = qword_1EDCEA6A8;
            v71 = sub_1C6D79AA0();
            sub_1C6C20100(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
            v72 = swift_allocObject();
            *(v72 + 16) = v92;
            v73 = MEMORY[0x1E69E6158];
            *(v72 + 56) = MEMORY[0x1E69E6158];
            v74 = sub_1C6B2064C();
            *(v72 + 64) = v74;
            *(v72 + 32) = v85;
            *(v72 + 40) = v70;
            v102 = 0;
            v103 = 0xE000000000000000;
            v75 = v94;
            v76 = v104;
            sub_1C6D774F0();
            v77 = v96;
            sub_1C6D77E50();
            v68(v75, v95);
            v78 = v97;
            sub_1C6D79E60();
            v84(v77, v78);
            v79 = v102;
            v80 = v103;
            *(v72 + 96) = v73;
            *(v72 + 104) = v74;
            *(v72 + 72) = v79;
            *(v72 + 80) = v80;
            sub_1C6D78D30("Encountered a FeedViewEvent containing tagID %@ but unexpected feedType %{public}@", 82, 2, &dword_1C6B09000, v91, v71, v72);
            sub_1C6B1C9F0(v100, v87);

            (*(v98 + 8))(v76, v101);
            v69 = v89;
          }

          v81 = sub_1C6D76F90();
          (*(*(v81 - 8) + 56))(v69, 1, 1, v81);
        }
      }
    }
  }

  else
  {
    v38 = sub_1C6D76F90();
    (*(*(v38 - 8) + 56))(a5, 1, 1, v38);
  }
}